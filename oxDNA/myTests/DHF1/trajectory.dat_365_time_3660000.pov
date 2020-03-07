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
	<0.122971, 4.749833, 1.506452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.519146, 4.796715, 1.535561>,  <0.756851, 4.824844, 1.553025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.519146, 4.796715, 1.535561>,  <0.122971, 4.749833, 1.506452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.519146, 4.796715, 1.535561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137284, -0.889415, -0.435997,
		0.013622, 0.441818, -0.897001,
		0.990438, 0.117204, 0.072770,
		0.816277, 4.831876, 1.557392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.427422, 4.540719, 0.834633>,  <0.122971, 4.749833, 1.506452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.427422, 4.540719, 0.834633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.739201, 4.535172, 1.085159>,  <0.926268, 4.531843, 1.235475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.739201, 4.535172, 1.085159>,  <0.427422, 4.540719, 0.834633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.739201, 4.535172, 1.085159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414529, -0.738176, -0.532223,
		0.469711, 0.674465, -0.569620,
		0.779446, -0.013867, 0.626315,
		0.973035, 4.531012, 1.273054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.026219, 4.708545, 0.496652>,  <0.427422, 4.540719, 0.834633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.026219, 4.708545, 0.496652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.103508, 4.477226, 0.813698>,  <1.149881, 4.338435, 1.003925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.103508, 4.477226, 0.813698>,  <1.026219, 4.708545, 0.496652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.103508, 4.477226, 0.813698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428251, -0.677115, -0.598427,
		0.882760, 0.455068, 0.116822,
		0.193223, -0.578297, 0.792614,
		1.161475, 4.303737, 1.051482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.747607, 4.486923, 0.694215>,  <1.026219, 4.708545, 0.496652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.747607, 4.486923, 0.694215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.494293, 4.194000, 0.794357>,  <1.342305, 4.018247, 0.854442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.494293, 4.194000, 0.794357>,  <1.747607, 4.486923, 0.694215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.494293, 4.194000, 0.794357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639623, -0.677367, -0.363394,
		0.435699, -0.069999, 0.897367,
		-0.633284, -0.732307, 0.250355,
		1.304308, 3.974308, 0.869464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.157548, 3.928379, 1.006581>,  <1.747607, 4.486923, 0.694215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.157548, 3.928379, 1.006581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.821175, 3.754120, 0.878181>,  <1.619350, 3.649564, 0.801142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.821175, 3.754120, 0.878181>,  <2.157548, 3.928379, 1.006581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.821175, 3.754120, 0.878181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539973, -0.714445, -0.444970,
		-0.035485, -0.547520, 0.836040,
		-0.840934, -0.435649, -0.320998,
		1.568894, 3.623425, 0.781882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.149494, 3.168828, 1.261493>,  <2.157548, 3.928379, 1.006581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.149494, 3.168828, 1.261493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.918560, 3.208939, 0.937363>,  <1.779999, 3.233005, 0.742884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.918560, 3.208939, 0.937363>,  <2.149494, 3.168828, 1.261493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.918560, 3.208939, 0.937363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544937, -0.691742, -0.473854,
		-0.608053, -0.715149, 0.344723,
		-0.577336, 0.100276, -0.810326,
		1.745359, 3.239021, 0.694265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.079245, 2.453642, 0.989107>,  <2.149494, 3.168828, 1.261493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.079245, 2.453642, 0.989107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.979412, 2.707840, 0.696846>,  <1.919512, 2.860359, 0.521489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.979412, 2.707840, 0.696846>,  <2.079245, 2.453642, 0.989107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.979412, 2.707840, 0.696846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409868, -0.614284, -0.674288,
		-0.877335, -0.467762, -0.107154,
		-0.249583, 0.635495, -0.730653,
		1.904537, 2.898489, 0.477650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.828895, 2.091014, 0.406978>,  <2.079245, 2.453642, 0.989107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.828895, 2.091014, 0.406978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.006809, 2.436539, 0.312325>,  <2.113558, 2.643854, 0.255533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.006809, 2.436539, 0.312325>,  <1.828895, 2.091014, 0.406978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.006809, 2.436539, 0.312325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553206, -0.472749, -0.685909,
		-0.704365, 0.174175, -0.688138,
		0.444785, 0.863812, -0.236633,
		2.140245, 2.695682, 0.241335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.379880, 3.203721, 3.827755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.553943, 3.272392, 4.181290>,  <3.658380, 3.313595, 4.393410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.553943, 3.272392, 4.181290>,  <3.379880, 3.203721, 3.827755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.553943, 3.272392, 4.181290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811954, -0.349362, 0.467628,
		0.389061, -0.921125, -0.012632,
		0.435157, 0.171679, 0.883835,
		3.684490, 3.323896, 4.446440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.211813, 2.638468, 4.251630>,  <3.379880, 3.203721, 3.827755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.211813, 2.638468, 4.251630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.350507, 2.917717, 4.502197>,  <3.433723, 3.085267, 4.652538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.350507, 2.917717, 4.502197>,  <3.211813, 2.638468, 4.251630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.350507, 2.917717, 4.502197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697124, -0.255006, 0.670067,
		0.627530, -0.669026, 0.398260,
		0.346733, 0.698124, 0.626418,
		3.454527, 3.127154, 4.690123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.535644, 2.869658, 4.239676>,  <3.211813, 2.638468, 4.251630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.535644, 2.869658, 4.239676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.305502, 2.661499, 4.492073>,  <2.167417, 2.536604, 4.643512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.305502, 2.661499, 4.492073>,  <2.535644, 2.869658, 4.239676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.305502, 2.661499, 4.492073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437158, 0.847697, 0.300505,
		-0.691273, -0.102947, -0.715222,
		-0.575355, -0.520396, 0.630994,
		2.132895, 2.505380, 4.681371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.161451, 3.326452, 4.487690>,  <2.535644, 2.869658, 4.239676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.161451, 3.326452, 4.487690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.993003, 3.020226, 4.682243>,  <1.891934, 2.836490, 4.798975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.993003, 3.020226, 4.682243>,  <2.161451, 3.326452, 4.487690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.993003, 3.020226, 4.682243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626634, 0.633265, 0.454208,
		-0.655735, -0.113508, -0.746410,
		-0.421119, -0.765566, 0.486382,
		1.866667, 2.790556, 4.828158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.464598, 3.440760, 4.443117>,  <2.161451, 3.326452, 4.487690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.464598, 3.440760, 4.443117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.550913, 3.232559, 4.773575>,  <1.602702, 3.107639, 4.971849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.550913, 3.232559, 4.773575>,  <1.464598, 3.440760, 4.443117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.550913, 3.232559, 4.773575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525971, 0.650877, 0.547460,
		-0.822673, -0.552663, -0.133318,
		0.215787, -0.520502, 0.826144,
		1.615649, 3.076409, 5.021418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.838637, 3.353777, 4.791450>,  <1.464598, 3.440760, 4.443117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.838637, 3.353777, 4.791450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.111119, 3.294426, 5.078209>,  <1.274609, 3.258816, 5.250264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.111119, 3.294426, 5.078209>,  <0.838637, 3.353777, 4.791450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.111119, 3.294426, 5.078209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598255, 0.451587, 0.661937,
		-0.421958, -0.879803, 0.218857,
		0.681206, -0.148377, 0.716897,
		1.315481, 3.249913, 5.293278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.476684, 3.055837, 5.383053>,  <0.838637, 3.353777, 4.791450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.476684, 3.055837, 5.383053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.808797, 3.231560, 5.520248>,  <1.008065, 3.336994, 5.602566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.808797, 3.231560, 5.520248>,  <0.476684, 3.055837, 5.383053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.808797, 3.231560, 5.520248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549971, 0.546014, 0.631981,
		0.090357, -0.713356, 0.694952,
		0.830281, 0.439307, 0.342989,
		1.057881, 3.363352, 5.623145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.498848, 3.023797, 6.144558>,  <0.476684, 3.055837, 5.383053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.498848, 3.023797, 6.144558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.748518, 3.319939, 6.044731>,  <0.898320, 3.497623, 5.984835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.748518, 3.319939, 6.044731>,  <0.498848, 3.023797, 6.144558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.748518, 3.319939, 6.044731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496512, 0.622518, 0.604936,
		0.603221, -0.253678, 0.756156,
		0.624179, 0.740351, -0.249562,
		0.935770, 3.542045, 5.969861>
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
