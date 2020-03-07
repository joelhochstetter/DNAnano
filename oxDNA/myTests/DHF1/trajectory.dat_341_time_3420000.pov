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
	<1.902637, 3.473150, 4.106155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.278248, 3.373390, 4.011475>,  <2.503614, 3.313534, 3.954666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.278248, 3.373390, 4.011475>,  <1.902637, 3.473150, 4.106155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.278248, 3.373390, 4.011475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220391, -0.964961, 0.142403,
		-0.263924, -0.081554, -0.961090,
		0.939027, -0.249399, -0.236702,
		2.559956, 3.298570, 3.940464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.905627, 2.979270, 3.581846>,  <1.902637, 3.473150, 4.106155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.905627, 2.979270, 3.581846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.249527, 2.939247, 3.782173>,  <2.455867, 2.915233, 3.902369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.249527, 2.939247, 3.782173>,  <1.905627, 2.979270, 3.581846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.249527, 2.939247, 3.782173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144815, -0.988134, 0.051185,
		0.489753, -0.116532, -0.864038,
		0.859750, -0.100057, 0.500817,
		2.507452, 2.909230, 3.932418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.317241, 2.357413, 3.368735>,  <1.905627, 2.979270, 3.581846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.317241, 2.357413, 3.368735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.343540, 2.464722, 3.753174>,  <2.359320, 2.529107, 3.983837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.343540, 2.464722, 3.753174>,  <2.317241, 2.357413, 3.368735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.343540, 2.464722, 3.753174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113720, -0.954891, 0.274319,
		0.991335, -0.127332, -0.032274,
		0.065748, 0.268272, 0.961097,
		2.363265, 2.545203, 4.041503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.710001, 1.913952, 3.660797>,  <2.317241, 2.357413, 3.368735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.710001, 1.913952, 3.660797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.467705, 2.065369, 3.940735>,  <2.322327, 2.156219, 4.108698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.467705, 2.065369, 3.940735>,  <2.710001, 1.913952, 3.660797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.467705, 2.065369, 3.940735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211991, -0.924565, 0.316606,
		0.766901, 0.043420, 0.640295,
		-0.605742, 0.378542, 0.699845,
		2.285982, 2.178931, 4.150688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.950134, 1.715354, 4.411691>,  <2.710001, 1.913952, 3.660797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.950134, 1.715354, 4.411691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.565849, 1.786926, 4.496559>,  <2.335278, 1.829869, 4.547480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.565849, 1.786926, 4.496559>,  <2.950134, 1.715354, 4.411691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.565849, 1.786926, 4.496559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042648, -0.850540, 0.524177,
		0.274250, 0.494535, 0.824756,
		-0.960712, 0.178930, 0.212170,
		2.277636, 1.840605, 4.560210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.949012, 1.541486, 5.143718>,  <2.950134, 1.715354, 4.411691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.949012, 1.541486, 5.143718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.570728, 1.511421, 5.017235>,  <2.343758, 1.493382, 4.941345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.570728, 1.511421, 5.017235>,  <2.949012, 1.541486, 5.143718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.570728, 1.511421, 5.017235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145236, -0.772630, 0.618020,
		-0.290763, 0.630391, 0.719767,
		-0.945708, -0.075162, -0.316208,
		2.287016, 1.488873, 4.922372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.535011, 1.585471, 5.709469>,  <2.949012, 1.541486, 5.143718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.535011, 1.585471, 5.709469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.322086, 1.385635, 5.436104>,  <2.194331, 1.265734, 5.272084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.322086, 1.385635, 5.436104>,  <2.535011, 1.585471, 5.709469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.322086, 1.385635, 5.436104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156680, -0.735205, 0.659488,
		-0.831923, 0.458130, 0.313083,
		-0.532312, -0.499589, -0.683414,
		2.162393, 1.235759, 5.231080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.877818, 1.367511, 6.039224>,  <2.535011, 1.585471, 5.709469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.877818, 1.367511, 6.039224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.918777, 1.148628, 5.706940>,  <1.943353, 1.017299, 5.507569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.918777, 1.148628, 5.706940>,  <1.877818, 1.367511, 6.039224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.918777, 1.148628, 5.706940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280269, -0.817139, 0.503720,
		-0.954444, 0.181242, -0.237039,
		0.102399, -0.547207, -0.830710,
		1.949497, 0.984466, 5.457726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.526324, -0.308164, 5.991372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.222563, -0.374573, 5.739738>,  <2.040306, -0.414418, 5.588758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.222563, -0.374573, 5.739738>,  <2.526324, -0.308164, 5.991372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.222563, -0.374573, 5.739738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042141, 0.952314, -0.302197,
		0.649255, -0.255999, -0.716193,
		-0.759402, -0.166021, -0.629082,
		1.994742, -0.424379, 5.551013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.725548, -0.033821, 5.376145>,  <2.526324, -0.308164, 5.991372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.725548, -0.033821, 5.376145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.325549, -0.033386, 5.375290>,  <2.085550, -0.033125, 5.374777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.325549, -0.033386, 5.375290>,  <2.725548, -0.033821, 5.376145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.325549, -0.033386, 5.375290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001975, 0.879241, -0.476373,
		0.001360, -0.476376, -0.879241,
		-0.999997, 0.001088, -0.002137,
		2.025550, -0.033060, 5.374649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.590496, 0.106752, 4.747156>,  <2.725548, -0.033821, 5.376145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.590496, 0.106752, 4.747156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.268311, 0.219818, 4.955513>,  <2.075000, 0.287658, 5.080527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.268311, 0.219818, 4.955513>,  <2.590496, 0.106752, 4.747156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.268311, 0.219818, 4.955513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038158, 0.901839, -0.430384,
		-0.591417, -0.326782, -0.737184,
		-0.805463, 0.282666, 0.520893,
		2.026672, 0.304618, 5.111781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.084217, 0.350593, 4.329415>,  <2.590496, 0.106752, 4.747156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.084217, 0.350593, 4.329415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.016433, 0.535370, 4.677643>,  <1.975762, 0.646236, 4.886580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.016433, 0.535370, 4.677643>,  <2.084217, 0.350593, 4.329415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.016433, 0.535370, 4.677643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012638, 0.882254, -0.470603,
		-0.985456, -0.090750, -0.143668,
		-0.169459, 0.461943, 0.870570,
		1.965595, 0.673953, 4.938814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.476297, 0.817876, 4.176056>,  <2.084217, 0.350593, 4.329415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.476297, 0.817876, 4.176056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.665575, 0.956528, 4.500015>,  <1.779142, 1.039719, 4.694391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.665575, 0.956528, 4.500015>,  <1.476297, 0.817876, 4.176056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.665575, 0.956528, 4.500015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095742, 0.893657, -0.438417,
		-0.875739, 0.284999, 0.389687,
		0.473195, 0.346630, 0.809897,
		1.807534, 1.060517, 4.742984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.057410, 1.403382, 4.549648>,  <1.476297, 0.817876, 4.176056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.057410, 1.403382, 4.549648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.444831, 1.420013, 4.647774>,  <1.677283, 1.429992, 4.706649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.444831, 1.420013, 4.647774>,  <1.057410, 1.403382, 4.549648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.444831, 1.420013, 4.647774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071453, 0.897927, -0.434305,
		-0.238331, 0.438176, 0.866718,
		0.968552, 0.041579, 0.245313,
		1.735396, 1.432487, 4.721368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.046416, 2.014052, 4.858593>,  <1.057410, 1.403382, 4.549648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.046416, 2.014052, 4.858593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.426053, 1.954285, 4.747673>,  <1.653836, 1.918424, 4.681121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.426053, 1.954285, 4.747673>,  <1.046416, 2.014052, 4.858593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.426053, 1.954285, 4.747673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054871, 0.945299, -0.321557,
		0.310178, 0.289972, 0.905376,
		0.949094, -0.149419, -0.277300,
		1.710781, 1.909459, 4.664483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.588465, 2.496781, 5.214987>,  <1.046416, 2.014052, 4.858593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.588465, 2.496781, 5.214987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.682335, 2.384583, 4.842697>,  <1.738657, 2.317264, 4.619323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.682335, 2.384583, 4.842697>,  <1.588465, 2.496781, 5.214987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.682335, 2.384583, 4.842697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145404, 0.956821, -0.251698,
		0.961137, -0.076265, 0.265328,
		0.234676, -0.280496, -0.930725,
		1.752738, 2.300434, 4.563479>
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
