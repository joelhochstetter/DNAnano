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
	<-0.881148, 1.149950, 2.512794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.853722, 0.907829, 2.195580>,  <-0.837266, 0.762557, 2.005251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.853722, 0.907829, 2.195580>,  <-0.881148, 1.149950, 2.512794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.853722, 0.907829, 2.195580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993365, -0.032142, 0.110420,
		-0.092327, -0.795346, 0.599083,
		0.068566, -0.605303, -0.793037,
		-0.833152, 0.726239, 1.957668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.518666, 0.495869, 2.743061>,  <-0.881148, 1.149950, 2.512794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.518666, 0.495869, 2.743061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.467674, 0.548615, 2.349846>,  <-0.437079, 0.580262, 2.113917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.467674, 0.548615, 2.349846>,  <-0.518666, 0.495869, 2.743061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.467674, 0.548615, 2.349846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991803, -0.008220, 0.127514,
		0.008734, -0.991234, -0.131831,
		0.127480, 0.131864, -0.983037,
		-0.429430, 0.588174, 2.054935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.040481, -0.020281, 2.560983>,  <-0.518666, 0.495869, 2.743061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.040481, -0.020281, 2.560983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.013519, 0.319260, 2.351257>,  <-0.002658, 0.522984, 2.225422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.013519, 0.319260, 2.351257>,  <0.040481, -0.020281, 2.560983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.013519, 0.319260, 2.351257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995230, 0.094346, 0.024798,
		0.070517, -0.520143, -0.851163,
		-0.067406, 0.848852, -0.524315,
		-0.006702, 0.573915, 2.193963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.382665, -0.068025, 1.846450>,  <0.040481, -0.020281, 2.560983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.382665, -0.068025, 1.846450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.362709, 0.287247, 2.029163>,  <0.350735, 0.500409, 2.138791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.362709, 0.287247, 2.029163>,  <0.382665, -0.068025, 1.846450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.362709, 0.287247, 2.029163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995663, 0.008273, 0.092659,
		0.078519, 0.459425, -0.884739,
		-0.049890, 0.888178, 0.456783,
		0.347742, 0.553700, 2.166198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.696068, 0.478319, 1.435173>,  <0.382665, -0.068025, 1.846450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.696068, 0.478319, 1.435173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.702126, 0.572014, 1.823997>,  <0.705760, 0.628231, 2.057292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.702126, 0.572014, 1.823997>,  <0.696068, 0.478319, 1.435173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.702126, 0.572014, 1.823997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998812, -0.048579, -0.003854,
		0.046319, 0.970965, -0.234695,
		0.015144, 0.234237, 0.972061,
		0.706669, 0.642285, 2.115616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.195914, 0.984172, 1.439549>,  <0.696068, 0.478319, 1.435173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.195914, 0.984172, 1.439549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.149052, 0.889778, 1.825417>,  <1.120934, 0.833142, 2.056937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.149052, 0.889778, 1.825417>,  <1.195914, 0.984172, 1.439549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.149052, 0.889778, 1.825417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983809, 0.105079, 0.145185,
		-0.135628, 0.966059, 0.219853,
		-0.117155, -0.235985, 0.964669,
		1.113905, 0.818983, 2.114817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.515348, 1.558769, 1.820146>,  <1.195914, 0.984172, 1.439549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.515348, 1.558769, 1.820146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.481045, 1.239021, 2.058022>,  <1.460463, 1.047173, 2.200747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.481045, 1.239021, 2.058022>,  <1.515348, 1.558769, 1.820146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.481045, 1.239021, 2.058022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953505, 0.107240, 0.281652,
		-0.288919, 0.591194, 0.753005,
		-0.085758, -0.799368, 0.594690,
		1.455317, 0.999211, 2.236428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.814598, 1.776798, 2.495185>,  <1.515348, 1.558769, 1.820146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.814598, 1.776798, 2.495185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.825039, 1.376961, 2.499779>,  <1.831304, 1.137058, 2.502535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.825039, 1.376961, 2.499779>,  <1.814598, 1.776798, 2.495185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.825039, 1.376961, 2.499779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905595, 0.028510, 0.423185,
		-0.423340, -0.000647, 0.905971,
		0.026103, -0.999593, 0.011483,
		1.832870, 1.077083, 2.503224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.175142, 1.101225, 2.332493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.061721, 0.945435, 2.683014>,  <2.993669, 0.851960, 2.893327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.061721, 0.945435, 2.683014>,  <3.175142, 1.101225, 2.332493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.061721, 0.945435, 2.683014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868277, -0.283615, -0.407010,
		0.407054, -0.876282, -0.257754,
		-0.283553, -0.389477, 0.876302,
		2.976655, 0.828591, 2.945904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.987057, 0.403445, 2.221933>,  <3.175142, 1.101225, 2.332493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.987057, 0.403445, 2.221933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.759128, 0.550171, 2.516075>,  <2.622370, 0.638206, 2.692560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.759128, 0.550171, 2.516075>,  <2.987057, 0.403445, 2.221933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.759128, 0.550171, 2.516075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819156, -0.324811, -0.472738,
		0.065445, -0.871749, 0.485563,
		-0.569825, 0.366813, 0.735356,
		2.588180, 0.660215, 2.736682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.444174, -0.006956, 2.255444>,  <2.987057, 0.403445, 2.221933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.444174, -0.006956, 2.255444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.322740, 0.298347, 2.483574>,  <2.249879, 0.481530, 2.620452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.322740, 0.298347, 2.483574>,  <2.444174, -0.006956, 2.255444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.322740, 0.298347, 2.483574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943322, -0.156537, -0.292641,
		-0.134083, -0.626845, 0.767520,
		-0.303586, 0.763257, 0.570328,
		2.231664, 0.527325, 2.654671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.858791, -0.203630, 2.606385>,  <2.444174, -0.006956, 2.255444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.858791, -0.203630, 2.606385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.830342, 0.195343, 2.603035>,  <1.813273, 0.434727, 2.601025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.830342, 0.195343, 2.603035>,  <1.858791, -0.203630, 2.606385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.830342, 0.195343, 2.603035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957296, -0.070614, -0.280353,
		-0.280224, -0.011921, 0.959861,
		-0.071122, 0.997432, -0.008375,
		1.809005, 0.494573, 2.600522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.368926, -0.014689, 3.050588>,  <1.858791, -0.203630, 2.606385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.368926, -0.014689, 3.050588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.400416, 0.314018, 2.824844>,  <1.419310, 0.511243, 2.689398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.400416, 0.314018, 2.824844>,  <1.368926, -0.014689, 3.050588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.400416, 0.314018, 2.824844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993354, 0.016986, -0.113834,
		-0.083960, 0.569569, 0.817644,
		0.078725, 0.821768, -0.564359,
		1.424034, 0.560549, 2.655537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.954952, 0.586514, 3.393547>,  <1.368926, -0.014689, 3.050588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.954952, 0.586514, 3.393547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.990389, 0.653824, 3.000847>,  <1.011651, 0.694210, 2.765227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.990389, 0.653824, 3.000847>,  <0.954952, 0.586514, 3.393547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.990389, 0.653824, 3.000847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989017, 0.131927, -0.066635,
		0.118307, 0.976872, 0.178113,
		0.088592, 0.168274, -0.981751,
		1.016966, 0.704306, 2.706321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.542141, 1.218442, 3.309365>,  <0.954952, 0.586514, 3.393547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.542141, 1.218442, 3.309365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.605774, 1.047066, 2.953583>,  <0.643954, 0.944240, 2.740113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.605774, 1.047066, 2.953583>,  <0.542141, 1.218442, 3.309365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.605774, 1.047066, 2.953583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926374, 0.246725, -0.284530,
		0.341356, 0.869232, -0.357647,
		0.159082, -0.428441, -0.889456,
		0.653499, 0.918533, 2.686746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.235158, 1.664622, 2.794644>,  <0.542141, 1.218442, 3.309365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.235158, 1.664622, 2.794644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.270532, 1.306824, 2.619347>,  <0.291757, 1.092145, 2.514168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.270532, 1.306824, 2.619347>,  <0.235158, 1.664622, 2.794644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.270532, 1.306824, 2.619347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972641, 0.017341, -0.231667,
		0.214824, 0.446742, -0.868489,
		0.088435, -0.894495, -0.438245,
		0.297063, 1.038475, 2.487873>
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
