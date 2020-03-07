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
	<2.394793, 3.535675, 4.033395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.439617, 3.252480, 4.312305>,  <2.466512, 3.082562, 4.479651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.439617, 3.252480, 4.312305>,  <2.394793, 3.535675, 4.033395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.439617, 3.252480, 4.312305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968585, -0.234588, -0.082528,
		0.222002, -0.666123, -0.712036,
		0.112061, -0.707990, 0.697275,
		2.473235, 3.040083, 4.521488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.254506, 4.325132, 4.125969>,  <2.394793, 3.535675, 4.033395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.254506, 4.325132, 4.125969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.394278, 4.152023, 3.793558>,  <2.478140, 4.048158, 3.594111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.394278, 4.152023, 3.793558>,  <2.254506, 4.325132, 4.125969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.394278, 4.152023, 3.793558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796584, 0.604187, 0.020303,
		0.493310, -0.669078, 0.555860,
		0.349428, -0.432773, -0.831028,
		2.499106, 4.022192, 3.544250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.756274, 4.039948, 4.559630>,  <2.254506, 4.325132, 4.125969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.756274, 4.039948, 4.559630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.842276, 3.931221, 4.934839>,  <1.893877, 3.865985, 5.159965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.842276, 3.931221, 4.934839>,  <1.756274, 4.039948, 4.559630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.842276, 3.931221, 4.934839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966034, 0.200186, -0.163415,
		-0.143361, 0.941297, 0.305625,
		0.215004, -0.271817, 0.938024,
		1.906777, 3.849676, 5.216247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.072730, 4.498581, 4.988843>,  <1.756274, 4.039948, 4.559630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.072730, 4.498581, 4.988843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.201426, 4.145401, 5.125595>,  <2.278643, 3.933493, 5.207646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.201426, 4.145401, 5.125595>,  <2.072730, 4.498581, 4.988843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.201426, 4.145401, 5.125595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890038, 0.158868, -0.427310,
		0.322980, 0.441768, 0.836974,
		0.321740, -0.882951, 0.341879,
		2.297948, 3.880516, 5.228158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.660956, 4.599913, 5.375927>,  <2.072730, 4.498581, 4.988843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.660956, 4.599913, 5.375927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.690836, 4.216545, 5.265762>,  <2.708764, 3.986524, 5.199664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.690836, 4.216545, 5.265762>,  <2.660956, 4.599913, 5.375927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.690836, 4.216545, 5.265762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827064, 0.213844, -0.519841,
		0.557121, -0.188950, 0.808649,
		0.074701, -0.958420, -0.275411,
		2.713246, 3.929019, 5.183139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.220376, 4.272594, 5.677492>,  <2.660956, 4.599913, 5.375927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.220376, 4.272594, 5.677492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.094296, 4.149712, 5.318321>,  <3.018647, 4.075982, 5.102818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.094296, 4.149712, 5.318321>,  <3.220376, 4.272594, 5.677492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.094296, 4.149712, 5.318321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859223, 0.309375, -0.407459,
		0.402970, -0.899951, 0.166444,
		-0.315200, -0.307206, -0.897927,
		2.999736, 4.057550, 5.048943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.870481, 3.995521, 5.417042>,  <3.220376, 4.272594, 5.677492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.870481, 3.995521, 5.417042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.623486, 4.188477, 5.168524>,  <3.475288, 4.304250, 5.019413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.623486, 4.188477, 5.168524>,  <3.870481, 3.995521, 5.417042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.623486, 4.188477, 5.168524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781500, 0.465861, -0.415006,
		0.089243, -0.741804, -0.664652,
		-0.617489, 0.482389, -0.621295,
		3.438239, 4.333193, 4.982135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.022388, 4.066907, 4.735354>,  <3.870481, 3.995521, 5.417042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.022388, 4.066907, 4.735354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.788641, 4.391502, 4.734831>,  <3.648393, 4.586260, 4.734517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.788641, 4.391502, 4.734831>,  <4.022388, 4.066907, 4.735354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.788641, 4.391502, 4.734831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723119, 0.519998, -0.454643,
		-0.368257, -0.266624, -0.890673,
		-0.584367, 0.811488, -0.001308,
		3.613331, 4.634949, 4.734438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.006714, 3.369326, 0.087650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.222538, 3.032608, 0.081270>,  <1.352033, 2.830577, 0.077442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.222538, 3.032608, 0.081270>,  <1.006714, 3.369326, 0.087650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.222538, 3.032608, 0.081270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601172, -0.398454, 0.692695,
		-0.589463, -0.364162, -0.721054,
		0.539560, -0.841796, -0.015950,
		1.384406, 2.780069, 0.076485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.486521, 2.768877, 0.219779>,  <1.006714, 3.369326, 0.087650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.486521, 2.768877, 0.219779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.845857, 2.670147, 0.365143>,  <1.061458, 2.610909, 0.452361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.845857, 2.670147, 0.365143>,  <0.486521, 2.768877, 0.219779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.845857, 2.670147, 0.365143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422535, -0.259093, 0.868525,
		-0.120217, -0.933782, -0.337046,
		0.898338, -0.246825, 0.363408,
		1.115358, 2.596100, 0.474165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.285866, 2.284588, 0.783553>,  <0.486521, 2.768877, 0.219779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.285866, 2.284588, 0.783553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.675663, 2.358383, 0.834665>,  <0.909541, 2.402660, 0.865333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.675663, 2.358383, 0.834665>,  <0.285866, 2.284588, 0.783553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.675663, 2.358383, 0.834665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097558, -0.164524, 0.981537,
		0.202105, -0.968966, -0.142329,
		0.974493, 0.184488, 0.127781,
		0.968011, 2.413730, 0.873000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.690720, 1.676075, 1.070103>,  <0.285866, 2.284588, 0.783553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.690720, 1.676075, 1.070103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.855922, 2.031921, 1.148088>,  <0.955043, 2.245429, 1.194880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.855922, 2.031921, 1.148088>,  <0.690720, 1.676075, 1.070103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.855922, 2.031921, 1.148088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285214, -0.076963, 0.955369,
		0.864917, -0.450177, 0.221945,
		0.413004, 0.889616, 0.194964,
		0.979823, 2.298806, 1.206578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.082825, 1.663233, 1.843049>,  <0.690720, 1.676075, 1.070103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.082825, 1.663233, 1.843049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.953257, 2.005238, 1.681047>,  <0.875515, 2.210441, 1.583846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.953257, 2.005238, 1.681047>,  <1.082825, 1.663233, 1.843049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.953257, 2.005238, 1.681047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241330, 0.339251, 0.909213,
		0.914787, 0.392254, 0.096449,
		-0.323922, 0.855012, -0.405005,
		0.856080, 2.261741, 1.559546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.313932, 2.231358, 2.237354>,  <1.082825, 1.663233, 1.843049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.313932, 2.231358, 2.237354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.992845, 2.386688, 2.056314>,  <0.800192, 2.479886, 1.947691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.992845, 2.386688, 2.056314>,  <1.313932, 2.231358, 2.237354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.992845, 2.386688, 2.056314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227462, 0.502198, 0.834301,
		0.551274, 0.772658, -0.314795,
		-0.802719, 0.388325, -0.452599,
		0.752029, 2.503186, 1.920535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.343702, 2.984626, 2.077650>,  <1.313932, 2.231358, 2.237354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.343702, 2.984626, 2.077650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.996285, 2.817059, 2.183588>,  <0.787836, 2.716518, 2.247151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.996285, 2.817059, 2.183588>,  <1.343702, 2.984626, 2.077650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.996285, 2.817059, 2.183588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008116, 0.546327, 0.837533,
		-0.495551, 0.725282, -0.477907,
		-0.868541, -0.418919, 0.264846,
		0.735723, 2.691383, 2.263042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.877684, 3.545765, 2.337377>,  <1.343702, 2.984626, 2.077650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.877684, 3.545765, 2.337377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.774031, 3.187550, 2.482077>,  <0.711839, 2.972620, 2.568896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.774031, 3.187550, 2.482077>,  <0.877684, 3.545765, 2.337377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.774031, 3.187550, 2.482077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008296, 0.372465, 0.928009,
		-0.965806, 0.243480, -0.089088,
		-0.259134, -0.895538, 0.361749,
		0.696291, 2.918888, 2.590601>
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
