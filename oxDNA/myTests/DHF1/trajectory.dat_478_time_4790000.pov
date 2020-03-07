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
	<0.035600, 2.993243, -0.752790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.043348, 2.638287, -0.937035>,  <0.047997, 2.425313, -1.047581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.043348, 2.638287, -0.937035>,  <0.035600, 2.993243, -0.752790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.043348, 2.638287, -0.937035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094642, -0.457001, 0.884417,
		-0.995323, -0.060724, 0.075132,
		0.019370, -0.887391, -0.460611,
		0.049159, 2.372069, -1.075218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.528915, 2.425199, -0.597639>,  <0.035600, 2.993243, -0.752790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.528915, 2.425199, -0.597639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.194698, 2.239395, -0.715012>,  <0.005832, 2.127913, -0.785435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.194698, 2.239395, -0.715012>,  <-0.528915, 2.425199, -0.597639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.194698, 2.239395, -0.715012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017530, -0.511257, 0.859249,
		-0.549148, -0.723081, -0.419034,
		0.835541, -0.464509, -0.293431,
		0.055964, 2.100043, -0.803041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.717232, 1.841716, -0.187406>,  <-0.528915, 2.425199, -0.597639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.717232, 1.841716, -0.187406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.323393, 1.848785, -0.256981>,  <-0.087090, 1.853027, -0.298726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.323393, 1.848785, -0.256981>,  <-0.717232, 1.841716, -0.187406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.323393, 1.848785, -0.256981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172118, -0.272617, 0.946602,
		-0.030688, -0.961960, -0.271460,
		0.984598, 0.017673, -0.173936,
		-0.028014, 1.854087, -0.309162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.355145, 1.231726, -0.132875>,  <-0.717232, 1.841716, -0.187406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.355145, 1.231726, -0.132875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.120286, 1.540764, -0.036247>,  <0.020630, 1.726187, 0.021729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.120286, 1.540764, -0.036247>,  <-0.355145, 1.231726, -0.132875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.120286, 1.540764, -0.036247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058506, -0.338147, 0.939273,
		0.807363, -0.537359, -0.243744,
		0.587148, 0.772594, 0.241569,
		0.055859, 1.772542, 0.036223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.224908, 1.017732, 0.314869>,  <-0.355145, 1.231726, -0.132875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.224908, 1.017732, 0.314869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.200576, 1.408287, 0.397781>,  <0.185977, 1.642620, 0.447529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.200576, 1.408287, 0.397781>,  <0.224908, 1.017732, 0.314869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.200576, 1.408287, 0.397781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138175, -0.197429, 0.970531,
		0.988538, 0.087679, -0.122903,
		-0.060830, 0.976389, 0.207281,
		0.182327, 1.701204, 0.459966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.719498, 1.169382, 0.870911>,  <0.224908, 1.017732, 0.314869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.719498, 1.169382, 0.870911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.487899, 1.495216, 0.884834>,  <0.348939, 1.690717, 0.893188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.487899, 1.495216, 0.884834>,  <0.719498, 1.169382, 0.870911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.487899, 1.495216, 0.884834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020128, -0.056961, 0.998174,
		0.815080, 0.577240, 0.049376,
		-0.578999, 0.814585, 0.034809,
		0.314199, 1.739592, 0.895277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.016454, 1.720108, 1.278272>,  <0.719498, 1.169382, 0.870911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.016454, 1.720108, 1.278272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.620033, 1.771568, 1.264053>,  <0.382180, 1.802444, 1.255522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.620033, 1.771568, 1.264053>,  <1.016454, 1.720108, 1.278272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.620033, 1.771568, 1.264053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036062, -0.001683, 0.999348,
		0.128506, 0.991689, 0.006308,
		-0.991053, 0.128650, -0.035546,
		0.322717, 1.810163, 1.253390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.817966, 2.167909, 1.851115>,  <1.016454, 1.720108, 1.278272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.817966, 2.167909, 1.851115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.467281, 1.994274, 1.768227>,  <0.256869, 1.890093, 1.718493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.467281, 1.994274, 1.768227>,  <0.817966, 2.167909, 1.851115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.467281, 1.994274, 1.768227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170973, -0.121448, 0.977762,
		-0.449601, 0.892647, 0.032258,
		-0.876714, -0.434087, -0.207221,
		0.204266, 1.864048, 1.706060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.177015, 1.001575, 2.943698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.843168, 1.213383, 2.883003>,  <4.642860, 1.340467, 2.846586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.843168, 1.213383, 2.883003>,  <5.177015, 1.001575, 2.943698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.843168, 1.213383, 2.883003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319510, 0.240997, -0.916424,
		-0.448696, -0.813345, -0.370327,
		-0.834617, 0.529519, -0.151737,
		4.592783, 1.372239, 2.837482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.868970, 0.818067, 2.280146>,  <5.177015, 1.001575, 2.943698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.868970, 0.818067, 2.280146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.716389, 1.179779, 2.356850>,  <4.624840, 1.396806, 2.402872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.716389, 1.179779, 2.356850>,  <4.868970, 0.818067, 2.280146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.716389, 1.179779, 2.356850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094822, 0.244629, -0.964969,
		-0.919512, -0.349908, -0.179060,
		-0.381453, 0.904280, 0.191760,
		4.601953, 1.451063, 2.414378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.319660, 0.994071, 1.815671>,  <4.868970, 0.818067, 2.280146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.319660, 0.994071, 1.815671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.464264, 1.355434, 1.907898>,  <4.551026, 1.572253, 1.963234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.464264, 1.355434, 1.907898>,  <4.319660, 0.994071, 1.815671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.464264, 1.355434, 1.907898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069635, 0.220440, -0.972912,
		-0.929764, 0.367773, 0.016782,
		0.361510, 0.903410, 0.230567,
		4.572717, 1.626457, 1.977068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.033895, 1.479163, 1.313951>,  <4.319660, 0.994071, 1.815671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.033895, 1.479163, 1.313951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.372433, 1.626122, 1.468208>,  <4.575555, 1.714296, 1.560763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.372433, 1.626122, 1.468208>,  <4.033895, 1.479163, 1.313951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.372433, 1.626122, 1.468208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326737, 0.213687, -0.920642,
		-0.420646, 0.905184, 0.060811,
		0.846345, 0.367395, 0.385644,
		4.626336, 1.736340, 1.583901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.063685, 2.160065, 1.108799>,  <4.033895, 1.479163, 1.313951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.063685, 2.160065, 1.108799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.443954, 2.051159, 1.168251>,  <4.672116, 1.985815, 1.203922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.443954, 2.051159, 1.168251>,  <4.063685, 2.160065, 1.108799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.443954, 2.051159, 1.168251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235721, 0.322645, -0.916698,
		0.201630, 0.906516, 0.370909,
		0.950674, -0.272265, 0.148630,
		4.729156, 1.969479, 1.212840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.484427, 2.656828, 0.776871>,  <4.063685, 2.160065, 1.108799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.484427, 2.656828, 0.776871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.737541, 2.349495, 0.815338>,  <4.889410, 2.165095, 0.838418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.737541, 2.349495, 0.815338>,  <4.484427, 2.656828, 0.776871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.737541, 2.349495, 0.815338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395247, 0.213700, -0.893371,
		0.665855, 0.603323, 0.438907,
		0.632786, -0.768332, 0.096168,
		4.927377, 2.118995, 0.844189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.207847, 2.948243, 0.685620>,  <4.484427, 2.656828, 0.776871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.207847, 2.948243, 0.685620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.184908, 2.558517, 0.598511>,  <5.171144, 2.324682, 0.546245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.184908, 2.558517, 0.598511>,  <5.207847, 2.948243, 0.685620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.184908, 2.558517, 0.598511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244273, 0.197809, -0.949317,
		0.968009, -0.107636, 0.226655,
		-0.057347, -0.974313, -0.217774,
		5.167704, 2.266223, 0.533179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.774484, 2.846555, 0.242920>,  <5.207847, 2.948243, 0.685620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.774484, 2.846555, 0.242920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.525845, 2.547607, 0.149063>,  <5.376661, 2.368239, 0.092749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.525845, 2.547607, 0.149063>,  <5.774484, 2.846555, 0.242920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.525845, 2.547607, 0.149063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130933, 0.196198, -0.971783,
		0.772316, -0.634781, -0.024101,
		-0.621599, -0.747368, -0.234641,
		5.339365, 2.323397, 0.078671>
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
