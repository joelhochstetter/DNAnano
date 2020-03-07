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
	<2.319852, 1.856882, 0.479673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.351227, 2.140512, 0.759975>,  <2.370052, 2.310691, 0.928157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.351227, 2.140512, 0.759975>,  <2.319852, 1.856882, 0.479673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.351227, 2.140512, 0.759975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985709, 0.160280, -0.051851,
		-0.149083, -0.686673, 0.711515,
		0.078438, 0.709077, 0.700755,
		2.374758, 2.353235, 0.970202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.014691, 1.644832, 1.108390>,  <2.319852, 1.856882, 0.479673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.014691, 1.644832, 1.108390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.978745, 2.042494, 1.084444>,  <1.957177, 2.281090, 1.070077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.978745, 2.042494, 1.084444>,  <2.014691, 1.644832, 1.108390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.978745, 2.042494, 1.084444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995930, -0.090117, -0.001521,
		-0.006907, 0.059483, 0.998205,
		-0.089865, 0.994153, -0.059864,
		1.951785, 2.340740, 1.066485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.571081, 2.090124, 1.581100>,  <2.014691, 1.644832, 1.108390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.571081, 2.090124, 1.581100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.577679, 2.316320, 1.251265>,  <1.581637, 2.452038, 1.053363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.577679, 2.316320, 1.251265>,  <1.571081, 2.090124, 1.581100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.577679, 2.316320, 1.251265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998449, 0.053172, 0.016494,
		0.053172, 0.823039, 0.565491,
		-0.016494, -0.565491, 0.824589,
		1.582627, 2.485968, 1.003888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.750816, 2.865100, 1.623253>,  <1.571081, 2.090124, 1.581100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.750816, 2.865100, 1.623253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.432556, 2.737968, 1.416981>,  <1.241600, 2.661690, 1.293217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.432556, 2.737968, 1.416981>,  <1.750816, 2.865100, 1.623253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.432556, 2.737968, 1.416981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589265, 0.603386, 0.537300,
		0.140385, 0.731375, -0.667370,
		-0.795650, -0.317829, -0.515680,
		1.193861, 2.642620, 1.262277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.453264, 3.425514, 1.449783>,  <1.750816, 2.865100, 1.623253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.453264, 3.425514, 1.449783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.177280, 3.136101, 1.458302>,  <1.011690, 2.962453, 1.463413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.177280, 3.136101, 1.458302>,  <1.453264, 3.425514, 1.449783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.177280, 3.136101, 1.458302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547295, 0.540703, 0.638835,
		-0.473734, 0.429115, -0.769049,
		-0.689960, -0.723534, 0.021297,
		0.970292, 2.919041, 1.464691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.846493, 3.767285, 1.377427>,  <1.453264, 3.425514, 1.449783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.846493, 3.767285, 1.377427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.713196, 3.417217, 1.517729>,  <0.633218, 3.207177, 1.601910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.713196, 3.417217, 1.517729>,  <0.846493, 3.767285, 1.377427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.713196, 3.417217, 1.517729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669721, 0.481576, 0.565295,
		-0.663644, -0.046528, -0.746600,
		-0.333243, -0.875168, 0.350756,
		0.613223, 3.154667, 1.622955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.116141, 3.737076, 1.395580>,  <0.846493, 3.767285, 1.377427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.116141, 3.737076, 1.395580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.199387, 3.448742, 1.660030>,  <0.249334, 3.275742, 1.818700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.199387, 3.448742, 1.660030>,  <0.116141, 3.737076, 1.395580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.199387, 3.448742, 1.660030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513848, 0.494559, 0.700979,
		-0.832255, -0.485602, -0.267474,
		0.208115, -0.720834, 0.661125,
		0.261821, 3.232492, 1.858368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.438687, 3.458273, 1.649578>,  <0.116141, 3.737076, 1.395580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.438687, 3.458273, 1.649578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.136837, 3.470322, 1.911764>,  <0.044273, 3.477551, 2.069076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.136837, 3.470322, 1.911764>,  <-0.438687, 3.458273, 1.649578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.136837, 3.470322, 1.911764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525626, 0.625693, 0.576390,
		-0.392758, -0.779488, 0.487996,
		0.754625, 0.030122, 0.655465,
		0.089550, 3.479358, 2.108404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.548263, 3.371299, 3.075815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.908661, 3.267204, 3.214659>,  <-1.124900, 3.204747, 3.297965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.908661, 3.267204, 3.214659>,  <-0.548263, 3.371299, 3.075815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.908661, 3.267204, 3.214659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327636, 0.116272, 0.937622,
		-0.284363, 0.958518, -0.019497,
		-0.900995, -0.260237, 0.347109,
		-1.178959, 3.189133, 3.318791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.182315, 3.994049, 3.088870>,  <-0.548263, 3.371299, 3.075815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.182315, 3.994049, 3.088870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.073929, 3.622009, 3.188061>,  <-0.008897, 3.398785, 3.247575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.073929, 3.622009, 3.188061>,  <-0.182315, 3.994049, 3.088870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.073929, 3.622009, 3.188061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258428, -0.177865, -0.949515,
		0.927250, 0.321370, 0.192168,
		0.270966, -0.930100, 0.247976,
		0.007361, 3.342979, 3.262454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.490951, 3.777046, 2.914423>,  <-0.182315, 3.994049, 3.088870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.490951, 3.777046, 2.914423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.232750, 3.472435, 2.891100>,  <0.077829, 3.289668, 2.877106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.232750, 3.472435, 2.891100>,  <0.490951, 3.777046, 2.914423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.232750, 3.472435, 2.891100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211973, -0.105286, -0.971587,
		0.733753, -0.639523, 0.229386,
		-0.645503, -0.761528, -0.058308,
		0.039099, 3.243977, 2.873608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.932622, 3.156182, 2.709627>,  <0.490951, 3.777046, 2.914423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.932622, 3.156182, 2.709627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.542007, 3.113998, 2.634521>,  <0.307639, 3.088689, 2.589458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.542007, 3.113998, 2.634521>,  <0.932622, 3.156182, 2.709627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.542007, 3.113998, 2.634521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214340, -0.391527, -0.894855,
		0.020855, -0.914104, 0.404945,
		-0.976537, -0.105458, -0.187764,
		0.249047, 3.082361, 2.578192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.690707, 2.388582, 2.643204>,  <0.932622, 3.156182, 2.709627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.690707, 2.388582, 2.643204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.525009, 2.655029, 2.395111>,  <0.425590, 2.814898, 2.246255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.525009, 2.655029, 2.395111>,  <0.690707, 2.388582, 2.643204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.525009, 2.655029, 2.395111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317268, -0.533028, -0.784361,
		-0.853078, -0.521698, 0.009466,
		-0.414245, 0.666118, -0.620232,
		0.400735, 2.854865, 2.209042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.346664, 1.952610, 2.092048>,  <0.690707, 2.388582, 2.643204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.346664, 1.952610, 2.092048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.387665, 2.326656, 1.956371>,  <0.412265, 2.551084, 1.874965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.387665, 2.326656, 1.956371>,  <0.346664, 1.952610, 2.092048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.387665, 2.326656, 1.956371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541188, -0.338529, -0.769749,
		-0.834631, -0.104666, -0.540774,
		0.102501, 0.935117, -0.339191,
		0.418415, 2.607191, 1.854614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.081063, 1.953805, 1.407624>,  <0.346664, 1.952610, 2.092048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.081063, 1.953805, 1.407624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.348595, 2.251171, 1.407377>,  <0.509114, 2.429591, 1.407229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.348595, 2.251171, 1.407377>,  <0.081063, 1.953805, 1.407624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.348595, 2.251171, 1.407377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365512, -0.329563, -0.870510,
		-0.647354, 0.581997, -0.492149,
		0.668829, 0.743416, -0.000617,
		0.549243, 2.474196, 1.407192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.044898, 2.282319, 0.757099>,  <0.081063, 1.953805, 1.407624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.044898, 2.282319, 0.757099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.403008, 2.377834, 0.907547>,  <0.617873, 2.435143, 0.997816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.403008, 2.377834, 0.907547>,  <0.044898, 2.282319, 0.757099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.403008, 2.377834, 0.907547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440250, -0.344737, -0.829057,
		-0.068306, 0.907820, -0.413761,
		0.895273, 0.238788, 0.376120,
		0.671589, 2.449471, 1.020383>
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
