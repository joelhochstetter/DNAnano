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
	<1.013698, 5.817177, 2.514682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.248516, 5.877747, 2.196575>,  <1.389407, 5.914088, 2.005711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.248516, 5.877747, 2.196575>,  <1.013698, 5.817177, 2.514682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.248516, 5.877747, 2.196575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358210, -0.929538, 0.087431,
		-0.725991, -0.336199, -0.599923,
		0.587046, 0.151424, -0.795266,
		1.424630, 5.923174, 1.957995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.894385, 5.250913, 2.165382>,  <1.013698, 5.817177, 2.514682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.894385, 5.250913, 2.165382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.259789, 5.380966, 2.067574>,  <1.479030, 5.458998, 2.008888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.259789, 5.380966, 2.067574>,  <0.894385, 5.250913, 2.165382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.259789, 5.380966, 2.067574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326721, -0.944464, -0.035230,
		-0.242396, -0.047707, -0.969004,
		0.913508, 0.325133, -0.244521,
		1.533841, 5.478506, 1.994217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.112399, 4.888485, 1.537989>,  <0.894385, 5.250913, 2.165382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.112399, 4.888485, 1.537989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.435974, 5.013275, 1.737305>,  <1.630119, 5.088150, 1.856894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.435974, 5.013275, 1.737305>,  <1.112399, 4.888485, 1.537989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.435974, 5.013275, 1.737305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418986, -0.900502, -0.116395,
		0.412397, 0.302932, -0.859163,
		0.808937, 0.311976, 0.498289,
		1.678655, 5.106868, 1.886791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.782815, 4.897878, 1.165647>,  <1.112399, 4.888485, 1.537989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.782815, 4.897878, 1.165647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.784325, 4.797485, 1.552841>,  <1.785230, 4.737250, 1.785157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.784325, 4.797485, 1.552841>,  <1.782815, 4.897878, 1.165647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.784325, 4.797485, 1.552841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385547, -0.892788, -0.232988,
		0.922681, 0.374082, 0.093397,
		0.003773, -0.250982, 0.967984,
		1.785457, 4.722191, 1.843236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.462337, 4.581395, 1.170577>,  <1.782815, 4.897878, 1.165647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.462337, 4.581395, 1.170577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.187820, 4.451241, 1.430771>,  <2.023111, 4.373148, 1.586887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.187820, 4.451241, 1.430771>,  <2.462337, 4.581395, 1.170577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.187820, 4.451241, 1.430771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339923, -0.934156, -0.108652,
		0.643007, 0.146547, 0.751708,
		-0.686290, -0.325387, 0.650484,
		1.981933, 4.353624, 1.625916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.671502, 4.103633, 1.503269>,  <2.462337, 4.581395, 1.170577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.671502, 4.103633, 1.503269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.287552, 4.009308, 1.563976>,  <2.057182, 3.952713, 1.600400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.287552, 4.009308, 1.563976>,  <2.671502, 4.103633, 1.503269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.287552, 4.009308, 1.563976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254025, -0.960415, 0.114341,
		0.118797, 0.148306, 0.981780,
		-0.959874, -0.235813, 0.151767,
		1.999590, 3.938564, 1.609506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.557918, 3.683034, 2.166628>,  <2.671502, 4.103633, 1.503269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.557918, 3.683034, 2.166628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.241806, 3.618256, 1.930244>,  <2.052139, 3.579389, 1.788414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.241806, 3.618256, 1.930244>,  <2.557918, 3.683034, 2.166628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.241806, 3.618256, 1.930244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008905, -0.961305, 0.275343,
		-0.612682, 0.222860, 0.758257,
		-0.790279, -0.161945, -0.590959,
		2.004722, 3.569672, 1.752957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.159901, 3.305901, 2.576476>,  <2.557918, 3.683034, 2.166628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.159901, 3.305901, 2.576476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.047779, 3.257217, 2.195610>,  <1.980506, 3.228007, 1.967091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.047779, 3.257217, 2.195610>,  <2.159901, 3.305901, 2.576476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.047779, 3.257217, 2.195610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070831, -0.991848, 0.105930,
		-0.957294, -0.037750, 0.286641,
		-0.280305, -0.121710, -0.952164,
		1.963688, 3.220705, 1.909961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.822504, 1.913279, 2.365974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.503620, 1.794693, 2.155617>,  <2.312290, 1.723541, 2.029402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.503620, 1.794693, 2.155617>,  <2.822504, 1.913279, 2.365974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.503620, 1.794693, 2.155617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039486, 0.843643, -0.535451,
		0.602408, -0.447632, -0.660855,
		-0.797211, -0.296465, -0.525892,
		2.264457, 1.705753, 1.997849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.815254, 1.965755, 1.572846>,  <2.822504, 1.913279, 2.365974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.815254, 1.965755, 1.572846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.433529, 2.007721, 1.684761>,  <2.204494, 2.032901, 1.751910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.433529, 2.007721, 1.684761>,  <2.815254, 1.965755, 1.572846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.433529, 2.007721, 1.684761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053848, 0.860625, -0.506384,
		-0.293919, -0.498314, -0.815656,
		-0.954312, 0.104915, 0.279787,
		2.147235, 2.039195, 1.768697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.392153, 2.255706, 0.976518>,  <2.815254, 1.965755, 1.572846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.392153, 2.255706, 0.976518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.203966, 2.361893, 1.313133>,  <2.091054, 2.425605, 1.515103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.203966, 2.361893, 1.313133>,  <2.392153, 2.255706, 0.976518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.203966, 2.361893, 1.313133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278838, 0.860085, -0.427205,
		-0.837203, -0.435639, -0.330620,
		-0.470468, 0.265468, 0.841538,
		2.062826, 2.441533, 1.565595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.078096, 2.851880, 0.702555>,  <2.392153, 2.255706, 0.976518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.078096, 2.851880, 0.702555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.969458, 2.843735, 1.087433>,  <1.904274, 2.838847, 1.318360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.969458, 2.843735, 1.087433>,  <2.078096, 2.851880, 0.702555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.969458, 2.843735, 1.087433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369767, 0.925247, -0.084791,
		-0.888543, -0.378817, -0.258824,
		-0.271596, -0.020364, 0.962196,
		1.887979, 2.837626, 1.376092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.377354, 3.063290, 0.795942>,  <2.078096, 2.851880, 0.702555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.377354, 3.063290, 0.795942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.556770, 3.111191, 1.150223>,  <1.664420, 3.139931, 1.362792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.556770, 3.111191, 1.150223>,  <1.377354, 3.063290, 0.795942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.556770, 3.111191, 1.150223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355490, 0.933127, 0.053865,
		-0.820023, -0.339019, 0.461117,
		0.448542, 0.119752, 0.885703,
		1.691333, 3.147116, 1.415934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.870770, 3.429051, 1.154550>,  <1.377354, 3.063290, 0.795942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.870770, 3.429051, 1.154550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.227432, 3.465836, 1.331860>,  <1.441430, 3.487906, 1.438246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.227432, 3.465836, 1.331860>,  <0.870770, 3.429051, 1.154550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.227432, 3.465836, 1.331860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147809, 0.984629, 0.093052,
		-0.427904, -0.148490, 0.891543,
		0.891656, 0.091960, 0.443275,
		1.494929, 3.493424, 1.464842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.778468, 3.820813, 1.801154>,  <0.870770, 3.429051, 1.154550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.778468, 3.820813, 1.801154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.159128, 3.867691, 1.687576>,  <1.387525, 3.895818, 1.619429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.159128, 3.867691, 1.687576>,  <0.778468, 3.820813, 1.801154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.159128, 3.867691, 1.687576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120195, 0.992726, 0.006894,
		0.282688, 0.027568, 0.958816,
		0.951652, 0.117194, -0.283945,
		1.444624, 3.902849, 1.602393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.222429, 4.322453, 2.246697>,  <0.778468, 3.820813, 1.801154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.222429, 4.322453, 2.246697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.293430, 4.302383, 1.853561>,  <1.336031, 4.290341, 1.617680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.293430, 4.302383, 1.853561>,  <1.222429, 4.322453, 2.246697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.293430, 4.302383, 1.853561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092463, 0.993431, -0.067414,
		0.979767, 0.102842, 0.171698,
		0.177503, -0.050175, -0.982840,
		1.346681, 4.287331, 1.558709>
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
