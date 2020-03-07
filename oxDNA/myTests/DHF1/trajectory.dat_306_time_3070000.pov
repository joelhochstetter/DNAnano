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
	<3.808079, 1.891716, 3.436790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.541027, 1.604446, 3.358307>,  <3.380796, 1.432085, 3.311217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.541027, 1.604446, 3.358307>,  <3.808079, 1.891716, 3.436790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.541027, 1.604446, 3.358307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288452, 0.006564, 0.957472,
		-0.686343, 0.695833, -0.211541,
		-0.667629, -0.718174, -0.196209,
		3.340738, 1.388994, 3.299444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.092986, 2.105264, 3.579921>,  <3.808079, 1.891716, 3.436790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.092986, 2.105264, 3.579921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.162266, 1.714966, 3.633469>,  <3.203834, 1.480787, 3.665597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.162266, 1.714966, 3.633469>,  <3.092986, 2.105264, 3.579921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.162266, 1.714966, 3.633469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408589, 0.052488, 0.911208,
		-0.896134, -0.212518, -0.389588,
		0.173200, -0.975746, 0.133869,
		3.214226, 1.422242, 3.673629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.443924, 1.717452, 3.797827>,  <3.092986, 2.105264, 3.579921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.443924, 1.717452, 3.797827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.802719, 1.593887, 3.924309>,  <3.017996, 1.519748, 4.000198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.802719, 1.593887, 3.924309>,  <2.443924, 1.717452, 3.797827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.802719, 1.593887, 3.924309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346317, -0.046516, 0.936964,
		-0.274731, -0.949952, -0.148706,
		0.896988, -0.308913, 0.316205,
		3.071815, 1.501214, 4.019170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.275514, 1.204188, 4.289711>,  <2.443924, 1.717452, 3.797827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.275514, 1.204188, 4.289711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.642521, 1.356064, 4.337036>,  <2.862725, 1.447190, 4.365431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.642521, 1.356064, 4.337036>,  <2.275514, 1.204188, 4.289711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.642521, 1.356064, 4.337036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136888, 0.022198, 0.990338,
		0.373396, -0.924847, 0.072342,
		0.917517, 0.379691, 0.118312,
		2.917776, 1.469971, 4.372530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.444457, 0.786447, 4.790432>,  <2.275514, 1.204188, 4.289711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.444457, 0.786447, 4.790432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.668877, 1.117355, 4.778793>,  <2.803528, 1.315901, 4.771810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.668877, 1.117355, 4.778793>,  <2.444457, 0.786447, 4.790432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.668877, 1.117355, 4.778793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054758, 0.072164, 0.995889,
		0.825970, -0.557148, 0.085787,
		0.561048, 0.827272, -0.029097,
		2.837191, 1.365537, 4.770064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.977036, 0.714110, 5.200196>,  <2.444457, 0.786447, 4.790432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.977036, 0.714110, 5.200196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.866318, 1.096176, 5.158157>,  <2.799886, 1.325415, 5.132934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.866318, 1.096176, 5.158157>,  <2.977036, 0.714110, 5.200196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.866318, 1.096176, 5.158157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069402, 0.089213, 0.993591,
		0.958419, 0.282317, 0.041596,
		-0.276797, 0.955164, -0.105096,
		2.783279, 1.382725, 5.126628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.334805, 1.053172, 5.727965>,  <2.977036, 0.714110, 5.200196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.334805, 1.053172, 5.727965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.060555, 1.328369, 5.632816>,  <2.896004, 1.493488, 5.575727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.060555, 1.328369, 5.632816>,  <3.334805, 1.053172, 5.727965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.060555, 1.328369, 5.632816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094921, 0.239484, 0.966249,
		0.721740, 0.685064, -0.098891,
		-0.685625, 0.687993, -0.237872,
		2.854867, 1.534767, 5.561455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.483668, 1.666658, 6.151208>,  <3.334805, 1.053172, 5.727965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.483668, 1.666658, 6.151208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.107262, 1.714523, 6.024609>,  <2.881418, 1.743243, 5.948649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.107262, 1.714523, 6.024609>,  <3.483668, 1.666658, 6.151208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.107262, 1.714523, 6.024609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248772, 0.389350, 0.886859,
		0.229353, 0.913284, -0.336616,
		-0.941015, 0.119663, -0.316499,
		2.824957, 1.750422, 5.929659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.478319, 2.112332, 2.428645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.111439, 2.005447, 2.310432>,  <1.891310, 1.941316, 2.239505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.111439, 2.005447, 2.310432>,  <2.478319, 2.112332, 2.428645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.111439, 2.005447, 2.310432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312918, -0.023979, -0.949477,
		0.246626, -0.963339, 0.105609,
		-0.917201, -0.267213, -0.295532,
		1.836278, 1.925284, 2.221773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.520175, 1.524851, 2.043064>,  <2.478319, 2.112332, 2.428645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.520175, 1.524851, 2.043064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.206959, 1.739716, 1.917648>,  <2.019029, 1.868634, 1.842399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.206959, 1.739716, 1.917648>,  <2.520175, 1.524851, 2.043064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.206959, 1.739716, 1.917648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398584, 0.046390, -0.915958,
		-0.477472, -0.842203, -0.250429,
		-0.783040, 0.537161, -0.313539,
		1.972047, 1.900864, 1.823587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.130551, 1.182938, 1.503809>,  <2.520175, 1.524851, 2.043064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.130551, 1.182938, 1.503809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.084499, 1.578568, 1.466980>,  <2.056869, 1.815945, 1.444882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.084499, 1.578568, 1.466980>,  <2.130551, 1.182938, 1.503809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.084499, 1.578568, 1.466980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414700, -0.036369, -0.909231,
		-0.902646, -0.142861, -0.405982,
		-0.115129, 0.989074, -0.092073,
		2.049961, 1.875290, 1.439358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.789445, 1.286173, 0.876256>,  <2.130551, 1.182938, 1.503809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.789445, 1.286173, 0.876256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.983305, 1.615204, 0.995239>,  <2.099621, 1.812622, 1.066629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.983305, 1.615204, 0.995239>,  <1.789445, 1.286173, 0.876256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.983305, 1.615204, 0.995239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454806, 0.053507, -0.888982,
		-0.747171, 0.566132, -0.348180,
		0.484651, 0.822576, 0.297459,
		2.128700, 1.861977, 1.084477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.635459, 1.918794, 0.570205>,  <1.789445, 1.286173, 0.876256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.635459, 1.918794, 0.570205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.023076, 1.912491, 0.668762>,  <2.255646, 1.908709, 0.727897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.023076, 1.912491, 0.668762>,  <1.635459, 1.918794, 0.570205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.023076, 1.912491, 0.668762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242543, -0.125850, -0.961943,
		0.046166, 0.991924, -0.118132,
		0.969042, -0.015757, 0.246394,
		2.313788, 1.907764, 0.742680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.975328, 2.397820, 0.223678>,  <1.635459, 1.918794, 0.570205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.975328, 2.397820, 0.223678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.261278, 2.137451, 0.325859>,  <2.432848, 1.981230, 0.387168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.261278, 2.137451, 0.325859>,  <1.975328, 2.397820, 0.223678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.261278, 2.137451, 0.325859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273995, -0.075355, -0.958774,
		0.643336, 0.755396, 0.124479,
		0.714874, -0.650921, 0.255454,
		2.475740, 1.942175, 0.402495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.660790, 2.647959, 0.008965>,  <1.975328, 2.397820, 0.223678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.660790, 2.647959, 0.008965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.684253, 2.251709, 0.058311>,  <2.698330, 2.013959, 0.087919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.684253, 2.251709, 0.058311>,  <2.660790, 2.647959, 0.008965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.684253, 2.251709, 0.058311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394951, -0.090466, -0.914237,
		0.916828, 0.102350, 0.385942,
		0.058657, -0.990626, 0.123365,
		2.701850, 1.954521, 0.095321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.313292, 2.342964, 0.072126>,  <2.660790, 2.647959, 0.008965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.313292, 2.342964, 0.072126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.028182, 2.136124, -0.117424>,  <2.857116, 2.012019, -0.231154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.028182, 2.136124, -0.117424>,  <3.313292, 2.342964, 0.072126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.028182, 2.136124, -0.117424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503621, 0.092919, -0.858913,
		0.488178, -0.850865, 0.194193,
		-0.712775, -0.517102, -0.473875,
		2.814349, 1.980993, -0.259586>
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
