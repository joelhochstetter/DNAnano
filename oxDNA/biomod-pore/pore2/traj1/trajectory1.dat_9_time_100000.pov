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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.372240, 17.358152, -2.371898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.000179, 17.307831, -2.233917>,  <21.776943, 17.277637, -2.151128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.000179, 17.307831, -2.233917>,  <22.372240, 17.358152, -2.371898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.000179, 17.307831, -2.233917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361980, -0.156686, 0.918923,
		-0.061554, 0.979604, 0.191280,
		-0.930151, -0.125803, 0.344953,
		21.721134, 17.270090, -2.130431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.158438, 17.747498, -1.725792>,  <22.372240, 17.358152, -2.371898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.158438, 17.747498, -1.725792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.978008, 17.392147, -1.760006>,  <21.869751, 17.178936, -1.780534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.978008, 17.392147, -1.760006>,  <22.158438, 17.747498, -1.725792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.978008, 17.392147, -1.760006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241113, -0.213576, 0.946705,
		-0.859300, 0.406410, 0.310538,
		-0.451074, -0.888379, -0.085535,
		21.842686, 17.125633, -1.785666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.491835, 17.665508, -1.289320>,  <22.158438, 17.747498, -1.725792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.491835, 17.665508, -1.289320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686630, 17.318069, -1.325946>,  <21.803507, 17.109606, -1.347921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686630, 17.318069, -1.325946>,  <21.491835, 17.665508, -1.289320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.686630, 17.318069, -1.325946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049171, -0.077405, 0.995787,
		-0.872024, -0.489437, 0.005015,
		0.486986, -0.868597, -0.091565,
		21.832726, 17.057491, -1.353415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.072704, 16.979225, -1.109441>,  <21.491835, 17.665508, -1.289320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.072704, 16.979225, -1.109441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.465481, 16.949821, -1.039718>,  <21.701147, 16.932180, -0.997884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.465481, 16.949821, -1.039718>,  <21.072704, 16.979225, -1.109441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.465481, 16.949821, -1.039718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184104, -0.159432, 0.969890,
		-0.043502, -0.984468, -0.170086,
		0.981943, -0.073506, 0.174309,
		21.760063, 16.927769, -0.987425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.145235, 16.587803, -0.490544>,  <21.072704, 16.979225, -1.109441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.145235, 16.587803, -0.490544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.499126, 16.772781, -0.513880>,  <21.711460, 16.883768, -0.527882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.499126, 16.772781, -0.513880>,  <21.145235, 16.587803, -0.490544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.499126, 16.772781, -0.513880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079591, -0.026557, 0.996474,
		0.459264, -0.886251, -0.060302,
		0.884727, 0.462444, -0.058341,
		21.764545, 16.911514, -0.531383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.651333, 16.267757, -0.059710>,  <21.145235, 16.587803, -0.490544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.651333, 16.267757, -0.059710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.753551, 16.651821, -0.104939>,  <21.814882, 16.882259, -0.132077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.753551, 16.651821, -0.104939>,  <21.651333, 16.267757, -0.059710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.753551, 16.651821, -0.104939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191497, 0.064370, 0.979380,
		0.947642, -0.271930, -0.167419,
		0.255546, 0.960162, -0.113074,
		21.830215, 16.939869, -0.138862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.182409, 16.252396, 0.307122>,  <21.651333, 16.267757, -0.059710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.182409, 16.252396, 0.307122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.097866, 16.642826, 0.286707>,  <22.047140, 16.877085, 0.274458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.097866, 16.642826, 0.286707>,  <22.182409, 16.252396, 0.307122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.097866, 16.642826, 0.286707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360926, 0.126469, 0.923979,
		0.908328, 0.176871, -0.379021,
		-0.211359, 0.976075, -0.051038,
		22.034458, 16.935648, 0.271396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.724329, 16.591930, 0.551503>,  <22.182409, 16.252396, 0.307122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.724329, 16.591930, 0.551503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.427563, 16.854721, 0.605082>,  <22.249504, 17.012396, 0.637230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.427563, 16.854721, 0.605082>,  <22.724329, 16.591930, 0.551503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.427563, 16.854721, 0.605082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428798, 0.311328, 0.848061,
		0.515456, 0.686625, -0.512690,
		-0.741915, 0.656979, 0.133947,
		22.204988, 17.051815, 0.645266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.010027, 17.228355, 0.486815>,  <22.724329, 16.591930, 0.551503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.010027, 17.228355, 0.486815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.695599, 17.219383, 0.733906>,  <22.506941, 17.213999, 0.882161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.695599, 17.219383, 0.733906>,  <23.010027, 17.228355, 0.486815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.695599, 17.219383, 0.733906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603267, 0.190024, 0.774571,
		-0.134759, 0.981523, -0.135839,
		-0.786072, -0.022433, 0.617728,
		22.459778, 17.212654, 0.919225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.033455, 17.774076, 1.011990>,  <23.010027, 17.228355, 0.486815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.033455, 17.774076, 1.011990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.804489, 17.493904, 1.182513>,  <22.667109, 17.325802, 1.284827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.804489, 17.493904, 1.182513>,  <23.033455, 17.774076, 1.011990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.804489, 17.493904, 1.182513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556130, 0.050414, 0.829565,
		-0.602543, 0.711939, 0.360672,
		-0.572417, -0.700429, 0.426307,
		22.632765, 17.283775, 1.310405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.114990, 17.990055, 1.689788>,  <23.033455, 17.774076, 1.011990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.114990, 17.990055, 1.689788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.991673, 17.609756, 1.676917>,  <22.917683, 17.381577, 1.669194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.991673, 17.609756, 1.676917>,  <23.114990, 17.990055, 1.689788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.991673, 17.609756, 1.676917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440405, -0.172626, 0.881047,
		-0.843207, 0.257451, 0.471933,
		-0.308294, -0.950747, -0.032177,
		22.899183, 17.324532, 1.667263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.739948, 17.863483, 2.298167>,  <23.114990, 17.990055, 1.689788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.739948, 17.863483, 2.298167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.835537, 17.502541, 2.154701>,  <22.892891, 17.285975, 2.068621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.835537, 17.502541, 2.154701>,  <22.739948, 17.863483, 2.298167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.835537, 17.502541, 2.154701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443672, -0.227090, 0.866940,
		-0.863740, -0.366304, 0.346084,
		0.238971, -0.902359, -0.358665,
		22.907228, 17.231833, 2.047101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.604343, 17.359114, 2.861992>,  <22.739948, 17.863483, 2.298167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.604343, 17.359114, 2.861992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.871166, 17.229237, 2.593781>,  <23.031260, 17.151310, 2.432854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.871166, 17.229237, 2.593781>,  <22.604343, 17.359114, 2.861992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.871166, 17.229237, 2.593781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612394, -0.273585, 0.741704,
		-0.424273, -0.905387, 0.016344,
		0.667058, -0.324694, -0.670528,
		23.071283, 17.131828, 2.392622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.756424, 16.612436, 2.986830>,  <22.604343, 17.359114, 2.861992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.756424, 16.612436, 2.986830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.055046, 16.821175, 2.821746>,  <23.234221, 16.946417, 2.722695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.055046, 16.821175, 2.821746>,  <22.756424, 16.612436, 2.986830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.055046, 16.821175, 2.821746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631611, -0.360938, 0.686143,
		0.209098, -0.772917, -0.599065,
		0.746556, 0.521847, -0.412711,
		23.279013, 16.977728, 2.697933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.115061, 16.046972, 3.329479>,  <22.756424, 16.612436, 2.986830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.115061, 16.046972, 3.329479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.428329, 15.919014, 3.542762>,  <23.616291, 15.842239, 3.670732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.428329, 15.919014, 3.542762>,  <23.115061, 16.046972, 3.329479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.428329, 15.919014, 3.542762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107384, 0.914212, 0.390749,
		-0.612464, -0.248765, 0.750336,
		0.783171, -0.319894, 0.533208,
		23.663280, 15.823046, 3.702724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.964506, 16.186697, 4.084255>,  <23.115061, 16.046972, 3.329479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.964506, 16.186697, 4.084255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.358349, 16.143375, 4.029377>,  <23.594654, 16.117382, 3.996451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.358349, 16.143375, 4.029377>,  <22.964506, 16.186697, 4.084255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.358349, 16.143375, 4.029377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170201, 0.772733, 0.611486,
		0.039789, -0.625423, 0.779271,
		0.984606, -0.108302, -0.137194,
		23.653730, 16.110886, 3.988219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.325203, 15.981937, 4.713034>,  <22.964506, 16.186697, 4.084255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.325203, 15.981937, 4.713034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.534519, 16.207546, 4.457520>,  <23.660109, 16.342913, 4.304211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.534519, 16.207546, 4.457520>,  <23.325203, 15.981937, 4.713034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.534519, 16.207546, 4.457520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057611, 0.771312, 0.633845,
		0.850207, -0.294882, 0.436111,
		0.523287, 0.564024, -0.638786,
		23.691505, 16.376753, 4.265884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.597872, 16.463139, 5.094687>,  <23.325203, 15.981937, 4.713034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.597872, 16.463139, 5.094687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.693787, 16.600571, 4.731489>,  <23.751335, 16.683029, 4.513570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.693787, 16.600571, 4.731489>,  <23.597872, 16.463139, 5.094687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.693787, 16.600571, 4.731489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056204, 0.938626, 0.340328,
		0.969198, -0.030573, 0.244379,
		0.239785, 0.343581, -0.907995,
		23.765722, 16.703646, 4.459090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.369989, 16.839319, 4.921736>,  <23.597872, 16.463139, 5.094687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.369989, 16.839319, 4.921736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.034473, 17.012119, 4.789188>,  <23.833164, 17.115799, 4.709659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.034473, 17.012119, 4.789188>,  <24.369989, 16.839319, 4.921736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.034473, 17.012119, 4.789188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178273, 0.792997, 0.582559,
		0.514442, 0.429571, -0.742172,
		-0.838790, 0.432002, -0.331370,
		23.782837, 17.141720, 4.689777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.430531, 17.551495, 4.651484>,  <24.369989, 16.839319, 4.921736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.430531, 17.551495, 4.651484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.062725, 17.488640, 4.795599>,  <23.842043, 17.450928, 4.882067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.062725, 17.488640, 4.795599>,  <24.430531, 17.551495, 4.651484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.062725, 17.488640, 4.795599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050173, 0.862192, 0.504091,
		-0.389847, 0.481594, -0.784912,
		-0.919512, -0.157137, 0.360286,
		23.786871, 17.441500, 4.903684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.016384, 18.075785, 4.468277>,  <24.430531, 17.551495, 4.651484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.016384, 18.075785, 4.468277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.850689, 17.917542, 4.796155>,  <23.751272, 17.822596, 4.992882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.850689, 17.917542, 4.796155>,  <24.016384, 18.075785, 4.468277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.850689, 17.917542, 4.796155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033580, 0.906628, 0.420593,
		-0.909549, 0.146701, -0.388844,
		-0.414238, -0.395608, 0.819696,
		23.726418, 17.798859, 5.042064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.281919, 18.414385, 4.668164>,  <24.016384, 18.075785, 4.468277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.281919, 18.414385, 4.668164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.518173, 18.271721, 4.957700>,  <23.659925, 18.186123, 5.131421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.518173, 18.271721, 4.957700>,  <23.281919, 18.414385, 4.668164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.518173, 18.271721, 4.957700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057046, 0.876319, 0.478342,
		-0.804921, -0.323817, 0.497237,
		0.590634, -0.356662, 0.723839,
		23.695364, 18.164722, 5.174851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.982967, 18.449911, 5.384031>,  <23.281919, 18.414385, 4.668164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.982967, 18.449911, 5.384031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.379566, 18.496967, 5.406279>,  <23.617525, 18.525202, 5.419627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.379566, 18.496967, 5.406279>,  <22.982967, 18.449911, 5.384031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.379566, 18.496967, 5.406279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126128, 0.763674, 0.633162,
		0.032011, -0.634793, 0.772019,
		0.991497, 0.117641, 0.055619,
		23.677015, 18.532259, 5.422965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.241693, 18.464371, 6.172758>,  <22.982967, 18.449911, 5.384031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.241693, 18.464371, 6.172758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.505184, 18.670094, 5.953098>,  <23.663279, 18.793528, 5.821303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.505184, 18.670094, 5.953098>,  <23.241693, 18.464371, 6.172758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.505184, 18.670094, 5.953098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112998, 0.789230, 0.603612,
		0.743844, -0.335566, 0.578006,
		0.658731, 0.514306, -0.549146,
		23.702803, 18.824387, 5.788354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.751465, 18.817541, 6.669259>,  <23.241693, 18.464371, 6.172758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.751465, 18.817541, 6.669259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.740211, 19.036213, 6.334512>,  <23.733459, 19.167416, 6.133663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.740211, 19.036213, 6.334512>,  <23.751465, 18.817541, 6.669259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.740211, 19.036213, 6.334512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184428, 0.819988, 0.541854,
		0.982443, 0.169587, 0.077752,
		-0.028136, 0.546680, -0.836869,
		23.731771, 19.200216, 6.083451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.591604, 19.593798, 6.378188>,  <23.751465, 18.817541, 6.669259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.591604, 19.593798, 6.378188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.643818, 19.945549, 6.561340>,  <23.675146, 20.156599, 6.671232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.643818, 19.945549, 6.561340>,  <23.591604, 19.593798, 6.378188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.643818, 19.945549, 6.561340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628361, -0.283852, 0.724286,
		0.766892, -0.382259, 0.515515,
		0.130535, 0.879378, 0.457880,
		23.682978, 20.209362, 6.698705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.899992, 19.448421, 7.057820>,  <23.591604, 19.593798, 6.378188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.899992, 19.448421, 7.057820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.677044, 19.780075, 7.040490>,  <23.543276, 19.979067, 7.030092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.677044, 19.780075, 7.040490>,  <23.899992, 19.448421, 7.057820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.677044, 19.780075, 7.040490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487823, -0.284812, 0.825174,
		0.671840, 0.481062, 0.563215,
		-0.557370, 0.829134, -0.043325,
		23.509832, 20.028814, 7.027493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.874790, 19.717402, 7.772775>,  <23.899992, 19.448421, 7.057820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.874790, 19.717402, 7.772775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.568932, 19.871075, 7.565810>,  <23.385416, 19.963280, 7.441631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.568932, 19.871075, 7.565810>,  <23.874790, 19.717402, 7.772775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.568932, 19.871075, 7.565810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583443, -0.071713, 0.808982,
		0.273694, 0.920467, 0.278985,
		-0.764648, 0.384185, -0.517413,
		23.339537, 19.986330, 7.410586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.571978, 20.284931, 8.135882>,  <23.874790, 19.717402, 7.772775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.571978, 20.284931, 8.135882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.298786, 20.149120, 7.877190>,  <23.134871, 20.067635, 7.721974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.298786, 20.149120, 7.877190>,  <23.571978, 20.284931, 8.135882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.298786, 20.149120, 7.877190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713455, 0.120266, 0.690303,
		-0.156596, 0.932876, -0.324376,
		-0.682978, -0.339526, -0.646732,
		23.093893, 20.047262, 7.683170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.052866, 20.674406, 7.970492>,  <23.571978, 20.284931, 8.135882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.052866, 20.674406, 7.970492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.924522, 20.295975, 7.988320>,  <22.847517, 20.068916, 7.999017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.924522, 20.295975, 7.988320>,  <23.052866, 20.674406, 7.970492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.924522, 20.295975, 7.988320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586221, 0.235336, 0.775218,
		-0.743905, 0.222608, -0.630120,
		-0.320860, -0.946077, 0.044570,
		22.828264, 20.012152, 8.001691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.397799, 20.665234, 7.857344>,  <23.052866, 20.674406, 7.970492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.397799, 20.665234, 7.857344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.469131, 20.356934, 8.102012>,  <22.511930, 20.171953, 8.248813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.469131, 20.356934, 8.102012>,  <22.397799, 20.665234, 7.857344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.469131, 20.356934, 8.102012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544408, 0.440534, 0.713828,
		-0.819645, -0.460296, -0.341042,
		0.178331, -0.770751, 0.611670,
		22.522631, 20.125708, 8.285513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.783392, 20.525864, 8.302736>,  <22.397799, 20.665234, 7.857344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.783392, 20.525864, 8.302736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.091743, 20.363117, 8.498781>,  <22.276754, 20.265471, 8.616408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.091743, 20.363117, 8.498781>,  <21.783392, 20.525864, 8.302736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.091743, 20.363117, 8.498781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488655, 0.115846, 0.864752,
		-0.408614, -0.906113, -0.109513,
		0.770877, -0.406864, 0.490113,
		22.323006, 20.241058, 8.645815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.479225, 20.197054, 8.817109>,  <21.783392, 20.525864, 8.302736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.479225, 20.197054, 8.817109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.861553, 20.214813, 8.933343>,  <22.090950, 20.225470, 9.003083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.861553, 20.214813, 8.933343>,  <21.479225, 20.197054, 8.817109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.861553, 20.214813, 8.933343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284832, -0.104487, 0.952866,
		0.072668, -0.993535, -0.087224,
		0.955819, 0.044399, 0.290584,
		22.148298, 20.228132, 9.020518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.325699, 19.979445, 9.507196>,  <21.479225, 20.197054, 8.817109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.325699, 19.979445, 9.507196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.689171, 20.146137, 9.497113>,  <21.907253, 20.246153, 9.491063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.689171, 20.146137, 9.497113>,  <21.325699, 19.979445, 9.507196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.689171, 20.146137, 9.497113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067928, 0.207151, 0.975948,
		0.411931, -0.885111, 0.216542,
		0.908679, 0.416733, -0.025208,
		21.961775, 20.271156, 9.489551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.708305, 19.669159, 9.973235>,  <21.325699, 19.979445, 9.507196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.708305, 19.669159, 9.973235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.804195, 20.055431, 9.933249>,  <21.861729, 20.287195, 9.909258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.804195, 20.055431, 9.933249>,  <21.708305, 19.669159, 9.973235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.804195, 20.055431, 9.933249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239282, 0.158560, 0.957916,
		0.940892, -0.205716, 0.269080,
		0.239723, 0.965681, -0.099963,
		21.876112, 20.345135, 9.903260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.215929, 19.832146, 10.359394>,  <21.708305, 19.669159, 9.973235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.215929, 19.832146, 10.359394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.008133, 20.170300, 10.309669>,  <21.883455, 20.373192, 10.279834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.008133, 20.170300, 10.309669>,  <22.215929, 19.832146, 10.359394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.008133, 20.170300, 10.309669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055183, 0.178373, 0.982414,
		0.852694, 0.503493, -0.139313,
		-0.519488, 0.845387, -0.124313,
		21.852287, 20.423916, 10.272374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.662743, 20.355829, 10.523517>,  <22.215929, 19.832146, 10.359394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.662743, 20.355829, 10.523517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.301689, 20.512043, 10.595890>,  <22.085056, 20.605770, 10.639315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.301689, 20.512043, 10.595890>,  <22.662743, 20.355829, 10.523517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.301689, 20.512043, 10.595890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255583, 0.148098, 0.955377,
		0.346311, 0.908598, -0.233491,
		-0.902633, 0.390534, 0.180934,
		22.030899, 20.629204, 10.650170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.757500, 21.031946, 10.774469>,  <22.662743, 20.355829, 10.523517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.757500, 21.031946, 10.774469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.389198, 20.928329, 10.891162>,  <22.168217, 20.866159, 10.961178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.389198, 20.928329, 10.891162>,  <22.757500, 21.031946, 10.774469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.389198, 20.928329, 10.891162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208678, 0.304807, 0.929272,
		-0.329642, 0.916510, -0.226596,
		-0.920755, -0.259042, 0.291732,
		22.112972, 20.850616, 10.978682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.617750, 21.589851, 11.279430>,  <22.757500, 21.031946, 10.774469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.617750, 21.589851, 11.279430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.341244, 21.304466, 11.325255>,  <22.175341, 21.133236, 11.352751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.341244, 21.304466, 11.325255>,  <22.617750, 21.589851, 11.279430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.341244, 21.304466, 11.325255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015598, 0.173238, 0.984757,
		-0.722434, 0.678940, -0.130881,
		-0.691264, -0.713463, 0.114563,
		22.133865, 21.090427, 11.359624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.020739, 21.892000, 11.670847>,  <22.617750, 21.589851, 11.279430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.020739, 21.892000, 11.670847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.013649, 21.494587, 11.715699>,  <22.009396, 21.256138, 11.742611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.013649, 21.494587, 11.715699>,  <22.020739, 21.892000, 11.670847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.013649, 21.494587, 11.715699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067276, 0.110709, 0.991573,
		-0.997577, 0.025118, 0.064879,
		-0.017724, -0.993535, 0.112131,
		22.008331, 21.196526, 11.749338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.563337, 21.700577, 12.284930>,  <22.020739, 21.892000, 11.670847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.563337, 21.700577, 12.284930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.789429, 21.372604, 12.248646>,  <21.925083, 21.175821, 12.226875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.789429, 21.372604, 12.248646>,  <21.563337, 21.700577, 12.284930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.789429, 21.372604, 12.248646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196978, 0.027365, 0.980026,
		-0.801073, -0.571806, 0.176976,
		0.565227, -0.819932, -0.090712,
		21.958998, 21.126625, 12.221433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.314899, 21.284113, 12.827537>,  <21.563337, 21.700577, 12.284930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.314899, 21.284113, 12.827537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.658718, 21.103371, 12.732037>,  <21.865009, 20.994925, 12.674737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.658718, 21.103371, 12.732037>,  <21.314899, 21.284113, 12.827537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.658718, 21.103371, 12.732037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185277, -0.159864, 0.969596,
		-0.476286, -0.877650, -0.053692,
		0.859549, -0.451857, -0.238749,
		21.916582, 20.967813, 12.660412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.303507, 20.671638, 13.236686>,  <21.314899, 21.284113, 12.827537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.303507, 20.671638, 13.236686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686001, 20.713795, 13.127502>,  <21.915497, 20.739088, 13.061993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686001, 20.713795, 13.127502>,  <21.303507, 20.671638, 13.236686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.686001, 20.713795, 13.127502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292594, -0.341120, 0.893323,
		0.001036, -0.934093, -0.357028,
		0.956236, 0.105390, -0.272957,
		21.972872, 20.745411, 13.045615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.775499, 20.040131, 13.380900>,  <21.303507, 20.671638, 13.236686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.775499, 20.040131, 13.380900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.988373, 20.378731, 13.386868>,  <22.116096, 20.581890, 13.390448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.988373, 20.378731, 13.386868>,  <21.775499, 20.040131, 13.380900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.988373, 20.378731, 13.386868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138323, -0.104318, 0.984878,
		0.835255, -0.522070, -0.172606,
		0.532181, 0.846499, 0.014918,
		22.148027, 20.632681, 13.391343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.165905, 19.889080, 13.894676>,  <21.775499, 20.040131, 13.380900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.165905, 19.889080, 13.894676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.219925, 20.284573, 13.868828>,  <22.252337, 20.521868, 13.853319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.219925, 20.284573, 13.868828>,  <22.165905, 19.889080, 13.894676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.219925, 20.284573, 13.868828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062981, 0.056520, 0.996413,
		0.988836, -0.138633, -0.054638,
		0.135047, 0.988730, -0.064620,
		22.260439, 20.581192, 13.849442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.685255, 19.981422, 14.265079>,  <22.165905, 19.889080, 13.894676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.685255, 19.981422, 14.265079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.511578, 20.341038, 14.242428>,  <22.407372, 20.556807, 14.228837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.511578, 20.341038, 14.242428>,  <22.685255, 19.981422, 14.265079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.511578, 20.341038, 14.242428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172904, 0.144871, 0.974226,
		0.884069, 0.413213, -0.218349,
		-0.434195, 0.899037, -0.056630,
		22.381319, 20.610748, 14.225439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.143204, 20.422472, 14.572575>,  <22.685255, 19.981422, 14.265079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.143204, 20.422472, 14.572575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.792694, 20.614426, 14.589821>,  <22.582388, 20.729597, 14.600169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.792694, 20.614426, 14.589821>,  <23.143204, 20.422472, 14.572575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.792694, 20.614426, 14.589821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115680, 0.122671, 0.985682,
		0.467723, 0.868714, -0.163006,
		-0.876272, 0.479883, 0.043116,
		22.529812, 20.758390, 14.602756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.382360, 21.018810, 14.947537>,  <23.143204, 20.422472, 14.572575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.382360, 21.018810, 14.947537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.984737, 20.985420, 14.975481>,  <22.746164, 20.965385, 14.992247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.984737, 20.985420, 14.975481>,  <23.382360, 21.018810, 14.947537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.984737, 20.985420, 14.975481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047906, 0.240771, 0.969399,
		-0.097741, 0.966986, -0.235341,
		-0.994058, -0.083476, 0.069858,
		22.686520, 20.960377, 14.996438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.054375, 21.634991, 15.269329>,  <23.382360, 21.018810, 14.947537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.054375, 21.634991, 15.269329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.786285, 21.345665, 15.335800>,  <22.625431, 21.172070, 15.375683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.786285, 21.345665, 15.335800>,  <23.054375, 21.634991, 15.269329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.786285, 21.345665, 15.335800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105515, 0.128767, 0.986045,
		-0.734620, 0.678405, -0.009982,
		-0.670223, -0.723316, 0.166177,
		22.585218, 21.128670, 15.385653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.815758, 21.849226, 15.881553>,  <23.054375, 21.634991, 15.269329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.815758, 21.849226, 15.881553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.659393, 21.481861, 15.857212>,  <22.565575, 21.261442, 15.842607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.659393, 21.481861, 15.857212>,  <22.815758, 21.849226, 15.881553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.659393, 21.481861, 15.857212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032709, -0.052209, 0.998100,
		-0.919847, 0.392160, -0.009632,
		-0.390912, -0.918414, -0.060851,
		22.542120, 21.206337, 15.838957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.223219, 21.835058, 16.328075>,  <22.815758, 21.849226, 15.881553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.223219, 21.835058, 16.328075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.363068, 21.464249, 16.273832>,  <22.446978, 21.241762, 16.241285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.363068, 21.464249, 16.273832>,  <22.223219, 21.835058, 16.328075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.363068, 21.464249, 16.273832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014707, -0.139295, 0.990142,
		-0.936776, -0.348169, -0.035067,
		0.349622, -0.927025, -0.135609,
		22.467955, 21.186142, 16.233150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.918388, 21.563313, 16.898407>,  <22.223219, 21.835058, 16.328075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.918388, 21.563313, 16.898407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.206089, 21.310261, 16.783546>,  <22.378710, 21.158430, 16.714630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.206089, 21.310261, 16.783546>,  <21.918388, 21.563313, 16.898407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.206089, 21.310261, 16.783546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105666, -0.308897, 0.945208,
		-0.686667, -0.710184, -0.155327,
		0.719251, -0.632630, -0.287151,
		22.421865, 21.120472, 16.697401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.756720, 20.945091, 17.283218>,  <21.918388, 21.563313, 16.898407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.756720, 20.945091, 17.283218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.145443, 20.910362, 17.195532>,  <22.378677, 20.889524, 17.142920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.145443, 20.910362, 17.195532>,  <21.756720, 20.945091, 17.283218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.145443, 20.910362, 17.195532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189909, -0.262802, 0.945975,
		-0.139739, -0.960936, -0.238905,
		0.971807, -0.086820, -0.219214,
		22.436985, 20.884315, 17.129768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.996662, 20.329117, 17.555349>,  <21.756720, 20.945091, 17.283218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.996662, 20.329117, 17.555349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.350395, 20.509857, 17.508383>,  <22.562635, 20.618301, 17.480202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.350395, 20.509857, 17.508383>,  <21.996662, 20.329117, 17.555349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.350395, 20.509857, 17.508383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243995, -0.232898, 0.941395,
		0.398025, -0.861155, -0.316209,
		0.884332, 0.451852, -0.117419,
		22.615694, 20.645412, 17.473158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.518755, 19.947231, 17.952570>,  <21.996662, 20.329117, 17.555349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.518755, 19.947231, 17.952570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.668121, 20.310272, 17.875816>,  <22.757742, 20.528097, 17.829763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.668121, 20.310272, 17.875816>,  <22.518755, 19.947231, 17.952570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.668121, 20.310272, 17.875816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283110, 0.085482, 0.955270,
		0.883408, -0.411037, -0.225030,
		0.373416, 0.907602, -0.191884,
		22.780146, 20.582552, 17.818251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.186169, 19.989784, 18.186468>,  <22.518755, 19.947231, 17.952570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.186169, 19.989784, 18.186468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.084656, 20.375717, 18.159058>,  <23.023748, 20.607277, 18.142611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.084656, 20.375717, 18.159058>,  <23.186169, 19.989784, 18.186468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.084656, 20.375717, 18.159058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323788, 0.151497, 0.933922,
		0.911459, 0.214823, -0.350847,
		-0.253780, 0.964831, -0.068526,
		23.008522, 20.665167, 18.138500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.781822, 20.363724, 18.464556>,  <23.186169, 19.989784, 18.186468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.781822, 20.363724, 18.464556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.470242, 20.613480, 18.487776>,  <23.283293, 20.763334, 18.501707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.470242, 20.613480, 18.487776>,  <23.781822, 20.363724, 18.464556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.470242, 20.613480, 18.487776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292539, 0.279944, 0.914359,
		0.554667, 0.729224, -0.400722,
		-0.778952, 0.624391, 0.058051,
		23.236555, 20.800797, 18.505192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.028296, 20.947449, 18.739979>,  <23.781822, 20.363724, 18.464556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.028296, 20.947449, 18.739979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.634243, 20.951412, 18.808582>,  <23.397812, 20.953791, 18.849745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.634243, 20.951412, 18.808582>,  <24.028296, 20.947449, 18.739979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.634243, 20.951412, 18.808582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170456, 0.180824, 0.968632,
		-0.021417, 0.983466, -0.179824,
		-0.985133, 0.009907, 0.171510,
		23.338703, 20.954384, 18.860035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.924076, 21.463961, 19.191963>,  <24.028296, 20.947449, 18.739979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.924076, 21.463961, 19.191963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.605717, 21.224934, 19.230871>,  <23.414701, 21.081518, 19.254215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.605717, 21.224934, 19.230871>,  <23.924076, 21.463961, 19.191963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.605717, 21.224934, 19.230871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042971, 0.104501, 0.993596,
		-0.603906, 0.794980, -0.057494,
		-0.795897, -0.597568, 0.097270,
		23.366947, 21.045664, 19.260052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.589310, 21.809057, 19.731153>,  <23.924076, 21.463961, 19.191963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.589310, 21.809057, 19.731153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.393398, 21.460411, 19.723103>,  <23.275852, 21.251223, 19.718271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.393398, 21.460411, 19.723103>,  <23.589310, 21.809057, 19.731153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.393398, 21.460411, 19.723103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202848, 0.091468, 0.974929,
		-0.847922, 0.481581, -0.221604,
		-0.489777, -0.871615, -0.020129,
		23.246466, 21.198927, 19.717064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.071270, 21.941986, 20.219398>,  <23.589310, 21.809057, 19.731153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.071270, 21.941986, 20.219398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.109344, 21.545227, 20.185747>,  <23.132189, 21.307171, 20.165556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.109344, 21.545227, 20.185747>,  <23.071270, 21.941986, 20.219398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.109344, 21.545227, 20.185747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295785, -0.108878, 0.949030,
		-0.950501, -0.065448, -0.303752,
		0.095184, -0.991898, -0.084130,
		23.137899, 21.247658, 20.160509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.426289, 21.707073, 20.618793>,  <23.071270, 21.941986, 20.219398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.426289, 21.707073, 20.618793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.688194, 21.407326, 20.579336>,  <22.845339, 21.227478, 20.555662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.688194, 21.407326, 20.579336>,  <22.426289, 21.707073, 20.618793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.688194, 21.407326, 20.579336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164122, -0.268356, 0.949236,
		-0.737799, -0.605337, -0.298698,
		0.654765, -0.749368, -0.098644,
		22.884624, 21.182516, 20.549744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.085110, 21.216825, 20.833809>,  <22.426289, 21.707073, 20.618793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.085110, 21.216825, 20.833809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.460682, 21.082748, 20.864943>,  <22.686026, 21.002302, 20.883623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.460682, 21.082748, 20.864943>,  <22.085110, 21.216825, 20.833809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.460682, 21.082748, 20.864943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212534, -0.386990, 0.897256,
		-0.270632, -0.859002, -0.434596,
		0.938929, -0.335192, 0.077836,
		22.742361, 20.982191, 20.888292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.004549, 20.636271, 21.148882>,  <22.085110, 21.216825, 20.833809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.004549, 20.636271, 21.148882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.399670, 20.677155, 21.195868>,  <22.636742, 20.701685, 21.224058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.399670, 20.677155, 21.195868>,  <22.004549, 20.636271, 21.148882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.399670, 20.677155, 21.195868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063249, -0.425953, 0.902532,
		0.142284, -0.898953, -0.414293,
		0.987803, 0.102212, 0.117464,
		22.696011, 20.707819, 21.231106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.278578, 19.973860, 21.621948>,  <22.004549, 20.636271, 21.148882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.278578, 19.973860, 21.621948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.530109, 20.283283, 21.653402>,  <22.681028, 20.468937, 21.672274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.530109, 20.283283, 21.653402>,  <22.278578, 19.973860, 21.621948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.530109, 20.283283, 21.653402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146184, -0.216944, 0.965176,
		0.763680, -0.595434, -0.249502,
		0.628827, 0.773559, 0.078634,
		22.718758, 20.515350, 21.676992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.766373, 19.742956, 22.249086>,  <22.278578, 19.973860, 21.621948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.766373, 19.742956, 22.249086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.798889, 20.135384, 22.178778>,  <22.818399, 20.370840, 22.136593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.798889, 20.135384, 22.178778>,  <22.766373, 19.742956, 22.249086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.798889, 20.135384, 22.178778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114004, 0.166047, 0.979506,
		0.990149, -0.099665, -0.098347,
		0.081293, 0.981068, -0.175774,
		22.823277, 20.429705, 22.126045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.351551, 20.076986, 22.622448>,  <22.766373, 19.742956, 22.249086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.351551, 20.076986, 22.622448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.072742, 20.348766, 22.530788>,  <22.905458, 20.511835, 22.475792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.072742, 20.348766, 22.530788>,  <23.351551, 20.076986, 22.622448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.072742, 20.348766, 22.530788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188341, 0.134872, 0.972798,
		0.691875, 0.721218, 0.033960,
		-0.697020, 0.679451, -0.229150,
		22.863636, 20.552601, 22.462044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.424406, 20.506781, 23.148500>,  <23.351551, 20.076986, 22.622448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.424406, 20.506781, 23.148500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.066582, 20.595753, 22.993431>,  <22.851887, 20.649136, 22.900391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.066582, 20.595753, 22.993431>,  <23.424406, 20.506781, 23.148500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.066582, 20.595753, 22.993431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316498, 0.297186, 0.900838,
		0.315584, 0.928550, -0.195451,
		-0.894559, 0.222430, -0.387672,
		22.798214, 20.662481, 22.877129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.237110, 21.126177, 23.451080>,  <23.424406, 20.506781, 23.148500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.237110, 21.126177, 23.451080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.876663, 20.990623, 23.342901>,  <22.660395, 20.909292, 23.277994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.876663, 20.990623, 23.342901>,  <23.237110, 21.126177, 23.451080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.876663, 20.990623, 23.342901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372496, 0.285898, 0.882898,
		-0.221880, 0.896337, -0.383861,
		-0.901119, -0.338884, -0.270447,
		22.606327, 20.888958, 23.261766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.794689, 21.364424, 23.962852>,  <23.237110, 21.126177, 23.451080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.794689, 21.364424, 23.962852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.537670, 21.117512, 23.781260>,  <22.383459, 20.969364, 23.672304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.537670, 21.117512, 23.781260>,  <22.794689, 21.364424, 23.962852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.537670, 21.117512, 23.781260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531240, -0.068091, 0.844481,
		-0.552193, 0.783791, -0.284173,
		-0.642547, -0.617280, -0.453981,
		22.344906, 20.932327, 23.645065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.126244, 21.607349, 23.968082>,  <22.794689, 21.364424, 23.962852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.126244, 21.607349, 23.968082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.076138, 21.212303, 23.930296>,  <22.046074, 20.975275, 23.907625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.076138, 21.212303, 23.930296>,  <22.126244, 21.607349, 23.968082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.076138, 21.212303, 23.930296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584206, -0.003529, 0.811598,
		-0.801880, 0.156854, -0.576529,
		-0.125267, -0.987616, -0.094465,
		22.038557, 20.916019, 23.901957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.435207, 21.613937, 24.091906>,  <22.126244, 21.607349, 23.968082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.435207, 21.613937, 24.091906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.598019, 21.250675, 24.131056>,  <21.695705, 21.032719, 24.154547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.598019, 21.250675, 24.131056>,  <21.435207, 21.613937, 24.091906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.598019, 21.250675, 24.131056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463667, -0.113103, 0.878761,
		-0.786981, -0.403064, -0.467118,
		0.407030, -0.908156, 0.097878,
		21.720127, 20.978228, 24.160419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.906776, 21.034317, 24.117950>,  <21.435207, 21.613937, 24.091906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.906776, 21.034317, 24.117950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.233551, 20.902645, 24.307373>,  <21.429617, 20.823643, 24.421026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.233551, 20.902645, 24.307373>,  <20.906776, 21.034317, 24.117950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.233551, 20.902645, 24.307373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506581, -0.017102, 0.862023,
		-0.275660, -0.944113, -0.180726,
		0.816938, -0.329177, 0.473555,
		21.478632, 20.803892, 24.449440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.665934, 20.658524, 24.642357>,  <20.906776, 21.034317, 24.117950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.665934, 20.658524, 24.642357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.043053, 20.711987, 24.764517>,  <21.269323, 20.744064, 24.837812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.043053, 20.711987, 24.764517>,  <20.665934, 20.658524, 24.642357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.043053, 20.711987, 24.764517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307378, -0.006091, 0.951568,
		0.129048, -0.991008, 0.035342,
		0.942796, 0.133661, 0.305400,
		21.325891, 20.752085, 24.856136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.764679, 20.263479, 25.250015>,  <20.665934, 20.658524, 24.642357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.764679, 20.263479, 25.250015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.074848, 20.515553, 25.265959>,  <21.260950, 20.666796, 25.275526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.074848, 20.515553, 25.265959>,  <20.764679, 20.263479, 25.250015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.074848, 20.515553, 25.265959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080973, -0.161843, 0.983489,
		0.626230, -0.759391, -0.176524,
		0.775422, 0.630184, 0.039861,
		21.307474, 20.704607, 25.277918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.164692, 19.986889, 25.794292>,  <20.764679, 20.263479, 25.250015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.164692, 19.986889, 25.794292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.252079, 20.374317, 25.746723>,  <21.304510, 20.606773, 25.718182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.252079, 20.374317, 25.746723>,  <21.164692, 19.986889, 25.794292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.252079, 20.374317, 25.746723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007176, 0.120269, 0.992715,
		0.975818, -0.217728, 0.019324,
		0.218466, 0.968571, -0.118923,
		21.317619, 20.664888, 25.711046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.795723, 20.182621, 26.149704>,  <21.164692, 19.986889, 25.794292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.795723, 20.182621, 26.149704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.570259, 20.511654, 26.119648>,  <21.434980, 20.709074, 26.101614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.570259, 20.511654, 26.119648>,  <21.795723, 20.182621, 26.149704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.570259, 20.511654, 26.119648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083650, 0.147346, 0.985541,
		0.821760, 0.549226, -0.151862,
		-0.563661, 0.822581, -0.075141,
		21.401161, 20.758429, 26.097105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.000071, 20.696753, 26.670063>,  <21.795723, 20.182621, 26.149704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.000071, 20.696753, 26.670063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.617001, 20.782230, 26.592922>,  <21.387159, 20.833517, 26.546638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.617001, 20.782230, 26.592922>,  <22.000071, 20.696753, 26.670063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.617001, 20.782230, 26.592922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163143, 0.149028, 0.975282,
		0.237153, 0.965466, -0.107858,
		-0.957676, 0.213695, -0.192851,
		21.329699, 20.846338, 26.535067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.920435, 20.937185, 27.226067>,  <22.000071, 20.696753, 26.670063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.920435, 20.937185, 27.226067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.560604, 20.931591, 27.051453>,  <21.344706, 20.928234, 26.946684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.560604, 20.931591, 27.051453>,  <21.920435, 20.937185, 27.226067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.560604, 20.931591, 27.051453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432476, 0.168165, 0.885825,
		0.061022, 0.985660, -0.157326,
		-0.899578, -0.013985, -0.436536,
		21.290731, 20.927395, 26.920492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.499611, 21.027319, 27.817186>,  <21.920435, 20.937185, 27.226067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.499611, 21.027319, 27.817186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.231236, 21.041355, 27.520914>,  <21.070210, 21.049776, 27.343151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.231236, 21.041355, 27.520914>,  <21.499611, 21.027319, 27.817186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.231236, 21.041355, 27.520914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698181, 0.306561, 0.646964,
		0.249767, 0.951204, -0.181184,
		-0.670939, 0.035091, -0.740682,
		21.029953, 21.051882, 27.298710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.143772, 21.698839, 27.814154>,  <21.499611, 21.027319, 27.817186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.143772, 21.698839, 27.814154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.919144, 21.381748, 27.719309>,  <20.784367, 21.191494, 27.662401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.919144, 21.381748, 27.719309>,  <21.143772, 21.698839, 27.814154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.919144, 21.381748, 27.719309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768704, 0.393798, 0.504002,
		-0.306161, 0.465303, -0.830517,
		-0.561570, -0.792727, -0.237114,
		20.750673, 21.143930, 27.648174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.496355, 21.856892, 27.385172>,  <21.143772, 21.698839, 27.814154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.496355, 21.856892, 27.385172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.460018, 21.556904, 27.647253>,  <20.438217, 21.376911, 27.804502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.460018, 21.556904, 27.647253>,  <20.496355, 21.856892, 27.385172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.460018, 21.556904, 27.647253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799898, 0.446864, 0.400593,
		-0.593220, -0.487707, -0.640493,
		-0.090841, -0.749970, 0.655205,
		20.432766, 21.331913, 27.843815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.775679, 21.847466, 27.486565>,  <20.496355, 21.856892, 27.385172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.775679, 21.847466, 27.486565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.929291, 21.680916, 27.816208>,  <20.021458, 21.580986, 28.013994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.929291, 21.680916, 27.816208>,  <19.775679, 21.847466, 27.486565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.929291, 21.680916, 27.816208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699796, 0.451006, 0.553967,
		-0.602336, -0.789446, -0.118179,
		0.384028, -0.416375, 0.824108,
		20.044498, 21.556004, 28.063440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.563047, 21.437332, 28.150591>,  <19.775679, 21.847466, 27.486565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.563047, 21.437332, 28.150591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.198139, 21.588188, 28.086679>,  <18.979195, 21.678701, 28.048332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.198139, 21.588188, 28.086679>,  <19.563047, 21.437332, 28.150591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.198139, 21.588188, 28.086679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222086, 0.127680, -0.966631,
		-0.344154, -0.917313, -0.200236,
		-0.912270, 0.377140, -0.159780,
		18.924458, 21.701330, 28.038746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.263109, 21.164721, 27.526909>,  <19.563047, 21.437332, 28.150591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.263109, 21.164721, 27.526909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.077057, 21.513920, 27.585598>,  <18.965425, 21.723440, 27.620811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.077057, 21.513920, 27.585598>,  <19.263109, 21.164721, 27.526909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.077057, 21.513920, 27.585598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103784, 0.218376, -0.970330,
		-0.879137, -0.436104, -0.192177,
		-0.465132, 0.872998, 0.146722,
		18.937517, 21.775820, 27.629614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.851892, 21.257324, 26.833864>,  <19.263109, 21.164721, 27.526909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.851892, 21.257324, 26.833864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.931786, 21.605309, 27.014210>,  <18.979721, 21.814098, 27.122417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.931786, 21.605309, 27.014210>,  <18.851892, 21.257324, 26.833864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.931786, 21.605309, 27.014210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288383, 0.387563, -0.875574,
		-0.936452, 0.304904, -0.173471,
		0.199735, 0.869959, 0.450863,
		18.991707, 21.866297, 27.149469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.482037, 21.846985, 26.710022>,  <18.851892, 21.257324, 26.833864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.482037, 21.846985, 26.710022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.846050, 21.995346, 26.784067>,  <19.064459, 22.084362, 26.828493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.846050, 21.995346, 26.784067>,  <18.482037, 21.846985, 26.710022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.846050, 21.995346, 26.784067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035287, 0.375620, -0.926102,
		-0.413026, 0.849318, 0.328739,
		0.910036, 0.370904, 0.185111,
		19.119061, 22.106617, 26.839600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.501505, 22.559607, 26.468386>,  <18.482037, 21.846985, 26.710022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.501505, 22.559607, 26.468386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.875282, 22.417755, 26.481377>,  <19.099548, 22.332645, 26.489172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.875282, 22.417755, 26.481377>,  <18.501505, 22.559607, 26.468386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.875282, 22.417755, 26.481377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121991, 0.233091, -0.964773,
		0.334565, 0.905488, 0.261072,
		0.934443, -0.354628, 0.032477,
		19.155615, 22.311367, 26.491119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.913679, 23.099974, 26.120569>,  <18.501505, 22.559607, 26.468386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.913679, 23.099974, 26.120569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.143345, 22.772648, 26.110033>,  <19.281145, 22.576252, 26.103712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.143345, 22.772648, 26.110033>,  <18.913679, 23.099974, 26.120569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.143345, 22.772648, 26.110033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274440, 0.222669, -0.935469,
		0.771373, 0.529886, 0.352427,
		0.574166, -0.818315, -0.026339,
		19.315594, 22.527153, 26.102131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.402519, 23.383604, 25.752317>,  <18.913679, 23.099974, 26.120569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.402519, 23.383604, 25.752317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.420147, 22.986046, 25.711853>,  <19.430723, 22.747511, 25.687574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.420147, 22.986046, 25.711853>,  <19.402519, 23.383604, 25.752317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.420147, 22.986046, 25.711853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198514, 0.107953, -0.974135,
		0.979107, 0.022849, 0.202059,
		0.044071, -0.993893, -0.101162,
		19.433369, 22.687878, 25.681505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.972818, 23.218441, 25.320095>,  <19.402519, 23.383604, 25.752317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.972818, 23.218441, 25.320095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.768314, 22.874882, 25.308052>,  <19.645613, 22.668747, 25.300827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.768314, 22.874882, 25.308052>,  <19.972818, 23.218441, 25.320095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.768314, 22.874882, 25.308052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245101, -0.112140, -0.962990,
		0.823734, -0.499718, 0.267850,
		-0.511260, -0.858898, -0.030108,
		19.614937, 22.617212, 25.299019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.430391, 22.729967, 24.965899>,  <19.972818, 23.218441, 25.320095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.430391, 22.729967, 24.965899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.067181, 22.564003, 24.942804>,  <19.849255, 22.464424, 24.928947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.067181, 22.564003, 24.942804>,  <20.430391, 22.729967, 24.965899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.067181, 22.564003, 24.942804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199655, -0.307480, -0.930373,
		0.368268, -0.856333, 0.362039,
		-0.908029, -0.414909, -0.057736,
		19.794771, 22.439529, 24.925484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.580738, 22.089161, 24.624609>,  <20.430391, 22.729967, 24.965899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.580738, 22.089161, 24.624609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.204041, 22.202835, 24.552652>,  <19.978022, 22.271040, 24.509478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.204041, 22.202835, 24.552652>,  <20.580738, 22.089161, 24.624609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.204041, 22.202835, 24.552652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134048, -0.173410, -0.975685,
		-0.308472, -0.942957, 0.125213,
		-0.941741, 0.284186, -0.179894,
		19.921518, 22.288090, 24.498684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.327375, 21.583925, 24.233446>,  <20.580738, 22.089161, 24.624609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.327375, 21.583925, 24.233446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.074638, 21.887386, 24.169920>,  <19.922997, 22.069462, 24.131804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.074638, 21.887386, 24.169920>,  <20.327375, 21.583925, 24.233446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.074638, 21.887386, 24.169920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009295, -0.197466, -0.980266,
		-0.775040, -0.620851, 0.117716,
		-0.631844, 0.758651, -0.158815,
		19.885086, 22.114983, 24.122276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.858162, 21.292816, 23.761507>,  <20.327375, 21.583925, 24.233446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.858162, 21.292816, 23.761507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.831844, 21.690388, 23.726244>,  <19.816053, 21.928932, 23.705086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.831844, 21.690388, 23.726244>,  <19.858162, 21.292816, 23.761507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.831844, 21.690388, 23.726244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002788, -0.088533, -0.996069,
		-0.997829, -0.065289, 0.008596,
		-0.065794, 0.993931, -0.088159,
		19.812107, 21.988567, 23.699797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.493265, 21.365137, 23.233078>,  <19.858162, 21.292816, 23.761507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.493265, 21.365137, 23.233078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.662121, 21.726830, 23.258881>,  <19.763435, 21.943846, 23.274363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.662121, 21.726830, 23.258881>,  <19.493265, 21.365137, 23.233078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.662121, 21.726830, 23.258881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037645, 0.053609, -0.997852,
		-0.905748, 0.423663, -0.011409,
		0.422141, 0.904232, 0.064505,
		19.788763, 21.998098, 23.278233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.145735, 21.827656, 22.714144>,  <19.493265, 21.365137, 23.233078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.145735, 21.827656, 22.714144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.492111, 22.014824, 22.784794>,  <19.699938, 22.127125, 22.827185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.492111, 22.014824, 22.784794>,  <19.145735, 21.827656, 22.714144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.492111, 22.014824, 22.784794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155051, 0.084593, -0.984278,
		-0.475506, 0.879712, 0.000701,
		0.865941, 0.467922, 0.176625,
		19.751894, 22.155201, 22.837782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.054571, 22.543592, 22.480152>,  <19.145735, 21.827656, 22.714144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.054571, 22.543592, 22.480152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.445522, 22.458992, 22.480621>,  <19.680094, 22.408232, 22.480904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.445522, 22.458992, 22.480621>,  <19.054571, 22.543592, 22.480152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.445522, 22.458992, 22.480621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064784, 0.294088, -0.953580,
		0.201336, 0.932084, 0.301137,
		0.977377, -0.211499, 0.001173,
		19.738735, 22.395542, 22.480974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.485882, 23.075735, 22.116722>,  <19.054571, 22.543592, 22.480152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.485882, 23.075735, 22.116722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.736179, 22.764034, 22.102791>,  <19.886358, 22.577013, 22.094433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.736179, 22.764034, 22.102791>,  <19.485882, 23.075735, 22.116722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.736179, 22.764034, 22.102791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102872, 0.126701, -0.986592,
		0.773217, 0.613770, 0.159446,
		0.625742, -0.779252, -0.034828,
		19.923903, 22.530258, 22.092342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.997345, 23.289097, 21.654446>,  <19.485882, 23.075735, 22.116722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.997345, 23.289097, 21.654446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.060207, 22.895073, 21.682602>,  <20.097925, 22.658659, 21.699495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.060207, 22.895073, 21.682602>,  <19.997345, 23.289097, 21.654446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.060207, 22.895073, 21.682602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303552, -0.019643, -0.952613,
		0.939765, 0.171077, 0.295930,
		0.157157, -0.985062, 0.070390,
		20.107355, 22.599554, 21.703718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.644234, 23.138323, 21.233334>,  <19.997345, 23.289097, 21.654446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.644234, 23.138323, 21.233334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.463089, 22.785637, 21.286245>,  <20.354403, 22.574026, 21.317991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.463089, 22.785637, 21.286245>,  <20.644234, 23.138323, 21.233334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.463089, 22.785637, 21.286245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233674, -0.260554, -0.936754,
		0.860413, -0.393311, 0.324029,
		-0.452863, -0.881713, 0.132277,
		20.327230, 22.521124, 21.325928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.093975, 22.578094, 21.168528>,  <20.644234, 23.138323, 21.233334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.093975, 22.578094, 21.168528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.733372, 22.427284, 21.083549>,  <20.517010, 22.336798, 21.032562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.733372, 22.427284, 21.083549>,  <21.093975, 22.578094, 21.168528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.733372, 22.427284, 21.083549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337962, -0.306737, -0.889772,
		0.270299, -0.873937, 0.403946,
		-0.901510, -0.377023, -0.212447,
		20.462919, 22.314177, 21.019815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.197010, 21.854401, 20.741762>,  <21.093975, 22.578094, 21.168528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.197010, 21.854401, 20.741762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.834846, 22.000282, 20.654839>,  <20.617548, 22.087812, 20.602684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.834846, 22.000282, 20.654839>,  <21.197010, 21.854401, 20.741762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.834846, 22.000282, 20.654839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070619, -0.375358, -0.924186,
		-0.418628, -0.852111, 0.314097,
		-0.905408, 0.364709, -0.217311,
		20.563223, 22.109694, 20.589645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.885773, 21.306309, 20.331127>,  <21.197010, 21.854401, 20.741762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.885773, 21.306309, 20.331127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.683456, 21.643906, 20.259737>,  <20.562067, 21.846464, 20.216904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.683456, 21.643906, 20.259737>,  <20.885773, 21.306309, 20.331127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.683456, 21.643906, 20.259737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065227, -0.243715, -0.967651,
		-0.860187, -0.477786, 0.178320,
		-0.505789, 0.843992, -0.178476,
		20.531719, 21.897104, 20.206194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.393770, 21.170174, 19.825386>,  <20.885773, 21.306309, 20.331127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.393770, 21.170174, 19.825386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.389366, 21.570129, 19.829409>,  <20.386724, 21.810102, 19.831821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.389366, 21.570129, 19.829409>,  <20.393770, 21.170174, 19.825386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.389366, 21.570129, 19.829409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236740, 0.007164, -0.971547,
		-0.971511, -0.013078, 0.236635,
		-0.011010, 0.999889, 0.010056,
		20.386063, 21.870096, 19.832426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.785608, 21.323772, 19.467836>,  <20.393770, 21.170174, 19.825386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.785608, 21.323772, 19.467836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.034054, 21.635513, 19.434780>,  <20.183121, 21.822557, 19.414946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.034054, 21.635513, 19.434780>,  <19.785608, 21.323772, 19.467836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.034054, 21.635513, 19.434780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215572, 0.068510, -0.974082,
		-0.753491, 0.622829, 0.210558,
		0.621112, 0.779352, -0.082643,
		20.220387, 21.869320, 19.409986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.397655, 21.669291, 19.104460>,  <19.785608, 21.323772, 19.467836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.397655, 21.669291, 19.104460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.756935, 21.834927, 19.045443>,  <19.972502, 21.934309, 19.010033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.756935, 21.834927, 19.045443>,  <19.397655, 21.669291, 19.104460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.756935, 21.834927, 19.045443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204858, 0.097327, -0.973941,
		-0.388941, 0.905017, 0.172249,
		0.898197, 0.414092, -0.147545,
		20.026394, 21.959154, 19.001179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.198648, 22.316017, 18.631746>,  <19.397655, 21.669291, 19.104460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.198648, 22.316017, 18.631746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.586769, 22.231201, 18.585171>,  <19.819641, 22.180311, 18.557224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.586769, 22.231201, 18.585171>,  <19.198648, 22.316017, 18.631746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.586769, 22.231201, 18.585171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100366, 0.085094, -0.991305,
		0.220103, 0.973549, 0.061285,
		0.970299, -0.212038, -0.116441,
		19.877859, 22.167589, 18.550238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.500046, 22.889301, 18.263681>,  <19.198648, 22.316017, 18.631746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.500046, 22.889301, 18.263681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767139, 22.592682, 18.237638>,  <19.927395, 22.414711, 18.222013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767139, 22.592682, 18.237638>,  <19.500046, 22.889301, 18.263681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.767139, 22.592682, 18.237638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170059, 0.237109, -0.956483,
		0.724716, 0.627603, 0.284432,
		0.667733, -0.741549, -0.065107,
		19.967459, 22.370216, 18.218107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.948803, 23.124474, 17.723032>,  <19.500046, 22.889301, 18.263681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.948803, 23.124474, 17.723032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.997475, 22.728081, 17.745478>,  <20.026678, 22.490246, 17.758945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.997475, 22.728081, 17.745478>,  <19.948803, 23.124474, 17.723032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.997475, 22.728081, 17.745478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061465, -0.048904, -0.996911,
		0.990665, 0.124753, 0.054960,
		0.121680, -0.990982, 0.056115,
		20.033979, 22.430786, 17.762312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.501186, 23.065437, 17.393723>,  <19.948803, 23.124474, 17.723032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.501186, 23.065437, 17.393723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.317829, 22.711288, 17.362753>,  <20.207815, 22.498800, 17.344172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.317829, 22.711288, 17.362753>,  <20.501186, 23.065437, 17.393723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.317829, 22.711288, 17.362753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181494, -0.007976, -0.983360,
		0.870019, -0.464819, 0.164345,
		-0.458395, -0.885370, -0.077423,
		20.180311, 22.445677, 17.339525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.878338, 22.689472, 16.922850>,  <20.501186, 23.065437, 17.393723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.878338, 22.689472, 16.922850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.523666, 22.504745, 16.913687>,  <20.310863, 22.393909, 16.908188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.523666, 22.504745, 16.913687>,  <20.878338, 22.689472, 16.922850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.523666, 22.504745, 16.913687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079598, -0.103645, -0.991424,
		0.455484, -0.880898, 0.128660,
		-0.886679, -0.461819, -0.022909,
		20.257664, 22.366199, 16.906815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.954147, 22.114492, 16.436001>,  <20.878338, 22.689472, 16.922850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.954147, 22.114492, 16.436001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.563023, 22.192608, 16.466326>,  <20.328348, 22.239477, 16.484522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.563023, 22.192608, 16.466326>,  <20.954147, 22.114492, 16.436001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.563023, 22.192608, 16.466326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088183, -0.055431, -0.994561,
		-0.190027, -0.979178, 0.071422,
		-0.977811, 0.195291, 0.075814,
		20.269680, 22.251194, 16.489069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.542456, 21.549223, 16.040167>,  <20.954147, 22.114492, 16.436001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.542456, 21.549223, 16.040167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.275009, 21.846027, 16.059637>,  <20.114542, 22.024111, 16.071320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.275009, 21.846027, 16.059637>,  <20.542456, 21.549223, 16.040167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.275009, 21.846027, 16.059637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254477, -0.166815, -0.952583,
		-0.698708, -0.649300, 0.300361,
		-0.668617, 0.742013, 0.048677,
		20.074425, 22.068630, 16.074240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.898289, 21.289062, 15.699142>,  <20.542456, 21.549223, 16.040167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.898289, 21.289062, 15.699142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.926640, 21.687721, 15.682791>,  <19.943651, 21.926916, 15.672979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.926640, 21.687721, 15.682791>,  <19.898289, 21.289062, 15.699142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.926640, 21.687721, 15.682791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267756, -0.020469, -0.963269,
		-0.960876, 0.079220, 0.265408,
		0.070878, 0.996647, -0.040880,
		19.947903, 21.986715, 15.670527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.542929, 21.402721, 15.188814>,  <19.898289, 21.289062, 15.699142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.542929, 21.402721, 15.188814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.657501, 21.781540, 15.246861>,  <19.726246, 22.008831, 15.281689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.657501, 21.781540, 15.246861>,  <19.542929, 21.402721, 15.188814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.657501, 21.781540, 15.246861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246172, 0.219124, -0.944131,
		-0.925935, 0.234707, 0.295901,
		0.286433, 0.947047, 0.145116,
		19.743431, 22.065655, 15.290396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.041410, 21.874697, 15.003923>,  <19.542929, 21.402721, 15.188814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.041410, 21.874697, 15.003923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.390526, 22.063061, 14.952566>,  <19.599995, 22.176079, 14.921752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.390526, 22.063061, 14.952566>,  <19.041410, 21.874697, 15.003923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.390526, 22.063061, 14.952566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249889, 0.205141, -0.946294,
		-0.419279, 0.857999, 0.296719,
		0.872789, 0.470909, -0.128394,
		19.652363, 22.204334, 14.914048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.855946, 22.414265, 14.637235>,  <19.041410, 21.874697, 15.003923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.855946, 22.414265, 14.637235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.249058, 22.403000, 14.564184>,  <19.484924, 22.396240, 14.520354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.249058, 22.403000, 14.564184>,  <18.855946, 22.414265, 14.637235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.249058, 22.403000, 14.564184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179133, 0.097357, -0.978996,
		0.045351, 0.994851, 0.090636,
		0.982779, -0.028162, -0.182626,
		19.543892, 22.394550, 14.509397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.930099, 22.848055, 14.015411>,  <18.855946, 22.414265, 14.637235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.930099, 22.848055, 14.015411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.268738, 22.637676, 14.048038>,  <19.471920, 22.511448, 14.067615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.268738, 22.637676, 14.048038>,  <18.930099, 22.848055, 14.015411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.268738, 22.637676, 14.048038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021532, -0.186974, -0.982129,
		0.531800, 0.829710, -0.169616,
		0.846596, -0.525949, 0.081568,
		19.522717, 22.479891, 14.072509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.295237, 23.058571, 13.526436>,  <18.930099, 22.848055, 14.015411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.295237, 23.058571, 13.526436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.444443, 22.693981, 13.595798>,  <19.533966, 22.475227, 13.637416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.444443, 22.693981, 13.595798>,  <19.295237, 23.058571, 13.526436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.444443, 22.693981, 13.595798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129857, -0.133770, -0.982468,
		0.918693, 0.388994, 0.068464,
		0.373016, -0.911477, 0.173408,
		19.556347, 22.420538, 13.647820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.889536, 23.012501, 13.112266>,  <19.295237, 23.058571, 13.526436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.889536, 23.012501, 13.112266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.783585, 22.635418, 13.193401>,  <19.720015, 22.409168, 13.242083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.783585, 22.635418, 13.193401>,  <19.889536, 23.012501, 13.112266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.783585, 22.635418, 13.193401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074343, -0.189762, -0.979011,
		0.961412, -0.274398, -0.019820,
		-0.264878, -0.942707, 0.202839,
		19.704121, 22.352606, 13.254253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.372953, 22.648458, 12.801008>,  <19.889536, 23.012501, 13.112266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.372953, 22.648458, 12.801008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.078907, 22.380276, 12.841194>,  <19.902479, 22.219366, 12.865306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.078907, 22.380276, 12.841194>,  <20.372953, 22.648458, 12.801008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.078907, 22.380276, 12.841194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057255, -0.209061, -0.976225,
		0.675521, -0.711885, 0.192071,
		-0.735115, -0.670458, 0.100466,
		19.858372, 22.179138, 12.871334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.568310, 22.151812, 12.363708>,  <20.372953, 22.648458, 12.801008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.568310, 22.151812, 12.363708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.176571, 22.086319, 12.411160>,  <19.941528, 22.047024, 12.439632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.176571, 22.086319, 12.411160>,  <20.568310, 22.151812, 12.363708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.176571, 22.086319, 12.411160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040299, -0.416897, -0.908060,
		0.198134, -0.894086, 0.401689,
		-0.979346, -0.163730, 0.118632,
		19.882767, 22.037199, 12.446750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.497437, 21.483040, 12.209184>,  <20.568310, 22.151812, 12.363708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.497437, 21.483040, 12.209184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.119923, 21.611614, 12.178330>,  <19.893414, 21.688759, 12.159819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.119923, 21.611614, 12.178330>,  <20.497437, 21.483040, 12.209184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.119923, 21.611614, 12.178330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123652, -0.559698, -0.819420,
		-0.306561, -0.763819, 0.567980,
		-0.943785, 0.321434, -0.077133,
		19.836786, 21.708044, 12.155190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.973772, 20.832970, 12.014261>,  <20.497437, 21.483040, 12.209184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.973772, 20.832970, 12.014261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.797005, 21.176136, 11.909427>,  <19.690945, 21.382036, 11.846526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.797005, 21.176136, 11.909427>,  <19.973772, 20.832970, 12.014261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.797005, 21.176136, 11.909427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153030, -0.359980, -0.920324,
		-0.883905, -0.366603, 0.290369,
		-0.441920, 0.857914, -0.262087,
		19.664429, 21.433510, 11.830801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.476198, 20.685141, 11.599400>,  <19.973772, 20.832970, 12.014261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.476198, 20.685141, 11.599400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.488251, 21.074032, 11.506565>,  <19.495481, 21.307367, 11.450865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.488251, 21.074032, 11.506565>,  <19.476198, 20.685141, 11.599400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.488251, 21.074032, 11.506565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137057, -0.225980, -0.964442,
		-0.990105, 0.060868, 0.126442,
		0.030130, 0.972229, -0.232086,
		19.497290, 21.365700, 11.436939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.861902, 20.844639, 11.202744>,  <19.476198, 20.685141, 11.599400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.861902, 20.844639, 11.202744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.133556, 21.118641, 11.097260>,  <19.296549, 21.283043, 11.033970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.133556, 21.118641, 11.097260>,  <18.861902, 20.844639, 11.202744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.133556, 21.118641, 11.097260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068682, -0.298392, -0.951969,
		-0.730792, 0.664628, -0.155601,
		0.679136, 0.685005, -0.263710,
		19.337297, 21.324142, 11.018147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.139647, 20.429907, 11.105135>,  <18.861902, 20.844639, 11.202744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.139647, 20.429907, 11.105135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.752373, 20.474499, 11.194747>,  <17.520008, 20.501255, 11.248514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.752373, 20.474499, 11.194747>,  <18.139647, 20.429907, 11.105135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.752373, 20.474499, 11.194747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234579, 0.092635, 0.967673,
		0.087124, 0.989440, -0.115839,
		-0.968185, 0.111481, 0.224031,
		17.461918, 20.507944, 11.261956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.093666, 21.013765, 11.478332>,  <18.139647, 20.429907, 11.105135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.093666, 21.013765, 11.478332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.758907, 20.820900, 11.581963>,  <17.558052, 20.705181, 11.644141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.758907, 20.820900, 11.581963>,  <18.093666, 21.013765, 11.478332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.758907, 20.820900, 11.581963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200665, 0.170104, 0.964779,
		-0.509253, 0.859407, -0.045605,
		-0.836896, -0.482165, 0.259079,
		17.507839, 20.676250, 11.659686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.838018, 21.385435, 12.003973>,  <18.093666, 21.013765, 11.478332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.838018, 21.385435, 12.003973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.630264, 21.047100, 12.052626>,  <17.505611, 20.844099, 12.081817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.630264, 21.047100, 12.052626>,  <17.838018, 21.385435, 12.003973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.630264, 21.047100, 12.052626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028421, 0.159355, 0.986812,
		-0.854068, 0.509079, -0.106806,
		-0.519385, -0.845840, 0.121631,
		17.474449, 20.793348, 12.089115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.270609, 21.528666, 12.498404>,  <17.838018, 21.385435, 12.003973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.270609, 21.528666, 12.498404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.316101, 21.131481, 12.511628>,  <17.343397, 20.893171, 12.519563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.316101, 21.131481, 12.511628>,  <17.270609, 21.528666, 12.498404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.316101, 21.131481, 12.511628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112715, 0.020166, 0.993423,
		-0.987097, -0.116709, -0.109629,
		0.113730, -0.992962, 0.033061,
		17.350220, 20.833593, 12.521546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.692953, 21.203880, 12.903815>,  <17.270609, 21.528666, 12.498404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.692953, 21.203880, 12.903815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.947247, 20.895798, 12.883326>,  <17.099823, 20.710947, 12.871032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.947247, 20.895798, 12.883326>,  <16.692953, 21.203880, 12.903815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.947247, 20.895798, 12.883326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208901, -0.235554, 0.949144,
		-0.743105, -0.592700, -0.310646,
		0.635731, -0.770209, -0.051225,
		17.137966, 20.664736, 12.867958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.295820, 20.634714, 13.220493>,  <16.692953, 21.203880, 12.903815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.295820, 20.634714, 13.220493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.691925, 20.584209, 13.243946>,  <16.929588, 20.553907, 13.258018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.691925, 20.584209, 13.243946>,  <16.295820, 20.634714, 13.220493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.691925, 20.584209, 13.243946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080865, -0.178882, 0.980542,
		-0.113313, -0.975736, -0.187350,
		0.990263, -0.126258, 0.058634,
		16.989004, 20.546331, 13.261536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.510672, 19.993704, 13.531311>,  <16.295820, 20.634714, 13.220493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.510672, 19.993704, 13.531311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.843052, 20.212654, 13.571114>,  <17.042480, 20.344025, 13.594995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.843052, 20.212654, 13.571114>,  <16.510672, 19.993704, 13.531311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.843052, 20.212654, 13.571114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016927, -0.153901, 0.987941,
		0.556091, -0.822614, -0.118618,
		0.830949, 0.547377, 0.099507,
		17.092337, 20.376867, 13.600965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.872458, 19.584578, 14.078379>,  <16.510672, 19.993704, 13.531311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.872458, 19.584578, 14.078379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.034130, 19.949867, 14.057749>,  <17.131134, 20.169041, 14.045371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.034130, 19.949867, 14.057749>,  <16.872458, 19.584578, 14.078379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.034130, 19.949867, 14.057749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097631, 0.012991, 0.995138,
		0.909454, -0.407250, -0.083909,
		0.404180, 0.913224, -0.051575,
		17.155384, 20.223835, 14.042276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.293314, 19.546989, 14.619473>,  <16.872458, 19.584578, 14.078379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.293314, 19.546989, 14.619473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.243523, 19.926731, 14.504074>,  <17.213648, 20.154575, 14.434834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.243523, 19.926731, 14.504074>,  <17.293314, 19.546989, 14.619473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.243523, 19.926731, 14.504074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095214, 0.277989, 0.955854,
		0.987644, 0.146451, 0.055788,
		-0.124477, 0.949355, -0.288498,
		17.206179, 20.211538, 14.417524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.634636, 19.875698, 15.195202>,  <17.293314, 19.546989, 14.619473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.634636, 19.875698, 15.195202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.446754, 20.177578, 15.011984>,  <17.334026, 20.358706, 14.902053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.446754, 20.177578, 15.011984>,  <17.634636, 19.875698, 15.195202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.446754, 20.177578, 15.011984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127325, 0.455504, 0.881082,
		0.873595, 0.472167, -0.117859,
		-0.469703, 0.754702, -0.458045,
		17.305843, 20.403988, 14.874571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.961430, 20.562769, 15.412399>,  <17.634636, 19.875698, 15.195202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.961430, 20.562769, 15.412399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.579586, 20.624744, 15.310642>,  <17.350479, 20.661930, 15.249588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.579586, 20.624744, 15.310642>,  <17.961430, 20.562769, 15.412399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.579586, 20.624744, 15.310642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164688, 0.437096, 0.884208,
		0.248194, 0.885969, -0.391739,
		-0.954609, 0.154940, -0.254393,
		17.293203, 20.671227, 15.234324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.874378, 21.325895, 15.519870>,  <17.961430, 20.562769, 15.412399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.874378, 21.325895, 15.519870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.512520, 21.156013, 15.505766>,  <17.295404, 21.054085, 15.497304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.512520, 21.156013, 15.505766>,  <17.874378, 21.325895, 15.519870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.512520, 21.156013, 15.505766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255885, 0.475157, 0.841872,
		-0.340794, 0.770618, -0.538524,
		-0.904645, -0.424705, -0.035259,
		17.241127, 21.028603, 15.495189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.369596, 21.812723, 15.705493>,  <17.874378, 21.325895, 15.519870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.369596, 21.812723, 15.705493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.211079, 21.458797, 15.803518>,  <17.115967, 21.246443, 15.862333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.211079, 21.458797, 15.803518>,  <17.369596, 21.812723, 15.705493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.211079, 21.458797, 15.803518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295334, 0.375583, 0.878473,
		-0.869325, 0.275761, -0.410158,
		-0.396297, -0.884813, 0.245062,
		17.092190, 21.193354, 15.877037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.756302, 21.996996, 16.114893>,  <17.369596, 21.812723, 15.705493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.756302, 21.996996, 16.114893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.802456, 21.607662, 16.194195>,  <16.830149, 21.374062, 16.241776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.802456, 21.607662, 16.194195>,  <16.756302, 21.996996, 16.114893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.802456, 21.607662, 16.194195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212959, 0.170705, 0.962033,
		-0.970224, -0.153225, -0.187584,
		0.115386, -0.973335, 0.198253,
		16.837072, 21.315662, 16.253672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.164953, 21.739702, 16.529030>,  <16.756302, 21.996996, 16.114893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.164953, 21.739702, 16.529030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.496914, 21.525547, 16.591801>,  <16.696091, 21.397055, 16.629463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.496914, 21.525547, 16.591801>,  <16.164953, 21.739702, 16.529030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.496914, 21.525547, 16.591801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070885, 0.177808, 0.981509,
		-0.553391, -0.825677, 0.109612,
		0.829899, -0.535388, 0.156926,
		16.745884, 21.364931, 16.638878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.959855, 21.441963, 17.040691>,  <16.164953, 21.739702, 16.529030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.959855, 21.441963, 17.040691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.349831, 21.364929, 17.085239>,  <16.583817, 21.318708, 17.111969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.349831, 21.364929, 17.085239>,  <15.959855, 21.441963, 17.040691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.349831, 21.364929, 17.085239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113282, 0.001102, 0.993562,
		-0.191469, -0.981280, -0.020742,
		0.974939, -0.192586, 0.111372,
		16.642313, 21.307154, 17.118650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.009583, 20.982288, 17.700207>,  <15.959855, 21.441963, 17.040691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.009583, 20.982288, 17.700207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.368725, 21.144268, 17.631077>,  <16.584211, 21.241457, 17.589600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.368725, 21.144268, 17.631077>,  <16.009583, 20.982288, 17.700207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.368725, 21.144268, 17.631077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104094, 0.186161, 0.976990,
		0.427806, -0.895187, 0.124993,
		0.897857, 0.404951, -0.172824,
		16.638083, 21.265753, 17.579229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.465195, 20.561197, 18.202900>,  <16.009583, 20.982288, 17.700207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.465195, 20.561197, 18.202900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.671875, 20.890217, 18.107876>,  <16.795883, 21.087629, 18.050861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.671875, 20.890217, 18.107876>,  <16.465195, 20.561197, 18.202900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.671875, 20.890217, 18.107876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472712, -0.042742, 0.880180,
		0.713836, -0.567087, -0.410913,
		0.516702, 0.822548, -0.237558,
		16.826885, 21.136982, 18.036608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.202217, 20.467216, 18.493183>,  <16.465195, 20.561197, 18.202900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.202217, 20.467216, 18.493183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.141850, 20.859497, 18.443468>,  <17.105629, 21.094866, 18.413639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.141850, 20.859497, 18.443468>,  <17.202217, 20.467216, 18.493183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.141850, 20.859497, 18.443468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352118, 0.170811, 0.920237,
		0.923708, 0.095117, -0.371101,
		-0.150918, 0.980702, -0.124287,
		17.096575, 21.153708, 18.406181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.863205, 20.819698, 18.638926>,  <17.202217, 20.467216, 18.493183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.863205, 20.819698, 18.638926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.561489, 21.077549, 18.688728>,  <17.380459, 21.232260, 18.718609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.561489, 21.077549, 18.688728>,  <17.863205, 20.819698, 18.638926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.561489, 21.077549, 18.688728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392693, 0.290998, 0.872417,
		0.526152, 0.706949, -0.472638,
		-0.754292, 0.644626, 0.124505,
		17.335201, 21.270937, 18.726080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.214993, 21.455727, 18.899311>,  <17.863205, 20.819698, 18.638926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.214993, 21.455727, 18.899311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.821892, 21.467701, 18.972311>,  <17.586031, 21.474886, 19.016111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.821892, 21.467701, 18.972311>,  <18.214993, 21.455727, 18.899311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.821892, 21.467701, 18.972311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180689, 0.365778, 0.912994,
		-0.039426, 0.930221, -0.364877,
		-0.982750, 0.029934, 0.182502,
		17.527067, 21.476681, 19.027061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.179361, 22.112890, 19.315331>,  <18.214993, 21.455727, 18.899311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.179361, 22.112890, 19.315331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.840405, 21.912239, 19.384954>,  <17.637030, 21.791849, 19.426729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.840405, 21.912239, 19.384954>,  <18.179361, 22.112890, 19.315331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.840405, 21.912239, 19.384954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129292, 0.123007, 0.983948,
		-0.514986, 0.856293, -0.039379,
		-0.847392, -0.501628, 0.174059,
		17.586187, 21.761751, 19.437172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.880178, 22.528286, 19.874643>,  <18.179361, 22.112890, 19.315331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.880178, 22.528286, 19.874643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.721073, 22.161293, 19.873369>,  <17.625610, 21.941097, 19.872604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.721073, 22.161293, 19.873369>,  <17.880178, 22.528286, 19.874643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.721073, 22.161293, 19.873369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172307, -0.078112, 0.981941,
		-0.901163, 0.390031, 0.189159,
		-0.397763, -0.917483, -0.003186,
		17.601744, 21.886047, 19.872414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.619783, 22.447800, 20.554985>,  <17.880178, 22.528286, 19.874643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.619783, 22.447800, 20.554985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.633377, 22.069553, 20.425583>,  <17.641533, 21.842606, 20.347942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.633377, 22.069553, 20.425583>,  <17.619783, 22.447800, 20.554985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.633377, 22.069553, 20.425583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238315, -0.306686, 0.921493,
		-0.970593, -0.108411, 0.214933,
		0.033983, -0.945617, -0.323503,
		17.643572, 21.785868, 20.328531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.138851, 22.164436, 21.079266>,  <17.619783, 22.447800, 20.554985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.138851, 22.164436, 21.079266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.370430, 21.883900, 20.912920>,  <17.509377, 21.715578, 20.813112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.370430, 21.883900, 20.912920>,  <17.138851, 22.164436, 21.079266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.370430, 21.883900, 20.912920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137809, -0.418529, 0.897687,
		-0.803635, -0.577023, -0.145655,
		0.578946, -0.701341, -0.415863,
		17.544113, 21.673498, 20.788160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.856384, 21.553209, 21.244400>,  <17.138851, 22.164436, 21.079266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.856384, 21.553209, 21.244400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.244434, 21.489704, 21.171019>,  <17.477264, 21.451601, 21.126989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.244434, 21.489704, 21.171019>,  <16.856384, 21.553209, 21.244400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.244434, 21.489704, 21.171019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091127, -0.462340, 0.882008,
		-0.224845, -0.872374, -0.434060,
		0.970124, -0.158760, -0.183452,
		17.535471, 21.442076, 21.115982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.035078, 20.884180, 21.455452>,  <16.856384, 21.553209, 21.244400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.035078, 20.884180, 21.455452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.390518, 21.067543, 21.449104>,  <17.603783, 21.177561, 21.445295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.390518, 21.067543, 21.449104>,  <17.035078, 20.884180, 21.455452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.390518, 21.067543, 21.449104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235259, -0.425793, 0.873701,
		0.393756, -0.780104, -0.486204,
		0.888600, 0.458409, -0.015868,
		17.657099, 21.205065, 21.444344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.552065, 20.368866, 21.533451>,  <17.035078, 20.884180, 21.455452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.552065, 20.368866, 21.533451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.781490, 20.690071, 21.598188>,  <17.919146, 20.882795, 21.637030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.781490, 20.690071, 21.598188>,  <17.552065, 20.368866, 21.533451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.781490, 20.690071, 21.598188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469943, -0.484386, 0.737918,
		0.670953, -0.347187, -0.655197,
		0.573564, 0.803014, 0.161842,
		17.953560, 20.930975, 21.646742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.178699, 20.091368, 21.685413>,  <17.552065, 20.368866, 21.533451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.178699, 20.091368, 21.685413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.235840, 20.465321, 21.815393>,  <18.270124, 20.689692, 21.893381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.235840, 20.465321, 21.815393>,  <18.178699, 20.091368, 21.685413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.235840, 20.465321, 21.815393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561559, -0.346912, 0.751201,
		0.815012, 0.075168, -0.574548,
		0.142851, 0.934880, 0.324949,
		18.278696, 20.745785, 21.912878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.841780, 20.102554, 21.879272>,  <18.178699, 20.091368, 21.685413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.841780, 20.102554, 21.879272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.662834, 20.405575, 22.069424>,  <18.555466, 20.587387, 22.183514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.662834, 20.405575, 22.069424>,  <18.841780, 20.102554, 21.879272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.662834, 20.405575, 22.069424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447052, -0.270948, 0.852486,
		0.774602, 0.593891, -0.217451,
		-0.447365, 0.757549, 0.475377,
		18.528625, 20.632839, 22.212036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.342958, 20.439507, 22.284651>,  <18.841780, 20.102554, 21.879272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.342958, 20.439507, 22.284651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.990978, 20.524529, 22.454596>,  <18.779791, 20.575542, 22.556562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.990978, 20.524529, 22.454596>,  <19.342958, 20.439507, 22.284651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.990978, 20.524529, 22.454596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340358, -0.341856, 0.875952,
		0.331430, 0.915399, 0.228472,
		-0.879950, 0.212554, 0.424864,
		18.726994, 20.588295, 22.582054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.455256, 20.695873, 22.893162>,  <19.342958, 20.439507, 22.284651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.455256, 20.695873, 22.893162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.071869, 20.591030, 22.938133>,  <18.841837, 20.528124, 22.965117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.071869, 20.591030, 22.938133>,  <19.455256, 20.695873, 22.893162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.071869, 20.591030, 22.938133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241681, -0.537144, 0.808125,
		-0.151424, 0.801734, 0.578181,
		-0.958468, -0.262105, 0.112428,
		18.784328, 20.512398, 22.971861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.309656, 20.783798, 23.591040>,  <19.455256, 20.695873, 22.893162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.309656, 20.783798, 23.591040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.030807, 20.525009, 23.467463>,  <18.863499, 20.369736, 23.393316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.030807, 20.525009, 23.467463>,  <19.309656, 20.783798, 23.591040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.030807, 20.525009, 23.467463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135761, -0.542237, 0.829185,
		-0.703982, 0.536100, 0.465839,
		-0.697121, -0.646974, -0.308944,
		18.821671, 20.330917, 23.374779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.021788, 20.589678, 24.223940>,  <19.309656, 20.783798, 23.591040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.021788, 20.589678, 24.223940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.925186, 20.293873, 23.972609>,  <18.867226, 20.116390, 23.821810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.925186, 20.293873, 23.972609>,  <19.021788, 20.589678, 24.223940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.925186, 20.293873, 23.972609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198870, -0.596036, 0.777941,
		-0.949804, 0.312831, -0.003122,
		-0.241504, -0.739512, -0.628329,
		18.852736, 20.072020, 23.784109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.373507, 20.340839, 24.437529>,  <19.021788, 20.589678, 24.223940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.373507, 20.340839, 24.437529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.557388, 20.051918, 24.230860>,  <18.667717, 19.878565, 24.106859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.557388, 20.051918, 24.230860>,  <18.373507, 20.340839, 24.437529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.557388, 20.051918, 24.230860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167980, -0.642009, 0.748069,
		-0.872042, -0.257098, -0.416466,
		0.459701, -0.722305, -0.516672,
		18.695299, 19.835226, 24.075859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.056412, 19.692259, 24.728212>,  <18.373507, 20.340839, 24.437529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.056412, 19.692259, 24.728212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.387203, 19.560856, 24.545704>,  <18.585678, 19.482014, 24.436199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.387203, 19.560856, 24.545704>,  <18.056412, 19.692259, 24.728212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.387203, 19.560856, 24.545704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223857, -0.552048, 0.803200,
		-0.515742, -0.766371, -0.382995,
		0.826981, -0.328508, -0.456273,
		18.635298, 19.462303, 24.408821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.998953, 18.980099, 24.876347>,  <18.056412, 19.692259, 24.728212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.998953, 18.980099, 24.876347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.377712, 19.060471, 24.775936>,  <18.604967, 19.108694, 24.715691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.377712, 19.060471, 24.775936>,  <17.998953, 18.980099, 24.876347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.377712, 19.060471, 24.775936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319865, -0.668206, 0.671705,
		-0.032771, -0.716329, -0.696992,
		0.946896, 0.200931, -0.251027,
		18.661781, 19.120750, 24.700628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.312807, 18.327017, 24.940676>,  <17.998953, 18.980099, 24.876347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.312807, 18.327017, 24.940676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.621521, 18.580830, 24.957275>,  <18.806749, 18.733116, 24.967236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.621521, 18.580830, 24.957275>,  <18.312807, 18.327017, 24.940676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.621521, 18.580830, 24.957275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363260, -0.493519, 0.790241,
		0.521914, -0.594819, -0.611389,
		0.771783, 0.634531, 0.041501,
		18.853056, 18.771189, 24.969725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.975634, 18.256397, 25.089987>,  <18.312807, 18.327017, 24.940676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.975634, 18.256397, 25.089987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.926132, 17.878777, 25.212269>,  <18.896431, 17.652205, 25.285639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.926132, 17.878777, 25.212269>,  <18.975634, 18.256397, 25.089987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.926132, 17.878777, 25.212269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150584, -0.286638, -0.946130,
		0.980821, -0.163122, -0.106686,
		-0.123754, -0.944050, 0.305704,
		18.889006, 17.595562, 25.303980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.387421, 17.828775, 24.684278>,  <18.975634, 18.256397, 25.089987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.387421, 17.828775, 24.684278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.102474, 17.587482, 24.827745>,  <18.931505, 17.442707, 24.913826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.102474, 17.587482, 24.827745>,  <19.387421, 17.828775, 24.684278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.102474, 17.587482, 24.827745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222631, -0.290429, -0.930638,
		0.665559, -0.742807, 0.072595,
		-0.712367, -0.603232, 0.358669,
		18.888763, 17.406513, 24.935347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.446014, 17.210056, 24.364769>,  <19.387421, 17.828775, 24.684278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.446014, 17.210056, 24.364769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.068943, 17.229790, 24.496782>,  <18.842699, 17.241629, 24.575991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.068943, 17.229790, 24.496782>,  <19.446014, 17.210056, 24.364769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.068943, 17.229790, 24.496782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333329, -0.092740, -0.938238,
		-0.015678, -0.994468, 0.103868,
		-0.942680, 0.049331, 0.330031,
		18.786139, 17.244589, 24.595791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.039711, 16.569998, 24.236065>,  <19.446014, 17.210056, 24.364769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.039711, 16.569998, 24.236065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.747688, 16.837490, 24.292372>,  <18.572474, 16.997986, 24.326157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.747688, 16.837490, 24.292372>,  <19.039711, 16.569998, 24.236065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.747688, 16.837490, 24.292372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283273, -0.108673, -0.952863,
		-0.621910, -0.735521, 0.268770,
		-0.730058, 0.668730, 0.140768,
		18.528671, 17.038109, 24.334602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.411047, 16.359541, 23.846926>,  <19.039711, 16.569998, 24.236065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.411047, 16.359541, 23.846926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.363117, 16.752506, 23.904200>,  <18.334360, 16.988285, 23.938564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.363117, 16.752506, 23.904200>,  <18.411047, 16.359541, 23.846926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.363117, 16.752506, 23.904200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501976, 0.064480, -0.862475,
		-0.856541, -0.175221, 0.485423,
		-0.119823, 0.982415, 0.143186,
		18.327169, 17.047232, 23.947155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.693880, 16.497683, 23.615736>,  <18.411047, 16.359541, 23.846926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.693880, 16.497683, 23.615736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.898872, 16.841137, 23.619917>,  <18.021868, 17.047209, 23.622425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.898872, 16.841137, 23.619917>,  <17.693880, 16.497683, 23.615736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.898872, 16.841137, 23.619917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381802, 0.238748, -0.892876,
		-0.769151, 0.453589, 0.450182,
		0.512479, 0.858636, 0.010451,
		18.052616, 17.098728, 23.623053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.282654, 16.855885, 23.152689>,  <17.693880, 16.497683, 23.615736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.282654, 16.855885, 23.152689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.609104, 17.084778, 23.184904>,  <17.804974, 17.222115, 23.204233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.609104, 17.084778, 23.184904>,  <17.282654, 16.855885, 23.152689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.609104, 17.084778, 23.184904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119925, 0.304049, -0.945078,
		-0.565293, 0.761645, 0.316768,
		0.816126, 0.572234, 0.080537,
		17.853943, 17.256449, 23.209064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.059246, 17.542826, 22.940390>,  <17.282654, 16.855885, 23.152689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.059246, 17.542826, 22.940390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.454922, 17.505775, 22.894917>,  <17.692327, 17.483545, 22.867632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.454922, 17.505775, 22.894917>,  <17.059246, 17.542826, 22.940390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.454922, 17.505775, 22.894917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069305, 0.387902, -0.919091,
		0.129232, 0.917035, 0.377289,
		0.989190, -0.092628, -0.113684,
		17.751678, 17.477987, 22.860811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.188444, 18.164911, 22.594534>,  <17.059246, 17.542826, 22.940390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.188444, 18.164911, 22.594534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.493881, 17.917995, 22.518770>,  <17.677143, 17.769846, 22.473312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.493881, 17.917995, 22.518770>,  <17.188444, 18.164911, 22.594534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.493881, 17.917995, 22.518770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049828, 0.348797, -0.935873,
		0.643771, 0.705189, 0.297098,
		0.763594, -0.617292, -0.189407,
		17.722960, 17.732807, 22.461948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.649382, 18.502684, 22.201612>,  <17.188444, 18.164911, 22.594534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.649382, 18.502684, 22.201612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.778290, 18.132046, 22.124088>,  <17.855635, 17.909662, 22.077574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.778290, 18.132046, 22.124088>,  <17.649382, 18.502684, 22.201612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.778290, 18.132046, 22.124088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022132, 0.197301, -0.980093,
		0.946389, 0.320145, 0.043077,
		0.322271, -0.926596, -0.193809,
		17.874971, 17.854067, 22.065947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.135538, 18.555155, 21.649139>,  <17.649382, 18.502684, 22.201612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.135538, 18.555155, 21.649139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.027241, 18.170170, 21.656748>,  <17.962263, 17.939178, 21.661312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.027241, 18.170170, 21.656748>,  <18.135538, 18.555155, 21.649139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.027241, 18.170170, 21.656748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067956, -0.000601, -0.997688,
		0.960250, -0.271409, -0.065243,
		-0.270742, -0.962464, 0.019021,
		17.946018, 17.881432, 21.662455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.566956, 18.101076, 21.151823>,  <18.135538, 18.555155, 21.649139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.566956, 18.101076, 21.151823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.215832, 17.917633, 21.207148>,  <18.005157, 17.807568, 21.240343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.215832, 17.917633, 21.207148>,  <18.566956, 18.101076, 21.151823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.215832, 17.917633, 21.207148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071932, -0.159264, -0.984612,
		0.473580, -0.874250, 0.106815,
		-0.877808, -0.458609, 0.138311,
		17.952490, 17.780050, 21.248640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629040, 17.467541, 20.805199>,  <18.566956, 18.101076, 21.151823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.629040, 17.467541, 20.805199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.241974, 17.554832, 20.855801>,  <18.009735, 17.607206, 20.886162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.241974, 17.554832, 20.855801>,  <18.629040, 17.467541, 20.805199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.241974, 17.554832, 20.855801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134816, -0.023555, -0.990591,
		-0.213196, -0.975613, 0.052214,
		-0.967663, 0.218230, 0.126506,
		17.951675, 17.620300, 20.893753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.356838, 17.119215, 20.287714>,  <18.629040, 17.467541, 20.805199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.356838, 17.119215, 20.287714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032360, 17.316574, 20.413267>,  <17.837673, 17.434990, 20.488600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032360, 17.316574, 20.413267>,  <18.356838, 17.119215, 20.287714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.032360, 17.316574, 20.413267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287808, 0.130390, -0.948770,
		-0.509049, -0.859975, 0.036233,
		-0.811194, 0.493399, 0.313883,
		17.789001, 17.464594, 20.507431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.802500, 16.906464, 19.860451>,  <18.356838, 17.119215, 20.287714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.802500, 16.906464, 19.860451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.665375, 17.254475, 20.002174>,  <17.583099, 17.463282, 20.087208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.665375, 17.254475, 20.002174>,  <17.802500, 16.906464, 19.860451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.665375, 17.254475, 20.002174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283609, 0.263711, -0.921967,
		-0.895571, -0.416545, 0.156345,
		-0.342811, 0.870027, 0.354307,
		17.562532, 17.515482, 20.108467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.076950, 16.968508, 19.742558>,  <17.802500, 16.906464, 19.860451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.076950, 16.968508, 19.742558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.214943, 17.342640, 19.773903>,  <17.297739, 17.567120, 19.792709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.214943, 17.342640, 19.773903>,  <17.076950, 16.968508, 19.742558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.214943, 17.342640, 19.773903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430355, 0.231819, -0.872385,
		-0.834135, 0.267234, 0.482498,
		0.344983, 0.935332, 0.078363,
		17.318438, 17.623240, 19.797411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514683, 17.402750, 19.643591>,  <17.076950, 16.968508, 19.742558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.514683, 17.402750, 19.643591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.845245, 17.612885, 19.562527>,  <17.043583, 17.738966, 19.513889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.845245, 17.612885, 19.562527>,  <16.514683, 17.402750, 19.643591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.845245, 17.612885, 19.562527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413221, 0.321341, -0.852050,
		-0.382492, 0.787883, 0.482639,
		0.826407, 0.525338, -0.202659,
		17.093168, 17.770487, 19.501730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.329269, 17.787567, 19.207382>,  <16.514683, 17.402750, 19.643591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.329269, 17.787567, 19.207382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.694927, 17.943527, 19.162994>,  <16.914322, 18.037104, 19.136362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.694927, 17.943527, 19.162994>,  <16.329269, 17.787567, 19.207382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.694927, 17.943527, 19.162994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288141, 0.432385, -0.854411,
		-0.285153, 0.813031, 0.507609,
		0.914146, 0.389901, -0.110972,
		16.969172, 18.060497, 19.129704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.246794, 18.506054, 19.108301>,  <16.329269, 17.787567, 19.207382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.246794, 18.506054, 19.108301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.598984, 18.412704, 18.943232>,  <16.810297, 18.356695, 18.844191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.598984, 18.412704, 18.943232>,  <16.246794, 18.506054, 19.108301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.598984, 18.412704, 18.943232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308488, 0.378944, -0.872488,
		0.359998, 0.895509, 0.261658,
		0.880475, -0.233376, -0.412673,
		16.863127, 18.342691, 18.819429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.647673, 19.099934, 18.878796>,  <16.246794, 18.506054, 19.108301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.647673, 19.099934, 18.878796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.759060, 18.779484, 18.666889>,  <16.825893, 18.587214, 18.539745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.759060, 18.779484, 18.666889>,  <16.647673, 19.099934, 18.878796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.759060, 18.779484, 18.666889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262372, 0.467151, -0.844352,
		0.923913, 0.374122, -0.080106,
		0.278469, -0.801126, -0.529766,
		16.842600, 18.539146, 18.507959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.900179, 19.415495, 18.325060>,  <16.647673, 19.099934, 18.878796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.900179, 19.415495, 18.325060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.834187, 19.036652, 18.214956>,  <16.794590, 18.809345, 18.148895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.834187, 19.036652, 18.214956>,  <16.900179, 19.415495, 18.325060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.834187, 19.036652, 18.214956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200675, 0.305478, -0.930813,
		0.965666, -0.098330, -0.240460,
		-0.164982, -0.947108, -0.275257,
		16.784693, 18.752520, 18.132380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.962032, 19.481064, 17.565619>,  <16.900179, 19.415495, 18.325060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.962032, 19.481064, 17.565619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.809566, 19.114086, 17.611242>,  <16.718086, 18.893900, 17.638617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.809566, 19.114086, 17.611242>,  <16.962032, 19.481064, 17.565619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.809566, 19.114086, 17.611242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418688, 0.061306, -0.906058,
		0.824265, -0.393115, -0.407490,
		-0.381166, -0.917444, 0.114060,
		16.695217, 18.838854, 17.645460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.272915, 19.097523, 17.019022>,  <16.962032, 19.481064, 17.565619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.272915, 19.097523, 17.019022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.924992, 18.937519, 17.134554>,  <16.716238, 18.841516, 17.203873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.924992, 18.937519, 17.134554>,  <17.272915, 19.097523, 17.019022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.924992, 18.937519, 17.134554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362043, 0.119761, -0.924436,
		0.335195, -0.908652, -0.248990,
		-0.869810, -0.400011, 0.288828,
		16.664049, 18.817516, 17.221203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.086441, 18.669117, 16.492586>,  <17.272915, 19.097523, 17.019022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.086441, 18.669117, 16.492586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.737476, 18.720566, 16.681204>,  <16.528097, 18.751434, 16.794374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.737476, 18.720566, 16.681204>,  <17.086441, 18.669117, 16.492586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.737476, 18.720566, 16.681204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484408, -0.098897, -0.869235,
		-0.065155, -0.986752, 0.148577,
		-0.872413, 0.128607, 0.471547,
		16.475752, 18.759151, 16.822668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.589367, 18.125406, 16.248215>,  <17.086441, 18.669117, 16.492586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.589367, 18.125406, 16.248215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.366543, 18.425831, 16.389973>,  <16.232849, 18.606085, 16.475027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.366543, 18.425831, 16.389973>,  <16.589367, 18.125406, 16.248215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.366543, 18.425831, 16.389973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580175, -0.046619, -0.813157,
		-0.594209, -0.658585, 0.461716,
		-0.557058, 0.751060, 0.354393,
		16.199425, 18.651150, 16.496290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.847667, 17.915407, 16.236980>,  <16.589367, 18.125406, 16.248215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.847667, 17.915407, 16.236980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.840123, 18.314312, 16.265585>,  <15.835597, 18.553656, 16.282747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.840123, 18.314312, 16.265585>,  <15.847667, 17.915407, 16.236980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.840123, 18.314312, 16.265585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614861, 0.044830, -0.787360,
		-0.788410, -0.058817, 0.612331,
		-0.018860, 0.997261, 0.071509,
		15.834465, 18.613491, 16.287037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.186705, 18.187902, 16.368980>,  <15.847667, 17.915407, 16.236980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.186705, 18.187902, 16.368980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.354737, 18.490734, 16.168835>,  <15.455557, 18.672434, 16.048748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.354737, 18.490734, 16.168835>,  <15.186705, 18.187902, 16.368980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.354737, 18.490734, 16.168835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748953, -0.022119, -0.662254,
		-0.512446, 0.652949, 0.557724,
		0.420082, 0.757078, -0.500363,
		15.480762, 18.717857, 16.018726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.721976, 18.718933, 16.195646>,  <15.186705, 18.187902, 16.368980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.721976, 18.718933, 16.195646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.021155, 18.774090, 15.935936>,  <15.200663, 18.807184, 15.780109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.021155, 18.774090, 15.935936>,  <14.721976, 18.718933, 16.195646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.021155, 18.774090, 15.935936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656785, 0.012344, -0.753977,
		-0.095954, 0.990370, 0.099800,
		0.747948, 0.137894, -0.649276,
		15.245540, 18.815458, 15.741153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.381948, 19.062717, 15.658849>,  <14.721976, 18.718933, 16.195646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.381948, 19.062717, 15.658849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.726686, 18.938622, 15.498363>,  <14.933529, 18.864164, 15.402072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.726686, 18.938622, 15.498363>,  <14.381948, 19.062717, 15.658849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.726686, 18.938622, 15.498363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458313, -0.137643, -0.878068,
		0.217189, 0.940640, -0.260815,
		0.861845, -0.310242, -0.401214,
		14.985239, 18.845549, 15.377999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.386156, 19.389160, 15.121256>,  <14.381948, 19.062717, 15.658849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.386156, 19.389160, 15.121256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.647178, 19.094494, 15.050268>,  <14.803791, 18.917694, 15.007675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.647178, 19.094494, 15.050268>,  <14.386156, 19.389160, 15.121256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.647178, 19.094494, 15.050268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351429, -0.086731, -0.932189,
		0.671320, 0.670671, -0.315483,
		0.652554, -0.736667, -0.177469,
		14.842944, 18.873493, 14.997027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.797825, 19.563822, 14.523401>,  <14.386156, 19.389160, 15.121256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.797825, 19.563822, 14.523401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.802943, 19.168159, 14.581921>,  <14.806014, 18.930761, 14.617032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.802943, 19.168159, 14.581921>,  <14.797825, 19.563822, 14.523401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.802943, 19.168159, 14.581921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092013, -0.146854, -0.984869,
		0.995676, -0.000859, -0.092895,
		0.012796, -0.989158, 0.146298,
		14.806782, 18.871412, 14.625810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.477377, 19.306400, 14.107291>,  <14.797825, 19.563822, 14.523401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.477377, 19.306400, 14.107291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.210134, 19.015095, 14.168299>,  <15.049788, 18.840311, 14.204903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.210134, 19.015095, 14.168299>,  <15.477377, 19.306400, 14.107291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.210134, 19.015095, 14.168299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019900, -0.222396, -0.974753,
		0.743798, -0.648206, 0.163077,
		-0.668109, -0.728265, 0.152518,
		15.009701, 18.796616, 14.214054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.648724, 18.861811, 13.535782>,  <15.477377, 19.306400, 14.107291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.648724, 18.861811, 13.535782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.291806, 18.716503, 13.643000>,  <15.077656, 18.629318, 13.707330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.291806, 18.716503, 13.643000>,  <15.648724, 18.861811, 13.535782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.291806, 18.716503, 13.643000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230423, -0.144107, -0.962361,
		0.388224, -0.920472, 0.044880,
		-0.892294, -0.363270, 0.268043,
		15.024118, 18.607521, 13.723413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.624905, 18.218063, 13.244656>,  <15.648724, 18.861811, 13.535782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.624905, 18.218063, 13.244656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.245461, 18.325130, 13.312178>,  <15.017796, 18.389370, 13.352691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.245461, 18.325130, 13.312178>,  <15.624905, 18.218063, 13.244656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.245461, 18.325130, 13.312178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230103, -0.217241, -0.948609,
		-0.217241, -0.938702, 0.267668,
		0.948609, -0.267668, -0.168805,
		14.960878, 18.405430, 13.362819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.220365, 17.641266, 12.989872>,  <15.624905, 18.218063, 13.244656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.220365, 17.641266, 12.989872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.986003, 17.965405, 12.992868>,  <14.845387, 18.159887, 12.994666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.986003, 17.965405, 12.992868>,  <15.220365, 17.641266, 12.989872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.986003, 17.965405, 12.992868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224636, -0.153523, -0.962273,
		-0.778625, -0.565481, 0.271982,
		-0.585903, 0.810347, 0.007490,
		14.810232, 18.208508, 12.995115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.555947, 17.457853, 12.652772>,  <15.220365, 17.641266, 12.989872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.555947, 17.457853, 12.652772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.632220, 17.849308, 12.622015>,  <14.677984, 18.084181, 12.603560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.632220, 17.849308, 12.622015>,  <14.555947, 17.457853, 12.652772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.632220, 17.849308, 12.622015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194692, -0.039072, -0.980086,
		-0.962151, 0.201855, 0.183083,
		0.190682, 0.978636, -0.076892,
		14.689425, 18.142899, 12.598948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.981797, 17.656359, 12.268752>,  <14.555947, 17.457853, 12.652772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.981797, 17.656359, 12.268752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.215558, 17.980225, 12.247153>,  <14.355814, 18.174545, 12.234194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.215558, 17.980225, 12.247153>,  <13.981797, 17.656359, 12.268752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.215558, 17.980225, 12.247153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391381, 0.222948, -0.892813,
		-0.710842, 0.542895, 0.447179,
		0.584401, 0.809666, -0.053998,
		14.390879, 18.223125, 12.230954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.667402, 18.143494, 11.799298>,  <13.981797, 17.656359, 12.268752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.667402, 18.143494, 11.799298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.017222, 18.337410, 11.794548>,  <14.227115, 18.453760, 11.791698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.017222, 18.337410, 11.794548>,  <13.667402, 18.143494, 11.799298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.017222, 18.337410, 11.794548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231888, 0.396563, -0.888238,
		-0.425898, 0.779563, 0.459231,
		0.874551, 0.484789, -0.011876,
		14.279588, 18.482847, 11.790985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.490675, 18.884724, 11.644996>,  <13.667402, 18.143494, 11.799298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.490675, 18.884724, 11.644996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.864718, 18.804630, 11.528048>,  <14.089145, 18.756575, 11.457879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.864718, 18.804630, 11.528048>,  <13.490675, 18.884724, 11.644996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.864718, 18.804630, 11.528048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178230, 0.447348, -0.876421,
		0.306280, 0.871657, 0.382631,
		0.935108, -0.200234, -0.292369,
		14.145250, 18.744560, 11.440337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.801903, 19.505442, 11.537407>,  <13.490675, 18.884724, 11.644996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.801903, 19.505442, 11.537407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.961287, 19.204281, 11.327886>,  <14.056918, 19.023584, 11.202172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.961287, 19.204281, 11.327886>,  <13.801903, 19.505442, 11.537407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.961287, 19.204281, 11.327886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335374, 0.411949, -0.847244,
		0.853670, 0.513264, -0.088357,
		0.398461, -0.752900, -0.523804,
		14.080826, 18.978411, 11.170745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.032537, 19.789177, 10.906016>,  <13.801903, 19.505442, 11.537407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.032537, 19.789177, 10.906016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.981956, 19.397854, 10.840377>,  <13.951607, 19.163061, 10.800993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.981956, 19.397854, 10.840377>,  <14.032537, 19.789177, 10.906016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.981956, 19.397854, 10.840377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371863, 0.200113, -0.906462,
		0.919635, -0.053602, -0.389100,
		-0.126452, -0.978306, -0.164098,
		13.944020, 19.104362, 10.791147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.347480, 19.487268, 10.259584>,  <14.032537, 19.789177, 10.906016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.347480, 19.487268, 10.259584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.001363, 19.305046, 10.343239>,  <13.793693, 19.195713, 10.393432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.001363, 19.305046, 10.343239>,  <14.347480, 19.487268, 10.259584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.001363, 19.305046, 10.343239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398331, 0.371619, -0.838589,
		0.304304, -0.808931, -0.503021,
		-0.865293, -0.455555, 0.209137,
		13.741776, 19.168379, 10.405980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.050955, 19.021198, 9.664380>,  <14.347480, 19.487268, 10.259584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.050955, 19.021198, 9.664380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.754556, 19.163147, 9.892412>,  <13.576716, 19.248316, 10.029231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.754556, 19.163147, 9.892412>,  <14.050955, 19.021198, 9.664380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.754556, 19.163147, 9.892412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462610, 0.345587, -0.816432,
		-0.486739, -0.868699, -0.091912,
		-0.740997, 0.354871, 0.570080,
		13.532256, 19.269608, 10.063436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.332898, 18.637461, 9.699234>,  <14.050955, 19.021198, 9.664380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.332898, 18.637461, 9.699234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.349898, 19.036259, 9.725127>,  <13.360098, 19.275537, 9.740664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.349898, 19.036259, 9.725127>,  <13.332898, 18.637461, 9.699234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.349898, 19.036259, 9.725127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370054, 0.075892, -0.925905,
		-0.928037, 0.015396, 0.372168,
		0.042500, 0.996997, 0.064734,
		13.362648, 19.335358, 9.744547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.605371, 19.088133, 9.742244>,  <13.332898, 18.637461, 9.699234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.605371, 19.088133, 9.742244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.905591, 19.286629, 9.567698>,  <13.085724, 19.405727, 9.462970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.905591, 19.286629, 9.567698>,  <12.605371, 19.088133, 9.742244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.905591, 19.286629, 9.567698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505479, 0.005809, -0.862819,
		-0.425632, 0.868165, 0.255200,
		0.750552, 0.496242, -0.436367,
		13.130756, 19.435501, 9.436788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.430412, 19.827955, 9.504116>,  <12.605371, 19.088133, 9.742244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.430412, 19.827955, 9.504116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.698901, 19.654053, 9.263968>,  <12.859994, 19.549711, 9.119878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.698901, 19.654053, 9.263968>,  <12.430412, 19.827955, 9.504116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.698901, 19.654053, 9.263968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581795, 0.192890, -0.790132,
		0.459322, 0.879647, -0.123468,
		0.671222, -0.434758, -0.600372,
		12.900268, 19.523624, 9.083856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.674925, 20.205036, 8.974203>,  <12.430412, 19.827955, 9.504116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.674925, 20.205036, 8.974203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.672805, 19.820206, 8.865111>,  <12.671533, 19.589308, 8.799657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.672805, 19.820206, 8.865111>,  <12.674925, 20.205036, 8.974203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.672805, 19.820206, 8.865111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554426, 0.229802, -0.799877,
		0.832216, 0.146969, -0.534618,
		-0.005299, -0.962077, -0.272729,
		12.671215, 19.531582, 8.783293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.711766, 20.437639, 9.714891>,  <12.674925, 20.205036, 8.974203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.711766, 20.437639, 9.714891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.528539, 20.792763, 9.697159>,  <12.418602, 21.005836, 9.686520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.528539, 20.792763, 9.697159>,  <12.711766, 20.437639, 9.714891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.528539, 20.792763, 9.697159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348561, -0.225271, -0.909812,
		-0.817727, -0.401305, 0.412645,
		-0.458069, 0.887810, -0.044331,
		12.391118, 21.059105, 9.683860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.973667, 20.493986, 9.797522>,  <12.711766, 20.437639, 9.714891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.973667, 20.493986, 9.797522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.614606, 20.607319, 9.932543>,  <11.399169, 20.675318, 10.013556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.614606, 20.607319, 9.932543>,  <11.973667, 20.493986, 9.797522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.614606, 20.607319, 9.932543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128368, 0.900832, -0.414758,
		-0.421593, -0.328978, -0.845005,
		-0.897653, 0.283331, 0.337554,
		11.345310, 20.692318, 10.033809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.425632, 20.837585, 9.286551>,  <11.973667, 20.493986, 9.797522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.425632, 20.837585, 9.286551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.421863, 20.993603, 9.654851>,  <11.419600, 21.087214, 9.875831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.421863, 20.993603, 9.654851>,  <11.425632, 20.837585, 9.286551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.421863, 20.993603, 9.654851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060212, 0.919339, -0.388831,
		-0.998141, 0.051776, -0.032149,
		-0.009424, 0.390044, 0.920748,
		11.419036, 21.110617, 9.931075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.859273, 21.287626, 9.459496>,  <11.425632, 20.837585, 9.286551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.859273, 21.287626, 9.459496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.214175, 21.375507, 9.621733>,  <11.427116, 21.428236, 9.719075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.214175, 21.375507, 9.621733>,  <10.859273, 21.287626, 9.459496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.214175, 21.375507, 9.621733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111547, 0.955382, -0.273500,
		-0.447586, 0.197422, 0.872176,
		0.887256, 0.219704, 0.405594,
		11.480352, 21.441418, 9.743411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.716567, 21.842876, 9.756870>,  <10.859273, 21.287626, 9.459496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.716567, 21.842876, 9.756870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.115214, 21.874287, 9.747183>,  <11.354403, 21.893133, 9.741370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.115214, 21.874287, 9.747183>,  <10.716567, 21.842876, 9.756870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.115214, 21.874287, 9.747183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081724, 0.977976, -0.192050,
		0.008605, 0.193380, 0.981086,
		0.996618, 0.078526, -0.024219,
		11.414200, 21.897844, 9.739917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.901664, 22.282740, 10.233833>,  <10.716567, 21.842876, 9.756870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.901664, 22.282740, 10.233833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.205293, 22.289665, 9.973523>,  <11.387470, 22.293819, 9.817337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.205293, 22.289665, 9.973523>,  <10.901664, 22.282740, 10.233833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.205293, 22.289665, 9.973523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102158, 0.990429, -0.092810,
		0.642940, 0.136931, 0.753577,
		0.759073, 0.017313, -0.650775,
		11.433015, 22.294859, 9.778291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.751554, 22.461950, 10.883604>,  <10.901664, 22.282740, 10.233833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.751554, 22.461950, 10.883604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.357741, 22.530327, 10.868252>,  <10.121453, 22.571352, 10.859040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.357741, 22.530327, 10.868252>,  <10.751554, 22.461950, 10.883604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.357741, 22.530327, 10.868252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166374, -0.980885, -0.100920,
		-0.054899, -0.092974, 0.994154,
		-0.984533, 0.170942, -0.038381,
		10.062382, 22.581610, 10.856737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.525318, 23.193731, 10.693092>,  <10.751554, 22.461950, 10.883604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.525318, 23.193731, 10.693092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.592799, 23.433800, 11.005844>,  <10.633288, 23.577841, 11.193496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.592799, 23.433800, 11.005844>,  <10.525318, 23.193731, 10.693092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.592799, 23.433800, 11.005844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673776, 0.649197, -0.352944,
		-0.719420, -0.467269, 0.513901,
		0.168703, 0.600169, 0.781880,
		10.643410, 23.613850, 11.240408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.947486, 23.407276, 11.153859>,  <10.525318, 23.193731, 10.693092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.947486, 23.407276, 11.153859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.235307, 23.684731, 11.140520>,  <10.407999, 23.851204, 11.132517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.235307, 23.684731, 11.140520>,  <9.947486, 23.407276, 11.153859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.235307, 23.684731, 11.140520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690285, 0.709180, -0.143423,
		-0.075834, 0.126220, 0.989100,
		0.719552, 0.693637, -0.033348,
		10.451173, 23.892822, 11.130516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.865734, 24.092747, 11.631528>,  <9.947486, 23.407276, 11.153859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.865734, 24.092747, 11.631528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.071757, 24.200626, 11.306080>,  <10.195372, 24.265354, 11.110811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.071757, 24.200626, 11.306080>,  <9.865734, 24.092747, 11.631528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.071757, 24.200626, 11.306080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613549, 0.778843, -0.130234,
		0.598559, 0.566273, 0.566624,
		0.515059, 0.269699, -0.813619,
		10.226275, 24.281536, 11.061994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.978998, 24.790222, 11.629589>,  <9.865734, 24.092747, 11.631528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.978998, 24.790222, 11.629589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.938342, 24.697819, 11.242537>,  <9.913949, 24.642376, 11.010306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.938342, 24.697819, 11.242537>,  <9.978998, 24.790222, 11.629589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.938342, 24.697819, 11.242537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757218, 0.648801, -0.075355,
		0.645206, 0.725047, -0.240866,
		-0.101639, -0.231007, -0.967629,
		9.907850, 24.628515, 10.952249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.019468, 25.428566, 11.196543>,  <9.978998, 24.790222, 11.629589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.019468, 25.428566, 11.196543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.787721, 25.195820, 10.968240>,  <9.648672, 25.056171, 10.831258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.787721, 25.195820, 10.968240>,  <10.019468, 25.428566, 11.196543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.787721, 25.195820, 10.968240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726020, 0.686681, 0.036929,
		0.370440, 0.435776, -0.820288,
		-0.579369, -0.581866, -0.570757,
		9.613910, 25.021259, 10.797012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.687801, 25.761568, 10.645091>,  <10.019468, 25.428566, 11.196543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.687801, 25.761568, 10.645091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.425134, 25.465000, 10.700350>,  <9.267533, 25.287060, 10.733505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.425134, 25.465000, 10.700350>,  <9.687801, 25.761568, 10.645091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.425134, 25.465000, 10.700350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749163, 0.662356, -0.006295,
		-0.086836, -0.107629, -0.990392,
		-0.656669, -0.741418, 0.138148,
		9.228133, 25.242575, 10.741795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.257853, 25.645321, 9.944487>,  <9.687801, 25.761568, 10.645091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.257853, 25.645321, 9.944487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.144935, 25.595444, 10.324963>,  <9.077184, 25.565517, 10.553248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.144935, 25.595444, 10.324963>,  <9.257853, 25.645321, 9.944487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.144935, 25.595444, 10.324963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681559, 0.723841, -0.107383,
		-0.675121, -0.678605, -0.289321,
		-0.282294, -0.124693, 0.951190,
		9.060246, 25.558035, 10.610319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.402502, 25.350767, 9.315858>,  <9.257853, 25.645321, 9.944487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.402502, 25.350767, 9.315858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.599196, 25.640404, 9.122411>,  <9.717213, 25.814186, 9.006343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.599196, 25.640404, 9.122411>,  <9.402502, 25.350767, 9.315858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.599196, 25.640404, 9.122411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869948, -0.384788, 0.308430,
		0.037242, -0.572388, -0.819137,
		0.491736, 0.724093, -0.483617,
		9.746717, 25.857632, 8.977325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.297776, 25.830563, 8.655136>,  <9.402502, 25.350767, 9.315858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.297776, 25.830563, 8.655136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.271159, 25.889919, 9.049811>,  <9.255189, 25.925533, 9.286616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.271159, 25.889919, 9.049811>,  <9.297776, 25.830563, 8.655136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.271159, 25.889919, 9.049811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368238, 0.915419, -0.162509,
		-0.927347, -0.374149, -0.006268,
		-0.066541, 0.148394, 0.986687,
		9.251197, 25.934437, 9.345818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.608400, 26.152744, 8.784164>,  <9.297776, 25.830563, 8.655136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.608400, 26.152744, 8.784164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.874490, 26.234726, 9.071350>,  <9.034143, 26.283915, 9.243661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.874490, 26.234726, 9.071350>,  <8.608400, 26.152744, 8.784164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.874490, 26.234726, 9.071350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403616, 0.907690, 0.114856,
		-0.628148, -0.366187, 0.686539,
		0.665224, 0.204952, 0.717963,
		9.074057, 26.296211, 9.286739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.058864, 25.731602, 8.971770>,  <8.608400, 26.152744, 8.784164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.058864, 25.731602, 8.971770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.719827, 25.801315, 8.771286>,  <7.516405, 25.843143, 8.650995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.719827, 25.801315, 8.771286>,  <8.058864, 25.731602, 8.971770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.719827, 25.801315, 8.771286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496925, 0.592029, -0.634481,
		0.186150, -0.786846, -0.588407,
		-0.847593, 0.174285, -0.501210,
		7.465549, 25.853601, 8.620923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.051769, 25.460569, 8.233315>,  <8.058864, 25.731602, 8.971770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.051769, 25.460569, 8.233315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.822978, 25.785057, 8.281913>,  <7.685703, 25.979750, 8.311071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.822978, 25.785057, 8.281913>,  <8.051769, 25.460569, 8.233315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.822978, 25.785057, 8.281913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624966, 0.526920, -0.575998,
		-0.531279, -0.253529, -0.808372,
		-0.571979, 0.811220, 0.121494,
		7.651384, 26.028423, 8.318361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.654052, 25.703085, 7.688427>,  <8.051769, 25.460569, 8.233315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.654052, 25.703085, 7.688427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.733260, 26.046707, 7.877239>,  <7.780785, 26.252880, 7.990527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.733260, 26.046707, 7.877239>,  <7.654052, 25.703085, 7.688427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.733260, 26.046707, 7.877239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533603, 0.309480, -0.787077,
		-0.822226, 0.407735, -0.397110,
		0.198021, 0.859055, 0.472031,
		7.792666, 26.304424, 8.018848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.472173, 25.367579, 6.910684>,  <7.654052, 25.703085, 7.688427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.472173, 25.367579, 6.910684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.306096, 25.252998, 7.256067>,  <7.206450, 25.184250, 7.463297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.306096, 25.252998, 7.256067>,  <7.472173, 25.367579, 6.910684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.306096, 25.252998, 7.256067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579282, -0.815087, 0.008144,
		0.701461, 0.503567, 0.504354,
		-0.415193, -0.286450, 0.863459,
		7.181538, 25.167063, 7.515105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.099819, 25.144878, 7.387767>,  <7.472173, 25.367579, 6.910684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.099819, 25.144878, 7.387767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.753068, 24.965458, 7.474785>,  <7.545017, 24.857805, 7.526995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.753068, 24.965458, 7.474785>,  <8.099819, 25.144878, 7.387767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.753068, 24.965458, 7.474785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468038, -0.882543, 0.045356,
		0.171647, 0.141137, 0.974996,
		-0.866878, -0.448551, 0.217543,
		7.493005, 24.830893, 7.540048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.325773, 24.626654, 7.799448>,  <8.099819, 25.144878, 7.387767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.325773, 24.626654, 7.799448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.971450, 24.533909, 7.638658>,  <7.758856, 24.478262, 7.542183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.971450, 24.533909, 7.638658>,  <8.325773, 24.626654, 7.799448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.971450, 24.533909, 7.638658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272175, -0.961178, -0.045356,
		-0.375853, -0.149584, 0.914527,
		-0.885808, -0.231864, -0.401975,
		7.705708, 24.464350, 7.518065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.006476, 24.122768, 8.231780>,  <8.325773, 24.626654, 7.799448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.006476, 24.122768, 8.231780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.931094, 24.121082, 7.838951>,  <7.885865, 24.120070, 7.603254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.931094, 24.121082, 7.838951>,  <8.006476, 24.122768, 8.231780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.931094, 24.121082, 7.838951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574200, -0.811732, -0.106701,
		-0.796730, -0.584014, 0.155397,
		-0.188455, -0.004217, -0.982073,
		7.874557, 24.119818, 7.544329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.271530, 23.484468, 7.966959>,  <8.006476, 24.122768, 8.231780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.271530, 23.484468, 7.966959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.541772, 23.232048, 8.119449>,  <8.703917, 23.080595, 8.210943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.541772, 23.232048, 8.119449>,  <8.271530, 23.484468, 7.966959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.541772, 23.232048, 8.119449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406155, -0.112975, -0.906794,
		0.615302, 0.767470, 0.179979,
		0.675604, -0.631051, 0.381226,
		8.744453, 23.042732, 8.233816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.939135, 23.604548, 7.680683>,  <8.271530, 23.484468, 7.966959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.939135, 23.604548, 7.680683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.977542, 23.227367, 7.808195>,  <9.000587, 23.001059, 7.884703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.977542, 23.227367, 7.808195>,  <8.939135, 23.604548, 7.680683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.977542, 23.227367, 7.808195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669098, -0.175965, -0.722042,
		0.736945, 0.282625, 0.614031,
		0.096019, -0.942952, 0.318781,
		9.006348, 22.944481, 7.903829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.039922, 24.151148, 7.223548>,  <8.939135, 23.604548, 7.680683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.039922, 24.151148, 7.223548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.769187, 23.945473, 7.012835>,  <8.606746, 23.822067, 6.886406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.769187, 23.945473, 7.012835>,  <9.039922, 24.151148, 7.223548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.769187, 23.945473, 7.012835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360966, 0.391847, -0.846262,
		0.641556, -0.762933, -0.079613,
		-0.676838, -0.514187, -0.526785,
		8.566135, 23.791216, 6.854799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.302060, 23.602852, 6.695355>,  <9.039922, 24.151148, 7.223548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.302060, 23.602852, 6.695355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.951034, 23.745838, 6.567547>,  <8.740417, 23.831631, 6.490862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.951034, 23.745838, 6.567547>,  <9.302060, 23.602852, 6.695355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.951034, 23.745838, 6.567547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421228, 0.256525, -0.869920,
		-0.229002, -0.898005, -0.375693,
		-0.877568, 0.357466, -0.319520,
		8.687763, 23.853079, 6.471691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<21.911015, 17.206760, 18.762995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.058857, 17.570812, 18.837887>,  <22.147562, 17.789244, 18.882822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.058857, 17.570812, 18.837887>,  <21.911015, 17.206760, 18.762995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.058857, 17.570812, 18.837887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047205, 0.219632, -0.974440,
		-0.927989, 0.351321, 0.124140,
		0.369606, 0.910129, 0.187232,
		22.169739, 17.843851, 18.894056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.434732, 17.620684, 18.403168>,  <21.911015, 17.206760, 18.762995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.434732, 17.620684, 18.403168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.758480, 17.839485, 18.488688>,  <21.952728, 17.970766, 18.539999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.758480, 17.839485, 18.488688>,  <21.434732, 17.620684, 18.403168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.758480, 17.839485, 18.488688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001348, 0.365770, -0.930704,
		-0.587300, 0.752994, 0.296780,
		0.809368, 0.547003, 0.213802,
		22.001291, 18.003586, 18.552828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.244207, 18.257486, 18.119371>,  <21.434732, 17.620684, 18.403168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.244207, 18.257486, 18.119371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.637478, 18.186340, 18.136015>,  <21.873440, 18.143652, 18.146002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.637478, 18.186340, 18.136015>,  <21.244207, 18.257486, 18.119371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.637478, 18.186340, 18.136015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086543, 0.252949, -0.963601,
		0.160867, 0.950989, 0.264086,
		0.983174, -0.177867, 0.041611,
		21.932430, 18.132980, 18.148499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.594574, 18.770741, 17.818913>,  <21.244207, 18.257486, 18.119371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.594574, 18.770741, 17.818913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.895569, 18.507450, 17.809952>,  <22.076166, 18.349476, 17.804575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.895569, 18.507450, 17.809952>,  <21.594574, 18.770741, 17.818913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.895569, 18.507450, 17.809952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183234, 0.241906, -0.952841,
		0.632604, 0.712896, 0.302641,
		0.752487, -0.658226, -0.022404,
		22.121315, 18.309982, 17.803230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.217819, 19.154690, 17.425102>,  <21.594574, 18.770741, 17.818913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.217819, 19.154690, 17.425102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.265820, 18.757580, 17.425028>,  <22.294619, 18.519314, 17.424982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.265820, 18.757580, 17.425028>,  <22.217819, 19.154690, 17.425102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.265820, 18.757580, 17.425028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025281, 0.003244, -0.999675,
		0.992452, 0.119955, 0.025487,
		0.119999, -0.992774, -0.000187,
		22.301819, 18.459747, 17.424973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.784962, 19.020279, 17.085236>,  <22.217819, 19.154690, 17.425102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.784962, 19.020279, 17.085236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.561218, 18.689442, 17.063190>,  <22.426971, 18.490940, 17.049963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.561218, 18.689442, 17.063190>,  <22.784962, 19.020279, 17.085236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.561218, 18.689442, 17.063190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062964, 0.023904, -0.997730,
		0.826531, -0.561560, 0.038706,
		-0.559359, -0.827091, -0.055115,
		22.393410, 18.441315, 17.046656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.956032, 18.687887, 16.364588>,  <22.784962, 19.020279, 17.085236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.956032, 18.687887, 16.364588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.617554, 18.503895, 16.472197>,  <22.414467, 18.393499, 16.536762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.617554, 18.503895, 16.472197>,  <22.956032, 18.687887, 16.364588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.617554, 18.503895, 16.472197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408940, 0.236872, -0.881283,
		0.341649, -0.855751, -0.388544,
		-0.846194, -0.459981, 0.269023,
		22.363695, 18.365900, 16.552904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.659296, 18.182999, 15.764594>,  <22.956032, 18.687887, 16.364588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.659296, 18.182999, 15.764594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.328548, 18.245987, 15.980553>,  <22.130100, 18.283779, 16.110128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.328548, 18.245987, 15.980553>,  <22.659296, 18.182999, 15.764594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.328548, 18.245987, 15.980553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533095, 0.086338, -0.841638,
		-0.179148, -0.983742, 0.012557,
		-0.826871, 0.157471, 0.539896,
		22.080486, 18.293228, 16.142521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.138525, 17.693611, 15.487063>,  <22.659296, 18.182999, 15.764594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.138525, 17.693611, 15.487063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.954800, 17.991695, 15.680429>,  <21.844564, 18.170546, 15.796449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.954800, 17.991695, 15.680429>,  <22.138525, 17.693611, 15.487063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.954800, 17.991695, 15.680429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550973, 0.187860, -0.813104,
		-0.696749, -0.639819, 0.324304,
		-0.459315, 0.745212, 0.483414,
		21.817005, 18.215260, 15.825454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.524017, 17.603151, 15.298841>,  <22.138525, 17.693611, 15.487063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.524017, 17.603151, 15.298841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.534367, 17.982166, 15.426277>,  <21.540577, 18.209576, 15.502739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.534367, 17.982166, 15.426277>,  <21.524017, 17.603151, 15.298841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.534367, 17.982166, 15.426277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669984, 0.252966, -0.697947,
		-0.741924, -0.195394, 0.641381,
		0.025873, 0.947539, 0.318592,
		21.542128, 18.266428, 15.521854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.849688, 17.820427, 15.595938>,  <21.524017, 17.603151, 15.298841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.849688, 17.820427, 15.595938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.060627, 18.132603, 15.461586>,  <21.187191, 18.319908, 15.380975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.060627, 18.132603, 15.461586>,  <20.849688, 17.820427, 15.595938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.060627, 18.132603, 15.461586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717213, 0.196947, -0.668444,
		-0.455529, 0.593401, 0.663602,
		0.527350, 0.780440, -0.335880,
		21.218832, 18.366735, 15.360822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.303822, 18.280872, 15.405974>,  <20.849688, 17.820427, 15.595938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.303822, 18.280872, 15.405974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.622208, 18.451916, 15.234587>,  <20.813240, 18.554543, 15.131754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.622208, 18.451916, 15.234587>,  <20.303822, 18.280872, 15.405974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.622208, 18.451916, 15.234587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553237, 0.226584, -0.801616,
		-0.245695, 0.875105, 0.416923,
		0.795967, 0.427610, -0.428470,
		20.860998, 18.580198, 15.106046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.081148, 18.939068, 15.119477>,  <20.303822, 18.280872, 15.405974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.081148, 18.939068, 15.119477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.411625, 18.837540, 14.918289>,  <20.609911, 18.776623, 14.797576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.411625, 18.837540, 14.918289>,  <20.081148, 18.939068, 15.119477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.411625, 18.837540, 14.918289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380059, 0.407925, -0.830152,
		0.415885, 0.877024, 0.240557,
		0.826193, -0.253822, -0.502971,
		20.659483, 18.761393, 14.767398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.059107, 19.598890, 14.616589>,  <20.081148, 18.939068, 15.119477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.059107, 19.598890, 14.616589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.290703, 19.303265, 14.478863>,  <20.429661, 19.125889, 14.396227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.290703, 19.303265, 14.478863>,  <20.059107, 19.598890, 14.616589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.290703, 19.303265, 14.478863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265804, 0.228130, -0.936646,
		0.770792, 0.633828, -0.064361,
		0.578989, -0.739066, -0.344315,
		20.464399, 19.081545, 14.375568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.459013, 19.828152, 14.047016>,  <20.059107, 19.598890, 14.616589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.459013, 19.828152, 14.047016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.501545, 19.439476, 13.962626>,  <20.527063, 19.206270, 13.911991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.501545, 19.439476, 13.962626>,  <20.459013, 19.828152, 14.047016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.501545, 19.439476, 13.962626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127439, 0.197113, -0.972063,
		0.986130, 0.130247, -0.102873,
		0.106331, -0.971691, -0.210977,
		20.533443, 19.147968, 13.899332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.988148, 19.768810, 13.565538>,  <20.459013, 19.828152, 14.047016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.988148, 19.768810, 13.565538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.767078, 19.436409, 13.540283>,  <20.634436, 19.236969, 13.525130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.767078, 19.436409, 13.540283>,  <20.988148, 19.768810, 13.565538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.767078, 19.436409, 13.540283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179133, 0.192442, -0.964820,
		0.813917, -0.521922, -0.255218,
		-0.552675, -0.831002, -0.063139,
		20.601276, 19.187109, 13.521341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.165813, 19.475737, 12.903389>,  <20.988148, 19.768810, 13.565538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.165813, 19.475737, 12.903389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.831127, 19.270508, 12.979977>,  <20.630316, 19.147369, 13.025929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.831127, 19.270508, 12.979977>,  <21.165813, 19.475737, 12.903389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.831127, 19.270508, 12.979977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244269, 0.036737, -0.969011,
		0.490139, -0.857559, -0.156066,
		-0.836717, -0.513073, 0.191469,
		20.580112, 19.116587, 13.037417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.128456, 18.897545, 12.419326>,  <21.165813, 19.475737, 12.903389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.128456, 18.897545, 12.419326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.739227, 18.926311, 12.506927>,  <20.505690, 18.943571, 12.559487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.739227, 18.926311, 12.506927>,  <21.128456, 18.897545, 12.419326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.739227, 18.926311, 12.506927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225974, -0.110117, -0.967889,
		-0.045490, -0.991313, 0.123402,
		-0.973071, 0.071915, 0.219002,
		20.447306, 18.947887, 12.572627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.840645, 18.289013, 12.182952>,  <21.128456, 18.897545, 12.419326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.840645, 18.289013, 12.182952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.559319, 18.571983, 12.210953>,  <20.390524, 18.741766, 12.227753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.559319, 18.571983, 12.210953>,  <20.840645, 18.289013, 12.182952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.559319, 18.571983, 12.210953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185897, -0.087980, -0.978622,
		-0.686143, -0.701291, 0.193385,
		-0.703314, 0.707425, 0.070001,
		20.348324, 18.784210, 12.231954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.512239, 18.073709, 11.609402>,  <20.840645, 18.289013, 12.182952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.512239, 18.073709, 11.609402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.330532, 18.406803, 11.736017>,  <20.221508, 18.606659, 11.811987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.330532, 18.406803, 11.736017>,  <20.512239, 18.073709, 11.609402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.330532, 18.406803, 11.736017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424109, 0.110320, -0.898866,
		-0.783436, -0.542573, 0.303055,
		-0.454268, 0.832733, 0.316539,
		20.194252, 18.656624, 11.830978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.792585, 17.920122, 11.517265>,  <20.512239, 18.073709, 11.609402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.792585, 17.920122, 11.517265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.874695, 18.311218, 11.499878>,  <19.923960, 18.545876, 11.489446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.874695, 18.311218, 11.499878>,  <19.792585, 17.920122, 11.517265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.874695, 18.311218, 11.499878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187559, -0.004293, -0.982244,
		-0.960565, 0.209781, 0.182502,
		0.205272, 0.977739, -0.043470,
		19.936277, 18.604540, 11.486837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.160854, 18.294062, 11.339019>,  <19.792585, 17.920122, 11.517265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.160854, 18.294062, 11.339019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.503128, 18.445496, 11.197894>,  <19.708492, 18.536356, 11.113219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.503128, 18.445496, 11.197894>,  <19.160854, 18.294062, 11.339019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.503128, 18.445496, 11.197894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293246, -0.207014, -0.933355,
		-0.426392, 0.902119, -0.066120,
		0.855685, 0.378586, -0.352812,
		19.759834, 18.559071, 11.092051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.446711, 18.400021, 11.608877>,  <19.160854, 18.294062, 11.339019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.446711, 18.400021, 11.608877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.092331, 18.214508, 11.609326>,  <17.879704, 18.103201, 11.609596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.092331, 18.214508, 11.609326>,  <18.446711, 18.400021, 11.608877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.092331, 18.214508, 11.609326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121435, -0.229635, 0.965671,
		-0.447603, 0.855672, 0.259764,
		-0.885948, -0.463782, 0.001123,
		17.826546, 18.075373, 11.609663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.110355, 18.654093, 12.206203>,  <18.446711, 18.400021, 11.608877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.110355, 18.654093, 12.206203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.863125, 18.348495, 12.132125>,  <17.714787, 18.165136, 12.087678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.863125, 18.348495, 12.132125>,  <18.110355, 18.654093, 12.206203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.863125, 18.348495, 12.132125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017514, -0.222139, 0.974858,
		-0.785924, 0.605778, 0.123918,
		-0.618075, -0.763994, -0.185194,
		17.677702, 18.119297, 12.076567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.741606, 18.713104, 12.802793>,  <18.110355, 18.654093, 12.206203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.741606, 18.713104, 12.802793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.651497, 18.356564, 12.645441>,  <17.597431, 18.142639, 12.551030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.651497, 18.356564, 12.645441>,  <17.741606, 18.713104, 12.802793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.651497, 18.356564, 12.645441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025121, -0.398309, 0.916907,
		-0.973972, 0.216434, 0.067335,
		-0.225271, -0.891351, -0.393379,
		17.583916, 18.089159, 12.527428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.077951, 18.490271, 13.093095>,  <17.741606, 18.713104, 12.802793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.077951, 18.490271, 13.093095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.293102, 18.170158, 12.987083>,  <17.422192, 17.978090, 12.923477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.293102, 18.170158, 12.987083>,  <17.077951, 18.490271, 13.093095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.293102, 18.170158, 12.987083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058553, -0.278153, 0.958750,
		-0.840988, -0.531207, -0.102753,
		0.537876, -0.800281, -0.265027,
		17.454466, 17.930075, 12.907576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.882175, 17.993736, 13.466980>,  <17.077951, 18.490271, 13.093095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.882175, 17.993736, 13.466980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.228508, 17.830421, 13.351303>,  <17.436308, 17.732431, 13.281897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.228508, 17.830421, 13.351303>,  <16.882175, 17.993736, 13.466980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.228508, 17.830421, 13.351303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054671, -0.497337, 0.865833,
		-0.497337, -0.765478, -0.408289,
		-0.865833, 0.408289, 0.289193,
		17.488258, 17.707935, 13.264545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.831663, 17.281307, 13.750145>,  <16.882175, 17.993736, 13.466980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.831663, 17.281307, 13.750145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.221878, 17.314167, 13.668581>,  <17.456007, 17.333883, 13.619643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.221878, 17.314167, 13.668581>,  <16.831663, 17.281307, 13.750145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.221878, 17.314167, 13.668581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216877, -0.511264, 0.831609,
		-0.035936, -0.855488, -0.516573,
		0.975537, 0.082149, -0.203909,
		17.514540, 17.338812, 13.607409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.107182, 16.641085, 13.938569>,  <16.831663, 17.281307, 13.750145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.107182, 16.641085, 13.938569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.404362, 16.908588, 13.949804>,  <17.582670, 17.069090, 13.956545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.404362, 16.908588, 13.949804>,  <17.107182, 16.641085, 13.938569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.404362, 16.908588, 13.949804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379547, -0.455475, 0.805287,
		0.551335, -0.587627, -0.592220,
		0.742949, 0.668758, 0.028088,
		17.627247, 17.109217, 13.958231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637077, 16.222176, 14.064365>,  <17.107182, 16.641085, 13.938569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.637077, 16.222176, 14.064365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.763199, 16.595501, 14.133074>,  <17.838871, 16.819496, 14.174299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.763199, 16.595501, 14.133074>,  <17.637077, 16.222176, 14.064365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.763199, 16.595501, 14.133074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492096, -0.315567, 0.811332,
		0.811434, -0.171288, -0.558780,
		0.315304, 0.933315, 0.171772,
		17.857790, 16.875496, 14.184606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.350649, 16.193783, 14.291870>,  <17.637077, 16.222176, 14.064365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.350649, 16.193783, 14.291870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.184464, 16.529510, 14.432119>,  <18.084753, 16.730947, 14.516269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.184464, 16.529510, 14.432119>,  <18.350649, 16.193783, 14.291870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.184464, 16.529510, 14.432119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232163, -0.274854, 0.933036,
		0.879484, 0.469043, -0.080667,
		-0.415462, 0.839318, 0.350624,
		18.059824, 16.781305, 14.537307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.810202, 16.438034, 14.717060>,  <18.350649, 16.193783, 14.291870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.810202, 16.438034, 14.717060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.481789, 16.626759, 14.845621>,  <18.284740, 16.739994, 14.922757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.481789, 16.626759, 14.845621>,  <18.810202, 16.438034, 14.717060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.481789, 16.626759, 14.845621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297617, -0.126685, 0.946243,
		0.487166, 0.872550, -0.036407,
		-0.821032, 0.471812, 0.321402,
		18.235479, 16.768303, 14.942041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.002924, 16.943962, 15.179449>,  <18.810202, 16.438034, 14.717060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.002924, 16.943962, 15.179449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.616917, 16.907711, 15.277857>,  <18.385313, 16.885960, 15.336902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.616917, 16.907711, 15.277857>,  <19.002924, 16.943962, 15.179449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.616917, 16.907711, 15.277857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248415, -0.016014, 0.968521,
		-0.083837, 0.995756, 0.037967,
		-0.965019, -0.090630, 0.246018,
		18.327412, 16.880522, 15.351663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.864927, 17.393469, 15.735013>,  <19.002924, 16.943962, 15.179449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.864927, 17.393469, 15.735013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.572876, 17.120712, 15.752605>,  <18.397644, 16.957058, 15.763161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.572876, 17.120712, 15.752605>,  <18.864927, 17.393469, 15.735013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.572876, 17.120712, 15.752605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093804, -0.036269, 0.994930,
		-0.676839, 0.730554, 0.090445,
		-0.730130, -0.681891, 0.043980,
		18.353836, 16.916145, 15.765800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.407112, 17.635399, 16.221148>,  <18.864927, 17.393469, 15.735013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.407112, 17.635399, 16.221148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.330582, 17.243847, 16.192333>,  <18.284662, 17.008915, 16.175045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.330582, 17.243847, 16.192333>,  <18.407112, 17.635399, 16.221148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.330582, 17.243847, 16.192333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246367, -0.118937, 0.961851,
		-0.950104, 0.166281, 0.263920,
		-0.191328, -0.978879, -0.072036,
		18.273184, 16.950184, 16.170723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.885588, 17.429340, 16.779772>,  <18.407112, 17.635399, 16.221148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.885588, 17.429340, 16.779772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.044064, 17.077087, 16.675833>,  <18.139149, 16.865736, 16.613470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.044064, 17.077087, 16.675833>,  <17.885588, 17.429340, 16.779772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.044064, 17.077087, 16.675833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225255, -0.181134, 0.957314,
		-0.890108, -0.437811, 0.126603,
		0.396191, -0.880631, -0.259848,
		18.162920, 16.812899, 16.597878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.630434, 16.965586, 17.200768>,  <17.885588, 17.429340, 16.779772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.630434, 16.965586, 17.200768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.971859, 16.804035, 17.069124>,  <18.176714, 16.707106, 16.990139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.971859, 16.804035, 17.069124>,  <17.630434, 16.965586, 17.200768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.971859, 16.804035, 17.069124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264701, -0.207900, 0.941653,
		-0.448732, -0.890877, -0.070550,
		0.853564, -0.403875, -0.329108,
		18.227928, 16.682873, 16.970392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.698364, 16.363556, 17.662020>,  <17.630434, 16.965586, 17.200768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.698364, 16.363556, 17.662020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.052780, 16.414379, 17.483675>,  <18.265429, 16.444874, 17.376669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.052780, 16.414379, 17.483675>,  <17.698364, 16.363556, 17.662020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.052780, 16.414379, 17.483675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460371, -0.354666, 0.813801,
		-0.054731, -0.926320, -0.372741,
		0.886038, 0.127059, -0.445862,
		18.318592, 16.452497, 17.349916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.143038, 15.756564, 17.923742>,  <17.698364, 16.363556, 17.662020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.143038, 15.756564, 17.923742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.358727, 16.070522, 17.801640>,  <18.488140, 16.258898, 17.728378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.358727, 16.070522, 17.801640>,  <18.143038, 15.756564, 17.923742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.358727, 16.070522, 17.801640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608366, -0.112391, 0.785659,
		0.582351, -0.609351, -0.538107,
		0.539220, 0.784895, -0.305258,
		18.520493, 16.305990, 17.710062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.829712, 15.457767, 17.978872>,  <18.143038, 15.756564, 17.923742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.829712, 15.457767, 17.978872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.853649, 15.857044, 17.976606>,  <18.868011, 16.096611, 17.975246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.853649, 15.857044, 17.976606>,  <18.829712, 15.457767, 17.978872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.853649, 15.857044, 17.976606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517549, -0.026174, 0.855253,
		0.853558, -0.054114, -0.518180,
		0.059844, 0.998192, -0.005666,
		18.871603, 16.156502, 17.974907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<19.614042, 15.700553, 18.005390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.395023, 16.014278, 18.122038>,  <19.263611, 16.202515, 18.192026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.395023, 16.014278, 18.122038>,  <19.614042, 15.700553, 18.005390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.395023, 16.014278, 18.122038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605899, 0.131252, 0.784640,
		0.577128, 0.606321, -0.547082,
		-0.547549, 0.784314, 0.291620,
		19.230759, 16.249573, 18.209524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.084948, 16.219692, 18.101162>,  <19.614042, 15.700553, 18.005390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.084948, 16.219692, 18.101162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.759552, 16.301922, 18.318777>,  <19.564316, 16.351261, 18.449347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.759552, 16.301922, 18.318777>,  <20.084948, 16.219692, 18.101162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.759552, 16.301922, 18.318777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569327, 0.090465, 0.817119,
		0.118764, 0.974451, -0.190633,
		-0.813488, 0.205576, 0.544037,
		19.515505, 16.363594, 18.481989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.334032, 16.725603, 18.577600>,  <20.084948, 16.219692, 18.101162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.334032, 16.725603, 18.577600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.992451, 16.605919, 18.747889>,  <19.787502, 16.534109, 18.850061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.992451, 16.605919, 18.747889>,  <20.334032, 16.725603, 18.577600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.992451, 16.605919, 18.747889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365311, 0.237893, 0.899975,
		-0.370557, 0.924057, -0.093845,
		-0.853953, -0.299209, 0.425721,
		19.736265, 16.516155, 18.875605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.108273, 17.291121, 19.013355>,  <20.334032, 16.725603, 18.577600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.108273, 17.291121, 19.013355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.944935, 16.948650, 19.139984>,  <19.846933, 16.743168, 19.215961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.944935, 16.948650, 19.139984>,  <20.108273, 17.291121, 19.013355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.944935, 16.948650, 19.139984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253109, 0.227006, 0.940428,
		-0.877036, 0.464143, 0.124010,
		-0.408342, -0.856177, 0.316572,
		19.822432, 16.691797, 19.234955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.780590, 17.485081, 19.637856>,  <20.108273, 17.291121, 19.013355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.780590, 17.485081, 19.637856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.843395, 17.090214, 19.649513>,  <19.881079, 16.853294, 19.656507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.843395, 17.090214, 19.649513>,  <19.780590, 17.485081, 19.637856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.843395, 17.090214, 19.649513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340972, 0.081881, 0.936501,
		-0.926868, -0.137107, 0.349453,
		0.157014, -0.987166, 0.029143,
		19.890499, 16.794064, 19.658257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.474957, 17.255236, 20.331030>,  <19.780590, 17.485081, 19.637856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.474957, 17.255236, 20.331030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.700649, 16.945202, 20.217266>,  <19.836065, 16.759182, 20.149008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.700649, 16.945202, 20.217266>,  <19.474957, 17.255236, 20.331030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.700649, 16.945202, 20.217266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323266, -0.109576, 0.939943,
		-0.759700, -0.622283, 0.188732,
		0.564230, -0.775085, -0.284408,
		19.869919, 16.712677, 20.131945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.439911, 16.643980, 20.799313>,  <19.474957, 17.255236, 20.331030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.439911, 16.643980, 20.799313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.789410, 16.595394, 20.610924>,  <19.999109, 16.566242, 20.497890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.789410, 16.595394, 20.610924>,  <19.439911, 16.643980, 20.799313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.789410, 16.595394, 20.610924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390596, -0.401780, 0.828256,
		-0.289828, -0.907645, -0.303611,
		0.873747, -0.121463, -0.470970,
		20.051535, 16.558956, 20.469633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.624004, 15.971837, 20.952335>,  <19.439911, 16.643980, 20.799313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.624004, 15.971837, 20.952335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.953854, 16.174156, 20.851015>,  <20.151764, 16.295547, 20.790222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.953854, 16.174156, 20.851015>,  <19.624004, 15.971837, 20.952335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.953854, 16.174156, 20.851015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444836, -0.303203, 0.842727,
		0.349448, -0.807612, -0.475026,
		0.824625, 0.505798, -0.253302,
		20.201241, 16.325895, 20.775024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.168003, 15.405696, 20.892288>,  <19.624004, 15.971837, 20.952335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.168003, 15.405696, 20.892288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.333042, 15.765972, 20.946726>,  <20.432066, 15.982138, 20.979387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.333042, 15.765972, 20.946726>,  <20.168003, 15.405696, 20.892288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.333042, 15.765972, 20.946726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383253, -0.307180, 0.871067,
		0.826366, -0.307241, -0.471934,
		0.412597, 0.900690, 0.136092,
		20.456821, 16.036179, 20.987553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.737379, 15.208769, 21.181589>,  <20.168003, 15.405696, 20.892288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.737379, 15.208769, 21.181589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.715553, 15.602657, 21.247738>,  <20.702457, 15.838990, 21.287428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.715553, 15.602657, 21.247738>,  <20.737379, 15.208769, 21.181589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.715553, 15.602657, 21.247738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466601, -0.121279, 0.876114,
		0.882784, 0.124966, -0.452854,
		-0.054563, 0.984721, 0.165373,
		20.699184, 15.898073, 21.297350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.392323, 15.367506, 21.445103>,  <20.737379, 15.208769, 21.181589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.392323, 15.367506, 21.445103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.162224, 15.674953, 21.557041>,  <21.024164, 15.859422, 21.624205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.162224, 15.674953, 21.557041>,  <21.392323, 15.367506, 21.445103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.162224, 15.674953, 21.557041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486361, 0.046321, 0.872529,
		0.657680, 0.638027, -0.400472,
		-0.575248, 0.768619, 0.279847,
		20.989649, 15.905540, 21.640995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.898746, 15.828449, 21.719105>,  <21.392323, 15.367506, 21.445103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.898746, 15.828449, 21.719105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.537003, 15.920662, 21.862766>,  <21.319956, 15.975989, 21.948963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.537003, 15.920662, 21.862766>,  <21.898746, 15.828449, 21.719105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.537003, 15.920662, 21.862766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359370, -0.042568, 0.932224,
		0.230195, 0.972133, -0.044350,
		-0.904358, 0.230532, 0.359154,
		21.265696, 15.989821, 21.970512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.007118, 16.131912, 22.310501>,  <21.898746, 15.828449, 21.719105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.007118, 16.131912, 22.310501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.623478, 16.029640, 22.359085>,  <21.393293, 15.968277, 22.388235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.623478, 16.029640, 22.359085>,  <22.007118, 16.131912, 22.310501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.623478, 16.029640, 22.359085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154046, -0.111478, 0.981755,
		-0.237477, 0.960312, 0.146306,
		-0.959101, -0.255682, 0.121459,
		21.335747, 15.952935, 22.395523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.706631, 16.544842, 22.893591>,  <22.007118, 16.131912, 22.310501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.706631, 16.544842, 22.893591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.491249, 16.210335, 22.852173>,  <21.362019, 16.009630, 22.827322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.491249, 16.210335, 22.852173>,  <21.706631, 16.544842, 22.893591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.491249, 16.210335, 22.852173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004289, -0.125601, 0.992072,
		-0.842642, 0.533743, 0.071217,
		-0.538456, -0.836267, -0.103547,
		21.329712, 15.959455, 22.821108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.217428, 16.617489, 23.368866>,  <21.706631, 16.544842, 22.893591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.217428, 16.617489, 23.368866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.250450, 16.228092, 23.283543>,  <21.270264, 15.994454, 23.232349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.250450, 16.228092, 23.283543>,  <21.217428, 16.617489, 23.368866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.250450, 16.228092, 23.283543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141666, -0.223326, 0.964394,
		-0.986466, -0.049396, -0.156347,
		0.082554, -0.973491, -0.213306,
		21.275217, 15.936045, 23.219551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.669191, 16.387058, 23.683956>,  <21.217428, 16.617489, 23.368866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.669191, 16.387058, 23.683956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.897583, 16.062904, 23.631401>,  <21.034618, 15.868413, 23.599869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.897583, 16.062904, 23.631401>,  <20.669191, 16.387058, 23.683956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.897583, 16.062904, 23.631401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223730, -0.307580, 0.924845,
		-0.789891, -0.498673, -0.356929,
		0.570979, -0.810382, -0.131387,
		21.068876, 15.819790, 23.591986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.224144, 15.792853, 23.971235>,  <20.669191, 16.387058, 23.683956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.224144, 15.792853, 23.971235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.618645, 15.726856, 23.974840>,  <20.855345, 15.687258, 23.977003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.618645, 15.726856, 23.974840>,  <20.224144, 15.792853, 23.971235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.618645, 15.726856, 23.974840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037018, -0.167453, 0.985185,
		-0.160986, -0.971985, -0.171259,
		0.986262, -0.164940, 0.009023,
		20.914520, 15.677359, 23.977545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.334766, 15.048307, 24.173893>,  <20.224144, 15.792853, 23.971235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.334766, 15.048307, 24.173893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.674309, 15.245781, 24.249491>,  <20.878035, 15.364265, 24.294849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.674309, 15.245781, 24.249491>,  <20.334766, 15.048307, 24.173893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.674309, 15.245781, 24.249491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131708, -0.148732, 0.980067,
		0.511953, -0.856828, -0.061229,
		0.848856, 0.493684, 0.188995,
		20.928967, 15.393886, 24.306189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.561348, 14.732598, 24.783291>,  <20.334766, 15.048307, 24.173893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.561348, 14.732598, 24.783291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.771065, 15.072128, 24.756109>,  <20.896894, 15.275846, 24.739801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.771065, 15.072128, 24.756109>,  <20.561348, 14.732598, 24.783291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.771065, 15.072128, 24.756109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066510, 0.120375, 0.990498,
		0.848939, -0.514789, 0.119566,
		0.524290, 0.848824, -0.067953,
		20.928352, 15.326776, 24.735723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.046686, 14.727915, 25.252735>,  <20.561348, 14.732598, 24.783291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.046686, 14.727915, 25.252735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.039925, 15.118858, 25.168371>,  <21.035868, 15.353425, 25.117752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.039925, 15.118858, 25.168371>,  <21.046686, 14.727915, 25.252735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.039925, 15.118858, 25.168371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094489, 0.208435, 0.973461,
		0.995382, 0.036382, 0.088826,
		-0.016902, 0.977359, -0.210910,
		21.034855, 15.412066, 25.105099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.620750, 15.025231, 25.610342>,  <21.046686, 14.727915, 25.252735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.620750, 15.025231, 25.610342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.372551, 15.328011, 25.528357>,  <21.223631, 15.509678, 25.479166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.372551, 15.328011, 25.528357>,  <21.620750, 15.025231, 25.610342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.372551, 15.328011, 25.528357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100336, 0.335846, 0.936558,
		0.777761, 0.560568, -0.284341,
		-0.620500, 0.756948, -0.204963,
		21.186401, 15.555095, 25.466867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.923515, 15.694299, 25.889194>,  <21.620750, 15.025231, 25.610342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.923515, 15.694299, 25.889194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.524120, 15.691425, 25.867407>,  <21.284483, 15.689701, 25.854334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.524120, 15.691425, 25.867407>,  <21.923515, 15.694299, 25.889194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.524120, 15.691425, 25.867407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054046, 0.306733, 0.950260,
		0.009881, 0.951768, -0.306658,
		-0.998490, -0.007184, -0.054470,
		21.224573, 15.689270, 25.851067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.679365, 16.295435, 26.185947>,  <21.923515, 15.694299, 25.889194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.679365, 16.295435, 26.185947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.359100, 16.058186, 26.219769>,  <21.166943, 15.915836, 26.240061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.359100, 16.058186, 26.219769>,  <21.679365, 16.295435, 26.185947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.359100, 16.058186, 26.219769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113642, 0.288916, 0.950586,
		-0.588241, 0.751488, -0.298727,
		-0.800661, -0.593121, 0.084552,
		21.118902, 15.880249, 26.245134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.122412, 16.636118, 26.623373>,  <21.679365, 16.295435, 26.185947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.122412, 16.636118, 26.623373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.075268, 16.238922, 26.627035>,  <21.046982, 16.000605, 26.629232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.075268, 16.238922, 26.627035>,  <21.122412, 16.636118, 26.623373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.075268, 16.238922, 26.627035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148613, 0.026752, 0.988534,
		-0.981847, 0.115149, -0.150724,
		-0.117860, -0.992988, 0.009153,
		21.039909, 15.941026, 26.629782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.786978, 17.241501, 26.424101>,  <21.122412, 16.636118, 26.623373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.786978, 17.241501, 26.424101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.998226, 17.554684, 26.555593>,  <21.124975, 17.742594, 26.634489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.998226, 17.554684, 26.555593>,  <20.786978, 17.241501, 26.424101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.998226, 17.554684, 26.555593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151958, 0.293732, -0.943732,
		-0.835461, 0.548360, 0.036150,
		0.528123, 0.782958, 0.328729,
		21.156664, 17.789572, 26.654213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.473848, 17.907951, 26.153248>,  <20.786978, 17.241501, 26.424101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.473848, 17.907951, 26.153248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.865158, 17.926380, 26.234098>,  <21.099945, 17.937437, 26.282608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.865158, 17.926380, 26.234098>,  <20.473848, 17.907951, 26.153248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.865158, 17.926380, 26.234098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160377, 0.449621, -0.878704,
		-0.131364, 0.892030, 0.432464,
		0.978275, 0.046073, 0.202126,
		21.158640, 17.940203, 26.294737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.581949, 18.485569, 25.920965>,  <20.473848, 17.907951, 26.153248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.581949, 18.485569, 25.920965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.952084, 18.341076, 25.967041>,  <21.174164, 18.254381, 25.994686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.952084, 18.341076, 25.967041>,  <20.581949, 18.485569, 25.920965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.952084, 18.341076, 25.967041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228554, 0.289024, -0.929639,
		0.302522, 0.886553, 0.350005,
		0.925334, -0.361232, 0.115189,
		21.229683, 18.232706, 26.001598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.065996, 19.033466, 25.676517>,  <20.581949, 18.485569, 25.920965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.065996, 19.033466, 25.676517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.254299, 18.682034, 25.644318>,  <21.367281, 18.471174, 25.624998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.254299, 18.682034, 25.644318>,  <21.065996, 19.033466, 25.676517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.254299, 18.682034, 25.644318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443752, 0.314650, -0.839094,
		0.762542, 0.359289, 0.537997,
		0.470759, -0.878582, -0.080499,
		21.395527, 18.418459, 25.620169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.774412, 19.123293, 25.419727>,  <21.065996, 19.033466, 25.676517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.774412, 19.123293, 25.419727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.723259, 18.732605, 25.350840>,  <21.692568, 18.498192, 25.309507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.723259, 18.732605, 25.350840>,  <21.774412, 19.123293, 25.419727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.723259, 18.732605, 25.350840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353702, 0.117315, -0.927972,
		0.926575, -0.179587, 0.330466,
		-0.127883, -0.976722, -0.172222,
		21.684895, 18.439589, 25.299173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.237637, 19.054592, 24.965992>,  <21.774412, 19.123293, 25.419727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.237637, 19.054592, 24.965992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.997990, 18.736725, 24.926880>,  <21.854202, 18.546003, 24.903412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.997990, 18.736725, 24.926880>,  <22.237637, 19.054592, 24.965992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.997990, 18.736725, 24.926880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091069, 0.053697, -0.994396,
		0.795467, -0.604663, 0.040199,
		-0.599115, -0.794670, -0.097780,
		21.818254, 18.498323, 24.897547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.647411, 18.642187, 24.657955>,  <22.237637, 19.054592, 24.965992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.647411, 18.642187, 24.657955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.282742, 18.491554, 24.592184>,  <22.063940, 18.401175, 24.552721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.282742, 18.491554, 24.592184>,  <22.647411, 18.642187, 24.657955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.282742, 18.491554, 24.592184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204693, -0.069225, -0.976375,
		0.356305, -0.923792, 0.140195,
		-0.911673, -0.376585, -0.164428,
		22.009239, 18.378578, 24.542856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.686697, 18.015390, 24.177502>,  <22.647411, 18.642187, 24.657955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.686697, 18.015390, 24.177502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.311161, 18.150398, 24.150183>,  <22.085840, 18.231403, 24.133791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.311161, 18.150398, 24.150183>,  <22.686697, 18.015390, 24.177502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.311161, 18.150398, 24.150183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046586, -0.072030, -0.996314,
		-0.341195, -0.938558, 0.051901,
		-0.938837, 0.337520, -0.068300,
		22.029510, 18.251654, 24.129692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.289648, 17.548927, 23.770769>,  <22.686697, 18.015390, 24.177502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.289648, 17.548927, 23.770769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.086658, 17.892654, 23.745323>,  <21.964865, 18.098890, 23.730057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.086658, 17.892654, 23.745323>,  <22.289648, 17.548927, 23.770769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.086658, 17.892654, 23.745323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175111, -0.175134, -0.968847,
		-0.843687, -0.480524, 0.239351,
		-0.507473, 0.859316, -0.063613,
		21.934416, 18.150450, 23.726240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.833321, 17.309151, 23.344925>,  <22.289648, 17.548927, 23.770769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.833321, 17.309151, 23.344925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.850430, 17.706673, 23.303902>,  <21.860695, 17.945187, 23.279287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.850430, 17.706673, 23.303902>,  <21.833321, 17.309151, 23.344925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.850430, 17.706673, 23.303902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023377, -0.101627, -0.994548,
		-0.998811, 0.044938, 0.018885,
		0.042774, 0.993807, -0.102556,
		21.863262, 18.004814, 23.273134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.433193, 17.496513, 22.786785>,  <21.833321, 17.309151, 23.344925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.433193, 17.496513, 22.786785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.669228, 17.816635, 22.829334>,  <21.810848, 18.008707, 22.854864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.669228, 17.816635, 22.829334>,  <21.433193, 17.496513, 22.786785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.669228, 17.816635, 22.829334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162065, 0.011652, -0.986711,
		-0.790907, 0.599483, -0.122825,
		0.590086, 0.800302, 0.106371,
		21.846252, 18.056726, 22.861246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.134827, 17.918715, 22.338570>,  <21.433193, 17.496513, 22.786785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.134827, 17.918715, 22.338570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.498772, 18.079731, 22.378782>,  <21.717138, 18.176342, 22.402910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.498772, 18.079731, 22.378782>,  <21.134827, 17.918715, 22.338570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.498772, 18.079731, 22.378782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040298, 0.155411, -0.987027,
		-0.412945, 0.902112, 0.125181,
		0.909864, 0.402543, 0.100530,
		21.771730, 18.200495, 22.408941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.124582, 18.552362, 22.021036>,  <21.134827, 17.918715, 22.338570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.124582, 18.552362, 22.021036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.511227, 18.451622, 22.039932>,  <21.743214, 18.391178, 22.051270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.511227, 18.451622, 22.039932>,  <21.124582, 18.552362, 22.021036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.511227, 18.451622, 22.039932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084658, 0.139872, -0.986544,
		0.241855, 0.957605, 0.156523,
		0.966612, -0.251851, 0.047240,
		21.801210, 18.376066, 22.054104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.347832, 18.966110, 21.487078>,  <21.124582, 18.552362, 22.021036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.347832, 18.966110, 21.487078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.632572, 18.700275, 21.577934>,  <21.803415, 18.540773, 21.632448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.632572, 18.700275, 21.577934>,  <21.347832, 18.966110, 21.487078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.632572, 18.700275, 21.577934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350094, 0.055403, -0.935074,
		0.608855, 0.745153, 0.272107,
		0.711849, -0.664588, 0.227142,
		21.846127, 18.500898, 21.646076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.898056, 19.246407, 21.135149>,  <21.347832, 18.966110, 21.487078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.898056, 19.246407, 21.135149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.990860, 18.863686, 21.205236>,  <22.046543, 18.634052, 21.247290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.990860, 18.863686, 21.205236>,  <21.898056, 19.246407, 21.135149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.990860, 18.863686, 21.205236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312715, -0.097202, -0.944860,
		0.921076, 0.274011, 0.276654,
		0.232011, -0.956802, 0.175218,
		22.060463, 18.576645, 21.257801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.527712, 19.158529, 20.895161>,  <21.898056, 19.246407, 21.135149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.527712, 19.158529, 20.895161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.383949, 18.785606, 20.911310>,  <22.297691, 18.561853, 20.921000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.383949, 18.785606, 20.911310>,  <22.527712, 19.158529, 20.895161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.383949, 18.785606, 20.911310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213516, -0.124276, -0.969003,
		0.908425, -0.339647, 0.243728,
		-0.359408, -0.932306, 0.040375,
		22.276127, 18.505915, 20.923422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.936285, 18.874249, 20.385046>,  <22.527712, 19.158529, 20.895161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.936285, 18.874249, 20.385046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.639347, 18.614212, 20.449926>,  <22.461184, 18.458191, 20.488855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.639347, 18.614212, 20.449926>,  <22.936285, 18.874249, 20.385046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.639347, 18.614212, 20.449926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108978, -0.356011, -0.928106,
		0.661097, -0.671297, 0.335128,
		-0.742344, -0.650090, 0.162201,
		22.416643, 18.419186, 20.498587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.125221, 18.179626, 20.224108>,  <22.936285, 18.874249, 20.385046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.125221, 18.179626, 20.224108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.726601, 18.182350, 20.191025>,  <22.487429, 18.183985, 20.171175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.726601, 18.182350, 20.191025>,  <23.125221, 18.179626, 20.224108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.726601, 18.182350, 20.191025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072651, -0.410099, -0.909143,
		-0.040107, -0.912016, 0.408189,
		-0.996551, 0.006808, -0.082706,
		22.427635, 18.184393, 20.166212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.975445, 17.477880, 19.828176>,  <23.125221, 18.179626, 20.224108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.975445, 17.477880, 19.828176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.642223, 17.697990, 19.805494>,  <22.442289, 17.830057, 19.791885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.642223, 17.697990, 19.805494>,  <22.975445, 17.477880, 19.828176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.642223, 17.697990, 19.805494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088120, -0.233197, -0.968429,
		-0.546126, -0.801758, 0.242756,
		-0.833055, 0.550276, -0.056704,
		22.392307, 17.863073, 19.788483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.576506, 17.110928, 19.372648>,  <22.975445, 17.477880, 19.828176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.576506, 17.110928, 19.372648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.417755, 17.477959, 19.363333>,  <22.322504, 17.698177, 19.357744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.417755, 17.477959, 19.363333>,  <22.576506, 17.110928, 19.372648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.417755, 17.477959, 19.363333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048406, -0.046261, -0.997756,
		-0.916594, -0.394859, 0.062776,
		-0.396877, 0.917576, -0.023289,
		22.298693, 17.753231, 19.356346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.449112, 16.003517, 15.766912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.718414, 16.298969, 15.780451>,  <17.879995, 16.476240, 15.788574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.718414, 16.298969, 15.780451>,  <17.449112, 16.003517, 15.766912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.718414, 16.298969, 15.780451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272697, 0.290592, -0.917166,
		-0.687285, 0.608259, 0.397066,
		0.673258, 0.738633, 0.033849,
		17.920391, 16.520559, 15.790606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.104164, 16.616247, 15.601273>,  <17.449112, 16.003517, 15.766912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.104164, 16.616247, 15.601273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.492664, 16.648083, 15.511526>,  <17.725763, 16.667185, 15.457679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.492664, 16.648083, 15.511526>,  <17.104164, 16.616247, 15.601273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.492664, 16.648083, 15.511526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236440, 0.432388, -0.870136,
		0.027759, 0.898168, 0.438774,
		0.971250, 0.079590, -0.224365,
		17.784039, 16.671959, 15.444217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.213203, 17.436527, 15.406229>,  <17.104164, 16.616247, 15.601273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.213203, 17.436527, 15.406229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.497810, 17.199615, 15.254995>,  <17.668575, 17.057468, 15.164255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.497810, 17.199615, 15.254995>,  <17.213203, 17.436527, 15.406229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.497810, 17.199615, 15.254995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059292, 0.485545, -0.872199,
		0.700162, 0.643003, 0.310356,
		0.711518, -0.592278, -0.378085,
		17.711266, 17.021933, 15.141570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.625685, 17.955338, 15.011944>,  <17.213203, 17.436527, 15.406229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.625685, 17.955338, 15.011944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.750648, 17.603821, 14.867655>,  <17.825626, 17.392910, 14.781081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.750648, 17.603821, 14.867655>,  <17.625685, 17.955338, 15.011944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.750648, 17.603821, 14.867655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013154, 0.375692, -0.926651,
		0.949857, 0.294239, 0.105810,
		0.312409, -0.878794, -0.360723,
		17.844372, 17.340183, 14.759438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.167913, 18.100967, 14.508239>,  <17.625685, 17.955338, 15.011944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.167913, 18.100967, 14.508239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.048096, 17.730019, 14.418568>,  <17.976206, 17.507450, 14.364765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.048096, 17.730019, 14.418568>,  <18.167913, 18.100967, 14.508239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.048096, 17.730019, 14.418568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090460, 0.261513, -0.960952,
		0.949785, -0.267568, -0.162224,
		-0.299543, -0.927372, -0.224177,
		17.958233, 17.451807, 14.351315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.580828, 17.993052, 13.978596>,  <18.167913, 18.100967, 14.508239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.580828, 17.993052, 13.978596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.286518, 17.722431, 13.966465>,  <18.109932, 17.560059, 13.959187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.286518, 17.722431, 13.966465>,  <18.580828, 17.993052, 13.978596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.286518, 17.722431, 13.966465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163745, 0.221173, -0.961390,
		0.657135, -0.702399, -0.273514,
		-0.735773, -0.676549, -0.030326,
		18.065786, 17.519466, 13.957367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.807383, 17.500381, 13.381321>,  <18.580828, 17.993052, 13.978596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.807383, 17.500381, 13.381321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.413956, 17.451031, 13.434038>,  <18.177898, 17.421421, 13.465669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.413956, 17.451031, 13.434038>,  <18.807383, 17.500381, 13.381321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.413956, 17.451031, 13.434038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153061, 0.182804, -0.971162,
		0.095722, -0.975378, -0.198684,
		-0.983570, -0.123373, 0.131794,
		18.118885, 17.414019, 13.473577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.539846, 17.132141, 12.789000>,  <18.807383, 17.500381, 13.381321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.539846, 17.132141, 12.789000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.206306, 17.308643, 12.921656>,  <18.006182, 17.414545, 13.001249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.206306, 17.308643, 12.921656>,  <18.539846, 17.132141, 12.789000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.206306, 17.308643, 12.921656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184765, 0.343034, -0.920972,
		-0.520149, -0.829229, -0.204510,
		-0.833850, 0.441256, 0.331641,
		17.956152, 17.441021, 13.021148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.990627, 16.814661, 12.431523>,  <18.539846, 17.132141, 12.789000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.990627, 16.814661, 12.431523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.849564, 17.161415, 12.572460>,  <17.764925, 17.369467, 12.657022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.849564, 17.161415, 12.572460>,  <17.990627, 16.814661, 12.431523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.849564, 17.161415, 12.572460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248703, 0.276160, -0.928376,
		-0.902097, -0.415030, 0.118206,
		-0.352660, 0.866883, 0.352342,
		17.743765, 17.421480, 12.678163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.352808, 16.864172, 12.083173>,  <17.990627, 16.814661, 12.431523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.352808, 16.864172, 12.083173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.416126, 17.232067, 12.226851>,  <17.454117, 17.452805, 12.313059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.416126, 17.232067, 12.226851>,  <17.352808, 16.864172, 12.083173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.416126, 17.232067, 12.226851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143965, 0.381396, -0.913133,
		-0.976840, 0.092834, 0.192784,
		0.158297, 0.919739, 0.359197,
		17.463615, 17.507988, 12.334611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.815815, 17.164701, 11.818193>,  <17.352808, 16.864172, 12.083173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.815815, 17.164701, 11.818193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.094822, 17.438492, 11.903011>,  <17.262226, 17.602766, 11.953902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.094822, 17.438492, 11.903011>,  <16.815815, 17.164701, 11.818193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.094822, 17.438492, 11.903011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066375, 0.356361, -0.931988,
		-0.713489, 0.636002, 0.294000,
		0.697516, 0.684477, 0.212045,
		17.304077, 17.643835, 11.966625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.560005, 17.766731, 11.517278>,  <16.815815, 17.164701, 11.818193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.560005, 17.766731, 11.517278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.946285, 17.855812, 11.570691>,  <17.178053, 17.909260, 11.602739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.946285, 17.855812, 11.570691>,  <16.560005, 17.766731, 11.517278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.946285, 17.855812, 11.570691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039516, 0.382221, -0.923226,
		-0.256643, 0.896834, 0.360309,
		0.965698, 0.222701, 0.133534,
		17.235994, 17.922623, 11.610751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.155254, 18.013557, 10.937135>,  <16.560005, 17.766731, 11.517278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.155254, 18.013557, 10.937135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.030106, 18.377071, 10.826701>,  <15.955016, 18.595179, 10.760441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.030106, 18.377071, 10.826701>,  <16.155254, 18.013557, 10.937135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.030106, 18.377071, 10.826701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008627, -0.287946, -0.957608,
		-0.949756, -0.301992, 0.082250,
		-0.312874, 0.908784, -0.276084,
		15.936243, 18.649706, 10.743876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.533310, 18.048929, 10.493885>,  <16.155254, 18.013557, 10.937135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.533310, 18.048929, 10.493885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.762151, 18.358284, 10.384655>,  <15.899455, 18.543898, 10.319117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.762151, 18.358284, 10.384655>,  <15.533310, 18.048929, 10.493885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.762151, 18.358284, 10.384655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034379, -0.355265, -0.934134,
		-0.819461, 0.525033, -0.229836,
		0.572103, 0.773387, -0.273075,
		15.933782, 18.590300, 10.302732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.922530, 17.960997, 10.921653>,  <15.533310, 18.048929, 10.493885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.922530, 17.960997, 10.921653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.792644, 18.337051, 10.963037>,  <14.714711, 18.562683, 10.987867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.792644, 18.337051, 10.963037>,  <14.922530, 17.960997, 10.921653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.792644, 18.337051, 10.963037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086435, -0.079433, 0.993086,
		0.941853, 0.331414, -0.055468,
		-0.324717, 0.940136, 0.103460,
		14.695229, 18.619093, 10.994075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.415208, 18.484175, 11.249760>,  <14.922530, 17.960997, 10.921653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.415208, 18.484175, 11.249760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.036544, 18.597328, 11.311481>,  <14.809345, 18.665220, 11.348515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.036544, 18.597328, 11.311481>,  <15.415208, 18.484175, 11.249760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.036544, 18.597328, 11.311481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114898, -0.151056, 0.981825,
		0.301050, 0.947185, 0.110497,
		-0.946661, 0.282883, 0.154305,
		14.752545, 18.682194, 11.357773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.432652, 19.100155, 11.674379>,  <15.415208, 18.484175, 11.249760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.432652, 19.100155, 11.674379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.087100, 18.908691, 11.737118>,  <14.879769, 18.793814, 11.774761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.087100, 18.908691, 11.737118>,  <15.432652, 19.100155, 11.674379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.087100, 18.908691, 11.737118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183223, -0.008560, 0.983034,
		-0.469194, 0.877960, 0.095096,
		-0.863879, -0.478657, 0.156846,
		14.827936, 18.765095, 11.784172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.127236, 19.303083, 12.212837>,  <15.432652, 19.100155, 11.674379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.127236, 19.303083, 12.212837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.910966, 18.966606, 12.209612>,  <14.781204, 18.764719, 12.207677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.910966, 18.966606, 12.209612>,  <15.127236, 19.303083, 12.212837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.910966, 18.966606, 12.209612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091609, 0.049348, 0.994572,
		-0.836229, 0.538479, -0.103742,
		-0.540675, -0.841193, -0.008063,
		14.748763, 18.714249, 12.207193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.511546, 19.389021, 12.623659>,  <15.127236, 19.303083, 12.212837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.511546, 19.389021, 12.623659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.560102, 18.991982, 12.622020>,  <14.589235, 18.753757, 12.621037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.560102, 18.991982, 12.622020>,  <14.511546, 19.389021, 12.623659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.560102, 18.991982, 12.622020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115221, -0.018192, 0.993173,
		-0.985895, -0.120088, -0.116576,
		0.121389, -0.992597, -0.004098,
		14.596519, 18.694202, 12.620790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.983438, 19.194057, 13.049163>,  <14.511546, 19.389021, 12.623659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.983438, 19.194057, 13.049163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.238322, 18.885826, 13.043917>,  <14.391253, 18.700888, 13.040769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.238322, 18.885826, 13.043917>,  <13.983438, 19.194057, 13.049163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.238322, 18.885826, 13.043917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111285, -0.108838, 0.987811,
		-0.762614, -0.627982, -0.155106,
		0.637209, -0.770579, -0.013116,
		14.429485, 18.654652, 13.039982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.750319, 18.690969, 13.601645>,  <13.983438, 19.194057, 13.049163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.750319, 18.690969, 13.601645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.131400, 18.609013, 13.511868>,  <14.360049, 18.559839, 13.458001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.131400, 18.609013, 13.511868>,  <13.750319, 18.690969, 13.601645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.131400, 18.609013, 13.511868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168745, -0.257572, 0.951410,
		-0.252702, -0.944296, -0.210826,
		0.952716, -0.204848, -0.224434,
		14.417212, 18.547546, 13.444534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.905294, 18.009699, 13.895576>,  <13.750319, 18.690969, 13.601645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.905294, 18.009699, 13.895576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.251090, 18.206348, 13.853691>,  <14.458568, 18.324339, 13.828560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.251090, 18.206348, 13.853691>,  <13.905294, 18.009699, 13.895576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.251090, 18.206348, 13.853691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214153, -0.171761, 0.961580,
		0.454751, -0.853700, -0.253768,
		0.864488, 0.491625, -0.104714,
		14.510436, 18.353836, 13.822277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.336667, 17.747782, 14.412589>,  <13.905294, 18.009699, 13.895576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.336667, 17.747782, 14.412589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.543893, 18.077251, 14.320358>,  <14.668228, 18.274933, 14.265019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.543893, 18.077251, 14.320358>,  <14.336667, 17.747782, 14.412589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.543893, 18.077251, 14.320358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322546, 0.061544, 0.944551,
		0.792195, -0.563710, -0.233790,
		0.518065, 0.823677, -0.230577,
		14.699312, 18.324354, 14.251185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.962444, 17.612345, 14.798778>,  <14.336667, 17.747782, 14.412589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.962444, 17.612345, 14.798778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.924338, 18.003040, 14.721935>,  <14.901475, 18.237457, 14.675830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.924338, 18.003040, 14.721935>,  <14.962444, 17.612345, 14.798778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.924338, 18.003040, 14.721935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437247, 0.214427, 0.873405,
		0.894282, -0.000793, -0.447504,
		-0.095264, 0.976740, -0.192105,
		14.895759, 18.296062, 14.664304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.639330, 17.821590, 14.888270>,  <14.962444, 17.612345, 14.798778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.639330, 17.821590, 14.888270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.393703, 18.136959, 14.902737>,  <15.246326, 18.326181, 14.911416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.393703, 18.136959, 14.902737>,  <15.639330, 17.821590, 14.888270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.393703, 18.136959, 14.902737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512666, 0.363615, 0.777791,
		0.600078, 0.496158, -0.627482,
		-0.614069, 0.788424, 0.036166,
		15.209482, 18.373486, 14.913587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.108078, 18.437439, 14.842738>,  <15.639330, 17.821590, 14.888270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.108078, 18.437439, 14.842738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.755706, 18.567310, 14.980459>,  <15.544282, 18.645233, 15.063092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.755706, 18.567310, 14.980459>,  <16.108078, 18.437439, 14.842738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.755706, 18.567310, 14.980459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457742, 0.399899, 0.794074,
		0.120131, 0.857126, -0.500902,
		-0.880932, 0.324677, 0.344303,
		15.491426, 18.664713, 15.083750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.157701, 19.186583, 14.897735>,  <16.108078, 18.437439, 14.842738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.157701, 19.186583, 14.897735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.895619, 19.055923, 15.170206>,  <15.738370, 18.977528, 15.333689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.895619, 19.055923, 15.170206>,  <16.157701, 19.186583, 14.897735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.895619, 19.055923, 15.170206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591733, 0.338635, 0.731559,
		-0.469633, 0.882399, -0.028588,
		-0.655207, -0.326648, 0.681179,
		15.699058, 18.957930, 15.374559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.274342, 19.646362, 15.384535>,  <16.157701, 19.186583, 14.897735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.274342, 19.646362, 15.384535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.041706, 19.381920, 15.574142>,  <15.902124, 19.223255, 15.687907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.041706, 19.381920, 15.574142>,  <16.274342, 19.646362, 15.384535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.041706, 19.381920, 15.574142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570411, 0.084029, 0.817050,
		-0.579988, 0.745572, 0.328232,
		-0.581588, -0.661106, 0.474018,
		15.867229, 19.183588, 15.716348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.176315, 20.295603, 15.512673>,  <16.274342, 19.646362, 15.384535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.176315, 20.295603, 15.512673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.491280, 20.541809, 15.499287>,  <16.680258, 20.689533, 15.491255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.491280, 20.541809, 15.499287>,  <16.176315, 20.295603, 15.512673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.491280, 20.541809, 15.499287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083964, -0.160882, -0.983396,
		-0.610681, 0.771528, -0.178362,
		0.787412, 0.615517, -0.033468,
		16.727503, 20.726465, 15.489246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.025810, 20.774300, 14.967269>,  <16.176315, 20.295603, 15.512673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.025810, 20.774300, 14.967269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.417343, 20.750965, 15.045740>,  <16.652264, 20.736965, 15.092823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.417343, 20.750965, 15.045740>,  <16.025810, 20.774300, 14.967269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.417343, 20.750965, 15.045740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177608, -0.234208, -0.955825,
		0.101705, 0.970435, -0.218889,
		0.978832, -0.058336, 0.196177,
		16.710993, 20.733465, 15.104593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.373276, 21.254051, 14.550865>,  <16.025810, 20.774300, 14.967269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.373276, 21.254051, 14.550865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.650650, 20.977051, 14.630453>,  <16.817076, 20.810850, 14.678205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.650650, 20.977051, 14.630453>,  <16.373276, 21.254051, 14.550865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.650650, 20.977051, 14.630453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267422, -0.009061, -0.963537,
		0.669052, 0.721361, 0.178907,
		0.693436, -0.692500, 0.198970,
		16.858681, 20.769300, 14.690145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.941965, 21.521893, 14.149652>,  <16.373276, 21.254051, 14.550865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.941965, 21.521893, 14.149652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.056957, 21.148960, 14.237391>,  <17.125952, 20.925201, 14.290034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.056957, 21.148960, 14.237391>,  <16.941965, 21.521893, 14.149652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.056957, 21.148960, 14.237391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282091, -0.136438, -0.949636,
		0.915303, 0.334877, 0.223779,
		0.287479, -0.932332, 0.219348,
		17.143202, 20.869261, 14.303195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.689266, 21.435070, 13.881021>,  <16.941965, 21.521893, 14.149652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.689266, 21.435070, 13.881021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.530720, 21.073006, 13.942434>,  <17.435591, 20.855766, 13.979282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.530720, 21.073006, 13.942434>,  <17.689266, 21.435070, 13.881021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.530720, 21.073006, 13.942434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389147, -0.317107, -0.864874,
		0.831539, -0.283060, 0.477932,
		-0.396367, -0.905163, 0.153534,
		17.411810, 20.801456, 13.988495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.175089, 21.058226, 13.583834>,  <17.689266, 21.435070, 13.881021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.175089, 21.058226, 13.583834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.843826, 20.836079, 13.614103>,  <17.645069, 20.702791, 13.632265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.843826, 20.836079, 13.614103>,  <18.175089, 21.058226, 13.583834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.843826, 20.836079, 13.614103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062887, -0.226229, -0.972042,
		0.556959, -0.800243, 0.222278,
		-0.828156, -0.555366, 0.075675,
		17.595379, 20.669470, 13.636806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.316397, 20.368107, 13.294048>,  <18.175089, 21.058226, 13.583834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.316397, 20.368107, 13.294048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.918549, 20.409382, 13.290337>,  <17.679840, 20.434147, 13.288110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.918549, 20.409382, 13.290337>,  <18.316397, 20.368107, 13.294048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.918549, 20.409382, 13.290337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019283, -0.272369, -0.962000,
		-0.101791, -0.956644, 0.272893,
		-0.994619, 0.103185, -0.009278,
		17.620163, 20.440338, 13.287553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.028042, 19.719303, 12.962363>,  <18.316397, 20.368107, 13.294048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.028042, 19.719303, 12.962363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.784061, 20.031422, 12.907080>,  <17.637674, 20.218693, 12.873909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.784061, 20.031422, 12.907080>,  <18.028042, 19.719303, 12.962363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.784061, 20.031422, 12.907080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038076, -0.203067, -0.978424,
		-0.791526, -0.591526, 0.153571,
		-0.609949, 0.780296, -0.138209,
		17.601076, 20.265511, 12.865617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.609680, 19.528275, 12.412378>,  <18.028042, 19.719303, 12.962363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.609680, 19.528275, 12.412378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.537689, 19.920723, 12.440685>,  <17.494495, 20.156193, 12.457669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.537689, 19.920723, 12.440685>,  <17.609680, 19.528275, 12.412378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.537689, 19.920723, 12.440685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106638, 0.052058, -0.992934,
		-0.977873, -0.186252, 0.095255,
		-0.179977, 0.981122, 0.070767,
		17.483696, 20.215059, 12.461915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.011572, 19.530203, 12.225101>,  <17.609680, 19.528275, 12.412378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.011572, 19.530203, 12.225101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.143005, 19.907055, 12.198496>,  <17.221865, 20.133165, 12.182532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.143005, 19.907055, 12.198496>,  <17.011572, 19.530203, 12.225101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.143005, 19.907055, 12.198496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453028, 0.095424, -0.886374,
		-0.828733, 0.321380, 0.458166,
		0.328583, 0.942130, -0.066513,
		17.241581, 20.189693, 12.178542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.509962, 19.955202, 12.023575>,  <17.011572, 19.530203, 12.225101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.509962, 19.955202, 12.023575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.834057, 20.153866, 11.899094>,  <17.028513, 20.273064, 11.824405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.834057, 20.153866, 11.899094>,  <16.509962, 19.955202, 12.023575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.834057, 20.153866, 11.899094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413891, 0.108906, -0.903788,
		-0.414981, 0.861087, 0.293802,
		0.810237, 0.496657, -0.311202,
		17.077127, 20.302862, 11.805733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218969, 20.451658, 11.594444>,  <16.509962, 19.955202, 12.023575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.218969, 20.451658, 11.594444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.606384, 20.420937, 11.499754>,  <16.838833, 20.402504, 11.442940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.606384, 20.420937, 11.499754>,  <16.218969, 20.451658, 11.594444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.606384, 20.420937, 11.499754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226310, 0.123946, -0.966137,
		0.103545, 0.989312, 0.102665,
		0.968536, -0.076804, -0.236726,
		16.896946, 20.397896, 11.428737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.299330, 21.852627, 19.379358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.666893, 21.759720, 19.251820>,  <16.887430, 21.703976, 19.175297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.666893, 21.759720, 19.251820>,  <16.299330, 21.852627, 19.379358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.666893, 21.759720, 19.251820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318737, 0.039046, -0.947039,
		0.232418, 0.971867, -0.038153,
		0.918906, -0.232270, -0.318845,
		16.942564, 21.690039, 19.156166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.357555, 22.210394, 18.760485>,  <16.299330, 21.852627, 19.379358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.357555, 22.210394, 18.760485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646576, 21.933949, 18.767223>,  <16.819988, 21.768082, 18.771267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646576, 21.933949, 18.767223>,  <16.357555, 22.210394, 18.760485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.646576, 21.933949, 18.767223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168566, -0.199759, -0.965237,
		0.670454, 0.694592, -0.260835,
		0.722549, -0.691114, 0.016845,
		16.863340, 21.726614, 18.772276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.706211, 22.389143, 18.279282>,  <16.357555, 22.210394, 18.760485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.706211, 22.389143, 18.279282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.818485, 22.007233, 18.318512>,  <16.885849, 21.778086, 18.342051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.818485, 22.007233, 18.318512>,  <16.706211, 22.389143, 18.279282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.818485, 22.007233, 18.318512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206449, -0.159848, -0.965312,
		0.937334, 0.250700, -0.241980,
		0.280684, -0.954777, 0.098074,
		16.902691, 21.720800, 18.347935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.303375, 22.339806, 17.752497>,  <16.706211, 22.389143, 18.279282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.303375, 22.339806, 17.752497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181320, 21.970169, 17.844536>,  <17.108088, 21.748386, 17.899759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181320, 21.970169, 17.844536>,  <17.303375, 22.339806, 17.752497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.181320, 21.970169, 17.844536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015165, -0.246306, -0.969073,
		0.952188, -0.292210, 0.089171,
		-0.305136, -0.924093, 0.230098,
		17.089779, 21.692942, 17.913565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.745785, 21.943424, 17.359207>,  <17.303375, 22.339806, 17.752497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.745785, 21.943424, 17.359207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.433586, 21.701820, 17.423700>,  <17.246267, 21.556858, 17.462397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.433586, 21.701820, 17.423700>,  <17.745785, 21.943424, 17.359207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.433586, 21.701820, 17.423700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150477, -0.431832, -0.889313,
		0.606779, -0.669845, 0.427933,
		-0.780497, -0.604011, 0.161231,
		17.199436, 21.520617, 17.472069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.932962, 21.221502, 17.106464>,  <17.745785, 21.943424, 17.359207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.932962, 21.221502, 17.106464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.533371, 21.218037, 17.124212>,  <17.293617, 21.215958, 17.134861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.533371, 21.218037, 17.124212>,  <17.932962, 21.221502, 17.106464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.533371, 21.218037, 17.124212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036272, -0.432159, -0.901068,
		0.026983, -0.901756, 0.431403,
		-0.998978, -0.008665, 0.044370,
		17.233677, 21.215437, 17.137524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.648535, 20.529615, 16.838894>,  <17.932962, 21.221502, 17.106464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.648535, 20.529615, 16.838894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.352791, 20.793858, 16.786816>,  <17.175344, 20.952402, 16.755569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.352791, 20.793858, 16.786816>,  <17.648535, 20.529615, 16.838894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.352791, 20.793858, 16.786816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083744, -0.282085, -0.955728,
		-0.668083, -0.695723, 0.263883,
		-0.739359, 0.660604, -0.130194,
		17.130983, 20.992039, 16.747757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.076014, 20.095850, 16.655031>,  <17.648535, 20.529615, 16.838894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.076014, 20.095850, 16.655031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.022030, 20.466141, 16.513714>,  <16.989639, 20.688314, 16.428925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.022030, 20.466141, 16.513714>,  <17.076014, 20.095850, 16.655031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.022030, 20.466141, 16.513714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124263, -0.369552, -0.920864,
		-0.983029, -0.080378, 0.164908,
		-0.134959, 0.925727, -0.353292,
		16.981543, 20.743858, 16.407726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.611433, 19.992849, 16.134863>,  <17.076014, 20.095850, 16.655031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.611433, 19.992849, 16.134863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.750385, 20.360928, 16.062675>,  <16.833755, 20.581774, 16.019363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.750385, 20.360928, 16.062675>,  <16.611433, 19.992849, 16.134863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.750385, 20.360928, 16.062675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123802, -0.145763, -0.981543,
		-0.929516, 0.363310, 0.063287,
		0.347379, 0.920195, -0.180467,
		16.854599, 20.636986, 16.008535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.977939, 19.903082, 16.296965>,  <16.611433, 19.992849, 16.134863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.977939, 19.903082, 16.296965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.914081, 19.508358, 16.286207>,  <15.875766, 19.271524, 16.279753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.914081, 19.508358, 16.286207>,  <15.977939, 19.903082, 16.296965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.914081, 19.508358, 16.286207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324112, -0.078129, 0.942787,
		-0.932451, 0.141796, 0.332309,
		-0.159646, -0.986808, -0.026894,
		15.866187, 19.212317, 16.278139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.619123, 19.723982, 16.935816>,  <15.977939, 19.903082, 16.296965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.619123, 19.723982, 16.935816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.800166, 19.397835, 16.791418>,  <15.908792, 19.202147, 16.704779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.800166, 19.397835, 16.791418>,  <15.619123, 19.723982, 16.935816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.800166, 19.397835, 16.791418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375908, -0.192638, 0.906412,
		-0.808602, -0.545952, 0.219314,
		0.452609, -0.815369, -0.360996,
		15.935949, 19.153225, 16.683119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.413463, 19.179916, 17.403612>,  <15.619123, 19.723982, 16.935816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.413463, 19.179916, 17.403612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.732533, 19.042740, 17.205177>,  <15.923976, 18.960434, 17.086117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.732533, 19.042740, 17.205177>,  <15.413463, 19.179916, 17.403612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.732533, 19.042740, 17.205177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370786, -0.369865, 0.851891,
		-0.475634, -0.863476, -0.167875,
		0.797678, -0.342943, -0.496085,
		15.971837, 18.939857, 17.056353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.433766, 18.469177, 17.631865>,  <15.413463, 19.179916, 17.403612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.433766, 18.469177, 17.631865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.799417, 18.562302, 17.499096>,  <16.018806, 18.618176, 17.419434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.799417, 18.562302, 17.499096>,  <15.433766, 18.469177, 17.631865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.799417, 18.562302, 17.499096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405089, -0.490867, 0.771332,
		0.016645, -0.839553, -0.543024,
		0.914126, 0.232812, -0.331923,
		16.073654, 18.632145, 17.399519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.888833, 17.830427, 17.685175>,  <15.433766, 18.469177, 17.631865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.888833, 17.830427, 17.685175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.128651, 18.150459, 17.693342>,  <16.272541, 18.342478, 17.698242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.128651, 18.150459, 17.693342>,  <15.888833, 17.830427, 17.685175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.128651, 18.150459, 17.693342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438688, -0.349856, 0.827740,
		0.669402, -0.487310, -0.560740,
		0.599545, 0.800081, 0.020418,
		16.308514, 18.390484, 17.699467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.520683, 17.572538, 17.823301>,  <15.888833, 17.830427, 17.685175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.520683, 17.572538, 17.823301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.624676, 17.951363, 17.898653>,  <16.687071, 18.178658, 17.943863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.624676, 17.951363, 17.898653>,  <16.520683, 17.572538, 17.823301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.624676, 17.951363, 17.898653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548520, -0.305399, 0.778369,
		0.794693, -0.099031, -0.598879,
		0.259980, 0.947061, 0.188378,
		16.702669, 18.235481, 17.955166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.316420, 17.575953, 17.823242>,  <16.520683, 17.572538, 17.823301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.316420, 17.575953, 17.823242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.161552, 17.874241, 18.040131>,  <17.068632, 18.053213, 18.170263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.161552, 17.874241, 18.040131>,  <17.316420, 17.575953, 17.823242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.161552, 17.874241, 18.040131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534938, -0.297305, 0.790854,
		0.750962, 0.596246, -0.283808,
		-0.387166, 0.745721, 0.542219,
		17.045403, 18.097958, 18.202797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.870922, 17.906328, 18.195377>,  <17.316420, 17.575953, 17.823242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.870922, 17.906328, 18.195377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.534840, 18.000179, 18.390930>,  <17.333191, 18.056490, 18.508263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.534840, 18.000179, 18.390930>,  <17.870922, 17.906328, 18.195377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.534840, 18.000179, 18.390930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455985, -0.182240, 0.871129,
		0.293485, 0.954850, 0.046133,
		-0.840205, 0.234627, 0.488882,
		17.282778, 18.070568, 18.537596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.166758, 18.370108, 18.842854>,  <17.870922, 17.906328, 18.195377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.166758, 18.370108, 18.842854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.787373, 18.272133, 18.923277>,  <17.559742, 18.213348, 18.971531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.787373, 18.272133, 18.923277>,  <18.166758, 18.370108, 18.842854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.787373, 18.272133, 18.923277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252052, -0.198568, 0.947122,
		-0.192064, 0.948987, 0.250072,
		-0.948462, -0.244939, 0.201056,
		17.502834, 18.198650, 18.983593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.120354, 18.631042, 19.500509>,  <18.166758, 18.370108, 18.842854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.120354, 18.631042, 19.500509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.809547, 18.380672, 19.473766>,  <17.623064, 18.230452, 19.457722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.809547, 18.380672, 19.473766>,  <18.120354, 18.631042, 19.500509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.809547, 18.380672, 19.473766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066905, -0.187724, 0.979940,
		-0.625918, 0.756954, 0.187742,
		-0.777014, -0.625923, -0.066856,
		17.576443, 18.192896, 19.453709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.746571, 18.844893, 20.011410>,  <18.120354, 18.631042, 19.500509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.746571, 18.844893, 20.011410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.600060, 18.477104, 19.954252>,  <17.512154, 18.256432, 19.919958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.600060, 18.477104, 19.954252>,  <17.746571, 18.844893, 20.011410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.600060, 18.477104, 19.954252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118004, -0.198223, 0.973028,
		-0.922994, 0.339535, 0.181105,
		-0.366276, -0.919469, -0.142892,
		17.490177, 18.201263, 19.911385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.287319, 18.688824, 20.574116>,  <17.746571, 18.844893, 20.011410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.287319, 18.688824, 20.574116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.375790, 18.325905, 20.431067>,  <17.428871, 18.108154, 20.345236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.375790, 18.325905, 20.431067>,  <17.287319, 18.688824, 20.574116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.375790, 18.325905, 20.431067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159221, -0.328192, 0.931096,
		-0.962149, -0.262878, 0.071872,
		0.221177, -0.907296, -0.357625,
		17.442142, 18.053717, 20.323778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.832800, 18.269232, 20.958094>,  <17.287319, 18.688824, 20.574116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.832800, 18.269232, 20.958094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.112564, 18.026436, 20.807158>,  <17.280422, 17.880758, 20.716595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.112564, 18.026436, 20.807158>,  <16.832800, 18.269232, 20.958094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.112564, 18.026436, 20.807158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153766, -0.387803, 0.908826,
		-0.697984, -0.693665, -0.177898,
		0.699410, -0.606991, -0.377342,
		17.322388, 17.844339, 20.693954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.659527, 17.618723, 21.169811>,  <16.832800, 18.269232, 20.958094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.659527, 17.618723, 21.169811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.050831, 17.635979, 21.088671>,  <17.285612, 17.646332, 21.039986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.050831, 17.635979, 21.088671>,  <16.659527, 17.618723, 21.169811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.050831, 17.635979, 21.088671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207198, -0.161552, 0.964868,
		0.008855, -0.985921, -0.166978,
		0.978259, 0.043141, -0.202851,
		17.344309, 17.648920, 21.027815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<23.984863, 20.621107, 20.917320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.596191, 20.714478, 20.932041>,  <23.362989, 20.770500, 20.940874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.596191, 20.714478, 20.932041>,  <23.984863, 20.621107, 20.917320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.596191, 20.714478, 20.932041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043786, -0.024809, -0.998733,
		-0.232219, -0.972057, 0.034327,
		-0.971677, 0.233428, 0.036802,
		23.304688, 20.784506, 20.943081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.742086, 20.175041, 20.496084>,  <23.984863, 20.621107, 20.917320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.742086, 20.175041, 20.496084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.489315, 20.484840, 20.507566>,  <23.337652, 20.670719, 20.514456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.489315, 20.484840, 20.507566>,  <23.742086, 20.175041, 20.496084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.489315, 20.484840, 20.507566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109413, -0.052481, -0.992610,
		-0.767267, -0.630397, 0.117904,
		-0.631926, 0.774497, 0.028707,
		23.299738, 20.717190, 20.516178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.116726, 19.999516, 20.222818>,  <23.742086, 20.175041, 20.496084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.116726, 19.999516, 20.222818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.130783, 20.397350, 20.183699>,  <23.139217, 20.636051, 20.160227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.130783, 20.397350, 20.183699>,  <23.116726, 19.999516, 20.222818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.130783, 20.397350, 20.183699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193509, -0.089235, -0.977032,
		-0.980469, 0.053259, 0.189326,
		0.035142, 0.994586, -0.097798,
		23.141325, 20.695726, 20.154360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.721582, 20.037273, 19.712872>,  <23.116726, 19.999516, 20.222818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.721582, 20.037273, 19.712872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.863323, 20.411301, 19.716555>,  <22.948368, 20.635717, 19.718765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.863323, 20.411301, 19.716555>,  <22.721582, 20.037273, 19.712872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.863323, 20.411301, 19.716555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180518, 0.078064, -0.980469,
		-0.917524, 0.345767, 0.196458,
		0.354350, 0.935068, 0.009209,
		22.969627, 20.691820, 19.719316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.185349, 20.494003, 19.522551>,  <22.721582, 20.037273, 19.712872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.185349, 20.494003, 19.522551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.536869, 20.662544, 19.432955>,  <22.747782, 20.763670, 19.379198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.536869, 20.662544, 19.432955>,  <22.185349, 20.494003, 19.522551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.536869, 20.662544, 19.432955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284297, 0.085312, -0.954933,
		-0.383257, 0.902874, 0.194762,
		0.878800, 0.421355, -0.223987,
		22.800508, 20.788950, 19.365759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.094101, 21.013218, 19.070789>,  <22.185349, 20.494003, 19.522551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.094101, 21.013218, 19.070789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.486706, 20.970776, 19.007072>,  <22.722269, 20.945311, 18.968842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.486706, 20.970776, 19.007072>,  <22.094101, 21.013218, 19.070789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.486706, 20.970776, 19.007072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141296, 0.159713, -0.976999,
		0.129109, 0.981444, 0.141768,
		0.981512, -0.106108, -0.159295,
		22.781160, 20.938944, 18.959284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.134766, 21.411533, 18.502790>,  <22.094101, 21.013218, 19.070789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.134766, 21.411533, 18.502790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.493629, 21.234886, 18.506287>,  <22.708948, 21.128899, 18.508385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.493629, 21.234886, 18.506287>,  <22.134766, 21.411533, 18.502790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.493629, 21.234886, 18.506287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018213, 0.017209, -0.999686,
		0.441328, 0.897039, 0.023483,
		0.897161, -0.441617, 0.008743,
		22.762777, 21.102402, 18.508909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.676897, 21.883862, 18.119944>,  <22.134766, 21.411533, 18.502790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.676897, 21.883862, 18.119944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.782917, 21.498295, 18.110069>,  <22.846529, 21.266954, 18.104145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.782917, 21.498295, 18.110069>,  <22.676897, 21.883862, 18.119944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.782917, 21.498295, 18.110069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103992, -0.003125, -0.994573,
		0.958610, 0.266181, -0.101068,
		0.265052, -0.963918, -0.024685,
		22.862432, 21.209120, 18.102663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.262724, 21.767742, 17.681997>,  <22.676897, 21.883862, 18.119944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.262724, 21.767742, 17.681997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.131454, 21.391838, 17.720270>,  <23.052692, 21.166296, 17.743235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.131454, 21.391838, 17.720270>,  <23.262724, 21.767742, 17.681997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.131454, 21.391838, 17.720270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081408, -0.129054, -0.988290,
		0.941103, -0.316541, 0.118856,
		-0.328173, -0.939759, 0.095684,
		23.033003, 21.109911, 17.748976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.560888, 21.448788, 17.089716>,  <23.262724, 21.767742, 17.681997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.560888, 21.448788, 17.089716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.291252, 21.186203, 17.225164>,  <23.129471, 21.028652, 17.306433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.291252, 21.186203, 17.225164>,  <23.560888, 21.448788, 17.089716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.291252, 21.186203, 17.225164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308300, -0.166544, -0.936597,
		0.671235, -0.735746, -0.090122,
		-0.674088, -0.656461, 0.338621,
		23.089025, 20.989265, 17.326750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.679422, 20.901346, 16.774605>,  <23.560888, 21.448788, 17.089716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.679422, 20.901346, 16.774605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.293232, 20.873093, 16.874895>,  <23.061518, 20.856140, 16.935070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.293232, 20.873093, 16.874895>,  <23.679422, 20.901346, 16.774605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.293232, 20.873093, 16.874895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251375, 0.000292, -0.967890,
		0.068297, -0.997502, -0.018039,
		-0.965477, -0.070638, 0.250727,
		23.003590, 20.851902, 16.950113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.394144, 20.389132, 16.297453>,  <23.679422, 20.901346, 16.774605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.394144, 20.389132, 16.297453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.081402, 20.595371, 16.437656>,  <22.893757, 20.719114, 16.521778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.081402, 20.595371, 16.437656>,  <23.394144, 20.389132, 16.297453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.081402, 20.595371, 16.437656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412965, -0.007109, -0.910719,
		-0.467075, -0.856800, 0.218483,
		-0.781857, 0.515600, 0.350508,
		22.846844, 20.750051, 16.542809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.769421, 19.970238, 16.120022>,  <23.394144, 20.389132, 16.297453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.769421, 19.970238, 16.120022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.694084, 20.360523, 16.164768>,  <22.648882, 20.594694, 16.191616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.694084, 20.360523, 16.164768>,  <22.769421, 19.970238, 16.120022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.694084, 20.360523, 16.164768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393521, 0.029386, -0.918846,
		-0.899816, -0.217078, 0.378429,
		-0.188341, 0.975712, 0.111866,
		22.637583, 20.653236, 16.198328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.075972, 19.999550, 15.910000>,  <22.769421, 19.970238, 16.120022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.075972, 19.999550, 15.910000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.226673, 20.368763, 15.878849>,  <22.317095, 20.590290, 15.860158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.226673, 20.368763, 15.878849>,  <22.075972, 19.999550, 15.910000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.226673, 20.368763, 15.878849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354596, 0.066043, -0.932685,
		-0.855756, 0.379009, 0.352186,
		0.376755, 0.923033, -0.077878,
		22.339699, 20.645674, 15.855486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.482632, 19.546844, 15.796441>,  <22.075972, 19.999550, 15.910000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.482632, 19.546844, 15.796441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.493320, 19.151997, 15.733341>,  <21.499735, 18.915089, 15.695481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.493320, 19.151997, 15.733341>,  <21.482632, 19.546844, 15.796441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.493320, 19.151997, 15.733341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271475, -0.144708, 0.951505,
		-0.962074, -0.068253, 0.264111,
		0.026724, -0.987118, -0.157749,
		21.501337, 18.855862, 15.686016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.235449, 19.223021, 16.441807>,  <21.482632, 19.546844, 15.796441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.235449, 19.223021, 16.441807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.435219, 18.932610, 16.252720>,  <21.555080, 18.758364, 16.139269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.435219, 18.932610, 16.252720>,  <21.235449, 19.223021, 16.441807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.435219, 18.932610, 16.252720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397857, -0.292497, 0.869572,
		-0.769601, -0.622358, 0.142774,
		0.499424, -0.726027, -0.472716,
		21.585047, 18.714802, 16.110905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.135530, 18.695883, 16.923634>,  <21.235449, 19.223021, 16.441807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.135530, 18.695883, 16.923634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.422672, 18.564026, 16.678352>,  <21.594957, 18.484911, 16.531183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.422672, 18.564026, 16.678352>,  <21.135530, 18.695883, 16.923634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.422672, 18.564026, 16.678352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352515, -0.587428, 0.728465,
		-0.600342, -0.739099, -0.305488,
		0.717860, -0.329639, -0.613201,
		21.638029, 18.465134, 16.494392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.210381, 17.998795, 17.071106>,  <21.135530, 18.695883, 16.923634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.210381, 17.998795, 17.071106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.552422, 18.111603, 16.897087>,  <21.757647, 18.179289, 16.792677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.552422, 18.111603, 16.897087>,  <21.210381, 17.998795, 17.071106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.552422, 18.111603, 16.897087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514488, -0.565237, 0.644833,
		-0.064047, -0.775223, -0.628432,
		0.855102, 0.282022, -0.435045,
		21.808952, 18.196209, 16.766573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.654770, 17.392735, 17.059698>,  <21.210381, 17.998795, 17.071106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.654770, 17.392735, 17.059698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.863426, 17.733524, 17.041681>,  <21.988619, 17.937998, 17.030870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.863426, 17.733524, 17.041681>,  <21.654770, 17.392735, 17.059698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.863426, 17.733524, 17.041681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582219, -0.316891, 0.748733,
		0.623630, -0.416793, -0.661340,
		0.521639, 0.851976, -0.045042,
		22.019918, 17.989117, 17.028170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.291597, 17.121719, 17.314032>,  <21.654770, 17.392735, 17.059698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.291597, 17.121719, 17.314032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.330204, 17.519581, 17.328705>,  <22.353369, 17.758299, 17.337509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.330204, 17.519581, 17.328705>,  <22.291597, 17.121719, 17.314032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.330204, 17.519581, 17.328705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528750, -0.082462, 0.844762,
		0.843272, -0.062137, -0.533883,
		0.096516, 0.994655, 0.036683,
		22.359159, 17.817978, 17.339710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.937016, 17.346897, 17.702719>,  <22.291597, 17.121719, 17.314032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.937016, 17.346897, 17.702719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.687176, 17.658176, 17.728895>,  <22.537271, 17.844944, 17.744600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.687176, 17.658176, 17.728895>,  <22.937016, 17.346897, 17.702719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.687176, 17.658176, 17.728895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053642, -0.040848, 0.997724,
		0.779099, 0.626690, -0.016230,
		-0.624601, 0.778197, 0.065441,
		22.499796, 17.891636, 17.748528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.182934, 18.043041, 18.133312>,  <22.937016, 17.346897, 17.702719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.182934, 18.043041, 18.133312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.785412, 18.086792, 18.141188>,  <22.546898, 18.113043, 18.145912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.785412, 18.086792, 18.141188>,  <23.182934, 18.043041, 18.133312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.785412, 18.086792, 18.141188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052363, 0.304584, 0.951045,
		0.098028, 0.946184, -0.308425,
		-0.993805, 0.109379, 0.019687,
		22.487270, 18.119606, 18.147095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.139116, 18.592455, 18.633038>,  <23.182934, 18.043041, 18.133312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.139116, 18.592455, 18.633038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.776550, 18.425255, 18.608749>,  <22.559011, 18.324934, 18.594177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.776550, 18.425255, 18.608749>,  <23.139116, 18.592455, 18.633038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.776550, 18.425255, 18.608749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109467, 0.093625, 0.989571,
		-0.407957, 0.903609, -0.130620,
		-0.906415, -0.418002, -0.060720,
		22.504625, 18.299854, 18.590534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.674526, 19.006609, 19.036041>,  <23.139116, 18.592455, 18.633038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.674526, 19.006609, 19.036041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.479675, 18.658218, 19.010410>,  <22.362764, 18.449184, 18.995031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.479675, 18.658218, 19.010410>,  <22.674526, 19.006609, 19.036041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.479675, 18.658218, 19.010410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094097, -0.020601, 0.995350,
		-0.868247, 0.490891, -0.071921,
		-0.487127, -0.870977, -0.064078,
		22.333538, 18.396925, 18.991186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.977436, 19.054626, 19.302998>,  <22.674526, 19.006609, 19.036041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.977436, 19.054626, 19.302998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.016148, 18.656937, 19.321562>,  <22.039375, 18.418324, 19.332701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.016148, 18.656937, 19.321562>,  <21.977436, 19.054626, 19.302998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.016148, 18.656937, 19.321562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126273, 0.033985, 0.991413,
		-0.987263, -0.101809, -0.122255,
		0.096780, -0.994223, 0.046408,
		22.045181, 18.358669, 19.335484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.378555, 18.684669, 19.475889>,  <21.977436, 19.054626, 19.302998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.378555, 18.684669, 19.475889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.698318, 18.470490, 19.584879>,  <21.890177, 18.341982, 19.650272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.698318, 18.470490, 19.584879>,  <21.378555, 18.684669, 19.475889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.698318, 18.470490, 19.584879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172096, 0.230438, 0.957748,
		-0.575616, -0.812521, 0.092065,
		0.799406, -0.535451, 0.272476,
		21.938141, 18.309855, 19.666622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.185795, 18.350817, 20.088573>,  <21.378555, 18.684669, 19.475889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.185795, 18.350817, 20.088573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.585129, 18.329754, 20.097982>,  <21.824730, 18.317116, 20.103628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.585129, 18.329754, 20.097982>,  <21.185795, 18.350817, 20.088573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.585129, 18.329754, 20.097982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025971, -0.046276, 0.998591,
		-0.051482, -0.997541, -0.047566,
		0.998336, -0.052645, 0.023525,
		21.884630, 18.313957, 20.105040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.416773, 17.694586, 20.374170>,  <21.185795, 18.350817, 20.088573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.416773, 17.694586, 20.374170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.712269, 17.958660, 20.428450>,  <21.889566, 18.117105, 20.461018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.712269, 17.958660, 20.428450>,  <21.416773, 17.694586, 20.374170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.712269, 17.958660, 20.428450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036230, -0.239940, 0.970111,
		0.673015, -0.711745, -0.201172,
		0.738741, 0.660188, 0.135697,
		21.933891, 18.156717, 20.469158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.345974, 16.812397, 20.336103>,  <21.416773, 17.694586, 20.374170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.345974, 16.812397, 20.336103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.989113, 16.692165, 20.470991>,  <20.774996, 16.620026, 20.551924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.989113, 16.692165, 20.470991>,  <21.345974, 16.812397, 20.336103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.989113, 16.692165, 20.470991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314017, -0.123985, -0.941287,
		0.324743, -0.945663, 0.016226,
		-0.892152, -0.300581, 0.337217,
		20.721468, 16.601992, 20.572157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.176418, 16.233654, 19.855652>,  <21.345974, 16.812397, 20.336103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.176418, 16.233654, 19.855652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.828377, 16.326427, 20.029606>,  <20.619553, 16.382092, 20.133978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.828377, 16.326427, 20.029606>,  <21.176418, 16.233654, 19.855652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.828377, 16.326427, 20.029606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476746, -0.172224, -0.862005,
		-0.125024, -0.957366, 0.260423,
		-0.870105, 0.231927, 0.434888,
		20.567345, 16.396008, 20.160072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.630680, 15.801067, 19.586891>,  <21.176418, 16.233654, 19.855652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.630680, 15.801067, 19.586891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.410328, 16.081329, 19.768269>,  <20.278116, 16.249487, 19.877094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.410328, 16.081329, 19.768269>,  <20.630680, 15.801067, 19.586891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.410328, 16.081329, 19.768269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593045, 0.053648, -0.803380,
		-0.587219, -0.711479, 0.385967,
		-0.550882, 0.700656, 0.453442,
		20.245064, 16.291527, 19.904301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.979820, 15.519390, 19.493429>,  <20.630680, 15.801067, 19.586891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.979820, 15.519390, 19.493429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.931690, 15.908581, 19.572260>,  <19.902813, 16.142096, 19.619558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.931690, 15.908581, 19.572260>,  <19.979820, 15.519390, 19.493429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.931690, 15.908581, 19.572260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744033, 0.043039, -0.666756,
		-0.657220, -0.226858, 0.718748,
		-0.120325, 0.972976, 0.197076,
		19.895594, 16.200474, 19.631382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.164360, 15.580877, 19.666098>,  <19.979820, 15.519390, 19.493429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.164360, 15.580877, 19.666098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.367493, 15.896973, 19.528908>,  <19.489372, 16.086630, 19.446594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.367493, 15.896973, 19.528908>,  <19.164360, 15.580877, 19.666098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.367493, 15.896973, 19.528908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627235, 0.066284, -0.776005,
		-0.590495, 0.609204, 0.529326,
		0.507831, 0.790238, -0.342973,
		19.519842, 16.134045, 19.426016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.707964, 16.053381, 19.413891>,  <19.164360, 15.580877, 19.666098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.707964, 16.053381, 19.413891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.029263, 16.214157, 19.238052>,  <19.222042, 16.310623, 19.132549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.029263, 16.214157, 19.238052>,  <18.707964, 16.053381, 19.413891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.029263, 16.214157, 19.238052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561152, 0.263117, -0.784779,
		-0.199768, 0.877049, 0.436895,
		0.803244, 0.401938, -0.439596,
		19.270235, 16.334738, 19.106174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.492743, 16.779982, 19.162468>,  <18.707964, 16.053381, 19.413891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.492743, 16.779982, 19.162468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.806328, 16.662292, 18.943806>,  <18.994478, 16.591679, 18.812609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.806328, 16.662292, 18.943806>,  <18.492743, 16.779982, 19.162468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.806328, 16.662292, 18.943806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498300, 0.226962, -0.836771,
		0.370268, 0.928397, 0.031319,
		0.783964, -0.294223, -0.546657,
		19.041517, 16.574026, 18.779808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.611914, 17.348824, 18.595263>,  <18.492743, 16.779982, 19.162468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.611914, 17.348824, 18.595263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.813789, 17.026489, 18.471380>,  <18.934916, 16.833090, 18.397051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.813789, 17.026489, 18.471380>,  <18.611914, 17.348824, 18.595263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.813789, 17.026489, 18.471380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389984, 0.107247, -0.914555,
		0.770195, 0.582348, -0.260136,
		0.504691, -0.805834, -0.309707,
		18.965197, 16.784739, 18.378468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.947905, 17.487848, 17.985928>,  <18.611914, 17.348824, 18.595263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.947905, 17.487848, 17.985928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.935444, 17.088314, 17.971189>,  <18.927967, 16.848593, 17.962347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.935444, 17.088314, 17.971189>,  <18.947905, 17.487848, 17.985928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.935444, 17.088314, 17.971189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298917, 0.044487, -0.953242,
		0.953771, -0.018681, -0.299954,
		-0.031152, -0.998835, -0.036846,
		18.926098, 16.788664, 17.960136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.192453, 17.328798, 17.288433>,  <18.947905, 17.487848, 17.985928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.192453, 17.328798, 17.288433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.000393, 17.008362, 17.431377>,  <18.885157, 16.816099, 17.517145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.000393, 17.008362, 17.431377>,  <19.192453, 17.328798, 17.288433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.000393, 17.008362, 17.431377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399873, -0.162710, -0.902013,
		0.780741, -0.576002, -0.242209,
		-0.480152, -0.801091, 0.357362,
		18.856348, 16.768034, 17.538586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.468596, 16.831793, 16.841101>,  <19.192453, 17.328798, 17.288433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.468596, 16.831793, 16.841101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.131702, 16.688469, 17.002224>,  <18.929565, 16.602474, 17.098898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.131702, 16.688469, 17.002224>,  <19.468596, 16.831793, 16.841101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.131702, 16.688469, 17.002224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365927, -0.168741, -0.915218,
		0.395905, -0.918226, 0.011004,
		-0.842233, -0.358312, 0.402809,
		18.879032, 16.580975, 17.123066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.360340, 16.265995, 16.535603>,  <19.468596, 16.831793, 16.841101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.360340, 16.265995, 16.535603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.002102, 16.375256, 16.676058>,  <18.787159, 16.440813, 16.760330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.002102, 16.375256, 16.676058>,  <19.360340, 16.265995, 16.535603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.002102, 16.375256, 16.676058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388674, -0.096441, -0.916314,
		-0.216431, -0.957124, 0.192540,
		-0.895595, 0.273154, 0.351136,
		18.733423, 16.457201, 16.781399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.831818, 15.750760, 16.274429>,  <19.360340, 16.265995, 16.535603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.831818, 15.750760, 16.274429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.653168, 16.095268, 16.371374>,  <18.545979, 16.301973, 16.429541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.653168, 16.095268, 16.371374>,  <18.831818, 15.750760, 16.274429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.653168, 16.095268, 16.371374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401132, 0.049382, -0.914688,
		-0.799763, -0.505740, 0.323428,
		-0.446623, 0.861271, 0.242362,
		18.519180, 16.353649, 16.444082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.143328, 15.697039, 16.086647>,  <18.831818, 15.750760, 16.274429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.143328, 15.697039, 16.086647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.195435, 16.093285, 16.103197>,  <18.226698, 16.331032, 16.113127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.195435, 16.093285, 16.103197>,  <18.143328, 15.697039, 16.086647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.195435, 16.093285, 16.103197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454422, 0.096742, -0.885517,
		-0.881210, 0.096553, 0.462760,
		0.130267, 0.990615, 0.041374,
		18.234514, 16.390469, 16.115610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<16.893171, 17.005529, 21.502907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.209278, 17.246544, 21.458313>,  <17.398943, 17.391151, 21.431557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.209278, 17.246544, 21.458313>,  <16.893171, 17.005529, 21.502907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.209278, 17.246544, 21.458313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222482, -0.112620, 0.968410,
		0.570945, -0.790107, -0.223054,
		0.790268, 0.602535, -0.111485,
		17.446358, 17.427303, 21.424868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.534998, 16.619123, 21.568701>,  <16.893171, 17.005529, 21.502907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.534998, 16.619123, 21.568701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.648602, 17.000591, 21.608414>,  <17.716763, 17.229471, 21.632242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.648602, 17.000591, 21.608414>,  <17.534998, 16.619123, 21.568701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.648602, 17.000591, 21.608414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375886, -0.206001, 0.903478,
		0.882071, -0.219275, -0.416977,
		0.284008, 0.953668, 0.099284,
		17.733805, 17.286692, 21.638199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.236700, 16.604958, 21.838057>,  <17.534998, 16.619123, 21.568701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.236700, 16.604958, 21.838057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.117222, 16.976658, 21.925030>,  <18.045534, 17.199678, 21.977215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.117222, 16.976658, 21.925030>,  <18.236700, 16.604958, 21.838057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.117222, 16.976658, 21.925030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350111, -0.105254, 0.930776,
		0.887808, 0.354145, -0.293902,
		-0.298695, 0.929249, 0.217435,
		18.027613, 17.255432, 21.990261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.735607, 16.903631, 22.311604>,  <18.236700, 16.604958, 21.838057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.735607, 16.903631, 22.311604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.436714, 17.162880, 22.370367>,  <18.257378, 17.318428, 22.405626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.436714, 17.162880, 22.370367>,  <18.735607, 16.903631, 22.311604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.436714, 17.162880, 22.370367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293675, 0.123732, 0.947864,
		0.596152, 0.751419, -0.282793,
		-0.747233, 0.648120, 0.146910,
		18.212543, 17.357315, 22.414440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.041634, 17.492441, 22.749483>,  <18.735607, 16.903631, 22.311604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.041634, 17.492441, 22.749483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.644051, 17.508209, 22.790457>,  <18.405500, 17.517670, 22.815041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.644051, 17.508209, 22.790457>,  <19.041634, 17.492441, 22.749483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.644051, 17.508209, 22.790457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096327, -0.134075, 0.986278,
		0.052612, 0.990187, 0.129468,
		-0.993958, 0.039419, 0.102436,
		18.345863, 17.520035, 22.821188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.979637, 17.957928, 23.353020>,  <19.041634, 17.492441, 22.749483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.979637, 17.957928, 23.353020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.628201, 17.772125, 23.308638>,  <18.417339, 17.660645, 23.282007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.628201, 17.772125, 23.308638>,  <18.979637, 17.957928, 23.353020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.628201, 17.772125, 23.308638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083003, -0.080274, 0.993311,
		-0.470307, 0.881924, 0.031973,
		-0.878591, -0.464507, -0.110956,
		18.364624, 17.632772, 23.275351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.473171, 18.278530, 23.655973>,  <18.979637, 17.957928, 23.353020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.473171, 18.278530, 23.655973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.349648, 17.898102, 23.651983>,  <18.275534, 17.669846, 23.649590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.349648, 17.898102, 23.651983>,  <18.473171, 18.278530, 23.655973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.349648, 17.898102, 23.651983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041124, -0.023831, 0.998870,
		-0.950234, 0.308052, 0.046471,
		-0.308812, -0.951071, -0.009977,
		18.257004, 17.612780, 23.648991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.990765, 18.302053, 24.206156>,  <18.473171, 18.278530, 23.655973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.990765, 18.302053, 24.206156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.088062, 17.922401, 24.126175>,  <18.146441, 17.694611, 24.078186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.088062, 17.922401, 24.126175>,  <17.990765, 18.302053, 24.206156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.088062, 17.922401, 24.126175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099251, -0.180705, 0.978517,
		-0.964874, -0.257863, 0.050247,
		0.243244, -0.949132, -0.199951,
		18.161036, 17.637661, 24.066189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.586441, 17.863852, 24.637039>,  <17.990765, 18.302053, 24.206156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.586441, 17.863852, 24.637039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.893414, 17.632366, 24.526663>,  <18.077597, 17.493475, 24.460438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.893414, 17.632366, 24.526663>,  <17.586441, 17.863852, 24.637039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.893414, 17.632366, 24.526663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138647, -0.270408, 0.952710,
		-0.625962, -0.769396, -0.127283,
		0.767430, -0.578713, -0.275940,
		18.123642, 17.458752, 24.443880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.567627, 17.253304, 25.052435>,  <17.586441, 17.863852, 24.637039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.567627, 17.253304, 25.052435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.935589, 17.257183, 24.895628>,  <18.156366, 17.259510, 24.801544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.935589, 17.257183, 24.895628>,  <17.567627, 17.253304, 25.052435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.935589, 17.257183, 24.895628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374881, -0.315063, 0.871894,
		-0.115053, -0.949021, -0.293465,
		0.919906, 0.009700, -0.392019,
		18.211561, 17.260092, 24.778023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.888426, 16.753550, 25.397844>,  <17.567627, 17.253304, 25.052435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.888426, 16.753550, 25.397844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.204769, 16.950809, 25.252874>,  <18.394575, 17.069164, 25.165894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.204769, 16.950809, 25.252874>,  <17.888426, 16.753550, 25.397844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.204769, 16.950809, 25.252874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458826, -0.085877, 0.884367,
		0.405000, -0.865696, -0.294185,
		0.790856, 0.493148, -0.362424,
		18.442026, 17.098753, 25.144148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.420021, 16.497364, 25.813221>,  <17.888426, 16.753550, 25.397844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.420021, 16.497364, 25.813221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.551880, 16.840820, 25.656214>,  <18.630995, 17.046894, 25.562010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.551880, 16.840820, 25.656214>,  <18.420021, 16.497364, 25.813221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.551880, 16.840820, 25.656214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658584, 0.088758, 0.747255,
		0.676462, -0.504837, -0.536227,
		0.329648, 0.858639, -0.392519,
		18.650774, 17.098412, 25.538458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.192839, 16.336102, 25.656246>,  <18.420021, 16.497364, 25.813221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.192839, 16.336102, 25.656246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.085979, 16.712795, 25.737999>,  <19.021864, 16.938810, 25.787050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.085979, 16.712795, 25.737999>,  <19.192839, 16.336102, 25.656246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.085979, 16.712795, 25.737999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663999, 0.026185, 0.747275,
		0.698381, 0.335343, -0.632304,
		-0.267150, 0.941732, 0.204380,
		19.005835, 16.995316, 25.799313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.803898, 16.744598, 25.812048>,  <19.192839, 16.336102, 25.656246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.803898, 16.744598, 25.812048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.483181, 16.928043, 25.965311>,  <19.290751, 17.038111, 26.057268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.483181, 16.928043, 25.965311>,  <19.803898, 16.744598, 25.812048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.483181, 16.928043, 25.965311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537182, 0.272154, 0.798353,
		0.261856, 0.845936, -0.464568,
		-0.801790, 0.458611, 0.383156,
		19.242643, 17.065626, 26.080257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.026825, 16.124479, 25.664497>,  <19.803898, 16.744598, 25.812048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.026825, 16.124479, 25.664497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.422390, 16.086872, 25.710482>,  <20.659729, 16.064308, 25.738071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.422390, 16.086872, 25.710482>,  <20.026825, 16.124479, 25.664497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.422390, 16.086872, 25.710482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116327, 0.009158, -0.993169,
		0.092325, 0.995528, 0.019993,
		0.988911, -0.094020, 0.114961,
		20.719063, 16.058666, 25.744970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.398354, 16.564716, 25.280436>,  <20.026825, 16.124479, 25.664497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.398354, 16.564716, 25.280436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.636013, 16.248356, 25.339035>,  <20.778608, 16.058538, 25.374195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.636013, 16.248356, 25.339035>,  <20.398354, 16.564716, 25.280436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.636013, 16.248356, 25.339035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202802, -0.028952, -0.978792,
		0.778370, 0.611257, 0.143195,
		0.594148, -0.790902, 0.146500,
		20.814257, 16.011086, 25.382984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.872702, 16.649481, 24.807497>,  <20.398354, 16.564716, 25.280436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.872702, 16.649481, 24.807497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.902527, 16.260704, 24.896732>,  <20.920422, 16.027437, 24.950274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.902527, 16.260704, 24.896732>,  <20.872702, 16.649481, 24.807497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.902527, 16.260704, 24.896732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153529, -0.209855, -0.965603,
		0.985327, 0.106247, 0.133575,
		0.074561, -0.971943, 0.223088,
		20.924894, 15.969121, 24.963659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.521246, 16.441826, 24.602699>,  <20.872702, 16.649481, 24.807497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.521246, 16.441826, 24.602699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.336601, 16.089100, 24.641310>,  <21.225815, 15.877464, 24.664476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.336601, 16.089100, 24.641310>,  <21.521246, 16.441826, 24.602699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.336601, 16.089100, 24.641310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267475, -0.242110, -0.932652,
		0.845797, -0.404703, 0.347625,
		-0.461611, -0.881815, 0.096528,
		21.198118, 15.824555, 24.670269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.023071, 15.899511, 24.474932>,  <21.521246, 16.441826, 24.602699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.023071, 15.899511, 24.474932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.651840, 15.772133, 24.397715>,  <21.429102, 15.695705, 24.351383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.651840, 15.772133, 24.397715>,  <22.023071, 15.899511, 24.474932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.651840, 15.772133, 24.397715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262972, -0.193401, -0.945220,
		0.263667, -0.928002, 0.263234,
		-0.928076, -0.318447, -0.193045,
		21.373417, 15.676599, 24.339802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.142010, 15.374762, 23.960796>,  <22.023071, 15.899511, 24.474932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.142010, 15.374762, 23.960796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.762661, 15.501564, 23.964811>,  <21.535051, 15.577645, 23.967220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.762661, 15.501564, 23.964811>,  <22.142010, 15.374762, 23.960796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.762661, 15.501564, 23.964811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033867, -0.069751, -0.996989,
		-0.315351, -0.945855, 0.076886,
		-0.948370, 0.317006, 0.010037,
		21.478149, 15.596665, 23.967823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.901693, 14.837234, 23.538105>,  <22.142010, 15.374762, 23.960796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.901693, 14.837234, 23.538105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.622356, 15.123001, 23.555666>,  <21.454754, 15.294461, 23.566202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.622356, 15.123001, 23.555666>,  <21.901693, 14.837234, 23.538105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.622356, 15.123001, 23.555666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172119, -0.108075, -0.979130,
		-0.694763, -0.691322, 0.198438,
		-0.698341, 0.714418, 0.043903,
		21.412855, 15.337326, 23.568836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.343828, 14.677388, 22.969608>,  <21.901693, 14.837234, 23.538105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.343828, 14.677388, 22.969608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.302227, 15.069492, 23.036865>,  <21.277267, 15.304755, 23.077219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.302227, 15.069492, 23.036865>,  <21.343828, 14.677388, 22.969608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.302227, 15.069492, 23.036865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387169, 0.115819, -0.914705,
		-0.916124, -0.160229, 0.367482,
		-0.104001, 0.980261, 0.168140,
		21.271027, 15.363571, 23.087307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.601807, 14.922862, 22.730690>,  <21.343828, 14.677388, 22.969608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.601807, 14.922862, 22.730690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.832935, 15.248943, 22.746519>,  <20.971613, 15.444592, 22.756016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.832935, 15.248943, 22.746519>,  <20.601807, 14.922862, 22.730690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.832935, 15.248943, 22.746519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307486, 0.262349, -0.914672,
		-0.756027, 0.516348, 0.402255,
		0.577820, 0.815204, 0.039573,
		21.006281, 15.493505, 22.758390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.146437, 15.412892, 22.484650>,  <20.601807, 14.922862, 22.730690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.146437, 15.412892, 22.484650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.509827, 15.576641, 22.450970>,  <20.727861, 15.674891, 22.430761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.509827, 15.576641, 22.450970>,  <20.146437, 15.412892, 22.484650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.509827, 15.576641, 22.450970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217070, 0.290013, -0.932080,
		-0.357149, 0.865047, 0.352332,
		0.908474, 0.409372, -0.084198,
		20.782370, 15.699452, 22.425711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.021774, 16.164759, 22.318058>,  <20.146437, 15.412892, 22.484650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.021774, 16.164759, 22.318058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.401531, 16.086384, 22.219866>,  <20.629385, 16.039360, 22.160950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.401531, 16.086384, 22.219866>,  <20.021774, 16.164759, 22.318058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.401531, 16.086384, 22.219866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132933, 0.457450, -0.879243,
		0.284569, 0.867380, 0.408254,
		0.949394, -0.195935, -0.245480,
		20.686350, 16.027603, 22.146221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.114450, 16.763506, 22.029596>,  <20.021774, 16.164759, 22.318058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.114450, 16.763506, 22.029596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.383923, 16.495308, 21.905279>,  <20.545607, 16.334389, 21.830688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.383923, 16.495308, 21.905279>,  <20.114450, 16.763506, 22.029596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.383923, 16.495308, 21.905279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159816, 0.278418, -0.947070,
		0.721536, 0.687692, 0.080408,
		0.673680, -0.670495, -0.310793,
		20.586027, 16.294159, 21.812042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.592096, 17.178215, 21.556833>,  <20.114450, 16.763506, 22.029596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.592096, 17.178215, 21.556833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.624542, 16.789700, 21.467375>,  <20.644009, 16.556589, 21.413700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.624542, 16.789700, 21.467375>,  <20.592096, 17.178215, 21.556833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.624542, 16.789700, 21.467375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082099, 0.230132, -0.969690,
		0.993318, 0.060294, 0.098409,
		0.081113, -0.971290, -0.223645,
		20.648876, 16.498312, 21.400282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.126539, 17.155804, 21.112198>,  <20.592096, 17.178215, 21.556833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.126539, 17.155804, 21.112198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.882221, 16.843678, 21.058474>,  <20.735630, 16.656403, 21.026239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.882221, 16.843678, 21.058474>,  <21.126539, 17.155804, 21.112198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.882221, 16.843678, 21.058474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104865, 0.247858, -0.963104,
		0.784815, -0.574173, -0.233218,
		-0.610793, -0.780315, -0.134312,
		20.698982, 16.609583, 21.018181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.884708, 17.259655, 20.907789>,  <21.126539, 17.155804, 21.112198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.884708, 17.259655, 20.907789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.019386, 17.636189, 20.916969>,  <22.100193, 17.862108, 20.922478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.019386, 17.636189, 20.916969>,  <21.884708, 17.259655, 20.907789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.019386, 17.636189, 20.916969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004670, -0.026042, 0.999650,
		0.941602, -0.336471, -0.013165,
		0.336696, 0.941334, 0.022950,
		22.120396, 17.918589, 20.923855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.464897, 17.345966, 21.409281>,  <21.884708, 17.259655, 20.907789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.464897, 17.345966, 21.409281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.332920, 17.720989, 21.365234>,  <22.253735, 17.946003, 21.338806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.332920, 17.720989, 21.365234>,  <22.464897, 17.345966, 21.409281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.332920, 17.720989, 21.365234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048970, 0.133490, 0.989840,
		0.942730, 0.321198, -0.089956,
		-0.329942, 0.937557, -0.110116,
		22.233938, 18.002256, 21.332199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.828260, 17.711367, 21.872490>,  <22.464897, 17.345966, 21.409281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.828260, 17.711367, 21.872490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.513470, 17.949299, 21.806950>,  <22.324596, 18.092058, 21.767626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.513470, 17.949299, 21.806950>,  <22.828260, 17.711367, 21.872490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.513470, 17.949299, 21.806950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017189, 0.286599, 0.957896,
		0.616744, 0.751025, -0.235771,
		-0.786976, 0.594830, -0.163849,
		22.277376, 18.127748, 21.757795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.087822, 18.333986, 22.055506>,  <22.828260, 17.711367, 21.872490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.087822, 18.333986, 22.055506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.689949, 18.301682, 22.081083>,  <22.451225, 18.282299, 22.096430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.689949, 18.301682, 22.081083>,  <23.087822, 18.333986, 22.055506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.689949, 18.301682, 22.081083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054857, 0.110132, 0.992402,
		-0.087192, 0.990630, -0.105116,
		-0.994680, -0.080763, 0.063945,
		22.391544, 18.277452, 22.100267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.988882, 18.531982, 22.684219>,  <23.087822, 18.333986, 22.055506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.988882, 18.531982, 22.684219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.608070, 18.455750, 22.588457>,  <22.379583, 18.410009, 22.531000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.608070, 18.455750, 22.588457>,  <22.988882, 18.531982, 22.684219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.608070, 18.455750, 22.588457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239713, -0.021788, 0.970599,
		-0.190195, 0.981430, -0.024942,
		-0.952031, -0.190582, -0.239405,
		22.322460, 18.398575, 22.516636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.510406, 19.156637, 22.962940>,  <22.988882, 18.531982, 22.684219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.510406, 19.156637, 22.962940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.332630, 18.800774, 22.921021>,  <22.225965, 18.587255, 22.895868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.332630, 18.800774, 22.921021>,  <22.510406, 19.156637, 22.962940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.332630, 18.800774, 22.921021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263581, 0.018065, 0.964468,
		-0.856154, 0.456270, -0.242526,
		-0.444439, -0.889658, -0.104798,
		22.199299, 18.533876, 22.889582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.892588, 19.285307, 23.098989>,  <22.510406, 19.156637, 22.962940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.892588, 19.285307, 23.098989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.939751, 18.895714, 23.176401>,  <21.968048, 18.661959, 23.222849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.939751, 18.895714, 23.176401>,  <21.892588, 19.285307, 23.098989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.939751, 18.895714, 23.176401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472105, 0.116474, 0.873814,
		-0.873621, -0.194398, -0.446089,
		0.117910, -0.973983, 0.193531,
		21.975124, 18.603519, 23.234461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.631008, 19.932234, 23.295345>,  <21.892588, 19.285307, 23.098989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.631008, 19.932234, 23.295345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.835938, 20.267673, 23.369404>,  <21.958895, 20.468937, 23.413839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.835938, 20.267673, 23.369404>,  <21.631008, 19.932234, 23.295345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.835938, 20.267673, 23.369404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313599, 0.018018, -0.949385,
		-0.799489, 0.544452, -0.253753,
		0.512322, 0.838599, 0.185145,
		21.989634, 20.519253, 23.424948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.520140, 20.454092, 22.749163>,  <21.631008, 19.932234, 23.295345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.520140, 20.454092, 22.749163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.862534, 20.570896, 22.919819>,  <22.067970, 20.640978, 23.022213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.862534, 20.570896, 22.919819>,  <21.520140, 20.454092, 22.749163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.862534, 20.570896, 22.919819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436812, 0.032950, -0.898949,
		-0.276560, 0.955848, -0.099349,
		0.855985, 0.292010, 0.426638,
		22.119329, 20.658499, 23.047810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.654028, 21.037958, 22.299810>,  <21.520140, 20.454092, 22.749163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.654028, 21.037958, 22.299810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.990173, 20.925247, 22.485022>,  <22.191860, 20.857620, 22.596148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.990173, 20.925247, 22.485022>,  <21.654028, 21.037958, 22.299810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.990173, 20.925247, 22.485022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516187, 0.155435, -0.842253,
		0.165359, 0.946805, 0.276072,
		0.840361, -0.281779, 0.463026,
		22.242281, 20.840714, 22.623930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.083397, 21.591534, 22.198694>,  <21.654028, 21.037958, 22.299810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.083397, 21.591534, 22.198694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.325020, 21.288311, 22.297054>,  <22.469994, 21.106379, 22.356071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.325020, 21.288311, 22.297054>,  <22.083397, 21.591534, 22.198694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.325020, 21.288311, 22.297054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501175, 0.121434, -0.856783,
		0.619627, 0.640787, 0.453271,
		0.604058, -0.758054, 0.245902,
		22.506237, 21.060894, 22.370825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.708258, 21.729052, 21.865582>,  <22.083397, 21.591534, 22.198694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.708258, 21.729052, 21.865582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.737087, 21.336658, 21.937668>,  <22.754385, 21.101223, 21.980919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.737087, 21.336658, 21.937668>,  <22.708258, 21.729052, 21.865582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.737087, 21.336658, 21.937668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500029, -0.120801, -0.857542,
		0.863005, 0.151918, 0.481813,
		0.072073, -0.980983, 0.180215,
		22.758709, 21.042364, 21.991732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.525799, 21.488922, 21.797125>,  <22.708258, 21.729052, 21.865582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.525799, 21.488922, 21.797125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.251461, 21.202396, 21.745726>,  <23.086859, 21.030481, 21.714886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.251461, 21.202396, 21.745726>,  <23.525799, 21.488922, 21.797125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.251461, 21.202396, 21.745726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338702, -0.157907, -0.927548,
		0.644126, -0.679676, 0.350917,
		-0.685844, -0.716314, -0.128496,
		23.045708, 20.987501, 21.707176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.924109, 20.979399, 21.527407>,  <23.525799, 21.488922, 21.797125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.924109, 20.979399, 21.527407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.543247, 20.920650, 21.420198>,  <23.314732, 20.885401, 21.355873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.543247, 20.920650, 21.420198>,  <23.924109, 20.979399, 21.527407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.543247, 20.920650, 21.420198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257119, 0.089129, -0.962261,
		0.165219, -0.985132, -0.047100,
		-0.952151, -0.146874, -0.268021,
		23.257601, 20.876589, 21.339792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<19.786211, 19.719854, 25.081324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.549152, 19.403240, 25.021667>,  <19.406918, 19.213272, 24.985874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.549152, 19.403240, 25.021667>,  <19.786211, 19.719854, 25.081324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.549152, 19.403240, 25.021667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284173, 0.378726, -0.880802,
		0.753670, -0.479621, -0.449383,
		-0.592644, -0.791537, -0.149139,
		19.371359, 19.165779, 24.976927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.935274, 19.285582, 24.460035>,  <19.786211, 19.719854, 25.081324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.935274, 19.285582, 24.460035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.542980, 19.246983, 24.527969>,  <19.307604, 19.223824, 24.568729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.542980, 19.246983, 24.527969>,  <19.935274, 19.285582, 24.460035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.542980, 19.246983, 24.527969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194623, 0.408487, -0.891773,
		0.016678, -0.907649, -0.419399,
		-0.980736, -0.096498, 0.169837,
		19.248760, 19.218033, 24.578920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.726379, 19.001255, 23.891027>,  <19.935274, 19.285582, 24.460035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.726379, 19.001255, 23.891027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.386826, 19.149532, 24.041750>,  <19.183094, 19.238499, 24.132183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.386826, 19.149532, 24.041750>,  <19.726379, 19.001255, 23.891027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.386826, 19.149532, 24.041750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253563, 0.339910, -0.905631,
		-0.463790, -0.864320, -0.194550,
		-0.848884, 0.370692, 0.376807,
		19.132160, 19.260740, 24.154793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.248451, 18.874870, 23.327681>,  <19.726379, 19.001255, 23.891027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.248451, 18.874870, 23.327681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.070042, 19.146702, 23.560656>,  <18.962996, 19.309801, 23.700441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.070042, 19.146702, 23.560656>,  <19.248451, 18.874870, 23.327681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.070042, 19.146702, 23.560656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294666, 0.502977, -0.812518,
		-0.845124, -0.534026, -0.024090,
		-0.446023, 0.679581, 0.582438,
		18.936235, 19.350576, 23.735388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.702940, 19.143867, 22.976976>,  <19.248451, 18.874870, 23.327681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.702940, 19.143867, 22.976976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.665459, 19.436256, 23.247355>,  <18.642969, 19.611689, 23.409582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.665459, 19.436256, 23.247355>,  <18.702940, 19.143867, 22.976976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.665459, 19.436256, 23.247355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370571, 0.604543, -0.705127,
		-0.924065, -0.316558, 0.214229,
		-0.093703, 0.730971, 0.675945,
		18.637348, 19.655548, 23.450138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.049732, 19.412586, 22.954674>,  <18.702940, 19.143867, 22.976976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.049732, 19.412586, 22.954674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.279343, 19.712128, 23.087168>,  <18.417109, 19.891851, 23.166664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.279343, 19.712128, 23.087168>,  <18.049732, 19.412586, 22.954674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.279343, 19.712128, 23.087168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471002, 0.632861, -0.614528,
		-0.669815, 0.196743, 0.715989,
		0.574025, 0.748852, 0.331233,
		18.451550, 19.936783, 23.186539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.622555, 19.933378, 23.050152>,  <18.049732, 19.412586, 22.954674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.622555, 19.933378, 23.050152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.983612, 20.104233, 23.029036>,  <18.200247, 20.206745, 23.016365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.983612, 20.104233, 23.029036>,  <17.622555, 19.933378, 23.050152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.983612, 20.104233, 23.029036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357311, 0.675350, -0.645160,
		-0.239919, 0.601213, 0.762221,
		0.902645, 0.427137, -0.052791,
		18.254406, 20.232374, 23.013199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.558260, 20.763929, 23.098394>,  <17.622555, 19.933378, 23.050152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.558260, 20.763929, 23.098394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.913086, 20.688404, 22.929886>,  <18.125980, 20.643089, 22.828781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.913086, 20.688404, 22.929886>,  <17.558260, 20.763929, 23.098394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.913086, 20.688404, 22.929886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227718, 0.614832, -0.755067,
		0.401576, 0.765723, 0.502399,
		0.887063, -0.188812, -0.421271,
		18.179205, 20.631762, 22.803505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.890965, 21.433294, 22.989172>,  <17.558260, 20.763929, 23.098394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.890965, 21.433294, 22.989172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.075409, 21.189415, 22.731289>,  <18.186075, 21.043087, 22.576559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.075409, 21.189415, 22.731289>,  <17.890965, 21.433294, 22.989172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.075409, 21.189415, 22.731289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157109, 0.658982, -0.735568,
		0.873323, 0.440467, 0.208074,
		0.461111, -0.609698, -0.644706,
		18.213741, 21.006506, 22.537878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.278463, 21.897755, 22.496367>,  <17.890965, 21.433294, 22.989172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.278463, 21.897755, 22.496367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.268833, 21.533684, 22.330957>,  <18.263056, 21.315241, 22.231712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.268833, 21.533684, 22.330957>,  <18.278463, 21.897755, 22.496367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.268833, 21.533684, 22.330957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081013, 0.414057, -0.906639,
		0.996422, 0.011674, -0.083704,
		-0.024074, -0.910176, -0.413522,
		18.261610, 21.260632, 22.206902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.728874, 21.980244, 21.904573>,  <18.278463, 21.897755, 22.496367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.728874, 21.980244, 21.904573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.493568, 21.662998, 21.841431>,  <18.352385, 21.472651, 21.803545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.493568, 21.662998, 21.841431>,  <18.728874, 21.980244, 21.904573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.493568, 21.662998, 21.841431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164172, 0.308268, -0.937026,
		0.791830, -0.525302, -0.311550,
		-0.588263, -0.793113, -0.157855,
		18.317089, 21.425064, 21.794075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.871929, 21.634811, 21.343571>,  <18.728874, 21.980244, 21.904573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.871929, 21.634811, 21.343571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.494972, 21.505039, 21.376163>,  <18.268797, 21.427176, 21.395720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.494972, 21.505039, 21.376163>,  <18.871929, 21.634811, 21.343571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.494972, 21.505039, 21.376163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132591, 0.138660, -0.981424,
		0.307106, -0.935691, -0.173689,
		-0.942393, -0.324431, 0.081481,
		18.212254, 21.407709, 21.400608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.536055, 21.472452, 21.256916>,  <18.871929, 21.634811, 21.343571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.536055, 21.472452, 21.256916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.760227, 21.800976, 21.299568>,  <19.894732, 21.998089, 21.325159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.760227, 21.800976, 21.299568>,  <19.536055, 21.472452, 21.256916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.760227, 21.800976, 21.299568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044399, -0.098771, 0.994119,
		0.827010, -0.561870, -0.018889,
		0.560432, 0.821307, 0.106631,
		19.928356, 22.047367, 21.331558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.135035, 21.312958, 21.630924>,  <19.536055, 21.472452, 21.256916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.135035, 21.312958, 21.630924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.124924, 21.711857, 21.658813>,  <20.118856, 21.951197, 21.675547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.124924, 21.711857, 21.658813>,  <20.135035, 21.312958, 21.630924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.124924, 21.711857, 21.658813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244560, -0.061456, 0.967685,
		0.969305, 0.041511, -0.242333,
		-0.025277, 0.997246, 0.069721,
		20.117340, 22.011030, 21.679729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.726242, 21.563805, 22.129591>,  <20.135035, 21.312958, 21.630924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.726242, 21.563805, 22.129591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.471394, 21.871887, 22.117842>,  <20.318485, 22.056736, 22.110792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.471394, 21.871887, 22.117842>,  <20.726242, 21.563805, 22.129591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.471394, 21.871887, 22.117842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126632, 0.142190, 0.981706,
		0.760292, 0.621744, -0.188125,
		-0.637119, 0.770206, -0.029373,
		20.280258, 22.102949, 22.109030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.998501, 22.157661, 22.572933>,  <20.726242, 21.563805, 22.129591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.998501, 22.157661, 22.572933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.608212, 22.236935, 22.535643>,  <20.374039, 22.284498, 22.513269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.608212, 22.236935, 22.535643>,  <20.998501, 22.157661, 22.572933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.608212, 22.236935, 22.535643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062640, 0.155357, 0.985870,
		0.209866, 0.967774, -0.139171,
		-0.975721, 0.198183, -0.093225,
		20.315495, 22.296391, 22.507675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.864721, 22.803095, 22.900789>,  <20.998501, 22.157661, 22.572933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.864721, 22.803095, 22.900789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.520344, 22.599953, 22.889090>,  <20.313717, 22.478067, 22.882069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.520344, 22.599953, 22.889090>,  <20.864721, 22.803095, 22.900789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.520344, 22.599953, 22.889090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159482, 0.214867, 0.963534,
		-0.483051, 0.834215, -0.265982,
		-0.860945, -0.507856, -0.029250,
		20.262060, 22.447596, 22.880314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.311199, 23.177521, 23.319101>,  <20.864721, 22.803095, 22.900789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.311199, 23.177521, 23.319101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.138165, 22.817314, 23.301491>,  <20.034344, 22.601191, 23.290924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.138165, 22.817314, 23.301491>,  <20.311199, 23.177521, 23.319101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.138165, 22.817314, 23.301491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398903, 0.147375, 0.905073,
		-0.808546, 0.409083, -0.422971,
		-0.432586, -0.900517, -0.044025,
		20.008389, 22.547159, 23.288284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.594027, 23.286747, 23.556862>,  <20.311199, 23.177521, 23.319101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.594027, 23.286747, 23.556862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.708515, 22.905159, 23.592672>,  <19.777208, 22.676207, 23.614159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.708515, 22.905159, 23.592672>,  <19.594027, 23.286747, 23.556862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.708515, 22.905159, 23.592672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330851, -0.010712, 0.943622,
		-0.899230, -0.299705, -0.318688,
		0.286222, -0.953972, 0.089525,
		19.794382, 22.618967, 23.619530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.051092, 23.190706, 24.068132>,  <19.594027, 23.286747, 23.556862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.051092, 23.190706, 24.068132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.303154, 22.880142, 24.064217>,  <19.454391, 22.693804, 24.061867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.303154, 22.880142, 24.064217>,  <19.051092, 23.190706, 24.068132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.303154, 22.880142, 24.064217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117690, -0.107970, 0.987163,
		-0.767499, -0.620913, -0.159413,
		0.630155, -0.776408, -0.009791,
		19.492201, 22.647221, 24.061279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.654852, 22.615461, 24.269115>,  <19.051092, 23.190706, 24.068132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.654852, 22.615461, 24.269115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.035267, 22.501747, 24.317627>,  <19.263515, 22.433519, 24.346733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.035267, 22.501747, 24.317627>,  <18.654852, 22.615461, 24.269115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.035267, 22.501747, 24.317627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129165, -0.009086, 0.991581,
		-0.280789, -0.958697, -0.045361,
		0.951038, -0.284285, 0.121279,
		19.320578, 22.416462, 24.354012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.618179, 22.071253, 24.722054>,  <18.654852, 22.615461, 24.269115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.618179, 22.071253, 24.722054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.996933, 22.184849, 24.782396>,  <19.224186, 22.253006, 24.818602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.996933, 22.184849, 24.782396>,  <18.618179, 22.071253, 24.722054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.996933, 22.184849, 24.782396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088363, -0.221287, 0.971197,
		0.309195, -0.932942, -0.184439,
		0.946885, 0.283992, 0.150859,
		19.280998, 22.270046, 24.827654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.946655, 21.509508, 25.166719>,  <18.618179, 22.071253, 24.722054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.946655, 21.509508, 25.166719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.174026, 21.837185, 25.197210>,  <19.310450, 22.033791, 25.215504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.174026, 21.837185, 25.197210>,  <18.946655, 21.509508, 25.166719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.174026, 21.837185, 25.197210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011682, -0.100676, 0.994851,
		0.822650, -0.564611, -0.066797,
		0.568428, 0.819194, 0.076225,
		19.344555, 22.082943, 25.220078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.556574, 21.339920, 25.594847>,  <18.946655, 21.509508, 25.166719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.556574, 21.339920, 25.594847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.537582, 21.738049, 25.628511>,  <19.526188, 21.976925, 25.648710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.537582, 21.738049, 25.628511>,  <19.556574, 21.339920, 25.594847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.537582, 21.738049, 25.628511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158339, -0.075691, 0.984479,
		0.986242, 0.060070, -0.154005,
		-0.047480, 0.995320, 0.084161,
		19.523338, 22.036644, 25.653759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.114101, 21.431816, 26.075975>,  <19.556574, 21.339920, 25.594847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.114101, 21.431816, 26.075975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.865204, 21.744946, 26.075567>,  <19.715864, 21.932823, 26.075321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.865204, 21.744946, 26.075567>,  <20.114101, 21.431816, 26.075975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.865204, 21.744946, 26.075567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280013, 0.223795, 0.933546,
		0.731029, 0.580609, -0.358455,
		-0.622245, 0.782822, -0.001022,
		19.678530, 21.979792, 26.075260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.407106, 21.978745, 26.443729>,  <20.114101, 21.431816, 26.075975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.407106, 21.978745, 26.443729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.015285, 22.052563, 26.475788>,  <19.780193, 22.096853, 26.495024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.015285, 22.052563, 26.475788>,  <20.407106, 21.978745, 26.443729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.015285, 22.052563, 26.475788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106936, 0.140102, 0.984346,
		0.170427, 0.972787, -0.156972,
		-0.979551, 0.184545, 0.080148,
		19.721420, 22.107925, 26.499832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.950081, 21.899303, 25.922379>,  <20.407106, 21.978745, 26.443729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.950081, 21.899303, 25.922379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.152653, 21.567314, 26.015903>,  <21.274197, 21.368120, 26.072018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.152653, 21.567314, 26.015903>,  <20.950081, 21.899303, 25.922379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.152653, 21.567314, 26.015903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300700, -0.084143, -0.950000,
		0.808150, 0.551417, 0.206961,
		0.506432, -0.829975, 0.233812,
		21.304583, 21.318321, 26.086046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.571377, 21.885712, 25.550581>,  <20.950081, 21.899303, 25.922379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.571377, 21.885712, 25.550581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.517082, 21.496426, 25.624796>,  <21.484507, 21.262854, 25.669325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.517082, 21.496426, 25.624796>,  <21.571377, 21.885712, 25.550581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.517082, 21.496426, 25.624796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281024, -0.217399, -0.934753,
		0.950053, -0.074737, 0.303006,
		-0.135734, -0.973217, 0.185538,
		21.476362, 21.204460, 25.680458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.217768, 21.581305, 25.441103>,  <21.571377, 21.885712, 25.550581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.217768, 21.581305, 25.441103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.940243, 21.295883, 25.402176>,  <21.773727, 21.124630, 25.378820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.940243, 21.295883, 25.402176>,  <22.217768, 21.581305, 25.441103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.940243, 21.295883, 25.402176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348945, -0.214884, -0.912175,
		0.629971, -0.666835, 0.398079,
		-0.693811, -0.713551, -0.097318,
		21.732100, 21.081818, 25.372980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.560217, 20.993879, 25.236034>,  <22.217768, 21.581305, 25.441103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.560217, 20.993879, 25.236034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.183704, 20.908035, 25.131781>,  <21.957796, 20.856529, 25.069229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.183704, 20.908035, 25.131781>,  <22.560217, 20.993879, 25.236034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.183704, 20.908035, 25.131781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334145, -0.481672, -0.810147,
		0.048328, -0.849667, 0.525101,
		-0.941282, -0.214613, -0.260634,
		21.901320, 20.843651, 25.053591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.506886, 20.285454, 24.999527>,  <22.560217, 20.993879, 25.236034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.506886, 20.285454, 24.999527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.187061, 20.451851, 24.826250>,  <21.995167, 20.551689, 24.722284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.187061, 20.451851, 24.826250>,  <22.506886, 20.285454, 24.999527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.187061, 20.451851, 24.826250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309214, -0.333213, -0.890705,
		-0.514873, -0.846120, 0.137793,
		-0.799558, 0.415993, -0.433194,
		21.947193, 20.576649, 24.696291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.264818, 19.761061, 24.455334>,  <22.506886, 20.285454, 24.999527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.264818, 19.761061, 24.455334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.121872, 20.124958, 24.370806>,  <22.036104, 20.343296, 24.320089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.121872, 20.124958, 24.370806>,  <22.264818, 19.761061, 24.455334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.121872, 20.124958, 24.370806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175635, -0.156766, -0.971893,
		-0.917302, -0.384435, -0.103761,
		-0.357364, 0.909744, -0.211322,
		22.014662, 20.397881, 24.307409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.934259, 19.663557, 23.871927>,  <22.264818, 19.761061, 24.455334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.934259, 19.663557, 23.871927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.997448, 20.058533, 23.870440>,  <22.035360, 20.295517, 23.869547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.997448, 20.058533, 23.870440>,  <21.934259, 19.663557, 23.871927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.997448, 20.058533, 23.870440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189107, -0.033951, -0.981369,
		-0.969167, 0.154322, -0.192095,
		0.157969, 0.987437, -0.003721,
		22.044838, 20.354763, 23.869324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.327885, 19.256485, 23.963177>,  <21.934259, 19.663557, 23.871927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.327885, 19.256485, 23.963177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.483067, 18.904957, 23.852062>,  <21.576176, 18.694040, 23.785393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.483067, 18.904957, 23.852062>,  <21.327885, 19.256485, 23.963177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.483067, 18.904957, 23.852062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165007, -0.362746, 0.917163,
		-0.906789, -0.309979, -0.285740,
		0.387952, -0.878822, -0.277786,
		21.599453, 18.641310, 23.768726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.854626, 18.722008, 24.058559>,  <21.327885, 19.256485, 23.963177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.854626, 18.722008, 24.058559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.227512, 18.578152, 24.074728>,  <21.451244, 18.491838, 24.084429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.227512, 18.578152, 24.074728>,  <20.854626, 18.722008, 24.058559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.227512, 18.578152, 24.074728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184078, -0.375030, 0.908553,
		-0.311587, -0.854410, -0.415810,
		0.932218, -0.359634, 0.040423,
		21.507177, 18.470261, 24.086855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.806721, 17.994860, 24.408636>,  <20.854626, 18.722008, 24.058559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.806721, 17.994860, 24.408636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.189758, 18.108345, 24.428703>,  <21.419580, 18.176435, 24.440744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.189758, 18.108345, 24.428703>,  <20.806721, 17.994860, 24.408636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.189758, 18.108345, 24.428703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018061, -0.232900, 0.972333,
		0.287549, -0.930196, -0.228148,
		0.957596, 0.283714, 0.050170,
		21.477037, 18.193459, 24.443754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.087776, 17.424969, 24.734596>,  <20.806721, 17.994860, 24.408636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.087776, 17.424969, 24.734596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.319084, 17.747681, 24.783112>,  <21.457869, 17.941307, 24.812222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.319084, 17.747681, 24.783112>,  <21.087776, 17.424969, 24.734596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.319084, 17.747681, 24.783112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114302, -0.227317, 0.967090,
		0.807799, -0.545375, -0.223667,
		0.578269, 0.806780, 0.121289,
		21.492565, 17.989714, 24.819498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.630564, 17.204763, 25.062275>,  <21.087776, 17.424969, 24.734596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.630564, 17.204763, 25.062275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.619572, 17.596416, 25.142817>,  <21.612976, 17.831408, 25.191141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.619572, 17.596416, 25.142817>,  <21.630564, 17.204763, 25.062275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.619572, 17.596416, 25.142817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018112, -0.201887, 0.979241,
		0.999458, 0.023265, 0.023282,
		-0.027482, 0.979133, 0.201356,
		21.611326, 17.890156, 25.203224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.104282, 17.325281, 25.670704>,  <21.630564, 17.204763, 25.062275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.104282, 17.325281, 25.670704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.904953, 17.671303, 25.647530>,  <21.785357, 17.878916, 25.633625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.904953, 17.671303, 25.647530>,  <22.104282, 17.325281, 25.670704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.904953, 17.671303, 25.647530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205813, -0.053117, 0.977149,
		0.842209, 0.498858, 0.204509,
		-0.498321, 0.865055, -0.057936,
		21.755457, 17.930819, 25.630148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.437195, 17.800291, 26.165049>,  <22.104282, 17.325281, 25.670704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.437195, 17.800291, 26.165049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.066631, 17.937008, 26.101875>,  <21.844294, 18.019037, 26.063971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.066631, 17.937008, 26.101875>,  <22.437195, 17.800291, 26.165049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.066631, 17.937008, 26.101875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172008, -0.011064, 0.985033,
		0.334927, 0.939711, 0.069041,
		-0.926411, 0.341790, -0.157933,
		21.788708, 18.039545, 26.054495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.344051, 18.224529, 26.664970>,  <22.437195, 17.800291, 26.165049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.344051, 18.224529, 26.664970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.969772, 18.147873, 26.546488>,  <21.745205, 18.101879, 26.475397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.969772, 18.147873, 26.546488>,  <22.344051, 18.224529, 26.664970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.969772, 18.147873, 26.546488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316782, 0.086822, 0.944516,
		-0.155291, 0.977617, -0.141948,
		-0.935700, -0.191642, -0.296209,
		21.689062, 18.090380, 26.457624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.046404, 18.509275, 27.138754>,  <22.344051, 18.224529, 26.664970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.046404, 18.509275, 27.138754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.736332, 18.307468, 26.986670>,  <21.550289, 18.186384, 26.895418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.736332, 18.307468, 26.986670>,  <22.046404, 18.509275, 27.138754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.736332, 18.307468, 26.986670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425301, -0.028265, 0.904611,
		-0.467137, 0.862940, -0.192661,
		-0.775179, -0.504516, -0.380212,
		21.503778, 18.156113, 26.872606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<20.560026, 19.487471, 10.942364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.212749, 19.305183, 11.020917>,  <20.004383, 19.195810, 11.068048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.212749, 19.305183, 11.020917>,  <20.560026, 19.487471, 10.942364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.212749, 19.305183, 11.020917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307837, -0.184216, 0.933435,
		-0.389207, 0.870853, 0.300222,
		-0.868190, -0.455719, 0.196383,
		19.952293, 19.168468, 11.079832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.236425, 19.870020, 11.477679>,  <20.560026, 19.487471, 10.942364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.236425, 19.870020, 11.477679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.138790, 19.482143, 11.482121>,  <20.080208, 19.249418, 11.484787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.138790, 19.482143, 11.482121>,  <20.236425, 19.870020, 11.477679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.138790, 19.482143, 11.482121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083801, -0.009684, 0.996436,
		-0.966125, 0.244151, 0.083625,
		-0.244090, -0.969689, 0.011104,
		20.065563, 19.191236, 11.485453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.717682, 19.911377, 11.917256>,  <20.236425, 19.870020, 11.477679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.717682, 19.911377, 11.917256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.852505, 19.535267, 11.898191>,  <19.933399, 19.309601, 11.886753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.852505, 19.535267, 11.898191>,  <19.717682, 19.911377, 11.917256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.852505, 19.535267, 11.898191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011812, -0.046396, 0.998853,
		-0.941409, -0.337236, -0.004531,
		0.337059, -0.940276, -0.047661,
		19.953623, 19.253183, 11.883893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.286379, 19.524912, 12.325748>,  <19.717682, 19.911377, 11.917256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.286379, 19.524912, 12.325748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.629734, 19.319950, 12.315856>,  <19.835747, 19.196974, 12.309920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.629734, 19.319950, 12.315856>,  <19.286379, 19.524912, 12.325748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.629734, 19.319950, 12.315856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143426, -0.285996, 0.947436,
		-0.492544, -0.809721, -0.318988,
		0.858388, -0.512405, -0.024731,
		19.887251, 19.166229, 12.308436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.207460, 19.098061, 12.844809>,  <19.286379, 19.524912, 12.325748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.207460, 19.098061, 12.844809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.592476, 19.033310, 12.757804>,  <19.823486, 18.994459, 12.705602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.592476, 19.033310, 12.757804>,  <19.207460, 19.098061, 12.844809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.592476, 19.033310, 12.757804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158021, -0.316968, 0.935180,
		-0.220326, -0.934520, -0.279515,
		0.962542, -0.161875, -0.217510,
		19.881239, 18.984747, 12.692551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.457251, 18.571836, 13.409598>,  <19.207460, 19.098061, 12.844809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.457251, 18.571836, 13.409598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.814392, 18.690689, 13.274233>,  <20.028677, 18.762001, 13.193013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.814392, 18.690689, 13.274233>,  <19.457251, 18.571836, 13.409598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.814392, 18.690689, 13.274233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406616, -0.208878, 0.889401,
		0.193581, -0.931710, -0.307316,
		0.892855, 0.297131, -0.338413,
		20.082249, 18.779829, 13.172709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.996969, 18.070110, 13.532785>,  <19.457251, 18.571836, 13.409598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.996969, 18.070110, 13.532785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.172173, 18.429508, 13.521090>,  <20.277294, 18.645147, 13.514072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.172173, 18.429508, 13.521090>,  <19.996969, 18.070110, 13.532785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.172173, 18.429508, 13.521090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485209, -0.208905, 0.849076,
		0.756783, -0.386090, -0.527460,
		0.438009, 0.898495, -0.029238,
		20.303576, 18.699057, 13.512318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.731817, 17.895870, 13.728766>,  <19.996969, 18.070110, 13.532785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.731817, 17.895870, 13.728766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.640751, 18.280262, 13.791613>,  <20.586111, 18.510897, 13.829320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.640751, 18.280262, 13.791613>,  <20.731817, 17.895870, 13.728766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.640751, 18.280262, 13.791613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599963, 0.011349, 0.799947,
		0.766951, 0.276382, -0.579137,
		-0.227664, 0.960981, 0.157115,
		20.572453, 18.568556, 13.838747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.358377, 18.205835, 13.820990>,  <20.731817, 17.895870, 13.728766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.358377, 18.205835, 13.820990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.106449, 18.468765, 13.986519>,  <20.955292, 18.626522, 14.085836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.106449, 18.468765, 13.986519>,  <21.358377, 18.205835, 13.820990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.106449, 18.468765, 13.986519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571589, 0.031475, 0.819936,
		0.525938, 0.752951, -0.395543,
		-0.629822, 0.657324, 0.413824,
		20.917503, 18.665962, 14.110666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.769876, 18.584394, 14.194831>,  <21.358377, 18.205835, 13.820990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.769876, 18.584394, 14.194831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.431995, 18.693855, 14.378826>,  <21.229267, 18.759531, 14.489223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.431995, 18.693855, 14.378826>,  <21.769876, 18.584394, 14.194831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.431995, 18.693855, 14.378826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481058, 0.011398, 0.876615,
		0.234643, 0.961762, -0.141270,
		-0.844705, 0.273651, 0.459989,
		21.178583, 18.775951, 14.516823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.942268, 19.077471, 14.631741>,  <21.769876, 18.584394, 14.194831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.942268, 19.077471, 14.631741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.589973, 18.939468, 14.761524>,  <21.378597, 18.856667, 14.839395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.589973, 18.939468, 14.761524>,  <21.942268, 19.077471, 14.631741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.589973, 18.939468, 14.761524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365177, -0.058458, 0.929101,
		-0.301578, 0.936778, 0.177475,
		-0.880736, -0.345006, 0.324460,
		21.325752, 18.835966, 14.858862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.775211, 19.542320, 15.103937>,  <21.942268, 19.077471, 14.631741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.775211, 19.542320, 15.103937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.605282, 19.184940, 15.162279>,  <21.503325, 18.970512, 15.197284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.605282, 19.184940, 15.162279>,  <21.775211, 19.542320, 15.103937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.605282, 19.184940, 15.162279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479233, -0.085265, 0.873537,
		-0.768025, 0.440996, 0.464393,
		-0.424822, -0.893450, 0.145854,
		21.477835, 18.916904, 15.206036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.613430, 20.237417, 15.332129>,  <21.775211, 19.542320, 15.103937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.613430, 20.237417, 15.332129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.894394, 20.519245, 15.372528>,  <22.062973, 20.688341, 15.396768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.894394, 20.519245, 15.372528>,  <21.613430, 20.237417, 15.332129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.894394, 20.519245, 15.372528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098107, 0.236382, -0.966695,
		-0.704978, 0.669108, 0.235160,
		0.702410, 0.704570, 0.101000,
		22.105118, 20.730616, 15.402828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.379011, 20.933212, 15.097557>,  <21.613430, 20.237417, 15.332129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.379011, 20.933212, 15.097557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.775902, 20.964439, 15.058800>,  <22.014036, 20.983175, 15.035545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.775902, 20.964439, 15.058800>,  <21.379011, 20.933212, 15.097557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.775902, 20.964439, 15.058800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111822, 0.217920, -0.969539,
		-0.054575, 0.972839, 0.224956,
		0.992229, 0.078067, -0.096892,
		22.073570, 20.987860, 15.029732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.419710, 21.428644, 14.643190>,  <21.379011, 20.933212, 15.097557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.419710, 21.428644, 14.643190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.763916, 21.225113, 14.633308>,  <21.970440, 21.102995, 14.627379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.763916, 21.225113, 14.633308>,  <21.419710, 21.428644, 14.643190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.763916, 21.225113, 14.633308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057006, 0.144370, -0.987880,
		0.506226, 0.848677, 0.153238,
		0.860515, -0.508826, -0.024704,
		22.022070, 21.072466, 14.625897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.798698, 21.805725, 14.211650>,  <21.419710, 21.428644, 14.643190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.798698, 21.805725, 14.211650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.997795, 21.459400, 14.232121>,  <22.117252, 21.251604, 14.244403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.997795, 21.459400, 14.232121>,  <21.798698, 21.805725, 14.211650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.997795, 21.459400, 14.232121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088861, -0.007789, -0.996014,
		0.862761, 0.500305, 0.073060,
		0.497742, -0.865814, 0.051177,
		22.147118, 21.199656, 14.247474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.400665, 21.865082, 13.774396>,  <21.798698, 21.805725, 14.211650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.400665, 21.865082, 13.774396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.344978, 21.470646, 13.810722>,  <22.311565, 21.233984, 13.832518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.344978, 21.470646, 13.810722>,  <22.400665, 21.865082, 13.774396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.344978, 21.470646, 13.810722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102881, -0.105615, -0.989071,
		0.984903, -0.128354, 0.116153,
		-0.139219, -0.986089, 0.090815,
		22.303213, 21.174820, 13.837967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.945299, 21.587831, 13.368027>,  <22.400665, 21.865082, 13.774396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.945299, 21.587831, 13.368027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.693546, 21.277866, 13.391293>,  <22.542494, 21.091887, 13.405252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.693546, 21.277866, 13.391293>,  <22.945299, 21.587831, 13.368027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.693546, 21.277866, 13.391293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021059, -0.057815, -0.998105,
		0.776810, -0.629416, 0.020069,
		-0.629383, -0.774915, 0.058166,
		22.504732, 21.045391, 13.408742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.232939, 21.037558, 12.868750>,  <22.945299, 21.587831, 13.368027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.232939, 21.037558, 12.868750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.840572, 20.981083, 12.922220>,  <22.605152, 20.947199, 12.954303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.840572, 20.981083, 12.922220>,  <23.232939, 21.037558, 12.868750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.840572, 20.981083, 12.922220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133278, -0.012318, -0.991002,
		0.141564, -0.989906, -0.006734,
		-0.980916, -0.141188, 0.133676,
		22.546297, 20.938726, 12.962323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.121052, 20.482283, 12.389193>,  <23.232939, 21.037558, 12.868750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.121052, 20.482283, 12.389193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.768196, 20.647812, 12.479158>,  <22.556482, 20.747129, 12.533137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.768196, 20.647812, 12.479158>,  <23.121052, 20.482283, 12.389193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.768196, 20.647812, 12.479158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278960, -0.074290, -0.957425,
		-0.379494, -0.907322, 0.180974,
		-0.882137, 0.413822, 0.224913,
		22.503555, 20.771959, 12.546633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.565464, 19.955637, 12.211349>,  <23.121052, 20.482283, 12.389193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.565464, 19.955637, 12.211349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.400902, 20.318409, 12.175071>,  <22.302164, 20.536072, 12.153304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.400902, 20.318409, 12.175071>,  <22.565464, 19.955637, 12.211349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.400902, 20.318409, 12.175071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336058, -0.243428, -0.909839,
		-0.847238, -0.343833, 0.404928,
		-0.411404, 0.906930, -0.090694,
		22.277481, 20.590488, 12.147862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.056711, 19.888361, 11.737095>,  <22.565464, 19.955637, 12.211349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.056711, 19.888361, 11.737095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.058311, 20.288013, 11.753680>,  <22.059273, 20.527805, 11.763632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.058311, 20.288013, 11.753680>,  <22.056711, 19.888361, 11.737095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.058311, 20.288013, 11.753680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502147, 0.037866, -0.863953,
		-0.864773, -0.017363, 0.501863,
		0.004002, 0.999132, 0.041464,
		22.059511, 20.587753, 11.766120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.372467, 20.048883, 11.614829>,  <22.056711, 19.888361, 11.737095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.372467, 20.048883, 11.614829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.577538, 20.383709, 11.538424>,  <21.700579, 20.584604, 11.492581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.577538, 20.383709, 11.538424>,  <21.372467, 20.048883, 11.614829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.577538, 20.383709, 11.538424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465865, 0.084328, -0.880828,
		-0.721203, 0.540564, 0.433193,
		0.512674, 0.837066, -0.191012,
		21.731340, 20.634829, 11.481121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.894054, 20.596588, 11.365740>,  <21.372467, 20.048883, 11.614829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.894054, 20.596588, 11.365740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.265846, 20.673717, 11.239953>,  <21.488922, 20.719995, 11.164481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.265846, 20.673717, 11.239953>,  <20.894054, 20.596588, 11.365740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.265846, 20.673717, 11.239953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317654, -0.014981, -0.948088,
		-0.187523, 0.981119, 0.047326,
		0.929479, 0.192821, -0.314466,
		21.544689, 20.731564, 11.145613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.796186, 20.961901, 10.819366>,  <20.894054, 20.596588, 11.365740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.796186, 20.961901, 10.819366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.178188, 20.860302, 10.758108>,  <21.407389, 20.799343, 10.721354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.178188, 20.860302, 10.758108>,  <20.796186, 20.961901, 10.819366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.178188, 20.860302, 10.758108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179409, -0.083545, -0.980221,
		0.236176, 0.963591, -0.125354,
		0.955004, -0.253995, -0.153146,
		21.464689, 20.784103, 10.712165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.090456, 21.422770, 10.284167>,  <20.796186, 20.961901, 10.819366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.090456, 21.422770, 10.284167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.284447, 21.073227, 10.270451>,  <21.400841, 20.863503, 10.262220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.284447, 21.073227, 10.270451>,  <21.090456, 21.422770, 10.284167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.284447, 21.073227, 10.270451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273102, -0.114083, -0.955197,
		0.830791, 0.472614, -0.293979,
		0.484977, -0.873854, -0.034293,
		21.429939, 20.811071, 10.260163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.836634, 21.958931, 9.918921>,  <21.090456, 21.422770, 10.284167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.836634, 21.958931, 9.918921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.881672, 22.294342, 10.132161>,  <20.908695, 22.495588, 10.260105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.881672, 22.294342, 10.132161>,  <20.836634, 21.958931, 9.918921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.881672, 22.294342, 10.132161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841151, 0.366041, -0.398093,
		-0.528948, -0.403593, 0.746543,
		0.112598, 0.838527, 0.533099,
		20.915451, 22.545900, 10.292091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.322460, 21.796568, 10.421457>,  <20.836634, 21.958931, 9.918921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.322460, 21.796568, 10.421457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.927727, 21.733009, 10.409407>,  <19.690886, 21.694874, 10.402176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.927727, 21.733009, 10.409407>,  <20.322460, 21.796568, 10.421457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.927727, 21.733009, 10.409407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097439, 0.435484, 0.894908,
		-0.129076, 0.886062, -0.445234,
		-0.986836, -0.158894, -0.030127,
		19.631676, 21.685341, 10.400369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.051474, 22.329338, 10.776181>,  <20.322460, 21.796568, 10.421457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.051474, 22.329338, 10.776181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.800987, 22.023064, 10.834942>,  <19.650696, 21.839298, 10.870198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.800987, 22.023064, 10.834942>,  <20.051474, 22.329338, 10.776181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.800987, 22.023064, 10.834942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093286, 0.260652, 0.960915,
		-0.774049, 0.588036, -0.234652,
		-0.626215, -0.765686, 0.146902,
		19.613123, 21.793358, 10.879012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.508778, 22.610788, 11.111843>,  <20.051474, 22.329338, 10.776181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.508778, 22.610788, 11.111843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.484303, 22.225815, 11.217659>,  <19.469618, 21.994831, 11.281149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.484303, 22.225815, 11.217659>,  <19.508778, 22.610788, 11.111843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.484303, 22.225815, 11.217659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104931, 0.269770, 0.957190,
		-0.992595, 0.030809, -0.117495,
		-0.061187, -0.962432, 0.264540,
		19.465946, 21.937086, 11.297021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.094021, 22.582943, 11.635534>,  <19.508778, 22.610788, 11.111843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.094021, 22.582943, 11.635534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.270885, 22.229790, 11.698797>,  <19.377005, 22.017899, 11.736754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.270885, 22.229790, 11.698797>,  <19.094021, 22.582943, 11.635534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.270885, 22.229790, 11.698797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151337, 0.100366, 0.983374,
		-0.884077, -0.458743, -0.089235,
		0.442160, -0.882882, 0.158156,
		19.403534, 21.964926, 11.746244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.732803, 22.408907, 12.153096>,  <19.094021, 22.582943, 11.635534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.732803, 22.408907, 12.153096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.069492, 22.192982, 12.149098>,  <19.271505, 22.063427, 12.146700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.069492, 22.192982, 12.149098>,  <18.732803, 22.408907, 12.153096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.069492, 22.192982, 12.149098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047083, -0.091832, 0.994661,
		-0.537851, -0.836759, -0.102713,
		0.841724, -0.539816, -0.009995,
		19.322010, 22.031036, 12.146100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.623840, 21.774630, 12.610953>,  <18.732803, 22.408907, 12.153096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.623840, 21.774630, 12.610953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.012226, 21.854160, 12.557735>,  <19.245256, 21.901878, 12.525805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.012226, 21.854160, 12.557735>,  <18.623840, 21.774630, 12.610953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.012226, 21.854160, 12.557735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102400, 0.157199, 0.982244,
		0.216209, -0.967345, 0.132275,
		0.970962, 0.198825, -0.133044,
		19.303514, 21.913809, 12.517822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.884584, 21.362694, 13.194876>,  <18.623840, 21.774630, 12.610953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.884584, 21.362694, 13.194876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.179848, 21.605457, 13.077036>,  <19.357006, 21.751116, 13.006332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.179848, 21.605457, 13.077036>,  <18.884584, 21.362694, 13.194876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.179848, 21.605457, 13.077036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330613, 0.055218, 0.942150,
		0.588065, -0.792852, -0.159892,
		0.738156, 0.606908, -0.294599,
		19.401295, 21.787529, 12.988656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.388767, 21.166914, 13.601858>,  <18.884584, 21.362694, 13.194876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.388767, 21.166914, 13.601858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.488293, 21.536465, 13.485554>,  <19.548008, 21.758196, 13.415771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.488293, 21.536465, 13.485554>,  <19.388767, 21.166914, 13.601858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.488293, 21.536465, 13.485554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428846, 0.164087, 0.888350,
		0.868437, -0.345724, -0.355375,
		0.248812, 0.923878, -0.290762,
		19.562937, 21.813627, 13.398325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.096207, 21.271441, 13.877739>,  <19.388767, 21.166914, 13.601858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.096207, 21.271441, 13.877739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.928532, 21.629318, 13.816029>,  <19.827927, 21.844046, 13.779002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.928532, 21.629318, 13.816029>,  <20.096207, 21.271441, 13.877739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.928532, 21.629318, 13.816029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264414, 0.282868, 0.921992,
		0.868543, 0.345694, -0.355145,
		-0.419187, 0.894696, -0.154276,
		19.802776, 21.897728, 13.769746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.609249, 21.708332, 14.064771>,  <20.096207, 21.271441, 13.877739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.609249, 21.708332, 14.064771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.290543, 21.950039, 14.066717>,  <20.099318, 22.095062, 14.067884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.290543, 21.950039, 14.066717>,  <20.609249, 21.708332, 14.064771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.290543, 21.950039, 14.066717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281100, 0.363501, 0.888172,
		0.534923, 0.709035, -0.459485,
		-0.796769, 0.604265, 0.004865,
		20.051512, 22.131319, 14.068176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.807198, 22.396330, 14.347242>,  <20.609249, 21.708332, 14.064771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.807198, 22.396330, 14.347242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.411457, 22.426651, 14.396940>,  <20.174013, 22.444843, 14.426759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.411457, 22.426651, 14.396940>,  <20.807198, 22.396330, 14.347242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.411457, 22.426651, 14.396940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141403, 0.298476, 0.943884,
		0.034466, 0.951402, -0.306016,
		-0.989352, 0.075804, 0.124244,
		20.114651, 22.449392, 14.434214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.629511, 23.017536, 14.718138>,  <20.807198, 22.396330, 14.347242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.629511, 23.017536, 14.718138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.322525, 22.768375, 14.778784>,  <20.138332, 22.618879, 14.815171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.322525, 22.768375, 14.778784>,  <20.629511, 23.017536, 14.718138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.322525, 22.768375, 14.778784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101076, 0.115969, 0.988097,
		-0.633071, 0.773655, -0.026042,
		-0.767466, -0.622904, 0.151614,
		20.092285, 22.581505, 14.824268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.450424, 23.151510, 15.429951>,  <20.629511, 23.017536, 14.718138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.450424, 23.151510, 15.429951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.194382, 22.848125, 15.380966>,  <20.040756, 22.666094, 15.351576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.194382, 22.848125, 15.380966>,  <20.450424, 23.151510, 15.429951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.194382, 22.848125, 15.380966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129904, -0.050254, 0.990252,
		-0.757224, 0.649775, -0.066360,
		-0.640106, -0.758464, -0.122462,
		20.002350, 22.620586, 15.344228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.849054, 23.378483, 15.800420>,  <20.450424, 23.151510, 15.429951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.849054, 23.378483, 15.800420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.877876, 22.980583, 15.771338>,  <19.895170, 22.741844, 15.753888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.877876, 22.980583, 15.771338>,  <19.849054, 23.378483, 15.800420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.877876, 22.980583, 15.771338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188266, -0.085150, 0.978420,
		-0.979471, -0.056812, -0.193413,
		0.072055, -0.994747, -0.072706,
		19.899492, 22.682159, 15.749526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.365471, 23.119514, 16.267725>,  <19.849054, 23.378483, 15.800420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.365471, 23.119514, 16.267725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.580193, 22.795677, 16.172731>,  <19.709024, 22.601374, 16.115734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.580193, 22.795677, 16.172731>,  <19.365471, 23.119514, 16.267725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.580193, 22.795677, 16.172731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027006, -0.264847, 0.963912,
		-0.843276, -0.523844, -0.120307,
		0.536802, -0.809595, -0.237486,
		19.741234, 22.552799, 16.101486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.004705, 22.465984, 16.591063>,  <19.365471, 23.119514, 16.267725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.004705, 22.465984, 16.591063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.393661, 22.378662, 16.558075>,  <19.627035, 22.326269, 16.538282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.393661, 22.378662, 16.558075>,  <19.004705, 22.465984, 16.591063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.393661, 22.378662, 16.558075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071571, -0.057371, 0.995784,
		-0.222116, -0.974193, -0.040163,
		0.972390, -0.218305, -0.082467,
		19.685379, 22.313171, 16.533335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.111198, 21.775644, 16.893055>,  <19.004705, 22.465984, 16.591063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.111198, 21.775644, 16.893055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.453728, 21.982220, 16.892975>,  <19.659246, 22.106165, 16.892927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.453728, 21.982220, 16.892975>,  <19.111198, 21.775644, 16.893055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.453728, 21.982220, 16.892975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183902, -0.304576, 0.934566,
		0.482584, -0.800329, -0.355790,
		0.856325, 0.516437, -0.000199,
		19.710625, 22.137150, 16.892916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.739939, 21.298391, 17.141277>,  <19.111198, 21.775644, 16.893055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.739939, 21.298391, 17.141277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.823563, 21.680683, 17.224098>,  <19.873737, 21.910059, 17.273790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.823563, 21.680683, 17.224098>,  <19.739939, 21.298391, 17.141277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.823563, 21.680683, 17.224098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186709, -0.246847, 0.950898,
		0.959913, -0.160137, -0.230050,
		0.209061, 0.955732, 0.207053,
		19.886282, 21.967403, 17.286215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.084709, 21.142570, 17.756598>,  <19.739939, 21.298391, 17.141277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.084709, 21.142570, 17.756598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.120098, 21.540962, 17.762203>,  <20.141333, 21.779997, 17.765566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.120098, 21.540962, 17.762203>,  <20.084709, 21.142570, 17.756598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.120098, 21.540962, 17.762203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309444, -0.040856, 0.950040,
		0.946793, -0.079717, -0.311815,
		0.088474, 0.995980, 0.014014,
		20.146641, 21.839756, 17.766407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.736568, 21.276846, 17.994127>,  <20.084709, 21.142570, 17.756598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.736568, 21.276846, 17.994127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.489128, 21.582970, 18.065268>,  <20.340664, 21.766644, 18.107952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.489128, 21.582970, 18.065268>,  <20.736568, 21.276846, 17.994127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.489128, 21.582970, 18.065268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390049, 0.102624, 0.915057,
		0.682051, 0.635427, -0.361992,
		-0.618601, 0.765311, 0.177853,
		20.303547, 21.812563, 18.118624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.124208, 21.812141, 18.364775>,  <20.736568, 21.276846, 17.994127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.124208, 21.812141, 18.364775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.752735, 21.941135, 18.438044>,  <20.529852, 22.018532, 18.482006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.752735, 21.941135, 18.438044>,  <21.124208, 21.812141, 18.364775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.752735, 21.941135, 18.438044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226296, 0.101415, 0.968765,
		0.293838, 0.941125, -0.167160,
		-0.928681, 0.322487, 0.183173,
		20.474131, 22.037882, 18.492996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.161335, 22.477940, 18.764360>,  <21.124208, 21.812141, 18.364775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.161335, 22.477940, 18.764360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.802113, 22.322350, 18.846529>,  <20.586580, 22.228996, 18.895830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.802113, 22.322350, 18.846529>,  <21.161335, 22.477940, 18.764360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.802113, 22.322350, 18.846529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095919, 0.282586, 0.954434,
		-0.429298, 0.876838, -0.216468,
		-0.898055, -0.388973, 0.205419,
		20.532696, 22.205658, 18.908155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.773529, 23.032661, 19.235769>,  <21.161335, 22.477940, 18.764360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.773529, 23.032661, 19.235769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.616070, 22.670025, 19.296612>,  <20.521595, 22.452444, 19.333117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.616070, 22.670025, 19.296612>,  <20.773529, 23.032661, 19.235769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.616070, 22.670025, 19.296612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007634, 0.162237, 0.986722,
		-0.919231, 0.389580, -0.056943,
		-0.393646, -0.906591, 0.152107,
		20.497976, 22.398048, 19.342243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.460020, 23.178434, 19.803047>,  <20.773529, 23.032661, 19.235769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.460020, 23.178434, 19.803047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.432426, 22.779392, 19.804981>,  <20.415871, 22.539967, 19.806141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.432426, 22.779392, 19.804981>,  <20.460020, 23.178434, 19.803047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.432426, 22.779392, 19.804981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205081, 0.018924, 0.978562,
		-0.976311, 0.066515, -0.205896,
		-0.068986, -0.997606, 0.004835,
		20.411732, 22.480110, 19.806431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.823204, 22.983074, 20.046169>,  <20.460020, 23.178434, 19.803047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.823204, 22.983074, 20.046169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.015301, 22.633736, 20.078758>,  <20.130558, 22.424133, 20.098312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.015301, 22.633736, 20.078758>,  <19.823204, 22.983074, 20.046169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.015301, 22.633736, 20.078758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324144, -0.090394, 0.941679,
		-0.815046, -0.478642, -0.326500,
		0.480241, -0.873345, 0.081474,
		20.159372, 22.371733, 20.103201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.335373, 22.518290, 20.351879>,  <19.823204, 22.983074, 20.046169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.335373, 22.518290, 20.351879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.696262, 22.369335, 20.438890>,  <19.912796, 22.279963, 20.491096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.696262, 22.369335, 20.438890>,  <19.335373, 22.518290, 20.351879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.696262, 22.369335, 20.438890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258395, -0.062932, 0.963987,
		-0.345289, -0.925941, -0.153002,
		0.902224, -0.372389, 0.217528,
		19.966930, 22.257618, 20.504148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.256279, 21.879120, 20.758459>,  <19.335373, 22.518290, 20.351879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.256279, 21.879120, 20.758459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.619507, 22.028797, 20.833710>,  <19.837444, 22.118603, 20.878860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.619507, 22.028797, 20.833710>,  <19.256279, 21.879120, 20.758459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.619507, 22.028797, 20.833710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252281, 0.130152, 0.958861,
		0.334313, -0.918173, 0.212588,
		0.908069, 0.374192, 0.188126,
		19.891928, 22.141054, 20.890148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.849852, 21.164976, 20.772722>,  <19.256279, 21.879120, 20.758459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.849852, 21.164976, 20.772722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.474171, 21.235271, 20.890715>,  <18.248762, 21.277449, 20.961510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.474171, 21.235271, 20.890715>,  <18.849852, 21.164976, 20.772722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.474171, 21.235271, 20.890715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316818, -0.112321, -0.941812,
		-0.132389, -0.978007, 0.161172,
		-0.939202, 0.175747, 0.294981,
		18.192410, 21.287992, 20.979210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.317286, 20.681852, 20.387720>,  <18.849852, 21.164976, 20.772722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.317286, 20.681852, 20.387720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.106358, 20.999001, 20.509892>,  <17.979801, 21.189289, 20.583195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.106358, 20.999001, 20.509892>,  <18.317286, 20.681852, 20.387720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.106358, 20.999001, 20.509892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528270, -0.024395, -0.848726,
		-0.665479, -0.608901, 0.431714,
		-0.527322, 0.792871, 0.305429,
		17.948160, 21.236862, 20.601521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.753113, 20.587729, 19.917816>,  <18.317286, 20.681852, 20.387720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.753113, 20.587729, 19.917816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.712971, 20.956654, 20.067091>,  <17.688885, 21.178009, 20.156656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.712971, 20.956654, 20.067091>,  <17.753113, 20.587729, 19.917816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.712971, 20.956654, 20.067091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477880, 0.284303, -0.831145,
		-0.872674, -0.261749, 0.412223,
		-0.100355, 0.922312, 0.373188,
		17.682863, 21.233347, 20.179047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.954689, 20.768152, 19.983788>,  <17.753113, 20.587729, 19.917816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.954689, 20.768152, 19.983788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.159836, 21.108036, 19.934864>,  <17.282925, 21.311966, 19.905510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.159836, 21.108036, 19.934864>,  <16.954689, 20.768152, 19.983788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.159836, 21.108036, 19.934864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546633, 0.213386, -0.809728,
		-0.661935, 0.482141, 0.573918,
		0.512869, 0.849710, -0.122307,
		17.313696, 21.362949, 19.898172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.475103, 21.196686, 19.681627>,  <16.954689, 20.768152, 19.983788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.475103, 21.196686, 19.681627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.814812, 21.393932, 19.606184>,  <17.018637, 21.512281, 19.560919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.814812, 21.393932, 19.606184>,  <16.475103, 21.196686, 19.681627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.814812, 21.393932, 19.606184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302316, 0.161340, -0.939454,
		-0.432832, 0.854871, 0.286099,
		0.849271, 0.493118, -0.188608,
		17.069593, 21.541868, 19.549601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
