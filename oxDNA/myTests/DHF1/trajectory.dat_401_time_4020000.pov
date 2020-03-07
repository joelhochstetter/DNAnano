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
	<0.863675, 5.090802, 2.702082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.108337, 4.793884, 2.592628>,  <1.255135, 4.615733, 2.526957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.108337, 4.793884, 2.592628>,  <0.863675, 5.090802, 2.702082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.108337, 4.793884, 2.592628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647749, -0.668472, 0.365467,
		-0.454200, -0.046294, -0.889696,
		0.611655, -0.742295, -0.273633,
		1.291834, 4.571196, 2.510539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.494683, 4.528208, 2.344085>,  <0.863675, 5.090802, 2.702082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.494683, 4.528208, 2.344085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.802681, 4.426823, 2.578304>,  <0.987479, 4.365992, 2.718836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.802681, 4.426823, 2.578304>,  <0.494683, 4.528208, 2.344085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.802681, 4.426823, 2.578304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600372, -0.598511, 0.530413,
		0.216016, -0.759961, -0.613022,
		0.769994, -0.253463, 0.585548,
		1.033679, 4.350784, 2.753968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.586250, 3.814912, 2.292736>,  <0.494683, 4.528208, 2.344085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.586250, 3.814912, 2.292736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.666687, 4.026661, 2.622421>,  <0.714949, 4.153710, 2.820232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.666687, 4.026661, 2.622421>,  <0.586250, 3.814912, 2.292736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.666687, 4.026661, 2.622421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676360, -0.533606, 0.507742,
		0.708590, -0.659567, 0.250742,
		0.201093, 0.529372, 0.824212,
		0.727015, 4.185472, 2.869685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.541595, 3.273610, 2.801443>,  <0.586250, 3.814912, 2.292736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.541595, 3.273610, 2.801443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.494820, 3.624947, 2.986847>,  <0.466754, 3.835749, 3.098089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.494820, 3.624947, 2.986847>,  <0.541595, 3.273610, 2.801443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.494820, 3.624947, 2.986847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529925, -0.449904, 0.718864,
		0.839943, -0.161562, 0.518067,
		-0.116939, 0.878342, 0.463510,
		0.459738, 3.888449, 3.125900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.717602, 3.113720, 3.467942>,  <0.541595, 3.273610, 2.801443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.717602, 3.113720, 3.467942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.520782, 3.461842, 3.459381>,  <0.402691, 3.670715, 3.454245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.520782, 3.461842, 3.459381>,  <0.717602, 3.113720, 3.467942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.520782, 3.461842, 3.459381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476417, -0.248615, 0.843337,
		0.728639, 0.425160, 0.536959,
		-0.492049, 0.870304, -0.021402,
		0.373168, 3.722933, 3.452960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.893460, 3.498019, 4.103935>,  <0.717602, 3.113720, 3.467942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.893460, 3.498019, 4.103935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.540962, 3.619579, 3.959129>,  <0.329464, 3.692515, 3.872246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.540962, 3.619579, 3.959129>,  <0.893460, 3.498019, 4.103935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.540962, 3.619579, 3.959129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438090, -0.237629, 0.866954,
		0.177443, 0.922593, 0.342545,
		-0.881244, 0.303900, -0.362013,
		0.276589, 3.710749, 3.850525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.577730, 3.787568, 4.594323>,  <0.893460, 3.498019, 4.103935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.577730, 3.787568, 4.594323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.264938, 3.731781, 4.351322>,  <0.077263, 3.698309, 4.205522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.264938, 3.731781, 4.351322>,  <0.577730, 3.787568, 4.594323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.264938, 3.731781, 4.351322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577523, -0.204517, 0.790341,
		-0.234471, 0.968877, 0.079383,
		-0.781978, -0.139466, -0.607502,
		0.030345, 3.689941, 4.169072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.101691, 4.116393, 5.064724>,  <0.577730, 3.787568, 4.594323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.101691, 4.116393, 5.064724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.095757, 3.905842, 4.787807>,  <-0.214225, 3.779511, 4.621657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.095757, 3.905842, 4.787807>,  <0.101691, 4.116393, 5.064724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.095757, 3.905842, 4.787807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633866, -0.327267, 0.700792,
		-0.595445, 0.784744, -0.172108,
		-0.493618, -0.526377, -0.692293,
		-0.243842, 3.747929, 4.580120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.720808, 3.077169, 5.646836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.380833, 3.091141, 5.436546>,  <4.176848, 3.099524, 5.310372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.380833, 3.091141, 5.436546>,  <4.720808, 3.077169, 5.646836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.380833, 3.091141, 5.436546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526138, 0.003160, -0.850394,
		-0.028045, -0.999385, -0.021065,
		-0.849937, 0.034933, -0.525725,
		4.125852, 3.101620, 5.278829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.590548, 2.518422, 5.084909>,  <4.720808, 3.077169, 5.646836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.590548, 2.518422, 5.084909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.406208, 2.857849, 4.980949>,  <4.295604, 3.061506, 4.918573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.406208, 2.857849, 4.980949>,  <4.590548, 2.518422, 5.084909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.406208, 2.857849, 4.980949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483911, -0.005219, -0.875102,
		-0.743941, -0.529059, -0.408226,
		-0.460850, 0.848569, -0.259900,
		4.267953, 3.112420, 4.902979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.319049, 2.504479, 4.288800>,  <4.590548, 2.518422, 5.084909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.319049, 2.504479, 4.288800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.306381, 2.887444, 4.403595>,  <4.298780, 3.117222, 4.472472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.306381, 2.887444, 4.403595>,  <4.319049, 2.504479, 4.288800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.306381, 2.887444, 4.403595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298785, 0.283070, -0.911372,
		-0.953795, 0.056885, -0.295025,
		-0.031669, 0.957411, 0.286987,
		4.296880, 3.174667, 4.489691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.110566, 2.876784, 3.849221>,  <4.319049, 2.504479, 4.288800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.110566, 2.876784, 3.849221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.315247, 3.155960, 4.049637>,  <4.438055, 3.323466, 4.169887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.315247, 3.155960, 4.049637>,  <4.110566, 2.876784, 3.849221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.315247, 3.155960, 4.049637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245828, 0.439855, -0.863769,
		-0.823244, 0.565161, 0.053502,
		0.511702, 0.697940, 0.501040,
		4.468757, 3.365342, 4.199949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.093339, 3.420668, 3.405293>,  <4.110566, 2.876784, 3.849221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.093339, 3.420668, 3.405293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.348156, 3.560936, 3.679871>,  <4.501046, 3.645097, 3.844617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.348156, 3.560936, 3.679871>,  <4.093339, 3.420668, 3.405293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.348156, 3.560936, 3.679871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528679, 0.449302, -0.720157,
		-0.560959, 0.821680, 0.100833,
		0.637043, 0.350670, 0.686445,
		4.539269, 3.666137, 3.885804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.086051, 4.177274, 3.463427>,  <4.093339, 3.420668, 3.405293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.086051, 4.177274, 3.463427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.446159, 4.031593, 3.558815>,  <4.662225, 3.944185, 3.616048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.446159, 4.031593, 3.558815>,  <4.086051, 4.177274, 3.463427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.446159, 4.031593, 3.558815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395749, 0.456482, -0.796873,
		0.181366, 0.811777, 0.555090,
		0.900272, -0.364202, 0.238470,
		4.716241, 3.922333, 3.630356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.568729, 4.741977, 3.507530>,  <4.086051, 4.177274, 3.463427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.568729, 4.741977, 3.507530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.805206, 4.421921, 3.466995>,  <4.947093, 4.229887, 3.442674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.805206, 4.421921, 3.466995>,  <4.568729, 4.741977, 3.507530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.805206, 4.421921, 3.466995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570955, 0.503940, -0.648116,
		0.569651, 0.325302, 0.754769,
		0.591192, -0.800139, -0.101337,
		4.982564, 4.181879, 3.436594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.096233, 5.092697, 3.466406>,  <4.568729, 4.741977, 3.507530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.096233, 5.092697, 3.466406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.171482, 4.729263, 3.317230>,  <5.216631, 4.511203, 3.227725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.171482, 4.729263, 3.317230>,  <5.096233, 5.092697, 3.466406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.171482, 4.729263, 3.317230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643754, 0.400847, -0.651845,
		0.741748, -0.117455, 0.660313,
		0.188122, -0.908584, -0.372940,
		5.227919, 4.456688, 3.205348>
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
