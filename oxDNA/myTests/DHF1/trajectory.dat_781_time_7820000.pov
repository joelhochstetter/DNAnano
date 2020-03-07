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
	<5.177294, 4.834264, 1.336266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.210934, 4.725182, 0.952900>,  <5.231117, 4.659732, 0.722880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.210934, 4.725182, 0.952900>,  <5.177294, 4.834264, 1.336266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.210934, 4.725182, 0.952900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987236, -0.153349, -0.042995,
		-0.135247, 0.949798, -0.282121,
		0.084099, -0.272705, -0.958415,
		5.236164, 4.643370, 0.665376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.492599, 5.207427, 1.025214>,  <5.177294, 4.834264, 1.336266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.492599, 5.207427, 1.025214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.636648, 4.906185, 0.804979>,  <4.723078, 4.725440, 0.672839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.636648, 4.906185, 0.804979>,  <4.492599, 5.207427, 1.025214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.636648, 4.906185, 0.804979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931807, -0.261751, -0.251439,
		0.045243, 0.603589, -0.796011,
		0.360123, -0.753105, -0.550586,
		4.744685, 4.680254, 0.639804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.326451, 5.436711, 0.365491>,  <4.492599, 5.207427, 1.025214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.326451, 5.436711, 0.365491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.349018, 5.041592, 0.423552>,  <4.362558, 4.804520, 0.458389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.349018, 5.041592, 0.423552>,  <4.326451, 5.436711, 0.365491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.349018, 5.041592, 0.423552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911485, -0.110290, -0.396271,
		0.407445, -0.109949, -0.906587,
		0.056418, -0.987799, 0.145154,
		4.365943, 4.745252, 0.467099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.096794, 5.153045, -0.274372>,  <4.326451, 5.436711, 0.365491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.096794, 5.153045, -0.274372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.035976, 4.884518, 0.015791>,  <3.999486, 4.723402, 0.189889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.035976, 4.884518, 0.015791>,  <4.096794, 5.153045, -0.274372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.035976, 4.884518, 0.015791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907853, -0.195304, -0.371024,
		0.390750, -0.714975, -0.579763,
		-0.152043, -0.671318, 0.725407,
		3.990364, 4.683123, 0.233413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.789709, 4.503251, -0.548021>,  <4.096794, 5.153045, -0.274372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.789709, 4.503251, -0.548021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.700626, 4.530231, -0.159001>,  <3.647177, 4.546420, 0.074410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.700626, 4.530231, -0.159001>,  <3.789709, 4.503251, -0.548021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.700626, 4.530231, -0.159001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966641, -0.144747, -0.211315,
		0.126521, -0.987167, 0.097432,
		-0.222706, 0.067446, 0.972550,
		3.633814, 4.550467, 0.132763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.218993, 4.043238, -0.455066>,  <3.789709, 4.503251, -0.548021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.218993, 4.043238, -0.455066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.213634, 4.289486, -0.139895>,  <3.210419, 4.437235, 0.049208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.213634, 4.289486, -0.139895>,  <3.218993, 4.043238, -0.455066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.213634, 4.289486, -0.139895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999415, 0.016562, -0.029933,
		-0.031477, -0.787869, 0.615038,
		-0.013397, 0.615620, 0.787929,
		3.209615, 4.474172, 0.096484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.721740, 3.711844, 0.102882>,  <3.218993, 4.043238, -0.455066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.721740, 3.711844, 0.102882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.752054, 4.103374, 0.178942>,  <2.770242, 4.338293, 0.224577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.752054, 4.103374, 0.178942>,  <2.721740, 3.711844, 0.102882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.752054, 4.103374, 0.178942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996848, 0.078860, -0.008650,
		-0.023462, -0.188893, 0.981717,
		0.075784, 0.978826, 0.190148,
		2.774790, 4.397022, 0.235986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.260310, 3.846924, 0.694164>,  <2.721740, 3.711844, 0.102882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.260310, 3.846924, 0.694164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.340027, 4.170979, 0.473634>,  <2.387857, 4.365412, 0.341316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.340027, 4.170979, 0.473634>,  <2.260310, 3.846924, 0.694164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.340027, 4.170979, 0.473634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979772, 0.154318, -0.127404,
		-0.018135, 0.565565, 0.824505,
		0.199291, 0.810138, -0.551326,
		2.399814, 4.414020, 0.308236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.960959, 5.018461, -1.293368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.009209, 5.118629, -0.909131>,  <2.038159, 5.178730, -0.678589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.009209, 5.118629, -0.909131>,  <1.960959, 5.018461, -1.293368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.009209, 5.118629, -0.909131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938301, -0.344688, -0.027968,
		0.324101, 0.904699, -0.276548,
		0.120625, 0.250421, 0.960593,
		2.045396, 5.193756, -0.620953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.601272, 5.236189, -1.266272>,  <1.960959, 5.018461, -1.293368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.601272, 5.236189, -1.266272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.487442, 5.101490, -0.907247>,  <2.419144, 5.020671, -0.691832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.487442, 5.101490, -0.907247>,  <2.601272, 5.236189, -1.266272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.487442, 5.101490, -0.907247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939500, -0.284187, 0.191249,
		0.190673, 0.897685, 0.397247,
		-0.284574, -0.336747, 0.897563,
		2.402070, 5.000466, -0.637978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.045331, 5.527505, -0.756566>,  <2.601272, 5.236189, -1.266272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.045331, 5.527505, -0.756566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.925274, 5.159660, -0.655194>,  <2.853239, 4.938953, -0.594371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.925274, 5.159660, -0.655194>,  <3.045331, 5.527505, -0.756566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.925274, 5.159660, -0.655194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949024, -0.314692, -0.017958,
		0.096267, 0.235120, 0.967187,
		-0.300144, -0.919613, 0.253429,
		2.835231, 4.883777, -0.579166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.831607, 5.532224, -0.019551>,  <3.045331, 5.527505, -0.756566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.831607, 5.532224, -0.019551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.613663, 5.242607, 0.149631>,  <2.482896, 5.068837, 0.251139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.613663, 5.242607, 0.149631>,  <2.831607, 5.532224, -0.019551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.613663, 5.242607, 0.149631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830662, -0.397140, 0.390232,
		-0.114572, 0.563953, 0.817820,
		-0.544862, -0.724041, 0.422953,
		2.450204, 5.025394, 0.276516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.850966, 5.624660, 0.669951>,  <2.831607, 5.532224, -0.019551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.850966, 5.624660, 0.669951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.811813, 5.248222, 0.540484>,  <2.788322, 5.022360, 0.462804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.811813, 5.248222, 0.540484>,  <2.850966, 5.624660, 0.669951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.811813, 5.248222, 0.540484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934978, -0.198376, 0.294047,
		-0.340933, -0.273840, 0.899320,
		-0.097881, -0.941095, -0.323667,
		2.782449, 4.965894, 0.443384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.177377, 5.180100, 1.179986>,  <2.850966, 5.624660, 0.669951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.177377, 5.180100, 1.179986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.189636, 4.953781, 0.850396>,  <3.196992, 4.817989, 0.652642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.189636, 4.953781, 0.850396>,  <3.177377, 5.180100, 1.179986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.189636, 4.953781, 0.850396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926833, -0.292551, 0.235360,
		-0.374220, -0.770900, 0.515435,
		0.030648, -0.565798, -0.823974,
		3.198831, 4.784041, 0.603204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.365231, 4.460777, 1.357073>,  <3.177377, 5.180100, 1.179986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.365231, 4.460777, 1.357073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.452347, 4.496143, 0.968280>,  <3.504616, 4.517363, 0.735004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.452347, 4.496143, 0.968280>,  <3.365231, 4.460777, 1.357073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.452347, 4.496143, 0.968280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951249, -0.242066, 0.191125,
		-0.218385, -0.966223, -0.136825,
		0.217790, 0.088416, -0.971982,
		3.517684, 4.522668, 0.676685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.842442, 3.836048, 1.248196>,  <3.365231, 4.460777, 1.357073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.842442, 3.836048, 1.248196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.868202, 4.119034, 0.966673>,  <3.883659, 4.288826, 0.797759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.868202, 4.119034, 0.966673>,  <3.842442, 3.836048, 1.248196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.868202, 4.119034, 0.966673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986410, 0.061696, 0.152278,
		0.151153, -0.704050, -0.693877,
		0.064402, 0.707465, -0.703808,
		3.887523, 4.331273, 0.755530>
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
