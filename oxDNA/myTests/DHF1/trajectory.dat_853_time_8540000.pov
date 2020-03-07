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
	<1.109310, 3.950530, -0.872158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.822266, 3.675179, -0.914433>,  <0.650039, 3.509968, -0.939797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.822266, 3.675179, -0.914433>,  <1.109310, 3.950530, -0.872158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.822266, 3.675179, -0.914433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327154, 0.199228, 0.923731,
		-0.614820, 0.697455, -0.368174,
		-0.717612, -0.688378, -0.105686,
		0.606982, 3.468665, -0.946138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.496249, 4.225286, -0.735312>,  <1.109310, 3.950530, -0.872158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.496249, 4.225286, -0.735312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.473816, 3.833488, -0.657909>,  <0.460356, 3.598410, -0.611468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.473816, 3.833488, -0.657909>,  <0.496249, 4.225286, -0.735312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.473816, 3.833488, -0.657909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507488, 0.194873, 0.839334,
		-0.859832, -0.051130, -0.508011,
		-0.056082, -0.979495, 0.193505,
		0.456991, 3.539640, -0.599858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.143477, 4.130205, -0.478219>,  <0.496249, 4.225286, -0.735312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.143477, 4.130205, -0.478219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.081154, 3.825012, -0.350163>,  <0.215932, 3.641896, -0.273330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.081154, 3.825012, -0.350163>,  <-0.143477, 4.130205, -0.478219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.081154, 3.825012, -0.350163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531778, -0.036389, 0.846102,
		-0.633912, -0.645393, -0.426173,
		0.561576, -0.762983, 0.320138,
		0.249627, 3.596117, -0.254122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.560582, 3.667140, -0.078569>,  <-0.143477, 4.130205, -0.478219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.560582, 3.667140, -0.078569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.193695, 3.551857, 0.031448>,  <0.026437, 3.482687, 0.097459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.193695, 3.551857, 0.031448>,  <-0.560582, 3.667140, -0.078569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.193695, 3.551857, 0.031448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350767, -0.256911, 0.900533,
		-0.188879, -0.922460, -0.336737,
		0.917217, -0.288208, 0.275044,
		0.081470, 3.465395, 0.113961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.661529, 2.982516, 0.232189>,  <-0.560582, 3.667140, -0.078569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.661529, 2.982516, 0.232189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.331207, 3.162674, 0.367947>,  <-0.133014, 3.270769, 0.449401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.331207, 3.162674, 0.367947>,  <-0.661529, 2.982516, 0.232189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.331207, 3.162674, 0.367947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226949, -0.285524, 0.931112,
		0.516275, -0.845943, -0.133570,
		0.825805, 0.450396, 0.339395,
		-0.083466, 3.297793, 0.469765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.196418, 2.463598, 0.571225>,  <-0.661529, 2.982516, 0.232189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.196418, 2.463598, 0.571225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.123032, 2.829117, 0.716175>,  <-0.079000, 3.048428, 0.803145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.123032, 2.829117, 0.716175>,  <-0.196418, 2.463598, 0.571225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.123032, 2.829117, 0.716175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085071, -0.352489, 0.931941,
		0.979338, -0.201806, 0.013068,
		0.183465, 0.913797, 0.362374,
		-0.067992, 3.103256, 0.824887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.224438, 2.323458, 1.105457>,  <-0.196418, 2.463598, 0.571225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.224438, 2.323458, 1.105457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.085907, 2.692963, 1.170845>,  <0.002788, 2.914665, 1.210078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.085907, 2.692963, 1.170845>,  <0.224438, 2.323458, 1.105457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.085907, 2.692963, 1.170845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113327, -0.214175, 0.970199,
		0.931243, 0.317482, 0.178862,
		-0.346328, 0.923761, 0.163469,
		-0.017991, 2.970091, 1.219886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.624815, 2.553487, 1.685535>,  <0.224438, 2.323458, 1.105457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.624815, 2.553487, 1.685535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.289177, 2.767639, 1.646984>,  <0.087794, 2.896130, 1.623854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.289177, 2.767639, 1.646984>,  <0.624815, 2.553487, 1.685535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.289177, 2.767639, 1.646984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185628, -0.115267, 0.975836,
		0.511334, 0.836709, 0.196101,
		-0.839095, 0.535380, -0.096376,
		0.037449, 2.928253, 1.618071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.356253, 2.249007, 2.536703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.744049, 2.338242, 2.577341>,  <3.976727, 2.391783, 2.601724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.744049, 2.338242, 2.577341>,  <3.356253, 2.249007, 2.536703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.744049, 2.338242, 2.577341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000651, 0.416789, -0.909003,
		-0.245131, 0.881203, 0.404218,
		0.969490, 0.223087, 0.101594,
		4.034896, 2.405168, 2.607819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.554888, 2.630491, 1.982418>,  <3.356253, 2.249007, 2.536703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.554888, 2.630491, 1.982418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.927261, 2.660378, 2.125404>,  <4.150685, 2.678309, 2.211196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.927261, 2.660378, 2.125404>,  <3.554888, 2.630491, 1.982418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.927261, 2.660378, 2.125404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309056, 0.360267, -0.880166,
		-0.194546, 0.929852, 0.312293,
		0.930933, 0.074717, 0.357465,
		4.206541, 2.682792, 2.232644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.767104, 2.865432, 1.349229>,  <3.554888, 2.630491, 1.982418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.767104, 2.865432, 1.349229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.063736, 2.917488, 1.612478>,  <4.241715, 2.948722, 1.770427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.063736, 2.917488, 1.612478>,  <3.767104, 2.865432, 1.349229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.063736, 2.917488, 1.612478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531556, 0.484503, -0.694770,
		-0.409279, 0.865055, 0.290120,
		0.741579, 0.130140, 0.658122,
		4.286210, 2.956530, 1.809915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.957773, 3.638093, 1.556040>,  <3.767104, 2.865432, 1.349229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.957773, 3.638093, 1.556040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.283974, 3.411697, 1.604394>,  <4.479694, 3.275860, 1.633407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.283974, 3.411697, 1.604394>,  <3.957773, 3.638093, 1.556040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.283974, 3.411697, 1.604394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439251, 0.469277, -0.766053,
		0.376848, 0.677817, 0.631307,
		0.815502, -0.565988, 0.120886,
		4.528625, 3.241901, 1.640660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.604324, 4.132500, 1.564609>,  <3.957773, 3.638093, 1.556040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.604324, 4.132500, 1.564609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.739182, 3.774574, 1.447551>,  <4.820096, 3.559819, 1.377317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.739182, 3.774574, 1.447551>,  <4.604324, 4.132500, 1.564609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.739182, 3.774574, 1.447551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540806, 0.438514, -0.717798,
		0.770625, 0.083736, 0.631764,
		0.337143, -0.894815, -0.292644,
		4.840324, 3.506130, 1.359758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.317524, 4.185037, 1.368724>,  <4.604324, 4.132500, 1.564609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.317524, 4.185037, 1.368724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.192429, 3.850861, 1.187955>,  <5.117371, 3.650355, 1.079494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.192429, 3.850861, 1.187955>,  <5.317524, 4.185037, 1.368724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.192429, 3.850861, 1.187955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454449, 0.286187, -0.843548,
		0.834069, -0.469185, 0.290164,
		-0.312739, -0.835441, -0.451921,
		5.098607, 3.600228, 1.052379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.943537, 3.935246, 0.914721>,  <5.317524, 4.185037, 1.368724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.943537, 3.935246, 0.914721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.611023, 3.771126, 0.764726>,  <5.411514, 3.672653, 0.674728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.611023, 3.771126, 0.764726>,  <5.943537, 3.935246, 0.914721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.611023, 3.771126, 0.764726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300879, 0.235094, -0.924231,
		0.467372, -0.881126, -0.071979,
		-0.831285, -0.410302, -0.374989,
		5.361637, 3.648035, 0.652229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.172236, 3.695601, 0.281662>,  <5.943537, 3.935246, 0.914721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.172236, 3.695601, 0.281662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.775154, 3.743279, 0.274390>,  <5.536905, 3.771885, 0.270026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.775154, 3.743279, 0.274390>,  <6.172236, 3.695601, 0.281662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.775154, 3.743279, 0.274390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057266, 0.333396, -0.941046,
		-0.106106, -0.935222, -0.337789,
		-0.992705, 0.119195, -0.018181,
		5.477343, 3.779037, 0.268935>
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
