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
	<0.581589, -0.316577, 4.407749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.516499, -0.240173, 4.020546>,  <0.477445, -0.194331, 3.788224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.516499, -0.240173, 4.020546>,  <0.581589, -0.316577, 4.407749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.516499, -0.240173, 4.020546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649180, 0.759542, 0.040745,
		0.743024, -0.621781, -0.247596,
		-0.162725, 0.191009, -0.968006,
		0.467681, -0.182871, 3.730144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.182470, -0.008908, 4.235548>,  <0.581589, -0.316577, 4.407749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.182470, -0.008908, 4.235548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.916092, 0.051756, 3.943378>,  <0.756265, 0.088154, 3.768077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.916092, 0.051756, 3.943378>,  <1.182470, -0.008908, 4.235548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.916092, 0.051756, 3.943378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450088, 0.862517, -0.231270,
		0.594928, -0.482768, -0.642648,
		-0.665944, 0.151659, -0.730423,
		0.716309, 0.097254, 3.724252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.545205, 0.161298, 3.606756>,  <1.182470, -0.008908, 4.235548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.545205, 0.161298, 3.606756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.181072, 0.326839, 3.604914>,  <0.962593, 0.426165, 3.603808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.181072, 0.326839, 3.604914>,  <1.545205, 0.161298, 3.606756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.181072, 0.326839, 3.604914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397357, 0.870823, -0.289438,
		-0.115775, -0.265315, -0.957186,
		-0.910331, 0.413854, -0.004606,
		0.907973, 0.450996, 3.603532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.382819, 0.514190, 3.077001>,  <1.545205, 0.161298, 3.606756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.382819, 0.514190, 3.077001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.180359, 0.706371, 3.363491>,  <1.058883, 0.821680, 3.535385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.180359, 0.706371, 3.363491>,  <1.382819, 0.514190, 3.077001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.180359, 0.706371, 3.363491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521187, 0.832061, -0.189838,
		-0.687151, 0.277201, -0.671553,
		-0.506150, 0.480452, 0.716225,
		1.028514, 0.850507, 3.578358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.023275, 1.197389, 2.831950>,  <1.382819, 0.514190, 3.077001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.023275, 1.197389, 2.831950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.148830, 1.192642, 3.211704>,  <1.224164, 1.189794, 3.439557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.148830, 1.192642, 3.211704>,  <1.023275, 1.197389, 2.831950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.148830, 1.192642, 3.211704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619039, 0.760726, -0.195159,
		-0.719906, 0.648965, 0.246130,
		0.313888, -0.011868, 0.949386,
		1.242997, 1.189082, 3.496520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.946024, 1.826086, 3.016872>,  <1.023275, 1.197389, 2.831950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.946024, 1.826086, 3.016872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.209465, 1.678883, 3.279417>,  <1.367530, 1.590560, 3.436944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.209465, 1.678883, 3.279417>,  <0.946024, 1.826086, 3.016872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.209465, 1.678883, 3.279417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605571, 0.776981, -0.172000,
		-0.446684, 0.510754, 0.734578,
		0.658603, -0.368009, 0.656362,
		1.407046, 1.568480, 3.476326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.230497, 2.406022, 3.338405>,  <0.946024, 1.826086, 3.016872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.230497, 2.406022, 3.338405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.507565, 2.125172, 3.404413>,  <1.673805, 1.956662, 3.444018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.507565, 2.125172, 3.404413>,  <1.230497, 2.406022, 3.338405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.507565, 2.125172, 3.404413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719301, 0.655635, -0.229669,
		0.053064, 0.277783, 0.959177,
		0.692668, -0.702125, 0.165020,
		1.715365, 1.914534, 3.453919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.791623, 2.830110, 3.732844>,  <1.230497, 2.406022, 3.338405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.791623, 2.830110, 3.732844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.936630, 2.502853, 3.554306>,  <2.023634, 2.306499, 3.447183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.936630, 2.502853, 3.554306>,  <1.791623, 2.830110, 3.732844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.936630, 2.502853, 3.554306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847762, 0.488427, -0.206732,
		0.387144, -0.303450, 0.870654,
		0.362518, -0.818142, -0.446345,
		2.045386, 2.257411, 3.420403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.734419, 2.970125, 2.680751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.971664, 2.648209, 2.689957>,  <3.114012, 2.455060, 2.695480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.971664, 2.648209, 2.689957>,  <2.734419, 2.970125, 2.680751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.971664, 2.648209, 2.689957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602694, -0.424858, 0.675466,
		-0.533832, -0.414497, -0.737032,
		0.593113, -0.804790, 0.023012,
		3.149599, 2.406772, 2.696861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.439087, 2.397541, 2.311993>,  <2.734419, 2.970125, 2.680751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.439087, 2.397541, 2.311993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.669205, 2.300449, 2.624434>,  <2.807275, 2.242194, 2.811898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.669205, 2.300449, 2.624434>,  <2.439087, 2.397541, 2.311993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.669205, 2.300449, 2.624434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778760, -0.454578, 0.432308,
		0.250138, -0.856995, -0.450544,
		0.575294, -0.242729, 0.781102,
		2.841793, 2.227630, 2.858764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.363530, 1.719412, 2.439809>,  <2.439087, 2.397541, 2.311993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.363530, 1.719412, 2.439809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.472977, 1.886503, 2.786366>,  <2.538645, 1.986758, 2.994301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.472977, 1.886503, 2.786366>,  <2.363530, 1.719412, 2.439809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.472977, 1.886503, 2.786366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709313, -0.520742, 0.475082,
		0.649622, -0.744535, 0.153816,
		0.273617, 0.417727, 0.866393,
		2.555062, 2.011821, 3.046284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.575595, 1.142635, 2.955286>,  <2.363530, 1.719412, 2.439809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.575595, 1.142635, 2.955286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.425560, 1.486192, 3.094777>,  <2.335539, 1.692327, 3.178472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.425560, 1.486192, 3.094777>,  <2.575595, 1.142635, 2.955286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.425560, 1.486192, 3.094777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755872, -0.501157, 0.421305,
		0.536624, -0.105568, 0.837192,
		-0.375089, 0.858893, 0.348729,
		2.313033, 1.743860, 3.199396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.509528, 0.935297, 3.642568>,  <2.575595, 1.142635, 2.955286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.509528, 0.935297, 3.642568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.260315, 1.247695, 3.625237>,  <2.110787, 1.435134, 3.614839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.260315, 1.247695, 3.625237>,  <2.509528, 0.935297, 3.642568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.260315, 1.247695, 3.625237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708422, -0.539920, 0.454558,
		0.331615, 0.313898, 0.889662,
		-0.623032, 0.780995, -0.043327,
		2.073405, 1.481994, 3.612239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.247155, 1.067411, 4.322993>,  <2.509528, 0.935297, 3.642568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.247155, 1.067411, 4.322993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.980881, 1.262082, 4.096716>,  <1.821116, 1.378884, 3.960950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.980881, 1.262082, 4.096716>,  <2.247155, 1.067411, 4.322993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.980881, 1.262082, 4.096716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739528, -0.531631, 0.412875,
		-0.099803, 0.693191, 0.713811,
		-0.665686, 0.486677, -0.565692,
		1.781175, 1.408085, 3.927008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.627026, 1.435013, 4.722299>,  <2.247155, 1.067411, 4.322993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.627026, 1.435013, 4.722299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.520332, 1.319569, 4.354483>,  <1.456316, 1.250302, 4.133793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.520332, 1.319569, 4.354483>,  <1.627026, 1.435013, 4.722299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.520332, 1.319569, 4.354483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698934, -0.599006, 0.390748,
		-0.663585, 0.746924, -0.041945,
		-0.266734, -0.288611, -0.919541,
		1.440312, 1.232985, 4.078620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.917849, 1.451634, 4.657483>,  <1.627026, 1.435013, 4.722299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.917849, 1.451634, 4.657483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.035011, 1.194575, 4.374298>,  <1.105309, 1.040339, 4.204387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.035011, 1.194575, 4.374298>,  <0.917849, 1.451634, 4.657483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.035011, 1.194575, 4.374298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636739, -0.683470, 0.356977,
		-0.713282, 0.346228, -0.609389,
		0.292903, -0.642647, -0.707963,
		1.122883, 1.001780, 4.161910>
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
