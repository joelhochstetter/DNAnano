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
	<1.675079, 5.298195, 1.367393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.783485, 4.999199, 1.609982>,  <1.848529, 4.819801, 1.755535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.783485, 4.999199, 1.609982>,  <1.675079, 5.298195, 1.367393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.783485, 4.999199, 1.609982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798313, -0.526572, -0.292266,
		0.537817, -0.404946, -0.739440,
		0.271016, -0.747490, 0.606472,
		1.864790, 4.774952, 1.791923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.511480, 4.543761, 0.975405>,  <1.675079, 5.298195, 1.367393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.511480, 4.543761, 0.975405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.488426, 4.517426, 1.373871>,  <1.474594, 4.501624, 1.612950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.488426, 4.517426, 1.373871>,  <1.511480, 4.543761, 0.975405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.488426, 4.517426, 1.373871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864166, -0.496348, -0.082803,
		0.499896, -0.865623, -0.028289,
		-0.057635, -0.065839, 0.996164,
		1.471135, 4.497674, 1.672720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.252277, 3.886767, 1.216344>,  <1.511480, 4.543761, 0.975405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.252277, 3.886767, 1.216344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.167599, 4.149330, 1.505981>,  <1.116792, 4.306868, 1.679764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.167599, 4.149330, 1.505981>,  <1.252277, 3.886767, 1.216344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.167599, 4.149330, 1.505981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949850, -0.312652, 0.005728,
		0.230150, -0.686569, 0.689677,
		-0.211696, 0.656408, 0.724095,
		1.104090, 4.346252, 1.723210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.113606, 3.606019, 1.860278>,  <1.252277, 3.886767, 1.216344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.113606, 3.606019, 1.860278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.928299, 3.954338, 1.794434>,  <0.817115, 4.163329, 1.754927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.928299, 3.954338, 1.794434>,  <1.113606, 3.606019, 1.860278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.928299, 3.954338, 1.794434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873408, -0.480094, -0.081661,
		-0.150139, 0.105942, 0.982972,
		-0.463267, 0.870796, -0.164611,
		0.789319, 4.215577, 1.745050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.429575, 3.516563, 2.300520>,  <1.113606, 3.606019, 1.860278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.429575, 3.516563, 2.300520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.357178, 3.772995, 2.002190>,  <0.313740, 3.926854, 1.823191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.357178, 3.772995, 2.002190>,  <0.429575, 3.516563, 2.300520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.357178, 3.772995, 2.002190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954892, -0.296080, -0.022771,
		-0.235422, 0.708062, 0.665751,
		-0.180992, 0.641081, -0.745826,
		0.302880, 3.965319, 1.778442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.178440, 3.962000, 2.474368>,  <0.429575, 3.516563, 2.300520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.178440, 3.962000, 2.474368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.145817, 3.935135, 2.076607>,  <-0.126243, 3.919016, 1.837950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.145817, 3.935135, 2.076607>,  <-0.178440, 3.962000, 2.474368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.145817, 3.935135, 2.076607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937011, -0.345172, -0.053536,
		-0.339645, 0.936133, -0.091084,
		0.081557, -0.067164, -0.994403,
		-0.121350, 3.914986, 1.778286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.807766, 4.234981, 2.149029>,  <-0.178440, 3.962000, 2.474368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.807766, 4.234981, 2.149029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.626549, 3.987877, 1.891930>,  <-0.517818, 3.839615, 1.737670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.626549, 3.987877, 1.891930>,  <-0.807766, 4.234981, 2.149029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.626549, 3.987877, 1.891930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869054, -0.466763, -0.163941,
		-0.198734, 0.632855, -0.748330,
		0.453044, -0.617759, -0.642748,
		-0.490636, 3.802549, 1.699105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.177738, 4.246655, 1.481782>,  <-0.807766, 4.234981, 2.149029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.177738, 4.246655, 1.481782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.979355, 3.899826, 1.500595>,  <-0.860325, 3.691729, 1.511883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.979355, 3.899826, 1.500595>,  <-1.177738, 4.246655, 1.481782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.979355, 3.899826, 1.500595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812008, -0.482292, -0.328690,
		0.307681, 0.124826, -0.943266,
		0.495959, -0.867071, 0.047033,
		-0.830567, 3.639705, 1.514705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.173690, 3.082161, 1.559448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.356983, 2.750000, 1.432671>,  <3.466959, 2.550703, 1.356604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.356983, 2.750000, 1.432671>,  <3.173690, 3.082161, 1.559448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.356983, 2.750000, 1.432671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886214, 0.454195, 0.091273,
		0.068160, -0.322703, 0.944043,
		0.458233, -0.830403, -0.316942,
		3.494453, 2.500879, 1.337588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.697073, 2.896568, 2.016730>,  <3.173690, 3.082161, 1.559448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.697073, 2.896568, 2.016730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.802803, 2.807495, 1.641380>,  <3.866241, 2.754052, 1.416171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.802803, 2.807495, 1.641380>,  <3.697073, 2.896568, 2.016730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.802803, 2.807495, 1.641380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738910, 0.672045, 0.048660,
		0.619794, -0.706235, 0.342180,
		0.264325, -0.222681, -0.938374,
		3.882101, 2.740691, 1.359868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.373395, 2.575526, 1.940313>,  <3.697073, 2.896568, 2.016730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.373395, 2.575526, 1.940313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.265409, 2.798309, 1.626137>,  <4.200617, 2.931979, 1.437631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.265409, 2.798309, 1.626137>,  <4.373395, 2.575526, 1.940313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.265409, 2.798309, 1.626137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822182, 0.557894, 0.113010,
		0.501134, -0.615266, -0.608533,
		-0.269965, 0.556958, -0.785440,
		4.184419, 2.965397, 1.390505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.791323, 2.515813, 1.366053>,  <4.373395, 2.575526, 1.940313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.791323, 2.515813, 1.366053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.612719, 2.872528, 1.395294>,  <4.505557, 3.086557, 1.412839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.612719, 2.872528, 1.395294>,  <4.791323, 2.515813, 1.366053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.612719, 2.872528, 1.395294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894575, 0.443169, 0.057770,
		0.019121, 0.091192, -0.995650,
		-0.446509, 0.891788, 0.073104,
		4.478766, 3.140064, 1.417225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.215703, 2.937470, 0.962907>,  <4.791323, 2.515813, 1.366053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.215703, 2.937470, 0.962907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.990443, 3.163193, 1.204376>,  <4.855288, 3.298626, 1.349258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.990443, 3.163193, 1.204376>,  <5.215703, 2.937470, 0.962907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.990443, 3.163193, 1.204376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792375, 0.576086, 0.200664,
		-0.234532, 0.591339, -0.771565,
		-0.563149, 0.564307, 0.603673,
		4.821498, 3.332485, 1.385478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.935179, 3.382912, 0.552158>,  <5.215703, 2.937470, 0.962907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.935179, 3.382912, 0.552158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.785265, 3.522369, 0.895782>,  <4.695318, 3.606044, 1.101957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.785265, 3.522369, 0.895782>,  <4.935179, 3.382912, 0.552158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.785265, 3.522369, 0.895782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766723, 0.637490, 0.075778,
		-0.521224, 0.687061, -0.506234,
		-0.374783, 0.348644, 0.859061,
		4.672831, 3.626962, 1.153501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.052722, 4.109316, 0.505899>,  <4.935179, 3.382912, 0.552158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.052722, 4.109316, 0.505899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.996282, 4.046631, 0.896904>,  <4.962417, 4.009020, 1.131507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.996282, 4.046631, 0.896904>,  <5.052722, 4.109316, 0.505899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.996282, 4.046631, 0.896904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752238, 0.624942, 0.208773,
		-0.643606, 0.764780, 0.029706,
		-0.141101, -0.156713, 0.977513,
		4.953951, 3.999617, 1.190158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.149137, 4.784702, 0.822271>,  <5.052722, 4.109316, 0.505899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.149137, 4.784702, 0.822271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.192160, 4.512619, 1.112305>,  <5.217973, 4.349369, 1.286325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.192160, 4.512619, 1.112305>,  <5.149137, 4.784702, 0.822271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.192160, 4.512619, 1.112305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783904, 0.506597, 0.358962,
		-0.611495, 0.529788, 0.587706,
		0.107556, -0.680209, 0.725085,
		5.224427, 4.308557, 1.329830>
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
