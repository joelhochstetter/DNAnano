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
	<1.202857, 2.610002, 1.769479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.853004, 2.689682, 1.946268>,  <0.643093, 2.737490, 2.052342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.853004, 2.689682, 1.946268>,  <1.202857, 2.610002, 1.769479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.853004, 2.689682, 1.946268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192726, 0.979414, -0.060036,
		-0.444834, 0.032670, -0.895017,
		-0.874631, 0.199199, 0.441973,
		0.590615, 2.749442, 2.078860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.795882, 3.175949, 1.437427>,  <1.202857, 2.610002, 1.769479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.795882, 3.175949, 1.437427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.685528, 3.151405, 1.821119>,  <0.619315, 3.136679, 2.051334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.685528, 3.151405, 1.821119>,  <0.795882, 3.175949, 1.437427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.685528, 3.151405, 1.821119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155185, 0.982024, 0.107451,
		-0.948580, 0.178502, -0.261405,
		-0.275887, -0.061360, 0.959230,
		0.602762, 3.132997, 2.108888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.247135, 3.613811, 1.550080>,  <0.795882, 3.175949, 1.437427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.247135, 3.613811, 1.550080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.481792, 3.567162, 1.870642>,  <0.622587, 3.539172, 2.062979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.481792, 3.567162, 1.870642>,  <0.247135, 3.613811, 1.550080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.481792, 3.567162, 1.870642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099546, 0.992457, 0.071556,
		-0.803703, 0.037799, 0.593829,
		0.586644, -0.116624, 0.801403,
		0.657786, 3.532174, 2.111063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.052874, 4.167830, 1.955487>,  <0.247135, 3.613811, 1.550080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.052874, 4.167830, 1.955487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.315903, 4.095253, 2.092367>,  <0.537169, 4.051707, 2.174495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.315903, 4.095253, 2.092367>,  <-0.052874, 4.167830, 1.955487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.315903, 4.095253, 2.092367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182675, 0.982748, 0.028921,
		-0.341545, 0.035848, 0.939182,
		0.921942, -0.181443, 0.342201,
		0.592485, 4.040820, 2.195028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.043845, 4.620875, 2.423276>,  <-0.052874, 4.167830, 1.955487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.043845, 4.620875, 2.423276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.422321, 4.512291, 2.352812>,  <0.649407, 4.447140, 2.310533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.422321, 4.512291, 2.352812>,  <0.043845, 4.620875, 2.423276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.422321, 4.512291, 2.352812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294299, 0.948206, 0.119557,
		0.134582, -0.164967, 0.977074,
		0.946190, -0.271461, -0.176161,
		0.706178, 4.430852, 2.299963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.424630, 4.902506, 2.914412>,  <0.043845, 4.620875, 2.423276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.424630, 4.902506, 2.914412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.681461, 4.840164, 2.614161>,  <0.835560, 4.802759, 2.434010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.681461, 4.840164, 2.614161>,  <0.424630, 4.902506, 2.914412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.681461, 4.840164, 2.614161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208982, 0.977619, -0.024225,
		0.737604, -0.141313, 0.660281,
		0.642080, -0.155856, -0.750628,
		0.874085, 4.793407, 2.388972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.897524, 5.433855, 3.034202>,  <0.424630, 4.902506, 2.914412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.897524, 5.433855, 3.034202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.941006, 5.335892, 2.648829>,  <0.967095, 5.277114, 2.417604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.941006, 5.335892, 2.648829>,  <0.897524, 5.433855, 3.034202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.941006, 5.335892, 2.648829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198372, 0.955028, -0.220388,
		0.974080, -0.167161, 0.152398,
		0.108704, -0.244907, -0.963434,
		0.973617, 5.262420, 2.359798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.614412, 5.649415, 2.797980>,  <0.897524, 5.433855, 3.034202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.614412, 5.649415, 2.797980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.345589, 5.648102, 2.501783>,  <1.184295, 5.647314, 2.324065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.345589, 5.648102, 2.501783>,  <1.614412, 5.649415, 2.797980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.345589, 5.648102, 2.501783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250487, 0.940032, -0.231507,
		0.696846, -0.341070, -0.630933,
		-0.672058, -0.003284, -0.740492,
		1.143971, 5.647117, 2.279636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.938154, 1.916886, 2.313776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.943565, 1.823090, 1.924967>,  <0.946812, 1.766811, 1.691681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.943565, 1.823090, 1.924967>,  <0.938154, 1.916886, 2.313776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.943565, 1.823090, 1.924967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005673, -0.972079, 0.234585,
		-0.999892, -0.008688, -0.011821,
		0.013529, -0.234492, -0.972024,
		0.947624, 1.752742, 1.633360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.314818, 1.491575, 2.111493>,  <0.938154, 1.916886, 2.313776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.314818, 1.491575, 2.111493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.634918, 1.396652, 1.891209>,  <0.826979, 1.339699, 1.759038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.634918, 1.396652, 1.891209>,  <0.314818, 1.491575, 2.111493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.634918, 1.396652, 1.891209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066547, -0.947837, 0.311731,
		-0.595960, -0.212815, -0.774300,
		0.800252, -0.237307, -0.550711,
		0.874994, 1.325460, 1.725995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.144374, 0.974104, 1.696651>,  <0.314818, 1.491575, 2.111493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.144374, 0.974104, 1.696651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.538269, 0.964294, 1.765574>,  <0.774606, 0.958409, 1.806927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.538269, 0.964294, 1.765574>,  <0.144374, 0.974104, 1.696651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.538269, 0.964294, 1.765574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050158, -0.988006, 0.146039,
		0.166658, -0.152453, -0.974158,
		0.984738, -0.024523, 0.172306,
		0.833691, 0.956937, 1.817265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.457129, 0.479211, 1.169963>,  <0.144374, 0.974104, 1.696651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.457129, 0.479211, 1.169963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.674416, 0.511757, 1.504219>,  <0.804787, 0.531285, 1.704773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.674416, 0.511757, 1.504219>,  <0.457129, 0.479211, 1.169963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.674416, 0.511757, 1.504219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010593, -0.995878, 0.090082,
		0.839526, -0.040082, -0.541839,
		0.543216, 0.081366, 0.835641,
		0.837380, 0.536167, 1.754911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.022282, -0.010960, 1.055321>,  <0.457129, 0.479211, 1.169963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.022282, -0.010960, 1.055321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.009117, 0.058952, 1.448944>,  <1.001218, 0.100900, 1.685118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.009117, 0.058952, 1.448944>,  <1.022282, -0.010960, 1.055321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.009117, 0.058952, 1.448944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110429, -0.977926, 0.177385,
		0.993339, 0.114507, 0.012885,
		-0.032912, 0.174781, 0.984057,
		0.999243, 0.111387, 1.744161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.515285, -0.463243, 1.254937>,  <1.022282, -0.010960, 1.055321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.515285, -0.463243, 1.254937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.318878, -0.387405, 1.595045>,  <1.201034, -0.341903, 1.799110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.318878, -0.387405, 1.595045>,  <1.515285, -0.463243, 1.254937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.318878, -0.387405, 1.595045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008760, -0.977055, 0.212806,
		0.871107, 0.097043, 0.481410,
		-0.491016, 0.189594, 0.850269,
		1.171573, -0.330527, 1.850126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.815895, -0.888364, 1.673109>,  <1.515285, -0.463243, 1.254937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.815895, -0.888364, 1.673109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.476204, -0.799271, 1.864609>,  <1.272389, -0.745815, 1.979509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.476204, -0.799271, 1.864609>,  <1.815895, -0.888364, 1.673109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.476204, -0.799271, 1.864609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088897, -0.954046, 0.286169,
		0.520489, 0.200463, 0.830003,
		-0.849228, 0.222732, 0.478750,
		1.221436, -0.732451, 2.008234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.834131, -1.137205, 2.456616>,  <1.815895, -0.888364, 1.673109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.834131, -1.137205, 2.456616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.452438, -1.123657, 2.337759>,  <1.223423, -1.115528, 2.266445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.452438, -1.123657, 2.337759>,  <1.834131, -1.137205, 2.456616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.452438, -1.123657, 2.337759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105414, -0.967891, 0.228199,
		-0.279873, 0.249078, 0.927163,
		-0.954232, 0.033870, -0.297143,
		1.166169, -1.113496, 2.248616>
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
