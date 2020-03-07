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
	<3.093950, -0.091688, 4.075256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.019711, -0.043610, 4.465355>,  <2.975167, -0.014762, 4.699414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.019711, -0.043610, 4.465355>,  <3.093950, -0.091688, 4.075256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.019711, -0.043610, 4.465355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969405, -0.139860, 0.201724,
		0.160645, 0.982849, -0.090562,
		-0.185598, 0.120197, 0.975247,
		2.964031, -0.007551, 4.757929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.390195, 0.633740, 4.296167>,  <3.093950, -0.091688, 4.075256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.390195, 0.633740, 4.296167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.405924, 0.323029, 4.547585>,  <3.415361, 0.136601, 4.698435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.405924, 0.323029, 4.547585>,  <3.390195, 0.633740, 4.296167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.405924, 0.323029, 4.547585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994980, -0.027491, -0.096222,
		0.092022, 0.629172, 0.771799,
		0.039323, -0.776780, 0.628544,
		3.417721, 0.089995, 4.736148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.646844, 0.872252, 4.926198>,  <3.390195, 0.633740, 4.296167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.646844, 0.872252, 4.926198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.715670, 0.490250, 4.829567>,  <3.756965, 0.261048, 4.771589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.715670, 0.490250, 4.829567>,  <3.646844, 0.872252, 4.926198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.715670, 0.490250, 4.829567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984483, 0.175286, 0.008259,
		0.034457, -0.239248, 0.970347,
		0.172064, -0.955005, -0.241576,
		3.767289, 0.203748, 4.757094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.005216, 0.432993, 5.526264>,  <3.646844, 0.872252, 4.926198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.005216, 0.432993, 5.526264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.053066, 0.362068, 5.135521>,  <4.081777, 0.319513, 4.901075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.053066, 0.362068, 5.135521>,  <4.005216, 0.432993, 5.526264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.053066, 0.362068, 5.135521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912059, 0.408335, 0.037574,
		0.392223, -0.895446, 0.210566,
		0.119626, -0.177311, -0.976857,
		4.088954, 0.308875, 4.842463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.707357, 0.205407, 5.403841>,  <4.005216, 0.432993, 5.526264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.707357, 0.205407, 5.403841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.592953, 0.344337, 5.046616>,  <4.524310, 0.427696, 4.832280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.592953, 0.344337, 5.046616>,  <4.707357, 0.205407, 5.403841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.592953, 0.344337, 5.046616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849344, 0.523382, -0.068458,
		0.443637, -0.778098, -0.444692,
		-0.286011, 0.347326, -0.893064,
		4.507150, 0.448535, 4.778697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.236568, 0.037677, 4.922101>,  <4.707357, 0.205407, 5.403841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.236568, 0.037677, 4.922101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.054474, 0.349449, 4.749939>,  <4.945217, 0.536512, 4.646642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.054474, 0.349449, 4.749939>,  <5.236568, 0.037677, 4.922101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.054474, 0.349449, 4.749939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861786, 0.507224, 0.007039,
		0.223799, -0.367713, -0.902608,
		-0.455236, 0.779430, -0.430405,
		4.917903, 0.583278, 4.620817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.622004, 0.172844, 4.327860>,  <5.236568, 0.037677, 4.922101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.622004, 0.172844, 4.327860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.426983, 0.513657, 4.404106>,  <5.309970, 0.718144, 4.449854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.426983, 0.513657, 4.404106>,  <5.622004, 0.172844, 4.327860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.426983, 0.513657, 4.404106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859570, 0.506699, -0.066298,
		-0.153073, 0.131524, -0.979423,
		-0.487553, 0.852031, 0.190616,
		5.280717, 0.769266, 4.461291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.746986, 0.624682, 3.773557>,  <5.622004, 0.172844, 4.327860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.746986, 0.624682, 3.773557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.685272, 0.810612, 4.122299>,  <5.648243, 0.922170, 4.331545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.685272, 0.810612, 4.122299>,  <5.746986, 0.624682, 3.773557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.685272, 0.810612, 4.122299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913168, 0.404017, -0.053803,
		-0.377254, 0.787850, -0.486797,
		-0.154286, 0.464825, 0.871856,
		5.638987, 0.950059, 4.383856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.789154, 1.167914, 4.506909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.627254, 1.530350, 4.556190>,  <1.530114, 1.747811, 4.585759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.627254, 1.530350, 4.556190>,  <1.789154, 1.167914, 4.506909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.627254, 1.530350, 4.556190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914052, -0.397033, -0.082912,
		-0.026210, -0.146172, 0.988912,
		-0.404750, 0.906090, 0.123203,
		1.505829, 1.802177, 4.593151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.270169, 1.111512, 5.005433>,  <1.789154, 1.167914, 4.506909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.270169, 1.111512, 5.005433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.176019, 1.448624, 4.811806>,  <1.119529, 1.650891, 4.695629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.176019, 1.448624, 4.811806>,  <1.270169, 1.111512, 5.005433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.176019, 1.448624, 4.811806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946264, -0.312369, -0.083730,
		-0.221774, 0.438348, 0.871015,
		-0.235375, 0.842779, -0.484069,
		1.105407, 1.701457, 4.666585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.671463, 1.384053, 5.241787>,  <1.270169, 1.111512, 5.005433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.671463, 1.384053, 5.241787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.700222, 1.524750, 4.868454>,  <0.717478, 1.609168, 4.644454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.700222, 1.524750, 4.868454>,  <0.671463, 1.384053, 5.241787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.700222, 1.524750, 4.868454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919825, -0.338461, -0.198412,
		-0.385686, 0.872767, 0.299205,
		0.071898, 0.351741, -0.933332,
		0.721792, 1.630272, 4.588454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.143973, 1.797603, 5.128561>,  <0.671463, 1.384053, 5.241787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.143973, 1.797603, 5.128561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.233121, 1.637016, 4.773224>,  <0.286610, 1.540664, 4.560021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.233121, 1.637016, 4.773224>,  <0.143973, 1.797603, 5.128561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.233121, 1.637016, 4.773224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886710, -0.462125, -0.013613,
		-0.405060, 0.790737, -0.458979,
		0.222870, -0.401467, -0.888343,
		0.299982, 1.516576, 4.506721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.413450, 1.806790, 4.603808>,  <0.143973, 1.797603, 5.128561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.413450, 1.806790, 4.603808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.198267, 1.479042, 4.524574>,  <-0.069157, 1.282394, 4.477034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.198267, 1.479042, 4.524574>,  <-0.413450, 1.806790, 4.603808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.198267, 1.479042, 4.524574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840712, -0.504296, -0.197202,
		0.061688, 0.272617, -0.960143,
		0.537957, -0.819369, -0.198084,
		-0.036880, 1.233231, 4.465149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.865849, 1.444260, 4.128748>,  <-0.413450, 1.806790, 4.603808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.865849, 1.444260, 4.128748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.610831, 1.170235, 4.269730>,  <-0.457821, 1.005819, 4.354319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.610831, 1.170235, 4.269730>,  <-0.865849, 1.444260, 4.128748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.610831, 1.170235, 4.269730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673691, -0.717672, -0.176315,
		0.373733, -0.125036, -0.919070,
		0.637545, -0.685065, 0.352454,
		-0.419568, 0.964715, 4.375466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.808908, 0.827443, 3.603293>,  <-0.865849, 1.444260, 4.128748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.808908, 0.827443, 3.603293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.708359, 0.713310, 3.973244>,  <-0.648030, 0.644831, 4.195214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.708359, 0.713310, 3.973244>,  <-0.808908, 0.827443, 3.603293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.708359, 0.713310, 3.973244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658575, -0.750675, -0.052595,
		0.709289, -0.595880, -0.376611,
		0.251372, -0.285332, 0.924877,
		-0.632948, 0.627711, 4.250707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.755232, 0.140998, 3.539267>,  <-0.808908, 0.827443, 3.603293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.755232, 0.140998, 3.539267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.812710, 0.199234, 3.930809>,  <-0.847196, 0.234176, 4.165734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.812710, 0.199234, 3.930809>,  <-0.755232, 0.140998, 3.539267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.812710, 0.199234, 3.930809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734324, -0.678765, -0.006842,
		0.663416, -0.719779, 0.204445,
		-0.143695, 0.145590, 0.978854,
		-0.855818, 0.242911, 4.224465>
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
