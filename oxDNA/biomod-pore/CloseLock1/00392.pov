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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.084126, 35.322098, 34.787163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330860, 35.021458, 34.880638>,  <24.478901, 34.841072, 34.936726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330860, 35.021458, 34.880638>,  <24.084126, 35.322098, 34.787163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.330860, 35.021458, 34.880638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787085, 0.587628, -0.187595,
		0.003674, 0.299649, 0.954043,
		0.616834, -0.751601, 0.233690,
		24.515911, 34.795979, 34.950745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.582460, 35.589073, 35.238289>,  <24.084126, 35.322098, 34.787163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.582460, 35.589073, 35.238289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.812567, 35.299358, 35.086250>,  <24.950630, 35.125530, 34.995026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.812567, 35.299358, 35.086250>,  <24.582460, 35.589073, 35.238289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.812567, 35.299358, 35.086250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755809, 0.648358, -0.091568,
		0.312761, -0.234605, 0.920402,
		0.575268, -0.724287, -0.380098,
		24.985147, 35.082073, 34.972221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.374811, 35.639622, 35.501007>,  <24.582460, 35.589073, 35.238289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.374811, 35.639622, 35.501007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396315, 35.372887, 35.203701>,  <25.409216, 35.212845, 35.025318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396315, 35.372887, 35.203701>,  <25.374811, 35.639622, 35.501007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396315, 35.372887, 35.203701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959647, 0.240252, -0.146139,
		0.276021, -0.705414, 0.652842,
		0.053758, -0.666836, -0.743263,
		25.412441, 35.172836, 34.980721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.817240, 34.980995, 35.613663>,  <25.374811, 35.639622, 35.501007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.817240, 34.980995, 35.613663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781792, 35.129333, 35.243881>,  <25.760523, 35.218338, 35.022011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781792, 35.129333, 35.243881>,  <25.817240, 34.980995, 35.613663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781792, 35.129333, 35.243881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976339, 0.216136, -0.006892,
		0.197252, -0.903192, -0.381229,
		-0.088622, 0.370849, -0.924455,
		25.755205, 35.240589, 34.966545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.443077, 34.477638, 35.707733>,  <25.817240, 34.980995, 35.613663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.443077, 34.477638, 35.707733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645241, 34.338058, 36.023403>,  <26.766539, 34.254311, 36.212807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645241, 34.338058, 36.023403>,  <26.443077, 34.477638, 35.707733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645241, 34.338058, 36.023403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628910, 0.775157, -0.060025,
		-0.590789, 0.526657, 0.611228,
		0.505410, -0.348946, 0.789175,
		26.796864, 34.233376, 36.260155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304993, 34.921371, 36.183659>,  <26.443077, 34.477638, 35.707733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304993, 34.921371, 36.183659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654720, 34.733009, 36.230679>,  <26.864557, 34.619991, 36.258888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654720, 34.733009, 36.230679>,  <26.304993, 34.921371, 36.183659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654720, 34.733009, 36.230679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485171, 0.854626, -0.184997,
		-0.013342, 0.218776, 0.975684,
		0.874317, -0.470905, 0.117547,
		26.917015, 34.591740, 36.265942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718634, 35.370834, 36.578686>,  <26.304993, 34.921371, 36.183659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718634, 35.370834, 36.578686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004101, 35.125690, 36.442993>,  <27.175381, 34.978603, 36.361576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004101, 35.125690, 36.442993>,  <26.718634, 35.370834, 36.578686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004101, 35.125690, 36.442993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613014, 0.780767, -0.120900,
		0.338955, -0.121671, 0.932902,
		0.713669, -0.612862, -0.339231,
		27.218201, 34.941833, 36.341225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351166, 35.601154, 36.990406>,  <26.718634, 35.370834, 36.578686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351166, 35.601154, 36.990406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435717, 35.423809, 36.641979>,  <27.486446, 35.317402, 36.432922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435717, 35.423809, 36.641979>,  <27.351166, 35.601154, 36.990406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435717, 35.423809, 36.641979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643085, 0.734214, -0.217650,
		0.736044, -0.514162, 0.440314,
		0.211377, -0.443359, -0.871064,
		27.499130, 35.290802, 36.380661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995787, 35.628738, 36.924614>,  <27.351166, 35.601154, 36.990406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995787, 35.628738, 36.924614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884819, 35.588512, 36.542427>,  <27.818239, 35.564377, 36.313114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884819, 35.588512, 36.542427>,  <27.995787, 35.628738, 36.924614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884819, 35.588512, 36.542427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712448, 0.645674, -0.274814,
		0.644554, -0.756965, -0.107495,
		-0.277431, -0.100548, -0.955469,
		27.801594, 35.558342, 36.255787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671862, 35.712460, 36.507320>,  <27.995787, 35.628738, 36.924614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671862, 35.712460, 36.507320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386625, 35.746796, 36.229000>,  <28.215483, 35.767399, 36.062008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386625, 35.746796, 36.229000>,  <28.671862, 35.712460, 36.507320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386625, 35.746796, 36.229000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605430, 0.575824, -0.549438,
		0.353492, -0.813055, -0.462585,
		-0.713091, 0.085841, -0.695797,
		28.172699, 35.772549, 36.020260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994984, 35.518837, 35.879665>,  <28.671862, 35.712460, 36.507320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994984, 35.518837, 35.879665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684387, 35.759251, 35.803959>,  <28.498030, 35.903500, 35.758533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684387, 35.759251, 35.803959>,  <28.994984, 35.518837, 35.879665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684387, 35.759251, 35.803959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598687, 0.609990, -0.519120,
		-0.196558, -0.516403, -0.833482,
		-0.776491, 0.601032, -0.189266,
		28.451439, 35.939560, 35.747177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067404, 35.756641, 35.100914>,  <28.994984, 35.518837, 35.879665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067404, 35.756641, 35.100914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803249, 36.012047, 35.258999>,  <28.644756, 36.165291, 35.353848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803249, 36.012047, 35.258999>,  <29.067404, 35.756641, 35.100914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803249, 36.012047, 35.258999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434064, 0.754048, -0.492950,
		-0.612761, -0.153992, -0.775119,
		-0.660388, 0.638513, 0.395208,
		28.605133, 36.203602, 35.377560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762455, 36.204075, 34.628136>,  <29.067404, 35.756641, 35.100914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762455, 36.204075, 34.628136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733717, 36.395077, 34.978409>,  <28.716475, 36.509678, 35.188572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733717, 36.395077, 34.978409>,  <28.762455, 36.204075, 34.628136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733717, 36.395077, 34.978409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425607, 0.808691, -0.406052,
		-0.902052, 0.343525, -0.261330,
		-0.071846, 0.477504, 0.875687,
		28.712164, 36.538326, 35.241116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028296, 36.852047, 34.527065>,  <28.762455, 36.204075, 34.628136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028296, 36.852047, 34.527065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.973055, 36.936737, 34.914074>,  <28.939911, 36.987553, 35.146278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.973055, 36.936737, 34.914074>,  <29.028296, 36.852047, 34.527065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973055, 36.936737, 34.914074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704807, 0.707326, -0.054188,
		-0.695827, 0.674433, -0.246909,
		-0.138099, 0.211729, 0.967522,
		28.931625, 37.000256, 35.204330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833988, 37.623146, 34.678806>,  <29.028296, 36.852047, 34.527065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833988, 37.623146, 34.678806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003836, 37.444145, 34.993622>,  <29.105745, 37.336742, 35.182510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003836, 37.444145, 34.993622>,  <28.833988, 37.623146, 34.678806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003836, 37.444145, 34.993622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663263, 0.745468, 0.066028,
		-0.616263, 0.493979, 0.613355,
		0.424620, -0.447507, 0.787042,
		29.131222, 37.309895, 35.229736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784311, 38.085594, 35.275517>,  <28.833988, 37.623146, 34.678806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784311, 38.085594, 35.275517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077631, 37.820805, 35.337578>,  <29.253622, 37.661930, 35.374813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077631, 37.820805, 35.337578>,  <28.784311, 38.085594, 35.275517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077631, 37.820805, 35.337578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640391, 0.749116, 0.169483,
		-0.228418, -0.024925, 0.973244,
		0.733297, -0.661970, 0.155150,
		29.297621, 37.622215, 35.384121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288389, 38.561684, 35.801739>,  <28.784311, 38.085594, 35.275517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288389, 38.561684, 35.801739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491961, 38.243244, 35.670765>,  <29.614103, 38.052181, 35.592178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491961, 38.243244, 35.670765>,  <29.288389, 38.561684, 35.801739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491961, 38.243244, 35.670765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850091, 0.524650, 0.045692,
		0.135415, -0.301605, 0.943768,
		0.508929, -0.796101, -0.327437,
		29.644640, 38.004414, 35.572533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906919, 38.590900, 36.141975>,  <29.288389, 38.561684, 35.801739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906919, 38.590900, 36.141975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984634, 38.355846, 35.827793>,  <30.031263, 38.214813, 35.639282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984634, 38.355846, 35.827793>,  <29.906919, 38.590900, 36.141975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984634, 38.355846, 35.827793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980525, 0.092923, 0.173019,
		-0.028685, -0.803773, 0.594244,
		0.194287, -0.587635, -0.785454,
		30.042921, 38.179558, 35.592155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447472, 38.101807, 36.378643>,  <29.906919, 38.590900, 36.141975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447472, 38.101807, 36.378643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458614, 38.145733, 35.981216>,  <30.465300, 38.172089, 35.742760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458614, 38.145733, 35.981216>,  <30.447472, 38.101807, 36.378643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458614, 38.145733, 35.981216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964119, 0.259556, 0.055719,
		0.264004, -0.959464, -0.098641,
		0.027858, 0.109812, -0.993562,
		30.466972, 38.178677, 35.683147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168262, 37.961613, 36.233273>,  <30.447472, 38.101807, 36.378643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168262, 37.961613, 36.233273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055822, 38.125225, 35.886013>,  <30.988359, 38.223392, 35.677658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055822, 38.125225, 35.886013>,  <31.168262, 37.961613, 36.233273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055822, 38.125225, 35.886013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861221, 0.506643, -0.040152,
		0.423417, -0.758953, -0.494680,
		-0.281099, 0.409027, -0.868147,
		30.971493, 38.247932, 35.625568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794712, 37.922665, 35.804333>,  <31.168262, 37.961613, 36.233273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794712, 37.922665, 35.804333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570536, 38.206360, 35.633270>,  <31.436029, 38.376579, 35.530632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570536, 38.206360, 35.633270>,  <31.794712, 37.922665, 35.804333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570536, 38.206360, 35.633270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800416, 0.596460, -0.059745,
		0.212704, -0.375783, -0.901967,
		-0.560439, 0.709240, -0.427652,
		31.402405, 38.419132, 35.504974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141724, 38.254318, 35.130692>,  <31.794712, 37.922665, 35.804333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141724, 38.254318, 35.130692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859207, 38.522900, 35.220398>,  <31.689697, 38.684048, 35.274220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859207, 38.522900, 35.220398>,  <32.141724, 38.254318, 35.130692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859207, 38.522900, 35.220398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655123, 0.740000, -0.152363,
		-0.268260, 0.039307, -0.962544,
		-0.706293, 0.671458, 0.224263,
		31.647320, 38.724339, 35.287678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189583, 38.807053, 34.555237>,  <32.141724, 38.254318, 35.130692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189583, 38.807053, 34.555237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994089, 38.993202, 34.850414>,  <31.876793, 39.104893, 35.027519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994089, 38.993202, 34.850414>,  <32.189583, 38.807053, 34.555237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994089, 38.993202, 34.850414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490865, 0.845947, -0.208386,
		-0.721240, 0.260385, -0.641882,
		-0.488737, 0.465374, 0.737945,
		31.847467, 39.132812, 35.071796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187496, 39.457813, 34.253506>,  <32.189583, 38.807053, 34.555237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187496, 39.457813, 34.253506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130005, 39.486530, 34.648308>,  <32.095509, 39.503761, 34.885189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130005, 39.486530, 34.648308>,  <32.187496, 39.457813, 34.253506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130005, 39.486530, 34.648308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522168, 0.852727, 0.014018,
		-0.840644, 0.517400, -0.160050,
		-0.143732, 0.071789, 0.987009,
		32.086884, 39.508068, 34.944412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903505, 40.098648, 34.437012>,  <32.187496, 39.457813, 34.253506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903505, 40.098648, 34.437012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105553, 39.977726, 34.760361>,  <32.226780, 39.905170, 34.954369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105553, 39.977726, 34.760361>,  <31.903505, 40.098648, 34.437012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105553, 39.977726, 34.760361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526802, 0.849912, -0.011335,
		-0.683619, 0.431578, 0.588563,
		0.505119, -0.302307, 0.808372,
		32.257088, 39.887035, 35.002872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987911, 40.697277, 34.822620>,  <31.903505, 40.098648, 34.437012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987911, 40.697277, 34.822620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271130, 40.449947, 34.959057>,  <32.441059, 40.301548, 35.040916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271130, 40.449947, 34.959057>,  <31.987911, 40.697277, 34.822620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271130, 40.449947, 34.959057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634020, 0.769321, 0.078505,
		-0.310948, 0.160671, 0.936748,
		0.708047, -0.618328, 0.341087,
		32.483543, 40.264450, 35.061382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215981, 40.998917, 35.455162>,  <31.987911, 40.697277, 34.822620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215981, 40.998917, 35.455162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499207, 40.760128, 35.304287>,  <32.669144, 40.616856, 35.213760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499207, 40.760128, 35.304287>,  <32.215981, 40.998917, 35.455162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499207, 40.760128, 35.304287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672246, 0.733371, 0.101257,
		0.216172, -0.325260, 0.920585,
		0.708065, -0.596970, -0.377188,
		32.711624, 40.581036, 35.191132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440372, 41.458061, 35.932163>,  <32.215981, 40.998917, 35.455162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440372, 41.458061, 35.932163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696632, 41.354923, 35.642864>,  <32.850388, 41.293041, 35.469284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696632, 41.354923, 35.642864>,  <32.440372, 41.458061, 35.932163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696632, 41.354923, 35.642864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532000, -0.530143, 0.660245,
		-0.553667, -0.807752, -0.202459,
		0.640647, -0.257848, -0.723247,
		32.888828, 41.277569, 35.425892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134327, 41.598667, 36.609215>,  <32.440372, 41.458061, 35.932163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134327, 41.598667, 36.609215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423016, 41.420227, 36.820915>,  <32.596230, 41.313164, 36.947937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423016, 41.420227, 36.820915>,  <32.134327, 41.598667, 36.609215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423016, 41.420227, 36.820915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458667, -0.264430, -0.848352,
		0.518399, 0.855028, 0.013765,
		0.721725, -0.446098, 0.529253,
		32.639534, 41.286396, 36.979691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801189, 41.915325, 36.386936>,  <32.134327, 41.598667, 36.609215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801189, 41.915325, 36.386936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842228, 41.542889, 36.526962>,  <32.866852, 41.319427, 36.610977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842228, 41.542889, 36.526962>,  <32.801189, 41.915325, 36.386936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842228, 41.542889, 36.526962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624007, -0.213820, -0.751595,
		0.774654, 0.295558, 0.559068,
		0.102600, -0.931089, 0.350067,
		32.873009, 41.263561, 36.631981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547993, 41.649696, 36.594330>,  <32.801189, 41.915325, 36.386936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547993, 41.649696, 36.594330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305447, 41.353004, 36.479675>,  <33.159920, 41.174988, 36.410881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305447, 41.353004, 36.479675>,  <33.547993, 41.649696, 36.594330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305447, 41.353004, 36.479675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636166, -0.236220, -0.734502,
		0.477095, -0.627721, 0.615099,
		-0.606361, -0.741732, -0.286635,
		33.123539, 41.130486, 36.393684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576515, 41.179867, 37.200142>,  <33.547993, 41.649696, 36.594330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576515, 41.179867, 37.200142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717735, 40.920300, 36.930546>,  <33.802467, 40.764557, 36.768787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717735, 40.920300, 36.930546>,  <33.576515, 41.179867, 37.200142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717735, 40.920300, 36.930546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565340, 0.426032, -0.706320,
		0.745486, 0.630396, -0.216452,
		0.353046, -0.648920, -0.673989,
		33.823650, 40.725624, 36.728348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087349, 40.681732, 37.531475>,  <33.576515, 41.179867, 37.200142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087349, 40.681732, 37.531475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206463, 40.706715, 37.912510>,  <33.277931, 40.721703, 38.141132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206463, 40.706715, 37.912510>,  <33.087349, 40.681732, 37.531475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206463, 40.706715, 37.912510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726529, -0.632471, 0.268582,
		0.619259, -0.772062, -0.142961,
		0.297781, 0.062457, 0.952589,
		33.295795, 40.725452, 38.198288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361294, 40.035828, 37.814735>,  <33.087349, 40.681732, 37.531475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361294, 40.035828, 37.814735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186989, 40.252327, 38.102394>,  <33.082405, 40.382225, 38.274990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186989, 40.252327, 38.102394>,  <33.361294, 40.035828, 37.814735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186989, 40.252327, 38.102394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569809, -0.784382, 0.245076,
		0.696729, -0.302980, 0.650209,
		-0.435760, 0.541246, 0.719142,
		33.056259, 40.414700, 38.318138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413269, 39.709072, 38.583290>,  <33.361294, 40.035828, 37.814735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413269, 39.709072, 38.583290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079895, 39.922222, 38.524738>,  <32.879871, 40.050114, 38.489609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079895, 39.922222, 38.524738>,  <33.413269, 39.709072, 38.583290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079895, 39.922222, 38.524738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550145, -0.775028, 0.310920,
		0.052234, 0.339662, 0.939096,
		-0.833434, 0.532879, -0.146380,
		32.829865, 40.082085, 38.480824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986485, 39.701118, 39.149197>,  <33.413269, 39.709072, 38.583290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986485, 39.701118, 39.149197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757416, 39.785072, 38.832211>,  <32.619976, 39.835445, 38.642017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757416, 39.785072, 38.832211>,  <32.986485, 39.701118, 39.149197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757416, 39.785072, 38.832211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666762, -0.681651, 0.301298,
		-0.476947, 0.700929, 0.530301,
		-0.572669, 0.209882, -0.792464,
		32.585617, 39.848038, 38.594471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365845, 39.873230, 39.321762>,  <32.986485, 39.701118, 39.149197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365845, 39.873230, 39.321762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287487, 39.763351, 38.945217>,  <32.240475, 39.697426, 38.719288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287487, 39.763351, 38.945217>,  <32.365845, 39.873230, 39.321762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287487, 39.763351, 38.945217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762698, -0.560710, 0.322328,
		-0.616375, 0.781120, -0.099668,
		-0.195892, -0.274692, -0.941366,
		32.228718, 39.680943, 38.662807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642263, 39.925957, 39.291683>,  <32.365845, 39.873230, 39.321762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642263, 39.925957, 39.291683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751436, 39.713272, 38.970989>,  <31.816940, 39.585659, 38.778572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751436, 39.713272, 38.970989>,  <31.642263, 39.925957, 39.291683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751436, 39.713272, 38.970989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780251, -0.609862, 0.138844,
		-0.562775, 0.587662, -0.581324,
		0.272934, -0.531716, -0.801739,
		31.833317, 39.553757, 38.730469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007776, 39.935085, 38.848473>,  <31.642263, 39.925957, 39.291683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007776, 39.935085, 38.848473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262339, 39.633476, 38.783436>,  <31.415075, 39.452511, 38.744415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262339, 39.633476, 38.783436>,  <31.007776, 39.935085, 38.848473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262339, 39.633476, 38.783436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769473, -0.635307, -0.065546,
		-0.053870, 0.166821, -0.984515,
		0.636404, -0.754026, -0.162588,
		31.453260, 39.407269, 38.734661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658777, 39.570900, 38.378487>,  <31.007776, 39.935085, 38.848473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658777, 39.570900, 38.378487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929670, 39.318596, 38.530014>,  <31.092205, 39.167213, 38.620930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929670, 39.318596, 38.530014>,  <30.658777, 39.570900, 38.378487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929670, 39.318596, 38.530014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616564, -0.767466, -0.175625,
		0.401506, -0.114626, -0.908655,
		0.677231, -0.630759, 0.378816,
		31.132839, 39.129368, 38.643658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604393, 38.969757, 37.966347>,  <30.658777, 39.570900, 38.378487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604393, 38.969757, 37.966347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777584, 38.841316, 38.303257>,  <30.881498, 38.764252, 38.505402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777584, 38.841316, 38.303257>,  <30.604393, 38.969757, 37.966347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777584, 38.841316, 38.303257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498955, -0.863571, -0.072729,
		0.750715, -0.388765, -0.534124,
		0.432979, -0.321103, 0.842272,
		30.907478, 38.744984, 38.555939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819599, 38.319260, 37.921806>,  <30.604393, 38.969757, 37.966347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819599, 38.319260, 37.921806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827120, 38.330212, 38.321587>,  <30.831633, 38.336784, 38.561455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827120, 38.330212, 38.321587>,  <30.819599, 38.319260, 37.921806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827120, 38.330212, 38.321587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443822, -0.895511, 0.032883,
		0.895918, -0.444196, -0.004681,
		0.018799, 0.027383, 0.999448,
		30.832760, 38.338425, 38.621422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115189, 37.719532, 38.156807>,  <30.819599, 38.319260, 37.921806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115189, 37.719532, 38.156807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912537, 37.855305, 38.473820>,  <30.790945, 37.936768, 38.664028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912537, 37.855305, 38.473820>,  <31.115189, 37.719532, 38.156807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912537, 37.855305, 38.473820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476383, -0.876381, 0.070813,
		0.718600, -0.341675, 0.605700,
		-0.506629, 0.339432, 0.792535,
		30.760548, 37.957134, 38.711582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107767, 37.152645, 38.542950>,  <31.115189, 37.719532, 38.156807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107767, 37.152645, 38.542950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833420, 37.396935, 38.701241>,  <30.668812, 37.543507, 38.796215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833420, 37.396935, 38.701241>,  <31.107767, 37.152645, 38.542950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833420, 37.396935, 38.701241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639970, -0.765063, 0.071531,
		0.346444, -0.204194, 0.915577,
		-0.685868, 0.610723, 0.395730,
		30.627659, 37.580151, 38.819958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937737, 36.906315, 39.224964>,  <31.107767, 37.152645, 38.542950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937737, 36.906315, 39.224964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618168, 37.107983, 39.093796>,  <30.426426, 37.228985, 39.015095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618168, 37.107983, 39.093796>,  <30.937737, 36.906315, 39.224964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618168, 37.107983, 39.093796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587757, -0.770105, 0.247952,
		-0.127525, 0.390833, 0.911585,
		-0.798924, 0.504171, -0.327922,
		30.378490, 37.259235, 38.995419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457087, 36.752567, 39.799133>,  <30.937737, 36.906315, 39.224964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457087, 36.752567, 39.799133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.232916, 36.888813, 39.497166>,  <30.098413, 36.970558, 39.315983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.232916, 36.888813, 39.497166>,  <30.457087, 36.752567, 39.799133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232916, 36.888813, 39.497166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718218, -0.653775, 0.238204,
		-0.412415, 0.675695, 0.611024,
		-0.560425, 0.340610, -0.754922,
		30.064789, 36.990997, 39.270687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809683, 36.534733, 40.040394>,  <30.457087, 36.752567, 39.799133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809683, 36.534733, 40.040394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710773, 36.650806, 39.670605>,  <29.651428, 36.720451, 39.448730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710773, 36.650806, 39.670605>,  <29.809683, 36.534733, 40.040394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710773, 36.650806, 39.670605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638474, -0.766471, -0.069814,
		-0.728840, 0.572988, 0.374802,
		-0.247272, 0.290185, -0.924473,
		29.636593, 36.737862, 39.393265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025568, 36.749210, 39.994923>,  <29.809683, 36.534733, 40.040394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025568, 36.749210, 39.994923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171621, 36.607418, 39.650593>,  <29.259254, 36.522343, 39.443996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171621, 36.607418, 39.650593>,  <29.025568, 36.749210, 39.994923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171621, 36.607418, 39.650593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755268, -0.653407, -0.051293,
		-0.544287, 0.668882, -0.506309,
		0.365134, -0.354481, -0.860825,
		29.281162, 36.501076, 39.392345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480339, 36.656277, 39.566055>,  <29.025568, 36.749210, 39.994923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480339, 36.656277, 39.566055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757622, 36.432350, 39.384476>,  <28.923992, 36.297997, 39.275528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757622, 36.432350, 39.384476>,  <28.480339, 36.656277, 39.566055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757622, 36.432350, 39.384476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668644, -0.734617, -0.115125,
		-0.269029, 0.383335, -0.883560,
		0.693209, -0.559815, -0.453948,
		28.965584, 36.264404, 39.248291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089333, 36.354122, 38.979126>,  <28.480339, 36.656277, 39.566055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089333, 36.354122, 38.979126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407923, 36.114605, 39.012753>,  <28.599077, 35.970894, 39.032928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407923, 36.114605, 39.012753>,  <28.089333, 36.354122, 38.979126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407923, 36.114605, 39.012753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535874, -0.763411, -0.360615,
		0.280112, 0.242173, -0.928918,
		0.796477, -0.598796, 0.084066,
		28.646866, 35.934967, 39.037971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114780, 36.057892, 38.328846>,  <28.089333, 36.354122, 38.979126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114780, 36.057892, 38.328846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315992, 35.831257, 38.589901>,  <28.436720, 35.695274, 38.746536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315992, 35.831257, 38.589901>,  <28.114780, 36.057892, 38.328846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315992, 35.831257, 38.589901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317286, -0.823471, -0.470345,
		0.803922, 0.029524, -0.594001,
		0.503029, -0.566589, 0.652639,
		28.466902, 35.661282, 38.785694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349146, 35.559967, 37.936150>,  <28.114780, 36.057892, 38.328846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349146, 35.559967, 37.936150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377068, 35.387276, 38.295868>,  <28.393820, 35.283661, 38.511700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377068, 35.387276, 38.295868>,  <28.349146, 35.559967, 37.936150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377068, 35.387276, 38.295868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391639, -0.840977, -0.373332,
		0.917467, -0.326140, -0.227785,
		0.069803, -0.431730, 0.899298,
		28.398008, 35.257755, 38.565659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776854, 34.888767, 37.895416>,  <28.349146, 35.559967, 37.936150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776854, 34.888767, 37.895416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555937, 34.828430, 38.223373>,  <28.423388, 34.792229, 38.420147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555937, 34.828430, 38.223373>,  <28.776854, 34.888767, 37.895416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555937, 34.828430, 38.223373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414867, -0.803328, -0.427259,
		0.723092, -0.576116, 0.381089,
		-0.552290, -0.150846, 0.819891,
		28.390249, 34.783176, 38.469341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031996, 34.244205, 38.237907>,  <28.776854, 34.888767, 37.895416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031996, 34.244205, 38.237907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665545, 34.282726, 38.393566>,  <28.445675, 34.305840, 38.486961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665545, 34.282726, 38.393566>,  <29.031996, 34.244205, 38.237907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665545, 34.282726, 38.393566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214398, -0.937930, -0.272620,
		0.338742, -0.333187, 0.879909,
		-0.916126, 0.096303, 0.389151,
		28.390707, 34.311619, 38.510311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828363, 33.716045, 38.679882>,  <29.031996, 34.244205, 38.237907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828363, 33.716045, 38.679882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460104, 33.851685, 38.602505>,  <28.239149, 33.933067, 38.556080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460104, 33.851685, 38.602505>,  <28.828363, 33.716045, 38.679882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460104, 33.851685, 38.602505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327916, -0.940585, -0.088151,
		-0.211843, -0.017723, 0.977143,
		-0.920649, 0.339095, -0.193445,
		28.183908, 33.953411, 38.544472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356894, 33.357906, 39.151814>,  <28.828363, 33.716045, 38.679882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356894, 33.357906, 39.151814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125999, 33.472752, 38.846039>,  <27.987463, 33.541660, 38.662575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125999, 33.472752, 38.846039>,  <28.356894, 33.357906, 39.151814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125999, 33.472752, 38.846039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337666, -0.936287, -0.096682,
		-0.743492, 0.202317, 0.637407,
		-0.577236, 0.287113, -0.764438,
		27.952829, 33.558884, 38.616707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674513, 33.052811, 39.722912>,  <28.356894, 33.357906, 39.151814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674513, 33.052811, 39.722912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315569, 32.883297, 39.772152>,  <28.100203, 32.781590, 39.801697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315569, 32.883297, 39.772152>,  <28.674513, 33.052811, 39.722912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315569, 32.883297, 39.772152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416613, -0.905523, -0.080383,
		0.145538, -0.020845, 0.989133,
		-0.897358, -0.423785, 0.123104,
		28.046362, 32.756161, 39.809082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118040, 33.656261, 39.806557>,  <28.674513, 33.052811, 39.722912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118040, 33.656261, 39.806557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907360, 33.915531, 40.026539>,  <28.780952, 34.071095, 40.158527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907360, 33.915531, 40.026539>,  <29.118040, 33.656261, 39.806557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907360, 33.915531, 40.026539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426094, -0.358509, 0.830611,
		0.735548, 0.671817, -0.087357,
		-0.526700, 0.648177, 0.549958,
		28.749350, 34.109985, 40.191525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735319, 33.735371, 40.252407>,  <29.118040, 33.656261, 39.806557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735319, 33.735371, 40.252407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729538, 33.389191, 40.452721>,  <29.726070, 33.181480, 40.572910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729538, 33.389191, 40.452721>,  <29.735319, 33.735371, 40.252407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729538, 33.389191, 40.452721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625730, 0.382817, 0.679641,
		-0.779906, 0.323177, 0.536008,
		-0.014451, -0.865452, 0.500783,
		29.725203, 33.129555, 40.602955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948980, 34.282799, 39.797146>,  <29.735319, 33.735371, 40.252407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948980, 34.282799, 39.797146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792456, 34.475906, 40.110531>,  <29.698542, 34.591770, 40.298561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792456, 34.475906, 40.110531>,  <29.948980, 34.282799, 39.797146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792456, 34.475906, 40.110531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638708, -0.755383, 0.146453,
		0.662516, -0.443095, 0.603936,
		-0.391310, 0.482766, 0.783462,
		29.675062, 34.620735, 40.345570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608540, 34.537140, 39.407173>,  <29.948980, 34.282799, 39.797146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608540, 34.537140, 39.407173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999392, 34.510792, 39.326302>,  <31.233904, 34.494984, 39.277779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999392, 34.510792, 39.326302>,  <30.608540, 34.537140, 39.407173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999392, 34.510792, 39.326302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023306, 0.911899, -0.409752,
		0.211357, 0.405093, 0.889510,
		0.977131, -0.065873, -0.202177,
		31.292530, 34.491032, 39.265648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008648, 35.179199, 39.671627>,  <30.608540, 34.537140, 39.407173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008648, 35.179199, 39.671627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206020, 35.046299, 39.350098>,  <31.324444, 34.966557, 39.157181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206020, 35.046299, 39.350098>,  <31.008648, 35.179199, 39.671627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206020, 35.046299, 39.350098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133309, 0.942135, -0.307589,
		0.859508, 0.044617, 0.509171,
		0.493432, -0.332252, -0.803824,
		31.354050, 34.946625, 39.108952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677864, 35.517204, 39.609413>,  <31.008648, 35.179199, 39.671627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677864, 35.517204, 39.609413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563841, 35.432270, 39.235535>,  <31.495428, 35.381310, 39.011208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563841, 35.432270, 39.235535>,  <31.677864, 35.517204, 39.609413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563841, 35.432270, 39.235535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296044, 0.907974, -0.296549,
		0.911646, -0.361245, -0.195969,
		-0.285062, -0.212333, -0.934695,
		31.478323, 35.368568, 38.955128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240608, 35.410919, 39.006981>,  <31.677864, 35.517204, 39.609413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240608, 35.410919, 39.006981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899960, 35.591728, 38.900841>,  <31.695570, 35.700214, 38.837158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899960, 35.591728, 38.900841>,  <32.240608, 35.410919, 39.006981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899960, 35.591728, 38.900841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524138, 0.730827, -0.437232,
		-0.003716, -0.511436, -0.859314,
		-0.851626, 0.452023, -0.265347,
		31.644472, 35.727337, 38.821236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937862, 35.372677, 39.498665>,  <32.240608, 35.410919, 39.006981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937862, 35.372677, 39.498665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229286, 35.102074, 39.455688>,  <33.404140, 34.939713, 39.429901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229286, 35.102074, 39.455688>,  <32.937862, 35.372677, 39.498665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229286, 35.102074, 39.455688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490980, 0.406379, 0.770581,
		-0.477640, -0.614165, 0.628221,
		0.728559, -0.676505, -0.107440,
		33.447853, 34.899124, 39.423458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188824, 35.266216, 40.132397>,  <32.937862, 35.372677, 39.498665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188824, 35.266216, 40.132397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472858, 35.085575, 39.916313>,  <33.643280, 34.977192, 39.786663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472858, 35.085575, 39.916313>,  <33.188824, 35.266216, 40.132397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472858, 35.085575, 39.916313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665887, 0.181357, 0.723674,
		-0.228841, -0.873593, 0.429495,
		0.710089, -0.451602, -0.540213,
		33.685886, 34.950096, 39.754250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388435, 34.692394, 40.515869>,  <33.188824, 35.266216, 40.132397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388435, 34.692394, 40.515869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666027, 34.850090, 40.274883>,  <33.832584, 34.944710, 40.130291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666027, 34.850090, 40.274883>,  <33.388435, 34.692394, 40.515869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666027, 34.850090, 40.274883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624278, 0.087395, 0.776298,
		0.358702, -0.914842, -0.185466,
		0.693981, 0.394242, -0.602464,
		33.874222, 34.968361, 40.094143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175247, 34.290180, 40.576408>,  <33.388435, 34.692394, 40.515869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175247, 34.290180, 40.576408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245178, 34.653255, 40.423817>,  <34.287136, 34.871101, 40.332260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245178, 34.653255, 40.423817>,  <34.175247, 34.290180, 40.576408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245178, 34.653255, 40.423817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840997, 0.063815, 0.537263,
		0.512014, -0.414756, -0.752210,
		0.174831, 0.907692, -0.381482,
		34.297626, 34.925564, 40.309372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918400, 34.357105, 40.565357>,  <34.175247, 34.290180, 40.576408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918400, 34.357105, 40.565357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793240, 34.733406, 40.513088>,  <34.718143, 34.959187, 40.481728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793240, 34.733406, 40.513088>,  <34.918400, 34.357105, 40.565357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793240, 34.733406, 40.513088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745748, 0.328546, 0.579585,
		0.588178, 0.083906, -0.804367,
		-0.312902, 0.940754, -0.130671,
		34.699368, 35.015633, 40.473888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519669, 34.729542, 40.483059>,  <34.918400, 34.357105, 40.565357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519669, 34.729542, 40.483059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252655, 35.003983, 40.598751>,  <35.092445, 35.168648, 40.668167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252655, 35.003983, 40.598751>,  <35.519669, 34.729542, 40.483059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252655, 35.003983, 40.598751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604325, 0.272330, 0.748751,
		0.434957, 0.674607, -0.596421,
		-0.667536, 0.686106, 0.289230,
		35.052395, 35.209816, 40.685520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919952, 35.197483, 40.765110>,  <35.519669, 34.729542, 40.483059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919952, 35.197483, 40.765110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557266, 35.281998, 40.911114>,  <35.339657, 35.332706, 40.998714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557266, 35.281998, 40.911114>,  <35.919952, 35.197483, 40.765110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557266, 35.281998, 40.911114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412540, 0.264448, 0.871710,
		0.087655, 0.940971, -0.326942,
		-0.906713, 0.211286, 0.365008,
		35.285252, 35.345383, 41.020615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907146, 35.845303, 41.260963>,  <35.919952, 35.197483, 40.765110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907146, 35.845303, 41.260963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579372, 35.636768, 41.356236>,  <35.382706, 35.511646, 41.413399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579372, 35.636768, 41.356236>,  <35.907146, 35.845303, 41.260963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579372, 35.636768, 41.356236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223217, 0.092478, 0.970372,
		-0.527916, 0.848326, 0.040592,
		-0.819438, -0.521335, 0.238181,
		35.333542, 35.480370, 41.427689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558071, 36.207985, 41.754620>,  <35.907146, 35.845303, 41.260963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558071, 36.207985, 41.754620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377220, 35.853531, 41.795303>,  <35.268711, 35.640858, 41.819714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377220, 35.853531, 41.795303>,  <35.558071, 36.207985, 41.754620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377220, 35.853531, 41.795303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179305, 0.021404, 0.983561,
		-0.873746, 0.462929, 0.149212,
		-0.452125, -0.886137, 0.101707,
		35.241581, 35.587688, 41.825817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161915, 36.259224, 42.400551>,  <35.558071, 36.207985, 41.754620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161915, 36.259224, 42.400551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217396, 35.870903, 42.322254>,  <35.250683, 35.637913, 42.275276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217396, 35.870903, 42.322254>,  <35.161915, 36.259224, 42.400551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217396, 35.870903, 42.322254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170652, -0.171263, 0.970333,
		-0.975520, -0.167989, 0.141914,
		0.138701, -0.970798, -0.195738,
		35.259007, 35.579662, 42.263531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712986, 35.833714, 42.834717>,  <35.161915, 36.259224, 42.400551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712986, 35.833714, 42.834717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021275, 35.596264, 42.742119>,  <35.206249, 35.453793, 42.686562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021275, 35.596264, 42.742119>,  <34.712986, 35.833714, 42.834717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021275, 35.596264, 42.742119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161304, -0.169694, 0.972206,
		-0.616411, -0.786645, -0.035033,
		0.770725, -0.593628, -0.231491,
		35.252491, 35.418175, 42.672672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743420, 35.332520, 43.434071>,  <34.712986, 35.833714, 42.834717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743420, 35.332520, 43.434071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091747, 35.289234, 43.242256>,  <35.300743, 35.263264, 43.127167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091747, 35.289234, 43.242256>,  <34.743420, 35.332520, 43.434071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091747, 35.289234, 43.242256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421490, -0.337699, 0.841609,
		-0.253011, -0.935013, -0.248466,
		0.870822, -0.108210, -0.479540,
		35.352993, 35.256771, 43.098392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923367, 34.563316, 43.502022>,  <34.743420, 35.332520, 43.434071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923367, 34.563316, 43.502022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254917, 34.778519, 43.440697>,  <35.453850, 34.907642, 43.403904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254917, 34.778519, 43.440697>,  <34.923367, 34.563316, 43.502022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254917, 34.778519, 43.440697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481515, -0.546617, 0.685094,
		0.284785, -0.641682, -0.712139,
		0.828879, 0.538010, -0.153311,
		35.503582, 34.939922, 43.394703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390617, 34.033543, 43.439556>,  <34.923367, 34.563316, 43.502022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390617, 34.033543, 43.439556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571682, 34.380482, 43.522312>,  <35.680321, 34.588646, 43.571968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571682, 34.380482, 43.522312>,  <35.390617, 34.033543, 43.439556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571682, 34.380482, 43.522312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517811, -0.444589, 0.730898,
		0.725925, -0.223719, -0.650371,
		0.452663, 0.867347, 0.206895,
		35.707481, 34.640686, 43.584381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115894, 33.793011, 43.566368>,  <35.390617, 34.033543, 43.439556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115894, 33.793011, 43.566368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051121, 34.163883, 43.701488>,  <36.012257, 34.386406, 43.782562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051121, 34.163883, 43.701488>,  <36.115894, 33.793011, 43.566368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051121, 34.163883, 43.701488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426608, -0.242900, 0.871209,
		0.889822, 0.285184, -0.356211,
		-0.161931, 0.927184, 0.337800,
		36.002541, 34.442039, 43.802830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728680, 33.955341, 43.981739>,  <36.115894, 33.793011, 43.566368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728680, 33.955341, 43.981739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475666, 34.234676, 44.115734>,  <36.323856, 34.402279, 44.196133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475666, 34.234676, 44.115734>,  <36.728680, 33.955341, 43.981739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475666, 34.234676, 44.115734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432966, -0.039810, 0.900531,
		0.642212, 0.714659, -0.277176,
		-0.632538, 0.698339, 0.334989,
		36.285904, 34.444180, 44.216232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119476, 34.367588, 44.416164>,  <36.728680, 33.955341, 43.981739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119476, 34.367588, 44.416164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751541, 34.474632, 44.530907>,  <36.530781, 34.538860, 44.599754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751541, 34.474632, 44.530907>,  <37.119476, 34.367588, 44.416164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751541, 34.474632, 44.530907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318022, 0.080500, 0.944660,
		0.229710, 0.960158, -0.159153,
		-0.919834, 0.267612, 0.286860,
		36.475590, 34.554916, 44.616966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214958, 34.946423, 44.852222>,  <37.119476, 34.367588, 44.416164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214958, 34.946423, 44.852222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853230, 34.810146, 44.955090>,  <36.636192, 34.728382, 45.016808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853230, 34.810146, 44.955090>,  <37.214958, 34.946423, 44.852222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853230, 34.810146, 44.955090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250992, 0.062903, 0.965943,
		-0.345261, 0.938070, 0.028625,
		-0.904322, -0.340687, 0.257166,
		36.581932, 34.707939, 45.032238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874500, 35.451412, 45.352165>,  <37.214958, 34.946423, 44.852222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874500, 35.451412, 45.352165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670414, 35.112007, 45.408306>,  <36.547962, 34.908363, 45.441990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670414, 35.112007, 45.408306>,  <36.874500, 35.451412, 45.352165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670414, 35.112007, 45.408306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136294, 0.081355, 0.987322,
		-0.849177, 0.522878, 0.074139,
		-0.510218, -0.848516, 0.140350,
		36.517349, 34.857452, 45.450413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341732, 35.572525, 45.859550>,  <36.874500, 35.451412, 45.352165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341732, 35.572525, 45.859550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400173, 35.176830, 45.856594>,  <36.435238, 34.939411, 45.854820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400173, 35.176830, 45.856594>,  <36.341732, 35.572525, 45.859550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400173, 35.176830, 45.856594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109967, -0.023669, 0.993653,
		-0.983138, -0.144363, -0.112242,
		0.146104, -0.989242, -0.007395,
		36.444004, 34.880058, 45.854374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034702, 35.254124, 46.500923>,  <36.341732, 35.572525, 45.859550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034702, 35.254124, 46.500923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259743, 34.943527, 46.387402>,  <36.394768, 34.757172, 46.319286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259743, 34.943527, 46.387402>,  <36.034702, 35.254124, 46.500923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259743, 34.943527, 46.387402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039001, -0.317979, 0.947295,
		-0.825808, -0.544018, -0.148611,
		0.562600, -0.776488, -0.283807,
		36.428524, 34.710579, 46.302261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754723, 34.761639, 46.896049>,  <36.034702, 35.254124, 46.500923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754723, 34.761639, 46.896049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114075, 34.623005, 46.788128>,  <36.329685, 34.539825, 46.723377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114075, 34.623005, 46.788128>,  <35.754723, 34.761639, 46.896049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114075, 34.623005, 46.788128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157472, -0.319280, 0.934485,
		-0.410016, -0.882010, -0.232258,
		0.898382, -0.346580, -0.269802,
		36.383591, 34.519032, 46.707188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790794, 34.106617, 47.153076>,  <35.754723, 34.761639, 46.896049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790794, 34.106617, 47.153076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169262, 34.232960, 47.124813>,  <36.396343, 34.308765, 47.107857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169262, 34.232960, 47.124813>,  <35.790794, 34.106617, 47.153076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169262, 34.232960, 47.124813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148506, -0.229691, 0.961867,
		0.287580, -0.920586, -0.264233,
		0.946173, 0.315854, -0.070658,
		36.453114, 34.327717, 47.103615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207031, 33.654945, 47.560120>,  <35.790794, 34.106617, 47.153076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207031, 33.654945, 47.560120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457069, 33.965481, 47.527748>,  <36.607094, 34.151802, 47.508324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457069, 33.965481, 47.527748>,  <36.207031, 33.654945, 47.560120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457069, 33.965481, 47.527748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243577, -0.095508, 0.965168,
		0.741571, -0.623034, -0.248800,
		0.625095, 0.776342, -0.080931,
		36.644596, 34.198383, 47.503468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783207, 33.448051, 48.042782>,  <36.207031, 33.654945, 47.560120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783207, 33.448051, 48.042782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789295, 33.843971, 47.986111>,  <36.792950, 34.081524, 47.952106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789295, 33.843971, 47.986111>,  <36.783207, 33.448051, 48.042782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789295, 33.843971, 47.986111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105238, 0.139322, 0.984639,
		0.994331, -0.029897, -0.102043,
		0.015221, 0.989796, -0.141679,
		36.793861, 34.140911, 47.943607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383614, 33.747402, 48.337765>,  <36.783207, 33.448051, 48.042782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383614, 33.747402, 48.337765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118458, 34.046810, 48.344494>,  <36.959362, 34.226456, 48.348534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118458, 34.046810, 48.344494>,  <37.383614, 33.747402, 48.337765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118458, 34.046810, 48.344494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251139, 0.201127, 0.946825,
		0.705338, 0.631870, -0.321309,
		-0.662894, 0.748524, 0.016825,
		36.919590, 34.271366, 48.349541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703476, 34.262142, 48.771084>,  <37.383614, 33.747402, 48.337765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703476, 34.262142, 48.771084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329159, 34.401291, 48.748180>,  <37.104568, 34.484779, 48.734440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329159, 34.401291, 48.748180>,  <37.703476, 34.262142, 48.771084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329159, 34.401291, 48.748180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021522, 0.218468, 0.975607,
		0.351893, 0.911734, -0.211928,
		-0.935793, 0.347871, -0.057255,
		37.048420, 34.505653, 48.731003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737171, 34.867809, 49.065125>,  <37.703476, 34.262142, 48.771084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737171, 34.867809, 49.065125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364613, 34.723911, 49.087318>,  <37.141075, 34.637573, 49.100636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364613, 34.723911, 49.087318>,  <37.737171, 34.867809, 49.065125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364613, 34.723911, 49.087318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029353, 0.226151, 0.973650,
		-0.362817, 0.905227, -0.221197,
		-0.931398, -0.359749, 0.055480,
		37.085194, 34.615986, 49.103962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353867, 35.367088, 49.486729>,  <37.737171, 34.867809, 49.065125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353867, 35.367088, 49.486729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131088, 35.035004, 49.477165>,  <36.997421, 34.835754, 49.471428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131088, 35.035004, 49.477165>,  <37.353867, 35.367088, 49.486729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131088, 35.035004, 49.477165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136212, 0.062909, 0.988680,
		-0.819305, 0.553894, -0.148121,
		-0.556943, -0.830207, -0.023905,
		36.964005, 34.785942, 49.469994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640709, 35.615601, 49.786217>,  <37.353867, 35.367088, 49.486729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640709, 35.615601, 49.786217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724152, 35.224915, 49.806274>,  <36.774216, 34.990501, 49.818310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724152, 35.224915, 49.806274>,  <36.640709, 35.615601, 49.786217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724152, 35.224915, 49.806274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096189, 0.071514, 0.992791,
		-0.973259, -0.202277, 0.108867,
		0.208604, -0.976714, 0.050145,
		36.786732, 34.931900, 49.821320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097424, 35.358795, 50.211636>,  <36.640709, 35.615601, 49.786217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097424, 35.358795, 50.211636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387463, 35.083336, 50.211498>,  <36.561485, 34.918060, 50.211414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387463, 35.083336, 50.211498>,  <36.097424, 35.358795, 50.211636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387463, 35.083336, 50.211498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007323, -0.008211, 0.999940,
		-0.688610, -0.725049, -0.010996,
		0.725095, -0.688649, -0.000345,
		36.604992, 34.876740, 50.211395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872799, 34.793205, 50.759441>,  <36.097424, 35.358795, 50.211636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872799, 34.793205, 50.759441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265217, 34.777905, 50.683449>,  <36.500668, 34.768723, 50.637852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265217, 34.777905, 50.683449>,  <35.872799, 34.793205, 50.759441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265217, 34.777905, 50.683449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184557, -0.114614, 0.976116,
		-0.059113, -0.992673, -0.105382,
		0.981043, -0.038252, -0.189980,
		36.559528, 34.766426, 50.626453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128647, 34.250877, 51.147579>,  <35.872799, 34.793205, 50.759441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128647, 34.250877, 51.147579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475143, 34.437313, 51.075600>,  <36.683041, 34.549175, 51.032413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475143, 34.437313, 51.075600>,  <36.128647, 34.250877, 51.147579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475143, 34.437313, 51.075600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268836, -0.131250, 0.954202,
		0.421126, -0.874948, -0.238996,
		0.866245, 0.466090, -0.179945,
		36.735016, 34.577141, 51.021618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632320, 33.852169, 51.390160>,  <36.128647, 34.250877, 51.147579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632320, 33.852169, 51.390160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835648, 34.195488, 51.362022>,  <36.957642, 34.401478, 51.345142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835648, 34.195488, 51.362022>,  <36.632320, 33.852169, 51.390160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835648, 34.195488, 51.362022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475416, -0.211575, 0.853941,
		0.718050, -0.467511, -0.515594,
		0.508314, 0.858294, -0.070341,
		36.988140, 34.452976, 51.340919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419018, 33.767200, 51.468258>,  <36.632320, 33.852169, 51.390160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419018, 33.767200, 51.468258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336525, 34.145702, 51.567921>,  <37.287029, 34.372803, 51.627716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336525, 34.145702, 51.567921>,  <37.419018, 33.767200, 51.468258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336525, 34.145702, 51.567921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461960, -0.130309, 0.877275,
		0.862589, 0.296022, -0.410256,
		-0.206233, 0.946251, 0.249154,
		37.274654, 34.429577, 51.642666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877762, 33.770462, 51.937599>,  <37.419018, 33.767200, 51.468258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877762, 33.770462, 51.937599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660511, 34.100399, 52.000393>,  <37.530159, 34.298363, 52.038071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660511, 34.100399, 52.000393>,  <37.877762, 33.770462, 51.937599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660511, 34.100399, 52.000393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270395, -0.005184, 0.962735,
		0.794919, 0.565339, -0.220218,
		-0.543130, 0.824842, 0.156986,
		37.497570, 34.347851, 52.047489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284641, 34.191963, 52.250141>,  <37.877762, 33.770462, 51.937599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284641, 34.191963, 52.250141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925495, 34.329437, 52.360214>,  <37.710007, 34.411922, 52.426258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925495, 34.329437, 52.360214>,  <38.284641, 34.191963, 52.250141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925495, 34.329437, 52.360214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299294, 0.018038, 0.953990,
		0.322906, 0.938913, -0.119058,
		-0.897861, 0.343682, 0.275187,
		37.656136, 34.432541, 52.442772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466904, 34.552090, 52.905445>,  <38.284641, 34.191963, 52.250141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466904, 34.552090, 52.905445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067368, 34.532951, 52.903069>,  <37.827648, 34.521469, 52.901642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067368, 34.532951, 52.903069>,  <38.466904, 34.552090, 52.905445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067368, 34.532951, 52.903069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000201, -0.119152, 0.992876,
		-0.048209, 0.991723, 0.119004,
		-0.998837, -0.047842, -0.005943,
		37.767715, 34.518600, 52.901287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247917, 35.042297, 53.435169>,  <38.466904, 34.552090, 52.905445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247917, 35.042297, 53.435169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956150, 34.771572, 53.395428>,  <37.781090, 34.609135, 53.371582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956150, 34.771572, 53.395428>,  <38.247917, 35.042297, 53.435169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956150, 34.771572, 53.395428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142179, 0.007923, 0.989809,
		-0.669132, 0.736109, -0.102008,
		-0.729416, -0.676816, -0.099358,
		37.737324, 34.568527, 53.365620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908894, 35.174419, 54.027229>,  <38.247917, 35.042297, 53.435169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908894, 35.174419, 54.027229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742676, 34.827068, 53.918976>,  <37.642944, 34.618656, 53.854023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742676, 34.827068, 53.918976>,  <37.908894, 35.174419, 54.027229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742676, 34.827068, 53.918976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290308, -0.155355, 0.944238,
		-0.862000, 0.470940, -0.187540,
		-0.415544, -0.868378, -0.270634,
		37.618011, 34.566555, 53.837784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332893, 35.164841, 54.466225>,  <37.908894, 35.174419, 54.027229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332893, 35.164841, 54.466225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389557, 34.790398, 54.337456>,  <37.423553, 34.565731, 54.260193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389557, 34.790398, 54.337456>,  <37.332893, 35.164841, 54.466225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389557, 34.790398, 54.337456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275502, -0.349639, 0.895461,
		-0.950805, -0.038160, -0.307429,
		0.141660, -0.936107, -0.321926,
		37.432056, 34.509567, 54.240879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755863, 34.684288, 54.593964>,  <37.332893, 35.164841, 54.466225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755863, 34.684288, 54.593964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100311, 34.481953, 54.573601>,  <37.306980, 34.360550, 54.561382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100311, 34.481953, 54.573601>,  <36.755863, 34.684288, 54.593964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100311, 34.481953, 54.573601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234187, -0.483546, 0.843410,
		-0.451238, -0.714363, -0.534855,
		0.861127, -0.505835, -0.050900,
		37.358650, 34.330200, 54.558331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551418, 34.043842, 54.883602>,  <36.755863, 34.684288, 54.593964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551418, 34.043842, 54.883602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949387, 34.044434, 54.923862>,  <37.188168, 34.044788, 54.948021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949387, 34.044434, 54.923862>,  <36.551418, 34.043842, 54.883602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949387, 34.044434, 54.923862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090120, -0.432466, 0.897135,
		0.044852, -0.901649, -0.430136,
		0.994920, 0.001474, 0.100654,
		37.247864, 34.044876, 54.954060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759880, 33.379959, 54.939011>,  <36.551418, 34.043842, 54.883602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759880, 33.379959, 54.939011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007355, 33.629227, 55.130375>,  <37.155842, 33.778790, 55.245193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007355, 33.629227, 55.130375>,  <36.759880, 33.379959, 54.939011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007355, 33.629227, 55.130375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146354, -0.506868, 0.849509,
		0.771883, -0.595600, -0.222390,
		0.618690, 0.623174, 0.478411,
		37.192963, 33.816177, 55.273899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366268, 33.117188, 55.233067>,  <36.759880, 33.379959, 54.939011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366268, 33.117188, 55.233067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210522, 33.401531, 55.467354>,  <37.117073, 33.572136, 55.607925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210522, 33.401531, 55.467354>,  <37.366268, 33.117188, 55.233067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210522, 33.401531, 55.467354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430209, -0.702637, 0.566764,
		0.814439, -0.031301, 0.579404,
		-0.389370, 0.710860, 0.585721,
		37.093712, 33.614788, 55.643070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510429, 33.025249, 55.999878>,  <37.366268, 33.117188, 55.233067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510429, 33.025249, 55.999878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169632, 33.154995, 55.835491>,  <36.965153, 33.232841, 55.736858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169632, 33.154995, 55.835491>,  <37.510429, 33.025249, 55.999878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169632, 33.154995, 55.835491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466224, -0.827191, 0.313673,
		-0.238207, 0.458852, 0.855986,
		-0.851993, 0.324362, -0.410971,
		36.914036, 33.252304, 55.712200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114017, 33.280300, 55.702114>,  <37.510429, 33.025249, 55.999878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114017, 33.280300, 55.702114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958176, 33.000652, 55.462303>,  <37.864670, 32.832863, 55.318417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958176, 33.000652, 55.462303>,  <38.114017, 33.280300, 55.702114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958176, 33.000652, 55.462303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662585, 0.239361, -0.709710,
		0.639678, -0.673746, 0.369971,
		-0.389608, -0.699123, -0.599528,
		37.841293, 32.790916, 55.282444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597919, 32.788269, 55.475750>,  <38.114017, 33.280300, 55.702114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597919, 32.788269, 55.475750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321117, 32.841850, 55.192009>,  <38.155037, 32.874001, 55.021767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321117, 32.841850, 55.192009>,  <38.597919, 32.788269, 55.475750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321117, 32.841850, 55.192009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720156, 0.196128, -0.665514,
		0.049974, -0.971385, -0.232192,
		-0.692010, 0.133956, -0.709350,
		38.113514, 32.882038, 54.979202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614475, 32.075401, 55.797733>,  <38.597919, 32.788269, 55.475750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614475, 32.075401, 55.797733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317402, 31.808081, 55.780785>,  <38.139156, 31.647688, 55.770615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317402, 31.808081, 55.780785>,  <38.614475, 32.075401, 55.797733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317402, 31.808081, 55.780785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335770, -0.316897, -0.887037,
		0.579378, -0.673017, 0.459749,
		-0.742684, -0.668300, -0.042376,
		38.094597, 31.607590, 55.768070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866528, 31.381369, 55.696655>,  <38.614475, 32.075401, 55.797733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866528, 31.381369, 55.696655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494961, 31.405876, 55.550579>,  <38.272022, 31.420582, 55.462933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494961, 31.405876, 55.550579>,  <38.866528, 31.381369, 55.696655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494961, 31.405876, 55.550579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328760, -0.317358, -0.889495,
		-0.170395, -0.946325, 0.274656,
		-0.928915, 0.061269, -0.365190,
		38.216286, 31.424257, 55.441021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883194, 30.794584, 55.312744>,  <38.866528, 31.381369, 55.696655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883194, 30.794584, 55.312744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606461, 31.054398, 55.186584>,  <38.440422, 31.210285, 55.110889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606461, 31.054398, 55.186584>,  <38.883194, 30.794584, 55.312744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606461, 31.054398, 55.186584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105868, -0.340835, -0.934143,
		-0.714257, -0.679659, 0.167035,
		-0.691830, 0.649535, -0.315398,
		38.398911, 31.249258, 55.091965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519283, 30.500975, 54.742691>,  <38.883194, 30.794584, 55.312744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519283, 30.500975, 54.742691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456501, 30.893608, 54.699127>,  <38.418831, 31.129189, 54.672989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456501, 30.893608, 54.699127>,  <38.519283, 30.500975, 54.742691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456501, 30.893608, 54.699127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027479, -0.114574, -0.993035,
		-0.987223, -0.152869, 0.044955,
		-0.156955, 0.981583, -0.108910,
		38.409416, 31.188084, 54.666454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612659, 30.738014, 54.044548>,  <38.519283, 30.500975, 54.742691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612659, 30.738014, 54.044548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429832, 31.089163, 54.101723>,  <38.320137, 31.299852, 54.136028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429832, 31.089163, 54.101723>,  <38.612659, 30.738014, 54.044548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429832, 31.089163, 54.101723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086085, 0.116285, -0.989478,
		-0.885254, -0.464567, 0.022420,
		-0.457072, 0.877870, 0.142934,
		38.292709, 31.352524, 54.144604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919701, 30.766846, 53.707684>,  <38.612659, 30.738014, 54.044548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919701, 30.766846, 53.707684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008575, 31.156248, 53.729286>,  <38.061901, 31.389889, 53.742249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008575, 31.156248, 53.729286>,  <37.919701, 30.766846, 53.707684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008575, 31.156248, 53.729286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316687, 0.124448, -0.940331,
		-0.922139, 0.191828, 0.335948,
		0.222190, 0.973506, 0.054009,
		38.075233, 31.448299, 53.745487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330170, 31.090969, 53.534847>,  <37.919701, 30.766846, 53.707684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330170, 31.090969, 53.534847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657135, 31.308870, 53.459930>,  <37.853313, 31.439611, 53.414982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657135, 31.308870, 53.459930>,  <37.330170, 31.090969, 53.534847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657135, 31.308870, 53.459930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230981, 0.012104, -0.972883,
		-0.527716, 0.838508, 0.135723,
		0.817413, 0.544755, -0.187292,
		37.902359, 31.472298, 53.403744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129192, 31.509811, 52.945530>,  <37.330170, 31.090969, 53.534847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129192, 31.509811, 52.945530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528591, 31.531666, 52.947289>,  <37.768230, 31.544779, 52.948345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528591, 31.531666, 52.947289>,  <37.129192, 31.509811, 52.945530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528591, 31.531666, 52.947289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006008, -0.029314, -0.999552,
		-0.054482, 0.998076, -0.029598,
		0.998497, 0.054635, 0.004400,
		37.828140, 31.548056, 52.948608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271877, 32.099987, 52.579250>,  <37.129192, 31.509811, 52.945530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271877, 32.099987, 52.579250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621460, 31.907192, 52.554291>,  <37.831207, 31.791515, 52.539314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621460, 31.907192, 52.554291>,  <37.271877, 32.099987, 52.579250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621460, 31.907192, 52.554291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047273, 0.212086, -0.976107,
		0.483706, 0.850122, 0.208138,
		0.873953, -0.481988, -0.062399,
		37.883644, 31.762596, 52.535572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569878, 32.450054, 52.036953>,  <37.271877, 32.099987, 52.579250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569878, 32.450054, 52.036953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797169, 32.121441, 52.055737>,  <37.933544, 31.924274, 52.067005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797169, 32.121441, 52.055737>,  <37.569878, 32.450054, 52.036953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797169, 32.121441, 52.055737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141851, 0.041584, -0.989014,
		0.810551, 0.568649, 0.140164,
		0.568230, -0.821529, 0.046958,
		37.967636, 31.874983, 52.069824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194847, 32.585712, 51.677929>,  <37.569878, 32.450054, 52.036953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194847, 32.585712, 51.677929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135471, 32.190460, 51.693710>,  <38.099846, 31.953308, 51.703178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135471, 32.190460, 51.693710>,  <38.194847, 32.585712, 51.677929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135471, 32.190460, 51.693710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073692, -0.050841, -0.995984,
		0.986172, -0.144933, 0.080364,
		-0.148436, -0.988135, 0.039457,
		38.090939, 31.894020, 51.705547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573158, 32.391491, 51.175190>,  <38.194847, 32.585712, 51.677929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573158, 32.391491, 51.175190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317749, 32.094257, 51.255299>,  <38.164505, 31.915916, 51.303364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317749, 32.094257, 51.255299>,  <38.573158, 32.391491, 51.175190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317749, 32.094257, 51.255299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036641, -0.230578, -0.972364,
		0.768729, -0.628216, 0.120002,
		-0.638524, -0.743088, 0.200270,
		38.126190, 31.871330, 51.315380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823360, 31.917482, 50.689945>,  <38.573158, 32.391491, 51.175190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823360, 31.917482, 50.689945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459003, 31.784559, 50.787804>,  <38.240391, 31.704805, 50.846519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459003, 31.784559, 50.787804>,  <38.823360, 31.917482, 50.689945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459003, 31.784559, 50.787804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205065, -0.149948, -0.967194,
		0.358089, -0.931175, 0.068442,
		-0.910890, -0.332307, 0.244646,
		38.185738, 31.684868, 50.861198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706291, 31.446045, 50.210854>,  <38.823360, 31.917482, 50.689945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706291, 31.446045, 50.210854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341801, 31.537680, 50.347782>,  <38.123108, 31.592661, 50.429939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341801, 31.537680, 50.347782>,  <38.706291, 31.446045, 50.210854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341801, 31.537680, 50.347782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365373, -0.065814, -0.928531,
		-0.190187, -0.971178, 0.143675,
		-0.911225, 0.229090, 0.342325,
		38.068432, 31.606405, 50.450481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247921, 30.938751, 49.981453>,  <38.706291, 31.446045, 50.210854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247921, 30.938751, 49.981453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005363, 31.244267, 50.069920>,  <37.859829, 31.427576, 50.122997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005363, 31.244267, 50.069920>,  <38.247921, 30.938751, 49.981453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005363, 31.244267, 50.069920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377376, -0.031616, -0.925521,
		-0.699911, -0.644690, 0.307407,
		-0.606393, 0.763790, 0.221162,
		37.823444, 31.473404, 50.136269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684727, 30.705654, 49.622780>,  <38.247921, 30.938751, 49.981453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684727, 30.705654, 49.622780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642193, 31.101234, 49.664093>,  <37.616673, 31.338583, 49.688881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642193, 31.101234, 49.664093>,  <37.684727, 30.705654, 49.622780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642193, 31.101234, 49.664093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379476, 0.055648, -0.923526,
		-0.919071, -0.137395, 0.369366,
		-0.106334, 0.988952, 0.103283,
		37.610294, 31.397921, 49.695080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004513, 30.853964, 49.504616>,  <37.684727, 30.705654, 49.622780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004513, 30.853964, 49.504616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190071, 31.198683, 49.422539>,  <37.301407, 31.405514, 49.373295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190071, 31.198683, 49.422539>,  <37.004513, 30.853964, 49.504616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190071, 31.198683, 49.422539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442957, 0.025060, -0.896193,
		-0.767195, 0.506632, 0.393364,
		0.463898, 0.861798, -0.205190,
		37.329239, 31.457222, 49.360981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515175, 31.277050, 49.190029>,  <37.004513, 30.853964, 49.504616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515175, 31.277050, 49.190029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856289, 31.462656, 49.094151>,  <37.060955, 31.574018, 49.036621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856289, 31.462656, 49.094151>,  <36.515175, 31.277050, 49.190029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856289, 31.462656, 49.094151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311375, 0.083246, -0.946634,
		-0.419297, 0.881908, 0.215473,
		0.852781, 0.464013, -0.239699,
		37.112122, 31.601860, 49.022240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287411, 31.925905, 48.903370>,  <36.515175, 31.277050, 49.190029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287411, 31.925905, 48.903370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647556, 31.840788, 48.751549>,  <36.863644, 31.789717, 48.660458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647556, 31.840788, 48.751549>,  <36.287411, 31.925905, 48.903370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647556, 31.840788, 48.751549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341872, 0.193682, -0.919571,
		0.269191, 0.957709, 0.101636,
		0.900366, -0.212794, -0.379551,
		36.917667, 31.776949, 48.637684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455372, 32.412460, 48.295952>,  <36.287411, 31.925905, 48.903370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455372, 32.412460, 48.295952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704983, 32.104828, 48.240669>,  <36.854748, 31.920248, 48.207500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704983, 32.104828, 48.240669>,  <36.455372, 32.412460, 48.295952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704983, 32.104828, 48.240669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128960, 0.073076, -0.988954,
		0.770689, 0.634955, -0.053580,
		0.624026, -0.769085, -0.138202,
		36.892189, 31.874102, 48.199207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908112, 32.619221, 47.745193>,  <36.455372, 32.412460, 48.295952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908112, 32.619221, 47.745193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942059, 32.220665, 47.745163>,  <36.962425, 31.981531, 47.745144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942059, 32.220665, 47.745163>,  <36.908112, 32.619221, 47.745193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942059, 32.220665, 47.745163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158310, -0.013407, -0.987298,
		0.983736, 0.083802, -0.158876,
		0.084868, -0.996392, -0.000078,
		36.967518, 31.921747, 47.745140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315014, 32.438435, 47.079750>,  <36.908112, 32.619221, 47.745193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315014, 32.438435, 47.079750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117340, 32.113281, 47.203041>,  <36.998737, 31.918190, 47.277016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117340, 32.113281, 47.203041>,  <37.315014, 32.438435, 47.079750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117340, 32.113281, 47.203041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196424, -0.240972, -0.950447,
		0.846877, -0.530238, -0.040585,
		-0.494183, -0.812884, 0.308225,
		36.969086, 31.869415, 47.295509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482883, 31.915632, 46.586906>,  <37.315014, 32.438435, 47.079750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482883, 31.915632, 46.586906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141281, 31.784149, 46.748215>,  <36.936321, 31.705259, 46.845001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141281, 31.784149, 46.748215>,  <37.482883, 31.915632, 46.586906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141281, 31.784149, 46.748215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327500, -0.262639, -0.907615,
		0.404254, -0.907179, 0.116644,
		-0.854004, -0.328706, 0.403274,
		36.885078, 31.685537, 46.869198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228451, 31.231800, 46.280426>,  <37.482883, 31.915632, 46.586906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228451, 31.231800, 46.280426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898872, 31.374989, 46.456142>,  <36.701126, 31.460901, 46.561573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898872, 31.374989, 46.456142>,  <37.228451, 31.231800, 46.280426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898872, 31.374989, 46.456142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540040, -0.261169, -0.800092,
		-0.171677, -0.896466, 0.408505,
		-0.823944, 0.357967, 0.439291,
		36.651688, 31.482380, 46.587929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740238, 30.626038, 46.330261>,  <37.228451, 31.231800, 46.280426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740238, 30.626038, 46.330261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523727, 30.959829, 46.371567>,  <36.393822, 31.160105, 46.396351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523727, 30.959829, 46.371567>,  <36.740238, 30.626038, 46.330261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523727, 30.959829, 46.371567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320856, -0.091465, -0.942701,
		-0.777220, -0.543395, 0.317255,
		-0.541277, 0.834480, 0.103263,
		36.361343, 31.210173, 46.402546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195541, 30.485432, 45.864147>,  <36.740238, 30.626038, 46.330261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195541, 30.485432, 45.864147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195385, 30.883398, 45.904427>,  <36.195293, 31.122177, 45.928596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195385, 30.883398, 45.904427>,  <36.195541, 30.485432, 45.864147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195385, 30.883398, 45.904427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344831, 0.094390, -0.933907,
		-0.938665, -0.035088, 0.343041,
		-0.000389, 0.994916, 0.100700,
		36.195267, 31.181873, 45.934635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494144, 30.772066, 45.613514>,  <36.195541, 30.485432, 45.864147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494144, 30.772066, 45.613514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771801, 31.057825, 45.578194>,  <35.938396, 31.229280, 45.557003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771801, 31.057825, 45.578194>,  <35.494144, 30.772066, 45.613514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771801, 31.057825, 45.578194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337211, 0.214349, -0.916702,
		-0.635964, 0.666100, 0.389692,
		0.694146, 0.714399, -0.088297,
		35.980045, 31.272144, 45.551704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108498, 31.364653, 45.370579>,  <35.494144, 30.772066, 45.613514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108498, 31.364653, 45.370579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489796, 31.456135, 45.291573>,  <35.718575, 31.511024, 45.244167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489796, 31.456135, 45.291573>,  <35.108498, 31.364653, 45.370579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489796, 31.456135, 45.291573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284688, 0.460420, -0.840813,
		-0.101357, 0.857734, 0.504003,
		0.953247, 0.228706, -0.197520,
		35.775768, 31.524746, 45.232315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042473, 32.019032, 45.115597>,  <35.108498, 31.364653, 45.370579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042473, 32.019032, 45.115597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399467, 31.892302, 44.987171>,  <35.613667, 31.816263, 44.910114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399467, 31.892302, 44.987171>,  <35.042473, 32.019032, 45.115597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399467, 31.892302, 44.987171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248083, 0.249688, -0.936008,
		0.376718, 0.915029, 0.144245,
		0.892490, -0.316826, -0.321065,
		35.667213, 31.797255, 44.890850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211731, 32.481483, 44.620941>,  <35.042473, 32.019032, 45.115597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211731, 32.481483, 44.620941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419903, 32.150608, 44.536167>,  <35.544807, 31.952084, 44.485302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419903, 32.150608, 44.536167>,  <35.211731, 32.481483, 44.620941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419903, 32.150608, 44.536167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116283, 0.177225, -0.977277,
		0.845950, 0.533248, -0.003955,
		0.520430, -0.827186, -0.211932,
		35.576031, 31.902452, 44.472588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549580, 32.690552, 44.097794>,  <35.211731, 32.481483, 44.620941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549580, 32.690552, 44.097794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591145, 32.292919, 44.110466>,  <35.616085, 32.054340, 44.118069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591145, 32.292919, 44.110466>,  <35.549580, 32.690552, 44.097794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591145, 32.292919, 44.110466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142501, -0.046409, -0.988706,
		0.984325, 0.098223, -0.146480,
		0.103912, -0.994082, 0.031685,
		35.622318, 31.994694, 44.119972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062866, 32.608070, 43.655991>,  <35.549580, 32.690552, 44.097794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062866, 32.608070, 43.655991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899910, 32.244469, 43.691193>,  <35.802135, 32.026306, 43.712315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899910, 32.244469, 43.691193>,  <36.062866, 32.608070, 43.655991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899910, 32.244469, 43.691193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017179, -0.088720, -0.995908,
		0.913094, -0.407231, 0.020528,
		-0.407386, -0.909006, 0.088005,
		35.777695, 31.971767, 43.717594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433136, 32.115059, 43.244064>,  <36.062866, 32.608070, 43.655991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433136, 32.115059, 43.244064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096958, 31.902079, 43.284374>,  <35.895252, 31.774292, 43.308559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096958, 31.902079, 43.284374>,  <36.433136, 32.115059, 43.244064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096958, 31.902079, 43.284374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004216, -0.192389, -0.981310,
		0.541884, -0.824310, 0.163936,
		-0.840443, -0.532447, 0.100777,
		35.844826, 31.742344, 43.314606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497162, 31.479486, 42.763027>,  <36.433136, 32.115059, 43.244064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497162, 31.479486, 42.763027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117939, 31.562609, 42.859364>,  <35.890404, 31.612482, 42.917164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117939, 31.562609, 42.859364>,  <36.497162, 31.479486, 42.763027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117939, 31.562609, 42.859364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243581, 0.012694, -0.969797,
		-0.204585, -0.978088, 0.038582,
		-0.948058, 0.207804, 0.240841,
		35.833523, 31.624950, 42.931618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168171, 31.046301, 42.336838>,  <36.497162, 31.479486, 42.763027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168171, 31.046301, 42.336838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893677, 31.323027, 42.426708>,  <35.728981, 31.489061, 42.480629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893677, 31.323027, 42.426708>,  <36.168171, 31.046301, 42.336838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893677, 31.323027, 42.426708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234518, 0.081956, -0.968651,
		-0.688540, -0.717410, 0.106002,
		-0.686232, 0.691814, 0.224675,
		35.687805, 31.530571, 42.494110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500381, 30.808884, 42.112286>,  <36.168171, 31.046301, 42.336838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500381, 30.808884, 42.112286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488556, 31.208204, 42.132355>,  <35.481461, 31.447798, 42.144394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488556, 31.208204, 42.132355>,  <35.500381, 30.808884, 42.112286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488556, 31.208204, 42.132355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350002, 0.036676, -0.936031,
		-0.936282, -0.045230, 0.348324,
		-0.029561, 0.998303, 0.050170,
		35.479687, 31.507696, 42.147408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055935, 30.967058, 41.618534>,  <35.500381, 30.808884, 42.112286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055935, 30.967058, 41.618534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201405, 31.334255, 41.681820>,  <35.288689, 31.554573, 41.719791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201405, 31.334255, 41.681820>,  <35.055935, 30.967058, 41.618534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201405, 31.334255, 41.681820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422627, 0.313959, -0.850186,
		-0.830135, 0.242329, 0.502148,
		0.363679, 0.917991, 0.158213,
		35.310509, 31.609652, 41.729282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532482, 31.561117, 41.464962>,  <35.055935, 30.967058, 41.618534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532482, 31.561117, 41.464962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897087, 31.721064, 41.426491>,  <35.115849, 31.817032, 41.403408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897087, 31.721064, 41.426491>,  <34.532482, 31.561117, 41.464962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897087, 31.721064, 41.426491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289988, 0.459066, -0.839741,
		-0.291635, 0.793324, 0.534402,
		0.911513, 0.399868, -0.096175,
		35.170540, 31.841024, 41.397636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347492, 32.202492, 41.170105>,  <34.532482, 31.561117, 41.464962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347492, 32.202492, 41.170105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742115, 32.153748, 41.126568>,  <34.978889, 32.124500, 41.100445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742115, 32.153748, 41.126568>,  <34.347492, 32.202492, 41.170105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742115, 32.153748, 41.126568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062173, 0.336020, -0.939801,
		0.151101, 0.933938, 0.323928,
		0.986561, -0.121865, -0.108838,
		35.038082, 32.117188, 41.093918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523754, 32.781685, 41.076519>,  <34.347492, 32.202492, 41.170105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523754, 32.781685, 41.076519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812424, 32.555496, 40.916805>,  <34.985626, 32.419781, 40.820976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812424, 32.555496, 40.916805>,  <34.523754, 32.781685, 41.076519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812424, 32.555496, 40.916805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084388, 0.500638, -0.861534,
		0.687072, 0.655440, 0.313577,
		0.721672, -0.565474, -0.399285,
		35.028927, 32.385853, 40.797020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050438, 33.267101, 40.808514>,  <34.523754, 32.781685, 41.076519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050438, 33.267101, 40.808514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098122, 32.923370, 40.609577>,  <35.126732, 32.717133, 40.490215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098122, 32.923370, 40.609577>,  <35.050438, 33.267101, 40.808514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098122, 32.923370, 40.609577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079211, 0.507545, -0.857976,
		0.989704, 0.062887, 0.128574,
		0.119213, -0.859327, -0.497338,
		35.133884, 32.665573, 40.460377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615280, 33.384373, 40.340248>,  <35.050438, 33.267101, 40.808514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615280, 33.384373, 40.340248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420685, 33.065636, 40.196934>,  <35.303928, 32.874393, 40.110943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420685, 33.065636, 40.196934>,  <35.615280, 33.384373, 40.340248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420685, 33.065636, 40.196934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178097, 0.491926, -0.852227,
		0.855340, -0.350791, -0.381232,
		-0.486492, -0.796841, -0.358289,
		35.274738, 32.826584, 40.089447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233070, 33.746449, 40.241760>,  <35.615280, 33.384373, 40.340248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233070, 33.746449, 40.241760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459274, 33.782314, 39.913818>,  <36.594997, 33.803833, 39.717052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459274, 33.782314, 39.913818>,  <36.233070, 33.746449, 40.241760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459274, 33.782314, 39.913818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568073, 0.763011, -0.308394,
		0.597908, 0.640137, 0.482423,
		0.565508, 0.089660, -0.819855,
		36.628925, 33.809212, 39.667862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773788, 34.264618, 40.121899>,  <36.233070, 33.746449, 40.241760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773788, 34.264618, 40.121899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548790, 34.212601, 39.795296>,  <36.413792, 34.181389, 39.599335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548790, 34.212601, 39.795296>,  <36.773788, 34.264618, 40.121899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548790, 34.212601, 39.795296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374723, 0.920401, 0.111554,
		0.737007, 0.368713, -0.566454,
		-0.562497, -0.130047, -0.816508,
		36.380039, 34.173588, 39.550343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945702, 33.633907, 40.404781>,  <36.773788, 34.264618, 40.121899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945702, 33.633907, 40.404781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207432, 33.848427, 40.191528>,  <37.364471, 33.977139, 40.063576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207432, 33.848427, 40.191528>,  <36.945702, 33.633907, 40.404781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207432, 33.848427, 40.191528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503467, 0.217089, 0.836297,
		0.564246, -0.815630, -0.127962,
		0.654330, 0.536302, -0.533135,
		37.403732, 34.009319, 40.031590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577015, 33.299805, 40.337708>,  <36.945702, 33.633907, 40.404781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577015, 33.299805, 40.337708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648346, 33.692318, 40.308617>,  <37.691143, 33.927826, 40.291161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648346, 33.692318, 40.308617>,  <37.577015, 33.299805, 40.337708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648346, 33.692318, 40.308617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622317, -0.055219, 0.780815,
		0.762183, -0.184498, -0.620515,
		0.178323, 0.981281, -0.072729,
		37.701843, 33.986702, 40.286797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252018, 33.383694, 40.455029>,  <37.577015, 33.299805, 40.337708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252018, 33.383694, 40.455029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105152, 33.746628, 40.536926>,  <38.017033, 33.964390, 40.586067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105152, 33.746628, 40.536926>,  <38.252018, 33.383694, 40.455029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105152, 33.746628, 40.536926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562458, 0.041259, 0.825796,
		0.740829, 0.418368, -0.525490,
		-0.367168, 0.907340, 0.204748,
		37.995003, 34.018829, 40.598351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936489, 33.775627, 40.483566>,  <38.252018, 33.383694, 40.455029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936489, 33.775627, 40.483566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657967, 33.988197, 40.676544>,  <38.490852, 34.115738, 40.792332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657967, 33.988197, 40.676544>,  <38.936489, 33.775627, 40.483566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657967, 33.988197, 40.676544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606887, 0.077041, 0.791046,
		0.383211, 0.843597, -0.376156,
		-0.696303, 0.531421, 0.482445,
		38.449074, 34.147625, 40.821278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338131, 34.215111, 40.913158>,  <38.936489, 33.775627, 40.483566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338131, 34.215111, 40.913158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972965, 34.205845, 41.076157>,  <38.753868, 34.200287, 41.173958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972965, 34.205845, 41.076157>,  <39.338131, 34.215111, 40.913158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972965, 34.205845, 41.076157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407869, -0.089288, 0.908664,
		0.015337, 0.995736, 0.090960,
		-0.912911, -0.023163, 0.407500,
		38.699093, 34.198895, 41.198406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264168, 34.731857, 41.423130>,  <39.338131, 34.215111, 40.913158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264168, 34.731857, 41.423130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006378, 34.440380, 41.515789>,  <38.851704, 34.265495, 41.571384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006378, 34.440380, 41.515789>,  <39.264168, 34.731857, 41.423130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006378, 34.440380, 41.515789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488600, -0.159440, 0.857816,
		-0.588151, 0.666022, 0.458795,
		-0.644475, -0.728693, 0.231643,
		38.813034, 34.221771, 41.585281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259895, 34.833916, 42.120792>,  <39.264168, 34.731857, 41.423130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259895, 34.833916, 42.120792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054672, 34.492687, 42.082760>,  <38.931538, 34.287949, 42.059940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054672, 34.492687, 42.082760>,  <39.259895, 34.833916, 42.120792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054672, 34.492687, 42.082760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271878, -0.266572, 0.924674,
		-0.814161, 0.448557, 0.368698,
		-0.513053, -0.853075, -0.095080,
		38.900757, 34.236763, 42.054237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859810, 34.767147, 42.761520>,  <39.259895, 34.833916, 42.120792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859810, 34.767147, 42.761520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933750, 34.414040, 42.588757>,  <38.978115, 34.202175, 42.485100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933750, 34.414040, 42.588757>,  <38.859810, 34.767147, 42.761520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933750, 34.414040, 42.588757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366553, -0.345835, 0.863735,
		-0.911849, -0.317982, 0.259653,
		0.184855, -0.882772, -0.431906,
		38.989208, 34.149208, 42.459187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538788, 34.315212, 43.152313>,  <38.859810, 34.767147, 42.761520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538788, 34.315212, 43.152313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808922, 34.096928, 42.953873>,  <38.971004, 33.965958, 42.834808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808922, 34.096928, 42.953873>,  <38.538788, 34.315212, 43.152313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808922, 34.096928, 42.953873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281199, -0.431325, 0.857255,
		-0.681795, -0.718440, -0.137836,
		0.675338, -0.545713, -0.496100,
		39.011524, 33.933212, 42.805042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552807, 33.664162, 43.462021>,  <38.538788, 34.315212, 43.152313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552807, 33.664162, 43.462021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903938, 33.673252, 43.270645>,  <39.114616, 33.678707, 43.155819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903938, 33.673252, 43.270645>,  <38.552807, 33.664162, 43.462021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903938, 33.673252, 43.270645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412333, -0.544117, 0.730697,
		-0.243719, -0.838702, -0.487012,
		0.877828, 0.022727, -0.478436,
		39.167286, 33.680069, 43.127113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739178, 33.001198, 43.648491>,  <38.552807, 33.664162, 43.462021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739178, 33.001198, 43.648491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077808, 33.164513, 43.511898>,  <39.280987, 33.262501, 43.429943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077808, 33.164513, 43.511898>,  <38.739178, 33.001198, 43.648491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077808, 33.164513, 43.511898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530025, -0.587806, 0.611194,
		0.048820, -0.698415, -0.714027,
		0.846576, 0.408291, -0.341480,
		39.331779, 33.286999, 43.409454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270832, 32.430347, 43.514385>,  <38.739178, 33.001198, 43.648491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270832, 32.430347, 43.514385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461914, 32.779144, 43.557167>,  <39.576561, 32.988422, 43.582836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461914, 32.779144, 43.557167>,  <39.270832, 32.430347, 43.514385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461914, 32.779144, 43.557167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575901, -0.402754, 0.711426,
		0.663430, -0.278255, -0.694575,
		0.477700, 0.871988, 0.106952,
		39.605225, 33.040741, 43.589252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036949, 32.212734, 43.710468>,  <39.270832, 32.430347, 43.514385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036949, 32.212734, 43.710468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961773, 32.588669, 43.824577>,  <39.916668, 32.814228, 43.893044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961773, 32.588669, 43.824577>,  <40.036949, 32.212734, 43.710468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961773, 32.588669, 43.824577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502291, -0.157624, 0.850211,
		0.844026, 0.303084, -0.442447,
		-0.187945, 0.939838, 0.285275,
		39.905388, 32.870621, 43.910160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766930, 32.507290, 43.931202>,  <40.036949, 32.212734, 43.710468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766930, 32.507290, 43.931202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468330, 32.708996, 44.104851>,  <40.289173, 32.830021, 44.209038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468330, 32.708996, 44.104851>,  <40.766930, 32.507290, 43.931202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468330, 32.708996, 44.104851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466813, -0.068029, 0.881735,
		0.474164, 0.860863, -0.184616,
		-0.746495, 0.504268, 0.434119,
		40.244381, 32.860275, 44.235088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032146, 32.644646, 44.590244>,  <40.766930, 32.507290, 43.931202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032146, 32.644646, 44.590244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654472, 32.759487, 44.654850>,  <40.427868, 32.828392, 44.693611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654472, 32.759487, 44.654850>,  <41.032146, 32.644646, 44.590244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654472, 32.759487, 44.654850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115931, -0.169321, 0.978719,
		0.308338, 0.942817, 0.126587,
		-0.944186, 0.287101, 0.161510,
		40.371216, 32.845619, 44.703304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988689, 33.183746, 45.050800>,  <41.032146, 32.644646, 44.590244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988689, 33.183746, 45.050800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624382, 33.020325, 45.074768>,  <40.405800, 32.922272, 45.089149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624382, 33.020325, 45.074768>,  <40.988689, 33.183746, 45.050800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624382, 33.020325, 45.074768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126290, -0.137453, 0.982424,
		-0.393140, 0.902324, 0.176784,
		-0.910764, -0.408556, 0.059916,
		40.351154, 32.897758, 45.092743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624302, 33.518665, 45.635506>,  <40.988689, 33.183746, 45.050800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624302, 33.518665, 45.635506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422623, 33.177376, 45.582153>,  <40.301617, 32.972603, 45.550140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422623, 33.177376, 45.582153>,  <40.624302, 33.518665, 45.635506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422623, 33.177376, 45.582153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074714, -0.110776, 0.991033,
		-0.860350, 0.509642, -0.007895,
		-0.504198, -0.853225, -0.133383,
		40.271362, 32.921410, 45.542137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015686, 33.527000, 46.126923>,  <40.624302, 33.518665, 45.635506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015686, 33.527000, 46.126923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082649, 33.145443, 46.027275>,  <40.122826, 32.916508, 45.967487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082649, 33.145443, 46.027275>,  <40.015686, 33.527000, 46.126923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082649, 33.145443, 46.027275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277717, -0.288081, 0.916451,
		-0.945965, -0.084232, -0.313138,
		0.167403, -0.953894, -0.249122,
		40.132870, 32.859276, 45.952538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510918, 33.278694, 46.565243>,  <40.015686, 33.527000, 46.126923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510918, 33.278694, 46.565243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662697, 32.932781, 46.433681>,  <39.753765, 32.725235, 46.354744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662697, 32.932781, 46.433681>,  <39.510918, 33.278694, 46.565243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662697, 32.932781, 46.433681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264164, -0.441954, 0.857260,
		-0.886702, -0.238397, -0.396140,
		0.379444, -0.864780, -0.328905,
		39.776531, 32.673347, 46.335011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062225, 32.671570, 46.468819>,  <39.510918, 33.278694, 46.565243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062225, 32.671570, 46.468819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411388, 32.488285, 46.535835>,  <39.620888, 32.378315, 46.576046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411388, 32.488285, 46.535835>,  <39.062225, 32.671570, 46.468819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411388, 32.488285, 46.535835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344630, -0.336024, 0.876537,
		-0.345355, -0.822871, -0.451235,
		0.872903, -0.458226, 0.167539,
		39.673260, 32.350822, 46.586098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904335, 32.055595, 46.685810>,  <39.062225, 32.671570, 46.468819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904335, 32.055595, 46.685810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269791, 32.119175, 46.835472>,  <39.489063, 32.157322, 46.925270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269791, 32.119175, 46.835472>,  <38.904335, 32.055595, 46.685810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269791, 32.119175, 46.835472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282007, -0.415109, 0.864961,
		0.292799, -0.895779, -0.334437,
		0.913642, 0.158946, 0.374160,
		39.543884, 32.166859, 46.947720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034130, 31.491201, 47.102070>,  <38.904335, 32.055595, 46.685810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034130, 31.491201, 47.102070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266495, 31.788158, 47.235573>,  <39.405914, 31.966333, 47.315674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266495, 31.788158, 47.235573>,  <39.034130, 31.491201, 47.102070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266495, 31.788158, 47.235573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250111, -0.227399, 0.941135,
		0.774587, -0.630194, 0.053581,
		0.580913, 0.742392, 0.333758,
		39.440769, 32.010876, 47.335701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323868, 31.295797, 47.768291>,  <39.034130, 31.491201, 47.102070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323868, 31.295797, 47.768291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401894, 31.684547, 47.821064>,  <39.448708, 31.917797, 47.852726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401894, 31.684547, 47.821064>,  <39.323868, 31.295797, 47.768291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401894, 31.684547, 47.821064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181411, -0.096438, 0.978667,
		0.963867, -0.214838, 0.157497,
		0.195066, 0.971877, 0.131927,
		39.460415, 31.976110, 47.860641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912746, 31.441587, 48.331551>,  <39.323868, 31.295797, 47.768291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912746, 31.441587, 48.331551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727112, 31.795809, 48.323380>,  <39.615730, 32.008343, 48.318478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727112, 31.795809, 48.323380>,  <39.912746, 31.441587, 48.331551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727112, 31.795809, 48.323380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078511, 0.064089, 0.994851,
		0.882304, 0.460092, -0.099268,
		-0.464085, 0.885555, -0.020423,
		39.587887, 32.061474, 48.317253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355976, 31.886496, 48.636597>,  <39.912746, 31.441587, 48.331551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355976, 31.886496, 48.636597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000183, 32.066593, 48.667824>,  <39.786705, 32.174652, 48.686562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000183, 32.066593, 48.667824>,  <40.355976, 31.886496, 48.636597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000183, 32.066593, 48.667824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210322, 0.251701, 0.944675,
		0.405686, 0.856694, -0.318581,
		-0.889485, 0.450246, 0.078070,
		39.733337, 32.201668, 48.691246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506493, 32.559269, 48.703445>,  <40.355976, 31.886496, 48.636597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506493, 32.559269, 48.703445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140144, 32.521938, 48.859634>,  <39.920334, 32.499542, 48.953350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140144, 32.521938, 48.859634>,  <40.506493, 32.559269, 48.703445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140144, 32.521938, 48.859634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293453, 0.508128, 0.809747,
		-0.273980, 0.856210, -0.437994,
		-0.915871, -0.093324, 0.390474,
		39.865383, 32.493942, 48.976776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338463, 33.191605, 48.889462>,  <40.506493, 32.559269, 48.703445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338463, 33.191605, 48.889462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124966, 32.933292, 49.107849>,  <39.996868, 32.778305, 49.238884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124966, 32.933292, 49.107849>,  <40.338463, 33.191605, 48.889462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124966, 32.933292, 49.107849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164407, 0.554065, 0.816078,
		-0.829509, 0.525339, -0.189559,
		-0.533746, -0.645779, 0.545971,
		39.964844, 32.739559, 49.271641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968975, 33.709454, 49.367851>,  <40.338463, 33.191605, 48.889462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968975, 33.709454, 49.367851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929253, 33.341732, 49.520176>,  <39.905418, 33.121098, 49.611568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929253, 33.341732, 49.520176>,  <39.968975, 33.709454, 49.367851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929253, 33.341732, 49.520176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232741, 0.350623, 0.907136,
		-0.967455, 0.178717, 0.179139,
		-0.099310, -0.919306, 0.380807,
		39.899460, 33.065941, 49.634418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588406, 33.857098, 50.028881>,  <39.968975, 33.709454, 49.367851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588406, 33.857098, 50.028881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760944, 33.498596, 50.070198>,  <39.864468, 33.283497, 50.094990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760944, 33.498596, 50.070198>,  <39.588406, 33.857098, 50.028881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760944, 33.498596, 50.070198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199952, 0.206620, 0.957772,
		-0.879749, -0.392478, 0.268332,
		0.431347, -0.896253, 0.103297,
		39.890350, 33.229721, 50.101189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342201, 33.617104, 50.638046>,  <39.588406, 33.857098, 50.028881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342201, 33.617104, 50.638046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653931, 33.375477, 50.571411>,  <39.840969, 33.230499, 50.531429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653931, 33.375477, 50.571411>,  <39.342201, 33.617104, 50.638046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653931, 33.375477, 50.571411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211453, 0.003258, 0.977383,
		-0.589866, -0.796924, 0.130272,
		0.779324, -0.604071, -0.166590,
		39.887730, 33.194256, 50.521435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383049, 33.281136, 51.263996>,  <39.342201, 33.617104, 50.638046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383049, 33.281136, 51.263996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748283, 33.201176, 51.121834>,  <39.967422, 33.153202, 51.036537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748283, 33.201176, 51.121834>,  <39.383049, 33.281136, 51.263996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748283, 33.201176, 51.121834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395621, 0.223161, 0.890889,
		-0.098772, -0.954065, 0.282849,
		0.913087, -0.199896, -0.355406,
		40.022209, 33.141209, 51.015213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699234, 32.695763, 51.623978>,  <39.383049, 33.281136, 51.263996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699234, 32.695763, 51.623978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009026, 32.890064, 51.461884>,  <40.194901, 33.006645, 51.364628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009026, 32.890064, 51.461884>,  <39.699234, 32.695763, 51.623978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009026, 32.890064, 51.461884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385065, 0.146245, 0.911228,
		0.501899, -0.861774, -0.073783,
		0.774482, 0.485756, -0.405239,
		40.241371, 33.035789, 51.340313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359917, 32.406578, 51.905243>,  <39.699234, 32.695763, 51.623978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359917, 32.406578, 51.905243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445473, 32.779049, 51.787151>,  <40.496807, 33.002533, 51.716297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445473, 32.779049, 51.787151>,  <40.359917, 32.406578, 51.905243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445473, 32.779049, 51.787151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547330, 0.136090, 0.825778,
		0.809124, -0.338210, -0.480554,
		0.213887, 0.931179, -0.295226,
		40.509640, 33.058403, 51.698582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157970, 32.372013, 51.831596>,  <40.359917, 32.406578, 51.905243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157970, 32.372013, 51.831596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012749, 32.741154, 51.883034>,  <40.925617, 32.962639, 51.913895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012749, 32.741154, 51.883034>,  <41.157970, 32.372013, 51.831596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012749, 32.741154, 51.883034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675284, 0.165503, 0.718749,
		0.642017, 0.347779, -0.683274,
		-0.363050, 0.922853, 0.128594,
		40.903835, 33.018009, 51.921612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759785, 32.780045, 52.057434>,  <41.157970, 32.372013, 51.831596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759785, 32.780045, 52.057434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446274, 32.999317, 52.174179>,  <41.258167, 33.130882, 52.244228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446274, 32.999317, 52.174179>,  <41.759785, 32.780045, 52.057434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446274, 32.999317, 52.174179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465596, 0.207659, 0.860290,
		0.410989, 0.810168, -0.417990,
		-0.783779, 0.548184, 0.291865,
		41.211140, 33.163773, 52.261738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997459, 33.185131, 52.504742>,  <41.759785, 32.780045, 52.057434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997459, 33.185131, 52.504742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614368, 33.262962, 52.589504>,  <41.384514, 33.309662, 52.640362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614368, 33.262962, 52.589504>,  <41.997459, 33.185131, 52.504742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614368, 33.262962, 52.589504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268656, 0.341449, 0.900687,
		0.102898, 0.919539, -0.379288,
		-0.957724, 0.194577, 0.211905,
		41.327049, 33.321335, 52.653076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888878, 33.882893, 52.560696>,  <41.997459, 33.185131, 52.504742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888878, 33.882893, 52.560696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581684, 33.719692, 52.758175>,  <41.397369, 33.621773, 52.876663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581684, 33.719692, 52.758175>,  <41.888878, 33.882893, 52.560696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581684, 33.719692, 52.758175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354605, 0.371029, 0.858250,
		-0.533345, 0.834188, -0.140263,
		-0.767983, -0.408005, 0.493694,
		41.351288, 33.597290, 52.906284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446861, 34.503574, 52.826347>,  <41.888878, 33.882893, 52.560696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446861, 34.503574, 52.826347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812088, 34.590839, 52.964165>,  <42.031223, 34.643196, 53.046856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812088, 34.590839, 52.964165>,  <41.446861, 34.503574, 52.826347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812088, 34.590839, 52.964165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349744, 0.015577, -0.936716,
		-0.209720, 0.975789, -0.062077,
		0.913070, 0.218159, 0.344543,
		42.086010, 34.656288, 53.067528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713554, 35.113407, 52.498405>,  <41.446861, 34.503574, 52.826347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713554, 35.113407, 52.498405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059952, 34.962646, 52.629860>,  <42.267792, 34.872192, 52.708733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059952, 34.962646, 52.629860>,  <41.713554, 35.113407, 52.498405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059952, 34.962646, 52.629860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362255, 0.019801, -0.931869,
		0.344713, 0.926043, 0.153681,
		0.865993, -0.376899, 0.328638,
		42.319748, 34.849575, 52.728451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207932, 35.499519, 52.173244>,  <41.713554, 35.113407, 52.498405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207932, 35.499519, 52.173244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383625, 35.163464, 52.300514>,  <42.489040, 34.961830, 52.376877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383625, 35.163464, 52.300514>,  <42.207932, 35.499519, 52.173244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383625, 35.163464, 52.300514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348350, -0.167179, -0.922336,
		0.828086, 0.515957, 0.219233,
		0.439234, -0.840143, 0.318172,
		42.515396, 34.911419, 52.395966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918087, 35.483978, 52.015572>,  <42.207932, 35.499519, 52.173244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918087, 35.483978, 52.015572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834171, 35.094181, 52.047455>,  <42.783821, 34.860302, 52.066586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834171, 35.094181, 52.047455>,  <42.918087, 35.483978, 52.015572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834171, 35.094181, 52.047455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265896, -0.135309, -0.954458,
		0.940898, -0.179037, 0.287500,
		-0.209785, -0.974493, 0.079706,
		42.771236, 34.801834, 52.071365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.463951, 35.189018, 51.749096>,  <42.918087, 35.483978, 52.015572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.463951, 35.189018, 51.749096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183258, 34.904793, 51.728416>,  <43.014843, 34.734261, 51.716007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183258, 34.904793, 51.728416>,  <43.463951, 35.189018, 51.749096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183258, 34.904793, 51.728416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241026, -0.168493, -0.955781,
		0.670428, -0.683166, 0.289501,
		-0.701736, -0.710559, -0.051698,
		42.972736, 34.691624, 51.712906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800945, 34.768272, 51.340458>,  <43.463951, 35.189018, 51.749096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800945, 34.768272, 51.340458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412395, 34.676121, 51.317287>,  <43.179264, 34.620831, 51.303383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412395, 34.676121, 51.317287>,  <43.800945, 34.768272, 51.340458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412395, 34.676121, 51.317287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129402, -0.308655, -0.942331,
		0.199217, -0.922852, 0.329632,
		-0.971374, -0.230383, -0.057930,
		43.120983, 34.607006, 51.299908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823193, 34.196220, 50.989361>,  <43.800945, 34.768272, 51.340458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823193, 34.196220, 50.989361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436886, 34.285355, 50.936237>,  <43.205101, 34.338837, 50.904362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436886, 34.285355, 50.936237>,  <43.823193, 34.196220, 50.989361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436886, 34.285355, 50.936237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058740, -0.310826, -0.948650,
		-0.252669, -0.923977, 0.287096,
		-0.965768, 0.222830, -0.132811,
		43.147156, 34.352203, 50.896393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580757, 33.747379, 50.465729>,  <43.823193, 34.196220, 50.989361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580757, 33.747379, 50.465729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275253, 34.005375, 50.455399>,  <43.091949, 34.160172, 50.449200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275253, 34.005375, 50.455399>,  <43.580757, 33.747379, 50.465729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275253, 34.005375, 50.455399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155352, -0.222492, -0.962478,
		-0.626529, -0.731089, 0.270129,
		-0.763759, 0.644985, -0.025822,
		43.046127, 34.198872, 50.447651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282295, 33.511829, 49.895729>,  <43.580757, 33.747379, 50.465729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282295, 33.511829, 49.895729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123234, 33.874561, 49.951641>,  <43.027798, 34.092201, 49.985188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123234, 33.874561, 49.951641>,  <43.282295, 33.511829, 49.895729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123234, 33.874561, 49.951641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296105, 0.017362, -0.954998,
		-0.868443, -0.421149, 0.261611,
		-0.397654, 0.906826, 0.139782,
		43.003937, 34.146610, 49.993576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537735, 33.503307, 49.775890>,  <43.282295, 33.511829, 49.895729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537735, 33.503307, 49.775890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647976, 33.882050, 49.709545>,  <42.714123, 34.109295, 49.669739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647976, 33.882050, 49.709545>,  <42.537735, 33.503307, 49.775890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647976, 33.882050, 49.709545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311045, -0.075419, -0.947398,
		-0.909556, 0.312699, 0.273728,
		0.275606, 0.946853, -0.165862,
		42.730659, 34.166107, 49.659786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897728, 33.956619, 49.457703>,  <42.537735, 33.503307, 49.775890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897728, 33.956619, 49.457703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256447, 34.108555, 49.366943>,  <42.471676, 34.199718, 49.312489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256447, 34.108555, 49.366943>,  <41.897728, 33.956619, 49.457703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256447, 34.108555, 49.366943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245153, -0.000320, -0.969484,
		-0.368323, 0.925052, 0.092833,
		0.896794, 0.379841, -0.226897,
		42.525486, 34.222507, 49.298874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682522, 34.232689, 48.819977>,  <41.897728, 33.956619, 49.457703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682522, 34.232689, 48.819977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067955, 34.325890, 48.872478>,  <42.299213, 34.381809, 48.903980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067955, 34.325890, 48.872478>,  <41.682522, 34.232689, 48.819977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067955, 34.325890, 48.872478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057443, 0.299028, -0.952514,
		-0.261184, 0.925361, 0.274753,
		0.963578, 0.232999, 0.131257,
		42.357029, 34.395790, 48.911854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733288, 34.971706, 48.836056>,  <41.682522, 34.232689, 48.819977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733288, 34.971706, 48.836056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063179, 34.791058, 48.699902>,  <42.261112, 34.682667, 48.618210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063179, 34.791058, 48.699902>,  <41.733288, 34.971706, 48.836056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063179, 34.791058, 48.699902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138608, 0.422101, -0.895890,
		0.548282, 0.786044, 0.285519,
		0.824727, -0.451625, -0.340383,
		42.310596, 34.655571, 48.597786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112324, 35.530479, 48.447308>,  <41.733288, 34.971706, 48.836056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112324, 35.530479, 48.447308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243000, 35.191292, 48.280350>,  <42.321407, 34.987778, 48.180176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243000, 35.191292, 48.280350>,  <42.112324, 35.530479, 48.447308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243000, 35.191292, 48.280350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084640, 0.413604, -0.906514,
		0.941332, 0.331482, 0.063350,
		0.326695, -0.847969, -0.417396,
		42.341007, 34.936901, 48.155132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566433, 35.726120, 47.986309>,  <42.112324, 35.530479, 48.447308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566433, 35.726120, 47.986309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435459, 35.371906, 47.854481>,  <42.356873, 35.159378, 47.775383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435459, 35.371906, 47.854481>,  <42.566433, 35.726120, 47.986309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435459, 35.371906, 47.854481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034124, 0.337493, -0.940709,
		0.944257, -0.319269, -0.080289,
		-0.327437, -0.885531, -0.329574,
		42.337227, 35.106247, 47.755608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735382, 35.731995, 47.326473>,  <42.566433, 35.726120, 47.986309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735382, 35.731995, 47.326473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529942, 35.389408, 47.347172>,  <42.406677, 35.183857, 47.359589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529942, 35.389408, 47.347172>,  <42.735382, 35.731995, 47.326473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529942, 35.389408, 47.347172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175523, 0.045842, -0.983408,
		0.839887, -0.514158, -0.173874,
		-0.513598, -0.856470, 0.051744,
		42.375862, 35.132469, 47.362694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998985, 35.300850, 46.792137>,  <42.735382, 35.731995, 47.326473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998985, 35.300850, 46.792137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636532, 35.153385, 46.875088>,  <42.419060, 35.064907, 46.924858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636532, 35.153385, 46.875088>,  <42.998985, 35.300850, 46.792137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636532, 35.153385, 46.875088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165135, -0.143025, -0.975845,
		0.389419, -0.918494, 0.068720,
		-0.906137, -0.368664, 0.207372,
		42.364693, 35.042786, 46.937298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908241, 34.671665, 46.463470>,  <42.998985, 35.300850, 46.792137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908241, 34.671665, 46.463470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530285, 34.792747, 46.513340>,  <42.303509, 34.865398, 46.543262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530285, 34.792747, 46.513340>,  <42.908241, 34.671665, 46.463470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530285, 34.792747, 46.513340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161523, -0.099807, -0.981809,
		-0.284756, -0.947844, 0.143201,
		-0.944894, 0.302706, 0.124678,
		42.246815, 34.883560, 46.550743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572254, 34.189957, 46.048874>,  <42.908241, 34.671665, 46.463470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572254, 34.189957, 46.048874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328682, 34.502174, 46.105377>,  <42.182537, 34.689503, 46.139278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328682, 34.502174, 46.105377>,  <42.572254, 34.189957, 46.048874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328682, 34.502174, 46.105377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268482, -0.035245, -0.962640,
		-0.746403, -0.624108, 0.231023,
		-0.608934, 0.780542, 0.141254,
		42.146000, 34.736336, 46.147755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903309, 34.047302, 45.925499>,  <42.572254, 34.189957, 46.048874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903309, 34.047302, 45.925499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890003, 34.443108, 45.869267>,  <41.882019, 34.680592, 45.835526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890003, 34.443108, 45.869267>,  <41.903309, 34.047302, 45.925499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890003, 34.443108, 45.869267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359285, -0.143096, -0.922192,
		-0.932635, 0.019836, 0.360276,
		-0.033262, 0.989510, -0.140583,
		41.880024, 34.739960, 45.827091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378712, 34.141605, 45.458027>,  <41.903309, 34.047302, 45.925499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378712, 34.141605, 45.458027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588814, 34.481503, 45.439915>,  <41.714874, 34.685440, 45.429047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588814, 34.481503, 45.439915>,  <41.378712, 34.141605, 45.458027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588814, 34.481503, 45.439915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229822, 0.090422, -0.969023,
		-0.819323, 0.519390, 0.242783,
		0.525254, 0.849740, -0.045282,
		41.746391, 34.736423, 45.426331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883316, 34.501431, 45.142277>,  <41.378712, 34.141605, 45.458027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883316, 34.501431, 45.142277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235325, 34.688625, 45.109898>,  <41.446529, 34.800941, 45.090469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235325, 34.688625, 45.109898>,  <40.883316, 34.501431, 45.142277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235325, 34.688625, 45.109898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223235, 0.257146, -0.940235,
		-0.419203, 0.845496, 0.330765,
		0.880020, 0.467988, -0.080948,
		41.499332, 34.829021, 45.085613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802616, 35.199390, 44.828167>,  <40.883316, 34.501431, 45.142277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802616, 35.199390, 44.828167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173214, 35.068909, 44.753113>,  <41.395573, 34.990620, 44.708080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173214, 35.068909, 44.753113>,  <40.802616, 35.199390, 44.828167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173214, 35.068909, 44.753113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091940, 0.287281, -0.953423,
		0.364910, 0.900590, 0.236173,
		0.926492, -0.326200, -0.187632,
		41.451160, 34.971050, 44.696823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996754, 35.733597, 44.425076>,  <40.802616, 35.199390, 44.828167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996754, 35.733597, 44.425076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241039, 35.420856, 44.374912>,  <41.387611, 35.233212, 44.344814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241039, 35.420856, 44.374912>,  <40.996754, 35.733597, 44.425076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241039, 35.420856, 44.374912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049752, 0.120175, -0.991505,
		0.790284, 0.611769, 0.034494,
		0.610717, -0.781855, -0.125409,
		41.424255, 35.186298, 44.337288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405602, 35.876934, 43.943771>,  <40.996754, 35.733597, 44.425076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405602, 35.876934, 43.943771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472149, 35.483303, 43.918720>,  <41.512077, 35.247124, 43.903690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472149, 35.483303, 43.918720>,  <41.405602, 35.876934, 43.943771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472149, 35.483303, 43.918720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015156, 0.060952, -0.998025,
		0.985947, 0.166987, -0.004774,
		0.166366, -0.984073, -0.062626,
		41.522060, 35.188080, 43.899933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957130, 35.768593, 43.555992>,  <41.405602, 35.876934, 43.943771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957130, 35.768593, 43.555992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740005, 35.433395, 43.533676>,  <41.609730, 35.232277, 43.520287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740005, 35.433395, 43.533676>,  <41.957130, 35.768593, 43.555992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740005, 35.433395, 43.533676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063068, 0.025568, -0.997682,
		0.837482, -0.545073, 0.038973,
		-0.542813, -0.837999, -0.055789,
		41.577160, 35.181995, 43.516941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392727, 35.229538, 43.216034>,  <41.957130, 35.768593, 43.555992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392727, 35.229538, 43.216034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012974, 35.114822, 43.164772>,  <41.785122, 35.045994, 43.134014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012974, 35.114822, 43.164772>,  <42.392727, 35.229538, 43.216034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012974, 35.114822, 43.164772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229798, -0.355939, -0.905815,
		0.214158, -0.889416, 0.403825,
		-0.949384, -0.286786, -0.128159,
		41.728157, 35.028786, 43.126324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439030, 34.620293, 42.763943>,  <42.392727, 35.229538, 43.216034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439030, 34.620293, 42.763943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060055, 34.746368, 42.741943>,  <41.832672, 34.822014, 42.728745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060055, 34.746368, 42.741943>,  <42.439030, 34.620293, 42.763943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060055, 34.746368, 42.741943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004948, -0.186296, -0.982481,
		-0.319913, -0.930564, 0.178063,
		-0.947434, 0.315190, -0.054995,
		41.775826, 34.840927, 42.725445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186337, 34.210052, 42.345184>,  <42.439030, 34.620293, 42.763943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186337, 34.210052, 42.345184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911327, 34.500141, 42.330399>,  <41.746323, 34.674194, 42.321529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911327, 34.500141, 42.330399>,  <42.186337, 34.210052, 42.345184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911327, 34.500141, 42.330399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111354, -0.155588, -0.981526,
		-0.717576, -0.670703, 0.187727,
		-0.687520, 0.725224, -0.036961,
		41.705070, 34.717709, 42.319309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603092, 33.959435, 41.949684>,  <42.186337, 34.210052, 42.345184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603092, 33.959435, 41.949684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613049, 34.357224, 41.908890>,  <41.619022, 34.595898, 41.884411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613049, 34.357224, 41.908890>,  <41.603092, 33.959435, 41.949684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613049, 34.357224, 41.908890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137009, -0.097663, -0.985744,
		-0.990257, 0.038512, 0.133821,
		0.024894, 0.994474, -0.101988,
		41.620518, 34.655567, 41.878292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087536, 34.139839, 41.341339>,  <41.603092, 33.959435, 41.949684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087536, 34.139839, 41.341339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299320, 34.477287, 41.377041>,  <41.426392, 34.679756, 41.398464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299320, 34.477287, 41.377041>,  <41.087536, 34.139839, 41.341339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299320, 34.477287, 41.377041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135669, 0.188065, -0.972741,
		-0.837414, 0.502921, 0.214027,
		0.529463, 0.843624, 0.089258,
		41.458160, 34.730373, 41.403820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777348, 34.563118, 40.876316>,  <41.087536, 34.139839, 41.341339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777348, 34.563118, 40.876316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137398, 34.729656, 40.927578>,  <41.353428, 34.829578, 40.958336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137398, 34.729656, 40.927578>,  <40.777348, 34.563118, 40.876316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137398, 34.729656, 40.927578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032810, 0.228566, -0.972975,
		-0.434385, 0.880009, 0.192079,
		0.900129, 0.416344, 0.128159,
		41.407436, 34.854561, 40.966026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680313, 35.324688, 40.711155>,  <40.777348, 34.563118, 40.876316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680313, 35.324688, 40.711155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054493, 35.193428, 40.658607>,  <41.278999, 35.114670, 40.627079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054493, 35.193428, 40.658607>,  <40.680313, 35.324688, 40.711155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054493, 35.193428, 40.658607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017557, 0.328050, -0.944497,
		0.353034, 0.885832, 0.301112,
		0.935446, -0.328153, -0.131365,
		41.335125, 35.094982, 40.619198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023716, 35.912003, 40.325581>,  <40.680313, 35.324688, 40.711155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023716, 35.912003, 40.325581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272739, 35.607037, 40.254990>,  <41.422153, 35.424057, 40.212635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272739, 35.607037, 40.254990>,  <41.023716, 35.912003, 40.325581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272739, 35.607037, 40.254990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052578, 0.265752, -0.962607,
		0.780804, 0.590001, 0.205532,
		0.622560, -0.762413, -0.176479,
		41.459507, 35.378311, 40.202045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460590, 36.147461, 39.768169>,  <41.023716, 35.912003, 40.325581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460590, 36.147461, 39.768169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577938, 35.765724, 39.790714>,  <41.648346, 35.536682, 39.804241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577938, 35.765724, 39.790714>,  <41.460590, 36.147461, 39.768169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577938, 35.765724, 39.790714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378654, 0.061856, -0.923469,
		0.877814, 0.292258, 0.379510,
		0.293366, -0.954337, 0.056367,
		41.665947, 35.479424, 39.807625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234379, 35.962814, 39.700089>,  <41.460590, 36.147461, 39.768169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234379, 35.962814, 39.700089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016697, 35.648060, 39.583710>,  <41.886089, 35.459206, 39.513882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016697, 35.648060, 39.583710>,  <42.234379, 35.962814, 39.700089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016697, 35.648060, 39.583710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332636, 0.115988, -0.935895,
		0.770193, -0.606094, 0.198627,
		-0.544202, -0.786890, -0.290942,
		41.853436, 35.411991, 39.496426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623333, 35.700195, 39.193192>,  <42.234379, 35.962814, 39.700089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623333, 35.700195, 39.193192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270363, 35.540276, 39.094009>,  <42.058582, 35.444324, 39.034500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270363, 35.540276, 39.094009>,  <42.623333, 35.700195, 39.193192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270363, 35.540276, 39.094009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256283, 0.033475, -0.966022,
		0.394516, -0.915991, 0.072923,
		-0.882426, -0.399800, -0.247959,
		42.005634, 35.420334, 39.019623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786972, 35.228725, 38.700375>,  <42.623333, 35.700195, 39.193192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786972, 35.228725, 38.700375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391865, 35.269539, 38.653217>,  <42.154800, 35.294029, 38.624924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391865, 35.269539, 38.653217>,  <42.786972, 35.228725, 38.700375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391865, 35.269539, 38.653217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120254, 0.017308, -0.992592,
		-0.099242, -0.994630, -0.029367,
		-0.987770, 0.102038, -0.117891,
		42.095535, 35.300152, 38.617851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659840, 34.711315, 38.227459>,  <42.786972, 35.228725, 38.700375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659840, 34.711315, 38.227459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341625, 34.950764, 38.190006>,  <42.150696, 35.094433, 38.167534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341625, 34.950764, 38.190006>,  <42.659840, 34.711315, 38.227459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341625, 34.950764, 38.190006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188105, 0.097106, -0.977337,
		-0.575967, -0.795121, -0.189855,
		-0.795537, 0.598626, -0.093636,
		42.102962, 35.130352, 38.161915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348141, 34.456463, 37.623322>,  <42.659840, 34.711315, 38.227459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348141, 34.456463, 37.623322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234661, 34.830776, 37.707050>,  <42.166573, 35.055367, 37.757286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234661, 34.830776, 37.707050>,  <42.348141, 34.456463, 37.623322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234661, 34.830776, 37.707050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189214, 0.268629, -0.944477,
		-0.940059, -0.228344, -0.253274,
		-0.283702, 0.935787, 0.209321,
		42.149551, 35.111511, 37.769848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743008, 34.647850, 37.230442>,  <42.348141, 34.456463, 37.623322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743008, 34.647850, 37.230442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960716, 34.973457, 37.311581>,  <42.091343, 35.168819, 37.360264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960716, 34.973457, 37.311581>,  <41.743008, 34.647850, 37.230442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960716, 34.973457, 37.311581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110783, 0.309424, -0.944449,
		-0.831562, 0.491565, 0.258590,
		0.544272, 0.814015, 0.202848,
		42.123997, 35.217663, 37.372437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399311, 35.180115, 37.030354>,  <41.743008, 34.647850, 37.230442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399311, 35.180115, 37.030354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789577, 35.260651, 36.995613>,  <42.023735, 35.308971, 36.974770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789577, 35.260651, 36.995613>,  <41.399311, 35.180115, 37.030354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789577, 35.260651, 36.995613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161681, 0.393024, -0.905202,
		-0.148118, 0.897215, 0.416012,
		0.975664, 0.201338, -0.086849,
		42.082275, 35.321053, 36.969559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406399, 35.884003, 36.780968>,  <41.399311, 35.180115, 37.030354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406399, 35.884003, 36.780968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521458, 35.637100, 36.488052>,  <41.590492, 35.488956, 36.312302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521458, 35.637100, 36.488052>,  <41.406399, 35.884003, 36.780968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521458, 35.637100, 36.488052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187047, 0.713674, -0.675043,
		0.939293, 0.331148, 0.089831,
		0.287649, -0.617260, -0.732290,
		41.607754, 35.451923, 36.268364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923351, 36.112923, 36.312553>,  <41.406399, 35.884003, 36.780968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923351, 36.112923, 36.312553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735634, 35.846348, 36.080822>,  <41.623005, 35.686401, 35.941784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735634, 35.846348, 36.080822>,  <41.923351, 36.112923, 36.312553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735634, 35.846348, 36.080822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269692, 0.732887, -0.624614,
		0.840852, -0.136885, -0.523671,
		-0.469292, -0.666438, -0.579332,
		41.594845, 35.646416, 35.907021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138271, 36.137253, 35.574108>,  <41.923351, 36.112923, 36.312553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138271, 36.137253, 35.574108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786575, 35.947792, 35.553768>,  <41.575558, 35.834114, 35.541565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786575, 35.947792, 35.553768>,  <42.138271, 36.137253, 35.574108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786575, 35.947792, 35.553768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338591, 0.696456, -0.632696,
		0.335093, -0.539076, -0.772728,
		-0.879243, -0.473651, -0.050851,
		41.522800, 35.805698, 35.538513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513271, 35.925304, 34.938953>,  <42.138271, 36.137253, 35.574108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513271, 35.925304, 34.938953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802654, 36.063351, 35.178120>,  <42.976284, 36.146179, 35.321621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802654, 36.063351, 35.178120>,  <42.513271, 35.925304, 34.938953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802654, 36.063351, 35.178120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339554, 0.576208, -0.743430,
		-0.601096, 0.740864, 0.299674,
		0.723455, 0.345117, 0.597919,
		43.019691, 36.166885, 35.357494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579712, 36.607391, 34.903606>,  <42.513271, 35.925304, 34.938953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579712, 36.607391, 34.903606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944519, 36.451839, 34.955761>,  <43.163403, 36.358509, 34.987053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944519, 36.451839, 34.955761>,  <42.579712, 36.607391, 34.903606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944519, 36.451839, 34.955761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323722, 0.487270, -0.811032,
		0.251860, 0.781882, 0.570286,
		0.912015, -0.388881, 0.130389,
		43.218124, 36.335175, 34.994877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165951, 37.183651, 34.952335>,  <42.579712, 36.607391, 34.903606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165951, 37.183651, 34.952335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277645, 36.823368, 34.819218>,  <43.344662, 36.607197, 34.739346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277645, 36.823368, 34.819218>,  <43.165951, 37.183651, 34.952335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277645, 36.823368, 34.819218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212239, 0.395903, -0.893429,
		0.936473, 0.178846, 0.301716,
		0.279236, -0.900708, -0.332794,
		43.361416, 36.553154, 34.719379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937325, 37.161488, 34.749207>,  <43.165951, 37.183651, 34.952335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937325, 37.161488, 34.749207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732449, 36.876678, 34.557091>,  <43.609524, 36.705791, 34.441822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732449, 36.876678, 34.557091>,  <43.937325, 37.161488, 34.749207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732449, 36.876678, 34.557091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310389, 0.367966, -0.876504,
		0.800826, -0.598013, 0.032538,
		-0.512188, -0.712027, -0.480293,
		43.578793, 36.663071, 34.413002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359146, 37.029831, 34.214622>,  <43.937325, 37.161488, 34.749207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359146, 37.029831, 34.214622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.998146, 36.898819, 34.102749>,  <43.781548, 36.820213, 34.035625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.998146, 36.898819, 34.102749>,  <44.359146, 37.029831, 34.214622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998146, 36.898819, 34.102749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169206, 0.327526, -0.929568,
		0.396064, -0.886257, -0.240171,
		-0.902498, -0.327530, -0.279681,
		43.727398, 36.800560, 34.018845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490818, 36.878021, 33.478794>,  <44.359146, 37.029831, 34.214622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.490818, 36.878021, 33.478794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094273, 36.914742, 33.516270>,  <43.856346, 36.936775, 33.538757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094273, 36.914742, 33.516270>,  <44.490818, 36.878021, 33.478794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094273, 36.914742, 33.516270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036127, 0.495570, -0.867816,
		-0.126096, -0.863703, -0.487972,
		-0.991360, 0.091800, 0.093693,
		43.796864, 36.942280, 33.544376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167984, 36.577110, 32.813240>,  <44.490818, 36.878021, 33.478794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167984, 36.577110, 32.813240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897800, 36.816685, 32.985302>,  <43.735691, 36.960430, 33.088539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897800, 36.816685, 32.985302>,  <44.167984, 36.577110, 32.813240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897800, 36.816685, 32.985302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224354, 0.388770, -0.893601,
		-0.702441, -0.700097, -0.128224,
		-0.675457, 0.598934, 0.430157,
		43.695164, 36.996365, 33.114349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.568474, 36.481892, 32.368019>,  <44.167984, 36.577110, 32.813240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.568474, 36.481892, 32.368019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521294, 36.828144, 32.562656>,  <43.492985, 37.035896, 32.679440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521294, 36.828144, 32.562656>,  <43.568474, 36.481892, 32.368019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521294, 36.828144, 32.562656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201722, 0.458908, -0.865282,
		-0.972315, -0.200218, 0.120487,
		-0.117953, 0.865631, 0.486591,
		43.485909, 37.087833, 32.708633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906033, 36.740021, 32.172161>,  <43.568474, 36.481892, 32.368019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906033, 36.740021, 32.172161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142216, 37.037655, 32.297180>,  <43.283928, 37.216236, 32.372192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142216, 37.037655, 32.297180>,  <42.906033, 36.740021, 32.172161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142216, 37.037655, 32.297180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100573, 0.452086, -0.886286,
		-0.800775, 0.491884, 0.341775,
		0.590462, 0.744089, 0.312549,
		43.319355, 37.260883, 32.390945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578865, 37.419983, 31.969442>,  <42.906033, 36.740021, 32.172161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578865, 37.419983, 31.969442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962543, 37.513256, 32.033394>,  <43.192753, 37.569221, 32.071766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962543, 37.513256, 32.033394>,  <42.578865, 37.419983, 31.969442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962543, 37.513256, 32.033394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035951, 0.460292, -0.887040,
		-0.280434, 0.856596, 0.433128,
		0.959200, 0.233184, 0.159877,
		43.250305, 37.583210, 32.081356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606152, 38.067608, 31.745441>,  <42.578865, 37.419983, 31.969442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606152, 38.067608, 31.745441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001095, 38.006882, 31.763626>,  <43.238060, 37.970444, 31.774538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001095, 38.006882, 31.763626>,  <42.606152, 38.067608, 31.745441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001095, 38.006882, 31.763626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120236, 0.530716, -0.838978,
		0.103245, 0.833841, 0.542263,
		0.987362, -0.151820, 0.045464,
		43.297302, 37.961334, 31.777266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863914, 38.672691, 31.574961>,  <42.606152, 38.067608, 31.745441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863914, 38.672691, 31.574961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161411, 38.415150, 31.503063>,  <43.339909, 38.260624, 31.459925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161411, 38.415150, 31.503063>,  <42.863914, 38.672691, 31.574961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161411, 38.415150, 31.503063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178875, 0.450771, -0.874533,
		0.644093, 0.618273, 0.450425,
		0.743739, -0.643851, -0.179745,
		43.384533, 38.221996, 31.449141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489193, 39.061329, 31.389153>,  <42.863914, 38.672691, 31.574961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489193, 39.061329, 31.389153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531815, 38.690662, 31.244968>,  <43.557388, 38.468262, 31.158459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531815, 38.690662, 31.244968>,  <43.489193, 39.061329, 31.389153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531815, 38.690662, 31.244968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231024, 0.375675, -0.897495,
		0.967096, 0.012355, 0.254112,
		0.106552, -0.926669, -0.360459,
		43.563782, 38.412663, 31.136831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.235569, 39.086613, 31.114420>,  <43.489193, 39.061329, 31.389153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.235569, 39.086613, 31.114420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027214, 38.783218, 30.957766>,  <43.902199, 38.601181, 30.863773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027214, 38.783218, 30.957766>,  <44.235569, 39.086613, 31.114420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027214, 38.783218, 30.957766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313852, 0.256486, -0.914173,
		0.793832, -0.599100, 0.104449,
		-0.520891, -0.758481, -0.391635,
		43.870945, 38.555676, 30.840275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676456, 38.627731, 30.666460>,  <44.235569, 39.086613, 31.114420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676456, 38.627731, 30.666460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.309872, 38.558563, 30.522131>,  <44.089920, 38.517063, 30.435534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.309872, 38.558563, 30.522131>,  <44.676456, 38.627731, 30.666460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.309872, 38.558563, 30.522131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357780, 0.049572, -0.932489,
		0.179137, -0.983687, 0.016438,
		-0.916462, -0.172924, -0.360824,
		44.034931, 38.506687, 30.413883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778828, 38.186836, 30.050072>,  <44.676456, 38.627731, 30.666460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.778828, 38.186836, 30.050072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401218, 38.316551, 30.025854>,  <44.174652, 38.394379, 30.011324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401218, 38.316551, 30.025854>,  <44.778828, 38.186836, 30.050072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401218, 38.316551, 30.025854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106687, 0.126446, -0.986220,
		-0.312159, -0.937471, -0.153964,
		-0.944020, 0.324283, -0.060544,
		44.118011, 38.413837, 30.007690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467167, 37.854706, 29.481632>,  <44.778828, 38.186836, 30.050072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467167, 37.854706, 29.481632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228897, 38.172344, 29.529921>,  <44.085934, 38.362926, 29.558893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228897, 38.172344, 29.529921>,  <44.467167, 37.854706, 29.481632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228897, 38.172344, 29.529921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103821, 0.072913, -0.991920,
		-0.796485, -0.603399, 0.039012,
		-0.595679, 0.794100, 0.120720,
		44.050194, 38.410576, 29.566137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936455, 37.719082, 29.046183>,  <44.467167, 37.854706, 29.481632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936455, 37.719082, 29.046183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943501, 38.115437, 29.099602>,  <43.947727, 38.353249, 29.131653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943501, 38.115437, 29.099602>,  <43.936455, 37.719082, 29.046183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943501, 38.115437, 29.099602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081050, 0.131714, -0.987969,
		-0.996555, 0.028222, -0.077991,
		0.017610, 0.990886, 0.133547,
		43.948784, 38.412701, 29.139666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498177, 38.017578, 28.591318>,  <43.936455, 37.719082, 29.046183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498177, 38.017578, 28.591318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734200, 38.329762, 28.673994>,  <43.875813, 38.517071, 28.723598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734200, 38.329762, 28.673994>,  <43.498177, 38.017578, 28.591318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734200, 38.329762, 28.673994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151858, 0.358723, -0.921009,
		-0.792949, 0.512064, 0.330187,
		0.590061, 0.780454, 0.206688,
		43.911217, 38.563896, 28.736000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267498, 38.519844, 28.239571>,  <43.498177, 38.017578, 28.591318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267498, 38.519844, 28.239571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628777, 38.672745, 28.317667>,  <43.845543, 38.764484, 28.364525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628777, 38.672745, 28.317667>,  <43.267498, 38.519844, 28.239571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628777, 38.672745, 28.317667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033867, 0.389983, -0.920199,
		-0.427890, 0.837732, 0.339285,
		0.903196, 0.382254, 0.195241,
		43.899734, 38.787422, 28.376240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271648, 39.174675, 27.869917>,  <43.267498, 38.519844, 28.239571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271648, 39.174675, 27.869917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648483, 39.050579, 27.920866>,  <43.874584, 38.976120, 27.951435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648483, 39.050579, 27.920866>,  <43.271648, 39.174675, 27.869917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648483, 39.050579, 27.920866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196241, 0.201960, -0.959532,
		0.271963, 0.928958, 0.251145,
		0.942086, -0.310242, 0.127374,
		43.931110, 38.957508, 27.959078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.677422, 39.520000, 27.429461>,  <43.271648, 39.174675, 27.869917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.677422, 39.520000, 27.429461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954445, 39.246635, 27.521828>,  <44.120659, 39.082619, 27.577248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954445, 39.246635, 27.521828>,  <43.677422, 39.520000, 27.429461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954445, 39.246635, 27.521828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346296, 0.034158, -0.937503,
		0.632810, 0.729237, 0.260318,
		0.692554, -0.683408, 0.230917,
		44.162212, 39.041615, 27.591103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278351, 39.766418, 27.155216>,  <43.677422, 39.520000, 27.429461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278351, 39.766418, 27.155216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251694, 39.369873, 27.200386>,  <44.235699, 39.131947, 27.227488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251694, 39.369873, 27.200386>,  <44.278351, 39.766418, 27.155216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251694, 39.369873, 27.200386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339849, -0.128960, -0.931596,
		0.938116, -0.023709, 0.345510,
		-0.066644, -0.991366, 0.112922,
		44.231701, 39.072464, 27.234262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000221, 39.465149, 27.128891>,  <44.278351, 39.766418, 27.155216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000221, 39.465149, 27.128891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683975, 39.256744, 27.000217>,  <44.494228, 39.131702, 26.923014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683975, 39.256744, 27.000217>,  <45.000221, 39.465149, 27.128891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683975, 39.256744, 27.000217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292172, 0.140701, -0.945959,
		0.538116, -0.841874, 0.040985,
		-0.790611, -0.521011, -0.321686,
		44.446793, 39.100441, 26.903711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313934, 39.109859, 26.740007>,  <45.000221, 39.465149, 27.128891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313934, 39.109859, 26.740007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.934593, 39.039112, 26.634682>,  <44.706989, 38.996662, 26.571486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.934593, 39.039112, 26.634682>,  <45.313934, 39.109859, 26.740007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.934593, 39.039112, 26.634682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282927, -0.096310, -0.954294,
		0.143427, -0.979510, 0.141378,
		-0.948357, -0.176871, -0.263316,
		44.650085, 38.986050, 26.555687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.250198, 38.520004, 26.438055>,  <45.313934, 39.109859, 26.740007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.250198, 38.520004, 26.438055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.968731, 38.744900, 26.264277>,  <44.799850, 38.879837, 26.160009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.968731, 38.744900, 26.264277>,  <45.250198, 38.520004, 26.438055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968731, 38.744900, 26.264277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367563, -0.235233, -0.899757,
		-0.608074, -0.792814, -0.041133,
		-0.703664, 0.562238, -0.434448,
		44.757633, 38.913570, 26.133942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.887783, 38.574493, 25.730667>,  <45.250198, 38.520004, 26.438055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.887783, 38.574493, 25.730667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.028679, 38.948658, 25.718431>,  <45.113216, 39.173157, 25.711090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.028679, 38.948658, 25.718431>,  <44.887783, 38.574493, 25.730667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028679, 38.948658, 25.718431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265958, 0.068704, -0.961533,
		-0.897327, 0.346824, 0.272980,
		0.352237, 0.935411, -0.030591,
		45.134350, 39.229282, 25.709253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.944675, 38.103672, 25.232513>,  <44.887783, 38.574493, 25.730667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.944675, 38.103672, 25.232513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860714, 37.715637, 25.183729>,  <44.810337, 37.482819, 25.154459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860714, 37.715637, 25.183729>,  <44.944675, 38.103672, 25.232513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.860714, 37.715637, 25.183729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537219, -0.010214, -0.843381,
		0.816906, -0.242550, 0.523292,
		-0.209907, -0.970085, -0.121959,
		44.797741, 37.424610, 25.147142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.499577, 37.475197, 25.214111>,  <44.944675, 38.103672, 25.232513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.499577, 37.475197, 25.214111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190121, 37.423813, 24.965927>,  <45.004448, 37.392982, 24.817017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190121, 37.423813, 24.965927>,  <45.499577, 37.475197, 25.214111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190121, 37.423813, 24.965927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632234, -0.221294, -0.742502,
		-0.041918, -0.966708, 0.252423,
		-0.773643, -0.128466, -0.620462,
		44.958027, 37.385273, 24.779789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589554, 36.735966, 25.343264>,  <45.499577, 37.475197, 25.214111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589554, 36.735966, 25.343264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660397, 36.347725, 25.408455>,  <45.702904, 36.114780, 25.447569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660397, 36.347725, 25.408455>,  <45.589554, 36.735966, 25.343264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.660397, 36.347725, 25.408455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658368, 0.006249, 0.752670,
		-0.731563, -0.240601, -0.637908,
		0.177107, -0.970604, 0.162976,
		45.713528, 36.056545, 25.457348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.927048, 36.310825, 25.342312>,  <45.589554, 36.735966, 25.343264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.927048, 36.310825, 25.342312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.218395, 36.159927, 25.571104>,  <45.393204, 36.069389, 25.708380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.218395, 36.159927, 25.571104>,  <44.927048, 36.310825, 25.342312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.218395, 36.159927, 25.571104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612834, 0.014684, 0.790075,
		-0.306453, -0.925996, -0.220496,
		0.728368, -0.377249, 0.571982,
		45.436905, 36.046753, 25.742699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034042, 35.671875, 25.750137>,  <44.927048, 36.310825, 25.342312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034042, 35.671875, 25.750137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652954, 35.772408, 25.681829>,  <44.424301, 35.832729, 25.640844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652954, 35.772408, 25.681829>,  <45.034042, 35.671875, 25.750137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652954, 35.772408, 25.681829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101351, 0.266969, 0.958361,
		0.286460, 0.930354, -0.228873,
		-0.952717, 0.251335, -0.170768,
		44.367138, 35.847809, 25.630600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869350, 36.277443, 26.043631>,  <45.034042, 35.671875, 25.750137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.869350, 36.277443, 26.043631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517517, 36.087551, 26.031242>,  <44.306416, 35.973618, 26.023809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517517, 36.087551, 26.031242>,  <44.869350, 36.277443, 26.043631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517517, 36.087551, 26.031242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143214, 0.202144, 0.968828,
		-0.453672, 0.856603, -0.245791,
		-0.879586, -0.474731, -0.030970,
		44.253643, 35.945133, 26.021952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312923, 36.522854, 26.376154>,  <44.869350, 36.277443, 26.043631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.312923, 36.522854, 26.376154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201340, 36.138885, 26.365383>,  <44.134388, 35.908504, 26.358921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201340, 36.138885, 26.365383>,  <44.312923, 36.522854, 26.376154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201340, 36.138885, 26.365383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112266, 0.004752, 0.993667,
		-0.953718, 0.280217, -0.109092,
		-0.278960, -0.959925, -0.026926,
		44.117653, 35.850906, 26.357306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.933117, 36.497837, 26.882145>,  <44.312923, 36.522854, 26.376154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.933117, 36.497837, 26.882145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.002281, 36.106693, 26.834999>,  <44.043781, 35.872005, 26.806711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.002281, 36.106693, 26.834999>,  <43.933117, 36.497837, 26.882145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002281, 36.106693, 26.834999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146972, -0.143945, 0.978611,
		-0.973910, -0.151892, -0.168608,
		0.172913, -0.977859, -0.117866,
		44.054153, 35.813335, 26.799639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213463, 36.116447, 27.179239>,  <43.933117, 36.497837, 26.882145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213463, 36.116447, 27.179239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539616, 35.884972, 27.172583>,  <43.735306, 35.746086, 27.168589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539616, 35.884972, 27.172583>,  <43.213463, 36.116447, 27.179239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539616, 35.884972, 27.172583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069394, -0.126238, 0.989570,
		-0.574751, -0.805721, -0.143089,
		0.815380, -0.578686, -0.016643,
		43.784229, 35.711365, 27.167589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120407, 35.341152, 27.571157>,  <43.213463, 36.116447, 27.179239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120407, 35.341152, 27.571157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509331, 35.433529, 27.556822>,  <43.742683, 35.488956, 27.548222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509331, 35.433529, 27.556822>,  <43.120407, 35.341152, 27.571157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509331, 35.433529, 27.556822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078943, -0.180214, 0.980454,
		0.219973, -0.956131, -0.193455,
		0.972307, 0.230945, -0.035837,
		43.801022, 35.502811, 27.546070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389416, 34.976131, 28.142611>,  <43.120407, 35.341152, 27.571157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389416, 34.976131, 28.142611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709145, 35.197456, 28.048862>,  <43.900982, 35.330254, 27.992613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709145, 35.197456, 28.048862>,  <43.389416, 34.976131, 28.142611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709145, 35.197456, 28.048862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360255, -0.129094, 0.923878,
		0.480941, -0.822907, -0.302523,
		0.799320, 0.553316, -0.234370,
		43.948940, 35.363453, 27.978552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003849, 34.766697, 28.549829>,  <43.389416, 34.976131, 28.142611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003849, 34.766697, 28.549829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129578, 35.129730, 28.438473>,  <44.205013, 35.347549, 28.371658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129578, 35.129730, 28.438473>,  <44.003849, 34.766697, 28.549829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129578, 35.129730, 28.438473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457200, 0.112280, 0.882248,
		0.831968, -0.404589, -0.379653,
		0.314320, 0.907580, -0.278391,
		44.223873, 35.402004, 28.354956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687157, 34.746735, 28.675459>,  <44.003849, 34.766697, 28.549829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687157, 34.746735, 28.675459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567039, 35.128246, 28.670891>,  <44.494968, 35.357155, 28.668150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567039, 35.128246, 28.670891>,  <44.687157, 34.746735, 28.675459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567039, 35.128246, 28.670891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549806, 0.182862, 0.815030,
		0.779448, 0.238467, -0.579305,
		-0.300291, 0.953779, -0.011420,
		44.476952, 35.414379, 28.667465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.303890, 35.097771, 28.761953>,  <44.687157, 34.746735, 28.675459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.303890, 35.097771, 28.761953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003548, 35.342628, 28.861149>,  <44.823341, 35.489544, 28.920666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003548, 35.342628, 28.861149>,  <45.303890, 35.097771, 28.761953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003548, 35.342628, 28.861149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495118, 0.273186, 0.824759,
		0.437124, 0.742058, -0.508205,
		-0.750854, 0.612144, 0.247990,
		44.778290, 35.526272, 28.935545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.544880, 35.682266, 28.954136>,  <45.303890, 35.097771, 28.761953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.544880, 35.682266, 28.954136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.177074, 35.717152, 29.107435>,  <44.956390, 35.738083, 29.199415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.177074, 35.717152, 29.107435>,  <45.544880, 35.682266, 28.954136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.177074, 35.717152, 29.107435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391953, 0.276201, 0.877546,
		-0.029316, 0.957134, -0.288157,
		-0.919518, 0.087218, 0.383248,
		44.901218, 35.743317, 29.222410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.647072, 36.263031, 29.473673>,  <45.544880, 35.682266, 28.954136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.647072, 36.263031, 29.473673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.309666, 36.095356, 29.607996>,  <45.107224, 35.994751, 29.688591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.309666, 36.095356, 29.607996>,  <45.647072, 36.263031, 29.473673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.309666, 36.095356, 29.607996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341074, 0.064934, 0.937791,
		-0.414920, 0.905573, 0.088202,
		-0.843511, -0.419191, 0.335810,
		45.056614, 35.969597, 29.708738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.504120, 36.606434, 30.070488>,  <45.647072, 36.263031, 29.473673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.504120, 36.606434, 30.070488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252689, 36.297367, 30.105980>,  <45.101830, 36.111927, 30.127275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252689, 36.297367, 30.105980>,  <45.504120, 36.606434, 30.070488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252689, 36.297367, 30.105980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116002, 0.019671, 0.993054,
		-0.769044, 0.634508, 0.077266,
		-0.628581, -0.772666, 0.088732,
		45.064114, 36.065567, 30.132599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.107872, 36.712502, 30.673428>,  <45.504120, 36.606434, 30.070488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.107872, 36.712502, 30.673428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108627, 36.317890, 30.607994>,  <45.109081, 36.081123, 30.568735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108627, 36.317890, 30.607994>,  <45.107872, 36.712502, 30.673428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.108627, 36.317890, 30.607994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115630, -0.162269, 0.979948,
		-0.993291, -0.020768, 0.113765,
		0.001891, -0.986528, -0.163582,
		45.109196, 36.021931, 30.558920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638981, 36.502438, 31.104881>,  <45.107872, 36.712502, 30.673428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638981, 36.502438, 31.104881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872860, 36.193630, 31.005186>,  <45.013187, 36.008347, 30.945368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872860, 36.193630, 31.005186>,  <44.638981, 36.502438, 31.104881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872860, 36.193630, 31.005186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023944, -0.323519, 0.945919,
		-0.810896, -0.547110, -0.207647,
		0.584700, -0.772014, -0.249240,
		45.048271, 35.962025, 30.930414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.319283, 35.946468, 31.433819>,  <44.638981, 36.502438, 31.104881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.319283, 35.946468, 31.433819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.707722, 35.891846, 31.355516>,  <44.940784, 35.859074, 31.308535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.707722, 35.891846, 31.355516>,  <44.319283, 35.946468, 31.433819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707722, 35.891846, 31.355516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135032, -0.361971, 0.922357,
		-0.196812, -0.922133, -0.333070,
		0.971098, -0.136556, -0.195757,
		44.999050, 35.850880, 31.296789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.482624, 35.396690, 31.811146>,  <44.319283, 35.946468, 31.433819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.482624, 35.396690, 31.811146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.862038, 35.501801, 31.740456>,  <45.089687, 35.564865, 31.698042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.862038, 35.501801, 31.740456>,  <44.482624, 35.396690, 31.811146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.862038, 35.501801, 31.740456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269627, -0.377459, 0.885904,
		0.166087, -0.887961, -0.428884,
		0.948534, 0.262776, -0.176727,
		45.146599, 35.580635, 31.687437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.935947, 34.823212, 31.947607>,  <44.482624, 35.396690, 31.811146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.935947, 34.823212, 31.947607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173573, 35.144020, 31.972425>,  <45.316147, 35.336506, 31.987316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173573, 35.144020, 31.972425>,  <44.935947, 34.823212, 31.947607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173573, 35.144020, 31.972425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390520, -0.354972, 0.849405,
		0.703270, -0.480366, -0.524081,
		0.594059, 0.802025, 0.062049,
		45.351791, 35.384628, 31.991039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627502, 34.467274, 32.133514>,  <44.935947, 34.823212, 31.947607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627502, 34.467274, 32.133514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.669304, 34.855381, 32.220829>,  <45.694386, 35.088245, 32.273216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.669304, 34.855381, 32.220829>,  <45.627502, 34.467274, 32.133514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.669304, 34.855381, 32.220829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417545, -0.242013, 0.875834,
		0.902627, -0.000384, -0.430424,
		0.104504, 0.970273, 0.218287,
		45.700657, 35.146461, 32.286316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346420, 34.490028, 32.442322>,  <45.627502, 34.467274, 32.133514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346420, 34.490028, 32.442322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.152504, 34.815445, 32.570774>,  <46.036156, 35.010696, 32.647846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.152504, 34.815445, 32.570774>,  <46.346420, 34.490028, 32.442322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.152504, 34.815445, 32.570774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317154, -0.178654, 0.931395,
		0.815102, 0.553378, -0.171409,
		-0.484791, 0.813545, 0.321128,
		46.007069, 35.059509, 32.667114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.797642, 34.856079, 32.861801>,  <46.346420, 34.490028, 32.442322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.797642, 34.856079, 32.861801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432270, 34.985424, 32.960667>,  <46.213047, 35.063030, 33.019985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432270, 34.985424, 32.960667>,  <46.797642, 34.856079, 32.861801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.432270, 34.985424, 32.960667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194762, -0.185954, 0.963062,
		0.357379, 0.927824, 0.106876,
		-0.913427, 0.323362, 0.247161,
		46.158241, 35.082432, 33.034817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.869823, 35.289703, 33.349216>,  <46.797642, 34.856079, 32.861801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.869823, 35.289703, 33.349216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.483837, 35.197399, 33.399155>,  <46.252243, 35.142017, 33.429115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.483837, 35.197399, 33.399155>,  <46.869823, 35.289703, 33.349216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.483837, 35.197399, 33.399155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168593, -0.180789, 0.968964,
		-0.201024, 0.956069, 0.213359,
		-0.964969, -0.230756, 0.124843,
		46.194347, 35.128174, 33.436607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.521957, 35.791298, 33.806690>,  <46.869823, 35.289703, 33.349216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.521957, 35.791298, 33.806690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.409767, 35.407406, 33.812946>,  <46.342453, 35.177071, 33.816700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.409767, 35.407406, 33.812946>,  <46.521957, 35.791298, 33.806690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.409767, 35.407406, 33.812946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319055, -0.077843, 0.944534,
		-0.905284, 0.269907, 0.328041,
		-0.280472, -0.959735, 0.015645,
		46.325626, 35.119484, 33.817638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.325314, 35.550983, 34.448261>,  <46.521957, 35.791298, 33.806690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.325314, 35.550983, 34.448261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.535439, 35.228119, 34.340527>,  <46.661514, 35.034401, 34.275887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.535439, 35.228119, 34.340527>,  <46.325314, 35.550983, 34.448261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.535439, 35.228119, 34.340527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610253, 0.136788, 0.780308,
		-0.592991, -0.574267, 0.564428,
		0.525312, -0.807159, -0.269334,
		46.693031, 34.985970, 34.259727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.474152, 34.899281, 34.968727>,  <46.325314, 35.550983, 34.448261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.474152, 34.899281, 34.968727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.753185, 34.948776, 34.686432>,  <46.920605, 34.978474, 34.517056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.753185, 34.948776, 34.686432>,  <46.474152, 34.899281, 34.968727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.753185, 34.948776, 34.686432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656647, 0.283698, 0.698807,
		0.286712, -0.950892, 0.116624,
		0.697575, 0.123775, -0.705740,
		46.962460, 34.985901, 34.474712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.077862, 34.513046, 34.973572>,  <46.474152, 34.899281, 34.968727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.077862, 34.513046, 34.973572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.159824, 34.878426, 34.832932>,  <47.209003, 35.097652, 34.748547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.159824, 34.878426, 34.832932>,  <47.077862, 34.513046, 34.973572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.159824, 34.878426, 34.832932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489339, 0.215502, 0.845048,
		0.847680, -0.345206, -0.402829,
		0.204905, 0.913450, -0.351600,
		47.221294, 35.152462, 34.727451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.707516, 34.540241, 35.005947>,  <47.077862, 34.513046, 34.973572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.707516, 34.540241, 35.005947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.577286, 34.918278, 35.017284>,  <47.499146, 35.145100, 35.024086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.577286, 34.918278, 35.017284>,  <47.707516, 34.540241, 35.005947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.577286, 34.918278, 35.017284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591805, 0.180313, 0.785655,
		0.737405, 0.272563, -0.618015,
		-0.325577, 0.945091, 0.028340,
		47.479614, 35.201805, 35.025787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.544098, 37.935123, 46.854401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220886, 37.700092, 46.871571>,  <38.026958, 37.559074, 46.881874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220886, 37.700092, 46.871571>,  <38.544098, 37.935123, 46.854401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220886, 37.700092, 46.871571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034407, -0.119806, -0.992201,
		0.588136, -0.800251, 0.117023,
		-0.808030, -0.587576, 0.042928,
		37.978477, 37.523819, 46.884449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601913, 37.358780, 46.385624>,  <38.544098, 37.935123, 46.854401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601913, 37.358780, 46.385624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.204369, 37.371731, 46.427929>,  <37.965839, 37.379501, 46.453312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.204369, 37.371731, 46.427929>,  <38.601913, 37.358780, 46.385624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204369, 37.371731, 46.427929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110604, -0.283411, -0.952599,
		-0.000868, -0.958452, 0.285253,
		-0.993864, 0.032377, 0.105763,
		37.906208, 37.381443, 46.459660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346935, 36.717587, 46.204449>,  <38.601913, 37.358780, 46.385624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346935, 36.717587, 46.204449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.051506, 36.981628, 46.149639>,  <37.874249, 37.140053, 46.116753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.051506, 36.981628, 46.149639>,  <38.346935, 36.717587, 46.204449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051506, 36.981628, 46.149639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206320, -0.414799, -0.886213,
		-0.641828, -0.626262, 0.442551,
		-0.738572, 0.660104, -0.137019,
		37.829933, 37.179661, 46.108532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817139, 36.373413, 45.974159>,  <38.346935, 36.717587, 46.204449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817139, 36.373413, 45.974159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729496, 36.749779, 45.870876>,  <37.676910, 36.975597, 45.808907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729496, 36.749779, 45.870876>,  <37.817139, 36.373413, 45.974159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729496, 36.749779, 45.870876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160086, -0.295716, -0.941767,
		-0.962478, -0.165013, 0.215421,
		-0.219107, 0.940916, -0.258204,
		37.663765, 37.032055, 45.793415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245750, 36.248516, 45.516983>,  <37.817139, 36.373413, 45.974159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245750, 36.248516, 45.516983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375790, 36.619698, 45.444080>,  <37.453815, 36.842407, 45.400337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375790, 36.619698, 45.444080>,  <37.245750, 36.248516, 45.516983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375790, 36.619698, 45.444080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017456, -0.198582, -0.979929,
		-0.945518, 0.315394, -0.080757,
		0.325101, 0.927950, -0.182258,
		37.473320, 36.898083, 45.389404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739780, 36.521221, 45.133755>,  <37.245750, 36.248516, 45.516983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739780, 36.521221, 45.133755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.060539, 36.748028, 45.058441>,  <37.252995, 36.884113, 45.013252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.060539, 36.748028, 45.058441>,  <36.739780, 36.521221, 45.133755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060539, 36.748028, 45.058441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099009, -0.184663, -0.977802,
		-0.589199, 0.802740, -0.091941,
		0.801899, 0.567017, -0.188282,
		37.301109, 36.918133, 45.001957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528584, 36.775547, 44.521744>,  <36.739780, 36.521221, 45.133755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528584, 36.775547, 44.521744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915447, 36.874729, 44.544094>,  <37.147564, 36.934238, 44.557503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915447, 36.874729, 44.544094>,  <36.528584, 36.775547, 44.521744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915447, 36.874729, 44.544094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058227, -0.002172, -0.998301,
		-0.247411, 0.968769, -0.016538,
		0.967160, 0.247953, 0.055871,
		37.205597, 36.949116, 44.560856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701591, 37.480129, 44.192749>,  <36.528584, 36.775547, 44.521744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701591, 37.480129, 44.192749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.042778, 37.271904, 44.177414>,  <37.247490, 37.146969, 44.168213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.042778, 37.271904, 44.177414>,  <36.701591, 37.480129, 44.192749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042778, 37.271904, 44.177414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033218, 0.019165, -0.999264,
		0.520914, 0.853609, -0.000946,
		0.852963, -0.520562, -0.038339,
		37.298668, 37.115734, 44.165913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250458, 37.855572, 43.797935>,  <36.701591, 37.480129, 44.192749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250458, 37.855572, 43.797935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.369587, 37.473778, 43.791431>,  <37.441067, 37.244701, 43.787529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.369587, 37.473778, 43.791431>,  <37.250458, 37.855572, 43.797935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369587, 37.473778, 43.791431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151714, 0.064147, -0.986341,
		0.942487, 0.291291, 0.163913,
		0.297827, -0.954481, -0.016265,
		37.458935, 37.187435, 43.786552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661888, 37.866714, 43.276054>,  <37.250458, 37.855572, 43.797935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661888, 37.866714, 43.276054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.596485, 37.473839, 43.313084>,  <37.557243, 37.238113, 43.335300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.596485, 37.473839, 43.313084>,  <37.661888, 37.866714, 43.276054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596485, 37.473839, 43.313084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019222, -0.096991, -0.995100,
		0.986355, -0.160926, 0.034738,
		-0.163507, -0.982189, 0.092574,
		37.547432, 37.179184, 43.340855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052277, 37.548088, 42.840454>,  <37.661888, 37.866714, 43.276054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052277, 37.548088, 42.840454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.776283, 37.264519, 42.898914>,  <37.610687, 37.094379, 42.933990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.776283, 37.264519, 42.898914>,  <38.052277, 37.548088, 42.840454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776283, 37.264519, 42.898914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108541, -0.098296, -0.989220,
		0.715645, -0.698405, -0.009125,
		-0.689979, -0.708921, 0.146150,
		37.569290, 37.051842, 42.942760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311909, 37.019817, 42.549927>,  <38.052277, 37.548088, 42.840454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311909, 37.019817, 42.549927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.918720, 36.949566, 42.528271>,  <37.682808, 36.907417, 42.515278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.918720, 36.949566, 42.528271>,  <38.311909, 37.019817, 42.549927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918720, 36.949566, 42.528271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071258, -0.092663, -0.993145,
		0.169404, -0.980087, 0.103599,
		-0.982967, -0.175625, -0.054142,
		37.623829, 36.896877, 42.512028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377201, 36.485840, 42.133938>,  <38.311909, 37.019817, 42.549927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377201, 36.485840, 42.133938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.992748, 36.594547, 42.114494>,  <37.762077, 36.659771, 42.102829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.992748, 36.594547, 42.114494>,  <38.377201, 36.485840, 42.133938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992748, 36.594547, 42.114494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010733, -0.139156, -0.990212,
		-0.275873, -0.952249, 0.130831,
		-0.961134, 0.271769, -0.048609,
		37.704407, 36.676079, 42.099911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141106, 36.012375, 41.781593>,  <38.377201, 36.485840, 42.133938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141106, 36.012375, 41.781593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.872318, 36.305649, 41.739838>,  <37.711048, 36.481613, 41.714783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.872318, 36.305649, 41.739838>,  <38.141106, 36.012375, 41.781593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872318, 36.305649, 41.739838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031446, -0.112582, -0.993145,
		-0.739916, -0.670640, 0.052596,
		-0.671964, 0.733189, -0.104390,
		37.670731, 36.525604, 41.708519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635880, 35.781803, 41.330334>,  <38.141106, 36.012375, 41.781593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635880, 35.781803, 41.330334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574192, 36.177013, 41.328568>,  <37.537178, 36.414139, 41.327507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574192, 36.177013, 41.328568>,  <37.635880, 35.781803, 41.330334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574192, 36.177013, 41.328568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053228, 0.003849, -0.998575,
		-0.986602, -0.154234, -0.053184,
		-0.154219, 0.988027, -0.004412,
		37.527927, 36.473423, 41.327244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032345, 35.874813, 40.947525>,  <37.635880, 35.781803, 41.330334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032345, 35.874813, 40.947525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.254948, 36.206623, 40.928829>,  <37.388508, 36.405708, 40.917610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.254948, 36.206623, 40.928829>,  <37.032345, 35.874813, 40.947525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254948, 36.206623, 40.928829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244513, 0.109750, -0.963415,
		-0.794049, 0.547575, 0.263907,
		0.556506, 0.829528, -0.046742,
		37.421898, 36.455482, 40.914806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782383, 36.356785, 40.365635>,  <37.032345, 35.874813, 40.947525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782383, 36.356785, 40.365635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.136124, 36.531887, 40.430489>,  <37.348370, 36.636948, 40.469402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.136124, 36.531887, 40.430489>,  <36.782383, 36.356785, 40.365635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136124, 36.531887, 40.430489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203859, -0.049702, -0.977738,
		-0.419947, 0.897721, -0.133194,
		0.884356, 0.437751, 0.162136,
		37.401432, 36.663212, 40.479130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851788, 36.844929, 39.876728>,  <36.782383, 36.356785, 40.365635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851788, 36.844929, 39.876728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.239616, 36.829983, 39.973499>,  <37.472313, 36.821014, 40.031563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.239616, 36.829983, 39.973499>,  <36.851788, 36.844929, 39.876728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239616, 36.829983, 39.973499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244777, 0.159731, -0.956332,
		-0.002910, 0.986453, 0.164017,
		0.969575, -0.037364, 0.241926,
		37.530487, 36.818775, 40.046078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143429, 37.425636, 39.516815>,  <36.851788, 36.844929, 39.876728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143429, 37.425636, 39.516815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.453285, 37.189461, 39.607430>,  <37.639198, 37.047756, 39.661797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.453285, 37.189461, 39.607430>,  <37.143429, 37.425636, 39.516815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453285, 37.189461, 39.607430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235809, -0.062694, -0.969775,
		0.586791, 0.804647, 0.090664,
		0.774642, -0.590434, 0.226531,
		37.685677, 37.012329, 39.675388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727665, 37.721611, 39.242500>,  <37.143429, 37.425636, 39.516815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727665, 37.721611, 39.242500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.803246, 37.329884, 39.271446>,  <37.848595, 37.094849, 39.288815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.803246, 37.329884, 39.271446>,  <37.727665, 37.721611, 39.242500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803246, 37.329884, 39.271446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205054, -0.032721, -0.978204,
		0.960338, 0.199676, 0.194630,
		0.188955, -0.979315, 0.072368,
		37.859932, 37.036087, 39.293156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346073, 37.553230, 38.948654>,  <37.727665, 37.721611, 39.242500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346073, 37.553230, 38.948654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.158077, 37.200470, 38.933914>,  <38.045280, 36.988811, 38.925072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.158077, 37.200470, 38.933914>,  <38.346073, 37.553230, 38.948654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158077, 37.200470, 38.933914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399842, -0.175497, -0.899626,
		0.786916, -0.437548, 0.435103,
		-0.469988, -0.881903, -0.036848,
		38.017082, 36.935898, 38.922859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835289, 37.259865, 38.542683>,  <38.346073, 37.553230, 38.948654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835289, 37.259865, 38.542683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498943, 37.043385, 38.539993>,  <38.297134, 36.913498, 38.538380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498943, 37.043385, 38.539993>,  <38.835289, 37.259865, 38.542683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498943, 37.043385, 38.539993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188024, -0.280444, -0.941275,
		0.507534, -0.792750, 0.337575,
		-0.840866, -0.541201, -0.006721,
		38.246685, 36.881023, 38.537975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404896, 37.357841, 38.228306>,  <38.835289, 37.259865, 38.542683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404896, 37.357841, 38.228306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.781368, 37.491165, 38.250504>,  <40.007252, 37.571159, 38.263821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.781368, 37.491165, 38.250504>,  <39.404896, 37.357841, 38.228306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781368, 37.491165, 38.250504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052941, -0.016741, 0.998457,
		0.333721, -0.942670, 0.001889,
		0.941184, 0.333306, 0.055493,
		40.063725, 37.591156, 38.267151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597794, 36.998959, 38.704781>,  <39.404896, 37.357841, 38.228306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597794, 36.998959, 38.704781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.889091, 37.271500, 38.675327>,  <40.063869, 37.435024, 38.657654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.889091, 37.271500, 38.675327>,  <39.597794, 36.998959, 38.704781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889091, 37.271500, 38.675327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207526, -0.116852, 0.971225,
		0.653139, -0.722571, -0.226495,
		0.728246, 0.681349, -0.073632,
		40.107567, 37.475903, 38.653236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338104, 36.725540, 39.077606>,  <39.597794, 36.998959, 38.704781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338104, 36.725540, 39.077606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.294659, 37.122288, 39.051056>,  <40.268593, 37.360336, 39.035126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.294659, 37.122288, 39.051056>,  <40.338104, 36.725540, 39.077606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294659, 37.122288, 39.051056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081101, 0.075389, 0.993851,
		0.990771, 0.102559, -0.088629,
		-0.108610, 0.991866, -0.066375,
		40.262077, 37.419849, 39.031143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894764, 37.043415, 39.434498>,  <40.338104, 36.725540, 39.077606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894764, 37.043415, 39.434498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.622139, 37.335896, 39.423080>,  <40.458565, 37.511383, 39.416229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.622139, 37.335896, 39.423080>,  <40.894764, 37.043415, 39.434498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622139, 37.335896, 39.423080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175508, 0.201207, 0.963697,
		0.710400, 0.651812, -0.265467,
		-0.681564, 0.731202, -0.028539,
		40.417671, 37.555256, 39.414520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162045, 37.594814, 39.831501>,  <40.894764, 37.043415, 39.434498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162045, 37.594814, 39.831501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.767242, 37.658707, 39.838490>,  <40.530361, 37.697041, 39.842682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.767242, 37.658707, 39.838490>,  <41.162045, 37.594814, 39.831501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767242, 37.658707, 39.838490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028665, 0.068071, 0.997269,
		0.158103, 0.984811, -0.071765,
		-0.987006, 0.159728, 0.017467,
		40.471142, 37.706627, 39.843731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201008, 38.234940, 40.062885>,  <41.162045, 37.594814, 39.831501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201008, 38.234940, 40.062885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.828117, 38.107243, 40.131039>,  <40.604382, 38.030624, 40.171928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.828117, 38.107243, 40.131039>,  <41.201008, 38.234940, 40.062885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828117, 38.107243, 40.131039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075342, 0.289285, 0.954274,
		-0.353934, 0.902440, -0.245628,
		-0.932231, -0.319244, 0.170379,
		40.548447, 38.011471, 40.182152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074512, 38.558121, 40.630272>,  <41.201008, 38.234940, 40.062885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074512, 38.558121, 40.630272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758060, 38.313530, 40.635983>,  <40.568188, 38.166775, 40.639408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758060, 38.313530, 40.635983>,  <41.074512, 38.558121, 40.630272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758060, 38.313530, 40.635983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077781, -0.077428, 0.993959,
		-0.606676, 0.787466, 0.108817,
		-0.791135, -0.611475, 0.014276,
		40.520721, 38.130089, 40.640266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597679, 38.858570, 41.023018>,  <41.074512, 38.558121, 40.630272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597679, 38.858570, 41.023018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.494087, 38.473400, 41.053219>,  <40.431934, 38.242298, 41.071339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.494087, 38.473400, 41.053219>,  <40.597679, 38.858570, 41.023018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494087, 38.473400, 41.053219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139124, 0.040168, 0.989460,
		-0.955812, 0.266751, 0.123564,
		-0.258976, -0.962928, 0.075505,
		40.416393, 38.184521, 41.075871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035946, 38.805607, 41.509476>,  <40.597679, 38.858570, 41.023018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035946, 38.805607, 41.509476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.197922, 38.440598, 41.486401>,  <40.295109, 38.221592, 41.472557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.197922, 38.440598, 41.486401>,  <40.035946, 38.805607, 41.509476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197922, 38.440598, 41.486401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005634, -0.065578, 0.997832,
		-0.914325, -0.403739, -0.031697,
		0.404942, -0.912521, -0.057685,
		40.319405, 38.166840, 41.469093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542522, 38.416054, 41.875240>,  <40.035946, 38.805607, 41.509476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542522, 38.416054, 41.875240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.900074, 38.236759, 41.872063>,  <40.114605, 38.129181, 41.870155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.900074, 38.236759, 41.872063>,  <39.542522, 38.416054, 41.875240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900074, 38.236759, 41.872063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071922, -0.160884, 0.984349,
		-0.442499, -0.879319, -0.176049,
		0.893880, -0.448236, -0.007948,
		40.168240, 38.102287, 41.869678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531326, 37.857166, 42.352749>,  <39.542522, 38.416054, 41.875240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531326, 37.857166, 42.352749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924660, 37.914291, 42.307762>,  <40.160660, 37.948566, 42.280769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924660, 37.914291, 42.307762>,  <39.531326, 37.857166, 42.352749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924660, 37.914291, 42.307762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136078, -0.168060, 0.976339,
		0.120536, -0.975376, -0.184694,
		0.983338, 0.142817, -0.112470,
		40.219662, 37.957134, 42.274021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838631, 37.307106, 42.575470>,  <39.531326, 37.857166, 42.352749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838631, 37.307106, 42.575470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.134895, 37.573933, 42.607597>,  <40.312653, 37.734028, 42.626873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.134895, 37.573933, 42.607597>,  <39.838631, 37.307106, 42.575470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134895, 37.573933, 42.607597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160149, -0.291370, 0.943110,
		0.652515, -0.685660, -0.322635,
		0.740659, 0.667063, 0.080316,
		40.357094, 37.774052, 42.631691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128704, 36.969589, 43.199799>,  <39.838631, 37.307106, 42.575470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128704, 36.969589, 43.199799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.294510, 37.331505, 43.160740>,  <40.393993, 37.548653, 43.137306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.294510, 37.331505, 43.160740>,  <40.128704, 36.969589, 43.199799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294510, 37.331505, 43.160740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160064, 0.033138, 0.986550,
		0.895856, -0.424569, -0.131088,
		0.414514, 0.904789, -0.097645,
		40.418865, 37.602943, 43.131447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811508, 36.952187, 43.581615>,  <40.128704, 36.969589, 43.199799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811508, 36.952187, 43.581615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.764641, 37.348503, 43.554485>,  <40.736519, 37.586292, 43.538208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.764641, 37.348503, 43.554485>,  <40.811508, 36.952187, 43.581615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764641, 37.348503, 43.554485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079784, 0.077470, 0.993797,
		0.989901, 0.111035, -0.088127,
		-0.117173, 0.990793, -0.067828,
		40.729488, 37.645741, 43.534138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435925, 37.358788, 43.926418>,  <40.811508, 36.952187, 43.581615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435925, 37.358788, 43.926418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.108906, 37.588932, 43.936081>,  <40.912697, 37.727016, 43.941879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.108906, 37.588932, 43.936081>,  <41.435925, 37.358788, 43.926418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108906, 37.588932, 43.936081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175923, 0.209594, 0.961832,
		0.548336, 0.790590, -0.272571,
		-0.817544, 0.575359, 0.024155,
		40.863644, 37.761539, 43.943329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593994, 37.864246, 44.343983>,  <41.435925, 37.358788, 43.926418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593994, 37.864246, 44.343983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.194687, 37.887337, 44.348415>,  <40.955101, 37.901192, 44.351074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.194687, 37.887337, 44.348415>,  <41.593994, 37.864246, 44.343983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194687, 37.887337, 44.348415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020880, 0.172020, 0.984872,
		0.054945, 0.983401, -0.172928,
		-0.998271, 0.057724, 0.011082,
		40.895206, 37.904655, 44.351742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344952, 38.508583, 44.684799>,  <41.593994, 37.864246, 44.343983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344952, 38.508583, 44.684799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.033710, 38.258053, 44.703842>,  <40.846966, 38.107735, 44.715267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.033710, 38.258053, 44.703842>,  <41.344952, 38.508583, 44.684799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033710, 38.258053, 44.703842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077692, 0.171171, 0.982173,
		-0.623309, 0.760537, -0.181850,
		-0.778106, -0.626326, 0.047605,
		40.800278, 38.070156, 44.718124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896229, 38.830490, 45.046638>,  <41.344952, 38.508583, 44.684799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896229, 38.830490, 45.046638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.765751, 38.455605, 45.096001>,  <40.687462, 38.230675, 45.125618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.765751, 38.455605, 45.096001>,  <40.896229, 38.830490, 45.046638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765751, 38.455605, 45.096001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008633, 0.127592, 0.991789,
		-0.945263, 0.324583, -0.033529,
		-0.326196, -0.937212, 0.123410,
		40.667892, 38.174442, 45.133022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.262268, 38.830750, 45.559059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.312393, 38.433960, 45.552231>,  <40.342468, 38.195889, 45.548134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.312393, 38.433960, 45.552231>,  <40.262268, 38.830750, 45.559059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312393, 38.433960, 45.552231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150625, -0.036026, 0.987934,
		-0.980616, -0.121233, -0.153931,
		0.125316, -0.991970, -0.017067,
		40.349987, 38.136368, 45.547112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723270, 38.554680, 46.003868>,  <40.262268, 38.830750, 45.559059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723270, 38.554680, 46.003868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.015293, 38.281986, 45.984909>,  <40.190506, 38.118370, 45.973534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.015293, 38.281986, 45.984909>,  <39.723270, 38.554680, 46.003868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015293, 38.281986, 45.984909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098037, -0.173115, 0.980010,
		-0.676316, -0.710819, -0.193220,
		0.730059, -0.681739, -0.047393,
		40.234310, 38.077465, 45.970692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513157, 38.051586, 46.456253>,  <39.723270, 38.554680, 46.003868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513157, 38.051586, 46.456253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.896538, 37.957928, 46.391075>,  <40.126564, 37.901733, 46.351967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.896538, 37.957928, 46.391075>,  <39.513157, 38.051586, 46.456253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896538, 37.957928, 46.391075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108545, -0.228893, 0.967381,
		-0.263811, -0.944871, -0.193966,
		0.958448, -0.234152, -0.162946,
		40.184074, 37.887684, 46.342194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719257, 37.227249, 46.670151>,  <39.513157, 38.051586, 46.456253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719257, 37.227249, 46.670151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.039066, 37.466297, 46.694202>,  <40.230953, 37.609726, 46.708633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.039066, 37.466297, 46.694202>,  <39.719257, 37.227249, 46.670151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039066, 37.466297, 46.694202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178326, -0.331777, 0.926350,
		0.573551, -0.729917, -0.371834,
		0.799524, 0.597617, 0.060128,
		40.278923, 37.645584, 46.712242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205975, 36.862381, 47.075581>,  <39.719257, 37.227249, 46.670151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205975, 36.862381, 47.075581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.346783, 37.236347, 47.093536>,  <40.431267, 37.460728, 47.104309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.346783, 37.236347, 47.093536>,  <40.205975, 36.862381, 47.075581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346783, 37.236347, 47.093536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228389, -0.132305, 0.964538,
		0.907702, -0.329281, -0.260098,
		0.352016, 0.934917, 0.044890,
		40.452389, 37.516823, 47.107002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837887, 36.779438, 47.368065>,  <40.205975, 36.862381, 47.075581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837887, 36.779438, 47.368065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.751980, 37.167423, 47.413742>,  <40.700436, 37.400215, 47.441147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.751980, 37.167423, 47.413742>,  <40.837887, 36.779438, 47.368065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751980, 37.167423, 47.413742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158020, -0.080872, 0.984119,
		0.963796, 0.229404, -0.135905,
		-0.214770, 0.969966, 0.114195,
		40.687550, 37.458412, 47.448002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310257, 36.983295, 47.885235>,  <40.837887, 36.779438, 47.368065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310257, 36.983295, 47.885235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.015530, 37.253704, 47.888950>,  <40.838692, 37.415951, 47.891178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.015530, 37.253704, 47.888950>,  <41.310257, 36.983295, 47.885235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015530, 37.253704, 47.888950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054714, 0.045927, 0.997445,
		0.673869, 0.735448, -0.070828,
		-0.736822, 0.676023, 0.009290,
		40.794483, 37.456512, 47.891739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497013, 37.559357, 48.324680>,  <41.310257, 36.983295, 47.885235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497013, 37.559357, 48.324680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.098274, 37.590469, 48.330860>,  <40.859032, 37.609138, 48.334568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.098274, 37.590469, 48.330860>,  <41.497013, 37.559357, 48.324680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098274, 37.590469, 48.330860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017197, 0.021861, 0.999613,
		0.077416, 0.996731, -0.023130,
		-0.996851, 0.077784, 0.015449,
		40.799217, 37.613804, 48.335495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329144, 38.103630, 48.711956>,  <41.497013, 37.559357, 48.324680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329144, 38.103630, 48.711956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.998581, 37.879967, 48.738503>,  <40.800243, 37.745770, 48.754433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.998581, 37.879967, 48.738503>,  <41.329144, 38.103630, 48.711956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998581, 37.879967, 48.738503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069662, 0.218493, 0.973349,
		-0.558754, 0.799755, -0.219515,
		-0.826403, -0.559154, 0.066371,
		40.750660, 37.712219, 48.758415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938961, 38.462864, 49.149834>,  <41.329144, 38.103630, 48.711956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938961, 38.462864, 49.149834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.783581, 38.094357, 49.142174>,  <40.690353, 37.873253, 49.137577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.783581, 38.094357, 49.142174>,  <40.938961, 38.462864, 49.149834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783581, 38.094357, 49.142174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038094, -0.004711, 0.999263,
		-0.920681, 0.388897, -0.033264,
		-0.388454, -0.921269, -0.019152,
		40.667046, 37.817974, 49.136429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435265, 38.436741, 49.661388>,  <40.938961, 38.462864, 49.149834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435265, 38.436741, 49.661388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.501804, 38.048069, 49.594257>,  <40.541729, 37.814865, 49.553978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.501804, 38.048069, 49.594257>,  <40.435265, 38.436741, 49.661388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501804, 38.048069, 49.594257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031420, -0.175335, 0.984007,
		-0.985566, -0.158419, -0.059698,
		0.166353, -0.971680, -0.167826,
		40.551712, 37.756565, 49.543911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818645, 38.089935, 49.881119>,  <40.435265, 38.436741, 49.661388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818645, 38.089935, 49.881119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.128296, 37.836872, 49.872368>,  <40.314087, 37.685036, 49.867115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.128296, 37.836872, 49.872368>,  <39.818645, 38.089935, 49.881119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128296, 37.836872, 49.872368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108589, -0.166761, 0.979999,
		-0.623654, -0.756263, -0.197793,
		0.774122, -0.632659, -0.021880,
		40.360531, 37.647076, 49.865803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651299, 37.431248, 50.201851>,  <39.818645, 38.089935, 49.881119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651299, 37.431248, 50.201851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.049541, 37.397781, 50.218670>,  <40.288486, 37.377701, 50.228760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.049541, 37.397781, 50.218670>,  <39.651299, 37.431248, 50.201851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049541, 37.397781, 50.218670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070543, -0.374880, 0.924386,
		-0.061579, -0.923290, -0.379135,
		0.995606, -0.083668, 0.042047,
		40.348225, 37.372681, 50.231285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787773, 36.675697, 50.350990>,  <39.651299, 37.431248, 50.201851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787773, 36.675697, 50.350990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.093185, 36.917110, 50.442871>,  <40.276432, 37.061958, 50.498001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.093185, 36.917110, 50.442871>,  <39.787773, 36.675697, 50.350990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093185, 36.917110, 50.442871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018266, -0.375745, 0.926543,
		0.645513, -0.703248, -0.297917,
		0.763531, 0.603537, 0.229702,
		40.322247, 37.098171, 50.511784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232193, 36.268139, 50.718578>,  <39.787773, 36.675697, 50.350990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232193, 36.268139, 50.718578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.403286, 36.612919, 50.827457>,  <40.505943, 36.819786, 50.892784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.403286, 36.612919, 50.827457>,  <40.232193, 36.268139, 50.718578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403286, 36.612919, 50.827457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253200, -0.403331, 0.879326,
		0.867716, -0.307200, -0.390765,
		0.427737, 0.861947, 0.272193,
		40.531609, 36.871502, 50.909115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713890, 36.060719, 51.230885>,  <40.232193, 36.268139, 50.718578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713890, 36.060719, 51.230885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.716244, 36.454094, 51.303341>,  <40.717655, 36.690121, 51.346813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.716244, 36.454094, 51.303341>,  <40.713890, 36.060719, 51.230885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716244, 36.454094, 51.303341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455128, -0.163925, 0.875207,
		0.890406, 0.077293, -0.448556,
		0.005882, 0.983440, 0.181138,
		40.718010, 36.749126, 51.357681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357483, 36.194328, 51.507965>,  <40.713890, 36.060719, 51.230885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357483, 36.194328, 51.507965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.128281, 36.496536, 51.634995>,  <40.990761, 36.677860, 51.711212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.128281, 36.496536, 51.634995>,  <41.357483, 36.194328, 51.507965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128281, 36.496536, 51.634995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201178, -0.245974, 0.948169,
		0.794475, 0.607196, -0.011049,
		-0.573007, 0.755520, 0.317575,
		40.956379, 36.723190, 51.730267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768753, 36.601334, 52.032375>,  <41.357483, 36.194328, 51.507965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768753, 36.601334, 52.032375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.380741, 36.665283, 52.105576>,  <41.147934, 36.703651, 52.149494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.380741, 36.665283, 52.105576>,  <41.768753, 36.601334, 52.032375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380741, 36.665283, 52.105576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217040, 0.231376, 0.948345,
		0.109276, 0.959638, -0.259140,
		-0.970027, 0.159875, 0.182996,
		41.089733, 36.713245, 52.160473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834763, 37.145283, 52.509361>,  <41.768753, 36.601334, 52.032375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834763, 37.145283, 52.509361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.468063, 36.985981, 52.521774>,  <41.248043, 36.890400, 52.529221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.468063, 36.985981, 52.521774>,  <41.834763, 37.145283, 52.509361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468063, 36.985981, 52.521774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022325, 0.128638, 0.991440,
		-0.398834, 0.908211, -0.126820,
		-0.916751, -0.398251, 0.031029,
		41.193039, 36.866505, 52.531082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479488, 37.535152, 53.043076>,  <41.834763, 37.145283, 52.509361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479488, 37.535152, 53.043076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.282578, 37.188976, 53.005810>,  <41.164433, 36.981270, 52.983452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.282578, 37.188976, 53.005810>,  <41.479488, 37.535152, 53.043076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282578, 37.188976, 53.005810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267210, 0.048387, 0.962423,
		-0.828410, 0.498673, -0.255074,
		-0.492277, -0.865439, -0.093166,
		41.134895, 36.929344, 52.977859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899940, 37.674252, 53.342571>,  <41.479488, 37.535152, 53.043076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899940, 37.674252, 53.342571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.954128, 37.278053, 53.333008>,  <40.986641, 37.040337, 53.327271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.954128, 37.278053, 53.333008>,  <40.899940, 37.674252, 53.342571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954128, 37.278053, 53.333008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176762, -0.047904, 0.983087,
		-0.974887, -0.128950, -0.181571,
		0.135467, -0.990494, -0.023908,
		40.994770, 36.980904, 53.325836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300591, 37.503704, 53.462788>,  <40.899940, 37.674252, 53.342571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300591, 37.503704, 53.462788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.545403, 37.204708, 53.566071>,  <40.692291, 37.025311, 53.628040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.545403, 37.204708, 53.566071>,  <40.300591, 37.503704, 53.462788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545403, 37.204708, 53.566071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280507, 0.100076, 0.954621,
		-0.739412, -0.656688, -0.148426,
		0.612034, -0.747493, 0.258203,
		40.729012, 36.980461, 53.643532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034565, 36.937927, 53.911716>,  <40.300591, 37.503704, 53.462788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034565, 36.937927, 53.911716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.422695, 36.969395, 54.003181>,  <40.655571, 36.988274, 54.058060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.422695, 36.969395, 54.003181>,  <40.034565, 36.937927, 53.911716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422695, 36.969395, 54.003181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241280, 0.251697, 0.937247,
		0.016177, -0.964603, 0.263208,
		0.970321, 0.078669, 0.228667,
		40.713791, 36.992996, 54.071781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944633, 36.813164, 54.611088>,  <40.034565, 36.937927, 53.911716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944633, 36.813164, 54.611088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.299950, 36.979286, 54.532646>,  <40.513142, 37.078960, 54.485580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.299950, 36.979286, 54.532646>,  <39.944633, 36.813164, 54.611088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299950, 36.979286, 54.532646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018449, 0.458906, 0.888294,
		0.458906, -0.785447, 0.415305,
		-0.888294, -0.415305, 0.196104,
		40.566437, 37.103878, 54.473816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265934, 37.175781, 54.715378>,  <39.944633, 36.813164, 54.611088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265934, 37.175781, 54.715378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.879272, 37.097889, 54.781902>,  <38.647274, 37.051155, 54.821815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.879272, 37.097889, 54.781902>,  <39.265934, 37.175781, 54.715378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879272, 37.097889, 54.781902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149011, -0.100462, -0.983719,
		0.208265, -0.975699, 0.068095,
		-0.966655, -0.194728, 0.166313,
		38.589275, 37.039471, 54.831795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016163, 36.505379, 54.295692>,  <39.265934, 37.175781, 54.715378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016163, 36.505379, 54.295692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.684479, 36.715523, 54.372005>,  <38.485466, 36.841610, 54.417793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.684479, 36.715523, 54.372005>,  <39.016163, 36.505379, 54.295692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684479, 36.715523, 54.372005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270465, -0.078440, -0.959529,
		-0.489134, -0.847256, 0.207136,
		-0.829214, 0.525361, 0.190785,
		38.435715, 36.873131, 54.429241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342968, 36.053219, 54.154179>,  <39.016163, 36.505379, 54.295692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342968, 36.053219, 54.154179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.286457, 36.447964, 54.122841>,  <38.252552, 36.684811, 54.104038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.286457, 36.447964, 54.122841>,  <38.342968, 36.053219, 54.154179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286457, 36.447964, 54.122841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308104, -0.119041, -0.943876,
		-0.940804, -0.109209, 0.320875,
		-0.141277, 0.986865, -0.078346,
		38.244076, 36.744022, 54.099339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823521, 36.080894, 53.685143>,  <38.342968, 36.053219, 54.154179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823521, 36.080894, 53.685143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.931461, 36.466003, 53.691502>,  <37.996227, 36.697067, 53.695316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.931461, 36.466003, 53.691502>,  <37.823521, 36.080894, 53.685143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931461, 36.466003, 53.691502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016352, 0.021094, -0.999644,
		-0.962762, 0.269498, 0.021435,
		0.269854, 0.962770, 0.015902,
		38.012417, 36.754833, 53.696274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253342, 36.419331, 53.377335>,  <37.823521, 36.080894, 53.685143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253342, 36.419331, 53.377335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.576099, 36.653042, 53.342602>,  <37.769753, 36.793270, 53.321762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.576099, 36.653042, 53.342602>,  <37.253342, 36.419331, 53.377335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576099, 36.653042, 53.342602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239566, 0.189323, -0.952242,
		-0.539939, 0.789158, 0.292738,
		0.806892, 0.584282, -0.086833,
		37.818169, 36.828327, 53.316551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016579, 36.913166, 52.899036>,  <37.253342, 36.419331, 53.377335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016579, 36.913166, 52.899036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.415424, 36.943089, 52.904179>,  <37.654732, 36.961040, 52.907265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.415424, 36.943089, 52.904179>,  <37.016579, 36.913166, 52.899036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415424, 36.943089, 52.904179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002155, 0.197194, -0.980362,
		-0.075873, 0.977506, 0.196786,
		0.997115, 0.074807, 0.012856,
		37.714558, 36.965530, 52.908035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200375, 37.498516, 52.522533>,  <37.016579, 36.913166, 52.899036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200375, 37.498516, 52.522533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527615, 37.268486, 52.522106>,  <37.723957, 37.130466, 52.521851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527615, 37.268486, 52.522106>,  <37.200375, 37.498516, 52.522533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527615, 37.268486, 52.522106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159349, 0.228472, -0.960421,
		0.552563, 0.785547, 0.278550,
		0.818097, -0.575080, -0.001069,
		37.773045, 37.095963, 52.521786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624889, 38.005844, 52.274776>,  <37.200375, 37.498516, 52.522533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624889, 38.005844, 52.274776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746841, 37.634422, 52.190086>,  <37.820015, 37.411568, 52.139275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746841, 37.634422, 52.190086>,  <37.624889, 38.005844, 52.274776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746841, 37.634422, 52.190086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218622, 0.284605, -0.933383,
		0.926958, 0.238286, 0.289774,
		0.304883, -0.928558, -0.211722,
		37.838306, 37.355854, 52.126568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066010, 38.128216, 51.698875>,  <37.624889, 38.005844, 52.274776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066010, 38.128216, 51.698875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.020893, 37.731575, 51.724194>,  <37.993824, 37.493591, 51.739384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.020893, 37.731575, 51.724194>,  <38.066010, 38.128216, 51.698875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020893, 37.731575, 51.724194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217502, -0.086799, -0.972193,
		0.969521, -0.095891, 0.225465,
		-0.112795, -0.991600, 0.063297,
		37.987053, 37.434093, 51.743183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580151, 37.911499, 51.334110>,  <38.066010, 38.128216, 51.698875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580151, 37.911499, 51.334110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.327431, 37.601902, 51.350887>,  <38.175797, 37.416142, 51.360954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.327431, 37.601902, 51.350887>,  <38.580151, 37.911499, 51.334110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327431, 37.601902, 51.350887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069764, -0.110675, -0.991405,
		0.771984, -0.623445, 0.123921,
		-0.631801, -0.773995, 0.041945,
		38.137890, 37.369705, 51.363472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981056, 37.406288, 51.158382>,  <38.580151, 37.911499, 51.334110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981056, 37.406288, 51.158382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.609035, 37.293671, 51.063953>,  <38.385822, 37.226101, 51.007294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.609035, 37.293671, 51.063953>,  <38.981056, 37.406288, 51.158382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609035, 37.293671, 51.063953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291234, -0.173151, -0.940851,
		0.224018, -0.943795, 0.243035,
		-0.930053, -0.281548, -0.236077,
		38.330021, 37.209206, 50.993130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086060, 36.950260, 50.591255>,  <38.981056, 37.406288, 51.158382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086060, 36.950260, 50.591255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.697636, 37.032230, 50.542187>,  <38.464581, 37.081413, 50.512745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.697636, 37.032230, 50.542187>,  <39.086060, 36.950260, 50.591255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697636, 37.032230, 50.542187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097499, -0.128726, -0.986876,
		-0.218030, -0.970275, 0.105020,
		-0.971060, 0.204929, -0.122667,
		38.406319, 37.093708, 50.505386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833904, 36.437805, 50.129257>,  <39.086060, 36.950260, 50.591255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833904, 36.437805, 50.129257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.574081, 36.741276, 50.109283>,  <38.418190, 36.923359, 50.097301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.574081, 36.741276, 50.109283>,  <38.833904, 36.437805, 50.129257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574081, 36.741276, 50.109283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194389, -0.229202, -0.953771,
		-0.735046, -0.609819, 0.296357,
		-0.649554, 0.758674, -0.049932,
		38.379215, 36.968880, 50.094303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234043, 36.193977, 49.789249>,  <38.833904, 36.437805, 50.129257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234043, 36.193977, 49.789249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214958, 36.590157, 49.737511>,  <38.203506, 36.827866, 49.706467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214958, 36.590157, 49.737511>,  <38.234043, 36.193977, 49.789249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214958, 36.590157, 49.737511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144596, -0.134978, -0.980241,
		-0.988340, -0.028066, 0.149655,
		-0.047712, 0.990451, -0.129346,
		38.200645, 36.887291, 49.698708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692020, 36.320522, 49.307587>,  <38.234043, 36.193977, 49.789249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692020, 36.320522, 49.307587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.841049, 36.691418, 49.322670>,  <37.930466, 36.913956, 49.331718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.841049, 36.691418, 49.322670>,  <37.692020, 36.320522, 49.307587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841049, 36.691418, 49.322670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179366, 0.111821, -0.977407,
		-0.910503, 0.357392, 0.207977,
		0.372574, 0.927236, 0.037709,
		37.952820, 36.969589, 49.333984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285824, 36.613197, 48.873577>,  <37.692020, 36.320522, 49.307587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285824, 36.613197, 48.873577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.596539, 36.865082, 48.876995>,  <37.782967, 37.016212, 48.879044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.596539, 36.865082, 48.876995>,  <37.285824, 36.613197, 48.873577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596539, 36.865082, 48.876995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064962, 0.093612, -0.993487,
		-0.626407, 0.771171, 0.113623,
		0.776785, 0.629708, 0.008542,
		37.829575, 37.053993, 48.879559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063816, 37.210899, 48.609688>,  <37.285824, 36.613197, 48.873577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063816, 37.210899, 48.609688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.460564, 37.185040, 48.565842>,  <37.698612, 37.169525, 48.539536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.460564, 37.185040, 48.565842>,  <37.063816, 37.210899, 48.609688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460564, 37.185040, 48.565842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087001, 0.284125, -0.954832,
		0.092869, 0.956605, 0.276191,
		0.991870, -0.064645, -0.109612,
		37.758125, 37.165646, 48.532959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236210, 37.879845, 48.359119>,  <37.063816, 37.210899, 48.609688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236210, 37.879845, 48.359119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.523861, 37.619793, 48.260986>,  <37.696449, 37.463760, 48.202106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.523861, 37.619793, 48.260986>,  <37.236210, 37.879845, 48.359119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523861, 37.619793, 48.260986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213279, 0.129513, -0.968369,
		0.661340, 0.748703, -0.045523,
		0.719125, -0.650130, -0.245335,
		37.739597, 37.424755, 48.187386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631062, 38.238834, 47.892052>,  <37.236210, 37.879845, 48.359119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631062, 38.238834, 47.892052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.698948, 37.848579, 47.836441>,  <37.739677, 37.614426, 47.803074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.698948, 37.848579, 47.836441>,  <37.631062, 38.238834, 47.892052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698948, 37.848579, 47.836441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089407, 0.125252, -0.988088,
		0.981429, 0.180123, -0.065972,
		0.169714, -0.975637, -0.139030,
		37.749863, 37.555889, 47.794731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153671, 38.287762, 47.353596>,  <37.631062, 38.238834, 47.892052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153671, 38.287762, 47.353596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995632, 37.920620, 47.338459>,  <37.900810, 37.700333, 47.329376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995632, 37.920620, 47.338459>,  <38.153671, 38.287762, 47.353596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995632, 37.920620, 47.338459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043076, 0.022638, -0.998815,
		0.917628, -0.396260, 0.030594,
		-0.395098, -0.917859, -0.037843,
		37.877102, 37.645264, 47.327106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.689156, 37.964325, 27.112715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.690243, 38.356888, 27.189484>,  <44.690895, 38.592426, 27.235544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.690243, 38.356888, 27.189484>,  <44.689156, 37.964325, 27.112715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690243, 38.356888, 27.189484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340456, -0.179550, 0.922958,
		0.940256, -0.067846, 0.333639,
		0.002714, 0.981406, 0.191921,
		44.691055, 38.651310, 27.247061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.073814, 38.091568, 27.765432>,  <44.689156, 37.964325, 27.112715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.073814, 38.091568, 27.765432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.813324, 38.391655, 27.719694>,  <44.657028, 38.571709, 27.692251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.813324, 38.391655, 27.719694>,  <45.073814, 38.091568, 27.765432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.813324, 38.391655, 27.719694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147766, 0.022434, 0.988768,
		0.744358, 0.660809, 0.096248,
		-0.651227, 0.750219, -0.114344,
		44.617954, 38.616722, 27.685390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164082, 38.683918, 28.283728>,  <45.073814, 38.091568, 27.765432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164082, 38.683918, 28.283728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.784443, 38.763676, 28.186192>,  <44.556660, 38.811531, 28.127670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.784443, 38.763676, 28.186192>,  <45.164082, 38.683918, 28.283728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.784443, 38.763676, 28.186192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244757, 0.020423, 0.969369,
		0.198264, 0.979707, 0.029419,
		-0.949097, 0.199391, -0.243839,
		44.499714, 38.823494, 28.113039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090141, 39.285610, 28.655375>,  <45.164082, 38.683918, 28.283728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.090141, 39.285610, 28.655375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.729637, 39.130226, 28.578619>,  <44.513332, 39.036995, 28.532566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.729637, 39.130226, 28.578619>,  <45.090141, 39.285610, 28.655375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.729637, 39.130226, 28.578619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202156, -0.014694, 0.979243,
		-0.383217, 0.921348, -0.065286,
		-0.901265, -0.388460, -0.191887,
		44.459259, 39.013687, 28.521053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561031, 39.592171, 29.089985>,  <45.090141, 39.285610, 28.655375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.561031, 39.592171, 29.089985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.365379, 39.266426, 28.965040>,  <44.247986, 39.070980, 28.890074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.365379, 39.266426, 28.965040>,  <44.561031, 39.592171, 29.089985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365379, 39.266426, 28.965040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432598, -0.084464, 0.897622,
		-0.757369, 0.574183, -0.310975,
		-0.489133, -0.814358, -0.312361,
		44.218639, 39.022118, 28.871332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868629, 39.674026, 29.314461>,  <44.561031, 39.592171, 29.089985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868629, 39.674026, 29.314461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.901810, 39.279869, 29.254971>,  <43.921719, 39.043373, 29.219276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.901810, 39.279869, 29.254971>,  <43.868629, 39.674026, 29.314461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901810, 39.279869, 29.254971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450409, -0.170197, 0.876450,
		-0.888961, -0.005713, -0.457947,
		0.082948, -0.985393, -0.148725,
		43.926693, 38.984253, 29.210354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205608, 39.346458, 29.475960>,  <43.868629, 39.674026, 29.314461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205608, 39.346458, 29.475960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.474480, 39.054729, 29.526985>,  <43.635803, 38.879692, 29.557600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.474480, 39.054729, 29.526985>,  <43.205608, 39.346458, 29.475960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474480, 39.054729, 29.526985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297116, -0.107895, 0.948726,
		-0.678160, -0.675613, -0.289217,
		0.672177, -0.729319, 0.127565,
		43.676132, 38.835934, 29.565254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904049, 38.895958, 29.860315>,  <43.205608, 39.346458, 29.475960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904049, 38.895958, 29.860315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.277641, 38.760624, 29.906298>,  <43.501797, 38.679424, 29.933887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.277641, 38.760624, 29.906298>,  <42.904049, 38.895958, 29.860315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277641, 38.760624, 29.906298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195732, -0.215251, 0.956743,
		-0.298959, -0.916076, -0.267263,
		0.933977, -0.338338, 0.114954,
		43.557835, 38.659122, 29.940784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836647, 38.154457, 30.100887>,  <42.904049, 38.895958, 29.860315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836647, 38.154457, 30.100887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.207985, 38.274166, 30.189087>,  <43.430786, 38.345989, 30.242006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.207985, 38.274166, 30.189087>,  <42.836647, 38.154457, 30.100887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207985, 38.274166, 30.189087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076409, -0.426883, 0.901073,
		0.363792, -0.853351, -0.373426,
		0.928341, 0.299270, 0.220500,
		43.486488, 38.363949, 30.255238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.164238, 37.479931, 30.363903>,  <42.836647, 38.154457, 30.100887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.164238, 37.479931, 30.363903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.372402, 37.799339, 30.484921>,  <43.497299, 37.990986, 30.557531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.372402, 37.799339, 30.484921>,  <43.164238, 37.479931, 30.363903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372402, 37.799339, 30.484921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068137, -0.392002, 0.917437,
		0.851193, -0.456831, -0.258411,
		0.520412, 0.798523, 0.302542,
		43.528526, 38.038895, 30.575684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803734, 37.250507, 30.641165>,  <43.164238, 37.479931, 30.363903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803734, 37.250507, 30.641165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.735779, 37.612164, 30.797964>,  <43.695007, 37.829159, 30.892044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.735779, 37.612164, 30.797964>,  <43.803734, 37.250507, 30.641165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735779, 37.612164, 30.797964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026270, -0.401794, 0.915353,
		0.985114, 0.145207, 0.092010,
		-0.169885, 0.904144, 0.391999,
		43.684814, 37.883408, 30.915564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.240746, 37.252483, 31.154812>,  <43.803734, 37.250507, 30.641165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.240746, 37.252483, 31.154812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.998859, 37.553574, 31.258907>,  <43.853725, 37.734226, 31.321363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.998859, 37.553574, 31.258907>,  <44.240746, 37.252483, 31.154812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998859, 37.553574, 31.258907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068741, -0.276203, 0.958638,
		0.793467, 0.597595, 0.115282,
		-0.604719, 0.752723, 0.260237,
		43.817444, 37.779392, 31.336979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555611, 37.733738, 31.722849>,  <44.240746, 37.252483, 31.154812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555611, 37.733738, 31.722849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.159428, 37.785221, 31.742594>,  <43.921719, 37.816109, 31.754440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.159428, 37.785221, 31.742594>,  <44.555611, 37.733738, 31.722849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159428, 37.785221, 31.742594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005611, -0.320151, 0.947350,
		0.137731, 0.938583, 0.316373,
		-0.990454, 0.128704, 0.049361,
		43.862293, 37.823833, 31.757402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424755, 38.014290, 32.391277>,  <44.555611, 37.733738, 31.722849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424755, 38.014290, 32.391277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.074654, 37.860909, 32.273369>,  <43.864594, 37.768879, 32.202625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.074654, 37.860909, 32.273369>,  <44.424755, 38.014290, 32.391277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.074654, 37.860909, 32.273369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207639, -0.252535, 0.945046,
		-0.436821, 0.888364, 0.141413,
		-0.875256, -0.383453, -0.294771,
		43.812077, 37.745872, 32.184937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071434, 38.088654, 32.993156>,  <44.424755, 38.014290, 32.391277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071434, 38.088654, 32.993156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.827770, 37.846443, 32.788307>,  <43.681572, 37.701118, 32.665398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.827770, 37.846443, 32.788307>,  <44.071434, 38.088654, 32.993156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827770, 37.846443, 32.788307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308275, -0.414180, 0.856400,
		-0.730681, 0.679558, 0.065633,
		-0.609157, -0.605522, -0.512124,
		43.645023, 37.664787, 32.634670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435612, 38.182796, 33.424198>,  <44.071434, 38.088654, 32.993156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435612, 38.182796, 33.424198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.429859, 37.851498, 33.200127>,  <43.426407, 37.652718, 33.065681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.429859, 37.851498, 33.200127>,  <43.435612, 38.182796, 33.424198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429859, 37.851498, 33.200127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221586, -0.543671, 0.809519,
		-0.975035, 0.135768, -0.175710,
		-0.014378, -0.828244, -0.560182,
		43.425545, 37.603024, 33.032070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807560, 37.695457, 33.656857>,  <43.435612, 38.182796, 33.424198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807560, 37.695457, 33.656857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.092407, 37.483486, 33.472660>,  <43.263317, 37.356304, 33.362141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.092407, 37.483486, 33.472660>,  <42.807560, 37.695457, 33.656857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.092407, 37.483486, 33.472660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033349, -0.629647, 0.776165,
		-0.701265, -0.568080, -0.430712,
		0.712120, -0.529933, -0.460494,
		43.306046, 37.324505, 33.334511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510456, 36.996120, 33.619591>,  <42.807560, 37.695457, 33.656857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510456, 36.996120, 33.619591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.910320, 36.996140, 33.609116>,  <43.150238, 36.996151, 33.602829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.910320, 36.996140, 33.609116>,  <42.510456, 36.996120, 33.619591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910320, 36.996140, 33.609116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020195, -0.638084, 0.769702,
		-0.016678, -0.769967, -0.637866,
		0.999657, 0.000045, -0.026192,
		43.210217, 36.996151, 33.601257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632374, 36.255821, 33.614613>,  <42.510456, 36.996120, 33.619591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632374, 36.255821, 33.614613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.978622, 36.416733, 33.733856>,  <43.186371, 36.513279, 33.805401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.978622, 36.416733, 33.733856>,  <42.632374, 36.255821, 33.614613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978622, 36.416733, 33.733856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028372, -0.633840, 0.772944,
		0.499892, -0.660620, -0.560080,
		0.865623, 0.402279, 0.298109,
		43.238308, 36.537418, 33.823288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984493, 35.659809, 33.790642>,  <42.632374, 36.255821, 33.614613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984493, 35.659809, 33.790642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157860, 35.977276, 33.961399>,  <43.261879, 36.167755, 34.063854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157860, 35.977276, 33.961399>,  <42.984493, 35.659809, 33.790642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157860, 35.977276, 33.961399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072105, -0.502721, 0.861436,
		0.898304, -0.342581, -0.275116,
		0.433418, 0.793669, 0.426894,
		43.287884, 36.215378, 34.089466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660633, 35.364281, 34.219582>,  <42.984493, 35.659809, 33.790642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660633, 35.364281, 34.219582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.541542, 35.708755, 34.384369>,  <43.470085, 35.915440, 34.483242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.541542, 35.708755, 34.384369>,  <43.660633, 35.364281, 34.219582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541542, 35.708755, 34.384369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090124, -0.454965, 0.885937,
		0.950387, 0.226642, 0.213070,
		-0.297730, 0.861185, 0.411967,
		43.452225, 35.967110, 34.507957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289242, 34.896362, 34.101376>,  <43.660633, 35.364281, 34.219582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289242, 34.896362, 34.101376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.255833, 35.202915, 34.356148>,  <44.235786, 35.386848, 34.509010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.255833, 35.202915, 34.356148>,  <44.289242, 34.896362, 34.101376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.255833, 35.202915, 34.356148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932149, 0.165887, -0.321836,
		-0.352309, -0.620591, 0.700532,
		-0.083520, 0.766386, 0.636927,
		44.230778, 35.432831, 34.547226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933380, 34.903194, 33.663002>,  <44.289242, 34.896362, 34.101376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933380, 34.903194, 33.663002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.318916, 34.985706, 33.595516>,  <45.550240, 35.035213, 33.555027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.318916, 34.985706, 33.595516>,  <44.933380, 34.903194, 33.663002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318916, 34.985706, 33.595516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220086, 0.259212, -0.940410,
		-0.150255, 0.943535, 0.295238,
		0.963839, 0.206279, -0.168711,
		45.608067, 35.047588, 33.544903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.982346, 35.530384, 33.235058>,  <44.933380, 34.903194, 33.663002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.982346, 35.530384, 33.235058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.354156, 35.390732, 33.187572>,  <45.577244, 35.306942, 33.159081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.354156, 35.390732, 33.187572>,  <44.982346, 35.530384, 33.235058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.354156, 35.390732, 33.187572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012611, 0.291630, -0.956448,
		0.368543, 0.890539, 0.266675,
		0.929525, -0.349129, -0.118709,
		45.633015, 35.285992, 33.151958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.439693, 36.042549, 33.197960>,  <44.982346, 35.530384, 33.235058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.439693, 36.042549, 33.197960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.614811, 35.739365, 33.004536>,  <45.719879, 35.557453, 32.888481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.614811, 35.739365, 33.004536>,  <45.439693, 36.042549, 33.197960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614811, 35.739365, 33.004536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130815, 0.478420, -0.868333,
		0.889510, 0.443405, 0.110295,
		0.437790, -0.757962, -0.483564,
		45.746147, 35.511974, 32.859467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.878807, 36.368862, 32.667896>,  <45.439693, 36.042549, 33.197960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.878807, 36.368862, 32.667896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.805832, 35.992970, 32.552227>,  <45.762047, 35.767433, 32.482826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.805832, 35.992970, 32.552227>,  <45.878807, 36.368862, 32.667896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.805832, 35.992970, 32.552227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141222, 0.316104, -0.938155,
		0.973023, -0.130314, -0.190379,
		-0.182434, -0.939732, -0.289173,
		45.751102, 35.711048, 32.465473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249371, 36.345539, 31.965994>,  <45.878807, 36.368862, 32.667896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249371, 36.345539, 31.965994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.978512, 36.051403, 31.976967>,  <45.815998, 35.874924, 31.983551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.978512, 36.051403, 31.976967>,  <46.249371, 36.345539, 31.965994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.978512, 36.051403, 31.976967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314097, 0.255127, -0.914469,
		0.665444, -0.627846, -0.403725,
		-0.677146, -0.735337, 0.027432,
		45.775368, 35.830803, 31.985197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.229637, 36.123314, 31.291515>,  <46.249371, 36.345539, 31.965994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.229637, 36.123314, 31.291515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.904179, 35.935349, 31.428434>,  <45.708904, 35.822571, 31.510586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.904179, 35.935349, 31.428434>,  <46.229637, 36.123314, 31.291515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.904179, 35.935349, 31.428434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365110, -0.045168, -0.929868,
		0.452416, -0.881557, -0.134819,
		-0.813643, -0.469911, 0.342300,
		45.660088, 35.794376, 31.531124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.260418, 35.515141, 30.992392>,  <46.229637, 36.123314, 31.291515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.260418, 35.515141, 30.992392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.888454, 35.627636, 31.087198>,  <45.665276, 35.695133, 31.144083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.888454, 35.627636, 31.087198>,  <46.260418, 35.515141, 30.992392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.888454, 35.627636, 31.087198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253978, -0.024910, -0.966889,
		-0.266025, -0.959314, 0.094593,
		-0.929907, 0.281241, 0.237018,
		45.609482, 35.712009, 31.158304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801910, 34.934334, 30.642569>,  <46.260418, 35.515141, 30.992392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801910, 34.934334, 30.642569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.561386, 35.240128, 30.735516>,  <45.417072, 35.423603, 30.791283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.561386, 35.240128, 30.735516>,  <45.801910, 34.934334, 30.642569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.561386, 35.240128, 30.735516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445271, -0.079137, -0.891892,
		-0.663448, -0.639767, 0.387988,
		-0.601308, 0.764483, 0.232367,
		45.380993, 35.469471, 30.805225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286346, 34.833992, 30.236816>,  <45.801910, 34.934334, 30.642569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286346, 34.833992, 30.236816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.203339, 35.207546, 30.353298>,  <45.153534, 35.431679, 30.423187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.203339, 35.207546, 30.353298>,  <45.286346, 34.833992, 30.236816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203339, 35.207546, 30.353298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418655, 0.184260, -0.889256,
		-0.884118, -0.306451, 0.352737,
		-0.207518, 0.933883, 0.291205,
		45.141083, 35.487709, 30.440660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.516445, 34.869106, 30.284389>,  <45.286346, 34.833992, 30.236816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.516445, 34.869106, 30.284389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.671711, 35.232941, 30.225069>,  <44.764870, 35.451241, 30.189476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.671711, 35.232941, 30.225069>,  <44.516445, 34.869106, 30.284389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671711, 35.232941, 30.225069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703476, 0.188476, -0.685272,
		-0.595359, 0.370322, 0.713028,
		0.388160, 0.909582, -0.148302,
		44.788158, 35.505814, 30.180578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969856, 35.323708, 30.174717>,  <44.516445, 34.869106, 30.284389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969856, 35.323708, 30.174717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.273872, 35.534389, 30.022446>,  <44.456284, 35.660801, 29.931082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.273872, 35.534389, 30.022446>,  <43.969856, 35.323708, 30.174717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.273872, 35.534389, 30.022446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559539, 0.232435, -0.795544,
		-0.330536, 0.817651, 0.471373,
		0.760041, 0.526708, -0.380679,
		44.501884, 35.692402, 29.908241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719158, 35.923973, 29.800320>,  <43.969856, 35.323708, 30.174717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719158, 35.923973, 29.800320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.082478, 35.885632, 29.637440>,  <44.300468, 35.862629, 29.539713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.082478, 35.885632, 29.637440>,  <43.719158, 35.923973, 29.800320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082478, 35.885632, 29.637440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390938, 0.151937, -0.907790,
		0.148880, 0.983732, 0.100532,
		0.908296, -0.095850, -0.407199,
		44.354965, 35.856876, 29.515280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823334, 36.468147, 29.320568>,  <43.719158, 35.923973, 29.800320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823334, 36.468147, 29.320568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.107056, 36.209682, 29.207886>,  <44.277290, 36.054604, 29.140276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.107056, 36.209682, 29.207886>,  <43.823334, 36.468147, 29.320568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107056, 36.209682, 29.207886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230466, 0.165095, -0.958973,
		0.666159, 0.745131, -0.031815,
		0.709307, -0.646161, -0.281707,
		44.319847, 36.015835, 29.123373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.996925, 36.677158, 28.622162>,  <43.823334, 36.468147, 29.320568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.996925, 36.677158, 28.622162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.142693, 36.306808, 28.662066>,  <44.230152, 36.084599, 28.686007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.142693, 36.306808, 28.662066>,  <43.996925, 36.677158, 28.622162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142693, 36.306808, 28.662066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050588, -0.126648, -0.990657,
		0.929862, 0.355963, -0.092990,
		0.364414, -0.925878, 0.099758,
		44.252018, 36.029045, 28.691994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529755, 36.613018, 28.085262>,  <43.996925, 36.677158, 28.622162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529755, 36.613018, 28.085262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.434483, 36.234421, 28.172369>,  <44.377319, 36.007263, 28.224632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.434483, 36.234421, 28.172369>,  <44.529755, 36.613018, 28.085262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.434483, 36.234421, 28.172369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068925, -0.207180, -0.975872,
		0.968772, -0.247444, -0.015890,
		-0.238181, -0.946493, 0.217765,
		44.363029, 35.950474, 28.237698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.918724, 36.188354, 27.655947>,  <44.529755, 36.613018, 28.085262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.918724, 36.188354, 27.655947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.617138, 35.951023, 27.768724>,  <44.436188, 35.808624, 27.836391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.617138, 35.951023, 27.768724>,  <44.918724, 36.188354, 27.655947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.617138, 35.951023, 27.768724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053533, -0.372270, -0.926579,
		0.654728, -0.713703, 0.248916,
		-0.753966, -0.593332, 0.281942,
		44.390949, 35.773022, 27.853308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.113888, 35.550930, 27.459562>,  <44.918724, 36.188354, 27.655947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.113888, 35.550930, 27.459562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.715588, 35.528149, 27.488508>,  <44.476608, 35.514481, 27.505877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.715588, 35.528149, 27.488508>,  <45.113888, 35.550930, 27.459562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715588, 35.528149, 27.488508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052066, -0.299954, -0.952532,
		0.075961, -0.952252, 0.295714,
		-0.995750, -0.056959, 0.072365,
		44.416862, 35.511063, 27.510218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.857525, 34.903191, 27.111485>,  <45.113888, 35.550930, 27.459562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.857525, 34.903191, 27.111485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.556335, 35.166168, 27.122776>,  <44.375622, 35.323956, 27.129551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.556335, 35.166168, 27.122776>,  <44.857525, 34.903191, 27.111485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.556335, 35.166168, 27.122776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111149, -0.084781, -0.990181,
		-0.648597, -0.748717, 0.136912,
		-0.752972, 0.657446, 0.028231,
		44.330444, 35.363403, 27.131245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474018, 34.610626, 26.639275>,  <44.857525, 34.903191, 27.111485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474018, 34.610626, 26.639275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.308250, 34.969841, 26.698317>,  <44.208790, 35.185371, 26.733742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.308250, 34.969841, 26.698317>,  <44.474018, 34.610626, 26.639275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308250, 34.969841, 26.698317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491781, -0.084505, -0.866609,
		-0.765772, -0.431730, 0.476657,
		-0.414421, 0.898035, 0.147605,
		44.183926, 35.239250, 26.742598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811676, 34.637672, 26.614857>,  <44.474018, 34.610626, 26.639275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811676, 34.637672, 26.614857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.927761, 35.003067, 26.500795>,  <43.997414, 35.222305, 26.432358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.927761, 35.003067, 26.500795>,  <43.811676, 34.637672, 26.614857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.927761, 35.003067, 26.500795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414412, -0.148622, -0.897872,
		-0.862577, 0.378744, 0.335430,
		0.290211, 0.913490, -0.285154,
		44.014824, 35.277115, 26.415249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.431301, 38.401630, 42.708485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082130, 38.206848, 42.696632>,  <40.872627, 38.089981, 42.689522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082130, 38.206848, 42.696632>,  <41.431301, 38.401630, 42.708485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082130, 38.206848, 42.696632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106576, 0.249615, -0.962463,
		0.476071, -0.837000, -0.269792,
		-0.872925, -0.486954, -0.029630,
		40.820251, 38.060760, 42.687744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495846, 38.058323, 42.138378>,  <41.431301, 38.401630, 42.708485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495846, 38.058323, 42.138378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098663, 38.057270, 42.185772>,  <40.860355, 38.056637, 42.214211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098663, 38.057270, 42.185772>,  <41.495846, 38.058323, 42.138378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098663, 38.057270, 42.185772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118493, 0.002340, -0.992952,
		0.002340, -0.999994, -0.002636,
		0.992952, 0.002636, -0.118486,
		40.800777, 38.056480, 42.221317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261154, 37.355267, 41.780308>,  <41.495846, 38.058323, 42.138378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261154, 37.355267, 41.780308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941757, 37.595901, 41.789337>,  <40.750118, 37.740284, 41.794754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941757, 37.595901, 41.789337>,  <41.261154, 37.355267, 41.780308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941757, 37.595901, 41.789337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211250, -0.244886, -0.946258,
		-0.563730, -0.760344, 0.322624,
		-0.798488, 0.601588, 0.022573,
		40.702209, 37.776379, 41.796108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683189, 36.912743, 41.459641>,  <41.261154, 37.355267, 41.780308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683189, 36.912743, 41.459641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589993, 37.301735, 41.459438>,  <40.534077, 37.535130, 41.459316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589993, 37.301735, 41.459438>,  <40.683189, 36.912743, 41.459641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589993, 37.301735, 41.459438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307480, -0.074158, -0.948661,
		-0.922590, -0.220872, 0.316295,
		-0.232988, 0.972479, -0.000504,
		40.520096, 37.593479, 41.459286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013920, 36.991486, 41.321613>,  <40.683189, 36.912743, 41.459641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013920, 36.991486, 41.321613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151264, 37.349224, 41.206902>,  <40.233673, 37.563869, 41.138073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151264, 37.349224, 41.206902>,  <40.013920, 36.991486, 41.321613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151264, 37.349224, 41.206902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373683, -0.150044, -0.915340,
		-0.861662, 0.421460, 0.282683,
		0.343364, 0.894348, -0.286779,
		40.254272, 37.617527, 41.120869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670418, 37.077633, 40.665432>,  <40.013920, 36.991486, 41.321613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670418, 37.077633, 40.665432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928917, 37.382885, 40.666348>,  <40.084015, 37.566036, 40.666897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928917, 37.382885, 40.666348>,  <39.670418, 37.077633, 40.665432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928917, 37.382885, 40.666348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167939, 0.145138, -0.975055,
		-0.744421, 0.629741, 0.221954,
		0.646246, 0.763126, 0.002285,
		40.122791, 37.611824, 40.667034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321056, 37.543278, 40.341156>,  <39.670418, 37.077633, 40.665432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321056, 37.543278, 40.341156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691975, 37.685108, 40.293144>,  <39.914524, 37.770206, 40.264339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691975, 37.685108, 40.293144>,  <39.321056, 37.543278, 40.341156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691975, 37.685108, 40.293144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147416, 0.051169, -0.987750,
		-0.344087, 0.933628, 0.099718,
		0.927293, 0.354573, -0.120025,
		39.970161, 37.791481, 40.257137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268559, 38.091080, 39.750984>,  <39.321056, 37.543278, 40.341156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268559, 38.091080, 39.750984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658340, 38.014820, 39.798477>,  <39.892208, 37.969067, 39.826973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658340, 38.014820, 39.798477>,  <39.268559, 38.091080, 39.750984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658340, 38.014820, 39.798477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110254, -0.054504, -0.992408,
		0.195669, 0.980145, -0.032092,
		0.974453, -0.190645, 0.118729,
		39.950676, 37.957626, 39.834095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697357, 38.635471, 39.407883>,  <39.268559, 38.091080, 39.750984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697357, 38.635471, 39.407883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901062, 38.291386, 39.418308>,  <40.023285, 38.084934, 39.424564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901062, 38.291386, 39.418308>,  <39.697357, 38.635471, 39.407883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901062, 38.291386, 39.418308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146723, 0.056946, -0.987537,
		0.848011, 0.506740, 0.155214,
		0.509264, -0.860216, 0.026060,
		40.053841, 38.033321, 39.426125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234608, 38.751518, 39.000134>,  <39.697357, 38.635471, 39.407883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234608, 38.751518, 39.000134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239212, 38.351639, 38.991421>,  <40.241974, 38.111713, 38.986195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239212, 38.351639, 38.991421>,  <40.234608, 38.751518, 39.000134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239212, 38.351639, 38.991421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372754, 0.024502, -0.927607,
		0.927859, 0.002564, 0.372923,
		0.011515, -0.999696, -0.021779,
		40.242668, 38.051731, 38.984886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771774, 38.596928, 38.561234>,  <40.234608, 38.751518, 39.000134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771774, 38.596928, 38.561234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595036, 38.239655, 38.594685>,  <40.488995, 38.025291, 38.614754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595036, 38.239655, 38.594685>,  <40.771774, 38.596928, 38.561234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595036, 38.239655, 38.594685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237025, -0.206141, -0.949381,
		0.865213, -0.399655, 0.302790,
		-0.441843, -0.893186, 0.083628,
		40.462482, 37.971699, 38.619774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247929, 38.032791, 38.392315>,  <40.771774, 38.596928, 38.561234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247929, 38.032791, 38.392315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869770, 37.908955, 38.351551>,  <40.642876, 37.834652, 38.327095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869770, 37.908955, 38.351551>,  <41.247929, 38.032791, 38.392315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869770, 37.908955, 38.351551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194733, -0.285795, -0.938296,
		0.261367, -0.906902, 0.330477,
		-0.945392, -0.309595, -0.101907,
		40.586151, 37.816074, 38.320980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266834, 37.382671, 38.138050>,  <41.247929, 38.032791, 38.392315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266834, 37.382671, 38.138050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916897, 37.513760, 37.995365>,  <40.706936, 37.592411, 37.909752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916897, 37.513760, 37.995365>,  <41.266834, 37.382671, 38.138050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916897, 37.513760, 37.995365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270995, -0.279268, -0.921179,
		-0.401508, -0.902557, 0.155506,
		-0.874844, 0.327720, -0.356717,
		40.654442, 37.612076, 37.888351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405483, 36.762012, 38.277061>,  <41.266834, 37.382671, 38.138050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405483, 36.762012, 38.277061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679962, 37.041267, 38.358776>,  <41.844650, 37.208820, 38.407806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679962, 37.041267, 38.358776>,  <41.405483, 36.762012, 38.277061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679962, 37.041267, 38.358776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576413, 0.693182, -0.432720,
		-0.443708, 0.179176, 0.878077,
		0.686200, 0.698136, 0.204291,
		41.885822, 37.250710, 38.420063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818920, 36.368538, 37.751335>,  <41.405483, 36.762012, 38.277061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818920, 36.368538, 37.751335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899113, 35.976665, 37.753674>,  <41.947227, 35.741543, 37.755077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899113, 35.976665, 37.753674>,  <41.818920, 36.368538, 37.751335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899113, 35.976665, 37.753674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319541, -0.059743, 0.945688,
		-0.926123, -0.191458, -0.325025,
		0.200477, -0.979681, 0.005849,
		41.959255, 35.682762, 37.755428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167755, 36.023773, 38.084049>,  <41.818920, 36.368538, 37.751335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167755, 36.023773, 38.084049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456070, 35.749172, 38.122383>,  <41.629059, 35.584412, 38.145386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456070, 35.749172, 38.122383>,  <41.167755, 36.023773, 38.084049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456070, 35.749172, 38.122383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377883, -0.273257, 0.884610,
		-0.581099, -0.673828, -0.456377,
		0.720783, -0.686503, 0.095839,
		41.672306, 35.543221, 38.151134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822483, 35.416775, 38.340965>,  <41.167755, 36.023773, 38.084049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822483, 35.416775, 38.340965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210476, 35.387703, 38.433796>,  <41.443272, 35.370258, 38.489494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210476, 35.387703, 38.433796>,  <40.822483, 35.416775, 38.340965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210476, 35.387703, 38.433796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243172, -0.277336, 0.929490,
		-0.003196, -0.958020, -0.286685,
		0.969978, -0.072684, 0.232077,
		41.501469, 35.365898, 38.503418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920834, 34.773872, 38.717289>,  <40.822483, 35.416775, 38.340965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920834, 34.773872, 38.717289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238064, 34.988823, 38.832012>,  <41.428402, 35.117794, 38.900848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238064, 34.988823, 38.832012>,  <40.920834, 34.773872, 38.717289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238064, 34.988823, 38.832012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120623, -0.322984, 0.938686,
		0.597063, -0.779043, -0.191330,
		0.793074, 0.537376, 0.286812,
		41.475986, 35.150036, 38.918056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328342, 34.292538, 39.141571>,  <40.920834, 34.773872, 38.717289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328342, 34.292538, 39.141571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488430, 34.644836, 39.242847>,  <41.584484, 34.856216, 39.303612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488430, 34.644836, 39.242847>,  <41.328342, 34.292538, 39.141571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488430, 34.644836, 39.242847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077376, -0.242816, 0.966982,
		0.913147, -0.406596, -0.029031,
		0.400220, 0.880750, 0.253187,
		41.608498, 34.909061, 39.318802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905769, 34.241539, 39.620361>,  <41.328342, 34.292538, 39.141571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905769, 34.241539, 39.620361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834045, 34.629284, 39.687508>,  <41.791012, 34.861931, 39.727795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834045, 34.629284, 39.687508>,  <41.905769, 34.241539, 39.620361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834045, 34.629284, 39.687508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021732, -0.166686, 0.985770,
		0.983553, 0.180406, 0.008822,
		-0.179309, 0.969366, 0.167865,
		41.780254, 34.920094, 39.737865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421673, 34.554810, 40.017590>,  <41.905769, 34.241539, 39.620361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421673, 34.554810, 40.017590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101555, 34.783993, 40.088299>,  <41.909485, 34.921505, 40.130722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101555, 34.783993, 40.088299>,  <42.421673, 34.554810, 40.017590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101555, 34.783993, 40.088299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127092, -0.126021, 0.983853,
		0.585987, 0.809836, 0.028034,
		-0.800292, 0.572962, 0.176770,
		41.861465, 34.955883, 40.141331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582626, 34.859928, 40.576714>,  <42.421673, 34.554810, 40.017590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582626, 34.859928, 40.576714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189224, 34.932117, 40.581448>,  <41.953182, 34.975430, 40.584290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189224, 34.932117, 40.581448>,  <42.582626, 34.859928, 40.576714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189224, 34.932117, 40.581448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002585, -0.051403, 0.998675,
		0.180839, 0.982237, 0.050089,
		-0.983509, 0.180470, 0.011835,
		41.894173, 34.986259, 40.584999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631538, 35.262226, 41.127403>,  <42.582626, 34.859928, 40.576714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631538, 35.262226, 41.127403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251846, 35.143345, 41.086163>,  <42.024033, 35.072014, 41.061417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251846, 35.143345, 41.086163>,  <42.631538, 35.262226, 41.127403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251846, 35.143345, 41.086163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132790, 0.081440, 0.987793,
		-0.285181, 0.951334, -0.116772,
		-0.949230, -0.297206, -0.103102,
		41.967075, 35.054184, 41.055233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267635, 35.726822, 41.576389>,  <42.631538, 35.262226, 41.127403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267635, 35.726822, 41.576389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030346, 35.409348, 41.522511>,  <41.887974, 35.218861, 41.490185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030346, 35.409348, 41.522511>,  <42.267635, 35.726822, 41.576389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030346, 35.409348, 41.522511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220965, -0.000358, 0.975282,
		-0.774119, 0.608323, -0.175165,
		-0.593224, -0.793689, -0.134695,
		41.852379, 35.171242, 41.482101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613483, 35.941982, 41.847610>,  <42.267635, 35.726822, 41.576389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613483, 35.941982, 41.847610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614960, 35.542210, 41.861050>,  <41.615845, 35.302345, 41.869114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614960, 35.542210, 41.861050>,  <41.613483, 35.941982, 41.847610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614960, 35.542210, 41.861050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340135, 0.030341, 0.939887,
		-0.940369, -0.014900, -0.339828,
		0.003693, -0.999428, 0.033600,
		41.616066, 35.242382, 41.871128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961769, 35.759193, 42.183647>,  <41.613483, 35.941982, 41.847610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961769, 35.759193, 42.183647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181751, 35.426872, 42.217842>,  <41.313740, 35.227478, 42.238361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181751, 35.426872, 42.217842>,  <40.961769, 35.759193, 42.183647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181751, 35.426872, 42.217842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046085, 0.072018, 0.996338,
		-0.833920, -0.551884, 0.001319,
		0.549958, -0.830805, 0.085491,
		41.346737, 35.177631, 42.243488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609131, 35.265720, 42.618706>,  <40.961769, 35.759193, 42.183647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609131, 35.265720, 42.618706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985023, 35.132908, 42.651333>,  <41.210560, 35.053219, 42.670910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985023, 35.132908, 42.651333>,  <40.609131, 35.265720, 42.618706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985023, 35.132908, 42.651333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122005, -0.102777, 0.987194,
		-0.319398, -0.937651, -0.137093,
		0.939734, -0.332034, 0.081571,
		41.266945, 35.033298, 42.675804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544109, 34.540466, 42.958977>,  <40.609131, 35.265720, 42.618706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544109, 34.540466, 42.958977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909584, 34.685665, 43.032089>,  <41.128868, 34.772785, 43.075954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909584, 34.685665, 43.032089>,  <40.544109, 34.540466, 42.958977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909584, 34.685665, 43.032089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196936, 0.002039, 0.980414,
		0.355518, -0.931787, 0.073351,
		0.913687, 0.363001, 0.182778,
		41.183689, 34.794563, 43.086922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398449, 33.886959, 42.926533>,  <40.544109, 34.540466, 42.958977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398449, 33.886959, 42.926533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067547, 33.719482, 43.076385>,  <39.869007, 33.618996, 43.166298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067547, 33.719482, 43.076385>,  <40.398449, 33.886959, 42.926533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067547, 33.719482, 43.076385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435072, 0.055501, -0.898683,
		0.355477, -0.906432, -0.228073,
		-0.827253, -0.418690, 0.374634,
		39.819370, 33.593876, 43.188774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237885, 33.463284, 42.420567>,  <40.398449, 33.886959, 42.926533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237885, 33.463284, 42.420567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904530, 33.513451, 42.635872>,  <39.704517, 33.543552, 42.765057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904530, 33.513451, 42.635872>,  <40.237885, 33.463284, 42.420567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904530, 33.513451, 42.635872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526120, 0.118289, -0.842144,
		-0.169291, -0.985027, -0.032596,
		-0.833390, 0.125418, 0.538267,
		39.654514, 33.551075, 42.797352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757504, 33.140667, 42.089561>,  <40.237885, 33.463284, 42.420567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757504, 33.140667, 42.089561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525127, 33.374142, 42.316483>,  <39.385704, 33.514225, 42.452633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525127, 33.374142, 42.316483>,  <39.757504, 33.140667, 42.089561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525127, 33.374142, 42.316483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559904, 0.219309, -0.799006,
		-0.590780, -0.781804, 0.199402,
		-0.580935, 0.583683, 0.567299,
		39.350845, 33.549248, 42.486671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116783, 32.974895, 41.911167>,  <39.757504, 33.140667, 42.089561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116783, 32.974895, 41.911167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069653, 33.330582, 42.087990>,  <39.041374, 33.543991, 42.194084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069653, 33.330582, 42.087990>,  <39.116783, 32.974895, 41.911167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069653, 33.330582, 42.087990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690377, 0.246632, -0.680112,
		-0.713791, -0.385321, 0.584834,
		-0.117823, 0.889214, 0.442060,
		39.034306, 33.597347, 42.220608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413818, 33.043430, 41.855354>,  <39.116783, 32.974895, 41.911167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413818, 33.043430, 41.855354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553097, 33.410278, 41.932964>,  <38.636665, 33.630386, 41.979530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553097, 33.410278, 41.932964>,  <38.413818, 33.043430, 41.855354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553097, 33.410278, 41.932964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494777, 0.355599, -0.792934,
		-0.796212, 0.180100, 0.577590,
		0.348198, 0.917122, 0.194023,
		38.657555, 33.685413, 41.991173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820210, 33.473427, 41.779972>,  <38.413818, 33.043430, 41.855354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820210, 33.473427, 41.779972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138031, 33.711472, 41.731762>,  <38.328724, 33.854298, 41.702835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138031, 33.711472, 41.731762>,  <37.820210, 33.473427, 41.779972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138031, 33.711472, 41.731762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507371, 0.541686, -0.670188,
		-0.333549, 0.593652, 0.732341,
		0.794557, 0.595108, -0.120523,
		38.376396, 33.890003, 41.695606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499146, 34.132950, 41.721264>,  <37.820210, 33.473427, 41.779972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499146, 34.132950, 41.721264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873302, 34.166618, 41.583885>,  <38.097797, 34.186821, 41.501457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873302, 34.166618, 41.583885>,  <37.499146, 34.132950, 41.721264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873302, 34.166618, 41.583885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353068, 0.276191, -0.893902,
		0.019618, 0.957410, 0.288065,
		0.935392, 0.084170, -0.343449,
		38.153919, 34.191868, 41.480850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531437, 34.854889, 41.416801>,  <37.499146, 34.132950, 41.721264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531437, 34.854889, 41.416801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804985, 34.629280, 41.231674>,  <37.969112, 34.493916, 41.120598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804985, 34.629280, 41.231674>,  <37.531437, 34.854889, 41.416801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804985, 34.629280, 41.231674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393889, 0.248550, -0.884915,
		0.614147, 0.787464, -0.052188,
		0.683867, -0.564024, -0.462820,
		38.010147, 34.460072, 41.092827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654690, 35.235725, 40.749008>,  <37.531437, 34.854889, 41.416801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654690, 35.235725, 40.749008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779213, 34.859291, 40.696182>,  <37.853928, 34.633430, 40.664486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779213, 34.859291, 40.696182>,  <37.654690, 35.235725, 40.749008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779213, 34.859291, 40.696182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280450, 0.041805, -0.958958,
		0.907985, 0.335568, -0.250914,
		0.311306, -0.941088, -0.132068,
		37.872604, 34.576965, 40.656563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885277, 35.251907, 40.094933>,  <37.654690, 35.235725, 40.749008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885277, 35.251907, 40.094933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851669, 34.859058, 40.162319>,  <37.831505, 34.623348, 40.202751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851669, 34.859058, 40.162319>,  <37.885277, 35.251907, 40.094933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851669, 34.859058, 40.162319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117517, -0.158120, -0.980402,
		0.989511, -0.102167, -0.102131,
		-0.084016, -0.982120, 0.168468,
		37.826466, 34.564423, 40.212860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325821, 34.837715, 39.599476>,  <37.885277, 35.251907, 40.094933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325821, 34.837715, 39.599476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019131, 34.609795, 39.717766>,  <37.835117, 34.473042, 39.788738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019131, 34.609795, 39.717766>,  <38.325821, 34.837715, 39.599476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019131, 34.609795, 39.717766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285104, -0.110504, -0.952105,
		0.575193, -0.814317, -0.077727,
		-0.766726, -0.569805, 0.295726,
		37.789112, 34.438854, 39.806484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786011, 35.085861, 39.986141>,  <38.325821, 34.837715, 39.599476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786011, 35.085861, 39.986141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914185, 35.404930, 39.781773>,  <38.991089, 35.596371, 39.659149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914185, 35.404930, 39.781773>,  <38.786011, 35.085861, 39.986141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914185, 35.404930, 39.781773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374996, -0.602121, -0.704860,
		-0.869884, 0.034270, -0.492065,
		0.320439, 0.797669, -0.510924,
		39.010315, 35.644230, 39.628494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.795830, 31.797604, 46.822887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.463486, 32.009033, 46.753284>,  <40.264080, 32.135891, 46.711525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.463486, 32.009033, 46.753284>,  <40.795830, 31.797604, 46.822887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463486, 32.009033, 46.753284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263039, 0.097495, -0.959846,
		-0.490387, -0.843269, -0.220041,
		-0.830862, 0.528576, -0.174003,
		40.214226, 32.167606, 46.701084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610901, 31.670120, 46.167072>,  <40.795830, 31.797604, 46.822887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610901, 31.670120, 46.167072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.348854, 31.970390, 46.201279>,  <40.191628, 32.150551, 46.221802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.348854, 31.970390, 46.201279>,  <40.610901, 31.670120, 46.167072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348854, 31.970390, 46.201279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110389, 0.207078, -0.972076,
		-0.747420, -0.627382, -0.218526,
		-0.655115, 0.750673, 0.085518,
		40.152321, 32.195591, 46.226933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190765, 31.615923, 45.558262>,  <40.610901, 31.670120, 46.167072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190765, 31.615923, 45.558262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.154289, 31.992214, 45.688931>,  <40.132404, 32.217987, 45.767334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.154289, 31.992214, 45.688931>,  <40.190765, 31.615923, 45.558262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154289, 31.992214, 45.688931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003191, 0.328315, -0.944563,
		-0.995828, -0.085093, -0.032941,
		-0.091191, 0.940728, 0.326674,
		40.126930, 32.274433, 45.786934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604710, 31.862265, 45.229801>,  <40.190765, 31.615923, 45.558262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604710, 31.862265, 45.229801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.811237, 32.189983, 45.329529>,  <39.935154, 32.386616, 45.389366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.811237, 32.189983, 45.329529>,  <39.604710, 31.862265, 45.229801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811237, 32.189983, 45.329529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150077, 0.373183, -0.915539,
		-0.843141, 0.435297, 0.315641,
		0.516323, 0.819299, 0.249318,
		39.966133, 32.435772, 45.404324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162888, 32.389576, 45.107296>,  <39.604710, 31.862265, 45.229801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162888, 32.389576, 45.107296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.527649, 32.552860, 45.124287>,  <39.746506, 32.650829, 45.134480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.527649, 32.552860, 45.124287>,  <39.162888, 32.389576, 45.107296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527649, 32.552860, 45.124287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165109, 0.459629, -0.872628,
		-0.375738, 0.788736, 0.486535,
		0.911899, 0.408211, 0.042473,
		39.801220, 32.675323, 45.137028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069721, 33.028709, 44.962269>,  <39.162888, 32.389576, 45.107296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069721, 33.028709, 44.962269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.456688, 32.985355, 44.870739>,  <39.688869, 32.959343, 44.815823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.456688, 32.985355, 44.870739>,  <39.069721, 33.028709, 44.962269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456688, 32.985355, 44.870739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174328, 0.370298, -0.912408,
		0.183623, 0.922568, 0.339338,
		0.967415, -0.108383, -0.228825,
		39.746914, 32.952839, 44.802090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147350, 33.571419, 44.703579>,  <39.069721, 33.028709, 44.962269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147350, 33.571419, 44.703579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.447315, 33.347317, 44.562866>,  <39.627293, 33.212856, 44.478439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.447315, 33.347317, 44.562866>,  <39.147350, 33.571419, 44.703579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447315, 33.347317, 44.562866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052652, 0.479522, -0.875949,
		0.659438, 0.675407, 0.330101,
		0.749913, -0.560253, -0.351777,
		39.672291, 33.179241, 44.457333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620102, 34.073711, 44.298843>,  <39.147350, 33.571419, 44.703579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620102, 34.073711, 44.298843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.720856, 33.703999, 44.184116>,  <39.781307, 33.482170, 44.115280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.720856, 33.703999, 44.184116>,  <39.620102, 34.073711, 44.298843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720856, 33.703999, 44.184116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065688, 0.312019, -0.947802,
		0.965527, 0.219892, 0.139306,
		0.251880, -0.924279, -0.286818,
		39.796421, 33.426716, 44.098072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257244, 34.105240, 43.877094>,  <39.620102, 34.073711, 44.298843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257244, 34.105240, 43.877094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.063438, 33.770660, 43.774647>,  <39.947155, 33.569912, 43.713177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.063438, 33.770660, 43.774647>,  <40.257244, 34.105240, 43.877094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063438, 33.770660, 43.774647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116247, 0.228620, -0.966550,
		0.867024, -0.498082, -0.013535,
		-0.484516, -0.836449, -0.256119,
		39.918083, 33.519726, 43.697811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935822, 34.053078, 43.519760>,  <40.257244, 34.105240, 43.877094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935822, 34.053078, 43.519760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.145565, 34.393669, 43.521954>,  <41.271412, 34.598026, 43.523270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.145565, 34.393669, 43.521954>,  <40.935822, 34.053078, 43.519760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145565, 34.393669, 43.521954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051340, 0.025186, 0.998364,
		0.849950, -0.523779, 0.056922,
		0.524356, 0.851482, 0.005484,
		41.302872, 34.649113, 43.523598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580582, 33.884777, 43.897778>,  <40.935822, 34.053078, 43.519760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580582, 33.884777, 43.897778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.574787, 34.284691, 43.903828>,  <41.571308, 34.524639, 43.907455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.574787, 34.284691, 43.903828>,  <41.580582, 33.884777, 43.897778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574787, 34.284691, 43.903828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307651, -0.009934, 0.951448,
		0.951389, 0.018438, -0.307439,
		-0.014489, 0.999781, 0.015123,
		41.570442, 34.584625, 43.908363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225521, 34.119278, 44.186855>,  <41.580582, 33.884777, 43.897778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225521, 34.119278, 44.186855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.970978, 34.422852, 44.242088>,  <41.818253, 34.604996, 44.275230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.970978, 34.422852, 44.242088>,  <42.225521, 34.119278, 44.186855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970978, 34.422852, 44.242088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321502, 0.098218, 0.941801,
		0.701202, 0.643719, -0.306500,
		-0.636359, 0.758933, 0.138087,
		41.780071, 34.650532, 44.283516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678577, 34.670197, 44.466915>,  <42.225521, 34.119278, 44.186855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678577, 34.670197, 44.466915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.293484, 34.751949, 44.537758>,  <42.062428, 34.801003, 44.580265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.293484, 34.751949, 44.537758>,  <42.678577, 34.670197, 44.466915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293484, 34.751949, 44.537758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217758, 0.197463, 0.955819,
		0.160383, 0.958767, -0.234611,
		-0.962735, 0.204386, 0.177109,
		42.004662, 34.813267, 44.590889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682381, 35.237942, 44.876774>,  <42.678577, 34.670197, 44.466915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682381, 35.237942, 44.876774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.301769, 35.135181, 44.944405>,  <42.073402, 35.073524, 44.984985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.301769, 35.135181, 44.944405>,  <42.682381, 35.237942, 44.876774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301769, 35.135181, 44.944405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156799, 0.067714, 0.985306,
		-0.264578, 0.964062, -0.024150,
		-0.951532, -0.256903, 0.169080,
		42.016312, 35.058109, 44.995129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551670, 35.785130, 45.294079>,  <42.682381, 35.237942, 44.876774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551670, 35.785130, 45.294079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.284634, 35.490101, 45.334690>,  <42.124413, 35.313084, 45.359058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.284634, 35.490101, 45.334690>,  <42.551670, 35.785130, 45.294079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284634, 35.490101, 45.334690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152538, 0.268975, 0.950991,
		-0.728736, 0.619384, -0.292073,
		-0.667589, -0.737574, 0.101532,
		42.084358, 35.268829, 45.365150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925568, 36.050438, 45.688114>,  <42.551670, 35.785130, 45.294079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925568, 36.050438, 45.688114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.919289, 35.653774, 45.739273>,  <41.915520, 35.415775, 45.769966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.919289, 35.653774, 45.739273>,  <41.925568, 36.050438, 45.688114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919289, 35.653774, 45.739273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014239, 0.127674, 0.991714,
		-0.999775, 0.017390, 0.012116,
		-0.015699, -0.991664, 0.127893,
		41.914577, 35.356274, 45.777641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468876, 35.857700, 46.301102>,  <41.925568, 36.050438, 45.688114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468876, 35.857700, 46.301102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.663483, 35.512291, 46.247990>,  <41.780247, 35.305046, 46.216122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.663483, 35.512291, 46.247990>,  <41.468876, 35.857700, 46.301102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663483, 35.512291, 46.247990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087804, -0.199543, 0.975947,
		-0.869246, -0.463159, -0.172902,
		0.486520, -0.863520, -0.132784,
		41.809441, 35.253235, 46.208153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114117, 35.347275, 46.866993>,  <41.468876, 35.857700, 46.301102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114117, 35.347275, 46.866993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.457832, 35.180080, 46.749069>,  <41.664062, 35.079765, 46.678314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.457832, 35.180080, 46.749069>,  <41.114117, 35.347275, 46.866993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457832, 35.180080, 46.749069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151423, -0.342651, 0.927179,
		-0.488561, -0.841356, -0.231144,
		0.859290, -0.417983, -0.294807,
		41.715618, 35.054684, 46.660625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160721, 34.604176, 47.067657>,  <41.114117, 35.347275, 46.866993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160721, 34.604176, 47.067657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.542480, 34.722374, 47.050686>,  <41.771538, 34.793293, 47.040504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.542480, 34.722374, 47.050686>,  <41.160721, 34.604176, 47.067657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542480, 34.722374, 47.050686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128958, -0.279927, 0.951321,
		0.269237, -0.913413, -0.305269,
		0.954401, 0.295497, -0.042425,
		41.828800, 34.811024, 47.037960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613834, 34.087929, 47.427631>,  <41.160721, 34.604176, 47.067657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613834, 34.087929, 47.427631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.822662, 34.428238, 47.403572>,  <41.947960, 34.632423, 47.389137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.822662, 34.428238, 47.403572>,  <41.613834, 34.087929, 47.427631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822662, 34.428238, 47.403572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225612, -0.069750, 0.971717,
		0.822520, -0.520877, -0.228360,
		0.522073, 0.850778, -0.060145,
		41.979286, 34.683472, 47.385529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206635, 33.945564, 47.775471>,  <41.613834, 34.087929, 47.427631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206635, 33.945564, 47.775471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.098404, 34.330605, 47.780964>,  <42.033466, 34.561630, 47.784260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.098404, 34.330605, 47.780964>,  <42.206635, 33.945564, 47.775471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098404, 34.330605, 47.780964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063556, 0.003628, 0.997972,
		0.960597, 0.270905, -0.062161,
		-0.270581, 0.962599, 0.013732,
		42.017231, 34.619385, 47.785084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091099, 33.715107, 46.939606>,  <42.206635, 33.945564, 47.775471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091099, 33.715107, 46.939606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.464230, 33.614239, 47.042561>,  <42.688107, 33.553719, 47.104332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.464230, 33.614239, 47.042561>,  <42.091099, 33.715107, 46.939606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464230, 33.614239, 47.042561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228991, -0.966384, -0.116897,
		0.278210, 0.050106, -0.959213,
		0.932825, -0.252173, 0.257383,
		42.744076, 33.538586, 47.119774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425678, 33.236477, 46.418278>,  <42.091099, 33.715107, 46.939606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425678, 33.236477, 46.418278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.392010, 33.074326, 46.054173>,  <42.371807, 32.977036, 45.835709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.392010, 33.074326, 46.054173>,  <42.425678, 33.236477, 46.418278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392010, 33.074326, 46.054173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037024, -0.914150, 0.403681,
		-0.995763, 0.000277, 0.091956,
		-0.084174, -0.405375, -0.910267,
		42.366756, 32.952713, 45.781094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.799698, 34.809185, 48.674225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.187466, 34.711926, 48.687531>,  <36.420128, 34.653568, 48.695515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.187466, 34.711926, 48.687531>,  <35.799698, 34.809185, 48.674225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187466, 34.711926, 48.687531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023707, -0.042114, -0.998832,
		0.244267, 0.969074, -0.035062,
		0.969418, -0.243151, 0.033261,
		36.478291, 34.638981, 48.697510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148434, 35.278709, 48.208557>,  <35.799698, 34.809185, 48.674225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148434, 35.278709, 48.208557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.389824, 34.965359, 48.268059>,  <36.534660, 34.777348, 48.303761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.389824, 34.965359, 48.268059>,  <36.148434, 35.278709, 48.208557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389824, 34.965359, 48.268059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157015, -0.066148, -0.985378,
		0.781767, 0.618012, 0.083084,
		0.603479, -0.783381, 0.148750,
		36.570869, 34.730343, 48.312683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664143, 35.422829, 47.714279>,  <36.148434, 35.278709, 48.208557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664143, 35.422829, 47.714279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.706257, 35.033035, 47.793568>,  <36.731525, 34.799160, 47.841141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.706257, 35.033035, 47.793568>,  <36.664143, 35.422829, 47.714279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706257, 35.033035, 47.793568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242656, -0.168131, -0.955432,
		0.964382, 0.148695, 0.218763,
		0.105287, -0.974485, 0.198224,
		36.737843, 34.740688, 47.853035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242302, 35.318939, 47.377712>,  <36.664143, 35.422829, 47.714279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242302, 35.318939, 47.377712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.105091, 34.944298, 47.406319>,  <37.022766, 34.719513, 47.423481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.105091, 34.944298, 47.406319>,  <37.242302, 35.318939, 47.377712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105091, 34.944298, 47.406319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077092, -0.047804, -0.995877,
		0.936157, -0.347126, -0.055807,
		-0.343028, -0.936599, 0.071513,
		37.002182, 34.663319, 47.427773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672955, 34.754166, 46.971828>,  <37.242302, 35.318939, 47.377712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672955, 34.754166, 46.971828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.298973, 34.616123, 47.004738>,  <37.074585, 34.533298, 47.024483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.298973, 34.616123, 47.004738>,  <37.672955, 34.754166, 46.971828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298973, 34.616123, 47.004738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060645, -0.073031, -0.995484,
		0.349554, -0.935719, 0.047352,
		-0.934952, -0.345104, 0.082275,
		37.018486, 34.512592, 47.029419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626980, 34.181404, 46.534824>,  <37.672955, 34.754166, 46.971828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626980, 34.181404, 46.534824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.243484, 34.288071, 46.574249>,  <37.013386, 34.352070, 46.597904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.243484, 34.288071, 46.574249>,  <37.626980, 34.181404, 46.534824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243484, 34.288071, 46.574249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123131, -0.077011, -0.989398,
		-0.256248, -0.960707, 0.106669,
		-0.958737, 0.266666, 0.098559,
		36.955864, 34.368069, 46.603817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344917, 33.923931, 45.922432>,  <37.626980, 34.181404, 46.534824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344917, 33.923931, 45.922432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.044830, 34.152878, 46.054840>,  <36.864780, 34.290245, 46.134285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.044830, 34.152878, 46.054840>,  <37.344917, 33.923931, 45.922432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044830, 34.152878, 46.054840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452747, -0.079830, -0.888058,
		-0.481868, -0.816104, 0.319026,
		-0.750216, 0.572365, 0.331021,
		36.819767, 34.324589, 46.154148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716923, 33.621273, 45.791565>,  <37.344917, 33.923931, 45.922432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716923, 33.621273, 45.791565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.628551, 34.011044, 45.808006>,  <36.575527, 34.244904, 45.817871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.628551, 34.011044, 45.808006>,  <36.716923, 33.621273, 45.791565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628551, 34.011044, 45.808006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512804, -0.080210, -0.854750,
		-0.829592, -0.209916, 0.517409,
		-0.220927, 0.974424, 0.041104,
		36.562275, 34.303371, 45.820339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034512, 33.685020, 45.569210>,  <36.716923, 33.621273, 45.791565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034512, 33.685020, 45.569210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.148994, 34.066040, 45.527760>,  <36.217686, 34.294651, 45.502892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.148994, 34.066040, 45.527760>,  <36.034512, 33.685020, 45.569210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148994, 34.066040, 45.527760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342325, 0.000643, -0.939581,
		-0.894930, 0.304387, 0.326266,
		0.286206, 0.952548, -0.103624,
		36.234856, 34.351803, 45.496674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450260, 34.183189, 45.310871>,  <36.034512, 33.685020, 45.569210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450260, 34.183189, 45.310871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.808388, 34.344563, 45.235348>,  <36.023266, 34.441387, 45.190033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.808388, 34.344563, 45.235348>,  <35.450260, 34.183189, 45.310871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808388, 34.344563, 45.235348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238351, 0.075841, -0.968213,
		-0.376290, 0.911861, 0.164060,
		0.895318, 0.403433, -0.188805,
		36.076984, 34.465591, 45.178707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250916, 34.724739, 44.879803>,  <35.450260, 34.183189, 45.310871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250916, 34.724739, 44.879803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.643116, 34.664192, 44.829659>,  <35.878437, 34.627865, 44.799572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.643116, 34.664192, 44.829659>,  <35.250916, 34.724739, 44.879803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643116, 34.664192, 44.829659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088227, 0.230972, -0.968952,
		0.175619, 0.961114, 0.213113,
		0.980497, -0.151364, -0.125360,
		35.937263, 34.618782, 44.792049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500969, 35.370026, 44.648830>,  <35.250916, 34.724739, 44.879803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500969, 35.370026, 44.648830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.738636, 35.079575, 44.510433>,  <35.881237, 34.905304, 44.427395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.738636, 35.079575, 44.510433>,  <35.500969, 35.370026, 44.648830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738636, 35.079575, 44.510433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056359, 0.391510, -0.918446,
		0.802365, 0.565210, 0.191698,
		0.594167, -0.726125, -0.345989,
		35.916885, 34.861736, 44.406635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997452, 35.638783, 44.388638>,  <35.500969, 35.370026, 44.648830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997452, 35.638783, 44.388638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.993389, 35.284801, 44.202408>,  <35.990952, 35.072414, 44.090672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.993389, 35.284801, 44.202408>,  <35.997452, 35.638783, 44.388638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993389, 35.284801, 44.202408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132878, 0.460271, -0.877778,
		0.991080, -0.070779, 0.112917,
		-0.010156, -0.884953, -0.465570,
		35.990341, 35.019314, 44.062737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420589, 35.739166, 43.812290>,  <35.997452, 35.638783, 44.388638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420589, 35.739166, 43.812290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.191681, 35.418564, 43.742901>,  <36.054337, 35.226200, 43.701267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.191681, 35.418564, 43.742901>,  <36.420589, 35.739166, 43.812290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191681, 35.418564, 43.742901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041900, 0.239838, -0.969908,
		0.818995, -0.547780, -0.170835,
		-0.572269, -0.801508, -0.173474,
		36.020000, 35.178112, 43.690857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093098, 35.977974, 43.485550>,  <36.420589, 35.739166, 43.812290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093098, 35.977974, 43.485550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.219700, 36.353851, 43.433712>,  <37.295662, 36.579380, 43.402611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.219700, 36.353851, 43.433712>,  <37.093098, 35.977974, 43.485550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219700, 36.353851, 43.433712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283197, 0.036781, 0.958356,
		0.905331, -0.340024, -0.254478,
		0.316505, 0.939697, -0.129593,
		37.314651, 36.635761, 43.394833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742809, 35.939636, 43.738266>,  <37.093098, 35.977974, 43.485550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742809, 35.939636, 43.738266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.631302, 36.323673, 43.747280>,  <37.564400, 36.554096, 43.752689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.631302, 36.323673, 43.747280>,  <37.742809, 35.939636, 43.738266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631302, 36.323673, 43.747280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374864, 0.087182, 0.922971,
		0.884175, 0.265740, -0.384209,
		-0.278766, 0.960095, 0.022532,
		37.547672, 36.611702, 43.754040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303398, 36.317707, 44.071468>,  <37.742809, 35.939636, 43.738266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303398, 36.317707, 44.071468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.984150, 36.555851, 44.108452>,  <37.792599, 36.698738, 44.130642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.984150, 36.555851, 44.108452>,  <38.303398, 36.317707, 44.071468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984150, 36.555851, 44.108452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202424, 0.120442, 0.971863,
		0.567469, 0.794384, -0.216642,
		-0.798125, 0.595356, 0.092455,
		37.744713, 36.734459, 44.136189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552189, 36.911663, 44.422878>,  <38.303398, 36.317707, 44.071468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552189, 36.911663, 44.422878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.159260, 36.894058, 44.495659>,  <37.923504, 36.883495, 44.539330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.159260, 36.894058, 44.495659>,  <38.552189, 36.911663, 44.422878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159260, 36.894058, 44.495659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147997, 0.412637, 0.898792,
		-0.114635, 0.909832, -0.398829,
		-0.982322, -0.044008, 0.181955,
		37.864563, 36.880856, 44.550247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390484, 37.524952, 44.763477>,  <38.552189, 36.911663, 44.422878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390484, 37.524952, 44.763477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.039639, 37.346359, 44.834263>,  <37.829132, 37.239204, 44.876736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.039639, 37.346359, 44.834263>,  <38.390484, 37.524952, 44.763477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039639, 37.346359, 44.834263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030037, 0.316748, 0.948034,
		-0.479335, 0.836853, -0.264414,
		-0.877118, -0.446483, 0.176965,
		37.776505, 37.212414, 44.887352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055325, 38.028481, 45.264511>,  <38.390484, 37.524952, 44.763477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055325, 38.028481, 45.264511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.855537, 37.682613, 45.285957>,  <37.735664, 37.475094, 45.298824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.855537, 37.682613, 45.285957>,  <38.055325, 38.028481, 45.264511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855537, 37.682613, 45.285957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037415, 0.040302, 0.998487,
		-0.865525, 0.500717, 0.012222,
		-0.499467, -0.864672, 0.053617,
		37.705696, 37.423210, 45.302044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481346, 38.284355, 45.459431>,  <38.055325, 38.028481, 45.264511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481346, 38.284355, 45.459431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534409, 37.900295, 45.557827>,  <37.566246, 37.669861, 45.616867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534409, 37.900295, 45.557827>,  <37.481346, 38.284355, 45.459431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534409, 37.900295, 45.557827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090358, 0.235439, 0.967680,
		-0.987035, -0.150596, -0.055525,
		0.132656, -0.960151, 0.245994,
		37.574203, 37.612251, 45.631626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929173, 38.098698, 45.958889>,  <37.481346, 38.284355, 45.459431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929173, 38.098698, 45.958889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.199978, 37.807037, 45.998890>,  <37.362461, 37.632042, 46.022892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.199978, 37.807037, 45.998890>,  <36.929173, 38.098698, 45.958889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199978, 37.807037, 45.998890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149779, -0.003469, 0.988714,
		-0.720572, -0.684347, -0.111560,
		0.677010, -0.729148, 0.100001,
		37.403080, 37.588291, 46.028889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622242, 37.615040, 46.423447>,  <36.929173, 38.098698, 45.958889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622242, 37.615040, 46.423447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.011871, 37.526726, 46.443146>,  <37.245651, 37.473736, 46.454964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.011871, 37.526726, 46.443146>,  <36.622242, 37.615040, 46.423447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011871, 37.526726, 46.443146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058720, -0.036552, 0.997605,
		-0.218460, -0.974636, -0.048569,
		0.974077, -0.220789, 0.049246,
		37.304096, 37.460491, 46.457920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818310, 37.018040, 46.917286>,  <36.622242, 37.615040, 46.423447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818310, 37.018040, 46.917286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.185780, 37.175144, 46.900394>,  <37.406261, 37.269405, 46.890259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.185780, 37.175144, 46.900394>,  <36.818310, 37.018040, 46.917286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185780, 37.175144, 46.900394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135119, -0.211991, 0.967886,
		0.371195, -0.894874, -0.247820,
		0.918671, 0.392760, -0.042225,
		37.461380, 37.292973, 46.887726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190678, 36.508335, 47.359661>,  <36.818310, 37.018040, 46.917286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190678, 36.508335, 47.359661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.411331, 36.840797, 47.331722>,  <37.543724, 37.040276, 47.314960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.411331, 36.840797, 47.331722>,  <37.190678, 36.508335, 47.359661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411331, 36.840797, 47.331722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310250, -0.126738, 0.942169,
		0.774237, -0.541403, -0.327780,
		0.551635, 0.831156, -0.069845,
		37.576820, 37.090145, 47.310768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942394, 36.330990, 47.476929>,  <37.190678, 36.508335, 47.359661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942394, 36.330990, 47.476929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.878902, 36.711189, 47.583782>,  <37.840809, 36.939308, 47.647896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.878902, 36.711189, 47.583782>,  <37.942394, 36.330990, 47.476929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878902, 36.711189, 47.583782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417962, -0.180435, 0.890366,
		0.894490, 0.252978, -0.368632,
		-0.158729, 0.950498, 0.267133,
		37.831284, 36.996338, 47.663921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680645, 36.597336, 47.818348>,  <37.942394, 36.330990, 47.476929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680645, 36.597336, 47.818348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.391998, 36.846600, 47.938976>,  <38.218811, 36.996159, 48.011353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.391998, 36.846600, 47.938976>,  <38.680645, 36.597336, 47.818348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391998, 36.846600, 47.938976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460921, 0.107437, 0.880914,
		0.516553, 0.774677, -0.364757,
		-0.721613, 0.623163, 0.301568,
		38.175514, 37.033550, 48.029446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024509, 37.110756, 48.268444>,  <38.680645, 36.597336, 47.818348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024509, 37.110756, 48.268444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.632996, 37.135811, 48.346481>,  <38.398087, 37.150845, 48.393303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.632996, 37.135811, 48.346481>,  <39.024509, 37.110756, 48.268444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632996, 37.135811, 48.346481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195412, -0.001043, 0.980721,
		0.061633, 0.998036, -0.011219,
		-0.978783, 0.062637, 0.195092,
		38.339359, 37.154602, 48.405010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545750, 37.769669, 48.301964>,  <39.024509, 37.110756, 48.268444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545750, 37.769669, 48.301964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.943665, 37.730053, 48.311630>,  <40.182415, 37.706284, 48.317429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.943665, 37.730053, 48.311630>,  <39.545750, 37.769669, 48.301964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943665, 37.730053, 48.311630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045202, 0.216089, -0.975327,
		0.091371, 0.971338, 0.219439,
		0.994790, -0.099036, 0.024162,
		40.242104, 37.700344, 48.318878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795650, 38.296169, 47.860844>,  <39.545750, 37.769669, 48.301964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795650, 38.296169, 47.860844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.122704, 38.067688, 47.889721>,  <40.318935, 37.930599, 47.907047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.122704, 38.067688, 47.889721>,  <39.795650, 38.296169, 47.860844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122704, 38.067688, 47.889721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236347, 0.218650, -0.946748,
		0.524997, 0.791153, 0.313776,
		0.817630, -0.571200, 0.072196,
		40.367992, 37.896328, 47.911381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370392, 38.738163, 47.615944>,  <39.795650, 38.296169, 47.860844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370392, 38.738163, 47.615944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.429817, 38.348160, 47.549862>,  <40.465473, 38.114159, 47.510212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.429817, 38.348160, 47.549862>,  <40.370392, 38.738163, 47.615944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429817, 38.348160, 47.549862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229176, 0.196457, -0.953353,
		0.961980, 0.103776, 0.252635,
		0.148567, -0.975005, -0.165205,
		40.474388, 38.055656, 47.500301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988541, 38.693073, 47.192017>,  <40.370392, 38.738163, 47.615944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988541, 38.693073, 47.192017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.802860, 38.339859, 47.164425>,  <40.691452, 38.127930, 47.147869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.802860, 38.339859, 47.164425>,  <40.988541, 38.693073, 47.192017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802860, 38.339859, 47.164425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106392, 0.021730, -0.994087,
		0.879317, -0.468795, 0.083861,
		-0.464200, -0.883040, -0.068983,
		40.663601, 38.074947, 47.143730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404003, 38.238884, 46.766537>,  <40.988541, 38.693073, 47.192017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404003, 38.238884, 46.766537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.048943, 38.055119, 46.753811>,  <40.835907, 37.944859, 46.746174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.048943, 38.055119, 46.753811>,  <41.404003, 38.238884, 46.766537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048943, 38.055119, 46.753811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014823, 0.040553, -0.999067,
		0.460279, -0.887295, -0.029187,
		-0.887651, -0.459417, -0.031818,
		40.782646, 37.917294, 46.744267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489761, 37.675713, 46.338238>,  <41.404003, 38.238884, 46.766537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489761, 37.675713, 46.338238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.092766, 37.724644, 46.338779>,  <40.854568, 37.754002, 46.339104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.092766, 37.724644, 46.338779>,  <41.489761, 37.675713, 46.338238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092766, 37.724644, 46.338779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021039, -0.159734, -0.986936,
		-0.120508, -0.979552, 0.161108,
		-0.992489, 0.122323, 0.001360,
		40.795021, 37.761341, 46.339188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221722, 37.225174, 45.870823>,  <41.489761, 37.675713, 46.338238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221722, 37.225174, 45.870823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.900322, 37.460625, 45.906372>,  <40.707481, 37.601894, 45.927700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.900322, 37.460625, 45.906372>,  <41.221722, 37.225174, 45.870823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900322, 37.460625, 45.906372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166624, -0.079053, -0.982846,
		-0.571509, -0.804527, 0.161599,
		-0.803501, 0.588632, 0.088874,
		40.659271, 37.637215, 45.933033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617405, 36.873077, 45.511074>,  <41.221722, 37.225174, 45.870823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617405, 36.873077, 45.511074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.533039, 37.263798, 45.525921>,  <40.482418, 37.498230, 45.534828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.533039, 37.263798, 45.525921>,  <40.617405, 36.873077, 45.511074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533039, 37.263798, 45.525921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262501, -0.020026, -0.964724,
		-0.941598, -0.213220, 0.260635,
		-0.210918, 0.976799, 0.037114,
		40.469765, 37.556839, 45.537056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070766, 37.015789, 45.104080>,  <40.617405, 36.873077, 45.511074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070766, 37.015789, 45.104080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.246452, 37.375080, 45.110813>,  <40.351864, 37.590652, 45.114853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.246452, 37.375080, 45.110813>,  <40.070766, 37.015789, 45.104080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246452, 37.375080, 45.110813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109501, 0.072120, -0.991367,
		-0.891685, 0.433577, 0.130032,
		0.439212, 0.898226, 0.016832,
		40.378216, 37.644547, 45.115864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678120, 37.398827, 44.710926>,  <40.070766, 37.015789, 45.104080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678120, 37.398827, 44.710926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.035683, 37.577805, 44.721687>,  <40.250221, 37.685192, 44.728142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.035683, 37.577805, 44.721687>,  <39.678120, 37.398827, 44.710926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035683, 37.577805, 44.721687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076507, 0.211421, -0.974396,
		-0.441679, 0.868960, 0.223224,
		0.893905, 0.447448, 0.026899,
		40.303856, 37.712040, 44.729755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618446, 37.994537, 44.373928>,  <39.678120, 37.398827, 44.710926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618446, 37.994537, 44.373928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.014336, 37.938454, 44.362667>,  <40.251869, 37.904804, 44.355911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.014336, 37.938454, 44.362667>,  <39.618446, 37.994537, 44.373928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014336, 37.938454, 44.362667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011594, 0.274868, -0.961412,
		0.142540, 0.951204, 0.273668,
		0.989721, -0.140213, -0.028151,
		40.311253, 37.896389, 44.354221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891899, 38.577122, 44.003078>,  <39.618446, 37.994537, 44.373928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891899, 38.577122, 44.003078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.195343, 38.317177, 43.984333>,  <40.377407, 38.161209, 43.973087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.195343, 38.317177, 43.984333>,  <39.891899, 38.577122, 44.003078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195343, 38.317177, 43.984333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112989, 0.202051, -0.972835,
		0.641677, 0.732704, 0.226705,
		0.758607, -0.649861, -0.046864,
		40.422924, 38.122219, 43.970272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383045, 38.899315, 43.496883>,  <39.891899, 38.577122, 44.003078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383045, 38.899315, 43.496883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.480259, 38.511456, 43.507557>,  <40.538589, 38.278740, 43.513962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.480259, 38.511456, 43.507557>,  <40.383045, 38.899315, 43.496883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480259, 38.511456, 43.507557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143012, 0.008608, -0.989684,
		0.959416, 0.244348, 0.140764,
		0.243039, -0.969649, 0.026686,
		40.553169, 38.220562, 43.515564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044491, 38.766319, 43.191204>,  <40.383045, 38.899315, 43.496883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044491, 38.766319, 43.191204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.841724, 38.423779, 43.151798>,  <40.720066, 38.218254, 43.128155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.841724, 38.423779, 43.151798>,  <41.044491, 38.766319, 43.191204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841724, 38.423779, 43.151798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186654, 0.002526, -0.982422,
		0.841545, -0.516392, 0.158560,
		-0.506915, -0.856348, -0.098513,
		40.689651, 38.166874, 43.122246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.628075, 39.340382, 36.094673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.512871, 39.567646, 35.786327>,  <32.443748, 39.704006, 35.601318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.512871, 39.567646, 35.786327>,  <32.628075, 39.340382, 36.094673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512871, 39.567646, 35.786327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873380, -0.485995, -0.031886,
		-0.392753, 0.664076, 0.636198,
		-0.288014, 0.568166, -0.770867,
		32.426468, 39.738094, 35.555069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988876, 39.793858, 36.233513>,  <32.628075, 39.340382, 36.094673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988876, 39.793858, 36.233513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.032749, 39.694443, 35.848557>,  <32.059074, 39.634796, 35.617580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.032749, 39.694443, 35.848557>,  <31.988876, 39.793858, 36.233513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032749, 39.694443, 35.848557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830404, -0.555031, 0.048693,
		-0.546260, 0.793834, -0.267260,
		0.109683, -0.248533, -0.962393,
		32.065655, 39.619884, 35.559837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305313, 39.719116, 36.113827>,  <31.988876, 39.793858, 36.233513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305313, 39.719116, 36.113827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.484825, 39.560467, 35.793507>,  <31.592533, 39.465279, 35.601315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.484825, 39.560467, 35.793507>,  <31.305313, 39.719116, 36.113827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484825, 39.560467, 35.793507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790931, -0.593400, -0.149348,
		-0.415961, 0.700404, -0.580010,
		0.448782, -0.396625, -0.800802,
		31.619459, 39.441479, 35.553265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857065, 39.659096, 35.640629>,  <31.305313, 39.719116, 36.113827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857065, 39.659096, 35.640629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.096743, 39.359631, 35.527161>,  <31.240549, 39.179951, 35.459080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.096743, 39.359631, 35.527161>,  <30.857065, 39.659096, 35.640629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096743, 39.359631, 35.527161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795764, -0.595834, -0.108357,
		-0.087896, 0.290661, -0.952780,
		0.599194, -0.748665, -0.283669,
		31.276501, 39.135033, 35.442059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632395, 39.317337, 34.922924>,  <30.857065, 39.659096, 35.640629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632395, 39.317337, 34.922924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.868792, 39.048855, 35.101906>,  <31.010630, 38.887768, 35.209297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.868792, 39.048855, 35.101906>,  <30.632395, 39.317337, 34.922924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868792, 39.048855, 35.101906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717303, -0.691032, -0.089173,
		0.369060, -0.268261, -0.889849,
		0.590992, -0.671201, 0.447456,
		31.046089, 38.847496, 35.236141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503521, 38.794422, 34.551537>,  <30.632395, 39.317337, 34.922924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503521, 38.794422, 34.551537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.655922, 38.626190, 34.880890>,  <30.747362, 38.525253, 35.078503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.655922, 38.626190, 34.880890>,  <30.503521, 38.794422, 34.551537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655922, 38.626190, 34.880890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644552, -0.759294, -0.089587,
		0.662865, -0.496578, -0.560375,
		0.381002, -0.420575, 0.823379,
		30.770222, 38.500019, 35.127903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562654, 38.170929, 34.384247>,  <30.503521, 38.794422, 34.551537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562654, 38.170929, 34.384247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.520336, 38.196484, 34.781181>,  <30.494946, 38.211819, 35.019341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.520336, 38.196484, 34.781181>,  <30.562654, 38.170929, 34.384247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520336, 38.196484, 34.781181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756973, -0.652299, -0.038708,
		0.644825, -0.755265, 0.117374,
		-0.105798, 0.063889, 0.992333,
		30.488596, 38.215649, 35.078880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449585, 37.483032, 34.582397>,  <30.562654, 38.170929, 34.384247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449585, 37.483032, 34.582397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.330177, 37.712635, 34.887394>,  <30.258533, 37.850399, 35.070393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.330177, 37.712635, 34.887394>,  <30.449585, 37.483032, 34.582397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330177, 37.712635, 34.887394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718305, -0.661178, 0.216521,
		0.628430, -0.483069, 0.609689,
		-0.298518, 0.574011, 0.762495,
		30.240622, 37.884838, 35.116142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267832, 36.975277, 35.083424>,  <30.449585, 37.483032, 34.582397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267832, 36.975277, 35.083424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.087666, 37.290798, 35.250717>,  <29.979565, 37.480110, 35.351093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.087666, 37.290798, 35.250717>,  <30.267832, 36.975277, 35.083424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087666, 37.290798, 35.250717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696347, -0.603544, 0.388376,
		0.558771, -0.116302, 0.821126,
		-0.450417, 0.788802, 0.418230,
		29.952539, 37.527439, 35.376186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173340, 36.722588, 35.705208>,  <30.267832, 36.975277, 35.083424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173340, 36.722588, 35.705208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.917706, 37.016075, 35.612923>,  <29.764324, 37.192165, 35.557552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.917706, 37.016075, 35.612923>,  <30.173340, 36.722588, 35.705208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917706, 37.016075, 35.612923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767167, -0.586654, 0.259407,
		0.054979, 0.342782, 0.937805,
		-0.639087, 0.733715, -0.230717,
		29.725979, 37.236191, 35.543709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614891, 36.855644, 36.335903>,  <30.173340, 36.722588, 35.705208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614891, 36.855644, 36.335903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.482510, 36.973946, 35.977463>,  <29.403080, 37.044926, 35.762398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.482510, 36.973946, 35.977463>,  <29.614891, 36.855644, 36.335903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482510, 36.973946, 35.977463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853541, -0.498782, 0.150613,
		-0.402414, 0.814705, 0.417514,
		-0.330954, 0.295756, -0.896101,
		29.383223, 37.062672, 35.708633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930630, 37.104832, 36.487095>,  <29.614891, 36.855644, 36.335903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930630, 37.104832, 36.487095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.936575, 37.066452, 36.088985>,  <28.940142, 37.043427, 35.850121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.936575, 37.066452, 36.088985>,  <28.930630, 37.104832, 36.487095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936575, 37.066452, 36.088985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867818, -0.495661, 0.034824,
		-0.496661, 0.863200, -0.090630,
		0.014862, -0.095946, -0.995276,
		28.941032, 37.037666, 35.790401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273409, 37.306145, 36.195034>,  <28.930630, 37.104832, 36.487095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273409, 37.306145, 36.195034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414787, 37.052238, 35.920181>,  <28.499615, 36.899895, 35.755272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414787, 37.052238, 35.920181>,  <28.273409, 37.306145, 36.195034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414787, 37.052238, 35.920181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880610, -0.473588, -0.015471,
		-0.315596, 0.610562, -0.726370,
		0.353447, -0.634766, -0.687129,
		28.520821, 36.861809, 35.714043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688408, 36.994881, 35.909882>,  <28.273409, 37.306145, 36.195034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688408, 36.994881, 35.909882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.964273, 36.760925, 35.739109>,  <28.129793, 36.620552, 35.636646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.964273, 36.760925, 35.739109>,  <27.688408, 36.994881, 35.909882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964273, 36.760925, 35.739109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637628, -0.769945, 0.024783,
		-0.343207, 0.255130, -0.903946,
		0.689666, -0.584887, -0.426929,
		28.171173, 36.585461, 35.611031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328417, 36.647133, 35.334515>,  <27.688408, 36.994881, 35.909882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328417, 36.647133, 35.334515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.635542, 36.444927, 35.491955>,  <27.819817, 36.323605, 35.586418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.635542, 36.444927, 35.491955>,  <27.328417, 36.647133, 35.334515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635542, 36.444927, 35.491955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566777, -0.822388, 0.049413,
		0.298713, -0.261023, -0.917953,
		0.767811, -0.505515, 0.393600,
		27.865885, 36.293274, 35.610035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361126, 36.015324, 35.078186>,  <27.328417, 36.647133, 35.334515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361126, 36.015324, 35.078186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.593670, 35.941761, 35.395222>,  <27.733196, 35.897625, 35.585445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.593670, 35.941761, 35.395222>,  <27.361126, 36.015324, 35.078186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593670, 35.941761, 35.395222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413568, -0.905690, 0.093203,
		0.700702, -0.381975, -0.602587,
		0.581359, -0.183903, 0.792592,
		27.768078, 35.886589, 35.632999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401260, 35.218071, 35.032921>,  <27.361126, 36.015324, 35.078186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401260, 35.218071, 35.032921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.541988, 35.317646, 35.393864>,  <27.626425, 35.377392, 35.610432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.541988, 35.317646, 35.393864>,  <27.401260, 35.218071, 35.032921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541988, 35.317646, 35.393864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243137, -0.906602, 0.344903,
		0.903941, -0.340740, -0.258432,
		0.351817, 0.248937, 0.902361,
		27.647533, 35.392326, 35.664574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755304, 34.638237, 35.192368>,  <27.401260, 35.218071, 35.032921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755304, 34.638237, 35.192368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.703176, 34.810020, 35.549824>,  <27.671900, 34.913090, 35.764297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.703176, 34.810020, 35.549824>,  <27.755304, 34.638237, 35.192368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703176, 34.810020, 35.549824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239775, -0.888219, 0.391885,
		0.962042, -0.163202, 0.218723,
		-0.130318, 0.429455, 0.893636,
		27.664082, 34.938858, 35.817913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912817, 34.102390, 35.671513>,  <27.755304, 34.638237, 35.192368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912817, 34.102390, 35.671513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.715387, 34.381287, 35.879452>,  <27.596930, 34.548622, 36.004215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.715387, 34.381287, 35.879452>,  <27.912817, 34.102390, 35.671513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715387, 34.381287, 35.879452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414048, -0.714031, 0.564557,
		0.764819, 0.063408, 0.641118,
		-0.493575, 0.697237, 0.519850,
		27.567314, 34.590458, 36.035408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085363, 33.963039, 36.492584>,  <27.912817, 34.102390, 35.671513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085363, 33.963039, 36.492584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.745018, 34.159737, 36.418587>,  <27.540812, 34.277756, 36.374187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.745018, 34.159737, 36.418587>,  <28.085363, 33.963039, 36.492584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745018, 34.159737, 36.418587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499211, -0.646936, 0.576422,
		0.163773, 0.582805, 0.795937,
		-0.850862, 0.491743, -0.184992,
		27.489759, 34.307259, 36.363091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640675, 33.801380, 37.114887>,  <28.085363, 33.963039, 36.492584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640675, 33.801380, 37.114887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.369192, 33.956875, 36.865650>,  <27.206303, 34.050171, 36.716110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.369192, 33.956875, 36.865650>,  <27.640675, 33.801380, 37.114887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369192, 33.956875, 36.865650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728193, -0.466385, 0.502215,
		-0.095369, 0.794586, 0.599614,
		-0.678704, 0.388739, -0.623091,
		27.165581, 34.073498, 36.678722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175619, 33.997520, 37.672375>,  <27.640675, 33.801380, 37.114887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175619, 33.997520, 37.672375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.395105, 33.862808, 37.978443>,  <27.526796, 33.781982, 38.162086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.395105, 33.862808, 37.978443>,  <27.175619, 33.997520, 37.672375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395105, 33.862808, 37.978443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335391, 0.927065, 0.167520,
		-0.765783, 0.164712, 0.621648,
		0.548715, -0.336779, 0.765174,
		27.559719, 33.761776, 38.207996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045412, 34.469650, 38.259125>,  <27.175619, 33.997520, 37.672375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045412, 34.469650, 38.259125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.394127, 34.304195, 38.364117>,  <27.603355, 34.204922, 38.427113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.394127, 34.304195, 38.364117>,  <27.045412, 34.469650, 38.259125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394127, 34.304195, 38.364117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331278, 0.892480, 0.306160,
		-0.360893, -0.179954, 0.915081,
		0.871786, -0.413637, 0.262476,
		27.655663, 34.180103, 38.442860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196716, 34.695316, 38.991566>,  <27.045412, 34.469650, 38.259125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196716, 34.695316, 38.991566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.547415, 34.599804, 38.824566>,  <27.757833, 34.542496, 38.724365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.547415, 34.599804, 38.824566>,  <27.196716, 34.695316, 38.991566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547415, 34.599804, 38.824566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418798, 0.805847, 0.418592,
		0.236489, -0.541845, 0.806521,
		0.876745, -0.238777, -0.417498,
		27.810438, 34.528172, 38.699318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712234, 34.715240, 39.526531>,  <27.196716, 34.695316, 38.991566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712234, 34.715240, 39.526531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.938223, 34.721272, 39.196541>,  <28.073816, 34.724892, 38.998547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.938223, 34.721272, 39.196541>,  <27.712234, 34.715240, 39.526531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938223, 34.721272, 39.196541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553086, 0.735030, 0.392209,
		0.612296, -0.677867, 0.406927,
		0.564969, 0.015082, -0.824974,
		28.107714, 34.725796, 38.949047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405479, 34.772789, 39.787350>,  <27.712234, 34.715240, 39.526531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405479, 34.772789, 39.787350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.433376, 34.914349, 39.414280>,  <28.450115, 34.999287, 39.190437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.433376, 34.914349, 39.414280>,  <28.405479, 34.772789, 39.787350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433376, 34.914349, 39.414280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421796, 0.836805, 0.349063,
		0.904005, -0.417744, -0.090914,
		0.069742, 0.353902, -0.932679,
		28.454298, 35.020519, 39.134476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122894, 34.868343, 39.543747>,  <28.405479, 34.772789, 39.787350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122894, 34.868343, 39.543747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.905682, 35.111156, 39.311668>,  <28.775354, 35.256844, 39.172421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.905682, 35.111156, 39.311668>,  <29.122894, 34.868343, 39.543747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905682, 35.111156, 39.311668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540201, 0.781528, 0.312083,
		0.642883, -0.143950, -0.752316,
		-0.543032, 0.607035, -0.580194,
		28.742771, 35.293266, 39.137611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646688, 35.165863, 39.091629>,  <29.122894, 34.868343, 39.543747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646688, 35.165863, 39.091629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.320934, 35.397923, 39.085842>,  <29.125483, 35.537159, 39.082371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.320934, 35.397923, 39.085842>,  <29.646688, 35.165863, 39.091629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320934, 35.397923, 39.085842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579209, 0.814108, 0.041764,
		0.036006, 0.025633, -0.999023,
		-0.814383, 0.580147, -0.014466,
		29.076620, 35.571968, 39.081501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850203, 35.621899, 38.568798>,  <29.646688, 35.165863, 39.091629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850203, 35.621899, 38.568798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.568954, 35.801453, 38.789387>,  <29.400206, 35.909187, 38.921741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.568954, 35.801453, 38.789387>,  <29.850203, 35.621899, 38.568798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568954, 35.801453, 38.789387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514975, 0.856253, -0.040389,
		-0.490330, 0.255597, -0.833214,
		-0.703119, 0.448889, 0.551473,
		29.358019, 35.936119, 38.954830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772282, 36.096405, 38.194160>,  <29.850203, 35.621899, 38.568798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772282, 36.096405, 38.194160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.639957, 36.204659, 38.555782>,  <29.560564, 36.269611, 38.772755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.639957, 36.204659, 38.555782>,  <29.772282, 36.096405, 38.194160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639957, 36.204659, 38.555782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573789, 0.818255, -0.034990,
		-0.749221, 0.507164, -0.425973,
		-0.330809, 0.270634, 0.904059,
		29.540714, 36.285851, 38.827000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419802, 36.819908, 38.105862>,  <29.772282, 36.096405, 38.194160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419802, 36.819908, 38.105862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.482935, 36.825005, 38.500816>,  <29.520815, 36.828064, 38.737789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.482935, 36.825005, 38.500816>,  <29.419802, 36.819908, 38.105862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482935, 36.825005, 38.500816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560673, 0.821948, -0.100232,
		-0.812855, 0.569420, 0.122587,
		0.157834, 0.012743, 0.987383,
		29.530285, 36.828827, 38.797031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358852, 37.486080, 38.204277>,  <29.419802, 36.819908, 38.105862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358852, 37.486080, 38.204277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.547783, 37.327156, 38.518997>,  <29.661140, 37.231800, 38.707829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.547783, 37.327156, 38.518997>,  <29.358852, 37.486080, 38.204277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547783, 37.327156, 38.518997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602954, 0.796754, 0.040379,
		-0.642928, 0.455331, 0.615888,
		0.472325, -0.397313, 0.786798,
		29.689480, 37.207962, 38.755035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375467, 37.955765, 38.730762>,  <29.358852, 37.486080, 38.204277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375467, 37.955765, 38.730762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.692251, 37.743904, 38.852268>,  <29.882320, 37.616787, 38.925171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.692251, 37.743904, 38.852268>,  <29.375467, 37.955765, 38.730762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692251, 37.743904, 38.852268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490320, 0.848158, 0.200537,
		-0.363851, -0.009878, 0.931405,
		0.791959, -0.529652, 0.303760,
		29.929838, 37.585007, 38.943398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634865, 38.301754, 39.243179>,  <29.375467, 37.955765, 38.730762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634865, 38.301754, 39.243179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.947550, 38.075806, 39.137466>,  <30.135160, 37.940235, 39.074039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.947550, 38.075806, 39.137466>,  <29.634865, 38.301754, 39.243179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947550, 38.075806, 39.137466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619474, 0.752223, 0.224528,
		0.071969, -0.339231, 0.937946,
		0.781711, -0.564874, -0.264281,
		30.182064, 37.906342, 39.058182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191170, 38.286823, 39.836536>,  <29.634865, 38.301754, 39.243179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191170, 38.286823, 39.836536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.361876, 38.189129, 39.488232>,  <30.464298, 38.130512, 39.279251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.361876, 38.189129, 39.488232>,  <30.191170, 38.286823, 39.836536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361876, 38.189129, 39.488232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606516, 0.791502, 0.075254,
		0.670829, -0.560246, 0.485915,
		0.426763, -0.244232, -0.870760,
		30.489904, 38.115860, 39.227005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960443, 38.487995, 39.929039>,  <30.191170, 38.286823, 39.836536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960443, 38.487995, 39.929039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.891941, 38.459942, 39.535950>,  <30.850840, 38.443111, 39.300095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.891941, 38.459942, 39.535950>,  <30.960443, 38.487995, 39.929039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891941, 38.459942, 39.535950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655177, 0.736841, -0.166761,
		0.735807, -0.672419, -0.080248,
		-0.171263, -0.070128, -0.982726,
		30.840565, 38.438900, 39.241131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671618, 38.438538, 39.658772>,  <30.960443, 38.487995, 39.929039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671618, 38.438538, 39.658772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.439423, 38.508999, 39.340775>,  <31.300106, 38.551277, 39.149979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.439423, 38.508999, 39.340775>,  <31.671618, 38.438538, 39.658772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439423, 38.508999, 39.340775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695888, 0.614287, -0.372011,
		0.422820, -0.769170, -0.479168,
		-0.580485, 0.176153, -0.794988,
		31.265278, 38.561844, 39.102280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044197, 38.323849, 39.010052>,  <31.671618, 38.438538, 39.658772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044197, 38.323849, 39.010052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.753416, 38.581863, 38.915848>,  <31.578947, 38.736671, 38.859325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.753416, 38.581863, 38.915848>,  <32.044197, 38.323849, 39.010052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753416, 38.581863, 38.915848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667605, 0.583608, -0.462283,
		-0.160746, -0.493285, -0.854886,
		-0.726956, 0.645036, -0.235507,
		31.535330, 38.775375, 38.845196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253952, 38.422348, 38.409187>,  <32.044197, 38.323849, 39.010052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253952, 38.422348, 38.409187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.995127, 38.707569, 38.517166>,  <31.839832, 38.878700, 38.581955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.995127, 38.707569, 38.517166>,  <32.253952, 38.422348, 38.409187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995127, 38.707569, 38.517166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481121, 0.656532, -0.580937,
		-0.591468, -0.246023, -0.767879,
		-0.647061, 0.713049, 0.269951,
		31.801008, 38.921482, 38.598152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137703, 38.792519, 37.752575>,  <32.253952, 38.422348, 38.409187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137703, 38.792519, 37.752575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.030800, 39.043369, 38.045227>,  <31.966658, 39.193878, 38.220818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.030800, 39.043369, 38.045227>,  <32.137703, 38.792519, 37.752575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030800, 39.043369, 38.045227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483487, 0.744036, -0.461142,
		-0.833555, 0.230492, -0.502055,
		-0.267258, 0.627124, 0.731634,
		31.950623, 39.231506, 38.264717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080685, 39.404011, 37.383400>,  <32.137703, 38.792519, 37.752575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080685, 39.404011, 37.383400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.104591, 39.491222, 37.773045>,  <32.118935, 39.543549, 38.006832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.104591, 39.491222, 37.773045>,  <32.080685, 39.404011, 37.383400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104591, 39.491222, 37.773045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717531, 0.669032, -0.193768,
		-0.693958, 0.710536, -0.116455,
		0.059767, 0.218027, 0.974111,
		32.122520, 39.556629, 38.065277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979235, 40.099037, 37.397430>,  <32.080685, 39.404011, 37.383400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979235, 40.099037, 37.397430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.209442, 39.981735, 37.702789>,  <32.347569, 39.911354, 37.886005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.209442, 39.981735, 37.702789>,  <31.979235, 40.099037, 37.397430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209442, 39.981735, 37.702789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745876, 0.571004, -0.342962,
		-0.335330, 0.766784, 0.547354,
		0.575519, -0.293253, 0.763400,
		32.382099, 39.893761, 37.931808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.649937, 34.286278, 48.805389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.259018, 34.367943, 48.828033>,  <43.024467, 34.416943, 48.841621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.259018, 34.367943, 48.828033>,  <43.649937, 34.286278, 48.805389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259018, 34.367943, 48.828033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119610, 0.311115, 0.942815,
		0.174871, 0.928184, -0.328472,
		-0.977299, 0.204159, 0.056615,
		42.965828, 34.429192, 48.845016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575043, 34.990532, 49.112381>,  <43.649937, 34.286278, 48.805389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575043, 34.990532, 49.112381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.239094, 34.782890, 49.175808>,  <43.037525, 34.658306, 49.213863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.239094, 34.782890, 49.175808>,  <43.575043, 34.990532, 49.112381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239094, 34.782890, 49.175808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014551, 0.270502, 0.962609,
		-0.542584, 0.810779, -0.219635,
		-0.839876, -0.519100, 0.158567,
		42.987129, 34.627159, 49.223377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170116, 35.392979, 49.596195>,  <43.575043, 34.990532, 49.112381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170116, 35.392979, 49.596195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.029831, 35.018456, 49.603416>,  <42.945660, 34.793743, 49.607750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.029831, 35.018456, 49.603416>,  <43.170116, 35.392979, 49.596195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029831, 35.018456, 49.603416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037008, 0.033119, 0.998766,
		-0.935749, 0.349617, -0.046267,
		-0.350718, -0.936307, 0.018053,
		42.924614, 34.737564, 49.608833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671101, 35.465023, 50.039005>,  <43.170116, 35.392979, 49.596195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671101, 35.465023, 50.039005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.772873, 35.078190, 50.040081>,  <42.833939, 34.846088, 50.040726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.772873, 35.078190, 50.040081>,  <42.671101, 35.465023, 50.039005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772873, 35.078190, 50.040081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221361, -0.055532, 0.973610,
		-0.941415, -0.248315, -0.228205,
		0.254435, -0.967086, 0.002689,
		42.849205, 34.788063, 50.040886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111362, 35.093288, 50.418842>,  <42.671101, 35.465023, 50.039005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111362, 35.093288, 50.418842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.405983, 34.822781, 50.423676>,  <42.582756, 34.660477, 50.426575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.405983, 34.822781, 50.423676>,  <42.111362, 35.093288, 50.418842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405983, 34.822781, 50.423676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177441, -0.175959, 0.968273,
		-0.652689, -0.715330, -0.249601,
		0.736554, -0.676270, 0.012082,
		42.626949, 34.619900, 50.427299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828308, 34.573936, 50.811398>,  <42.111362, 35.093288, 50.418842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828308, 34.573936, 50.811398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.225483, 34.534592, 50.837944>,  <42.463787, 34.510986, 50.853870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.225483, 34.534592, 50.837944>,  <41.828308, 34.573936, 50.811398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225483, 34.534592, 50.837944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086900, -0.222018, 0.971162,
		-0.080786, -0.970069, -0.228997,
		0.992936, -0.098356, 0.066363,
		42.523365, 34.505085, 50.857853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980911, 33.982742, 51.198441>,  <41.828308, 34.573936, 50.811398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980911, 33.982742, 51.198441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.298069, 34.223740, 51.234913>,  <42.488365, 34.368340, 51.256794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.298069, 34.223740, 51.234913>,  <41.980911, 33.982742, 51.198441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298069, 34.223740, 51.234913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063239, -0.067463, 0.995716,
		0.606064, -0.795267, -0.015390,
		0.792898, 0.602494, 0.091179,
		42.535938, 34.404488, 51.262268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230148, 33.647247, 51.730274>,  <41.980911, 33.982742, 51.198441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230148, 33.647247, 51.730274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.445465, 33.983952, 51.713902>,  <42.574654, 34.185974, 51.704079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.445465, 33.983952, 51.713902>,  <42.230148, 33.647247, 51.730274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445465, 33.983952, 51.713902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042723, 0.021252, 0.998861,
		0.841675, -0.539427, -0.024522,
		0.538291, 0.841764, -0.040933,
		42.606953, 34.236481, 51.701622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663288, 33.538300, 52.260067>,  <42.230148, 33.647247, 51.730274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663288, 33.538300, 52.260067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.641663, 33.931713, 52.191086>,  <42.628689, 34.167763, 52.149696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.641663, 33.931713, 52.191086>,  <42.663288, 33.538300, 52.260067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641663, 33.931713, 52.191086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056131, 0.175425, 0.982892,
		0.996959, 0.043459, -0.064691,
		-0.054063, 0.983533, -0.172452,
		42.625443, 34.226772, 52.139351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082123, 33.781300, 52.825523>,  <42.663288, 33.538300, 52.260067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.082123, 33.781300, 52.825523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.968014, 34.143238, 52.699112>,  <42.899548, 34.360401, 52.623264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.968014, 34.143238, 52.699112>,  <43.082123, 33.781300, 52.825523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968014, 34.143238, 52.699112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000115, 0.329766, 0.944063,
		0.958445, 0.269282, -0.094178,
		-0.285276, 0.904843, -0.316032,
		42.882431, 34.414692, 52.604301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383709, 34.318279, 53.228619>,  <43.082123, 33.781300, 52.825523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383709, 34.318279, 53.228619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.061069, 34.490398, 53.066513>,  <42.867485, 34.593670, 52.969250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.061069, 34.490398, 53.066513>,  <43.383709, 34.318279, 53.228619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061069, 34.490398, 53.066513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386133, 0.135525, 0.912433,
		0.447542, 0.892455, 0.056838,
		-0.806602, 0.430300, -0.405259,
		42.819088, 34.619488, 52.944935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350380, 34.933617, 53.456112>,  <43.383709, 34.318279, 53.228619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350380, 34.933617, 53.456112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.972775, 34.849388, 53.354527>,  <42.746212, 34.798851, 53.293575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.972775, 34.849388, 53.354527>,  <43.350380, 34.933617, 53.456112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972775, 34.849388, 53.354527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298814, 0.219491, 0.928727,
		-0.139815, 0.952620, -0.270123,
		-0.944014, -0.210567, -0.253968,
		42.689571, 34.786217, 53.278336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931557, 35.278748, 53.906025>,  <43.350380, 34.933617, 53.456112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931557, 35.278748, 53.906025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.633888, 35.059982, 53.752613>,  <42.455288, 34.928722, 53.660564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.633888, 35.059982, 53.752613>,  <42.931557, 35.278748, 53.906025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.633888, 35.059982, 53.752613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544232, 0.163478, 0.822853,
		-0.387332, 0.821071, -0.419304,
		-0.744167, -0.546916, -0.383533,
		42.410637, 34.895908, 53.637554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231209, 35.673691, 53.808456>,  <42.931557, 35.278748, 53.906025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231209, 35.673691, 53.808456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.136566, 35.285210, 53.819626>,  <42.079781, 35.052120, 53.826328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.136566, 35.285210, 53.819626>,  <42.231209, 35.673691, 53.808456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136566, 35.285210, 53.819626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761552, 0.203231, 0.615415,
		-0.603369, 0.124346, -0.787708,
		-0.236611, -0.971203, 0.027927,
		42.065582, 34.993847, 53.828003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629261, 35.993378, 53.904102>,  <42.231209, 35.673691, 53.808456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629261, 35.993378, 53.904102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.359932, 36.276459, 53.818497>,  <41.198334, 36.446308, 53.767132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.359932, 36.276459, 53.818497>,  <41.629261, 35.993378, 53.904102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359932, 36.276459, 53.818497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240274, -0.064302, -0.968573,
		-0.699219, -0.703583, -0.126746,
		-0.673321, 0.707698, -0.214014,
		41.157936, 36.488770, 53.754292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088360, 35.679611, 53.358898>,  <41.629261, 35.993378, 53.904102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088360, 35.679611, 53.358898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.048706, 36.077343, 53.343464>,  <41.024914, 36.315983, 53.334206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.048706, 36.077343, 53.343464>,  <41.088360, 35.679611, 53.358898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048706, 36.077343, 53.343464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070426, -0.045686, -0.996470,
		-0.992578, -0.096072, 0.074555,
		-0.099139, 0.994325, -0.038581,
		41.018963, 36.375641, 53.331890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396332, 35.865570, 52.961040>,  <41.088360, 35.679611, 53.358898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396332, 35.865570, 52.961040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.618275, 36.198299, 52.955215>,  <40.751438, 36.397938, 52.951721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.618275, 36.198299, 52.955215>,  <40.396332, 35.865570, 52.961040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618275, 36.198299, 52.955215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244406, 0.146248, -0.958581,
		-0.795239, 0.535429, 0.284448,
		0.554853, 0.831821, -0.014560,
		40.784729, 36.447845, 52.950848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990105, 36.413078, 52.644279>,  <40.396332, 35.865570, 52.961040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990105, 36.413078, 52.644279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.360836, 36.560410, 52.615089>,  <40.583275, 36.648808, 52.597576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.360836, 36.560410, 52.615089>,  <39.990105, 36.413078, 52.644279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360836, 36.560410, 52.615089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223409, 0.384723, -0.895587,
		-0.301789, 0.846360, 0.438859,
		0.926829, 0.368324, -0.072979,
		40.638885, 36.670906, 52.593197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918774, 37.100094, 52.436142>,  <39.990105, 36.413078, 52.644279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918774, 37.100094, 52.436142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.276779, 36.957043, 52.329525>,  <40.491585, 36.871212, 52.265556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.276779, 36.957043, 52.329525>,  <39.918774, 37.100094, 52.436142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276779, 36.957043, 52.329525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150384, 0.320641, -0.935187,
		0.419914, 0.877092, 0.233198,
		0.895018, -0.357628, -0.266543,
		40.545284, 36.849754, 52.249561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066872, 37.621399, 52.071579>,  <39.918774, 37.100094, 52.436142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066872, 37.621399, 52.071579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.338112, 37.342487, 51.978642>,  <40.500858, 37.175140, 51.922878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.338112, 37.342487, 51.978642>,  <40.066872, 37.621399, 52.071579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338112, 37.342487, 51.978642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011531, 0.326183, -0.945236,
		0.734876, 0.638289, 0.229226,
		0.678104, -0.697274, -0.232344,
		40.541542, 37.133305, 51.908939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597897, 37.985752, 51.745914>,  <40.066872, 37.621399, 52.071579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597897, 37.985752, 51.745914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.615856, 37.605797, 51.622177>,  <40.626633, 37.377823, 51.547935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.615856, 37.605797, 51.622177>,  <40.597897, 37.985752, 51.745914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615856, 37.605797, 51.622177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276035, 0.309401, -0.909987,
		0.960098, -0.044533, 0.276094,
		0.044899, -0.949888, -0.309348,
		40.629326, 37.320831, 51.529373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154869, 37.942135, 51.326614>,  <40.597897, 37.985752, 51.745914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154869, 37.942135, 51.326614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.970402, 37.613750, 51.191944>,  <40.859722, 37.416721, 51.111141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.970402, 37.613750, 51.191944>,  <41.154869, 37.942135, 51.326614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970402, 37.613750, 51.191944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122448, 0.316921, -0.940514,
		0.878822, -0.474963, -0.045630,
		-0.461170, -0.820958, -0.336675,
		40.832050, 37.367462, 51.090942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588871, 37.585918, 50.791752>,  <41.154869, 37.942135, 51.326614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588871, 37.585918, 50.791752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.216850, 37.455898, 50.723228>,  <40.993637, 37.377888, 50.682114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.216850, 37.455898, 50.723228>,  <41.588871, 37.585918, 50.791752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216850, 37.455898, 50.723228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195635, -0.043415, -0.979715,
		0.311017, -0.944700, 0.103969,
		-0.930051, -0.325048, -0.171313,
		40.937836, 37.358383, 50.671833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611694, 37.261917, 50.146248>,  <41.588871, 37.585918, 50.791752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611694, 37.261917, 50.146248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.213177, 37.270786, 50.179478>,  <40.974064, 37.276108, 50.199413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.213177, 37.270786, 50.179478>,  <41.611694, 37.261917, 50.146248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213177, 37.270786, 50.179478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085812, -0.195942, -0.976854,
		-0.005383, -0.980365, 0.197119,
		-0.996297, 0.022174, 0.083072,
		40.914288, 37.277439, 50.204399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284195, 36.734413, 49.712154>,  <41.611694, 37.261917, 50.146248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284195, 36.734413, 49.712154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.987076, 36.994198, 49.777214>,  <40.808804, 37.150066, 49.816250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.987076, 36.994198, 49.777214>,  <41.284195, 36.734413, 49.712154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987076, 36.994198, 49.777214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231088, -0.020695, -0.972713,
		-0.628371, -0.760115, 0.165454,
		-0.742798, 0.649459, 0.162649,
		40.764236, 37.189037, 49.826008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685120, 36.427544, 49.368454>,  <41.284195, 36.734413, 49.712154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685120, 36.427544, 49.368454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.662437, 36.824280, 49.414116>,  <40.648830, 37.062321, 49.441513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.662437, 36.824280, 49.414116>,  <40.685120, 36.427544, 49.368454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662437, 36.824280, 49.414116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252875, 0.096341, -0.962691,
		-0.965836, -0.083452, 0.245350,
		-0.056701, 0.991844, 0.114152,
		40.645428, 37.121834, 49.448360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053604, 36.576351, 49.033165>,  <40.685120, 36.427544, 49.368454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053604, 36.576351, 49.033165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.260021, 36.916996, 49.069946>,  <40.383873, 37.121384, 49.092014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.260021, 36.916996, 49.069946>,  <40.053604, 36.576351, 49.033165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260021, 36.916996, 49.069946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286905, 0.272999, -0.918236,
		-0.807085, 0.447468, 0.385211,
		0.516043, 0.851613, 0.091953,
		40.414833, 37.172482, 49.097530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621330, 37.153992, 48.889965>,  <40.053604, 36.576351, 49.033165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621330, 37.153992, 48.889965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.980953, 37.312149, 48.814743>,  <40.196728, 37.407043, 48.769611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.980953, 37.312149, 48.814743>,  <39.621330, 37.153992, 48.889965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980953, 37.312149, 48.814743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321853, 0.305634, -0.896102,
		-0.296839, 0.866170, 0.402040,
		0.899054, 0.395396, -0.188056,
		40.250668, 37.430767, 48.758327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961441, 37.653313, 48.794777>,  <39.621330, 37.153992, 48.889965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961441, 37.653313, 48.794777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.607109, 37.471260, 48.830898>,  <38.394508, 37.362030, 48.852570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.607109, 37.471260, 48.830898>,  <38.961441, 37.653313, 48.794777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607109, 37.471260, 48.830898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080899, 0.343122, 0.935800,
		-0.456896, 0.821658, -0.340769,
		-0.885834, -0.455131, 0.090300,
		38.341358, 37.334721, 48.857986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522224, 38.127434, 49.222107>,  <38.961441, 37.653313, 48.794777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522224, 38.127434, 49.222107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.359497, 37.766029, 49.276028>,  <38.261860, 37.549187, 49.308380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.359497, 37.766029, 49.276028>,  <38.522224, 38.127434, 49.222107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359497, 37.766029, 49.276028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233586, 0.245541, 0.940823,
		-0.883142, 0.351254, -0.310937,
		-0.406815, -0.903510, 0.134800,
		38.237453, 37.494976, 49.316467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054714, 38.187084, 49.799603>,  <38.522224, 38.127434, 49.222107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054714, 38.187084, 49.799603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.086384, 37.792572, 49.741661>,  <38.105385, 37.555866, 49.706894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.086384, 37.792572, 49.741661>,  <38.054714, 38.187084, 49.799603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086384, 37.792572, 49.741661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323350, -0.162865, 0.932159,
		-0.942961, -0.026967, -0.331809,
		0.079177, -0.986280, -0.144855,
		38.110138, 37.496689, 49.698204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409500, 37.903179, 49.938686>,  <38.054714, 38.187084, 49.799603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409500, 37.903179, 49.938686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.693314, 37.629684, 50.006874>,  <37.863602, 37.465588, 50.047787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.693314, 37.629684, 50.006874>,  <37.409500, 37.903179, 49.938686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693314, 37.629684, 50.006874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334057, -0.113371, 0.935710,
		-0.620456, -0.720865, -0.308849,
		0.709535, -0.683740, 0.170468,
		37.906174, 37.424564, 50.058014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145836, 37.252758, 50.231224>,  <37.409500, 37.903179, 49.938686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145836, 37.252758, 50.231224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.524483, 37.211746, 50.353474>,  <37.751671, 37.187141, 50.426823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.524483, 37.211746, 50.353474>,  <37.145836, 37.252758, 50.231224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524483, 37.211746, 50.353474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321770, -0.243226, 0.915044,
		-0.019480, -0.964536, -0.263232,
		0.946617, -0.102525, 0.305621,
		37.808468, 37.180988, 50.445160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230095, 36.698711, 50.597218>,  <37.145836, 37.252758, 50.231224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230095, 36.698711, 50.597218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.574265, 36.859268, 50.722790>,  <37.780766, 36.955601, 50.798134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.574265, 36.859268, 50.722790>,  <37.230095, 36.698711, 50.597218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574265, 36.859268, 50.722790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271972, -0.159240, 0.949038,
		0.430922, -0.901959, -0.027849,
		0.860428, 0.401388, 0.313928,
		37.832394, 36.979683, 50.816967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321674, 36.305984, 51.162415>,  <37.230095, 36.698711, 50.597218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321674, 36.305984, 51.162415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.567242, 36.612835, 51.236843>,  <37.714581, 36.796947, 51.281498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.567242, 36.612835, 51.236843>,  <37.321674, 36.305984, 51.162415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567242, 36.612835, 51.236843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107679, -0.152127, 0.982478,
		0.781995, -0.623192, -0.010789,
		0.613914, 0.767131, 0.186067,
		37.751415, 36.842976, 51.292664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578609, 35.634769, 51.332623>,  <37.321674, 36.305984, 51.162415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578609, 35.634769, 51.332623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384106, 35.285355, 51.341496>,  <37.267403, 35.075706, 51.346817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384106, 35.285355, 51.341496>,  <37.578609, 35.634769, 51.332623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384106, 35.285355, 51.341496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162474, 0.065444, -0.984540,
		0.858579, -0.482342, -0.173749,
		-0.486256, -0.873535, 0.022179,
		37.238228, 35.023293, 51.348148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742043, 35.270485, 50.646324>,  <37.578609, 35.634769, 51.332623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742043, 35.270485, 50.646324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431328, 35.061546, 50.787037>,  <37.244900, 34.936184, 50.871468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431328, 35.061546, 50.787037>,  <37.742043, 35.270485, 50.646324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431328, 35.061546, 50.787037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255978, -0.248490, -0.934199,
		0.575394, -0.815723, 0.059314,
		-0.776786, -0.522349, 0.351787,
		37.198292, 34.904842, 50.892574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869614, 34.617126, 50.412773>,  <37.742043, 35.270485, 50.646324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869614, 34.617126, 50.412773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.477619, 34.661774, 50.478699>,  <37.242420, 34.688560, 50.518253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.477619, 34.661774, 50.478699>,  <37.869614, 34.617126, 50.412773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477619, 34.661774, 50.478699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190542, -0.286564, -0.938922,
		-0.057573, -0.951537, 0.302098,
		-0.979989, 0.111619, 0.164810,
		37.183624, 34.695259, 50.528141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630173, 33.999603, 50.181702>,  <37.869614, 34.617126, 50.412773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630173, 33.999603, 50.181702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.329224, 34.263077, 50.185074>,  <37.148655, 34.421162, 50.187096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.329224, 34.263077, 50.185074>,  <37.630173, 33.999603, 50.181702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329224, 34.263077, 50.185074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089016, -0.088985, -0.992047,
		-0.652694, -0.747141, 0.125583,
		-0.752374, 0.658682, 0.008427,
		37.103512, 34.460682, 50.187603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164879, 33.678455, 49.766544>,  <37.630173, 33.999603, 50.181702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164879, 33.678455, 49.766544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.052223, 34.061165, 49.795567>,  <36.984631, 34.290791, 49.812981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.052223, 34.061165, 49.795567>,  <37.164879, 33.678455, 49.766544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052223, 34.061165, 49.795567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177246, 0.022434, -0.983911,
		-0.943006, -0.289972, 0.163265,
		-0.281644, 0.956772, 0.072551,
		36.967731, 34.348198, 49.817333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390503, 33.616089, 49.564369>,  <37.164879, 33.678455, 49.766544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390503, 33.616089, 49.564369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.551102, 33.979702, 49.519714>,  <36.647461, 34.197868, 49.492920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.551102, 33.979702, 49.519714>,  <36.390503, 33.616089, 49.564369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551102, 33.979702, 49.519714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282863, 0.007142, -0.959134,
		-0.871083, 0.416672, 0.259998,
		0.401501, 0.909029, -0.111640,
		36.671551, 34.252411, 49.486221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877590, 34.025173, 49.277500>,  <36.390503, 33.616089, 49.564369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877590, 34.025173, 49.277500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.235168, 34.189774, 49.206478>,  <36.449715, 34.288532, 49.163864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.235168, 34.189774, 49.206478>,  <35.877590, 34.025173, 49.277500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235168, 34.189774, 49.206478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239496, 0.103747, -0.965338,
		-0.378813, 0.905487, 0.191296,
		0.893948, 0.411498, -0.177560,
		36.503353, 34.313221, 49.153210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.261902, 33.175804, 53.493176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.603767, 33.304886, 53.330494>,  <40.808887, 33.382336, 53.232883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.603767, 33.304886, 53.330494>,  <40.261902, 33.175804, 53.493176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603767, 33.304886, 53.330494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437132, 0.024631, -0.899060,
		-0.280110, 0.946181, 0.162114,
		0.854666, 0.322701, -0.406707,
		40.860168, 33.401695, 53.208481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073330, 33.338760, 52.839256>,  <40.261902, 33.175804, 53.493176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073330, 33.338760, 52.839256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.470348, 33.386543, 52.829563>,  <40.708557, 33.415211, 52.823746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.470348, 33.386543, 52.829563>,  <40.073330, 33.338760, 52.839256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470348, 33.386543, 52.829563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022104, -0.019139, -0.999572,
		-0.119868, 0.992655, -0.016356,
		0.992544, 0.119455, -0.024236,
		40.768112, 33.422379, 52.822292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188488, 33.945202, 52.544514>,  <40.073330, 33.338760, 52.839256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188488, 33.945202, 52.544514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.508472, 33.719540, 52.462746>,  <40.700462, 33.584141, 52.413685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.508472, 33.719540, 52.462746>,  <40.188488, 33.945202, 52.544514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508472, 33.719540, 52.462746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221709, 0.038678, -0.974345,
		0.557589, 0.824762, -0.094137,
		0.799962, -0.564155, -0.204424,
		40.748463, 33.550293, 52.401417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630589, 34.295589, 51.943268>,  <40.188488, 33.945202, 52.544514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630589, 34.295589, 51.943268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.701466, 33.901932, 51.946407>,  <40.743992, 33.665737, 51.948292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.701466, 33.901932, 51.946407>,  <40.630589, 34.295589, 51.943268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701466, 33.901932, 51.946407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343712, -0.069355, -0.936511,
		0.922207, 0.163240, -0.350551,
		0.177189, -0.984146, 0.007852,
		40.754623, 33.606689, 51.948761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994122, 34.221523, 51.281918>,  <40.630589, 34.295589, 51.943268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994122, 34.221523, 51.281918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.847679, 33.871159, 51.407608>,  <40.759811, 33.660938, 51.483021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.847679, 33.871159, 51.407608>,  <40.994122, 34.221523, 51.281918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847679, 33.871159, 51.407608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230483, -0.241798, -0.942556,
		0.901577, -0.417503, -0.113359,
		-0.366110, -0.875914, 0.314226,
		40.737846, 33.608383, 51.501877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209511, 33.661400, 50.855598>,  <40.994122, 34.221523, 51.281918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209511, 33.661400, 50.855598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.871174, 33.498009, 50.992825>,  <40.668171, 33.399975, 51.075161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.871174, 33.498009, 50.992825>,  <41.209511, 33.661400, 50.855598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871174, 33.498009, 50.992825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208431, -0.338915, -0.917439,
		0.491022, -0.847516, 0.201530,
		-0.845845, -0.408478, 0.343063,
		40.617420, 33.375465, 51.095745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182053, 33.071980, 50.507236>,  <41.209511, 33.661400, 50.855598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182053, 33.071980, 50.507236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.814236, 33.089993, 50.663395>,  <40.593544, 33.100800, 50.757092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.814236, 33.089993, 50.663395>,  <41.182053, 33.071980, 50.507236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814236, 33.089993, 50.663395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369004, -0.440681, -0.818314,
		0.135187, -0.896534, 0.421844,
		-0.919544, 0.045036, 0.390398,
		40.538372, 33.103504, 50.780514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863499, 32.390182, 50.457226>,  <41.182053, 33.071980, 50.507236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863499, 32.390182, 50.457226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.572330, 32.664436, 50.459839>,  <40.397629, 32.828987, 50.461407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.572330, 32.664436, 50.459839>,  <40.863499, 32.390182, 50.457226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572330, 32.664436, 50.459839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384808, -0.400618, -0.831521,
		-0.567503, -0.607792, 0.555454,
		-0.727918, 0.685634, 0.006531,
		40.353954, 32.870125, 50.461800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367973, 31.973669, 50.192734>,  <40.863499, 32.390182, 50.457226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367973, 31.973669, 50.192734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.237270, 32.351624, 50.184601>,  <40.158848, 32.578396, 50.179722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.237270, 32.351624, 50.184601>,  <40.367973, 31.973669, 50.192734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237270, 32.351624, 50.184601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472934, -0.182100, -0.862075,
		-0.818267, -0.272076, 0.506373,
		-0.326760, 0.944889, -0.020333,
		40.139244, 32.635090, 50.178501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664471, 31.982357, 50.279984>,  <40.367973, 31.973669, 50.192734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664471, 31.982357, 50.279984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.769535, 32.298164, 50.058113>,  <39.832573, 32.487648, 49.924992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.769535, 32.298164, 50.058113>,  <39.664471, 31.982357, 50.279984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769535, 32.298164, 50.058113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647905, -0.281668, -0.707730,
		-0.715002, 0.545272, 0.437550,
		0.262662, 0.789520, -0.554678,
		39.848335, 32.535019, 49.891708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059765, 32.104683, 49.964375>,  <39.664471, 31.982357, 50.279984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059765, 32.104683, 49.964375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.332203, 32.297611, 49.744015>,  <39.495667, 32.413368, 49.611801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.332203, 32.297611, 49.744015>,  <39.059765, 32.104683, 49.964375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332203, 32.297611, 49.744015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544272, -0.169782, -0.821549,
		-0.489778, 0.859386, 0.146874,
		0.681091, 0.482316, -0.550895,
		39.536530, 32.442307, 49.578747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642422, 32.463867, 49.426468>,  <39.059765, 32.104683, 49.964375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642422, 32.463867, 49.426468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.016415, 32.482155, 49.285770>,  <39.240810, 32.493126, 49.201351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.016415, 32.482155, 49.285770>,  <38.642422, 32.463867, 49.426468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016415, 32.482155, 49.285770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334163, -0.219016, -0.916715,
		-0.118950, 0.974649, -0.189497,
		0.934979, 0.045720, -0.351744,
		39.296909, 32.495872, 49.180248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976639, 32.565212, 49.244316>,  <38.642422, 32.463867, 49.426468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976639, 32.565212, 49.244316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.768318, 32.224857, 49.271908>,  <37.643326, 32.020645, 49.288464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.768318, 32.224857, 49.271908>,  <37.976639, 32.565212, 49.244316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768318, 32.224857, 49.271908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116408, 0.009263, 0.993158,
		-0.845702, 0.525271, 0.094225,
		-0.520805, -0.850884, 0.068980,
		37.612076, 31.969591, 49.292603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467968, 32.679325, 49.799950>,  <37.976639, 32.565212, 49.244316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467968, 32.679325, 49.799950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.509605, 32.283440, 49.760712>,  <37.534588, 32.045906, 49.737167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.509605, 32.283440, 49.760712>,  <37.467968, 32.679325, 49.799950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509605, 32.283440, 49.760712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038075, -0.094596, 0.994788,
		-0.993839, -0.107285, 0.027837,
		0.104092, -0.989718, -0.098098,
		37.540833, 31.986525, 49.731281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182766, 32.529217, 50.499081>,  <37.467968, 32.679325, 49.799950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182766, 32.529217, 50.499081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.348328, 32.181252, 50.391804>,  <37.447666, 31.972471, 50.327438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.348328, 32.181252, 50.391804>,  <37.182766, 32.529217, 50.499081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348328, 32.181252, 50.391804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302897, -0.146211, 0.941741,
		-0.858448, -0.471028, 0.202977,
		0.413908, -0.869917, -0.268188,
		37.472500, 31.920277, 50.311348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961330, 32.072639, 50.931080>,  <37.182766, 32.529217, 50.499081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961330, 32.072639, 50.931080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.289013, 31.895596, 50.785206>,  <37.485622, 31.789370, 50.697681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.289013, 31.895596, 50.785206>,  <36.961330, 32.072639, 50.931080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289013, 31.895596, 50.785206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298631, -0.213669, 0.930143,
		-0.489610, -0.870887, -0.042863,
		0.819208, -0.442607, -0.364688,
		37.534775, 31.762814, 50.675800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967476, 31.418009, 51.227512>,  <36.961330, 32.072639, 50.931080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967476, 31.418009, 51.227512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.338425, 31.530224, 51.128498>,  <37.560993, 31.597553, 51.069088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.338425, 31.530224, 51.128498>,  <36.967476, 31.418009, 51.227512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338425, 31.530224, 51.128498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320774, -0.255660, 0.911999,
		0.192566, -0.925168, -0.327081,
		0.927374, 0.280539, -0.247538,
		37.616638, 31.614386, 51.054237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380520, 30.875761, 51.447407>,  <36.967476, 31.418009, 51.227512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380520, 30.875761, 51.447407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.600082, 31.208338, 51.412975>,  <37.731819, 31.407885, 51.392319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.600082, 31.208338, 51.412975>,  <37.380520, 30.875761, 51.447407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600082, 31.208338, 51.412975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341995, -0.129425, 0.930746,
		0.762721, -0.540328, -0.355391,
		0.548904, 0.831441, -0.086075,
		37.764755, 31.457769, 51.387154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903633, 30.611721, 51.846252>,  <37.380520, 30.875761, 51.447407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903633, 30.611721, 51.846252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.981865, 31.003588, 51.828369>,  <38.028805, 31.238708, 51.817638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.981865, 31.003588, 51.828369>,  <37.903633, 30.611721, 51.846252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981865, 31.003588, 51.828369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449355, -0.049000, 0.892008,
		0.871681, -0.194553, -0.449802,
		0.195583, 0.979667, -0.044711,
		38.040539, 31.297487, 51.814957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583580, 30.731270, 52.126846>,  <37.903633, 30.611721, 51.846252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583580, 30.731270, 52.126846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.414207, 31.093555, 52.118954>,  <38.312584, 31.310926, 52.114220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.414207, 31.093555, 52.118954>,  <38.583580, 30.731270, 52.126846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414207, 31.093555, 52.118954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237851, 0.132163, 0.962268,
		0.874146, 0.402763, -0.271387,
		-0.423433, 0.905712, -0.019732,
		38.287178, 31.365269, 52.113033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014984, 31.146387, 52.475788>,  <38.583580, 30.731270, 52.126846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014984, 31.146387, 52.475788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.668121, 31.343515, 52.504551>,  <38.460003, 31.461792, 52.521809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.668121, 31.343515, 52.504551>,  <39.014984, 31.146387, 52.475788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668121, 31.343515, 52.504551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147564, 0.116347, 0.982185,
		0.475676, 0.862317, -0.173614,
		-0.867154, 0.492822, 0.071904,
		38.407974, 31.491362, 52.526123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080025, 31.805199, 52.836498>,  <39.014984, 31.146387, 52.475788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080025, 31.805199, 52.836498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.690025, 31.725344, 52.875530>,  <38.456024, 31.677431, 52.898949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.690025, 31.725344, 52.875530>,  <39.080025, 31.805199, 52.836498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690025, 31.725344, 52.875530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036819, 0.287920, 0.956946,
		-0.219137, 0.936615, -0.273371,
		-0.974999, -0.199637, 0.097579,
		38.397526, 31.665453, 52.904804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857182, 32.384125, 53.124947>,  <39.080025, 31.805199, 52.836498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857182, 32.384125, 53.124947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.565834, 32.117855, 53.189888>,  <38.391026, 31.958092, 53.228851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.565834, 32.117855, 53.189888>,  <38.857182, 32.384125, 53.124947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565834, 32.117855, 53.189888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049998, 0.287951, 0.956339,
		-0.683363, 0.688446, -0.243016,
		-0.728364, -0.665677, 0.162354,
		38.347324, 31.918152, 53.238594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448479, 32.689674, 53.657772>,  <38.857182, 32.384125, 53.124947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448479, 32.689674, 53.657772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.351181, 32.303162, 53.691555>,  <38.292801, 32.071255, 53.711826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.351181, 32.303162, 53.691555>,  <38.448479, 32.689674, 53.657772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351181, 32.303162, 53.691555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036505, 0.077893, 0.996293,
		-0.969278, 0.245425, 0.016327,
		-0.243243, -0.966281, 0.084460,
		38.278210, 32.013279, 53.716892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977188, 32.665977, 54.219566>,  <38.448479, 32.689674, 53.657772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977188, 32.665977, 54.219566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.148155, 32.306072, 54.184380>,  <38.250736, 32.090130, 54.163269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.148155, 32.306072, 54.184380>,  <37.977188, 32.665977, 54.219566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148155, 32.306072, 54.184380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103087, -0.048157, 0.993506,
		-0.898158, -0.433709, 0.072171,
		0.427417, -0.899765, -0.087962,
		38.276379, 32.036144, 54.157990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144699, 33.428684, 54.418755>,  <37.977188, 32.665977, 54.219566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144699, 33.428684, 54.418755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.780956, 33.594074, 54.400383>,  <37.562710, 33.693310, 54.389359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.780956, 33.594074, 54.400383>,  <38.144699, 33.428684, 54.418755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780956, 33.594074, 54.400383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217289, 0.377913, -0.899982,
		-0.354761, -0.828385, -0.433501,
		-0.909357, 0.413474, -0.045930,
		37.508148, 33.718117, 54.386604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715279, 33.302383, 53.822903>,  <38.144699, 33.428684, 54.418755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715279, 33.302383, 53.822903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.586266, 33.665199, 53.931168>,  <37.508858, 33.882889, 53.996128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.586266, 33.665199, 53.931168>,  <37.715279, 33.302383, 53.822903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586266, 33.665199, 53.931168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092373, 0.314738, -0.944673,
		-0.942040, -0.279686, -0.185299,
		-0.322532, 0.907037, 0.270661,
		37.489506, 33.937309, 54.012367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262886, 33.443611, 53.348545>,  <37.715279, 33.302383, 53.822903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262886, 33.443611, 53.348545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.350399, 33.796986, 53.514278>,  <37.402905, 34.009010, 53.613720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.350399, 33.796986, 53.514278>,  <37.262886, 33.443611, 53.348545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350399, 33.796986, 53.514278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116114, 0.445172, -0.887885,
		-0.968842, 0.146140, 0.199973,
		0.218778, 0.883439, 0.414333,
		37.416031, 34.062016, 53.638577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693367, 33.793152, 53.339363>,  <37.262886, 33.443611, 53.348545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693367, 33.793152, 53.339363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.017178, 34.027596, 53.325836>,  <37.211464, 34.168259, 53.317719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.017178, 34.027596, 53.325836>,  <36.693367, 33.793152, 53.339363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017178, 34.027596, 53.325836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218828, 0.247786, -0.943778,
		-0.544772, 0.771417, 0.328846,
		0.809529, 0.586104, -0.033820,
		37.260036, 34.203426, 53.315689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447964, 34.319790, 53.020443>,  <36.693367, 33.793152, 53.339363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447964, 34.319790, 53.020443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.840473, 34.378803, 52.970913>,  <37.075981, 34.414211, 52.941196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.840473, 34.378803, 52.970913>,  <36.447964, 34.319790, 53.020443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840473, 34.378803, 52.970913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173364, 0.396418, -0.901553,
		-0.083919, 0.906139, 0.414572,
		0.981276, 0.147530, -0.123825,
		37.134857, 34.423061, 52.933765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596317, 35.083515, 52.954082>,  <36.447964, 34.319790, 53.020443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596317, 35.083515, 52.954082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.894741, 34.880650, 52.781487>,  <37.073795, 34.758930, 52.677929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.894741, 34.880650, 52.781487>,  <36.596317, 35.083515, 52.954082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894741, 34.880650, 52.781487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172196, 0.479016, -0.860751,
		0.643232, 0.716470, 0.270042,
		0.746057, -0.507162, -0.431492,
		37.118557, 34.728500, 52.652039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633190, 35.354164, 52.289284>,  <36.596317, 35.083515, 52.954082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633190, 35.354164, 52.289284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.905727, 35.072727, 52.208553>,  <37.069248, 34.903866, 52.160114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.905727, 35.072727, 52.208553>,  <36.633190, 35.354164, 52.289284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905727, 35.072727, 52.208553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020728, 0.294162, -0.955531,
		0.731672, 0.646860, 0.215009,
		0.681342, -0.703592, -0.201822,
		37.110130, 34.861649, 52.148006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179173, 35.655838, 51.962067>,  <36.633190, 35.354164, 52.289284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179173, 35.655838, 51.962067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.170204, 35.271717, 51.850838>,  <37.164822, 35.041245, 51.784100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.170204, 35.271717, 51.850838>,  <37.179173, 35.655838, 51.962067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170204, 35.271717, 51.850838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025951, 0.277489, -0.960378,
		0.999412, -0.028748, 0.018699,
		-0.022420, -0.960298, -0.278072,
		37.163479, 34.983627, 51.767418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806023, 36.162716, 51.829285>,  <37.179173, 35.655838, 51.962067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806023, 36.162716, 51.829285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.879593, 36.554768, 51.799591>,  <37.923737, 36.790001, 51.781773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.879593, 36.554768, 51.799591>,  <37.806023, 36.162716, 51.829285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879593, 36.554768, 51.799591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132585, 0.050098, 0.989905,
		0.973957, -0.191911, -0.120737,
		0.183925, 0.980133, -0.074238,
		37.934769, 36.848808, 51.777321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307194, 36.180550, 52.332146>,  <37.806023, 36.162716, 51.829285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307194, 36.180550, 52.332146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.207954, 36.558907, 52.248497>,  <38.148411, 36.785919, 52.198307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.207954, 36.558907, 52.248497>,  <38.307194, 36.180550, 52.332146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207954, 36.558907, 52.248497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192385, 0.259682, 0.946337,
		0.949439, 0.194555, -0.246403,
		-0.248101, 0.945893, -0.209123,
		38.133526, 36.842674, 52.185760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947556, 36.495205, 52.550556>,  <38.307194, 36.180550, 52.332146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947556, 36.495205, 52.550556> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.596439, 36.686550, 52.540398>,  <38.385769, 36.801357, 52.534302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.596439, 36.686550, 52.540398>,  <38.947556, 36.495205, 52.550556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596439, 36.686550, 52.540398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043687, 0.132743, 0.990187,
		0.477042, 0.868071, -0.137420,
		-0.877794, 0.478364, -0.025400,
		38.333099, 36.830059, 52.532776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024780, 37.020538, 52.952221>,  <38.947556, 36.495205, 52.550556>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024780, 37.020538, 52.952221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.628311, 36.973209, 52.928326>,  <38.390430, 36.944813, 52.913986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.628311, 36.973209, 52.928326>,  <39.024780, 37.020538, 52.952221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628311, 36.973209, 52.928326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088138, 0.251701, 0.963783,
		-0.099004, 0.960544, -0.259909,
		-0.991176, -0.118327, -0.059741,
		38.330959, 36.937710, 52.910404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781467, 37.657761, 53.177109>,  <39.024780, 37.020538, 52.952221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781467, 37.657761, 53.177109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.493412, 37.384823, 53.227413>,  <38.320580, 37.221062, 53.257595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.493412, 37.384823, 53.227413>,  <38.781467, 37.657761, 53.177109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493412, 37.384823, 53.227413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017596, 0.163238, 0.986430,
		-0.693612, 0.712575, -0.105547,
		-0.720134, -0.682342, 0.125762,
		38.277370, 37.180119, 53.265141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400784, 37.984749, 53.621948>,  <38.781467, 37.657761, 53.177109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400784, 37.984749, 53.621948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.299931, 37.599407, 53.658558>,  <38.239418, 37.368202, 53.680523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.299931, 37.599407, 53.658558>,  <38.400784, 37.984749, 53.621948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299931, 37.599407, 53.658558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055330, 0.108775, 0.992525,
		-0.966109, 0.245187, -0.080729,
		-0.252136, -0.963354, 0.091522,
		38.224289, 37.310402, 53.686016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886971, 38.033039, 54.131184>,  <38.400784, 37.984749, 53.621948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886971, 38.033039, 54.131184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.025208, 37.658493, 54.106552>,  <38.108150, 37.433765, 54.091774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.025208, 37.658493, 54.106552>,  <37.886971, 38.033039, 54.131184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025208, 37.658493, 54.106552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056744, -0.044649, 0.997390,
		-0.936666, -0.348188, 0.037702,
		0.345596, -0.936361, -0.061578,
		38.128887, 37.377586, 54.088078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383121, 37.568466, 54.593330>,  <37.886971, 38.033039, 54.131184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383121, 37.568466, 54.593330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.724972, 37.366055, 54.546787>,  <37.930084, 37.244606, 54.518860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.724972, 37.366055, 54.546787>,  <37.383121, 37.568466, 54.593330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724972, 37.366055, 54.546787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057112, -0.131129, 0.989719,
		-0.516087, -0.852489, -0.083166,
		0.854630, -0.506032, -0.116361,
		37.981361, 37.214245, 54.511879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295242, 36.999043, 55.066032>,  <37.383121, 37.568466, 54.593330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295242, 36.999043, 55.066032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.689594, 37.016327, 55.001312>,  <37.926205, 37.026695, 54.962479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.689594, 37.016327, 55.001312>,  <37.295242, 36.999043, 55.066032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689594, 37.016327, 55.001312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163818, -0.048152, 0.985315,
		0.034785, -0.997905, -0.054551,
		0.985877, 0.043210, -0.161799,
		37.985359, 37.029289, 54.952774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.170135, 36.191780, 38.329796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522556, 36.367981, 38.398735>,  <37.734009, 36.473701, 38.440098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522556, 36.367981, 38.398735>,  <37.170135, 36.191780, 38.329796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522556, 36.367981, 38.398735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164658, -0.055960, 0.984762,
		0.443434, -0.896006, 0.023229,
		0.881053, 0.440502, 0.172349,
		37.786873, 36.500130, 38.450439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461395, 35.813976, 38.915020>,  <37.170135, 36.191780, 38.329796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461395, 35.813976, 38.915020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677235, 36.150505, 38.927746>,  <37.806740, 36.352421, 38.935379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677235, 36.150505, 38.927746>,  <37.461395, 35.813976, 38.915020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677235, 36.150505, 38.927746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119631, -0.114021, 0.986249,
		0.833379, -0.528374, -0.162174,
		0.539600, 0.841320, 0.031812,
		37.839115, 36.402901, 38.937290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968864, 35.745838, 39.401360>,  <37.461395, 35.813976, 38.915020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968864, 35.745838, 39.401360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960518, 36.145748, 39.402885>,  <37.955509, 36.385693, 39.403801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960518, 36.145748, 39.402885>,  <37.968864, 35.745838, 39.401360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960518, 36.145748, 39.402885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006087, -0.003685, 0.999975,
		0.999764, 0.020891, -0.006008,
		-0.020869, 0.999775, 0.003812,
		37.954258, 36.445679, 39.404030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504860, 35.949783, 39.876934>,  <37.968864, 35.745838, 39.401360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504860, 35.949783, 39.876934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253349, 36.256737, 39.826721>,  <38.102444, 36.440910, 39.796593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253349, 36.256737, 39.826721>,  <38.504860, 35.949783, 39.876934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253349, 36.256737, 39.826721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080119, 0.096648, 0.992089,
		0.773449, 0.633858, 0.000713,
		-0.628775, 0.767387, -0.125536,
		38.064716, 36.486954, 39.789059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732403, 36.471085, 40.379623>,  <38.504860, 35.949783, 39.876934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732403, 36.471085, 40.379623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365753, 36.593384, 40.276619>,  <38.145763, 36.666763, 40.214817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365753, 36.593384, 40.276619>,  <38.732403, 36.471085, 40.379623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365753, 36.593384, 40.276619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226923, 0.132338, 0.964880,
		0.329090, 0.942870, -0.051923,
		-0.916627, 0.305750, -0.257510,
		38.090763, 36.685108, 40.199368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600399, 37.063671, 40.733955>,  <38.732403, 36.471085, 40.379623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600399, 37.063671, 40.733955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230579, 36.941574, 40.642708>,  <38.008686, 36.868317, 40.587959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230579, 36.941574, 40.642708>,  <38.600399, 37.063671, 40.733955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230579, 36.941574, 40.642708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340733, 0.394178, 0.853537,
		-0.170617, 0.866863, -0.468442,
		-0.924549, -0.305241, -0.228116,
		37.953217, 36.850002, 40.574272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192448, 37.574806, 40.998787>,  <38.600399, 37.063671, 40.733955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192448, 37.574806, 40.998787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941120, 37.268650, 40.943077>,  <37.790325, 37.084957, 40.909649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941120, 37.268650, 40.943077>,  <38.192448, 37.574806, 40.998787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941120, 37.268650, 40.943077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304325, 0.077053, 0.949447,
		-0.715964, 0.638939, -0.281341,
		-0.628317, -0.765389, -0.139278,
		37.752625, 37.039032, 40.901295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507114, 37.767384, 41.313564>,  <38.192448, 37.574806, 40.998787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507114, 37.767384, 41.313564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531113, 37.368145, 41.319149>,  <37.545509, 37.128601, 41.322498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531113, 37.368145, 41.319149>,  <37.507114, 37.767384, 41.313564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531113, 37.368145, 41.319149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323871, -0.006237, 0.946081,
		-0.944197, -0.061279, -0.323630,
		0.059993, -0.998101, 0.013957,
		37.549110, 37.068714, 41.323338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909019, 37.565083, 41.557484>,  <37.507114, 37.767384, 41.313564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909019, 37.565083, 41.557484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111633, 37.223518, 41.605240>,  <37.233204, 37.018581, 41.633892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111633, 37.223518, 41.605240>,  <36.909019, 37.565083, 41.557484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111633, 37.223518, 41.605240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275401, -0.029018, 0.960891,
		-0.817052, -0.519609, -0.249867,
		0.506538, -0.853911, 0.119392,
		37.263596, 36.967346, 41.641056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449944, 37.060631, 41.948139>,  <36.909019, 37.565083, 41.557484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449944, 37.060631, 41.948139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829353, 36.940189, 41.987392>,  <37.056999, 36.867924, 42.010944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829353, 36.940189, 41.987392>,  <36.449944, 37.060631, 41.948139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829353, 36.940189, 41.987392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084132, 0.059152, 0.994697,
		-0.305316, -0.951754, 0.030775,
		0.948527, -0.301107, 0.098133,
		37.113911, 36.849857, 42.016830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400730, 36.452053, 42.487835>,  <36.449944, 37.060631, 41.948139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400730, 36.452053, 42.487835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769680, 36.606506, 42.483288>,  <36.991051, 36.699181, 42.480560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769680, 36.606506, 42.483288>,  <36.400730, 36.452053, 42.487835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769680, 36.606506, 42.483288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053376, -0.098243, 0.993730,
		0.382600, -0.917195, -0.111227,
		0.922371, 0.386138, -0.011369,
		37.046391, 36.722347, 42.479877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583790, 36.214893, 43.011356>,  <36.400730, 36.452053, 42.487835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583790, 36.214893, 43.011356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858250, 36.503151, 42.971615>,  <37.022926, 36.676105, 42.947769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858250, 36.503151, 42.971615>,  <36.583790, 36.214893, 43.011356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858250, 36.503151, 42.971615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099261, 0.042546, 0.994151,
		0.720655, -0.691999, -0.042338,
		0.686151, 0.720643, -0.099349,
		37.064095, 36.719345, 42.941811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594612, 35.497417, 43.072754>,  <36.583790, 36.214893, 43.011356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594612, 35.497417, 43.072754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258064, 35.313370, 43.186161>,  <36.056133, 35.202942, 43.254204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258064, 35.313370, 43.186161>,  <36.594612, 35.497417, 43.072754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258064, 35.313370, 43.186161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356145, 0.077453, -0.931215,
		0.406514, -0.884471, -0.229037,
		-0.841372, -0.460122, 0.283514,
		36.005653, 35.175335, 43.271214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498516, 35.011517, 42.580421>,  <36.594612, 35.497417, 43.072754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498516, 35.011517, 42.580421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144077, 35.081886, 42.751942>,  <35.931412, 35.124107, 42.854855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144077, 35.081886, 42.751942>,  <36.498516, 35.011517, 42.580421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144077, 35.081886, 42.751942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429694, 0.034998, -0.902296,
		-0.173749, -0.983780, 0.044585,
		-0.886100, 0.175931, 0.428805,
		35.878246, 35.134666, 42.880585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158703, 34.602264, 42.221901>,  <36.498516, 35.011517, 42.580421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158703, 34.602264, 42.221901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892483, 34.868103, 42.357758>,  <35.732750, 35.027607, 42.439274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892483, 34.868103, 42.357758>,  <36.158703, 34.602264, 42.221901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892483, 34.868103, 42.357758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406838, 0.058472, -0.911627,
		-0.625722, -0.744913, 0.231466,
		-0.665549, 0.664594, 0.339646,
		35.692818, 35.067482, 42.459652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557796, 34.326794, 42.077999>,  <36.158703, 34.602264, 42.221901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557796, 34.326794, 42.077999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460014, 34.712830, 42.115631>,  <35.401344, 34.944450, 42.138210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460014, 34.712830, 42.115631>,  <35.557796, 34.326794, 42.077999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460014, 34.712830, 42.115631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511845, -0.046026, -0.857844,
		-0.823563, -0.257859, 0.505226,
		-0.244456, 0.965085, 0.094078,
		35.386677, 35.002354, 42.143856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871342, 34.331055, 41.875206>,  <35.557796, 34.326794, 42.077999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871342, 34.331055, 41.875206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980179, 34.715961, 41.876072>,  <35.045483, 34.946907, 41.876591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980179, 34.715961, 41.876072>,  <34.871342, 34.331055, 41.875206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980179, 34.715961, 41.876072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528336, 0.151277, -0.835450,
		-0.804254, 0.226176, 0.549563,
		0.272095, 0.962268, 0.002168,
		35.061806, 35.004642, 41.876724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273041, 34.844433, 41.718922>,  <34.871342, 34.331055, 41.875206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273041, 34.844433, 41.718922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598728, 35.062355, 41.638680>,  <34.794140, 35.193108, 41.590534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598728, 35.062355, 41.638680>,  <34.273041, 34.844433, 41.718922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598728, 35.062355, 41.638680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388596, 0.254697, -0.885507,
		-0.431332, 0.798949, 0.419086,
		0.814215, 0.544802, -0.200609,
		34.842991, 35.225796, 41.578495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090755, 35.517582, 41.465431>,  <34.273041, 34.844433, 41.718922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090755, 35.517582, 41.465431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457577, 35.441994, 41.324970>,  <34.677670, 35.396641, 41.240696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457577, 35.441994, 41.324970>,  <34.090755, 35.517582, 41.465431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457577, 35.441994, 41.324970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306527, 0.229195, -0.923856,
		0.255064, 0.954861, 0.152258,
		0.917051, -0.188971, -0.351150,
		34.732693, 35.385303, 41.219624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036060, 35.956772, 40.906647>,  <34.090755, 35.517582, 41.465431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036060, 35.956772, 40.906647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356358, 35.724094, 40.849457>,  <34.548538, 35.584488, 40.815144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356358, 35.724094, 40.849457>,  <34.036060, 35.956772, 40.906647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356358, 35.724094, 40.849457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257198, -0.118316, -0.959088,
		0.540976, 0.804759, -0.244351,
		0.800746, -0.581690, -0.142977,
		34.596581, 35.549587, 40.806564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349957, 36.228878, 40.277592>,  <34.036060, 35.956772, 40.906647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349957, 36.228878, 40.277592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440048, 35.846966, 40.355217>,  <34.494102, 35.617817, 40.401794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440048, 35.846966, 40.355217>,  <34.349957, 36.228878, 40.277592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440048, 35.846966, 40.355217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271637, -0.252822, -0.928598,
		0.935673, 0.156434, -0.316297,
		0.225231, -0.954783, 0.194065,
		34.507618, 35.560532, 40.413437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606571, 35.907093, 39.606884>,  <34.349957, 36.228878, 40.277592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606571, 35.907093, 39.606884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495651, 35.613964, 39.855427>,  <34.429100, 35.438087, 40.004551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495651, 35.613964, 39.855427>,  <34.606571, 35.907093, 39.606884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495651, 35.613964, 39.855427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227869, -0.578101, -0.783502,
		0.933369, -0.358855, -0.006677,
		-0.277303, -0.732818, 0.621353,
		34.412460, 35.394119, 40.041832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852646, 35.324337, 39.292351>,  <34.606571, 35.907093, 39.606884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852646, 35.324337, 39.292351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551113, 35.223816, 39.535198>,  <34.370193, 35.163506, 39.680904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551113, 35.223816, 39.535198>,  <34.852646, 35.324337, 39.292351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551113, 35.223816, 39.535198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325657, -0.659616, -0.677388,
		0.570691, -0.708346, 0.415401,
		-0.753830, -0.251301, 0.607115,
		34.324963, 35.148426, 39.717331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753109, 34.610126, 39.235691>,  <34.852646, 35.324337, 39.292351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753109, 34.610126, 39.235691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397018, 34.724014, 39.377914>,  <34.183365, 34.792347, 39.463249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397018, 34.724014, 39.377914>,  <34.753109, 34.610126, 39.235691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397018, 34.724014, 39.377914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454343, -0.610849, -0.648410,
		0.032578, -0.738780, 0.673158,
		-0.890231, 0.284721, 0.355560,
		34.129948, 34.809429, 39.484581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348076, 34.023003, 39.657494>,  <34.753109, 34.610126, 39.235691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348076, 34.023003, 39.657494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111015, 34.302483, 39.497200>,  <33.968781, 34.470169, 39.401024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111015, 34.302483, 39.497200>,  <34.348076, 34.023003, 39.657494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111015, 34.302483, 39.497200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599428, -0.714914, -0.359978,
		-0.538006, 0.026872, 0.842512,
		-0.592650, 0.698696, -0.400736,
		33.933220, 34.512093, 39.376980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658772, 33.774498, 39.747299>,  <34.348076, 34.023003, 39.657494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658772, 33.774498, 39.747299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675156, 34.026215, 39.436863>,  <33.684986, 34.177242, 39.250603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675156, 34.026215, 39.436863>,  <33.658772, 33.774498, 39.747299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675156, 34.026215, 39.436863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645716, -0.576076, -0.501187,
		-0.762479, 0.521664, 0.382744,
		0.040961, 0.629288, -0.776092,
		33.687443, 34.215000, 39.204037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115887, 33.417442, 39.223206>,  <33.658772, 33.774498, 39.747299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115887, 33.417442, 39.223206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495495, 33.295727, 39.190296>,  <34.723259, 33.222698, 39.170551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495495, 33.295727, 39.190296>,  <34.115887, 33.417442, 39.223206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495495, 33.295727, 39.190296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168524, -0.710355, 0.683371,
		-0.266384, -0.634668, -0.725421,
		0.949020, -0.304290, -0.082270,
		34.780201, 33.204441, 39.165615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035954, 32.665676, 39.113564>,  <34.115887, 33.417442, 39.223206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035954, 32.665676, 39.113564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366035, 32.817581, 39.280807>,  <34.564083, 32.908726, 39.381153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366035, 32.817581, 39.280807>,  <34.035954, 32.665676, 39.113564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366035, 32.817581, 39.280807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081223, -0.652752, 0.753205,
		0.558961, -0.655509, -0.507809,
		0.825206, 0.379766, 0.418106,
		34.613598, 32.931511, 39.406239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174812, 32.321400, 39.811123>,  <34.035954, 32.665676, 39.113564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174812, 32.321400, 39.811123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525299, 32.493599, 39.724483>,  <34.735592, 32.596916, 39.672501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525299, 32.493599, 39.724483>,  <34.174812, 32.321400, 39.811123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525299, 32.493599, 39.724483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472001, -0.675928, 0.565983,
		0.097248, -0.598159, -0.795454,
		0.876218, 0.430496, -0.216599,
		34.788166, 32.622749, 39.659504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608234, 31.767815, 39.840694>,  <34.174812, 32.321400, 39.811123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608234, 31.767815, 39.840694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828152, 32.100521, 39.871391>,  <34.960102, 32.300144, 39.889809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828152, 32.100521, 39.871391>,  <34.608234, 31.767815, 39.840694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828152, 32.100521, 39.871391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531361, -0.419157, 0.736181,
		0.644498, -0.363971, -0.672419,
		0.549798, 0.831765, 0.076746,
		34.993092, 32.350052, 39.894417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334141, 31.583712, 39.771675>,  <34.608234, 31.767815, 39.840694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334141, 31.583712, 39.771675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238468, 31.907393, 39.986332>,  <35.181065, 32.101601, 40.115124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238468, 31.907393, 39.986332>,  <35.334141, 31.583712, 39.771675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238468, 31.907393, 39.986332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250673, -0.482482, 0.839270,
		0.938059, 0.335260, -0.087444,
		-0.239183, 0.809204, 0.536638,
		35.166714, 32.150154, 40.147324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884518, 31.652657, 40.250942>,  <35.334141, 31.583712, 39.771675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884518, 31.652657, 40.250942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599628, 31.886019, 40.407085>,  <35.428696, 32.026035, 40.500771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599628, 31.886019, 40.407085>,  <35.884518, 31.652657, 40.250942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599628, 31.886019, 40.407085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288788, -0.263328, 0.920467,
		0.639798, 0.768306, 0.019067,
		-0.712222, 0.583407, 0.390354,
		35.385963, 32.061043, 40.524193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307148, 32.012592, 40.734722>,  <35.884518, 31.652657, 40.250942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307148, 32.012592, 40.734722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933182, 32.080772, 40.859219>,  <35.708801, 32.121681, 40.933918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933182, 32.080772, 40.859219>,  <36.307148, 32.012592, 40.734722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933182, 32.080772, 40.859219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260520, -0.265839, 0.928148,
		0.240947, 0.948828, 0.204131,
		-0.934919, 0.170455, 0.311242,
		35.652706, 32.131908, 40.952591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326134, 32.456406, 41.290039>,  <36.307148, 32.012592, 40.734722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326134, 32.456406, 41.290039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980347, 32.257771, 41.321281>,  <35.772873, 32.138592, 41.340027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980347, 32.257771, 41.321281>,  <36.326134, 32.456406, 41.290039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980347, 32.257771, 41.321281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194317, -0.186801, 0.962988,
		-0.463614, 0.847649, 0.257978,
		-0.864467, -0.496584, 0.078109,
		35.721008, 32.108795, 41.344715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875866, 32.781670, 41.954029>,  <36.326134, 32.456406, 41.290039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875866, 32.781670, 41.954029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721504, 32.419567, 41.882946>,  <35.628887, 32.202305, 41.840294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721504, 32.419567, 41.882946>,  <35.875866, 32.781670, 41.954029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721504, 32.419567, 41.882946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070443, -0.220984, 0.972730,
		-0.919845, 0.362864, 0.149048,
		-0.385906, -0.905260, -0.177710,
		35.605732, 32.147987, 41.829632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277065, 32.779243, 42.295094>,  <35.875866, 32.781670, 41.954029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277065, 32.779243, 42.295094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349430, 32.391277, 42.229927>,  <35.392849, 32.158497, 42.190826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349430, 32.391277, 42.229927>,  <35.277065, 32.779243, 42.295094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349430, 32.391277, 42.229927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068301, -0.152859, 0.985885,
		-0.981125, -0.189487, 0.038592,
		0.180914, -0.969912, -0.162916,
		35.403706, 32.100304, 42.181053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914558, 32.522892, 42.741722>,  <35.277065, 32.779243, 42.295094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914558, 32.522892, 42.741722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129772, 32.192825, 42.672886>,  <35.258900, 31.994785, 42.631584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129772, 32.192825, 42.672886>,  <34.914558, 32.522892, 42.741722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129772, 32.192825, 42.672886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120606, -0.126696, 0.984582,
		-0.834248, -0.550496, 0.031353,
		0.538037, -0.825168, -0.172089,
		35.291183, 31.945274, 42.621258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589680, 31.963789, 43.156181>,  <34.914558, 32.522892, 42.741722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589680, 31.963789, 43.156181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972221, 31.868887, 43.087940>,  <35.201744, 31.811945, 43.046997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972221, 31.868887, 43.087940>,  <34.589680, 31.963789, 43.156181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972221, 31.868887, 43.087940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125205, -0.194821, 0.972815,
		-0.264044, -0.951711, -0.156611,
		0.956350, -0.237258, -0.170600,
		35.259125, 31.797710, 43.036758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624043, 31.343927, 43.544025>,  <34.589680, 31.963789, 43.156181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624043, 31.343927, 43.544025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991489, 31.489298, 43.481968>,  <35.211956, 31.576521, 43.444733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991489, 31.489298, 43.481968>,  <34.624043, 31.343927, 43.544025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991489, 31.489298, 43.481968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260255, -0.260991, 0.929597,
		0.297349, -0.894318, -0.334334,
		0.918614, 0.363427, -0.155145,
		35.267075, 31.598326, 43.435425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095722, 30.831156, 43.780388>,  <34.624043, 31.343927, 43.544025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095722, 30.831156, 43.780388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309139, 31.169445, 43.776707>,  <35.437191, 31.372417, 43.774498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309139, 31.169445, 43.776707>,  <35.095722, 30.831156, 43.780388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309139, 31.169445, 43.776707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311789, -0.186567, 0.931654,
		0.786204, -0.499948, -0.363229,
		0.533545, 0.845721, -0.009199,
		35.469204, 31.423161, 43.773949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724125, 30.697620, 44.066513>,  <35.095722, 30.831156, 43.780388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724125, 30.697620, 44.066513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705387, 31.097099, 44.074574>,  <35.694145, 31.336786, 44.079411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705387, 31.097099, 44.074574>,  <35.724125, 30.697620, 44.066513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705387, 31.097099, 44.074574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555289, 0.009267, 0.831606,
		0.830337, 0.050143, -0.555001,
		-0.046842, 0.998699, 0.020149,
		35.691334, 31.396709, 44.080620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365082, 30.876097, 44.324306>,  <35.724125, 30.697620, 44.066513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365082, 30.876097, 44.324306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137585, 31.202106, 44.368614>,  <36.001087, 31.397713, 44.395199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137585, 31.202106, 44.368614>,  <36.365082, 30.876097, 44.324306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137585, 31.202106, 44.368614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379879, 0.140839, 0.914252,
		0.729536, 0.562053, -0.389711,
		-0.568744, 0.815022, 0.110765,
		35.966961, 31.446613, 44.401844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809521, 31.287712, 44.656879>,  <36.365082, 30.876097, 44.324306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809521, 31.287712, 44.656879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441467, 31.426744, 44.729034>,  <36.220634, 31.510164, 44.772327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441467, 31.426744, 44.729034>,  <36.809521, 31.287712, 44.656879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441467, 31.426744, 44.729034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200811, 0.023333, 0.979352,
		0.336196, 0.937359, -0.091267,
		-0.920134, 0.347582, 0.180388,
		36.165428, 31.531019, 44.783150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980267, 31.934433, 45.004944>,  <36.809521, 31.287712, 44.656879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980267, 31.934433, 45.004944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616978, 31.778910, 45.066868>,  <36.399006, 31.685596, 45.104023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616978, 31.778910, 45.066868>,  <36.980267, 31.934433, 45.004944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616978, 31.778910, 45.066868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213989, -0.113554, 0.970214,
		-0.359645, 0.914295, 0.186333,
		-0.908220, -0.388806, 0.154810,
		36.344513, 31.662268, 45.113312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671707, 32.389980, 45.519745>,  <36.980267, 31.934433, 45.004944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671707, 32.389980, 45.519745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459621, 32.051262, 45.536766>,  <36.332371, 31.848030, 45.546978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459621, 32.051262, 45.536766>,  <36.671707, 32.389980, 45.519745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459621, 32.051262, 45.536766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056917, 0.085620, 0.994701,
		-0.845954, 0.524978, -0.093594,
		-0.530210, -0.846798, 0.042551,
		36.300560, 31.797222, 45.549530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131325, 32.451496, 46.063339>,  <36.671707, 32.389980, 45.519745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131325, 32.451496, 46.063339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137699, 32.052578, 46.034626>,  <36.141525, 31.813227, 46.017399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137699, 32.052578, 46.034626>,  <36.131325, 32.451496, 46.063339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137699, 32.052578, 46.034626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033767, -0.071213, 0.996889,
		-0.999303, -0.018311, 0.032540,
		0.015937, -0.997293, -0.071781,
		36.142479, 31.753389, 46.013092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611576, 32.250557, 46.579311>,  <36.131325, 32.451496, 46.063339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611576, 32.250557, 46.579311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842442, 31.931385, 46.509808>,  <35.980961, 31.739883, 46.468105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842442, 31.931385, 46.509808>,  <35.611576, 32.250557, 46.579311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842442, 31.931385, 46.509808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212149, -0.058969, 0.975456,
		-0.788590, -0.599863, 0.135245,
		0.577165, -0.797927, -0.173763,
		36.015591, 31.692007, 46.457680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589149, 31.850220, 47.218571>,  <35.611576, 32.250557, 46.579311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589149, 31.850220, 47.218571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928879, 31.749783, 47.032837>,  <36.132717, 31.689520, 46.921394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928879, 31.749783, 47.032837>,  <35.589149, 31.850220, 47.218571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928879, 31.749783, 47.032837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433379, -0.170559, 0.884925,
		-0.301397, -0.952817, -0.036040,
		0.849319, -0.251095, -0.464337,
		36.183674, 31.674456, 46.893536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789890, 31.186243, 47.516964>,  <35.589149, 31.850220, 47.218571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789890, 31.186243, 47.516964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108166, 31.356369, 47.344460>,  <36.299133, 31.458445, 47.240959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108166, 31.356369, 47.344460>,  <35.789890, 31.186243, 47.516964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108166, 31.356369, 47.344460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541812, -0.181499, 0.820669,
		0.270770, -0.886660, -0.374858,
		0.795690, 0.425315, -0.431259,
		36.346874, 31.483963, 47.215080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379654, 30.773138, 47.774952>,  <35.789890, 31.186243, 47.516964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379654, 30.773138, 47.774952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554729, 31.096849, 47.618237>,  <36.659775, 31.291077, 47.524208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554729, 31.096849, 47.618237>,  <36.379654, 30.773138, 47.774952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554729, 31.096849, 47.618237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656085, 0.010495, 0.754614,
		0.614805, -0.587332, -0.526362,
		0.437685, 0.809278, -0.391792,
		36.686035, 31.339632, 47.500698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083420, 30.603136, 47.736423>,  <36.379654, 30.773138, 47.774952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083420, 30.603136, 47.736423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062019, 31.002413, 47.747417>,  <37.049179, 31.241978, 47.754013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062019, 31.002413, 47.747417>,  <37.083420, 30.603136, 47.736423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062019, 31.002413, 47.747417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557267, 0.007002, 0.830304,
		0.828608, 0.059738, -0.556632,
		-0.053499, 0.998190, 0.027488,
		37.045971, 31.301870, 47.755665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725811, 30.932676, 47.977165>,  <37.083420, 30.603136, 47.736423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725811, 30.932676, 47.977165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484520, 31.245220, 48.041161>,  <37.339745, 31.432747, 48.079556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484520, 31.245220, 48.041161>,  <37.725811, 30.932676, 47.977165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484520, 31.245220, 48.041161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316644, 0.050515, 0.947198,
		0.732020, 0.622035, -0.277884,
		-0.603228, 0.781358, 0.159986,
		37.303551, 31.479628, 48.089157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201733, 31.561569, 48.288979>,  <37.725811, 30.932676, 47.977165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201733, 31.561569, 48.288979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816444, 31.630045, 48.371830>,  <37.585270, 31.671129, 48.421539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816444, 31.630045, 48.371830>,  <38.201733, 31.561569, 48.288979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816444, 31.630045, 48.371830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243978, 0.234119, 0.941097,
		0.112612, 0.957018, -0.267275,
		-0.963220, 0.171188, 0.207127,
		37.527477, 31.681402, 48.433968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244427, 32.135914, 48.664410>,  <38.201733, 31.561569, 48.288979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244427, 32.135914, 48.664410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897179, 31.961565, 48.759396>,  <37.688831, 31.856956, 48.816387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897179, 31.961565, 48.759396>,  <38.244427, 32.135914, 48.664410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897179, 31.961565, 48.759396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139924, 0.244107, 0.959600,
		-0.476226, 0.866274, -0.150926,
		-0.868119, -0.435869, 0.237463,
		37.636742, 31.830805, 48.830635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606693, 32.884655, 48.744045>,  <38.244427, 32.135914, 48.664410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606693, 32.884655, 48.744045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952606, 32.683830, 48.747631>,  <39.160152, 32.563335, 48.749783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952606, 32.683830, 48.747631>,  <38.606693, 32.884655, 48.744045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952606, 32.683830, 48.747631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002012, -0.014384, -0.999895,
		0.502142, 0.864710, -0.011429,
		0.864783, -0.502066, 0.008962,
		39.212040, 32.533211, 48.750320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007759, 33.202362, 48.194996>,  <38.606693, 32.884655, 48.744045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007759, 33.202362, 48.194996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196594, 32.854794, 48.254475>,  <39.309895, 32.646252, 48.290161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196594, 32.854794, 48.254475>,  <39.007759, 33.202362, 48.194996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196594, 32.854794, 48.254475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161778, -0.080420, -0.983545,
		0.866580, 0.488376, 0.102606,
		0.472088, -0.868920, 0.148699,
		39.338223, 32.594116, 48.299084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656055, 33.242619, 47.942783>,  <39.007759, 33.202362, 48.194996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656055, 33.242619, 47.942783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619438, 32.845219, 47.915730>,  <39.597469, 32.606777, 47.899498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619438, 32.845219, 47.915730>,  <39.656055, 33.242619, 47.942783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619438, 32.845219, 47.915730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349432, 0.031550, -0.936431,
		0.932479, -0.109355, 0.344273,
		-0.091541, -0.993502, -0.067632,
		39.591976, 32.547169, 47.895439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306282, 32.843655, 47.857368>,  <39.656055, 33.242619, 47.942783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306282, 32.843655, 47.857368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028881, 32.608490, 47.690796>,  <39.862438, 32.467392, 47.590855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028881, 32.608490, 47.690796>,  <40.306282, 32.843655, 47.857368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028881, 32.608490, 47.690796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549974, -0.058639, -0.833120,
		0.465380, -0.806798, 0.364001,
		-0.693505, -0.587909, -0.416429,
		39.820831, 32.432117, 47.565868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746624, 32.393040, 47.387753>,  <40.306282, 32.843655, 47.857368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746624, 32.393040, 47.387753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377171, 32.350109, 47.240570>,  <40.155499, 32.324348, 47.152260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377171, 32.350109, 47.240570>,  <40.746624, 32.393040, 47.387753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377171, 32.350109, 47.240570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369189, 0.008857, -0.929312,
		0.103003, -0.994184, 0.031445,
		-0.923629, -0.107331, -0.367954,
		40.100082, 32.317909, 47.130184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
