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
	<0.140229, 4.327823, -0.261522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.121765, 4.070147, -0.103528>,  <-0.278961, 3.915541, -0.008732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.121765, 4.070147, -0.103528>,  <0.140229, 4.327823, -0.261522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.121765, 4.070147, -0.103528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746481, -0.470461, 0.470566,
		-0.117309, 0.603063, 0.789021,
		-0.654985, -0.644191, 0.394985,
		-0.318261, 3.876889, 0.014968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.136773, 4.236811, 0.542402>,  <0.140229, 4.327823, -0.261522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.136773, 4.236811, 0.542402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.052620, 3.903801, 0.337407>,  <0.002128, 3.703995, 0.214410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.052620, 3.903801, 0.337407>,  <0.136773, 4.236811, 0.542402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.052620, 3.903801, 0.337407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751436, -0.473043, 0.459971,
		-0.625365, -0.288331, 0.725109,
		-0.210384, -0.832524, -0.512487,
		-0.010495, 3.654044, 0.183661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.459196, 3.707996, 0.960328>,  <0.136773, 4.236811, 0.542402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.459196, 3.707996, 0.960328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.326241, 3.489582, 0.652727>,  <0.246467, 3.358534, 0.468167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.326241, 3.489582, 0.652727>,  <0.459196, 3.707996, 0.960328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.326241, 3.489582, 0.652727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482655, -0.798984, 0.358705,
		-0.810286, -0.251933, 0.529119,
		-0.332388, -0.546035, -0.769002,
		0.226524, 3.325772, 0.422027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.045949, 3.163520, 1.206380>,  <0.459196, 3.707996, 0.960328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.045949, 3.163520, 1.206380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.200706, 3.058104, 0.852915>,  <0.293561, 2.994854, 0.640836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.200706, 3.058104, 0.852915>,  <0.045949, 3.163520, 1.206380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.200706, 3.058104, 0.852915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074704, -0.946182, 0.314894,
		-0.919093, -0.187844, -0.346386,
		0.386896, -0.263540, -0.883662,
		0.316775, 2.979041, 0.587816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.309315, 2.578274, 0.966137>,  <0.045949, 3.163520, 1.206380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.309315, 2.578274, 0.966137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.034943, 2.589382, 0.762757>,  <0.241497, 2.596047, 0.640730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.034943, 2.589382, 0.762757>,  <-0.309315, 2.578274, 0.966137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.034943, 2.589382, 0.762757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192646, -0.942052, 0.274636,
		-0.471358, -0.334314, -0.816122,
		0.860645, 0.027771, -0.508448,
		0.293136, 2.597713, 0.610223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.371919, 1.981013, 0.565287>,  <-0.309315, 2.578274, 0.966137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.371919, 1.981013, 0.565287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.016441, 2.076708, 0.569654>,  <0.249457, 2.134125, 0.572274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.016441, 2.076708, 0.569654>,  <-0.371919, 1.981013, 0.565287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.016441, 2.076708, 0.569654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230108, -0.944540, 0.234296,
		0.066364, -0.224966, -0.972104,
		0.970900, 0.239237, 0.010917,
		0.307711, 2.148479, 0.572929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.055904, 1.406764, 0.278417>,  <-0.371919, 1.981013, 0.565287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.055904, 1.406764, 0.278417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.228027, 1.605671, 0.477963>,  <0.398386, 1.725015, 0.597692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.228027, 1.605671, 0.477963>,  <-0.055904, 1.406764, 0.278417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.228027, 1.605671, 0.477963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332426, -0.860906, 0.385141,
		0.620995, -0.107548, -0.776401,
		0.709829, 0.497266, 0.498867,
		0.440976, 1.754851, 0.627624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.515929, 1.001703, 0.223328>,  <-0.055904, 1.406764, 0.278417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.515929, 1.001703, 0.223328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.624962, 1.232601, 0.531220>,  <0.690382, 1.371140, 0.715956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.624962, 1.232601, 0.531220>,  <0.515929, 1.001703, 0.223328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.624962, 1.232601, 0.531220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442524, -0.785602, 0.432438,
		0.854325, 0.222750, -0.469586,
		0.272582, 0.577245, 0.769731,
		0.706737, 1.405775, 0.762140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.380096, 0.369209, 1.367713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.662819, 0.522877, 1.605314>,  <0.832452, 0.615077, 1.747875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.662819, 0.522877, 1.605314>,  <0.380096, 0.369209, 1.367713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.662819, 0.522877, 1.605314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060251, 0.869332, -0.490543,
		-0.704836, 0.310929, 0.637596,
		0.706807, 0.384168, 0.594003,
		0.874861, 0.638127, 1.783515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.136894, 1.010936, 1.777718>,  <0.380096, 0.369209, 1.367713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.136894, 1.010936, 1.777718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.516975, 0.999989, 1.653549>,  <0.745025, 0.993420, 1.579048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.516975, 0.999989, 1.653549>,  <0.136894, 1.010936, 1.777718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.516975, 0.999989, 1.653549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179215, 0.766932, -0.616196,
		0.254938, 0.641145, 0.723837,
		0.950204, -0.027370, -0.310423,
		0.802037, 0.991778, 1.560422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.490845, 1.597254, 1.926665>,  <0.136894, 1.010936, 1.777718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.490845, 1.597254, 1.926665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.715126, 1.466248, 1.622469>,  <0.849695, 1.387644, 1.439951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.715126, 1.466248, 1.622469>,  <0.490845, 1.597254, 1.926665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.715126, 1.466248, 1.622469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144467, 0.865665, -0.479326,
		0.815317, 0.378626, 0.438066,
		0.560703, -0.327516, -0.760490,
		0.883337, 1.367993, 1.394322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.054861, 2.143793, 1.684665>,  <0.490845, 1.597254, 1.926665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.054861, 2.143793, 1.684665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.982285, 1.909245, 1.368881>,  <0.938738, 1.768515, 1.179411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.982285, 1.909245, 1.368881>,  <1.054861, 2.143793, 1.684665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.982285, 1.909245, 1.368881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230091, 0.805815, -0.545637,
		0.956105, 0.082646, -0.281128,
		-0.181442, -0.586371, -0.789461,
		0.927852, 1.733333, 1.132043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.422195, 2.496497, 1.157275>,  <1.054861, 2.143793, 1.684665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.422195, 2.496497, 1.157275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.153130, 2.264278, 0.973759>,  <0.991690, 2.124947, 0.863649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.153130, 2.264278, 0.973759>,  <1.422195, 2.496497, 1.157275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.153130, 2.264278, 0.973759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229708, 0.753233, -0.616339,
		0.703390, -0.309201, -0.640029,
		-0.672664, -0.580547, -0.458791,
		0.951330, 2.090114, 0.836121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.542836, 2.693105, 0.497980>,  <1.422195, 2.496497, 1.157275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.542836, 2.693105, 0.497980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.190117, 2.504940, 0.511518>,  <0.978486, 2.392041, 0.519641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.190117, 2.504940, 0.511518>,  <1.542836, 2.693105, 0.497980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.190117, 2.504940, 0.511518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393433, 0.694124, -0.602829,
		0.260086, -0.544889, -0.797152,
		-0.881797, -0.470413, 0.033845,
		0.925578, 2.363816, 0.521672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.288271, 2.455804, -0.207996>,  <1.542836, 2.693105, 0.497980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.288271, 2.455804, -0.207996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.980324, 2.506569, 0.042187>,  <0.795556, 2.537028, 0.192297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.980324, 2.506569, 0.042187>,  <1.288271, 2.455804, -0.207996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.980324, 2.506569, 0.042187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370490, 0.709109, -0.599918,
		-0.519655, -0.693583, -0.498900,
		-0.769867, 0.126913, 0.625458,
		0.749364, 2.544643, 0.229824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.802333, 2.724700, -0.683132>,  <1.288271, 2.455804, -0.207996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.802333, 2.724700, -0.683132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.653778, 2.780426, -0.315945>,  <0.564645, 2.813862, -0.095633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.653778, 2.780426, -0.315945>,  <0.802333, 2.724700, -0.683132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.653778, 2.780426, -0.315945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392573, 0.872396, -0.291224,
		-0.841403, -0.468526, -0.269304,
		-0.371386, 0.139315, 0.917967,
		0.542362, 2.822221, -0.040555>
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
