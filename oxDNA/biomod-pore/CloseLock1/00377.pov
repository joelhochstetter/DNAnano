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
	<23.996141, 34.933960, 35.164520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.306932, 34.885849, 34.917347>,  <24.493408, 34.856983, 34.769043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.306932, 34.885849, 34.917347>,  <23.996141, 34.933960, 35.164520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.306932, 34.885849, 34.917347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526474, 0.662320, 0.533064,
		0.345151, -0.739503, 0.577932,
		0.776978, -0.120279, -0.617930,
		24.540026, 34.849766, 34.731968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.751999, 34.689411, 35.456551>,  <23.996141, 34.933960, 35.164520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.751999, 34.689411, 35.456551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781975, 34.928650, 35.137386>,  <24.799961, 35.072193, 34.945889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781975, 34.928650, 35.137386>,  <24.751999, 34.689411, 35.456551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.781975, 34.928650, 35.137386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499772, 0.669886, 0.549072,
		0.862909, -0.439921, -0.248711,
		0.074940, 0.598099, -0.797911,
		24.804457, 35.108078, 34.898014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.462461, 35.105621, 35.394775>,  <24.751999, 34.689411, 35.456551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.462461, 35.105621, 35.394775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.152529, 35.307007, 35.241856>,  <24.966570, 35.427837, 35.150105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.152529, 35.307007, 35.241856>,  <25.462461, 35.105621, 35.394775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.152529, 35.307007, 35.241856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207549, 0.773826, 0.598428,
		0.597126, 0.384334, -0.704080,
		-0.774832, 0.503468, -0.382303,
		24.920080, 35.458046, 35.127163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.794832, 35.465893, 34.769337>,  <25.462461, 35.105621, 35.394775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.794832, 35.465893, 34.769337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.176619, 35.356323, 34.722076>,  <26.405691, 35.290581, 34.693722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.176619, 35.356323, 34.722076>,  <25.794832, 35.465893, 34.769337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.176619, 35.356323, 34.722076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000069, 0.395852, -0.918314,
		0.298316, 0.876509, 0.377809,
		0.954467, -0.273922, -0.118150,
		26.462959, 35.274147, 34.686630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.118906, 35.965782, 34.496899>,  <25.794832, 35.465893, 34.769337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.118906, 35.965782, 34.496899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315615, 35.644379, 34.362713>,  <26.433640, 35.451538, 34.282200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315615, 35.644379, 34.362713>,  <26.118906, 35.965782, 34.496899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315615, 35.644379, 34.362713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193742, 0.274637, -0.941827,
		0.848895, 0.528159, -0.020614,
		0.491773, -0.803506, -0.335465,
		26.463146, 35.403328, 34.262074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672077, 36.225533, 34.131893>,  <26.118906, 35.965782, 34.496899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672077, 36.225533, 34.131893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604944, 35.847370, 34.020145>,  <26.564665, 35.620472, 33.953094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604944, 35.847370, 34.020145>,  <26.672077, 36.225533, 34.131893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604944, 35.847370, 34.020145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086671, 0.268144, -0.959472,
		0.981998, -0.185243, 0.036936,
		-0.167832, -0.945401, -0.279372,
		26.554594, 35.563751, 33.936333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256834, 36.005817, 33.656834>,  <26.672077, 36.225533, 34.131893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256834, 36.005817, 33.656834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986412, 35.723644, 33.571686>,  <26.824160, 35.554340, 33.520596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986412, 35.723644, 33.571686>,  <27.256834, 36.005817, 33.656834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986412, 35.723644, 33.571686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251524, 0.050612, -0.966527,
		0.692595, -0.706966, 0.143218,
		-0.676053, -0.705434, -0.212873,
		26.783596, 35.512012, 33.507824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639736, 35.453552, 33.345589>,  <27.256834, 36.005817, 33.656834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639736, 35.453552, 33.345589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257114, 35.445705, 33.229229>,  <27.027542, 35.440998, 33.159412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257114, 35.445705, 33.229229>,  <27.639736, 35.453552, 33.345589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257114, 35.445705, 33.229229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285871, 0.132981, -0.948996,
		0.057301, -0.990924, -0.121595,
		-0.956553, -0.019618, -0.290896,
		26.970148, 35.439819, 33.141960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561666, 34.946018, 32.808910>,  <27.639736, 35.453552, 33.345589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561666, 34.946018, 32.808910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229755, 35.164131, 32.761353>,  <27.030609, 35.294998, 32.732819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229755, 35.164131, 32.761353>,  <27.561666, 34.946018, 32.808910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229755, 35.164131, 32.761353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330217, 0.307954, -0.892256,
		-0.449919, -0.779634, -0.435595,
		-0.829777, 0.545284, -0.118894,
		26.980822, 35.327717, 32.725685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358082, 34.695282, 32.168251>,  <27.561666, 34.946018, 32.808910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358082, 34.695282, 32.168251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202473, 35.055260, 32.247005>,  <27.109108, 35.271248, 32.294258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202473, 35.055260, 32.247005>,  <27.358082, 34.695282, 32.168251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202473, 35.055260, 32.247005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406137, 0.359375, -0.840180,
		-0.826871, -0.246884, -0.505305,
		-0.389021, 0.899943, 0.196888,
		27.085766, 35.325241, 32.306072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021149, 34.842461, 31.618580>,  <27.358082, 34.695282, 32.168251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021149, 34.842461, 31.618580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065657, 35.204941, 31.781763>,  <27.092361, 35.422428, 31.879673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065657, 35.204941, 31.781763>,  <27.021149, 34.842461, 31.618580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065657, 35.204941, 31.781763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457233, 0.317795, -0.830629,
		-0.882359, 0.278954, -0.378982,
		0.111268, 0.906196, 0.407956,
		27.099037, 35.476799, 31.904150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597765, 35.333538, 31.259768>,  <27.021149, 34.842461, 31.618580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597765, 35.333538, 31.259768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878014, 35.565208, 31.426468>,  <27.046162, 35.704212, 31.526489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878014, 35.565208, 31.426468>,  <26.597765, 35.333538, 31.259768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878014, 35.565208, 31.426468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237060, 0.361951, -0.901551,
		-0.673004, 0.730440, 0.116290,
		0.700620, 0.579179, 0.416753,
		27.088200, 35.738964, 31.551495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423956, 35.953133, 30.997343>,  <26.597765, 35.333538, 31.259768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423956, 35.953133, 30.997343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809704, 35.939644, 31.102303>,  <27.041153, 35.931549, 31.165279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809704, 35.939644, 31.102303>,  <26.423956, 35.953133, 30.997343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809704, 35.939644, 31.102303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264109, 0.180575, -0.947438,
		-0.015430, 0.982983, 0.183048,
		0.964369, -0.033726, 0.262401,
		27.099014, 35.929527, 31.181023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751362, 36.471889, 30.666105>,  <26.423956, 35.953133, 30.997343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751362, 36.471889, 30.666105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072437, 36.255840, 30.767263>,  <27.265083, 36.126209, 30.827957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072437, 36.255840, 30.767263>,  <26.751362, 36.471889, 30.666105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072437, 36.255840, 30.767263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392922, 0.159934, -0.905557,
		0.448669, 0.826247, 0.340604,
		0.802688, -0.540126, 0.252894,
		27.313244, 36.093803, 30.843132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238777, 36.941536, 30.424904>,  <26.751362, 36.471889, 30.666105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238777, 36.941536, 30.424904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428873, 36.593712, 30.478577>,  <27.542931, 36.385017, 30.510780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428873, 36.593712, 30.478577>,  <27.238777, 36.941536, 30.424904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428873, 36.593712, 30.478577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606351, 0.213173, -0.766092,
		0.637561, 0.445440, 0.628569,
		0.475242, -0.869563, 0.134182,
		27.571445, 36.332844, 30.518831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015558, 37.043793, 30.273539>,  <27.238777, 36.941536, 30.424904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015558, 37.043793, 30.273539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964178, 36.648674, 30.238291>,  <27.933350, 36.411602, 30.217142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964178, 36.648674, 30.238291>,  <28.015558, 37.043793, 30.273539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964178, 36.648674, 30.238291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362891, 0.035878, -0.931140,
		0.922935, -0.151586, 0.353853,
		-0.128452, -0.987793, -0.088122,
		27.925642, 36.352337, 30.211855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653263, 36.922569, 30.005178>,  <28.015558, 37.043793, 30.273539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653263, 36.922569, 30.005178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402145, 36.615021, 29.956661>,  <28.251474, 36.430492, 29.927551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402145, 36.615021, 29.956661>,  <28.653263, 36.922569, 30.005178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402145, 36.615021, 29.956661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398471, -0.183596, -0.898617,
		0.668651, -0.612480, 0.421633,
		-0.627795, -0.768870, -0.121294,
		28.213806, 36.384361, 29.920273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056932, 36.377403, 29.827467>,  <28.653263, 36.922569, 30.005178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056932, 36.377403, 29.827467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696453, 36.282738, 29.682236>,  <28.480165, 36.225937, 29.595097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696453, 36.282738, 29.682236>,  <29.056932, 36.377403, 29.827467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696453, 36.282738, 29.682236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413647, -0.219636, -0.883547,
		0.129362, -0.946440, 0.295833,
		-0.901200, -0.236667, -0.363080,
		28.426092, 36.211739, 29.573311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205187, 35.808907, 29.522306>,  <29.056932, 36.377403, 29.827467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205187, 35.808907, 29.522306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862068, 35.919498, 29.348988>,  <28.656197, 35.985855, 29.244997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862068, 35.919498, 29.348988>,  <29.205187, 35.808907, 29.522306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862068, 35.919498, 29.348988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378215, -0.231312, -0.896352,
		-0.348050, -0.932767, 0.093850,
		-0.857796, 0.276479, -0.433295,
		28.604729, 36.002441, 29.219000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016735, 35.303787, 29.069235>,  <29.205187, 35.808907, 29.522306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016735, 35.303787, 29.069235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814201, 35.625980, 28.946056>,  <28.692680, 35.819294, 28.872149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814201, 35.625980, 28.946056>,  <29.016735, 35.303787, 29.069235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814201, 35.625980, 28.946056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280552, -0.183810, -0.942075,
		-0.815424, -0.563399, -0.132909,
		-0.506334, 0.805478, -0.307946,
		28.662302, 35.867622, 28.853672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536142, 35.084732, 28.492886>,  <29.016735, 35.303787, 29.069235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536142, 35.084732, 28.492886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550528, 35.481709, 28.445944>,  <28.559158, 35.719894, 28.417780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550528, 35.481709, 28.445944>,  <28.536142, 35.084732, 28.492886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550528, 35.481709, 28.445944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282128, -0.122735, -0.951493,
		-0.958702, 0.001110, -0.284409,
		0.035963, 0.992439, -0.117353,
		28.561317, 35.779442, 28.410738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168974, 35.293419, 27.922106>,  <28.536142, 35.084732, 28.492886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168974, 35.293419, 27.922106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382690, 35.625114, 27.987701>,  <28.510920, 35.824131, 28.027060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382690, 35.625114, 27.987701>,  <28.168974, 35.293419, 27.922106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382690, 35.625114, 27.987701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302310, -0.006279, -0.953189,
		-0.789394, 0.558855, -0.254043,
		0.534290, 0.829242, 0.163991,
		28.542976, 35.873886, 28.036900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223726, 35.581108, 27.265629>,  <28.168974, 35.293419, 27.922106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223726, 35.581108, 27.265629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.521658, 35.774593, 27.449476>,  <28.700417, 35.890686, 27.559786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.521658, 35.774593, 27.449476>,  <28.223726, 35.581108, 27.265629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521658, 35.774593, 27.449476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499646, 0.052224, -0.864654,
		-0.442249, 0.873667, -0.202788,
		0.744829, 0.483714, 0.459620,
		28.745108, 35.919708, 27.587362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338964, 36.227909, 26.911020>,  <28.223726, 35.581108, 27.265629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338964, 36.227909, 26.911020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682482, 36.136414, 27.094391>,  <28.888592, 36.081516, 27.204412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682482, 36.136414, 27.094391>,  <28.338964, 36.227909, 26.911020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682482, 36.136414, 27.094391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465676, -0.024529, -0.884616,
		0.213594, 0.973178, 0.085454,
		0.858792, -0.228742, 0.458424,
		28.940119, 36.067791, 27.231918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865875, 36.714558, 26.969864>,  <28.338964, 36.227909, 26.911020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865875, 36.714558, 26.969864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003319, 36.339596, 26.947231>,  <29.085785, 36.114616, 26.933653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003319, 36.339596, 26.947231>,  <28.865875, 36.714558, 26.969864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003319, 36.339596, 26.947231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595301, 0.264016, -0.758889,
		0.726326, 0.227080, 0.648757,
		0.343610, -0.937406, -0.056580,
		29.106401, 36.058372, 26.930258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605732, 36.727825, 27.071705>,  <28.865875, 36.714558, 26.969864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605732, 36.727825, 27.071705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481642, 36.426231, 26.840096>,  <29.407187, 36.245274, 26.701130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481642, 36.426231, 26.840096>,  <29.605732, 36.727825, 27.071705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481642, 36.426231, 26.840096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687325, 0.242888, -0.684536,
		0.656767, -0.610338, 0.442882,
		-0.310228, -0.753985, -0.579021,
		29.388573, 36.200035, 26.666389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204256, 36.272293, 27.054205>,  <29.605732, 36.727825, 27.071705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204256, 36.272293, 27.054205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964378, 36.273361, 26.734114>,  <29.820452, 36.274002, 26.542059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964378, 36.273361, 26.734114>,  <30.204256, 36.272293, 27.054205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964378, 36.273361, 26.734114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791590, -0.144578, -0.593702,
		-0.117279, -0.989490, 0.084590,
		-0.599692, 0.002669, -0.800227,
		29.784472, 36.274162, 26.494045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314411, 35.666164, 26.609434>,  <30.204256, 36.272293, 27.054205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314411, 35.666164, 26.609434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150932, 35.967594, 26.403486>,  <30.052845, 36.148453, 26.279919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150932, 35.967594, 26.403486>,  <30.314411, 35.666164, 26.609434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150932, 35.967594, 26.403486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660656, -0.144943, -0.736564,
		-0.629683, -0.641182, -0.438617,
		-0.408697, 0.753576, -0.514869,
		30.028322, 36.193668, 26.249025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589239, 36.423073, 26.403744>,  <30.314411, 35.666164, 26.609434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589239, 36.423073, 26.403744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785381, 36.769485, 26.442804>,  <30.903067, 36.977333, 26.466240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785381, 36.769485, 26.442804>,  <30.589239, 36.423073, 26.403744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785381, 36.769485, 26.442804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777894, -0.485443, 0.399033,
		0.392980, -0.119706, -0.911722,
		0.490355, 0.866035, 0.097651,
		30.932487, 37.029297, 26.472099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288570, 36.439568, 25.958214>,  <30.589239, 36.423073, 26.403744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288570, 36.439568, 25.958214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278353, 36.682652, 26.275715>,  <31.272223, 36.828503, 26.466215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278353, 36.682652, 26.275715>,  <31.288570, 36.439568, 25.958214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278353, 36.682652, 26.275715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815178, -0.446939, 0.368415,
		0.578647, 0.656459, -0.483973,
		-0.025543, 0.607706, 0.793751,
		31.270689, 36.864964, 26.513840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916948, 36.773743, 26.216505>,  <31.288570, 36.439568, 25.958214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916948, 36.773743, 26.216505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711985, 36.725895, 26.556652>,  <31.589006, 36.697186, 26.760740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711985, 36.725895, 26.556652>,  <31.916948, 36.773743, 26.216505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711985, 36.725895, 26.556652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703896, -0.625737, 0.336130,
		0.491902, 0.770808, 0.404831,
		-0.512409, -0.119616, 0.850370,
		31.558262, 36.690010, 26.811764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319962, 36.334282, 25.643517>,  <31.916948, 36.773743, 26.216505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319962, 36.334282, 25.643517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613098, 36.305367, 25.914135>,  <32.788979, 36.288017, 26.076506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613098, 36.305367, 25.914135>,  <32.319962, 36.334282, 25.643517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613098, 36.305367, 25.914135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679772, -0.120415, 0.723471,
		0.029167, -0.990088, -0.137386,
		0.732843, -0.072290, 0.676547,
		32.832951, 36.283680, 26.117100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316364, 35.787209, 26.114353>,  <32.319962, 36.334282, 25.643517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316364, 35.787209, 26.114353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490681, 36.075333, 26.330217>,  <32.595272, 36.248207, 26.459736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490681, 36.075333, 26.330217>,  <32.316364, 35.787209, 26.114353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490681, 36.075333, 26.330217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475469, -0.324857, 0.817555,
		0.764209, -0.612876, 0.200917,
		0.435790, 0.720314, 0.539663,
		32.621418, 36.291428, 26.492117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560333, 35.504341, 26.789530>,  <32.316364, 35.787209, 26.114353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560333, 35.504341, 26.789530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506462, 35.897743, 26.837822>,  <32.474140, 36.133785, 26.866796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506462, 35.897743, 26.837822>,  <32.560333, 35.504341, 26.789530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506462, 35.897743, 26.837822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422248, -0.167189, 0.890929,
		0.896420, 0.069013, 0.437801,
		-0.134681, 0.983507, 0.120731,
		32.466057, 36.192795, 26.874041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859909, 35.665237, 27.464287>,  <32.560333, 35.504341, 26.789530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859909, 35.665237, 27.464287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584240, 35.933910, 27.355564>,  <32.418839, 36.095112, 27.290331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584240, 35.933910, 27.355564>,  <32.859909, 35.665237, 27.464287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584240, 35.933910, 27.355564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319501, 0.054989, 0.945989,
		0.650349, 0.738797, 0.176706,
		-0.689177, 0.671681, -0.271809,
		32.377487, 36.135414, 27.274021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897781, 36.089859, 28.076031>,  <32.859909, 35.665237, 27.464287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897781, 36.089859, 28.076031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571899, 36.190926, 27.867256>,  <32.376369, 36.251568, 27.741991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571899, 36.190926, 27.867256>,  <32.897781, 36.089859, 28.076031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571899, 36.190926, 27.867256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479284, 0.213251, 0.851358,
		0.326415, 0.943760, -0.052636,
		-0.814703, 0.252668, -0.521937,
		32.327488, 36.266727, 27.710674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682487, 36.764923, 28.290655>,  <32.897781, 36.089859, 28.076031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682487, 36.764923, 28.290655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348167, 36.577999, 28.175375>,  <32.147575, 36.465843, 28.106207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348167, 36.577999, 28.175375>,  <32.682487, 36.764923, 28.290655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348167, 36.577999, 28.175375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403691, 0.167287, 0.899471,
		-0.372120, 0.868122, -0.328467,
		-0.835799, -0.467310, -0.288203,
		32.097427, 36.437805, 28.088915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098312, 37.146706, 28.603653>,  <32.682487, 36.764923, 28.290655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098312, 37.146706, 28.603653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928232, 36.801067, 28.495913>,  <31.826185, 36.593685, 28.431269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928232, 36.801067, 28.495913>,  <32.098312, 37.146706, 28.603653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928232, 36.801067, 28.495913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456720, -0.052090, 0.888084,
		-0.781417, 0.500631, -0.372500,
		-0.425199, -0.864092, -0.269353,
		31.800673, 36.541840, 28.415106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401194, 37.159645, 28.925529>,  <32.098312, 37.146706, 28.603653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401194, 37.159645, 28.925529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417459, 36.772511, 28.826214>,  <31.427219, 36.540230, 28.766624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417459, 36.772511, 28.826214>,  <31.401194, 37.159645, 28.925529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417459, 36.772511, 28.826214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490166, -0.235862, 0.839110,
		-0.870680, 0.087580, -0.483990,
		0.040665, -0.967832, -0.248289,
		31.429659, 36.482162, 28.751728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622475, 36.888027, 28.808628>,  <31.401194, 37.159645, 28.925529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622475, 36.888027, 28.808628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878635, 36.595013, 28.900951>,  <31.032331, 36.419205, 28.956347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878635, 36.595013, 28.900951>,  <30.622475, 36.888027, 28.808628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878635, 36.595013, 28.900951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604036, -0.294763, 0.740443,
		-0.474367, -0.613600, -0.631245,
		0.640403, -0.732536, 0.230811,
		31.070757, 36.375252, 28.970194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209183, 36.361710, 28.913391>,  <30.622475, 36.888027, 28.808628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209183, 36.361710, 28.913391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554293, 36.240585, 29.075342>,  <30.761358, 36.167912, 29.172514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554293, 36.240585, 29.075342>,  <30.209183, 36.361710, 28.913391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554293, 36.240585, 29.075342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505199, -0.547790, 0.666858,
		0.019857, -0.779893, -0.625598,
		0.862774, -0.302810, 0.404879,
		30.813126, 36.149742, 29.196806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231632, 35.624050, 29.076017>,  <30.209183, 36.361710, 28.913391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231632, 35.624050, 29.076017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510803, 35.778210, 29.317469>,  <30.678307, 35.870705, 29.462339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510803, 35.778210, 29.317469>,  <30.231632, 35.624050, 29.076017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510803, 35.778210, 29.317469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263560, -0.645486, 0.716857,
		0.665908, -0.659406, -0.348927,
		0.697928, 0.385398, 0.603627,
		30.720182, 35.893829, 29.498556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590231, 35.077957, 29.429657>,  <30.231632, 35.624050, 29.076017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590231, 35.077957, 29.429657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696766, 35.389168, 29.657248>,  <30.760687, 35.575893, 29.793802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696766, 35.389168, 29.657248>,  <30.590231, 35.077957, 29.429657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696766, 35.389168, 29.657248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296485, -0.495551, 0.816410,
		0.917149, -0.386132, 0.098692,
		0.266335, 0.778030, 0.568977,
		30.776667, 35.622578, 29.827940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928114, 34.799316, 29.943748>,  <30.590231, 35.077957, 29.429657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928114, 34.799316, 29.943748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816641, 35.162331, 30.069424>,  <30.749756, 35.380138, 30.144829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816641, 35.162331, 30.069424>,  <30.928114, 34.799316, 29.943748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816641, 35.162331, 30.069424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192777, -0.373351, 0.907439,
		0.940836, 0.192321, 0.278999,
		-0.278684, 0.907536, 0.314186,
		30.733036, 35.434593, 30.163679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261702, 34.898720, 30.558495>,  <30.928114, 34.799316, 29.943748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261702, 34.898720, 30.558495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937527, 35.131981, 30.580832>,  <30.743021, 35.271938, 30.594233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937527, 35.131981, 30.580832>,  <31.261702, 34.898720, 30.558495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937527, 35.131981, 30.580832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168179, -0.322909, 0.931368,
		0.561164, 0.745425, 0.359773,
		-0.810438, 0.583157, 0.055840,
		30.694395, 35.306927, 30.597584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336334, 35.221321, 31.221128>,  <31.261702, 34.898720, 30.558495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336334, 35.221321, 31.221128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948990, 35.229340, 31.121628>,  <30.716583, 35.234150, 31.061928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948990, 35.229340, 31.121628>,  <31.336334, 35.221321, 31.221128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948990, 35.229340, 31.121628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237205, -0.383655, 0.892492,
		-0.077542, 0.923259, 0.376272,
		-0.968360, 0.020048, -0.248751,
		30.658482, 35.235355, 31.047003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065643, 35.423927, 31.864761>,  <31.336334, 35.221321, 31.221128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065643, 35.423927, 31.864761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746490, 35.298103, 31.659069>,  <30.554998, 35.222610, 31.535654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746490, 35.298103, 31.659069>,  <31.065643, 35.423927, 31.864761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746490, 35.298103, 31.659069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452076, -0.252051, 0.855627,
		-0.398759, 0.915163, 0.058902,
		-0.797884, -0.314560, -0.514231,
		30.507126, 35.203735, 31.504801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483545, 35.744713, 32.197884>,  <31.065643, 35.423927, 31.864761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483545, 35.744713, 32.197884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343527, 35.423672, 32.004681>,  <30.259516, 35.231049, 31.888760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343527, 35.423672, 32.004681>,  <30.483545, 35.744713, 32.197884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343527, 35.423672, 32.004681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635046, -0.175719, 0.752222,
		-0.688609, 0.570046, -0.448179,
		-0.350048, -0.802602, -0.483008,
		30.238512, 35.182892, 31.859777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710396, 35.803383, 32.134434>,  <30.483545, 35.744713, 32.197884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710396, 35.803383, 32.134434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794853, 35.413654, 32.103165>,  <29.845528, 35.179817, 32.084404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794853, 35.413654, 32.103165>,  <29.710396, 35.803383, 32.134434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794853, 35.413654, 32.103165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601315, -0.192530, 0.775469,
		-0.770610, -0.116725, -0.626527,
		0.211141, -0.974324, -0.078177,
		29.858196, 35.121357, 32.079712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078264, 35.566532, 32.312702>,  <29.710396, 35.803383, 32.134434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078264, 35.566532, 32.312702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305103, 35.237446, 32.328381>,  <29.441206, 35.039993, 32.337788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305103, 35.237446, 32.328381>,  <29.078264, 35.566532, 32.312702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305103, 35.237446, 32.328381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461759, -0.278163, 0.842261,
		-0.682041, -0.495742, -0.537643,
		0.567096, -0.822718, 0.039195,
		29.475233, 34.990631, 32.340137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684055, 34.907986, 32.499226>,  <29.078264, 35.566532, 32.312702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684055, 34.907986, 32.499226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056427, 34.799042, 32.596542>,  <29.279850, 34.733677, 32.654930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056427, 34.799042, 32.596542>,  <28.684055, 34.907986, 32.499226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056427, 34.799042, 32.596542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354899, -0.517603, 0.778546,
		-0.086116, -0.811115, -0.578512,
		0.930930, -0.272358, 0.243290,
		29.335707, 34.717335, 32.669529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613756, 34.246384, 32.749832>,  <28.684055, 34.907986, 32.499226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613756, 34.246384, 32.749832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967052, 34.360294, 32.898849>,  <29.179029, 34.428642, 32.988258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967052, 34.360294, 32.898849>,  <28.613756, 34.246384, 32.749832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967052, 34.360294, 32.898849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180818, -0.526193, 0.830919,
		0.432658, -0.801263, -0.413262,
		0.883240, 0.284778, 0.372544,
		29.232025, 34.445728, 33.010612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050613, 33.577610, 33.068062>,  <28.613756, 34.246384, 32.749832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050613, 33.577610, 33.068062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197529, 33.907993, 33.239124>,  <29.285679, 34.106224, 33.341763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197529, 33.907993, 33.239124>,  <29.050613, 33.577610, 33.068062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197529, 33.907993, 33.239124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242101, -0.359045, 0.901373,
		0.898046, -0.434599, 0.068092,
		0.367288, 0.825960, 0.427656,
		29.307714, 34.155781, 33.367420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463291, 33.414494, 33.706608>,  <29.050613, 33.577610, 33.068062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463291, 33.414494, 33.706608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351200, 33.796234, 33.747948>,  <29.283945, 34.025280, 33.772751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351200, 33.796234, 33.747948>,  <29.463291, 33.414494, 33.706608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351200, 33.796234, 33.747948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245251, -0.175269, 0.953485,
		0.928075, 0.241849, 0.283172,
		-0.280230, 0.954353, 0.103350,
		29.267132, 34.082539, 33.778954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665148, 33.569160, 34.409298>,  <29.463291, 33.414494, 33.706608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665148, 33.569160, 34.409298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434643, 33.887009, 34.332878>,  <29.296341, 34.077717, 34.287025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434643, 33.887009, 34.332878>,  <29.665148, 33.569160, 34.409298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434643, 33.887009, 34.332878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182177, 0.102987, 0.977857,
		0.796703, 0.598305, 0.085414,
		-0.576261, 0.794622, -0.191047,
		29.261765, 34.125397, 34.275562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924372, 34.283390, 34.735199>,  <29.665148, 33.569160, 34.409298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924372, 34.283390, 34.735199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528011, 34.252220, 34.691299>,  <29.290195, 34.233517, 34.664959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528011, 34.252220, 34.691299>,  <29.924372, 34.283390, 34.735199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528011, 34.252220, 34.691299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106779, -0.041354, 0.993422,
		-0.081952, 0.996101, 0.032656,
		-0.990900, -0.077926, -0.109752,
		29.230742, 34.228844, 34.658375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526606, 34.775818, 35.158672>,  <29.924372, 34.283390, 34.735199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526606, 34.775818, 35.158672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318239, 34.437946, 35.109409>,  <29.193218, 34.235226, 35.079849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318239, 34.437946, 35.109409>,  <29.526606, 34.775818, 35.158672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318239, 34.437946, 35.109409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035003, -0.123022, 0.991786,
		-0.852889, 0.520951, 0.034518,
		-0.520918, -0.844675, -0.123159,
		29.161964, 34.184544, 35.072460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872297, 34.700970, 35.675659>,  <29.526606, 34.775818, 35.158672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872297, 34.700970, 35.675659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037088, 34.348789, 35.581779>,  <29.135963, 34.137482, 35.525452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037088, 34.348789, 35.581779>,  <28.872297, 34.700970, 35.675659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037088, 34.348789, 35.581779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006500, -0.254731, 0.966990,
		-0.911170, -0.399904, -0.099221,
		0.411978, -0.880448, -0.234703,
		29.160683, 34.084656, 35.511368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904858, 34.843025, 36.403908>,  <28.872297, 34.700970, 35.675659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904858, 34.843025, 36.403908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257610, 34.793530, 36.221931>,  <29.469263, 34.763832, 36.112747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257610, 34.793530, 36.221931>,  <28.904858, 34.843025, 36.403908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257610, 34.793530, 36.221931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397190, -0.324894, 0.858303,
		-0.254014, -0.937621, -0.237370,
		0.881883, -0.123740, -0.454941,
		29.522175, 34.756409, 36.085449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040001, 34.140457, 36.408539>,  <28.904858, 34.843025, 36.403908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040001, 34.140457, 36.408539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362614, 34.376446, 36.423725>,  <29.556181, 34.518040, 36.432838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362614, 34.376446, 36.423725>,  <29.040001, 34.140457, 36.408539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362614, 34.376446, 36.423725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288254, -0.448511, 0.846018,
		0.516157, -0.671394, -0.531800,
		0.806530, 0.589972, 0.037970,
		29.604572, 34.553436, 36.435116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517670, 33.920589, 36.804764>,  <29.040001, 34.140457, 36.408539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517670, 33.920589, 36.804764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695808, 34.277596, 36.833286>,  <29.802691, 34.491798, 36.850399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695808, 34.277596, 36.833286>,  <29.517670, 33.920589, 36.804764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695808, 34.277596, 36.833286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250796, -0.200795, 0.946986,
		0.859517, -0.403853, -0.313263,
		0.445345, 0.892515, 0.071302,
		29.829412, 34.545349, 36.854675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105671, 33.786839, 37.202137>,  <29.517670, 33.920589, 36.804764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105671, 33.786839, 37.202137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058834, 34.178249, 37.269997>,  <30.030731, 34.413094, 37.310711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058834, 34.178249, 37.269997>,  <30.105671, 33.786839, 37.202137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058834, 34.178249, 37.269997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491130, -0.091417, 0.866276,
		0.863181, 0.184753, -0.469878,
		-0.117092, 0.978524, 0.169647,
		30.023706, 34.471806, 37.320892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702108, 34.164841, 37.336285>,  <30.105671, 33.786839, 37.202137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702108, 34.164841, 37.336285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396029, 34.347401, 37.517910>,  <30.212381, 34.456936, 37.626884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396029, 34.347401, 37.517910>,  <30.702108, 34.164841, 37.336285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396029, 34.347401, 37.517910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483602, -0.058075, 0.873359,
		0.424973, 0.887876, -0.176279,
		-0.765197, 0.456403, 0.454059,
		30.166470, 34.484322, 37.654129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294191, 33.721832, 37.358856>,  <30.702108, 34.164841, 37.336285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294191, 33.721832, 37.358856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525034, 33.399460, 37.411663>,  <31.663540, 33.206036, 37.443348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525034, 33.399460, 37.411663>,  <31.294191, 33.721832, 37.358856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525034, 33.399460, 37.411663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381976, 0.409256, 0.828616,
		-0.721832, -0.427773, 0.544030,
		0.577107, -0.805928, 0.132015,
		31.698166, 33.157681, 37.451267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263021, 33.376106, 38.074532>,  <31.294191, 33.721832, 37.358856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263021, 33.376106, 38.074532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617552, 33.237358, 37.951820>,  <31.830271, 33.154110, 37.878193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617552, 33.237358, 37.951820>,  <31.263021, 33.376106, 38.074532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617552, 33.237358, 37.951820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411722, 0.287111, 0.864900,
		-0.211926, -0.892889, 0.397286,
		0.886325, -0.346866, -0.306776,
		31.883450, 33.133297, 37.859787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515371, 32.933228, 38.625698>,  <31.263021, 33.376106, 38.074532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515371, 32.933228, 38.625698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839365, 33.033890, 38.413815>,  <32.033760, 33.094288, 38.286682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839365, 33.033890, 38.413815>,  <31.515371, 32.933228, 38.625698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839365, 33.033890, 38.413815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480006, 0.234443, 0.845358,
		0.336930, -0.938991, 0.069097,
		0.809983, 0.251660, -0.529712,
		32.082359, 33.109386, 38.254902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077442, 32.478302, 38.767082>,  <31.515371, 32.933228, 38.625698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077442, 32.478302, 38.767082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262383, 32.794178, 38.605778>,  <32.373348, 32.983704, 38.508995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262383, 32.794178, 38.605778>,  <32.077442, 32.478302, 38.767082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262383, 32.794178, 38.605778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617142, 0.039966, 0.785837,
		0.636682, -0.612206, -0.468870,
		0.462355, 0.789688, -0.403264,
		32.401089, 33.031086, 38.484798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808624, 32.257263, 38.753235>,  <32.077442, 32.478302, 38.767082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808624, 32.257263, 38.753235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779427, 32.655876, 38.737244>,  <32.761909, 32.895042, 38.727650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779427, 32.655876, 38.737244>,  <32.808624, 32.257263, 38.753235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779427, 32.655876, 38.737244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792559, 0.082288, 0.604217,
		0.605411, 0.012420, -0.795816,
		-0.072991, 0.996531, -0.039974,
		32.757530, 32.954834, 38.725250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455170, 32.422897, 38.741871>,  <32.808624, 32.257263, 38.753235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455170, 32.422897, 38.741871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251938, 32.752945, 38.840687>,  <33.130001, 32.950974, 38.899975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251938, 32.752945, 38.840687>,  <33.455170, 32.422897, 38.741871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251938, 32.752945, 38.840687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728013, 0.258131, 0.635111,
		0.460277, 0.502533, -0.731851,
		-0.508078, 0.825123, 0.247039,
		33.099514, 33.000481, 38.914799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934483, 33.010979, 38.646057>,  <33.455170, 32.422897, 38.741871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934483, 33.010979, 38.646057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653137, 33.190834, 38.866272>,  <33.484329, 33.298748, 38.998402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653137, 33.190834, 38.866272>,  <33.934483, 33.010979, 38.646057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653137, 33.190834, 38.866272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696277, 0.279923, 0.660939,
		0.143077, 0.848213, -0.509964,
		-0.703368, 0.449642, 0.550541,
		33.442127, 33.325726, 39.031433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168068, 33.771839, 38.814091>,  <33.934483, 33.010979, 38.646057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168068, 33.771839, 38.814091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899509, 33.662903, 39.089787>,  <33.738373, 33.597542, 39.255203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899509, 33.662903, 39.089787>,  <34.168068, 33.771839, 38.814091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899509, 33.662903, 39.089787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619379, 0.304474, 0.723647,
		-0.406934, 0.912758, -0.035742,
		-0.671398, -0.272339, 0.689244,
		33.698090, 33.581200, 39.296558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341694, 34.273037, 39.318546>,  <34.168068, 33.771839, 38.814091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341694, 34.273037, 39.318546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122681, 33.995647, 39.505863>,  <33.991272, 33.829216, 39.618256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122681, 33.995647, 39.505863>,  <34.341694, 34.273037, 39.318546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122681, 33.995647, 39.505863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413799, 0.262030, 0.871843,
		-0.727306, 0.671147, 0.143487,
		-0.547537, -0.693472, 0.468296,
		33.958420, 33.787605, 39.646351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959026, 34.526192, 39.947296>,  <34.341694, 34.273037, 39.318546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959026, 34.526192, 39.947296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011189, 34.137833, 40.027649>,  <34.042484, 33.904816, 40.075863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011189, 34.137833, 40.027649>,  <33.959026, 34.526192, 39.947296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011189, 34.137833, 40.027649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355640, 0.234937, 0.904613,
		-0.925481, -0.046522, 0.375927,
		0.130403, -0.970897, 0.200884,
		34.050308, 33.846565, 40.087914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717827, 34.496212, 40.644455>,  <33.959026, 34.526192, 39.947296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717827, 34.496212, 40.644455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927052, 34.162319, 40.575596>,  <34.052586, 33.961983, 40.534283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927052, 34.162319, 40.575596>,  <33.717827, 34.496212, 40.644455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927052, 34.162319, 40.575596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524598, 0.156131, 0.836911,
		-0.671719, -0.528060, 0.519564,
		0.523059, -0.834731, -0.172143,
		34.083969, 33.911900, 40.523952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871815, 34.185150, 41.280445>,  <33.717827, 34.496212, 40.644455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871815, 34.185150, 41.280445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141380, 34.004856, 41.046291>,  <34.303120, 33.896679, 40.905800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141380, 34.004856, 41.046291>,  <33.871815, 34.185150, 41.280445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141380, 34.004856, 41.046291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565280, -0.195594, 0.801375,
		-0.475703, -0.870967, 0.122976,
		0.673918, -0.450732, -0.585385,
		34.343555, 33.869637, 40.870674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137337, 33.652805, 41.697319>,  <33.871815, 34.185150, 41.280445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137337, 33.652805, 41.697319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402847, 33.686234, 41.400021>,  <34.562153, 33.706291, 41.221642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402847, 33.686234, 41.400021>,  <34.137337, 33.652805, 41.697319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402847, 33.686234, 41.400021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734846, -0.257928, 0.627275,
		-0.139280, -0.962543, -0.232622,
		0.663779, 0.083575, -0.743245,
		34.601982, 33.711308, 41.177048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478855, 32.973007, 41.623043>,  <34.137337, 33.652805, 41.697319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478855, 32.973007, 41.623043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721588, 33.250828, 41.468464>,  <34.867229, 33.417522, 41.375717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721588, 33.250828, 41.468464>,  <34.478855, 32.973007, 41.623043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721588, 33.250828, 41.468464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714567, -0.263818, 0.647915,
		0.348061, -0.669322, -0.656401,
		0.606834, 0.694556, -0.386450,
		34.903637, 33.459194, 41.352528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132935, 32.677589, 41.338646>,  <34.478855, 32.973007, 41.623043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132935, 32.677589, 41.338646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198101, 33.065880, 41.409241>,  <35.237202, 33.298855, 41.451595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198101, 33.065880, 41.409241>,  <35.132935, 32.677589, 41.338646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198101, 33.065880, 41.409241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705051, -0.239669, 0.667429,
		0.690190, 0.015698, -0.723458,
		0.162913, 0.970728, 0.176485,
		35.246975, 33.357098, 41.462185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917255, 32.732044, 41.409153>,  <35.132935, 32.677589, 41.338646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917255, 32.732044, 41.409153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760571, 33.067657, 41.560196>,  <35.666557, 33.269024, 41.650822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760571, 33.067657, 41.560196>,  <35.917255, 32.732044, 41.409153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760571, 33.067657, 41.560196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711988, 0.016468, 0.701998,
		0.582779, 0.543836, -0.603830,
		-0.391716, 0.839030, 0.377608,
		35.643055, 33.319366, 41.673477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460056, 32.988632, 41.524162>,  <35.917255, 32.732044, 41.409153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460056, 32.988632, 41.524162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207970, 33.180576, 41.768311>,  <36.056717, 33.295742, 41.914799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207970, 33.180576, 41.768311>,  <36.460056, 32.988632, 41.524162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207970, 33.180576, 41.768311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693167, -0.006414, 0.720749,
		0.349777, 0.877319, -0.328584,
		-0.630219, 0.479864, 0.610372,
		36.018906, 33.324535, 41.951424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878387, 33.464874, 41.912167>,  <36.460056, 32.988632, 41.524162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878387, 33.464874, 41.912167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539833, 33.424294, 42.121292>,  <36.336700, 33.399944, 42.246769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539833, 33.424294, 42.121292>,  <36.878387, 33.464874, 41.912167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539833, 33.424294, 42.121292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522152, 0.035098, 0.852130,
		-0.104802, 0.994221, 0.023268,
		-0.846388, -0.101454, 0.522813,
		36.285915, 33.393856, 42.278137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936920, 33.914597, 42.398964>,  <36.878387, 33.464874, 41.912167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936920, 33.914597, 42.398964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661411, 33.666706, 42.549442>,  <36.496105, 33.517971, 42.639729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661411, 33.666706, 42.549442>,  <36.936920, 33.914597, 42.398964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661411, 33.666706, 42.549442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473474, 0.008429, 0.880767,
		-0.549009, 0.784770, 0.287620,
		-0.688775, -0.619730, 0.376196,
		36.454781, 33.480785, 42.662300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636349, 34.193146, 43.069901>,  <36.936920, 33.914597, 42.398964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636349, 34.193146, 43.069901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549759, 33.803665, 43.098316>,  <36.497803, 33.569977, 43.115368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549759, 33.803665, 43.098316>,  <36.636349, 34.193146, 43.069901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549759, 33.803665, 43.098316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280450, 0.007680, 0.959838,
		-0.935139, 0.227707, 0.271412,
		-0.216477, -0.973699, 0.071042,
		36.484818, 33.511555, 43.119629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291233, 34.221783, 43.648251>,  <36.636349, 34.193146, 43.069901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291233, 34.221783, 43.648251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439613, 33.857128, 43.577461>,  <36.528641, 33.638336, 43.534988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439613, 33.857128, 43.577461>,  <36.291233, 34.221783, 43.648251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439613, 33.857128, 43.577461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314399, -0.056032, 0.947636,
		-0.873815, -0.407162, 0.265832,
		0.370946, -0.911636, -0.176973,
		36.550896, 33.583637, 43.524368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094364, 33.810360, 44.284737>,  <36.291233, 34.221783, 43.648251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094364, 33.810360, 44.284737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357956, 33.573280, 44.099503>,  <36.516113, 33.431030, 43.988361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357956, 33.573280, 44.099503>,  <36.094364, 33.810360, 44.284737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357956, 33.573280, 44.099503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381170, -0.267607, 0.884928,
		-0.648424, -0.759664, 0.049573,
		0.658981, -0.592704, -0.463083,
		36.555649, 33.395470, 43.960579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954334, 33.036057, 44.387470>,  <36.094364, 33.810360, 44.284737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954334, 33.036057, 44.387470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337894, 33.123283, 44.314857>,  <36.568031, 33.175621, 44.271290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337894, 33.123283, 44.314857>,  <35.954334, 33.036057, 44.387470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337894, 33.123283, 44.314857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264581, -0.456108, 0.849684,
		0.102492, -0.862793, -0.495059,
		0.958902, 0.218069, -0.181531,
		36.625565, 33.188705, 44.260399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284073, 32.528984, 44.698181>,  <35.954334, 33.036057, 44.387470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284073, 32.528984, 44.698181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581261, 32.789948, 44.638371>,  <36.759575, 32.946526, 44.602486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581261, 32.789948, 44.638371>,  <36.284073, 32.528984, 44.698181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581261, 32.789948, 44.638371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418433, -0.278373, 0.864536,
		0.522406, -0.704891, -0.479812,
		0.742971, 0.652408, -0.149526,
		36.804153, 32.985668, 44.593513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874836, 32.200558, 44.952103>,  <36.284073, 32.528984, 44.698181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874836, 32.200558, 44.952103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017933, 32.570667, 44.901665>,  <37.103790, 32.792732, 44.871403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017933, 32.570667, 44.901665>,  <36.874836, 32.200558, 44.952103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017933, 32.570667, 44.901665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603052, -0.125812, 0.787718,
		0.712987, -0.357837, -0.602994,
		0.357739, 0.925270, -0.126092,
		37.125256, 32.848248, 44.863838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567978, 32.168297, 44.961567>,  <36.874836, 32.200558, 44.952103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567978, 32.168297, 44.961567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498962, 32.548595, 45.064575>,  <37.457554, 32.776775, 45.126381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498962, 32.548595, 45.064575>,  <37.567978, 32.168297, 44.961567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498962, 32.548595, 45.064575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551275, -0.123452, 0.825140,
		0.816287, 0.284336, -0.502820,
		-0.172543, 0.950743, 0.257520,
		37.447201, 32.833817, 45.141830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257298, 32.436382, 45.147533>,  <37.567978, 32.168297, 44.961567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257298, 32.436382, 45.147533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987946, 32.680531, 45.314392>,  <37.826332, 32.827019, 45.414505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987946, 32.680531, 45.314392>,  <38.257298, 32.436382, 45.147533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987946, 32.680531, 45.314392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497543, -0.043189, 0.866363,
		0.546816, 0.790941, -0.274601,
		-0.673382, 0.610367, 0.417143,
		37.785931, 32.863640, 45.439537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718910, 32.857071, 45.615208>,  <38.257298, 32.436382, 45.147533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718910, 32.857071, 45.615208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345203, 32.900711, 45.750996>,  <38.120979, 32.926895, 45.832470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345203, 32.900711, 45.750996>,  <38.718910, 32.857071, 45.615208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345203, 32.900711, 45.750996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355275, 0.203769, 0.912282,
		0.030354, 0.972921, -0.229135,
		-0.934269, 0.109098, 0.339470,
		38.064922, 32.933441, 45.852837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643932, 33.566006, 45.977314>,  <38.718910, 32.857071, 45.615208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643932, 33.566006, 45.977314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373428, 33.300453, 46.105019>,  <38.211124, 33.141121, 46.181641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373428, 33.300453, 46.105019>,  <38.643932, 33.566006, 45.977314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373428, 33.300453, 46.105019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374620, 0.063237, 0.925020,
		-0.634293, 0.745159, 0.205938,
		-0.676264, -0.663882, 0.319263,
		38.170547, 33.101288, 46.200798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377647, 33.912685, 46.498371>,  <38.643932, 33.566006, 45.977314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377647, 33.912685, 46.498371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328278, 33.518959, 46.548794>,  <38.298656, 33.282722, 46.579048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328278, 33.518959, 46.548794>,  <38.377647, 33.912685, 46.498371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328278, 33.518959, 46.548794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404865, 0.066030, 0.911989,
		-0.906008, 0.163597, 0.390366,
		-0.123423, -0.984315, 0.126058,
		38.291252, 33.223663, 46.586613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398884, 33.879955, 47.230354>,  <38.377647, 33.912685, 46.498371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398884, 33.879955, 47.230354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445492, 33.508522, 47.089413>,  <38.473457, 33.285660, 47.004848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445492, 33.508522, 47.089413>,  <38.398884, 33.879955, 47.230354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445492, 33.508522, 47.089413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358952, -0.291415, 0.886697,
		-0.926054, -0.229798, 0.299361,
		0.116523, -0.928585, -0.352352,
		38.480450, 33.229946, 46.983707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412418, 33.565132, 47.817982>,  <38.398884, 33.879955, 47.230354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412418, 33.565132, 47.817982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547764, 33.295601, 47.555237>,  <38.628971, 33.133881, 47.397591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547764, 33.295601, 47.555237>,  <38.412418, 33.565132, 47.817982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547764, 33.295601, 47.555237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695958, -0.290630, 0.656640,
		-0.633367, -0.679329, 0.370619,
		0.338362, -0.673829, -0.656860,
		38.649273, 33.093452, 47.358177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617424, 32.992393, 48.257256>,  <38.412418, 33.565132, 47.817982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617424, 32.992393, 48.257256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795918, 32.908707, 47.909210>,  <38.903015, 32.858494, 47.700382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795918, 32.908707, 47.909210>,  <38.617424, 32.992393, 48.257256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795918, 32.908707, 47.909210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734977, -0.469032, 0.489713,
		-0.510568, -0.858042, -0.055528,
		0.446239, -0.209220, -0.870114,
		38.929790, 32.845940, 47.648174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806965, 32.310783, 48.219303>,  <38.617424, 32.992393, 48.257256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806965, 32.310783, 48.219303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052612, 32.504112, 47.969738>,  <39.200001, 32.620110, 47.820000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052612, 32.504112, 47.969738>,  <38.806965, 32.310783, 48.219303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052612, 32.504112, 47.969738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789002, -0.394438, 0.471056,
		-0.018422, -0.781549, -0.623572,
		0.614114, 0.483322, -0.623910,
		39.236847, 32.649109, 47.782566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361954, 31.806854, 48.044048>,  <38.806965, 32.310783, 48.219303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361954, 31.806854, 48.044048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513927, 32.166756, 47.958172>,  <39.605110, 32.382698, 47.906647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513927, 32.166756, 47.958172>,  <39.361954, 31.806854, 48.044048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513927, 32.166756, 47.958172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850060, -0.248090, 0.464597,
		0.364759, -0.359019, -0.859102,
		0.379933, 0.899754, -0.214695,
		39.627907, 32.436684, 47.893764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011456, 31.830971, 47.754124>,  <39.361954, 31.806854, 48.044048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011456, 31.830971, 47.754124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001308, 32.197811, 47.913261>,  <39.995220, 32.417915, 48.008743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001308, 32.197811, 47.913261>,  <40.011456, 31.830971, 47.754124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001308, 32.197811, 47.913261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878988, -0.169099, 0.445854,
		0.476169, 0.361012, -0.801831,
		-0.025370, 0.917102, 0.397845,
		39.993698, 32.472942, 48.032616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701706, 32.214607, 47.662384>,  <40.011456, 31.830971, 47.754124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701706, 32.214607, 47.662384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519672, 32.397224, 47.968185>,  <40.410454, 32.506794, 48.151669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519672, 32.397224, 47.968185>,  <40.701706, 32.214607, 47.662384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519672, 32.397224, 47.968185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866661, 0.029965, 0.497997,
		0.204447, 0.889198, -0.409303,
		-0.455083, 0.456541, 0.764507,
		40.383148, 32.534187, 48.197536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265652, 32.726387, 47.929966>,  <40.701706, 32.214607, 47.662384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265652, 32.726387, 47.929966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997021, 32.780090, 48.221436>,  <40.835842, 32.812313, 48.396317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997021, 32.780090, 48.221436>,  <41.265652, 32.726387, 47.929966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997021, 32.780090, 48.221436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738828, 0.047230, 0.672237,
		0.055838, 0.989820, -0.130911,
		-0.671577, 0.134257, 0.728670,
		40.795547, 32.820366, 48.440037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403599, 33.356030, 48.335297>,  <41.265652, 32.726387, 47.929966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403599, 33.356030, 48.335297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240807, 33.081360, 48.576244>,  <41.143131, 32.916557, 48.720814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240807, 33.081360, 48.576244>,  <41.403599, 33.356030, 48.335297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240807, 33.081360, 48.576244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766825, 0.101486, 0.633782,
		-0.496333, 0.719847, 0.485256,
		-0.406980, -0.686674, 0.602368,
		41.118713, 32.875359, 48.756954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800419, 33.324512, 48.866150>,  <41.403599, 33.356030, 48.335297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800419, 33.324512, 48.866150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574364, 33.015732, 48.982571>,  <41.438732, 32.830463, 49.052425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574364, 33.015732, 48.982571>,  <41.800419, 33.324512, 48.866150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574364, 33.015732, 48.982571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717228, -0.285379, 0.635722,
		-0.407687, 0.568021, 0.714944,
		-0.565134, -0.771953, 0.291055,
		41.404823, 32.784145, 49.069885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688972, 33.244995, 49.595604>,  <41.800419, 33.324512, 48.866150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688972, 33.244995, 49.595604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626694, 32.866226, 49.483112>,  <41.589329, 32.638966, 49.415619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626694, 32.866226, 49.483112>,  <41.688972, 33.244995, 49.595604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626694, 32.866226, 49.483112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708636, -0.305414, 0.636048,
		-0.688182, -0.100259, 0.718577,
		-0.155694, -0.946927, -0.281228,
		41.579987, 32.582150, 49.398743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423328, 33.027851, 50.204540>,  <41.688972, 33.244995, 49.595604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423328, 33.027851, 50.204540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585430, 32.756947, 49.958908>,  <41.682690, 32.594406, 49.811531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585430, 32.756947, 49.958908>,  <41.423328, 33.027851, 50.204540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585430, 32.756947, 49.958908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727210, -0.168253, 0.665474,
		-0.554019, -0.716248, 0.424325,
		0.405251, -0.677259, -0.614079,
		41.707005, 32.553768, 49.774685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683647, 32.304325, 50.645889>,  <41.423328, 33.027851, 50.204540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683647, 32.304325, 50.645889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904949, 32.348866, 50.315674>,  <42.037731, 32.375591, 50.117546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904949, 32.348866, 50.315674>,  <41.683647, 32.304325, 50.645889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904949, 32.348866, 50.315674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714463, -0.572990, 0.401528,
		-0.428311, -0.811962, -0.396569,
		0.553255, 0.111355, -0.825535,
		42.070927, 32.382271, 50.068012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912174, 31.656288, 50.249924>,  <41.683647, 32.304325, 50.645889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912174, 31.656288, 50.249924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184544, 31.948942, 50.236958>,  <42.347965, 32.124535, 50.229179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184544, 31.948942, 50.236958>,  <41.912174, 31.656288, 50.249924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184544, 31.948942, 50.236958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667089, -0.601373, 0.439708,
		0.302213, -0.321030, -0.897556,
		0.680926, 0.731635, -0.032413,
		42.388821, 32.168434, 50.227234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532829, 31.474764, 49.832958>,  <41.912174, 31.656288, 50.249924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532829, 31.474764, 49.832958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606686, 31.731050, 50.131058>,  <42.651001, 31.884823, 50.309917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606686, 31.731050, 50.131058>,  <42.532829, 31.474764, 49.832958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606686, 31.731050, 50.131058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620359, -0.664113, 0.417264,
		0.762275, 0.385276, -0.520096,
		0.184641, 0.640716, 0.745246,
		42.662079, 31.923265, 50.354630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156876, 31.804859, 49.857395>,  <42.532829, 31.474764, 49.832958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156876, 31.804859, 49.857395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062111, 31.795706, 50.245899>,  <43.005253, 31.790215, 50.479004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062111, 31.795706, 50.245899>,  <43.156876, 31.804859, 49.857395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062111, 31.795706, 50.245899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813088, -0.551853, 0.185325,
		0.531754, 0.833627, 0.149343,
		-0.236907, -0.022882, 0.971263,
		42.991039, 31.788841, 50.537277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784515, 31.998228, 50.169552>,  <43.156876, 31.804859, 49.857395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784515, 31.998228, 50.169552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529785, 31.819014, 50.420540>,  <43.376949, 31.711485, 50.571133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529785, 31.819014, 50.420540>,  <43.784515, 31.998228, 50.169552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529785, 31.819014, 50.420540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746248, -0.562769, 0.355534,
		0.193829, 0.694661, 0.692731,
		-0.636823, -0.448037, 0.627470,
		43.338737, 31.684603, 50.608780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040791, 32.013855, 50.916538>,  <43.784515, 31.998228, 50.169552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040791, 32.013855, 50.916538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836124, 31.690990, 50.798767>,  <43.713326, 31.497272, 50.728104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836124, 31.690990, 50.798767>,  <44.040791, 32.013855, 50.916538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.836124, 31.690990, 50.798767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767136, -0.583506, 0.266502,
		-0.386909, -0.089505, 0.917763,
		-0.511667, -0.807162, -0.294426,
		43.682625, 31.448841, 50.710438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892391, 31.402515, 51.434097>,  <44.040791, 32.013855, 50.916538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892391, 31.402515, 51.434097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947746, 31.317808, 51.047108>,  <43.980957, 31.266985, 50.814915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947746, 31.317808, 51.047108>,  <43.892391, 31.402515, 51.434097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947746, 31.317808, 51.047108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952311, -0.239782, 0.188702,
		-0.271944, -0.947449, 0.168486,
		0.138385, -0.211767, -0.967473,
		43.989262, 31.254278, 50.756866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845734, 30.677456, 51.270725>,  <43.892391, 31.402515, 51.434097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845734, 30.677456, 51.270725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090321, 30.906612, 51.052402>,  <44.237072, 31.044106, 50.921410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090321, 30.906612, 51.052402>,  <43.845734, 30.677456, 51.270725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090321, 30.906612, 51.052402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791199, -0.433530, 0.431341,
		0.010489, -0.695591, -0.718361,
		0.611468, 0.572891, -0.545804,
		44.273762, 31.078480, 50.888660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009712, 30.362797, 50.627270>,  <43.845734, 30.677456, 51.270725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009712, 30.362797, 50.627270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709854, 30.103743, 50.681820>,  <43.529938, 29.948311, 50.714550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709854, 30.103743, 50.681820>,  <44.009712, 30.362797, 50.627270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709854, 30.103743, 50.681820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122098, -0.067196, -0.990241,
		0.650479, -0.758982, -0.028702,
		-0.749646, -0.647635, 0.136380,
		43.484959, 29.909452, 50.722733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.047310, 29.799915, 50.191330>,  <44.009712, 30.362797, 50.627270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.047310, 29.799915, 50.191330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656776, 29.810272, 50.277222>,  <43.422459, 29.816486, 50.328758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656776, 29.810272, 50.277222>,  <44.047310, 29.799915, 50.191330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656776, 29.810272, 50.277222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215757, -0.047044, -0.975313,
		-0.015140, -0.998558, 0.051514,
		-0.976330, 0.025880, 0.214733,
		43.363876, 29.818039, 50.341640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790516, 29.232954, 49.833515>,  <44.047310, 29.799915, 50.191330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790516, 29.232954, 49.833515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518383, 29.525965, 49.842911>,  <43.355103, 29.701771, 49.848549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518383, 29.525965, 49.842911>,  <43.790516, 29.232954, 49.833515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518383, 29.525965, 49.842911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055410, -0.019449, -0.998274,
		-0.730806, -0.680460, 0.053822,
		-0.680332, 0.732527, 0.023491,
		43.314281, 29.745724, 49.849957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237049, 28.913540, 49.533535>,  <43.790516, 29.232954, 49.833515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237049, 28.913540, 49.533535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224953, 29.311510, 49.495148>,  <43.217697, 29.550293, 49.472115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224953, 29.311510, 49.495148>,  <43.237049, 28.913540, 49.533535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224953, 29.311510, 49.495148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039595, -0.097126, -0.994484,
		-0.998758, -0.026271, 0.042331,
		-0.030237, 0.994925, -0.095965,
		43.215881, 29.609987, 49.466358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792179, 28.933178, 49.013210>,  <43.237049, 28.913540, 49.533535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792179, 28.933178, 49.013210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937553, 29.305679, 49.023670>,  <43.024776, 29.529181, 49.029945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937553, 29.305679, 49.023670>,  <42.792179, 28.933178, 49.013210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937553, 29.305679, 49.023670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218512, 0.112502, -0.969327,
		-0.905630, 0.346574, 0.244377,
		0.363437, 0.931252, 0.026154,
		43.046585, 29.585054, 49.031517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380283, 29.319038, 48.720173>,  <42.792179, 28.933178, 49.013210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380283, 29.319038, 48.720173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700668, 29.556271, 48.687405>,  <42.892899, 29.698610, 48.667744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700668, 29.556271, 48.687405>,  <42.380283, 29.319038, 48.720173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700668, 29.556271, 48.687405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117503, 0.021555, -0.992839,
		-0.587067, 0.804855, 0.086953,
		0.800965, 0.593080, -0.081919,
		42.940956, 29.734194, 48.662830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266197, 29.988235, 48.465935>,  <42.380283, 29.319038, 48.720173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266197, 29.988235, 48.465935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644722, 29.921900, 48.354942>,  <42.871838, 29.882097, 48.288345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644722, 29.921900, 48.354942>,  <42.266197, 29.988235, 48.465935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644722, 29.921900, 48.354942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236701, 0.229147, -0.944174,
		0.220167, 0.959160, 0.177589,
		0.946308, -0.165840, -0.277485,
		42.928616, 29.872149, 48.271698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390232, 30.424740, 47.928730>,  <42.266197, 29.988235, 48.465935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390232, 30.424740, 47.928730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723694, 30.205540, 47.901253>,  <42.923771, 30.074018, 47.884766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723694, 30.205540, 47.901253>,  <42.390232, 30.424740, 47.928730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723694, 30.205540, 47.901253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003930, 0.130259, -0.991472,
		0.552276, 0.826273, 0.110744,
		0.833652, -0.548001, -0.068692,
		42.973789, 30.041140, 47.880646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974030, 30.844162, 47.481792>,  <42.390232, 30.424740, 47.928730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974030, 30.844162, 47.481792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062374, 30.454275, 47.468231>,  <43.115379, 30.220343, 47.460094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062374, 30.454275, 47.468231>,  <42.974030, 30.844162, 47.481792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062374, 30.454275, 47.468231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093318, 0.055718, -0.994076,
		0.970831, 0.216388, 0.103264,
		0.220860, -0.974716, -0.033900,
		43.128632, 30.161860, 47.458061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484806, 30.774555, 46.879230>,  <42.974030, 30.844162, 47.481792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484806, 30.774555, 46.879230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418636, 30.393499, 46.981297>,  <43.378933, 30.164865, 47.042538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418636, 30.393499, 46.981297>,  <43.484806, 30.774555, 46.879230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418636, 30.393499, 46.981297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107704, -0.274637, -0.955497,
		0.980323, -0.130582, 0.148035,
		-0.165427, -0.952640, 0.255169,
		43.369007, 30.107708, 47.057846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001705, 30.391380, 46.540142>,  <43.484806, 30.774555, 46.879230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001705, 30.391380, 46.540142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692631, 30.149368, 46.616982>,  <43.507187, 30.004162, 46.663086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692631, 30.149368, 46.616982>,  <44.001705, 30.391380, 46.540142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692631, 30.149368, 46.616982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018526, -0.280996, -0.959530,
		0.634523, -0.744971, 0.205912,
		-0.772682, -0.605029, 0.192100,
		43.460827, 29.967859, 46.674610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075432, 29.932144, 46.020554>,  <44.001705, 30.391380, 46.540142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075432, 29.932144, 46.020554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.697517, 29.905842, 46.148960>,  <43.470768, 29.890060, 46.226006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.697517, 29.905842, 46.148960>,  <44.075432, 29.932144, 46.020554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.697517, 29.905842, 46.148960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298958, -0.228124, -0.926598,
		0.134159, -0.971409, 0.195871,
		-0.944789, -0.065754, 0.321015,
		43.414082, 29.886116, 46.245266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932869, 29.347528, 45.793957>,  <44.075432, 29.932144, 46.020554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932869, 29.347528, 45.793957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591122, 29.548681, 45.846359>,  <43.386074, 29.669373, 45.877800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591122, 29.548681, 45.846359>,  <43.932869, 29.347528, 45.793957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591122, 29.548681, 45.846359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316704, -0.303996, -0.898490,
		-0.412010, -0.809133, 0.418990,
		-0.854369, 0.502883, 0.131006,
		43.334812, 29.699545, 45.885662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346260, 28.956331, 45.408020>,  <43.932869, 29.347528, 45.793957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346260, 28.956331, 45.408020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180233, 29.315626, 45.465828>,  <43.080616, 29.531202, 45.500515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180233, 29.315626, 45.465828>,  <43.346260, 28.956331, 45.408020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180233, 29.315626, 45.465828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270419, 0.029870, -0.962279,
		-0.868672, -0.438494, 0.230502,
		-0.415069, 0.898237, 0.144524,
		43.055714, 29.585098, 45.509186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573025, 28.981228, 45.180637>,  <43.346260, 28.956331, 45.408020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573025, 28.981228, 45.180637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658974, 29.370605, 45.212219>,  <42.710545, 29.604233, 45.231167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658974, 29.370605, 45.212219>,  <42.573025, 28.981228, 45.180637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658974, 29.370605, 45.212219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510745, 0.180909, -0.840483,
		-0.832447, 0.140276, 0.536055,
		0.214877, 0.973445, 0.078952,
		42.723438, 29.662640, 45.235905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982483, 29.413860, 45.200207>,  <42.573025, 28.981228, 45.180637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982483, 29.413860, 45.200207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263527, 29.667669, 45.071384>,  <42.432156, 29.819954, 44.994091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263527, 29.667669, 45.071384>,  <41.982483, 29.413860, 45.200207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263527, 29.667669, 45.071384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607715, 0.299645, -0.735456,
		-0.370162, 0.712456, 0.596143,
		0.702612, 0.634523, -0.322053,
		42.474312, 29.858027, 44.974770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648636, 29.987728, 45.307076>,  <41.982483, 29.413860, 45.200207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648636, 29.987728, 45.307076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939224, 29.998793, 45.032421>,  <42.113579, 30.005430, 44.867626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939224, 29.998793, 45.032421>,  <41.648636, 29.987728, 45.307076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939224, 29.998793, 45.032421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604213, 0.501693, -0.619056,
		0.327359, 0.864603, 0.381180,
		0.726473, 0.027660, -0.686638,
		42.157166, 30.007092, 44.826431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552292, 30.591051, 45.065121>,  <41.648636, 29.987728, 45.307076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552292, 30.591051, 45.065121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769516, 30.375225, 44.807762>,  <41.899849, 30.245729, 44.653347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769516, 30.375225, 44.807762>,  <41.552292, 30.591051, 45.065121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769516, 30.375225, 44.807762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634964, 0.237510, -0.735126,
		0.549461, 0.807749, -0.213623,
		0.543060, -0.539566, -0.643394,
		41.932434, 30.213356, 44.614742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518639, 31.004196, 44.501209>,  <41.552292, 30.591051, 45.065121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518639, 31.004196, 44.501209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637791, 30.646019, 44.368874>,  <41.709282, 30.431112, 44.289474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637791, 30.646019, 44.368874>,  <41.518639, 31.004196, 44.501209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637791, 30.646019, 44.368874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558928, 0.117352, -0.820871,
		0.773866, 0.429434, -0.465530,
		0.297879, -0.895441, -0.330838,
		41.727154, 30.377386, 44.269623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593082, 31.136232, 43.824245>,  <41.518639, 31.004196, 44.501209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593082, 31.136232, 43.824245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570976, 30.738253, 43.857758>,  <41.557713, 30.499464, 43.877865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570976, 30.738253, 43.857758>,  <41.593082, 31.136232, 43.824245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570976, 30.738253, 43.857758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555225, -0.039112, -0.830780,
		0.829861, -0.092433, -0.550260,
		-0.055269, -0.994950, 0.083779,
		41.554394, 30.439768, 43.882893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755428, 30.842287, 43.163803>,  <41.593082, 31.136232, 43.824245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755428, 30.842287, 43.163803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557415, 30.540392, 43.335995>,  <41.438606, 30.359255, 43.439312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557415, 30.540392, 43.335995>,  <41.755428, 30.842287, 43.163803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557415, 30.540392, 43.335995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471474, -0.182833, -0.862719,
		0.729833, -0.630035, -0.265331,
		-0.495032, -0.754737, 0.430483,
		41.408905, 30.313971, 43.465141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861275, 30.244490, 42.765327>,  <41.755428, 30.842287, 43.163803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861275, 30.244490, 42.765327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523487, 30.213705, 42.977345>,  <41.320816, 30.195234, 43.104553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523487, 30.213705, 42.977345>,  <41.861275, 30.244490, 42.765327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523487, 30.213705, 42.977345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498513, -0.248918, -0.830376,
		0.195843, -0.965462, 0.171839,
		-0.844470, -0.076960, 0.530044,
		41.270145, 30.190617, 43.136356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422623, 29.686941, 42.423649>,  <41.861275, 30.244490, 42.765327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422623, 29.686941, 42.423649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180092, 29.892145, 42.666695>,  <41.034573, 30.015266, 42.812523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180092, 29.892145, 42.666695>,  <41.422623, 29.686941, 42.423649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180092, 29.892145, 42.666695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726277, -0.046056, -0.685857,
		-0.323867, -0.857146, 0.400512,
		-0.606326, 0.513009, 0.607610,
		40.998196, 30.046047, 42.848976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779305, 29.314987, 42.402863>,  <41.422623, 29.686941, 42.423649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779305, 29.314987, 42.402863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707512, 29.687092, 42.530865>,  <40.664436, 29.910355, 42.607666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707512, 29.687092, 42.530865>,  <40.779305, 29.314987, 42.402863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707512, 29.687092, 42.530865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783756, 0.061385, -0.618028,
		-0.594570, -0.361729, 0.718079,
		-0.179480, 0.930260, 0.320005,
		40.653667, 29.966169, 42.626865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034821, 29.454334, 42.292747>,  <40.779305, 29.314987, 42.402863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034821, 29.454334, 42.292747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153419, 29.827578, 42.374134>,  <40.224579, 30.051523, 42.422966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153419, 29.827578, 42.374134>,  <40.034821, 29.454334, 42.292747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153419, 29.827578, 42.374134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690488, 0.356630, -0.629318,
		-0.659785, 0.046097, 0.750039,
		0.296496, 0.933108, 0.203470,
		40.242367, 30.107510, 42.435177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478653, 29.791882, 42.530628>,  <40.034821, 29.454334, 42.292747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478653, 29.791882, 42.530628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719162, 30.083225, 42.399193>,  <39.863468, 30.258032, 42.320332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719162, 30.083225, 42.399193>,  <39.478653, 29.791882, 42.530628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719162, 30.083225, 42.399193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737885, 0.348343, -0.578085,
		-0.306593, 0.590043, 0.746894,
		0.601270, 0.728359, -0.328584,
		39.899544, 30.301733, 42.300617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235020, 30.510122, 42.749058>,  <39.478653, 29.791882, 42.530628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235020, 30.510122, 42.749058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445835, 30.558702, 42.412609>,  <39.572323, 30.587851, 42.210739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445835, 30.558702, 42.412609>,  <39.235020, 30.510122, 42.749058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445835, 30.558702, 42.412609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755830, 0.519467, -0.398591,
		0.388524, 0.845815, 0.365576,
		0.527039, 0.121451, -0.841118,
		39.603947, 30.595139, 42.160275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098209, 31.178553, 42.496952>,  <39.235020, 30.510122, 42.749058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098209, 31.178553, 42.496952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243130, 30.973234, 42.185757>,  <39.330082, 30.850044, 41.999039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243130, 30.973234, 42.185757>,  <39.098209, 31.178553, 42.496952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243130, 30.973234, 42.185757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724727, 0.369736, -0.581434,
		0.586099, 0.774482, -0.238044,
		0.362297, -0.513295, -0.777990,
		39.351818, 30.819246, 41.952358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971474, 31.669680, 41.884533>,  <39.098209, 31.178553, 42.496952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971474, 31.669680, 41.884533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059731, 31.327312, 41.697460>,  <39.112682, 31.121893, 41.585217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059731, 31.327312, 41.697460>,  <38.971474, 31.669680, 41.884533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059731, 31.327312, 41.697460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589663, 0.264893, -0.762974,
		0.776927, 0.444117, -0.446256,
		0.220640, -0.855916, -0.467682,
		39.125923, 31.070538, 41.557156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940273, 31.842525, 41.178215>,  <38.971474, 31.669680, 41.884533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940273, 31.842525, 41.178215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900513, 31.444765, 41.192547>,  <38.876656, 31.206108, 41.201145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900513, 31.444765, 41.192547>,  <38.940273, 31.842525, 41.178215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900513, 31.444765, 41.192547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729515, 0.048340, -0.682254,
		0.676703, -0.093953, -0.730237,
		-0.099399, -0.994402, 0.035828,
		38.870693, 31.146444, 41.203297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899651, 31.645065, 40.538403>,  <38.940273, 31.842525, 41.178215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899651, 31.645065, 40.538403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738892, 31.356733, 40.764282>,  <38.642437, 31.183733, 40.899811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738892, 31.356733, 40.764282>,  <38.899651, 31.645065, 40.538403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738892, 31.356733, 40.764282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824530, 0.016644, -0.565573,
		0.398284, -0.692911, -0.601036,
		-0.401896, -0.720831, 0.564697,
		38.618324, 31.140484, 40.933693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750648, 31.064020, 40.043446>,  <38.899651, 31.645065, 40.538403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750648, 31.064020, 40.043446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507957, 31.028856, 40.359459>,  <38.362343, 31.007759, 40.549065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507957, 31.028856, 40.359459>,  <38.750648, 31.064020, 40.043446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507957, 31.028856, 40.359459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786156, -0.080700, -0.612737,
		0.117621, -0.992854, -0.020147,
		-0.606732, -0.087909, 0.790031,
		38.325939, 31.002483, 40.596470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304981, 30.518076, 39.826668>,  <38.750648, 31.064020, 40.043446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304981, 30.518076, 39.826668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109150, 30.699951, 40.124275>,  <37.991650, 30.809076, 40.302841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109150, 30.699951, 40.124275>,  <38.304981, 30.518076, 39.826668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109150, 30.699951, 40.124275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871935, -0.261518, -0.413930,
		0.006367, -0.851392, 0.524492,
		-0.489581, 0.454687, 0.744023,
		37.962276, 30.836357, 40.347481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706627, 30.157421, 39.944637>,  <38.304981, 30.518076, 39.826668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706627, 30.157421, 39.944637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635662, 30.510231, 40.119251>,  <37.593082, 30.721916, 40.224018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635662, 30.510231, 40.119251>,  <37.706627, 30.157421, 39.944637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635662, 30.510231, 40.119251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841586, 0.093967, -0.531887,
		-0.510156, -0.461742, 0.725627,
		-0.177409, 0.882023, 0.436534,
		37.582439, 30.774837, 40.250210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948509, 30.196466, 39.971809>,  <37.706627, 30.157421, 39.944637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948509, 30.196466, 39.971809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059189, 30.579315, 40.006111>,  <37.125599, 30.809025, 40.026691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059189, 30.579315, 40.006111>,  <36.948509, 30.196466, 39.971809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059189, 30.579315, 40.006111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696581, 0.261247, -0.668225,
		-0.661975, 0.125167, 0.739001,
		0.276702, 0.957122, 0.085750,
		37.142200, 30.866451, 40.031837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340420, 30.618055, 40.200359>,  <36.948509, 30.196466, 39.971809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340420, 30.618055, 40.200359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598621, 30.851088, 40.002808>,  <36.753544, 30.990908, 39.884277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598621, 30.851088, 40.002808>,  <36.340420, 30.618055, 40.200359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598621, 30.851088, 40.002808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716927, 0.239250, -0.654809,
		-0.263320, 0.776761, 0.572106,
		0.645507, 0.582583, -0.493882,
		36.792274, 31.025862, 39.854645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998238, 31.327616, 40.154938>,  <36.340420, 30.618055, 40.200359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998238, 31.327616, 40.154938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293076, 31.280861, 39.888695>,  <36.469978, 31.252808, 39.728951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293076, 31.280861, 39.888695>,  <35.998238, 31.327616, 40.154938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293076, 31.280861, 39.888695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613390, 0.297654, -0.731542,
		0.283627, 0.947491, 0.147702,
		0.737094, -0.116887, -0.665605,
		36.514202, 31.245794, 39.689014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736259, 31.708811, 39.643852>,  <35.998238, 31.327616, 40.154938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736259, 31.708811, 39.643852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051262, 31.586376, 39.429882>,  <36.240261, 31.512915, 39.301498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051262, 31.586376, 39.429882>,  <35.736259, 31.708811, 39.643852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051262, 31.586376, 39.429882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406073, 0.395228, -0.823954,
		0.463621, 0.866086, 0.186949,
		0.787503, -0.306087, -0.534930,
		36.287514, 31.494551, 39.269402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053303, 32.307449, 39.242802>,  <35.736259, 31.708811, 39.643852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053303, 32.307449, 39.242802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158253, 31.970215, 39.055027>,  <36.221222, 31.767876, 38.942360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158253, 31.970215, 39.055027>,  <36.053303, 32.307449, 39.242802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158253, 31.970215, 39.055027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307869, 0.387923, -0.868753,
		0.914537, 0.372462, -0.157779,
		0.262372, -0.843082, -0.469440,
		36.236965, 31.717291, 38.914196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439236, 32.557377, 38.650223>,  <36.053303, 32.307449, 39.242802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439236, 32.557377, 38.650223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336826, 32.183952, 38.549889>,  <36.275383, 31.959898, 38.489689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336826, 32.183952, 38.549889>,  <36.439236, 32.557377, 38.650223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336826, 32.183952, 38.549889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343979, 0.330484, -0.878896,
		0.903401, -0.138730, -0.405736,
		-0.256019, -0.933560, -0.250839,
		36.260021, 31.903885, 38.474636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554272, 32.565178, 37.921066>,  <36.439236, 32.557377, 38.650223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554272, 32.565178, 37.921066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319515, 32.249348, 37.992767>,  <36.178661, 32.059849, 38.035786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319515, 32.249348, 37.992767>,  <36.554272, 32.565178, 37.921066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319515, 32.249348, 37.992767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354956, 0.051930, -0.933440,
		0.727712, -0.611453, -0.310741,
		-0.586891, -0.789575, 0.179248,
		36.143448, 32.012474, 38.046543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764687, 32.554123, 37.173649>,  <36.554272, 32.565178, 37.921066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764687, 32.554123, 37.173649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734272, 32.700058, 36.802464>,  <36.716022, 32.787617, 36.579754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734272, 32.700058, 36.802464>,  <36.764687, 32.554123, 37.173649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734272, 32.700058, 36.802464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975764, -0.164291, -0.144546,
		-0.205191, -0.916463, -0.343499,
		-0.076037, 0.364834, -0.927963,
		36.711460, 32.809509, 36.524075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801914, 31.980650, 36.732246>,  <36.764687, 32.554123, 37.173649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801914, 31.980650, 36.732246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918690, 32.351318, 36.637543>,  <36.988754, 32.573719, 36.580723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918690, 32.351318, 36.637543>,  <36.801914, 31.980650, 36.732246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918690, 32.351318, 36.637543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949738, -0.251627, 0.186228,
		0.112998, -0.279225, -0.953554,
		0.291940, 0.926670, -0.236757,
		37.006271, 32.629318, 36.566517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432667, 31.918238, 36.353851>,  <36.801914, 31.980650, 36.732246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432667, 31.918238, 36.353851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401199, 32.265381, 36.550068>,  <37.382317, 32.473667, 36.667797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401199, 32.265381, 36.550068>,  <37.432667, 31.918238, 36.353851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401199, 32.265381, 36.550068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924919, -0.120043, 0.360713,
		0.371933, 0.482093, -0.793254,
		-0.078673, 0.867857, 0.490545,
		37.377598, 32.525738, 36.697231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080700, 32.130070, 36.306267>,  <37.432667, 31.918238, 36.353851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080700, 32.130070, 36.306267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941460, 32.387775, 36.578663>,  <37.857914, 32.542397, 36.742100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941460, 32.387775, 36.578663>,  <38.080700, 32.130070, 36.306267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941460, 32.387775, 36.578663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896117, 0.015346, 0.443552,
		0.275313, 0.764653, -0.582674,
		-0.348105, 0.644260, 0.680993,
		37.837029, 32.581055, 36.782963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430721, 32.851372, 36.253139>,  <38.080700, 32.130070, 36.306267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430721, 32.851372, 36.253139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283932, 32.784142, 36.619110>,  <38.195858, 32.743805, 36.838692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283932, 32.784142, 36.619110>,  <38.430721, 32.851372, 36.253139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283932, 32.784142, 36.619110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892354, 0.214202, 0.397267,
		-0.262749, 0.962221, 0.071375,
		-0.366970, -0.168073, 0.914923,
		38.173840, 32.733719, 36.893585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650543, 33.341225, 36.638966>,  <38.430721, 32.851372, 36.253139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650543, 33.341225, 36.638966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562119, 33.067303, 36.916721>,  <38.509064, 32.902950, 37.083374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562119, 33.067303, 36.916721>,  <38.650543, 33.341225, 36.638966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562119, 33.067303, 36.916721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891263, 0.147222, 0.428925,
		-0.395959, 0.713701, 0.577796,
		-0.221059, -0.684804, 0.694389,
		38.495800, 32.861862, 37.125038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892113, 33.607365, 37.260685>,  <38.650543, 33.341225, 36.638966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892113, 33.607365, 37.260685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845127, 33.220844, 37.352310>,  <38.816936, 32.988934, 37.407284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845127, 33.220844, 37.352310>,  <38.892113, 33.607365, 37.260685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845127, 33.220844, 37.352310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821730, 0.034948, 0.568805,
		-0.557640, 0.255042, 0.789931,
		-0.117462, -0.966298, 0.229064,
		38.809887, 32.930954, 37.421028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267075, 33.607590, 37.860027>,  <38.892113, 33.607365, 37.260685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267075, 33.607590, 37.860027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193306, 33.218117, 37.806450>,  <39.149044, 32.984432, 37.774303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193306, 33.218117, 37.806450>,  <39.267075, 33.607590, 37.860027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193306, 33.218117, 37.806450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657612, -0.223521, 0.719433,
		-0.730435, 0.044597, 0.681524,
		-0.184420, -0.973678, -0.133941,
		39.137981, 32.926014, 37.766266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174305, 33.396046, 38.485931>,  <39.267075, 33.607590, 37.860027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174305, 33.396046, 38.485931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298790, 33.101337, 38.245827>,  <39.373482, 32.924511, 38.101765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298790, 33.101337, 38.245827>,  <39.174305, 33.396046, 38.485931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298790, 33.101337, 38.245827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702584, -0.246955, 0.667374,
		-0.639939, -0.629432, 0.440787,
		0.311212, -0.736769, -0.600265,
		39.392155, 32.880306, 38.065746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230091, 32.738392, 38.853321>,  <39.174305, 33.396046, 38.485931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230091, 32.738392, 38.853321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491295, 32.701336, 38.552654>,  <39.648018, 32.679104, 38.372253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491295, 32.701336, 38.552654>,  <39.230091, 32.738392, 38.853321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491295, 32.701336, 38.552654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734641, -0.163736, 0.658402,
		-0.184069, -0.982145, -0.038864,
		0.653010, -0.092640, -0.751662,
		39.687199, 32.673546, 38.327156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688244, 32.212990, 39.040844>,  <39.230091, 32.738392, 38.853321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688244, 32.212990, 39.040844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872921, 32.425758, 38.756901>,  <39.983727, 32.553417, 38.586533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872921, 32.425758, 38.756901>,  <39.688244, 32.212990, 39.040844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872921, 32.425758, 38.756901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881309, -0.184232, 0.435148,
		0.100685, -0.826511, -0.553843,
		0.461690, 0.531920, -0.709862,
		40.011429, 32.585335, 38.543941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211113, 31.732168, 38.790073>,  <39.688244, 32.212990, 39.040844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211113, 31.732168, 38.790073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333591, 32.102768, 38.702579>,  <40.407078, 32.325127, 38.650082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333591, 32.102768, 38.702579>,  <40.211113, 31.732168, 38.790073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333591, 32.102768, 38.702579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870402, -0.179413, 0.458488,
		0.385544, -0.330776, -0.861361,
		0.306196, 0.926498, -0.218737,
		40.425449, 32.380718, 38.636959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894711, 31.732122, 38.626400>,  <40.211113, 31.732168, 38.790073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894711, 31.732122, 38.626400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877705, 32.118324, 38.729160>,  <40.867500, 32.350044, 38.790817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877705, 32.118324, 38.729160>,  <40.894711, 31.732122, 38.626400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877705, 32.118324, 38.729160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777353, -0.129566, 0.615577,
		0.627627, 0.225871, -0.745028,
		-0.042511, 0.965502, 0.256901,
		40.864952, 32.407974, 38.806229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523685, 31.965839, 38.472912>,  <40.894711, 31.732122, 38.626400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523685, 31.965839, 38.472912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373650, 32.234123, 38.728867>,  <41.283627, 32.395092, 38.882439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373650, 32.234123, 38.728867>,  <41.523685, 31.965839, 38.472912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373650, 32.234123, 38.728867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806538, -0.104145, 0.581937,
		0.456951, 0.734374, -0.501888,
		-0.375090, 0.670708, 0.639889,
		41.261124, 32.435337, 38.920834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088291, 32.219845, 38.649952>,  <41.523685, 31.965839, 38.472912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088291, 32.219845, 38.649952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848396, 32.362152, 38.936653>,  <41.704460, 32.447536, 39.108673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848396, 32.362152, 38.936653>,  <42.088291, 32.219845, 38.649952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848396, 32.362152, 38.936653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737466, -0.101908, 0.667651,
		0.310575, 0.929000, -0.201252,
		-0.599739, 0.355772, 0.716756,
		41.668476, 32.468884, 39.151680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457397, 32.679581, 39.057396>,  <42.088291, 32.219845, 38.649952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457397, 32.679581, 39.057396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163284, 32.626122, 39.323177>,  <41.986816, 32.594044, 39.482647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163284, 32.626122, 39.323177>,  <42.457397, 32.679581, 39.057396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163284, 32.626122, 39.323177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677750, -0.151368, 0.719543,
		0.004410, 0.979400, 0.201880,
		-0.735279, -0.133651, 0.664457,
		41.942699, 32.586025, 39.522514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701958, 33.027657, 39.612244>,  <42.457397, 32.679581, 39.057396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701958, 33.027657, 39.612244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434013, 32.765450, 39.751713>,  <42.273247, 32.608124, 39.835396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434013, 32.765450, 39.751713>,  <42.701958, 33.027657, 39.612244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434013, 32.765450, 39.751713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613297, -0.223814, 0.757479,
		-0.418505, 0.721248, 0.551955,
		-0.669866, -0.655521, 0.348672,
		42.233055, 32.568794, 39.856316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665028, 33.137817, 40.298862>,  <42.701958, 33.027657, 39.612244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665028, 33.137817, 40.298862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480919, 32.783882, 40.269997>,  <42.370453, 32.571522, 40.252678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480919, 32.783882, 40.269997>,  <42.665028, 33.137817, 40.298862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480919, 32.783882, 40.269997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497689, -0.324491, 0.804370,
		-0.735157, 0.334311, 0.589729,
		-0.460272, -0.884840, -0.072168,
		42.342838, 32.518429, 40.248344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219902, 33.045872, 40.935081>,  <42.665028, 33.137817, 40.298862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219902, 33.045872, 40.935081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339073, 32.703953, 40.765114>,  <42.410576, 32.498802, 40.663132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339073, 32.703953, 40.765114>,  <42.219902, 33.045872, 40.935081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339073, 32.703953, 40.765114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512511, -0.232301, 0.826661,
		-0.805337, -0.464065, 0.368884,
		0.297932, -0.854798, -0.424919,
		42.428452, 32.447514, 40.637638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968510, 32.525394, 41.478237>,  <42.219902, 33.045872, 40.935081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968510, 32.525394, 41.478237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248863, 32.349297, 41.253754>,  <42.417076, 32.243637, 41.119064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248863, 32.349297, 41.253754>,  <41.968510, 32.525394, 41.478237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248863, 32.349297, 41.253754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417027, -0.385390, 0.823143,
		-0.578666, -0.810963, -0.086519,
		0.700881, -0.440244, -0.561205,
		42.459129, 32.217224, 41.085392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990520, 31.724514, 41.623348>,  <41.968510, 32.525394, 41.478237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990520, 31.724514, 41.623348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346245, 31.836721, 41.478886>,  <42.559681, 31.904047, 41.392208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346245, 31.836721, 41.478886>,  <41.990520, 31.724514, 41.623348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346245, 31.836721, 41.478886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453481, -0.439122, 0.775582,
		0.058976, -0.853511, -0.517727,
		0.889313, 0.280520, -0.361153,
		42.613037, 31.920877, 41.370541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466038, 31.188545, 41.790604>,  <41.990520, 31.724514, 41.623348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466038, 31.188545, 41.790604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721081, 31.486261, 41.711121>,  <42.874107, 31.664892, 41.663429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721081, 31.486261, 41.711121>,  <42.466038, 31.188545, 41.790604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721081, 31.486261, 41.711121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488129, -0.190788, 0.851663,
		0.595975, -0.640023, -0.484958,
		0.637608, 0.744292, -0.198709,
		42.912365, 31.709549, 41.651508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132633, 30.877754, 41.912273>,  <42.466038, 31.188545, 41.790604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132633, 30.877754, 41.912273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149448, 31.275333, 41.952862>,  <43.159538, 31.513882, 41.977215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149448, 31.275333, 41.952862>,  <43.132633, 30.877754, 41.912273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149448, 31.275333, 41.952862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541897, -0.108011, 0.833475,
		0.839393, 0.019950, -0.543159,
		0.042039, 0.993950, 0.101475,
		43.162060, 31.573519, 41.983303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748043, 31.063265, 42.165905>,  <43.132633, 30.877754, 41.912273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748043, 31.063265, 42.165905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513126, 31.365179, 42.282791>,  <43.372177, 31.546328, 42.352921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513126, 31.365179, 42.282791>,  <43.748043, 31.063265, 42.165905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513126, 31.365179, 42.282791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365170, -0.075102, 0.927906,
		0.722318, 0.651656, -0.231519,
		-0.587288, 0.754787, 0.292213,
		43.336941, 31.591616, 42.370457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128677, 31.444170, 42.507504>,  <43.748043, 31.063265, 42.165905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128677, 31.444170, 42.507504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780922, 31.584974, 42.646214>,  <43.572269, 31.669456, 42.729439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780922, 31.584974, 42.646214>,  <44.128677, 31.444170, 42.507504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780922, 31.584974, 42.646214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386696, 0.047775, 0.920969,
		0.307625, 0.934775, -0.177657,
		-0.869387, 0.352012, 0.346777,
		43.520107, 31.690578, 42.750248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366184, 32.099350, 42.908852>,  <44.128677, 31.444170, 42.507504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366184, 32.099350, 42.908852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001507, 32.017902, 43.051598>,  <43.782700, 31.969032, 43.137245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001507, 32.017902, 43.051598>,  <44.366184, 32.099350, 42.908852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001507, 32.017902, 43.051598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309429, 0.231142, 0.922403,
		-0.270308, 0.951373, -0.147724,
		-0.911695, -0.203623, 0.356862,
		43.727997, 31.956816, 43.158657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096794, 32.618530, 43.435062>,  <44.366184, 32.099350, 42.908852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096794, 32.618530, 43.435062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906796, 32.279053, 43.528099>,  <43.792797, 32.075367, 43.583920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906796, 32.279053, 43.528099>,  <44.096794, 32.618530, 43.435062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906796, 32.279053, 43.528099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238889, 0.130024, 0.962302,
		-0.846942, 0.512653, 0.140982,
		-0.474997, -0.848693, 0.232590,
		43.764297, 32.024445, 43.597878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655781, 32.796555, 43.978889>,  <44.096794, 32.618530, 43.435062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655781, 32.796555, 43.978889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.733253, 32.404659, 43.999260>,  <43.779736, 32.169521, 44.011482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.733253, 32.404659, 43.999260>,  <43.655781, 32.796555, 43.978889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.733253, 32.404659, 43.999260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398220, 0.125952, 0.908601,
		-0.896610, -0.155695, 0.414548,
		0.193678, -0.979742, 0.050929,
		43.791355, 32.110737, 44.014538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479225, 32.651543, 44.649487>,  <43.655781, 32.796555, 43.978889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479225, 32.651543, 44.649487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682564, 32.319176, 44.559006>,  <43.804565, 32.119755, 44.504719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682564, 32.319176, 44.559006>,  <43.479225, 32.651543, 44.649487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682564, 32.319176, 44.559006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299579, -0.075629, 0.951069,
		-0.807365, -0.551234, 0.210480,
		0.508344, -0.830916, -0.226199,
		43.835068, 32.069901, 44.491146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123260, 32.173409, 45.087654>,  <43.479225, 32.651543, 44.649487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123260, 32.173409, 45.087654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484772, 32.020969, 45.009724>,  <43.701679, 31.929506, 44.962963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484772, 32.020969, 45.009724>,  <43.123260, 32.173409, 45.087654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484772, 32.020969, 45.009724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181569, -0.070838, 0.980823,
		-0.387588, -0.921818, 0.005173,
		0.903775, -0.381095, -0.194830,
		43.755905, 31.906641, 44.951275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330112, 31.849461, 45.675922>,  <43.123260, 32.173409, 45.087654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330112, 31.849461, 45.675922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.703789, 31.852224, 45.533241>,  <43.927994, 31.853882, 45.447632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.703789, 31.852224, 45.533241>,  <43.330112, 31.849461, 45.675922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703789, 31.852224, 45.533241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356655, -0.043097, 0.933242,
		-0.008919, -0.999047, -0.042728,
		0.934193, 0.006915, -0.356699,
		43.984047, 31.854298, 45.426231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699379, 31.366451, 46.108864>,  <43.330112, 31.849461, 45.675922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.699379, 31.366451, 46.108864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979805, 31.601509, 45.947285>,  <44.148060, 31.742544, 45.850338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979805, 31.601509, 45.947285>,  <43.699379, 31.366451, 46.108864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979805, 31.601509, 45.947285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520359, -0.034256, 0.853260,
		0.487577, -0.808393, -0.329802,
		0.701067, 0.587645, -0.403952,
		44.190125, 31.777803, 45.826099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313023, 31.007097, 46.107285>,  <43.699379, 31.366451, 46.108864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.313023, 31.007097, 46.107285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410824, 31.394192, 46.082920>,  <44.469505, 31.626448, 46.068302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410824, 31.394192, 46.082920>,  <44.313023, 31.007097, 46.107285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410824, 31.394192, 46.082920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675212, -0.124832, 0.726984,
		0.695924, -0.218877, -0.683947,
		0.244498, 0.967734, -0.060915,
		44.484173, 31.684511, 46.064644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996727, 31.030487, 46.330883>,  <44.313023, 31.007097, 46.107285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996727, 31.030487, 46.330883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.889801, 31.413675, 46.372517>,  <44.825645, 31.643589, 46.397495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.889801, 31.413675, 46.372517>,  <44.996727, 31.030487, 46.330883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.889801, 31.413675, 46.372517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549574, 0.062840, 0.833079,
		0.791526, 0.279893, -0.543274,
		-0.267312, 0.957972, 0.104082,
		44.809608, 31.701067, 46.403740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.667286, 31.454197, 46.395870>,  <44.996727, 31.030487, 46.330883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.667286, 31.454197, 46.395870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370075, 31.661615, 46.565117>,  <45.191750, 31.786066, 46.666664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370075, 31.661615, 46.565117>,  <45.667286, 31.454197, 46.395870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370075, 31.661615, 46.565117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589179, 0.206920, 0.781059,
		0.317464, 0.829635, -0.459263,
		-0.743024, 0.518546, 0.423113,
		45.147167, 31.817179, 46.692051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.011993, 32.141315, 46.692619>,  <45.667286, 31.454197, 46.395870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.011993, 32.141315, 46.692619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651348, 32.124439, 46.864811>,  <45.434959, 32.114315, 46.968124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651348, 32.124439, 46.864811>,  <46.011993, 32.141315, 46.692619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.651348, 32.124439, 46.864811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408316, 0.245372, 0.879244,
		-0.142720, 0.968511, -0.204006,
		-0.901615, -0.042187, 0.430478,
		45.380863, 32.111782, 46.993954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100075, 32.605778, 47.181160>,  <46.011993, 32.141315, 46.692619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100075, 32.605778, 47.181160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776085, 32.400738, 47.295120>,  <45.581692, 32.277714, 47.363499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776085, 32.400738, 47.295120>,  <46.100075, 32.605778, 47.181160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.776085, 32.400738, 47.295120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274987, 0.097123, 0.956530,
		-0.517992, 0.853114, 0.062292,
		-0.809979, -0.512604, 0.284905,
		45.533092, 32.246956, 47.380592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.900959, 32.909115, 47.759197>,  <46.100075, 32.605778, 47.181160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.900959, 32.909115, 47.759197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.738495, 32.544472, 47.784481>,  <45.641014, 32.325684, 47.799652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.738495, 32.544472, 47.784481>,  <45.900959, 32.909115, 47.759197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.738495, 32.544472, 47.784481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412558, -0.121213, 0.902831,
		-0.815369, 0.392776, 0.425325,
		-0.406165, -0.911611, 0.063209,
		45.616646, 32.270988, 47.803444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432434, 32.860523, 48.437389>,  <45.900959, 32.909115, 47.759197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.432434, 32.860523, 48.437389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560848, 32.503422, 48.310944>,  <45.637897, 32.289162, 48.235077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560848, 32.503422, 48.310944>,  <45.432434, 32.860523, 48.437389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560848, 32.503422, 48.310944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337514, -0.204020, 0.918945,
		-0.884885, -0.401706, 0.235819,
		0.321034, -0.892753, -0.316115,
		45.657158, 32.235596, 48.216110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.517529, 33.660053, 48.188686>,  <45.432434, 32.860523, 48.437389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.517529, 33.660053, 48.188686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.283428, 33.902115, 48.404568>,  <45.142967, 34.047352, 48.534096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.283428, 33.902115, 48.404568>,  <45.517529, 33.660053, 48.188686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.283428, 33.902115, 48.404568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667538, 0.018261, -0.744352,
		-0.460302, -0.795900, 0.393276,
		-0.585248, 0.605153, 0.539699,
		45.107853, 34.083660, 48.566479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845993, 33.464222, 48.079411>,  <45.517529, 33.660053, 48.188686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.845993, 33.464222, 48.079411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830502, 33.847321, 48.193413>,  <44.821205, 34.077179, 48.261814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830502, 33.847321, 48.193413>,  <44.845993, 33.464222, 48.079411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830502, 33.847321, 48.193413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673507, 0.185674, -0.715482,
		-0.738166, -0.219663, 0.637856,
		-0.038732, 0.957744, 0.285003,
		44.818882, 34.134644, 48.278915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105453, 33.546757, 48.262577>,  <44.845993, 33.464222, 48.079411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105453, 33.546757, 48.262577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295208, 33.880138, 48.149216>,  <44.409061, 34.080166, 48.081200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295208, 33.880138, 48.149216>,  <44.105453, 33.546757, 48.262577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295208, 33.880138, 48.149216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746340, 0.210060, -0.631547,
		-0.466831, 0.511113, 0.721687,
		0.474389, 0.833450, -0.283401,
		44.437523, 34.130173, 48.064194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538422, 33.975449, 48.155876>,  <44.105453, 33.546757, 48.262577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.538422, 33.975449, 48.155876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849640, 34.158321, 47.983536>,  <44.036369, 34.268047, 47.880131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849640, 34.158321, 47.983536>,  <43.538422, 33.975449, 48.155876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849640, 34.158321, 47.983536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600491, 0.339770, -0.723856,
		-0.184546, 0.821912, 0.538891,
		0.778045, 0.457184, -0.430847,
		44.083054, 34.295475, 47.854282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235989, 34.567303, 47.980759>,  <43.538422, 33.975449, 48.155876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235989, 34.567303, 47.980759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559883, 34.528198, 47.749325>,  <43.754219, 34.504734, 47.610462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559883, 34.528198, 47.749325>,  <43.235989, 34.567303, 47.980759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559883, 34.528198, 47.749325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566047, 0.129708, -0.814105,
		0.154637, 0.986721, 0.049692,
		0.809740, -0.097763, -0.578588,
		43.802807, 34.498871, 47.575748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139385, 35.090939, 47.434639>,  <43.235989, 34.567303, 47.980759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.139385, 35.090939, 47.434639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408215, 34.831303, 47.292095>,  <43.569511, 34.675522, 47.206570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408215, 34.831303, 47.292095>,  <43.139385, 35.090939, 47.434639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408215, 34.831303, 47.292095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353453, 0.141688, -0.924660,
		0.650681, 0.747399, -0.134197,
		0.672076, -0.649091, -0.356364,
		43.609837, 34.636574, 47.185184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462631, 35.325012, 46.764423>,  <43.139385, 35.090939, 47.434639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462631, 35.325012, 46.764423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539783, 34.933891, 46.731682>,  <43.586075, 34.699219, 46.712036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539783, 34.933891, 46.731682>,  <43.462631, 35.325012, 46.764423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539783, 34.933891, 46.731682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280764, 0.024934, -0.959453,
		0.940196, 0.208041, -0.269722,
		0.192881, -0.977802, -0.081854,
		43.597649, 34.640553, 46.707127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801933, 35.289684, 46.134712>,  <43.462631, 35.325012, 46.764423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801933, 35.289684, 46.134712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693333, 34.910831, 46.203098>,  <43.628174, 34.683521, 46.244129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693333, 34.910831, 46.203098>,  <43.801933, 35.289684, 46.134712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693333, 34.910831, 46.203098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350543, -0.068126, -0.934066,
		0.896330, -0.313532, -0.313514,
		-0.271501, -0.947131, 0.170969,
		43.611881, 34.626694, 46.254391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127766, 34.853001, 45.605137>,  <43.801933, 35.289684, 46.134712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127766, 34.853001, 45.605137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.806938, 34.661072, 45.747379>,  <43.614441, 34.545914, 45.832726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.806938, 34.661072, 45.747379>,  <44.127766, 34.853001, 45.605137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.806938, 34.661072, 45.747379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359963, -0.086728, -0.928926,
		0.476557, -0.873071, -0.103155,
		-0.802072, -0.479818, 0.355604,
		43.566315, 34.517128, 45.854061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053062, 34.264267, 45.191410>,  <44.127766, 34.853001, 45.605137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053062, 34.264267, 45.191410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.697952, 34.316326, 45.368004>,  <43.484886, 34.347561, 45.473961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.697952, 34.316326, 45.368004>,  <44.053062, 34.264267, 45.191410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.697952, 34.316326, 45.368004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447561, -0.020267, -0.894023,
		-0.107408, -0.991287, 0.076242,
		-0.887779, 0.130148, 0.441485,
		43.431618, 34.355370, 45.500450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693790, 33.698715, 44.957722>,  <44.053062, 34.264267, 45.191410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.693790, 33.698715, 44.957722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410698, 33.949451, 45.088070>,  <43.240845, 34.099892, 45.166279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410698, 33.949451, 45.088070>,  <43.693790, 33.698715, 44.957722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410698, 33.949451, 45.088070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543075, -0.187674, -0.818443,
		-0.451876, -0.756207, 0.473243,
		-0.707727, 0.626841, 0.325872,
		43.198380, 34.137505, 45.185833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034054, 33.389164, 44.894360>,  <43.693790, 33.698715, 44.957722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034054, 33.389164, 44.894360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932816, 33.775562, 44.915520>,  <42.872074, 34.007401, 44.928215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932816, 33.775562, 44.915520>,  <43.034054, 33.389164, 44.894360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932816, 33.775562, 44.915520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642715, -0.127018, -0.755502,
		-0.723091, -0.225215, 0.653006,
		-0.253094, 0.965994, 0.052903,
		42.856888, 34.065361, 44.931389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351391, 33.306976, 44.958813>,  <43.034054, 33.389164, 44.894360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351391, 33.306976, 44.958813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422359, 33.686726, 44.855110>,  <42.464939, 33.914574, 44.792889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422359, 33.686726, 44.855110>,  <42.351391, 33.306976, 44.958813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422359, 33.686726, 44.855110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698848, -0.063946, -0.712406,
		-0.692917, 0.307577, 0.652121,
		0.177419, 0.949372, -0.259259,
		42.475586, 33.971539, 44.777332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659920, 33.592010, 44.924511>,  <42.351391, 33.306976, 44.958813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659920, 33.592010, 44.924511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897751, 33.822487, 44.700195>,  <42.040451, 33.960773, 44.565605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897751, 33.822487, 44.700195>,  <41.659920, 33.592010, 44.924511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897751, 33.822487, 44.700195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744641, 0.131515, -0.654380,
		-0.303296, 0.806664, 0.507252,
		0.594576, 0.576191, -0.560787,
		42.076122, 33.995346, 44.531960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264160, 34.042427, 44.725414>,  <41.659920, 33.592010, 44.924511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264160, 34.042427, 44.725414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549660, 34.052536, 44.445435>,  <41.720959, 34.058601, 44.277447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549660, 34.052536, 44.445435>,  <41.264160, 34.042427, 44.725414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549660, 34.052536, 44.445435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699507, -0.024854, -0.714194,
		-0.035448, 0.999371, -0.000059,
		0.713746, 0.025276, -0.699948,
		41.763783, 34.060120, 44.235451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073338, 34.556347, 44.245945>,  <41.264160, 34.042427, 44.725414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073338, 34.556347, 44.245945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348259, 34.361847, 44.030102>,  <41.513210, 34.245148, 43.900597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348259, 34.361847, 44.030102>,  <41.073338, 34.556347, 44.245945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348259, 34.361847, 44.030102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583720, 0.072393, -0.808722,
		0.432306, 0.870815, -0.234079,
		0.687301, -0.486251, -0.539608,
		41.554451, 34.215973, 43.868217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088825, 34.952290, 43.592419>,  <41.073338, 34.556347, 44.245945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088825, 34.952290, 43.592419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264950, 34.604214, 43.503963>,  <41.370625, 34.395370, 43.450890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264950, 34.604214, 43.503963>,  <41.088825, 34.952290, 43.592419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264950, 34.604214, 43.503963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409260, 0.024702, -0.912083,
		0.799144, 0.492104, -0.345256,
		0.440312, -0.870186, -0.221139,
		41.397045, 34.343159, 43.437622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483700, 35.014805, 43.023376>,  <41.088825, 34.952290, 43.592419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483700, 35.014805, 43.023376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435299, 34.617752, 43.025978>,  <41.406258, 34.379520, 43.027538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435299, 34.617752, 43.025978>,  <41.483700, 35.014805, 43.023376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435299, 34.617752, 43.025978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423407, 0.045679, -0.904787,
		0.897823, -0.112233, -0.425814,
		-0.120998, -0.992631, 0.006509,
		41.398998, 34.319962, 43.027931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695446, 34.902493, 42.362930>,  <41.483700, 35.014805, 43.023376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695446, 34.902493, 42.362930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498741, 34.568729, 42.462479>,  <41.380718, 34.368473, 42.522209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498741, 34.568729, 42.462479>,  <41.695446, 34.902493, 42.362930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498741, 34.568729, 42.462479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458547, 0.005196, -0.888655,
		0.740206, -0.551126, -0.385170,
		-0.491762, -0.834406, 0.248871,
		41.351212, 34.318409, 42.537140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753689, 34.364143, 41.837234>,  <41.695446, 34.902493, 42.362930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753689, 34.364143, 41.837234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421135, 34.263561, 42.035454>,  <41.221603, 34.203213, 42.154385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421135, 34.263561, 42.035454>,  <41.753689, 34.364143, 41.837234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421135, 34.263561, 42.035454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500796, -0.047440, -0.864265,
		0.240832, -0.966706, -0.086486,
		-0.831387, -0.251454, 0.495547,
		41.171719, 34.188126, 42.184116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457130, 33.840569, 41.486111>,  <41.753689, 34.364143, 41.837234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457130, 33.840569, 41.486111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140083, 33.970673, 41.692398>,  <40.949856, 34.048737, 41.816170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140083, 33.970673, 41.692398>,  <41.457130, 33.840569, 41.486111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140083, 33.970673, 41.692398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558156, -0.046639, -0.828425,
		-0.245407, -0.944471, 0.218516,
		-0.792615, 0.325267, 0.515716,
		40.902298, 34.068253, 41.847115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825226, 33.438633, 41.262810>,  <41.457130, 33.840569, 41.486111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825226, 33.438633, 41.262810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667969, 33.770863, 41.420582>,  <40.573612, 33.970200, 41.515244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667969, 33.770863, 41.420582>,  <40.825226, 33.438633, 41.262810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667969, 33.770863, 41.420582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477468, 0.182186, -0.859554,
		-0.785786, -0.526259, 0.324948,
		-0.393147, 0.830578, 0.394431,
		40.550026, 34.020035, 41.538910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101952, 33.418461, 41.055214>,  <40.825226, 33.438633, 41.262810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101952, 33.418461, 41.055214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154335, 33.795631, 41.177685>,  <40.185764, 34.021935, 41.251167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154335, 33.795631, 41.177685>,  <40.101952, 33.418461, 41.055214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154335, 33.795631, 41.177685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434764, 0.332180, -0.837040,
		-0.890972, -0.023499, 0.453450,
		0.130958, 0.942923, 0.306180,
		40.193623, 34.078506, 41.269539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445057, 33.859077, 40.986557>,  <40.101952, 33.418461, 41.055214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445057, 33.859077, 40.986557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760212, 34.105358, 40.981808>,  <39.949306, 34.253128, 40.978958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760212, 34.105358, 40.981808>,  <39.445057, 33.859077, 40.986557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760212, 34.105358, 40.981808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353554, 0.436476, -0.827338,
		-0.504213, 0.656048, 0.561578,
		0.787889, 0.615703, -0.011872,
		39.996578, 34.290070, 40.978245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159706, 34.578564, 40.890770>,  <39.445057, 33.859077, 40.986557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159706, 34.578564, 40.890770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539474, 34.568394, 40.765579>,  <39.767334, 34.562290, 40.690464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539474, 34.568394, 40.765579>,  <39.159706, 34.578564, 40.890770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539474, 34.568394, 40.765579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274880, 0.414550, -0.867519,
		0.151802, 0.909671, 0.386594,
		0.949419, -0.025424, -0.312980,
		39.824299, 34.560768, 40.671684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268761, 35.251225, 40.503540>,  <39.159706, 34.578564, 40.890770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268761, 35.251225, 40.503540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592209, 35.035828, 40.408745>,  <39.786278, 34.906590, 40.351868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592209, 35.035828, 40.408745>,  <39.268761, 35.251225, 40.503540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592209, 35.035828, 40.408745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109518, 0.257996, -0.959919,
		0.578048, 0.802164, 0.149646,
		0.808620, -0.538490, -0.236985,
		39.834793, 34.874279, 40.337650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758610, 35.740318, 40.195274>,  <39.268761, 35.251225, 40.503540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758610, 35.740318, 40.195274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862797, 35.379196, 40.058395>,  <39.925308, 35.162525, 39.976269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862797, 35.379196, 40.058395>,  <39.758610, 35.740318, 40.195274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862797, 35.379196, 40.058395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209932, 0.292996, -0.932782,
		0.942382, 0.314801, -0.113210,
		0.260471, -0.902803, -0.342201,
		39.940937, 35.108356, 39.955734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180317, 35.895611, 39.620510>,  <39.758610, 35.740318, 40.195274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180317, 35.895611, 39.620510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053062, 35.522861, 39.550777>,  <39.976707, 35.299210, 39.508938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053062, 35.522861, 39.550777>,  <40.180317, 35.895611, 39.620510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053062, 35.522861, 39.550777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248860, 0.259522, -0.933122,
		0.914798, -0.253479, -0.314471,
		-0.318139, -0.931878, -0.174329,
		39.957619, 35.243298, 39.498478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491032, 35.663521, 38.936127>,  <40.180317, 35.895611, 39.620510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491032, 35.663521, 38.936127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159233, 35.452667, 39.009953>,  <39.960155, 35.326157, 39.054249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159233, 35.452667, 39.009953>,  <40.491032, 35.663521, 38.936127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159233, 35.452667, 39.009953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316392, 0.171182, -0.933056,
		0.460252, -0.832361, -0.308776,
		-0.829496, -0.527135, 0.184566,
		39.910385, 35.294525, 39.065323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503700, 35.273010, 38.358765>,  <40.491032, 35.663521, 38.936127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503700, 35.273010, 38.358765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137405, 35.268684, 38.519417>,  <39.917629, 35.266090, 38.615810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137405, 35.268684, 38.519417>,  <40.503700, 35.273010, 38.358765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137405, 35.268684, 38.519417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398542, 0.151111, -0.904616,
		-0.050911, -0.988458, -0.142686,
		-0.915736, -0.010812, 0.401634,
		39.862686, 35.265442, 38.639908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181152, 34.912018, 37.908596>,  <40.503700, 35.273010, 38.358765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181152, 34.912018, 37.908596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901646, 35.120895, 38.104164>,  <39.733944, 35.246223, 38.221504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901646, 35.120895, 38.104164>,  <40.181152, 34.912018, 37.908596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901646, 35.120895, 38.104164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387550, 0.298128, -0.872310,
		-0.601278, -0.799018, -0.005943,
		-0.698763, 0.522197, 0.488917,
		39.692017, 35.277554, 38.250839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590363, 34.754074, 37.550022>,  <40.181152, 34.912018, 37.908596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590363, 34.754074, 37.550022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487133, 35.088600, 37.743504>,  <39.425194, 35.289314, 37.859592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487133, 35.088600, 37.743504>,  <39.590363, 34.754074, 37.550022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487133, 35.088600, 37.743504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493959, 0.316061, -0.810006,
		-0.830302, -0.447973, 0.331539,
		-0.258074, 0.836317, 0.483707,
		39.409710, 35.339497, 37.888615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863827, 34.863079, 37.433720>,  <39.590363, 34.754074, 37.550022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863827, 34.863079, 37.433720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013145, 35.215210, 37.550804>,  <39.102737, 35.426487, 37.621056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013145, 35.215210, 37.550804>,  <38.863827, 34.863079, 37.433720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013145, 35.215210, 37.550804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451150, 0.447960, -0.771878,
		-0.810625, 0.156083, 0.564380,
		0.373297, 0.880324, 0.292711,
		39.125134, 35.479305, 37.638618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320404, 35.284271, 37.476665>,  <38.863827, 34.863079, 37.433720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320404, 35.284271, 37.476665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639931, 35.519791, 37.427338>,  <38.831646, 35.661102, 37.397743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639931, 35.519791, 37.427338>,  <38.320404, 35.284271, 37.476665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639931, 35.519791, 37.427338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455724, 0.458493, -0.762955,
		-0.392684, 0.665662, 0.634581,
		0.798821, 0.588794, -0.123315,
		38.879578, 35.696430, 37.390343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038006, 35.851833, 37.170475>,  <38.320404, 35.284271, 37.476665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038006, 35.851833, 37.170475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423679, 35.920830, 37.089886>,  <38.655083, 35.962227, 37.041531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423679, 35.920830, 37.089886>,  <38.038006, 35.851833, 37.170475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423679, 35.920830, 37.089886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259257, 0.452688, -0.853147,
		-0.055953, 0.874826, 0.481194,
		0.964186, 0.172489, -0.201475,
		38.712936, 35.972576, 37.029442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104107, 36.524361, 37.046646>,  <38.038006, 35.851833, 37.170475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104107, 36.524361, 37.046646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410854, 36.338615, 36.869434>,  <38.594902, 36.227169, 36.763107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410854, 36.338615, 36.869434>,  <38.104107, 36.524361, 37.046646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410854, 36.338615, 36.869434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278525, 0.381107, -0.881579,
		0.578213, 0.799453, 0.162924,
		0.766873, -0.464362, -0.443029,
		38.640915, 36.199306, 36.736526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271976, 36.939774, 36.428730>,  <38.104107, 36.524361, 37.046646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271976, 36.939774, 36.428730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468979, 36.600235, 36.351902>,  <38.587181, 36.396511, 36.305805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468979, 36.600235, 36.351902>,  <38.271976, 36.939774, 36.428730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468979, 36.600235, 36.351902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060828, 0.186577, -0.980555,
		0.868178, 0.494616, 0.040258,
		0.492510, -0.848848, -0.192069,
		38.616734, 36.345581, 36.294281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717697, 37.153381, 35.886753>,  <38.271976, 36.939774, 36.428730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717697, 37.153381, 35.886753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752125, 36.756420, 35.851604>,  <38.772781, 36.518242, 35.830517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752125, 36.756420, 35.851604>,  <38.717697, 37.153381, 35.886753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752125, 36.756420, 35.851604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169131, 0.072363, -0.982933,
		0.981828, 0.099462, -0.161618,
		0.086069, -0.992407, -0.087870,
		38.777946, 36.458698, 35.825245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173767, 37.041313, 35.268673>,  <38.717697, 37.153381, 35.886753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173767, 37.041313, 35.268673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952702, 36.712368, 35.322762>,  <38.820061, 36.514999, 35.355213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952702, 36.712368, 35.322762>,  <39.173767, 37.041313, 35.268673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952702, 36.712368, 35.322762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228913, -0.006218, -0.973427,
		0.801350, -0.568932, -0.184812,
		-0.552664, -0.822362, 0.135218,
		38.786903, 36.465660, 35.363327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283409, 36.668381, 34.678383>,  <39.173767, 37.041313, 35.268673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283409, 36.668381, 34.678383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939133, 36.514732, 34.812046>,  <38.732567, 36.422543, 34.892242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939133, 36.514732, 34.812046>,  <39.283409, 36.668381, 34.678383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939133, 36.514732, 34.812046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363551, 0.004219, -0.931565,
		0.356427, -0.923272, -0.143280,
		-0.860692, -0.384125, 0.334153,
		38.680923, 36.399494, 34.912292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976791, 36.306496, 34.064053>,  <39.283409, 36.668381, 34.678383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976791, 36.306496, 34.064053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673595, 36.391018, 34.310890>,  <38.491676, 36.441730, 34.458992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673595, 36.391018, 34.310890>,  <38.976791, 36.306496, 34.064053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673595, 36.391018, 34.310890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628325, 0.017418, -0.777756,
		-0.175091, -0.977265, 0.119565,
		-0.757991, 0.211304, 0.617090,
		38.446198, 36.454411, 34.496017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593788, 35.976528, 34.297783>,  <38.976791, 36.306496, 34.064053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593788, 35.976528, 34.297783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758289, 35.808247, 33.974331>,  <39.856991, 35.707279, 33.780262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758289, 35.808247, 33.974331>,  <39.593788, 35.976528, 34.297783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758289, 35.808247, 33.974331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559701, -0.583636, 0.588306,
		-0.719447, -0.694533, -0.004554,
		0.411256, -0.420706, -0.808625,
		39.881668, 35.682034, 33.731743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618721, 35.258869, 34.298546>,  <39.593788, 35.976528, 34.297783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618721, 35.258869, 34.298546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929333, 35.387009, 34.081516>,  <40.115700, 35.463894, 33.951298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929333, 35.387009, 34.081516>,  <39.618721, 35.258869, 34.298546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929333, 35.387009, 34.081516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611161, -0.592401, 0.524922,
		-0.153260, -0.739213, -0.655801,
		0.776526, 0.320351, -0.542570,
		40.162292, 35.483112, 33.918747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098858, 34.725014, 33.993752>,  <39.618721, 35.258869, 34.298546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098858, 34.725014, 33.993752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327309, 35.046047, 34.062653>,  <40.464378, 35.238667, 34.103992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327309, 35.046047, 34.062653>,  <40.098858, 34.725014, 33.993752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327309, 35.046047, 34.062653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590479, -0.547465, 0.592972,
		0.570213, -0.236951, -0.786582,
		0.571131, 0.802581, 0.172257,
		40.498650, 35.286823, 34.114330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806667, 34.428360, 34.091606>,  <40.098858, 34.725014, 33.993752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806667, 34.428360, 34.091606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799339, 34.793327, 34.255146>,  <40.794941, 35.012306, 34.353271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799339, 34.793327, 34.255146>,  <40.806667, 34.428360, 34.091606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799339, 34.793327, 34.255146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456583, -0.356157, 0.815282,
		0.889492, 0.201615, -0.410067,
		-0.018325, 0.912416, 0.408853,
		40.793842, 35.067051, 34.377800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477402, 34.570255, 34.268528>,  <40.806667, 34.428360, 34.091606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477402, 34.570255, 34.268528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206364, 34.753654, 34.498535>,  <41.043739, 34.863693, 34.636539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206364, 34.753654, 34.498535>,  <41.477402, 34.570255, 34.268528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206364, 34.753654, 34.498535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489017, -0.303089, 0.817924,
		0.549294, 0.835417, -0.018839,
		-0.677597, 0.458493, 0.575018,
		41.003086, 34.891201, 34.671040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748646, 35.035988, 34.828751>,  <41.477402, 34.570255, 34.268528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748646, 35.035988, 34.828751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397194, 34.901848, 34.964722>,  <41.186321, 34.821365, 35.046303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397194, 34.901848, 34.964722>,  <41.748646, 35.035988, 34.828751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397194, 34.901848, 34.964722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400373, -0.129447, 0.907163,
		-0.260211, 0.933159, 0.247999,
		-0.878630, -0.335346, 0.339928,
		41.133606, 34.801243, 35.066700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366718, 35.079376, 34.346027>,  <41.748646, 35.035988, 34.828751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366718, 35.079376, 34.346027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.696548, 34.962303, 34.152363>,  <42.894447, 34.892059, 34.036163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.696548, 34.962303, 34.152363>,  <42.366718, 35.079376, 34.346027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696548, 34.962303, 34.152363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450974, 0.176700, -0.874871,
		0.341609, 0.939742, 0.013711,
		0.824576, -0.292680, -0.484162,
		42.943920, 34.874500, 34.007114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461796, 35.513683, 33.804073>,  <42.366718, 35.079376, 34.346027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461796, 35.513683, 33.804073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683304, 35.197243, 33.700153>,  <42.816208, 35.007378, 33.637802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683304, 35.197243, 33.700153>,  <42.461796, 35.513683, 33.804073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683304, 35.197243, 33.700153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192717, 0.181770, -0.964271,
		0.810064, 0.584049, -0.051801,
		0.553766, -0.791104, -0.259802,
		42.849434, 34.959911, 33.622211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949673, 35.757610, 33.286934>,  <42.461796, 35.513683, 33.804073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949673, 35.757610, 33.286934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923283, 35.360352, 33.248352>,  <42.907448, 35.121998, 33.225201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923283, 35.360352, 33.248352>,  <42.949673, 35.757610, 33.286934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923283, 35.360352, 33.248352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068063, 0.100923, -0.992563,
		0.995498, -0.058915, -0.074254,
		-0.065971, -0.993148, -0.096458,
		42.903492, 35.062408, 33.219414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993313, 35.645622, 32.484692>,  <42.949673, 35.757610, 33.286934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993313, 35.645622, 32.484692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913605, 35.273373, 32.607483>,  <42.865780, 35.050022, 32.681156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913605, 35.273373, 32.607483>,  <42.993313, 35.645622, 32.484692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913605, 35.273373, 32.607483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111263, -0.289750, -0.950613,
		0.973608, -0.223583, -0.045806,
		-0.199268, -0.930621, 0.306979,
		42.853825, 34.994186, 32.699577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591805, 35.167450, 32.300911>,  <42.993313, 35.645622, 32.484692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591805, 35.167450, 32.300911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233521, 34.994274, 32.341442>,  <43.018551, 34.890369, 32.365761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233521, 34.994274, 32.341442>,  <43.591805, 35.167450, 32.300911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233521, 34.994274, 32.341442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012359, -0.203554, -0.978986,
		0.444467, -0.878139, 0.176975,
		-0.895710, -0.432940, 0.101326,
		42.964806, 34.864391, 32.371841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604843, 34.651119, 31.821609>,  <43.591805, 35.167450, 32.300911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604843, 34.651119, 31.821609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212406, 34.655598, 31.898893>,  <42.976944, 34.658283, 31.945263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212406, 34.655598, 31.898893>,  <43.604843, 34.651119, 31.821609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212406, 34.655598, 31.898893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192574, -0.155745, -0.968844,
		0.019248, -0.987734, 0.154955,
		-0.981093, 0.011193, 0.193210,
		42.918079, 34.658955, 31.956856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.283234, 34.035854, 31.597288>,  <43.604843, 34.651119, 31.821609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.283234, 34.035854, 31.597288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006851, 34.325008, 31.598619>,  <42.841022, 34.498501, 31.599419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006851, 34.325008, 31.598619>,  <43.283234, 34.035854, 31.597288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006851, 34.325008, 31.598619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236534, -0.221733, -0.945984,
		-0.683101, -0.654424, 0.324196,
		-0.690959, 0.722886, 0.003328,
		42.799564, 34.541874, 31.599617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784290, 33.863468, 31.013695>,  <43.283234, 34.035854, 31.597288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784290, 33.863468, 31.013695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671619, 34.236382, 31.104479>,  <42.604015, 34.460129, 31.158949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671619, 34.236382, 31.104479>,  <42.784290, 33.863468, 31.013695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671619, 34.236382, 31.104479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135241, 0.195601, -0.971314,
		-0.949930, -0.304293, 0.070986,
		-0.281679, 0.932280, 0.226960,
		42.587116, 34.516064, 31.172567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300404, 33.916363, 30.605545>,  <42.784290, 33.863468, 31.013695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300404, 33.916363, 30.605545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380287, 34.298019, 30.694752>,  <42.428215, 34.527012, 30.748276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380287, 34.298019, 30.694752>,  <42.300404, 33.916363, 30.605545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380287, 34.298019, 30.694752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109997, 0.247994, -0.962496,
		-0.973662, 0.167686, 0.154479,
		0.199707, 0.954139, 0.223017,
		42.440201, 34.584263, 30.761658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672832, 34.359417, 30.562700>,  <42.300404, 33.916363, 30.605545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672832, 34.359417, 30.562700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994106, 34.585251, 30.486658>,  <42.186871, 34.720753, 30.441032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994106, 34.585251, 30.486658>,  <41.672832, 34.359417, 30.562700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994106, 34.585251, 30.486658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362723, 0.210318, -0.907854,
		-0.472580, 0.798127, 0.373712,
		0.803181, 0.564588, -0.190107,
		42.235062, 34.754627, 30.429626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327042, 34.813206, 30.129398>,  <41.672832, 34.359417, 30.562700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327042, 34.813206, 30.129398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716171, 34.882492, 30.067936>,  <41.949650, 34.924065, 30.031059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716171, 34.882492, 30.067936>,  <41.327042, 34.813206, 30.129398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716171, 34.882492, 30.067936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198006, 0.278335, -0.939853,
		-0.120033, 0.944735, 0.305069,
		0.972824, 0.173219, -0.153654,
		42.008018, 34.934456, 30.021839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367107, 35.498035, 29.866270>,  <41.327042, 34.813206, 30.129398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367107, 35.498035, 29.866270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726528, 35.353130, 29.767179>,  <41.942181, 35.266186, 29.707726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726528, 35.353130, 29.767179>,  <41.367107, 35.498035, 29.866270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726528, 35.353130, 29.767179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171773, 0.229131, -0.958119,
		0.403854, 0.903473, 0.143659,
		0.898552, -0.362264, -0.247728,
		41.996094, 35.244450, 29.692862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666401, 35.958054, 29.338503>,  <41.367107, 35.498035, 29.866270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666401, 35.958054, 29.338503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891476, 35.631680, 29.285381>,  <42.026520, 35.435856, 29.253510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891476, 35.631680, 29.285381>,  <41.666401, 35.958054, 29.338503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891476, 35.631680, 29.285381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081350, 0.105213, -0.991117,
		0.822657, 0.568492, -0.007174,
		0.562688, -0.815933, -0.132802,
		42.060284, 35.386898, 29.245541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288086, 36.188412, 28.936102>,  <41.666401, 35.958054, 29.338503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288086, 36.188412, 28.936102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235722, 35.794353, 28.891649>,  <42.204304, 35.557919, 28.864977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235722, 35.794353, 28.891649>,  <42.288086, 36.188412, 28.936102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235722, 35.794353, 28.891649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076924, 0.101666, -0.991840,
		0.988405, -0.138392, 0.062472,
		-0.130911, -0.985146, -0.111133,
		42.196449, 35.498810, 28.858309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817963, 36.037418, 28.528137>,  <42.288086, 36.188412, 28.936102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817963, 36.037418, 28.528137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550522, 35.742779, 28.487370>,  <42.390057, 35.565994, 28.462910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550522, 35.742779, 28.487370>,  <42.817963, 36.037418, 28.528137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550522, 35.742779, 28.487370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036891, 0.104030, -0.993890,
		0.742701, -0.668281, -0.042381,
		-0.668606, -0.736600, -0.101917,
		42.349941, 35.521797, 28.456795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045429, 35.726124, 27.907967>,  <42.817963, 36.037418, 28.528137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045429, 35.726124, 27.907967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674721, 35.581749, 27.949575>,  <42.452297, 35.495125, 27.974541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674721, 35.581749, 27.949575>,  <43.045429, 35.726124, 27.907967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674721, 35.581749, 27.949575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114575, 0.007894, -0.993383,
		0.357733, -0.932555, -0.048671,
		-0.926768, -0.360943, 0.104023,
		42.396690, 35.473465, 27.980782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976158, 35.109783, 27.445059>,  <43.045429, 35.726124, 27.907967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976158, 35.109783, 27.445059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611179, 35.262508, 27.503923>,  <42.392193, 35.354145, 27.539242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611179, 35.262508, 27.503923>,  <42.976158, 35.109783, 27.445059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611179, 35.262508, 27.503923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158543, 0.001677, -0.987351,
		-0.377232, -0.924237, 0.059004,
		-0.912448, 0.381815, 0.147163,
		42.337444, 35.377052, 27.548073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631477, 34.818249, 26.922546>,  <42.976158, 35.109783, 27.445059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631477, 34.818249, 26.922546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399483, 35.118534, 27.049067>,  <42.260284, 35.298706, 27.124979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399483, 35.118534, 27.049067>,  <42.631477, 34.818249, 26.922546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399483, 35.118534, 27.049067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278254, 0.182362, -0.943037,
		-0.765631, -0.634961, 0.103121,
		-0.579986, 0.750712, 0.316302,
		42.225487, 35.343746, 27.143957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939873, 34.749252, 26.488626>,  <42.631477, 34.818249, 26.922546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939873, 34.749252, 26.488626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946991, 35.122360, 26.632643>,  <41.951260, 35.346226, 26.719053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946991, 35.122360, 26.632643>,  <41.939873, 34.749252, 26.488626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946991, 35.122360, 26.632643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357812, 0.342191, -0.868836,
		-0.933624, -0.113369, 0.339843,
		0.017792, 0.932766, 0.360043,
		41.952328, 35.402191, 26.740656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267818, 35.007660, 26.421318>,  <41.939873, 34.749252, 26.488626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267818, 35.007660, 26.421318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504448, 35.330116, 26.426640>,  <41.646423, 35.523590, 26.429832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504448, 35.330116, 26.426640>,  <41.267818, 35.007660, 26.421318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504448, 35.330116, 26.426640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354518, 0.274903, -0.893726,
		-0.724128, 0.523985, 0.448417,
		0.591570, 0.806144, 0.013303,
		41.681919, 35.571960, 26.430630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924545, 35.540504, 25.972298>,  <41.267818, 35.007660, 26.421318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924545, 35.540504, 25.972298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298241, 35.683098, 25.967844>,  <41.522457, 35.768654, 25.965172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298241, 35.683098, 25.967844>,  <40.924545, 35.540504, 25.972298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298241, 35.683098, 25.967844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151310, 0.367883, -0.917479,
		-0.322972, 0.858825, 0.397629,
		0.934235, 0.356485, -0.011133,
		41.578510, 35.790043, 25.964504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049839, 35.575935, 25.239868>,  <40.924545, 35.540504, 25.972298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049839, 35.575935, 25.239868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439346, 35.665768, 25.225191>,  <41.673050, 35.719666, 25.216385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439346, 35.665768, 25.225191>,  <41.049839, 35.575935, 25.239868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439346, 35.665768, 25.225191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212265, 0.838328, -0.502145,
		-0.082009, 0.496760, 0.864005,
		0.973765, 0.224578, -0.036694,
		41.731476, 35.733143, 25.214182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177803, 36.372677, 25.317705>,  <41.049839, 35.575935, 25.239868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177803, 36.372677, 25.317705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488918, 36.236301, 25.106497>,  <41.675587, 36.154476, 24.979773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488918, 36.236301, 25.106497>,  <41.177803, 36.372677, 25.317705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488918, 36.236301, 25.106497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145960, 0.719149, -0.679353,
		0.611342, 0.605464, 0.509583,
		0.777789, -0.340939, -0.528020,
		41.722256, 36.134018, 24.948092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353287, 36.967449, 25.058527>,  <41.177803, 36.372677, 25.317705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353287, 36.967449, 25.058527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532272, 36.695606, 24.826008>,  <41.639664, 36.532501, 24.686497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532272, 36.695606, 24.826008>,  <41.353287, 36.967449, 25.058527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532272, 36.695606, 24.826008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024604, 0.659113, -0.751642,
		0.893963, 0.322030, 0.311650,
		0.447464, -0.679608, -0.581299,
		41.666512, 36.491722, 24.651619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880939, 37.392948, 25.141029>,  <41.353287, 36.967449, 25.058527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880939, 37.392948, 25.141029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796055, 37.297501, 25.520086>,  <41.745125, 37.240231, 25.747520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796055, 37.297501, 25.520086>,  <41.880939, 37.392948, 25.141029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796055, 37.297501, 25.520086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777335, -0.628891, 0.015717,
		0.592214, 0.739972, 0.318944,
		-0.212211, -0.238618, 0.947643,
		41.732391, 37.225914, 25.804379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704250, 37.763836, 24.406652>,  <41.880939, 37.392948, 25.141029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704250, 37.763836, 24.406652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658657, 38.067146, 24.663410>,  <41.631302, 38.249130, 24.817465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658657, 38.067146, 24.663410>,  <41.704250, 37.763836, 24.406652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658657, 38.067146, 24.663410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135954, 0.628122, -0.766145,
		-0.984136, -0.174599, 0.031492,
		-0.113987, 0.758273, 0.641895,
		41.624462, 38.294628, 24.855978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383018, 37.585312, 24.576639>,  <41.704250, 37.763836, 24.406652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.383018, 37.585312, 24.576639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177025, 37.596668, 24.233948>,  <42.053429, 37.603481, 24.028334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177025, 37.596668, 24.233948>,  <42.383018, 37.585312, 24.576639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177025, 37.596668, 24.233948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725710, -0.546369, 0.418122,
		-0.456219, 0.837063, 0.301976,
		-0.514985, 0.028392, -0.856729,
		42.022530, 37.605186, 23.976929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014004, 37.928455, 24.986166>,  <42.383018, 37.585312, 24.576639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014004, 37.928455, 24.986166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.384373, 38.007263, 25.115068>,  <43.606594, 38.054550, 25.192410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.384373, 38.007263, 25.115068>,  <43.014004, 37.928455, 24.986166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384373, 38.007263, 25.115068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293770, -0.160637, 0.942282,
		0.237419, -0.967149, -0.090857,
		0.925922, 0.197024, 0.322257,
		43.662148, 38.066372, 25.211746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084431, 37.555450, 25.702568>,  <43.014004, 37.928455, 24.986166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084431, 37.555450, 25.702568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401093, 37.799755, 25.696289>,  <43.591091, 37.946339, 25.692522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401093, 37.799755, 25.696289>,  <43.084431, 37.555450, 25.702568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401093, 37.799755, 25.696289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096055, -0.099050, 0.990436,
		0.603369, -0.785592, -0.137081,
		0.791656, 0.610766, -0.015696,
		43.638588, 37.982986, 25.691580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.723904, 37.264236, 25.927671>,  <43.084431, 37.555450, 25.702568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.723904, 37.264236, 25.927671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.715355, 37.655396, 26.010864>,  <43.710224, 37.890091, 26.060780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.715355, 37.655396, 26.010864>,  <43.723904, 37.264236, 25.927671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715355, 37.655396, 26.010864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252775, -0.195986, 0.947467,
		0.967289, 0.072827, -0.242999,
		-0.021376, 0.977899, 0.207984,
		43.708942, 37.948765, 26.073259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366394, 37.364223, 26.104359>,  <43.723904, 37.264236, 25.927671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366394, 37.364223, 26.104359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098061, 37.606796, 26.275108>,  <43.937061, 37.752338, 26.377558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098061, 37.606796, 26.275108>,  <44.366394, 37.364223, 26.104359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098061, 37.606796, 26.275108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440344, -0.137434, 0.887248,
		0.596721, 0.783169, -0.174842,
		-0.670836, 0.606430, 0.426874,
		43.896809, 37.788727, 26.403170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732071, 38.000713, 26.500710>,  <44.366394, 37.364223, 26.104359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732071, 38.000713, 26.500710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383278, 37.877010, 26.652506>,  <44.174004, 37.802788, 26.743584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383278, 37.877010, 26.652506>,  <44.732071, 38.000713, 26.500710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383278, 37.877010, 26.652506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404582, -0.018804, 0.914308,
		-0.275619, 0.950793, 0.141516,
		-0.871979, -0.309256, 0.379491,
		44.121685, 37.784233, 26.766354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730721, 38.305920, 27.114582>,  <44.732071, 38.000713, 26.500710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730721, 38.305920, 27.114582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441921, 38.035145, 27.171814>,  <44.268642, 37.872681, 27.206154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441921, 38.035145, 27.171814>,  <44.730721, 38.305920, 27.114582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441921, 38.035145, 27.171814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378256, -0.213023, 0.900857,
		-0.579346, 0.704538, 0.409858,
		-0.721998, -0.676939, 0.143082,
		44.225323, 37.832062, 27.214739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432194, 38.528217, 27.793661>,  <44.730721, 38.305920, 27.114582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.432194, 38.528217, 27.793661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.357601, 38.141140, 27.725788>,  <44.312847, 37.908894, 27.685064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.357601, 38.141140, 27.725788>,  <44.432194, 38.528217, 27.793661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.357601, 38.141140, 27.725788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166090, -0.201277, 0.965350,
		-0.968318, 0.151833, 0.198258,
		-0.186477, -0.967695, -0.169682,
		44.301659, 37.850830, 27.674883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228420, 38.336254, 28.425369>,  <44.432194, 38.528217, 27.793661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228420, 38.336254, 28.425369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283802, 37.981346, 28.249378>,  <44.317032, 37.768402, 28.143784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283802, 37.981346, 28.249378>,  <44.228420, 38.336254, 28.425369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283802, 37.981346, 28.249378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363241, -0.367805, 0.856023,
		-0.921351, -0.278335, 0.271370,
		0.138450, -0.887271, -0.439980,
		44.325336, 37.715164, 28.117384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716934, 37.892620, 28.730221>,  <44.228420, 38.336254, 28.425369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716934, 37.892620, 28.730221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044060, 37.702072, 28.601070>,  <44.240334, 37.587742, 28.523581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044060, 37.702072, 28.601070>,  <43.716934, 37.892620, 28.730221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.044060, 37.702072, 28.601070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069288, -0.475463, 0.877003,
		-0.571297, -0.739596, -0.355833,
		0.817814, -0.476374, -0.322875,
		44.289406, 37.559162, 28.504208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675407, 37.255192, 29.026093>,  <43.716934, 37.892620, 28.730221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675407, 37.255192, 29.026093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060497, 37.290081, 28.923683>,  <44.291553, 37.311012, 28.862238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060497, 37.290081, 28.923683>,  <43.675407, 37.255192, 29.026093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060497, 37.290081, 28.923683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266346, -0.470404, 0.841297,
		-0.047057, -0.878130, -0.476101,
		0.962728, 0.087219, -0.256022,
		44.349316, 37.316246, 28.846876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948490, 36.612522, 28.986828>,  <43.675407, 37.255192, 29.026093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948490, 36.612522, 28.986828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281860, 36.825619, 29.045595>,  <44.481884, 36.953476, 29.080854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281860, 36.825619, 29.045595>,  <43.948490, 36.612522, 28.986828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.281860, 36.825619, 29.045595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243246, -0.592356, 0.768079,
		0.496215, -0.604402, -0.623273,
		0.833428, 0.532741, 0.146917,
		44.531887, 36.985439, 29.089670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.523975, 36.093021, 29.218170>,  <43.948490, 36.612522, 28.986828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.523975, 36.093021, 29.218170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661812, 36.452988, 29.325066>,  <44.744514, 36.668968, 29.389202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661812, 36.452988, 29.325066>,  <44.523975, 36.093021, 29.218170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661812, 36.452988, 29.325066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504047, -0.417526, 0.756049,
		0.791955, -0.125828, -0.597473,
		0.344592, 0.899911, 0.267238,
		44.765190, 36.722961, 29.405237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.171440, 35.942482, 29.441015>,  <44.523975, 36.093021, 29.218170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.171440, 35.942482, 29.441015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.092136, 36.305374, 29.589407>,  <45.044552, 36.523109, 29.678442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.092136, 36.305374, 29.589407>,  <45.171440, 35.942482, 29.441015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.092136, 36.305374, 29.589407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628822, -0.172597, 0.758151,
		0.751848, 0.383592, -0.536267,
		-0.198262, 0.907231, 0.370977,
		45.032658, 36.577545, 29.700701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.893017, 36.328018, 29.648317>,  <45.171440, 35.942482, 29.441015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.893017, 36.328018, 29.648317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.608189, 36.502235, 29.868593>,  <45.437290, 36.606766, 30.000759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.608189, 36.502235, 29.868593>,  <45.893017, 36.328018, 29.648317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.608189, 36.502235, 29.868593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466566, -0.292576, 0.834695,
		0.524664, 0.851294, 0.005125,
		-0.712071, 0.435543, 0.550689,
		45.394566, 36.632896, 30.033800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.246777, 36.660801, 30.275751>,  <45.893017, 36.328018, 29.648317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.246777, 36.660801, 30.275751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.859318, 36.624340, 30.368198>,  <45.626842, 36.602463, 30.423666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.859318, 36.624340, 30.368198>,  <46.246777, 36.660801, 30.275751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.859318, 36.624340, 30.368198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248414, -0.369146, 0.895556,
		0.003687, 0.924891, 0.380215,
		-0.968647, -0.091149, 0.231117,
		45.568726, 36.596996, 30.437534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.288727, 36.779945, 30.941982>,  <46.246777, 36.660801, 30.275751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.288727, 36.779945, 30.941982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943478, 36.583828, 30.893585>,  <45.736328, 36.466160, 30.864546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943478, 36.583828, 30.893585>,  <46.288727, 36.779945, 30.941982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.943478, 36.583828, 30.893585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150210, -0.478003, 0.865419,
		-0.482142, 0.728786, 0.486220,
		-0.863120, -0.490290, -0.120995,
		45.684540, 36.436741, 30.857286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.938889, 36.868279, 31.558964>,  <46.288727, 36.779945, 30.941982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.938889, 36.868279, 31.558964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.788937, 36.538555, 31.389269>,  <45.698963, 36.340721, 31.287453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.788937, 36.538555, 31.389269>,  <45.938889, 36.868279, 31.558964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.788937, 36.538555, 31.389269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101274, -0.491284, 0.865092,
		-0.921524, 0.281343, 0.267655,
		-0.374882, -0.824310, -0.424237,
		45.676472, 36.291264, 31.261997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.449104, 36.547890, 32.012180>,  <45.938889, 36.868279, 31.558964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.449104, 36.547890, 32.012180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.508907, 36.233597, 31.772087>,  <45.544788, 36.045021, 31.628033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.508907, 36.233597, 31.772087>,  <45.449104, 36.547890, 32.012180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.508907, 36.233597, 31.772087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035003, -0.602466, 0.797377,
		-0.988141, -0.140223, -0.062570,
		0.149507, -0.785731, -0.600229,
		45.553761, 35.997879, 31.592018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.897999, 36.016861, 32.182804>,  <45.449104, 36.547890, 32.012180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.897999, 36.016861, 32.182804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.184639, 35.821339, 31.983789>,  <45.356625, 35.704025, 31.864380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.184639, 35.821339, 31.983789>,  <44.897999, 36.016861, 32.182804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.184639, 35.821339, 31.983789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005347, -0.717170, 0.696878,
		-0.697459, -0.496726, -0.516541,
		0.716605, -0.488806, -0.497540,
		45.399620, 35.674698, 31.834528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701996, 35.319164, 32.188156>,  <44.897999, 36.016861, 32.182804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701996, 35.319164, 32.188156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.089123, 35.280792, 32.095100>,  <45.321400, 35.257771, 32.039265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.089123, 35.280792, 32.095100>,  <44.701996, 35.319164, 32.188156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089123, 35.280792, 32.095100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105927, -0.683288, 0.722425,
		-0.228264, -0.723820, -0.651138,
		0.967820, -0.095930, -0.232642,
		45.379467, 35.252014, 32.025307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818542, 34.644997, 32.089375>,  <44.701996, 35.319164, 32.188156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818542, 34.644997, 32.089375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183426, 34.791214, 32.163399>,  <45.402355, 34.878944, 32.207813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183426, 34.791214, 32.163399>,  <44.818542, 34.644997, 32.089375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183426, 34.791214, 32.163399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104750, -0.644732, 0.757197,
		0.396102, -0.671340, -0.626423,
		0.912212, 0.365545, 0.185057,
		45.457088, 34.900879, 32.218914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186615, 34.052414, 32.197655>,  <44.818542, 34.644997, 32.089375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186615, 34.052414, 32.197655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.362297, 34.361904, 32.380276>,  <45.467705, 34.547600, 32.489849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.362297, 34.361904, 32.380276>,  <45.186615, 34.052414, 32.197655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.362297, 34.361904, 32.380276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190662, -0.576896, 0.794253,
		0.877922, -0.261792, -0.400896,
		0.439205, 0.773728, 0.456556,
		45.494057, 34.594021, 32.517242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.676918, 33.766602, 32.671906>,  <45.186615, 34.052414, 32.197655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.676918, 33.766602, 32.671906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651348, 34.134148, 32.827648>,  <45.636005, 34.354675, 32.921093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651348, 34.134148, 32.827648>,  <45.676918, 33.766602, 32.671906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.651348, 34.134148, 32.827648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168657, -0.374595, 0.911720,
		0.983599, 0.123952, -0.131027,
		-0.063927, 0.918866, 0.389357,
		45.632172, 34.409809, 32.944454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.393974, 33.922409, 33.092403>,  <45.676918, 33.766602, 32.671906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.393974, 33.922409, 33.092403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087822, 34.138897, 33.231705>,  <45.904133, 34.268791, 33.315285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087822, 34.138897, 33.231705>,  <46.393974, 33.922409, 33.092403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.087822, 34.138897, 33.231705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220385, -0.287990, 0.931929,
		0.604671, 0.790027, 0.101145,
		-0.765378, 0.541220, 0.348249,
		45.858208, 34.301262, 33.336178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.634350, 34.238720, 33.631870>,  <46.393974, 33.922409, 33.092403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.634350, 34.238720, 33.631870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.245110, 34.249508, 33.723392>,  <46.011566, 34.255981, 33.778305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.245110, 34.249508, 33.723392>,  <46.634350, 34.238720, 33.631870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.245110, 34.249508, 33.723392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220839, -0.173804, 0.959699,
		0.065649, 0.984411, 0.163173,
		-0.973098, 0.026968, 0.228806,
		45.953178, 34.257599, 33.792034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.435368, 34.775421, 34.286755>,  <46.634350, 34.238720, 33.631870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.435368, 34.775421, 34.286755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182991, 34.470436, 34.229385>,  <46.031567, 34.287445, 34.194965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182991, 34.470436, 34.229385>,  <46.435368, 34.775421, 34.286755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.182991, 34.470436, 34.229385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179453, -0.323273, 0.929135,
		-0.754793, 0.560490, 0.340791,
		-0.630939, -0.762460, -0.143423,
		45.993710, 34.241699, 34.186359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.177986, 34.783936, 33.909412>,  <46.435368, 34.775421, 34.286755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.177986, 34.783936, 33.909412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.129539, 34.595383, 34.258842>,  <47.100471, 34.482250, 34.468502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.129539, 34.595383, 34.258842>,  <47.177986, 34.783936, 33.909412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.129539, 34.595383, 34.258842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592409, 0.671818, 0.444648,
		-0.796481, 0.571369, 0.197879,
		-0.121119, -0.471379, 0.873574,
		47.093204, 34.453968, 34.520916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.954720, 35.197136, 34.502419>,  <47.177986, 34.783936, 33.909412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.954720, 35.197136, 34.502419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.196846, 34.888962, 34.582447>,  <47.342121, 34.704056, 34.630463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.196846, 34.888962, 34.582447>,  <46.954720, 35.197136, 34.502419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.196846, 34.888962, 34.582447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697319, 0.634464, 0.333468,
		-0.383852, -0.062341, 0.921288,
		0.605313, -0.770434, 0.200069,
		47.378441, 34.657833, 34.642467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.286926, 35.199947, 35.320621>,  <46.954720, 35.197136, 34.502419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.286926, 35.199947, 35.320621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.498653, 35.022400, 35.031399>,  <47.625690, 34.915871, 34.857864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.498653, 35.022400, 35.031399>,  <47.286926, 35.199947, 35.320621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.498653, 35.022400, 35.031399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820618, 0.484244, 0.303470,
		0.215436, -0.753984, 0.620560,
		0.529314, -0.443865, -0.723057,
		47.657448, 34.889240, 34.814484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.685623, 37.075954, 44.051693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.652905, 36.686039, 44.134739>,  <37.633274, 36.452091, 44.184566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.652905, 36.686039, 44.134739>,  <37.685623, 37.075954, 44.051693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652905, 36.686039, 44.134739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461831, -0.147526, -0.874613,
		0.883189, -0.167418, -0.438120,
		-0.081792, -0.974786, 0.207612,
		37.628368, 36.393604, 44.197021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024239, 36.660820, 43.547180>,  <37.685623, 37.075954, 44.051693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024239, 36.660820, 43.547180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711670, 36.471100, 43.709370>,  <37.524128, 36.357269, 43.806683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711670, 36.471100, 43.709370>,  <38.024239, 36.660820, 43.547180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711670, 36.471100, 43.709370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396078, -0.125107, -0.909654,
		0.482178, -0.871428, -0.090099,
		-0.781425, -0.474302, 0.405477,
		37.477242, 36.328808, 43.831013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754723, 36.221226, 43.037155>,  <38.024239, 36.660820, 43.547180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754723, 36.221226, 43.037155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.441761, 36.186031, 43.283768>,  <37.253986, 36.164917, 43.431736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.441761, 36.186031, 43.283768>,  <37.754723, 36.221226, 43.037155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441761, 36.186031, 43.283768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611756, -0.076816, -0.787308,
		0.116631, -0.993155, 0.006276,
		-0.782402, -0.087986, 0.616528,
		37.207039, 36.159637, 43.468727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351357, 35.726826, 42.765491>,  <37.754723, 36.221226, 43.037155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351357, 35.726826, 42.765491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.081997, 35.883415, 43.016338>,  <36.920380, 35.977367, 43.166847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.081997, 35.883415, 43.016338>,  <37.351357, 35.726826, 42.765491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081997, 35.883415, 43.016338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701989, -0.072605, -0.708477,
		-0.231819, -0.917320, 0.323703,
		-0.673402, 0.391474, 0.627118,
		36.879974, 36.000858, 43.204475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776569, 35.330261, 42.737030>,  <37.351357, 35.726826, 42.765491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776569, 35.330261, 42.737030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.612663, 35.656384, 42.900673>,  <36.514320, 35.852058, 42.998859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.612663, 35.656384, 42.900673>,  <36.776569, 35.330261, 42.737030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612663, 35.656384, 42.900673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794846, -0.099077, -0.598668,
		-0.447567, -0.570488, 0.688642,
		-0.409761, 0.815308, 0.409106,
		36.489735, 35.900974, 43.023403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075886, 35.148022, 42.913357>,  <36.776569, 35.330261, 42.737030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075886, 35.148022, 42.913357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.112793, 35.543953, 42.870045>,  <36.134937, 35.781513, 42.844055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.112793, 35.543953, 42.870045>,  <36.075886, 35.148022, 42.913357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112793, 35.543953, 42.870045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853383, 0.022575, -0.520795,
		-0.513054, 0.140459, 0.846786,
		0.092266, 0.989829, -0.108283,
		36.140472, 35.840900, 42.837559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359039, 35.300255, 42.811642>,  <36.075886, 35.148022, 42.913357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359039, 35.300255, 42.811642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.535782, 35.643173, 42.705952>,  <35.641827, 35.848923, 42.642536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.535782, 35.643173, 42.705952>,  <35.359039, 35.300255, 42.811642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535782, 35.643173, 42.705952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706808, 0.151307, -0.691034,
		-0.552439, 0.492093, 0.672797,
		0.441852, 0.857293, -0.264227,
		35.668339, 35.900360, 42.626682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783958, 35.752861, 42.579010>,  <35.359039, 35.300255, 42.811642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783958, 35.752861, 42.579010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.114605, 35.929413, 42.439358>,  <35.312992, 36.035343, 42.355568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.114605, 35.929413, 42.439358>,  <34.783958, 35.752861, 42.579010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114605, 35.929413, 42.439358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487644, 0.252105, -0.835851,
		-0.280910, 0.861178, 0.423630,
		0.826615, 0.441380, -0.349129,
		35.362591, 36.061829, 42.334618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617718, 36.434338, 42.346912>,  <34.783958, 35.752861, 42.579010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617718, 36.434338, 42.346912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.939518, 36.293114, 42.155861>,  <35.132599, 36.208378, 42.041229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.939518, 36.293114, 42.155861>,  <34.617718, 36.434338, 42.346912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939518, 36.293114, 42.155861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365376, 0.339818, -0.866616,
		0.468273, 0.871707, 0.144385,
		0.804500, -0.353058, -0.477628,
		35.180866, 36.187195, 42.012573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032619, 36.869171, 41.879929>,  <34.617718, 36.434338, 42.346912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032619, 36.869171, 41.879929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.134266, 36.520741, 41.711807>,  <35.195251, 36.311684, 41.610935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.134266, 36.520741, 41.711807>,  <35.032619, 36.869171, 41.879929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134266, 36.520741, 41.711807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148716, 0.394209, -0.906909,
		0.955673, 0.292962, -0.029370,
		0.254112, -0.871076, -0.420303,
		35.210499, 36.259418, 41.585716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188713, 37.098827, 41.234257>,  <35.032619, 36.869171, 41.879929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188713, 37.098827, 41.234257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.201302, 36.705605, 41.162025>,  <35.208855, 36.469669, 41.118687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.201302, 36.705605, 41.162025>,  <35.188713, 37.098827, 41.234257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201302, 36.705605, 41.162025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322935, 0.160982, -0.932630,
		0.945898, 0.087664, -0.312397,
		0.031468, -0.983057, -0.180582,
		35.210743, 36.410686, 41.107849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330505, 37.054043, 40.637650>,  <35.188713, 37.098827, 41.234257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330505, 37.054043, 40.637650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181316, 36.684883, 40.675900>,  <35.091805, 36.463387, 40.698849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181316, 36.684883, 40.675900>,  <35.330505, 37.054043, 40.637650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181316, 36.684883, 40.675900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130587, -0.049825, -0.990184,
		0.918606, -0.381800, -0.101935,
		-0.372974, -0.922901, 0.095627,
		35.069424, 36.408012, 40.704586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604801, 36.797905, 40.073467>,  <35.330505, 37.054043, 40.637650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604801, 36.797905, 40.073467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.289997, 36.571281, 40.171139>,  <35.101116, 36.435307, 40.229740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.289997, 36.571281, 40.171139>,  <35.604801, 36.797905, 40.073467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289997, 36.571281, 40.171139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311915, 0.023934, -0.949808,
		0.532281, -0.823672, -0.195555,
		-0.787010, -0.566561, 0.244176,
		35.053894, 36.401314, 40.244392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742085, 36.234123, 39.612766>,  <35.604801, 36.797905, 40.073467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742085, 36.234123, 39.612766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.362755, 36.228855, 39.739582>,  <35.135159, 36.225697, 39.815674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.362755, 36.228855, 39.739582>,  <35.742085, 36.234123, 39.612766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362755, 36.228855, 39.739582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309085, -0.187746, -0.932319,
		0.071800, -0.982129, 0.173973,
		-0.948320, -0.013168, 0.317042,
		35.078259, 36.224907, 39.834694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444656, 35.562546, 39.300671>,  <35.742085, 36.234123, 39.612766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444656, 35.562546, 39.300671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.157459, 35.816406, 39.415005>,  <34.985142, 35.968723, 39.483604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.157459, 35.816406, 39.415005>,  <35.444656, 35.562546, 39.300671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157459, 35.816406, 39.415005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423810, -0.072853, -0.902816,
		-0.552148, -0.769358, 0.321279,
		-0.717996, 0.634650, 0.285836,
		34.942062, 36.006802, 39.500755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827095, 35.272007, 39.096378>,  <35.444656, 35.562546, 39.300671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827095, 35.272007, 39.096378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.757305, 35.665356, 39.116535>,  <34.715431, 35.901363, 39.128632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.757305, 35.665356, 39.116535>,  <34.827095, 35.272007, 39.096378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757305, 35.665356, 39.116535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288291, -0.002079, -0.957541,
		-0.941514, -0.181591, 0.283860,
		-0.174471, 0.983372, 0.050394,
		34.704964, 35.960369, 39.131653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161972, 35.404572, 38.871563>,  <34.827095, 35.272007, 39.096378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161972, 35.404572, 38.871563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.338104, 35.762539, 38.842644>,  <34.443783, 35.977318, 38.825291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.338104, 35.762539, 38.842644>,  <34.161972, 35.404572, 38.871563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338104, 35.762539, 38.842644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078015, -0.042087, -0.996063,
		-0.894438, 0.444241, 0.051285,
		0.440334, 0.894918, -0.072301,
		34.470203, 36.031013, 38.820953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831512, 35.689728, 38.270836>,  <34.161972, 35.404572, 38.871563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831512, 35.689728, 38.270836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.171673, 35.892933, 38.325596>,  <34.375771, 36.014854, 38.358452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.171673, 35.892933, 38.325596>,  <33.831512, 35.689728, 38.270836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171673, 35.892933, 38.325596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194362, -0.061528, -0.978998,
		-0.488920, 0.859149, -0.151062,
		0.850400, 0.508013, 0.136904,
		34.426792, 36.045338, 38.366669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829601, 36.159988, 37.684128>,  <33.831512, 35.689728, 38.270836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829601, 36.159988, 37.684128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.207020, 36.176895, 37.815540>,  <34.433472, 36.187038, 37.894390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.207020, 36.176895, 37.815540>,  <33.829601, 36.159988, 37.684128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207020, 36.176895, 37.815540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314504, 0.196972, -0.928596,
		-0.103963, 0.979498, 0.172558,
		0.943546, 0.042270, 0.328534,
		34.490082, 36.189575, 37.914101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059811, 36.723866, 37.417614>,  <33.829601, 36.159988, 37.684128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059811, 36.723866, 37.417614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.378727, 36.493950, 37.491314>,  <34.570076, 36.355999, 37.535534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.378727, 36.493950, 37.491314>,  <34.059811, 36.723866, 37.417614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378727, 36.493950, 37.491314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341743, 0.178238, -0.922737,
		0.497539, 0.798653, 0.338537,
		0.797287, -0.574791, 0.184253,
		34.617912, 36.321514, 37.546589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605644, 37.107716, 37.160572>,  <34.059811, 36.723866, 37.417614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605644, 37.107716, 37.160572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.731850, 36.728561, 37.178307>,  <34.807571, 36.501068, 37.188946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.731850, 36.728561, 37.178307>,  <34.605644, 37.107716, 37.160572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731850, 36.728561, 37.178307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253081, 0.039027, -0.966658,
		0.914549, 0.316215, 0.252205,
		0.315515, -0.947885, 0.044336,
		34.826504, 36.444195, 37.191608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311096, 37.164680, 36.942440>,  <34.605644, 37.107716, 37.160572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311096, 37.164680, 36.942440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.199654, 36.789322, 36.860676>,  <35.132790, 36.564106, 36.811615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.199654, 36.789322, 36.860676>,  <35.311096, 37.164680, 36.942440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199654, 36.789322, 36.860676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316471, 0.111252, -0.942056,
		0.906767, -0.327150, 0.265982,
		-0.278602, -0.938401, -0.204413,
		35.116074, 36.507801, 36.799351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705215, 37.198997, 36.236103>,  <35.311096, 37.164680, 36.942440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705215, 37.198997, 36.236103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.078762, 37.276463, 36.115845>,  <36.302891, 37.322941, 36.043690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.078762, 37.276463, 36.115845>,  <35.705215, 37.198997, 36.236103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078762, 37.276463, 36.115845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339348, -0.214620, 0.915850,
		0.112844, -0.957305, -0.266147,
		0.933868, 0.193665, -0.300641,
		36.358921, 37.334560, 36.025654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128235, 36.621487, 36.431679>,  <35.705215, 37.198997, 36.236103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128235, 36.621487, 36.431679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.337391, 36.960861, 36.398853>,  <36.462887, 37.164486, 36.379158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.337391, 36.960861, 36.398853>,  <36.128235, 36.621487, 36.431679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337391, 36.960861, 36.398853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325383, -0.109687, 0.939199,
		0.787852, -0.517803, -0.333422,
		0.522892, 0.848439, -0.082067,
		36.494259, 37.215393, 36.374233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721218, 36.466599, 36.722187>,  <36.128235, 36.621487, 36.431679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721218, 36.466599, 36.722187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.739433, 36.866138, 36.716267>,  <36.750362, 37.105862, 36.712715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.739433, 36.866138, 36.716267>,  <36.721218, 36.466599, 36.722187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739433, 36.866138, 36.716267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261306, 0.002390, 0.965253,
		0.964181, -0.047828, -0.260898,
		0.045543, 0.998853, -0.014802,
		36.753098, 37.165794, 36.711826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346462, 36.631882, 36.920685>,  <36.721218, 36.466599, 36.722187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346462, 36.631882, 36.920685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.114113, 36.943905, 37.013718>,  <36.974705, 37.131119, 37.069538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.114113, 36.943905, 37.013718>,  <37.346462, 36.631882, 36.920685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114113, 36.943905, 37.013718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400597, 0.025213, 0.915907,
		0.708599, 0.625196, -0.327135,
		-0.580869, 0.780061, 0.232586,
		36.939854, 37.177921, 37.083492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832764, 37.241001, 37.114765>,  <37.346462, 36.631882, 36.920685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832764, 37.241001, 37.114765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.472599, 37.322281, 37.268635>,  <37.256500, 37.371048, 37.360958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.472599, 37.322281, 37.268635>,  <37.832764, 37.241001, 37.114765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472599, 37.322281, 37.268635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425653, 0.228756, 0.875494,
		0.089903, 0.952041, -0.292466,
		-0.900409, 0.203198, 0.384674,
		37.202477, 37.383240, 37.384037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943611, 37.772236, 37.476212>,  <37.832764, 37.241001, 37.114765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943611, 37.772236, 37.476212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.573704, 37.686993, 37.602318>,  <37.351761, 37.635845, 37.677982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.573704, 37.686993, 37.602318>,  <37.943611, 37.772236, 37.476212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573704, 37.686993, 37.602318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248909, 0.287925, 0.924740,
		-0.287843, 0.933640, -0.213219,
		-0.924765, -0.213107, 0.315268,
		37.296272, 37.623062, 37.696899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699059, 38.177334, 37.973476>,  <37.943611, 37.772236, 37.476212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699059, 38.177334, 37.973476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421974, 37.914085, 38.091476>,  <37.255722, 37.756138, 38.162277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421974, 37.914085, 38.091476>,  <37.699059, 38.177334, 37.973476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421974, 37.914085, 38.091476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404277, -0.015603, 0.914503,
		-0.597252, 0.752749, 0.276873,
		-0.692712, -0.658122, 0.295000,
		37.214161, 37.716648, 38.179977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251015, 38.496841, 38.576309>,  <37.699059, 38.177334, 37.973476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251015, 38.496841, 38.576309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.243446, 38.097153, 38.590103>,  <37.238907, 37.857338, 38.598381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.243446, 38.097153, 38.590103>,  <37.251015, 38.496841, 38.576309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243446, 38.097153, 38.590103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221684, 0.029440, 0.974674,
		-0.974935, 0.026087, 0.220955,
		-0.018921, -0.999226, 0.034485,
		37.237770, 37.797386, 38.600449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080898, 38.361343, 39.258202>,  <37.251015, 38.496841, 38.576309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080898, 38.361343, 39.258202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.227131, 38.002274, 39.159794>,  <37.314869, 37.786831, 39.100750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.227131, 38.002274, 39.159794>,  <37.080898, 38.361343, 39.258202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227131, 38.002274, 39.159794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223192, -0.172058, 0.959469,
		-0.903624, -0.405673, 0.137453,
		0.365580, -0.897678, -0.246018,
		37.336803, 37.732971, 39.085987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868355, 37.913666, 39.865757>,  <37.080898, 38.361343, 39.258202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868355, 37.913666, 39.865757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.178993, 37.746010, 39.677620>,  <37.365376, 37.645416, 39.564739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.178993, 37.746010, 39.677620>,  <36.868355, 37.913666, 39.865757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178993, 37.746010, 39.677620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332186, -0.361926, 0.871012,
		-0.535300, -0.832668, -0.141840,
		0.776599, -0.419135, -0.470340,
		37.411972, 37.620270, 39.536518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960110, 37.202427, 40.080502>,  <36.868355, 37.913666, 39.865757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960110, 37.202427, 40.080502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.313332, 37.323494, 39.937057>,  <37.525265, 37.396133, 39.850990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.313332, 37.323494, 39.937057>,  <36.960110, 37.202427, 40.080502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313332, 37.323494, 39.937057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458081, -0.390123, 0.798728,
		0.101843, -0.869597, -0.483146,
		0.883057, 0.302665, -0.358615,
		37.578247, 37.414295, 39.829472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404686, 36.692627, 40.260998>,  <36.960110, 37.202427, 40.080502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404686, 36.692627, 40.260998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.652645, 36.995518, 40.178688>,  <37.801418, 37.177250, 40.129303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.652645, 36.995518, 40.178688>,  <37.404686, 36.692627, 40.260998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652645, 36.995518, 40.178688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496791, -0.175736, 0.849892,
		0.607397, -0.629069, -0.485120,
		0.619894, 0.757224, -0.205774,
		37.838612, 37.222687, 40.116955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045078, 36.455891, 40.533039>,  <37.404686, 36.692627, 40.260998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045078, 36.455891, 40.533039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.100014, 36.850723, 40.500046>,  <38.132977, 37.087624, 40.480247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.100014, 36.850723, 40.500046>,  <38.045078, 36.455891, 40.533039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100014, 36.850723, 40.500046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569574, -0.010571, 0.821872,
		0.810384, -0.159860, -0.563669,
		0.137343, 0.987083, -0.082485,
		38.141216, 37.146847, 40.475300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750019, 36.580387, 40.583866>,  <38.045078, 36.455891, 40.533039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750019, 36.580387, 40.583866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.584702, 36.939522, 40.644627>,  <38.485512, 37.155003, 40.681084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.584702, 36.939522, 40.644627>,  <38.750019, 36.580387, 40.583866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584702, 36.939522, 40.644627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558215, 0.118018, 0.821259,
		0.719430, 0.424218, -0.549963,
		-0.413298, 0.897837, 0.151899,
		38.460712, 37.208874, 40.690197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336548, 37.081528, 40.616047>,  <38.750019, 36.580387, 40.583866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336548, 37.081528, 40.616047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.017849, 37.216450, 40.816616>,  <38.826630, 37.297401, 40.936958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.017849, 37.216450, 40.816616>,  <39.336548, 37.081528, 40.616047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017849, 37.216450, 40.816616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557748, 0.091039, 0.825002,
		0.232627, 0.936983, -0.260666,
		-0.796744, 0.337304, 0.501423,
		38.778824, 37.317642, 40.967045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627792, 37.493469, 41.039791>,  <39.336548, 37.081528, 40.616047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627792, 37.493469, 41.039791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.278221, 37.495686, 41.234200>,  <39.068478, 37.497017, 41.350845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.278221, 37.495686, 41.234200>,  <39.627792, 37.493469, 41.039791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278221, 37.495686, 41.234200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482396, 0.132283, 0.865907,
		-0.059492, 0.991197, -0.118280,
		-0.873931, 0.005543, 0.486019,
		39.016041, 37.497349, 41.380005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710022, 38.105442, 41.513786>,  <39.627792, 37.493469, 41.039791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710022, 38.105442, 41.513786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.416248, 37.866806, 41.643204>,  <39.239983, 37.723625, 41.720852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.416248, 37.866806, 41.643204>,  <39.710022, 38.105442, 41.513786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416248, 37.866806, 41.643204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432586, -0.044178, 0.900510,
		-0.522946, 0.801326, 0.290524,
		-0.734437, -0.596595, 0.323539,
		39.195919, 37.687828, 41.740265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591999, 38.299648, 42.257389>,  <39.710022, 38.105442, 41.513786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591999, 38.299648, 42.257389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.431099, 37.935013, 42.223450>,  <39.334560, 37.716232, 42.203087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.431099, 37.935013, 42.223450>,  <39.591999, 38.299648, 42.257389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431099, 37.935013, 42.223450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431599, -0.270547, 0.860539,
		-0.807413, 0.309532, 0.502269,
		-0.402252, -0.911589, -0.084849,
		39.310425, 37.661537, 42.197994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.116047, 38.104610, 42.964691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.226562, 37.767487, 42.779938>,  <39.292873, 37.565212, 42.669086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.226562, 37.767487, 42.779938>,  <39.116047, 38.104610, 42.964691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226562, 37.767487, 42.779938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289200, -0.385410, 0.876255,
		-0.916530, -0.375678, 0.137255,
		0.276290, -0.842808, -0.461886,
		39.309448, 37.514645, 42.641373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751289, 37.520844, 43.298592>,  <39.116047, 38.104610, 42.964691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751289, 37.520844, 43.298592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.072075, 37.362331, 43.119789>,  <39.264545, 37.267223, 43.012508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.072075, 37.362331, 43.119789>,  <38.751289, 37.520844, 43.298592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072075, 37.362331, 43.119789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252023, -0.453995, 0.854619,
		-0.541610, -0.798028, -0.264215,
		0.801962, -0.396282, -0.447009,
		39.312664, 37.243446, 42.985687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708500, 36.862610, 43.428242>,  <38.751289, 37.520844, 43.298592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708500, 36.862610, 43.428242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.092789, 36.926796, 43.337681>,  <39.323364, 36.965309, 43.283344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.092789, 36.926796, 43.337681>,  <38.708500, 36.862610, 43.428242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092789, 36.926796, 43.337681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272235, -0.386835, 0.881049,
		0.053798, -0.908080, -0.415327,
		0.960725, 0.160465, -0.226400,
		39.381008, 36.974934, 43.269760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061054, 36.296944, 43.672375>,  <38.708500, 36.862610, 43.428242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061054, 36.296944, 43.672375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.351810, 36.570435, 43.646629>,  <39.526264, 36.734528, 43.631184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.351810, 36.570435, 43.646629>,  <39.061054, 36.296944, 43.672375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351810, 36.570435, 43.646629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373163, -0.314561, 0.872812,
		0.576519, -0.658459, -0.483794,
		0.726894, 0.683727, -0.064362,
		39.569878, 36.775551, 43.627319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609592, 35.976688, 44.108116>,  <39.061054, 36.296944, 43.672375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609592, 35.976688, 44.108116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.673939, 36.369495, 44.068588>,  <39.712547, 36.605179, 44.044872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.673939, 36.369495, 44.068588>,  <39.609592, 35.976688, 44.108116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673939, 36.369495, 44.068588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427573, 0.020905, 0.903739,
		0.889553, -0.187632, -0.416521,
		0.160863, 0.982017, -0.098822,
		39.722198, 36.664101, 44.038940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324425, 36.089108, 44.248241>,  <39.609592, 35.976688, 44.108116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324425, 36.089108, 44.248241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.184834, 36.459782, 44.304047>,  <40.101078, 36.682186, 44.337532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.184834, 36.459782, 44.304047>,  <40.324425, 36.089108, 44.248241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184834, 36.459782, 44.304047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509875, 0.062843, 0.857950,
		0.786284, 0.370542, -0.494425,
		-0.348978, 0.926687, 0.139518,
		40.080139, 36.737789, 44.345901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935734, 36.504169, 44.512352>,  <40.324425, 36.089108, 44.248241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935734, 36.504169, 44.512352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.604305, 36.700607, 44.619900>,  <40.405449, 36.818470, 44.684429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.604305, 36.700607, 44.619900>,  <40.935734, 36.504169, 44.512352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604305, 36.700607, 44.619900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382913, 0.146701, 0.912062,
		0.408461, 0.858667, -0.309598,
		-0.828575, 0.491091, 0.268873,
		40.355732, 36.847935, 44.700562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243584, 37.017479, 44.929882>,  <40.935734, 36.504169, 44.512352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243584, 37.017479, 44.929882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.854382, 36.983757, 45.015820>,  <40.620861, 36.963524, 45.067383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.854382, 36.983757, 45.015820>,  <41.243584, 37.017479, 44.929882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854382, 36.983757, 45.015820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209248, 0.070502, 0.975318,
		-0.097369, 0.993943, -0.050958,
		-0.973003, -0.084303, 0.214845,
		40.562481, 36.958466, 45.080273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088104, 37.620365, 45.313576>,  <41.243584, 37.017479, 44.929882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088104, 37.620365, 45.313576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.871918, 37.293633, 45.394260>,  <40.742207, 37.097595, 45.442673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.871918, 37.293633, 45.394260>,  <41.088104, 37.620365, 45.313576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871918, 37.293633, 45.394260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212460, 0.099478, 0.972093,
		-0.814099, 0.568239, 0.119779,
		-0.540466, -0.816828, 0.201713,
		40.709778, 37.048584, 45.454773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687443, 37.797417, 45.912853>,  <41.088104, 37.620365, 45.313576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687443, 37.797417, 45.912853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.725288, 37.400009, 45.887672>,  <40.747997, 37.161564, 45.872562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.725288, 37.400009, 45.887672>,  <40.687443, 37.797417, 45.912853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725288, 37.400009, 45.887672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256021, -0.036828, 0.965970,
		-0.962030, -0.107513, 0.250878,
		0.094615, -0.993522, -0.062955,
		40.753674, 37.101952, 45.868786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529850, 37.575996, 46.646183>,  <40.687443, 37.797417, 45.912853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529850, 37.575996, 46.646183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.706402, 37.261776, 46.472706>,  <40.812332, 37.073242, 46.368618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.706402, 37.261776, 46.472706>,  <40.529850, 37.575996, 46.646183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706402, 37.261776, 46.472706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389411, -0.267748, 0.881289,
		-0.808421, -0.557867, 0.187725,
		0.441379, -0.785555, -0.433693,
		40.838814, 37.026108, 46.342598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449429, 37.180485, 47.160076>,  <40.529850, 37.575996, 46.646183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449429, 37.180485, 47.160076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.741745, 37.039829, 46.926052>,  <40.917133, 36.955437, 46.785637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.741745, 37.039829, 46.926052>,  <40.449429, 37.180485, 47.160076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741745, 37.039829, 46.926052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492270, -0.322273, 0.808585,
		-0.472880, -0.878914, -0.062413,
		0.730791, -0.351639, -0.585059,
		40.960983, 36.934338, 46.750534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599949, 36.551304, 47.402294>,  <40.449429, 37.180485, 47.160076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599949, 36.551304, 47.402294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.943203, 36.599796, 47.202732>,  <41.149155, 36.628891, 47.082993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.943203, 36.599796, 47.202732>,  <40.599949, 36.551304, 47.402294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943203, 36.599796, 47.202732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513174, -0.172092, 0.840854,
		0.016078, -0.977593, -0.209890,
		0.858133, 0.121230, -0.498909,
		41.200642, 36.636166, 47.053059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919971, 35.931229, 47.449463>,  <40.599949, 36.551304, 47.402294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919971, 35.931229, 47.449463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.167374, 36.238857, 47.384998>,  <41.315815, 36.423435, 47.346321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.167374, 36.238857, 47.384998>,  <40.919971, 35.931229, 47.449463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167374, 36.238857, 47.384998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486257, -0.213500, 0.847332,
		0.617254, -0.602447, -0.506019,
		0.618508, 0.769074, -0.161160,
		41.352924, 36.469578, 47.336651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457176, 35.618347, 47.314590>,  <40.919971, 35.931229, 47.449463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457176, 35.618347, 47.314590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.591225, 35.981037, 47.417004>,  <41.671654, 36.198650, 47.478451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.591225, 35.981037, 47.417004>,  <41.457176, 35.618347, 47.314590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591225, 35.981037, 47.417004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536998, -0.407102, 0.738851,
		0.774161, -0.110119, -0.623337,
		0.335123, 0.906720, 0.256029,
		41.691761, 36.253052, 47.493813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193310, 35.594444, 47.471172>,  <41.457176, 35.618347, 47.314590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193310, 35.594444, 47.471172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.097691, 35.946693, 47.634815>,  <42.040321, 36.158043, 47.733002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.097691, 35.946693, 47.634815>,  <42.193310, 35.594444, 47.471172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097691, 35.946693, 47.634815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631172, -0.179251, 0.754647,
		0.737889, 0.438611, -0.512972,
		-0.239045, 0.880619, 0.409106,
		42.025978, 36.210880, 47.757545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843941, 35.919277, 47.629532>,  <42.193310, 35.594444, 47.471172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843941, 35.919277, 47.629532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.592400, 36.106430, 47.877930>,  <42.441475, 36.218723, 48.026966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.592400, 36.106430, 47.877930>,  <42.843941, 35.919277, 47.629532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592400, 36.106430, 47.877930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551902, -0.293968, 0.780376,
		0.547678, 0.833466, -0.073366,
		-0.628850, 0.467886, 0.620992,
		42.403744, 36.246796, 48.064228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213383, 36.393536, 48.122437>,  <42.843941, 35.919277, 47.629532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213383, 36.393536, 48.122437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.865406, 36.306171, 48.299297>,  <42.656620, 36.253754, 48.405415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.865406, 36.306171, 48.299297>,  <43.213383, 36.393536, 48.122437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865406, 36.306171, 48.299297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493146, -0.379770, 0.782676,
		-0.003030, 0.898928, 0.438086,
		-0.869941, -0.218412, 0.442152,
		42.604424, 36.240646, 48.431942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239681, 36.633724, 48.820034>,  <43.213383, 36.393536, 48.122437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239681, 36.633724, 48.820034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.919498, 36.398621, 48.867027>,  <42.727386, 36.257557, 48.895222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.919498, 36.398621, 48.867027>,  <43.239681, 36.633724, 48.820034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919498, 36.398621, 48.867027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368899, -0.328615, 0.869440,
		-0.472416, 0.739290, 0.479867,
		-0.800460, -0.587760, 0.117481,
		42.679359, 36.222294, 48.902271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908344, 36.832645, 49.384979>,  <43.239681, 36.633724, 48.820034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908344, 36.832645, 49.384979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.771324, 36.459915, 49.337055>,  <42.689114, 36.236275, 49.308300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.771324, 36.459915, 49.337055>,  <42.908344, 36.832645, 49.384979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771324, 36.459915, 49.337055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156972, -0.182500, 0.970594,
		-0.926294, 0.313667, 0.208786,
		-0.342547, -0.931830, -0.119812,
		42.668560, 36.180367, 49.301113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444504, 36.713577, 49.983410>,  <42.908344, 36.832645, 49.384979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444504, 36.713577, 49.983410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.572247, 36.359169, 49.848961>,  <42.648891, 36.146523, 49.768291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.572247, 36.359169, 49.848961>,  <42.444504, 36.713577, 49.983410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572247, 36.359169, 49.848961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261463, -0.258541, 0.929943,
		-0.910850, -0.384867, 0.149095,
		0.319357, -0.886021, -0.336121,
		42.668053, 36.093361, 49.748123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104904, 36.203407, 50.311604>,  <42.444504, 36.713577, 49.983410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104904, 36.203407, 50.311604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.453575, 36.033016, 50.214672>,  <42.662777, 35.930782, 50.156513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.453575, 36.033016, 50.214672>,  <42.104904, 36.203407, 50.311604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453575, 36.033016, 50.214672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078952, -0.365949, 0.927280,
		-0.483676, -0.827422, -0.285358,
		0.871679, -0.425974, -0.242327,
		42.715080, 35.905224, 50.141975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227631, 35.658577, 50.710491>,  <42.104904, 36.203407, 50.311604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227631, 35.658577, 50.710491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.608654, 35.706959, 50.598782>,  <42.837269, 35.735989, 50.531757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.608654, 35.706959, 50.598782>,  <42.227631, 35.658577, 50.710491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608654, 35.706959, 50.598782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304302, -0.363516, 0.880487,
		0.004978, -0.923703, -0.383078,
		0.952563, 0.120954, -0.279275,
		42.894424, 35.743244, 50.514999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602234, 35.141762, 50.744480>,  <42.227631, 35.658577, 50.710491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602234, 35.141762, 50.744480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.885204, 35.423241, 50.770885>,  <43.054985, 35.592129, 50.786728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.885204, 35.423241, 50.770885>,  <42.602234, 35.141762, 50.744480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885204, 35.423241, 50.770885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355102, -0.434617, 0.827654,
		0.611111, -0.562060, -0.557344,
		0.707422, 0.703702, 0.066010,
		43.097431, 35.634350, 50.790688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014107, 34.782516, 51.003838>,  <42.602234, 35.141762, 50.744480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014107, 34.782516, 51.003838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.708511, 34.526756, 51.038452>,  <41.525154, 34.373299, 51.059219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.708511, 34.526756, 51.038452>,  <42.014107, 34.782516, 51.003838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708511, 34.526756, 51.038452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361503, 0.313087, -0.878232,
		0.534451, -0.702240, -0.470340,
		-0.763988, -0.639402, 0.086532,
		41.479317, 34.334934, 51.064411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018608, 34.407253, 50.390034>,  <42.014107, 34.782516, 51.003838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018608, 34.407253, 50.390034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.650852, 34.356506, 50.538963>,  <41.430199, 34.326057, 50.628323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.650852, 34.356506, 50.538963>,  <42.018608, 34.407253, 50.390034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650852, 34.356506, 50.538963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383004, 0.504369, -0.773899,
		-0.089612, -0.854118, -0.512301,
		-0.919390, -0.126863, 0.372328,
		41.375034, 34.318447, 50.650661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647598, 34.158100, 49.772736>,  <42.018608, 34.407253, 50.390034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647598, 34.158100, 49.772736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.348248, 34.261127, 50.017223>,  <41.168636, 34.322945, 50.163918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.348248, 34.261127, 50.017223>,  <41.647598, 34.158100, 49.772736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348248, 34.261127, 50.017223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541436, 0.295057, -0.787267,
		-0.383120, -0.920109, -0.081357,
		-0.748376, 0.257568, 0.611222,
		41.123734, 34.338398, 50.200588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017262, 33.857281, 49.515644>,  <41.647598, 34.158100, 49.772736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017262, 33.857281, 49.515644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.910809, 34.171616, 49.738941>,  <40.846935, 34.360214, 49.872921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.910809, 34.171616, 49.738941>,  <41.017262, 33.857281, 49.515644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910809, 34.171616, 49.738941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680433, 0.257055, -0.686246,
		-0.682775, -0.562481, 0.466297,
		-0.266137, 0.785836, 0.558242,
		40.830967, 34.407368, 49.906414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242191, 33.825848, 49.606083>,  <41.017262, 33.857281, 49.515644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242191, 33.825848, 49.606083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.289207, 34.218285, 49.667587>,  <40.317417, 34.453747, 49.704491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.289207, 34.218285, 49.667587>,  <40.242191, 33.825848, 49.606083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289207, 34.218285, 49.667587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536276, 0.193023, -0.821675,
		-0.835818, 0.014127, 0.548825,
		0.117544, 0.981093, 0.153756,
		40.324471, 34.512611, 49.713715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605686, 34.105087, 49.420456>,  <40.242191, 33.825848, 49.606083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605686, 34.105087, 49.420456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.844463, 34.425838, 49.430656>,  <39.987732, 34.618290, 49.436779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.844463, 34.425838, 49.430656>,  <39.605686, 34.105087, 49.420456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844463, 34.425838, 49.430656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433892, 0.349418, -0.830448,
		-0.674828, 0.484668, 0.556511,
		0.596947, 0.801875, 0.025503,
		40.023548, 34.666401, 49.438309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153328, 34.784420, 49.447487>,  <39.605686, 34.105087, 49.420456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153328, 34.784420, 49.447487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.517452, 34.837074, 49.290516>,  <39.735928, 34.868668, 49.196331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.517452, 34.837074, 49.290516>,  <39.153328, 34.784420, 49.447487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517452, 34.837074, 49.290516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401431, 0.511889, -0.759488,
		0.100908, 0.848907, 0.518821,
		0.910313, 0.131632, -0.392431,
		39.790546, 34.876564, 49.172787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055531, 35.369465, 49.076408>,  <39.153328, 34.784420, 49.447487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055531, 35.369465, 49.076408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.397217, 35.259609, 48.899822>,  <39.602230, 35.193695, 48.793873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.397217, 35.259609, 48.899822>,  <39.055531, 35.369465, 49.076408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397217, 35.259609, 48.899822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368588, 0.278958, -0.886750,
		0.366686, 0.920193, 0.137062,
		0.854215, -0.274640, -0.441462,
		39.653481, 35.177216, 48.767384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273102, 35.943031, 48.667545>,  <39.055531, 35.369465, 49.076408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273102, 35.943031, 48.667545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.433098, 35.604790, 48.526142>,  <39.529095, 35.401844, 48.441299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.433098, 35.604790, 48.526142>,  <39.273102, 35.943031, 48.667545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433098, 35.604790, 48.526142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373007, 0.202124, -0.905545,
		0.837181, 0.494072, -0.234567,
		0.399992, -0.845600, -0.353507,
		39.553097, 35.351109, 48.420090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423901, 36.067768, 48.050457>,  <39.273102, 35.943031, 48.667545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423901, 36.067768, 48.050457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.458248, 35.669708, 48.031273>,  <39.478855, 35.430870, 48.019760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.458248, 35.669708, 48.031273>,  <39.423901, 36.067768, 48.050457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458248, 35.669708, 48.031273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363019, 0.013580, -0.931683,
		0.927816, 0.097416, -0.360093,
		0.085870, -0.995151, -0.047963,
		39.484009, 35.371162, 48.016884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711697, 35.979160, 47.377338>,  <39.423901, 36.067768, 48.050457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711697, 35.979160, 47.377338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.534138, 35.632610, 47.468857>,  <39.427601, 35.424679, 47.523769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.534138, 35.632610, 47.468857>,  <39.711697, 35.979160, 47.377338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534138, 35.632610, 47.468857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471493, 0.008695, -0.881827,
		0.762002, -0.499321, -0.412348,
		-0.443900, -0.866373, 0.228801,
		39.400967, 35.372700, 47.537498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938900, 35.432774, 46.875957>,  <39.711697, 35.979160, 47.377338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938900, 35.432774, 46.875957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.587170, 35.307476, 47.019436>,  <39.376133, 35.232296, 47.105522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.587170, 35.307476, 47.019436>,  <39.938900, 35.432774, 46.875957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587170, 35.307476, 47.019436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390843, 0.044359, -0.919388,
		0.272084, -0.948635, -0.161436,
		-0.879325, -0.313247, 0.358698,
		39.323372, 35.213501, 47.127045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681969, 34.981316, 46.373833>,  <39.938900, 35.432774, 46.875957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681969, 34.981316, 46.373833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.361870, 35.102951, 46.580574>,  <39.169811, 35.175934, 46.704620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.361870, 35.102951, 46.580574>,  <39.681969, 34.981316, 46.373833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361870, 35.102951, 46.580574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530186, 0.043950, -0.846742,
		-0.280201, -0.951629, 0.126054,
		-0.800244, 0.304090, 0.516855,
		39.121796, 35.194180, 46.735630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256828, 34.605698, 46.119774>,  <39.681969, 34.981316, 46.373833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256828, 34.605698, 46.119774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.066639, 34.916283, 46.285198>,  <38.952526, 35.102634, 46.384453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.066639, 34.916283, 46.285198>,  <39.256828, 34.605698, 46.119774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066639, 34.916283, 46.285198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524408, 0.127291, -0.841899,
		-0.706343, -0.617178, 0.346657,
		-0.475475, 0.776459, 0.413564,
		38.923996, 35.149220, 46.409267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551453, 34.520077, 45.841484>,  <39.256828, 34.605698, 46.119774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551453, 34.520077, 45.841484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.594952, 34.894409, 45.975586>,  <38.621052, 35.119007, 46.056046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.594952, 34.894409, 45.975586>,  <38.551453, 34.520077, 45.841484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594952, 34.894409, 45.975586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489043, 0.343981, -0.801570,
		-0.865455, -0.076786, 0.495068,
		0.108744, 0.935832, 0.335251,
		38.627575, 35.175159, 46.076160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889328, 34.875031, 45.844841>,  <38.551453, 34.520077, 45.841484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889328, 34.875031, 45.844841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163631, 35.166161, 45.845234>,  <38.328213, 35.340839, 45.845470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163631, 35.166161, 45.845234>,  <37.889328, 34.875031, 45.844841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163631, 35.166161, 45.845234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420175, 0.396986, -0.815999,
		-0.594298, 0.559166, 0.578052,
		0.685757, 0.727830, 0.000980,
		38.369358, 35.384510, 45.845528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550732, 35.390171, 45.766449>,  <37.889328, 34.875031, 45.844841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550732, 35.390171, 45.766449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904789, 35.533871, 45.648151>,  <38.117222, 35.620090, 45.577171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904789, 35.533871, 45.648151>,  <37.550732, 35.390171, 45.766449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904789, 35.533871, 45.648151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452410, 0.515704, -0.727581,
		-0.108869, 0.777809, 0.619000,
		0.885140, 0.359253, -0.295744,
		38.170330, 35.641647, 45.559429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486629, 36.095806, 45.774681>,  <37.550732, 35.390171, 45.766449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486629, 36.095806, 45.774681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.808945, 36.029259, 45.547340>,  <38.002335, 35.989330, 45.410934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.808945, 36.029259, 45.547340>,  <37.486629, 36.095806, 45.774681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808945, 36.029259, 45.547340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451924, 0.447478, -0.771704,
		0.382716, 0.878683, 0.285385,
		0.805787, -0.166371, -0.568355,
		38.050682, 35.979347, 45.376835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452099, 36.659775, 45.339951>,  <37.486629, 36.095806, 45.774681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452099, 36.659775, 45.339951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718346, 36.426823, 45.153282>,  <37.878094, 36.287052, 45.041283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718346, 36.426823, 45.153282>,  <37.452099, 36.659775, 45.339951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718346, 36.426823, 45.153282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386795, 0.265558, -0.883102,
		0.638232, 0.768315, -0.048503,
		0.665620, -0.582384, -0.466668,
		37.918030, 36.252106, 45.013283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668381, 37.087898, 44.775337>,  <37.452099, 36.659775, 45.339951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668381, 37.087898, 44.775337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.733879, 36.704548, 44.681774>,  <37.773178, 36.474537, 44.625637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.733879, 36.704548, 44.681774>,  <37.668381, 37.087898, 44.775337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733879, 36.704548, 44.681774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428341, 0.144517, -0.891986,
		0.888658, 0.246247, -0.386846,
		0.163743, -0.958372, -0.233904,
		37.783001, 36.417038, 44.611603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.731205, 36.249943, 25.977512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.343285, 36.153297, 25.990849>,  <42.110535, 36.095310, 25.998850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.343285, 36.153297, 25.990849>,  <42.731205, 36.249943, 25.977512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343285, 36.153297, 25.990849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094175, -0.244840, 0.964979,
		-0.224992, 0.938975, 0.260200,
		-0.969799, -0.241617, 0.033341,
		42.052345, 36.080811, 26.000851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402615, 36.622070, 26.516621>,  <42.731205, 36.249943, 25.977512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402615, 36.622070, 26.516621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.170864, 36.297947, 26.481461>,  <42.031815, 36.103474, 26.460365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.170864, 36.297947, 26.481461>,  <42.402615, 36.622070, 26.516621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170864, 36.297947, 26.481461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086534, -0.168388, 0.981915,
		-0.810455, 0.561290, 0.167679,
		-0.579374, -0.810308, -0.087900,
		41.997051, 36.054855, 26.455090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973003, 36.670204, 27.084503>,  <42.402615, 36.622070, 26.516621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973003, 36.670204, 27.084503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.939968, 36.282303, 26.992626>,  <41.920147, 36.049561, 26.937500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.939968, 36.282303, 26.992626>,  <41.973003, 36.670204, 27.084503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939968, 36.282303, 26.992626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101755, -0.237481, 0.966048,
		-0.991376, 0.056407, 0.118289,
		-0.082584, -0.969753, -0.229693,
		41.915192, 35.991379, 26.923717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464230, 36.341499, 27.510689>,  <41.973003, 36.670204, 27.084503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464230, 36.341499, 27.510689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.718960, 36.056618, 27.392557>,  <41.871799, 35.885689, 27.321678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.718960, 36.056618, 27.392557>,  <41.464230, 36.341499, 27.510689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718960, 36.056618, 27.392557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224979, -0.194720, 0.954708,
		-0.737455, -0.674424, 0.036228,
		0.636824, -0.712205, -0.295329,
		41.910007, 35.842957, 27.303959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116856, 35.718700, 27.874685>,  <41.464230, 36.341499, 27.510689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116856, 35.718700, 27.874685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.495274, 35.622421, 27.787912>,  <41.722324, 35.564655, 27.735849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.495274, 35.622421, 27.787912>,  <41.116856, 35.718700, 27.874685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495274, 35.622421, 27.787912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110199, -0.390575, 0.913951,
		-0.304713, -0.888547, -0.342978,
		0.946048, -0.240697, -0.216930,
		41.779087, 35.550213, 27.722834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203712, 35.063015, 28.197714>,  <41.116856, 35.718700, 27.874685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203712, 35.063015, 28.197714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.575569, 35.194420, 28.130966>,  <41.798683, 35.273262, 28.090918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.575569, 35.194420, 28.130966>,  <41.203712, 35.063015, 28.197714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575569, 35.194420, 28.130966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287240, -0.362481, 0.886623,
		0.230782, -0.872173, -0.431340,
		0.929641, 0.328515, -0.166869,
		41.854462, 35.292973, 28.080906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617081, 34.445801, 28.376982>,  <41.203712, 35.063015, 28.197714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617081, 34.445801, 28.376982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.814777, 34.791389, 28.415503>,  <41.933395, 34.998745, 28.438616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.814777, 34.791389, 28.415503>,  <41.617081, 34.445801, 28.376982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814777, 34.791389, 28.415503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312615, -0.280007, 0.907672,
		0.811170, -0.418503, -0.408482,
		0.494241, 0.863974, 0.096303,
		41.963051, 35.050583, 28.444393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284870, 34.259907, 28.528206>,  <41.617081, 34.445801, 28.376982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284870, 34.259907, 28.528206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.237976, 34.638573, 28.648260>,  <42.209839, 34.865772, 28.720293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.237976, 34.638573, 28.648260>,  <42.284870, 34.259907, 28.528206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237976, 34.638573, 28.648260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233477, -0.267476, 0.934850,
		0.965270, 0.179668, -0.189668,
		-0.117231, 0.946666, 0.300135,
		42.202808, 34.922573, 28.738300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675488, 34.251476, 29.061739>,  <42.284870, 34.259907, 28.528206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675488, 34.251476, 29.061739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.497471, 34.606148, 29.111931>,  <42.390663, 34.818951, 29.142046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.497471, 34.606148, 29.111931>,  <42.675488, 34.251476, 29.061739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497471, 34.606148, 29.111931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199418, -0.038476, 0.979159,
		0.873025, 0.460787, -0.159696,
		-0.445039, 0.886676, 0.125480,
		42.363960, 34.872150, 29.149574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158264, 34.738670, 29.332846>,  <42.675488, 34.251476, 29.061739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158264, 34.738670, 29.332846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.787041, 34.846653, 29.435480>,  <42.564308, 34.911442, 29.497061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.787041, 34.846653, 29.435480>,  <43.158264, 34.738670, 29.332846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787041, 34.846653, 29.435480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279335, 0.048833, 0.958951,
		0.246348, 0.961632, -0.120729,
		-0.928054, 0.269960, 0.256588,
		42.508625, 34.927643, 29.512457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193462, 35.288403, 29.767067>,  <43.158264, 34.738670, 29.332846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193462, 35.288403, 29.767067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.820988, 35.164997, 29.844738>,  <42.597504, 35.090954, 29.891340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.820988, 35.164997, 29.844738>,  <43.193462, 35.288403, 29.767067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820988, 35.164997, 29.844738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085439, 0.333121, 0.939005,
		-0.354381, 0.890982, -0.283839,
		-0.931190, -0.308514, 0.194176,
		42.541630, 35.072441, 29.902990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055977, 35.750824, 30.353245>,  <43.193462, 35.288403, 29.767067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055977, 35.750824, 30.353245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.782722, 35.459976, 30.380430>,  <42.618771, 35.285469, 30.396742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.782722, 35.459976, 30.380430>,  <43.055977, 35.750824, 30.353245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782722, 35.459976, 30.380430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069267, 0.028129, 0.997201,
		-0.726996, 0.685934, 0.031150,
		-0.683139, -0.727119, 0.067962,
		42.577782, 35.241840, 30.400820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757744, 35.823616, 30.911989>,  <43.055977, 35.750824, 30.353245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757744, 35.823616, 30.911989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634880, 35.444466, 30.878069>,  <42.561161, 35.216976, 30.857718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634880, 35.444466, 30.878069>,  <42.757744, 35.823616, 30.911989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634880, 35.444466, 30.878069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189170, -0.026517, 0.981586,
		-0.932668, 0.317542, -0.171164,
		-0.307156, -0.947873, -0.084801,
		42.542732, 35.160103, 30.852629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192234, 35.726219, 31.357069>,  <42.757744, 35.823616, 30.911989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192234, 35.726219, 31.357069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.320251, 35.348770, 31.323227>,  <42.397060, 35.122303, 31.302921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.320251, 35.348770, 31.323227>,  <42.192234, 35.726219, 31.357069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320251, 35.348770, 31.323227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198157, -0.153999, 0.967997,
		-0.926449, -0.293033, -0.236270,
		0.320040, -0.943618, -0.084606,
		42.416264, 35.065685, 31.297846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865208, 35.376396, 31.794006>,  <42.192234, 35.726219, 31.357069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865208, 35.376396, 31.794006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.135841, 35.089993, 31.725227>,  <42.298222, 34.918152, 31.683960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.135841, 35.089993, 31.725227>,  <41.865208, 35.376396, 31.794006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135841, 35.089993, 31.725227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013853, -0.221089, 0.975155,
		-0.736233, -0.662159, -0.139666,
		0.676586, -0.716007, -0.171946,
		42.338818, 34.875191, 31.673643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651180, 34.838966, 32.135307>,  <41.865208, 35.376396, 31.794006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651180, 34.838966, 32.135307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.041763, 34.761791, 32.096741>,  <42.276115, 34.715485, 32.073601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.041763, 34.761791, 32.096741>,  <41.651180, 34.838966, 32.135307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041763, 34.761791, 32.096741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103869, 0.028882, 0.994172,
		-0.189034, -0.980785, 0.048243,
		0.976462, -0.192943, -0.096413,
		42.334702, 34.703907, 32.067818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829464, 34.212368, 32.541386>,  <41.651180, 34.838966, 32.135307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829464, 34.212368, 32.541386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.175056, 34.401661, 32.472580>,  <42.382412, 34.515236, 32.431297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.175056, 34.401661, 32.472580>,  <41.829464, 34.212368, 32.541386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175056, 34.401661, 32.472580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248962, -0.104555, 0.962853,
		0.437666, -0.874712, -0.208151,
		0.863983, 0.473230, -0.172010,
		42.434250, 34.543629, 32.420979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228100, 33.892052, 32.897476>,  <41.829464, 34.212368, 32.541386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228100, 33.892052, 32.897476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.442184, 34.224705, 32.838242>,  <42.570637, 34.424297, 32.802700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.442184, 34.224705, 32.838242>,  <42.228100, 33.892052, 32.897476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442184, 34.224705, 32.838242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335836, -0.048631, 0.940665,
		0.775088, -0.553188, -0.305321,
		0.535213, 0.831636, -0.148087,
		42.602749, 34.474194, 32.793816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843483, 33.737072, 33.132793>,  <42.228100, 33.892052, 32.897476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843483, 33.737072, 33.132793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.841198, 34.136555, 33.153027>,  <42.839825, 34.376244, 33.165165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.841198, 34.136555, 33.153027>,  <42.843483, 33.737072, 33.132793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841198, 34.136555, 33.153027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552040, -0.039024, 0.832904,
		0.833798, 0.032684, -0.551101,
		-0.005717, 0.998704, 0.050581,
		42.839481, 34.436165, 33.168201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467709, 33.926388, 33.138653>,  <42.843483, 33.737072, 33.132793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467709, 33.926388, 33.138653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.244244, 34.210442, 33.310055>,  <43.110165, 34.380875, 33.412895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.244244, 34.210442, 33.310055>,  <43.467709, 33.926388, 33.138653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244244, 34.210442, 33.310055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495110, -0.128952, 0.859208,
		0.665406, 0.692160, -0.279553,
		-0.558660, 0.710131, 0.428500,
		43.076645, 34.423481, 33.438606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932056, 34.203217, 33.579964>,  <43.467709, 33.926388, 33.138653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932056, 34.203217, 33.579964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.582588, 34.345425, 33.712814>,  <43.372910, 34.430752, 33.792526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.582588, 34.345425, 33.712814>,  <43.932056, 34.203217, 33.579964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.582588, 34.345425, 33.712814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341588, -0.037874, 0.939086,
		0.346446, 0.933900, -0.088353,
		-0.873666, 0.355523, 0.332130,
		43.320488, 34.452080, 33.812454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.712055, 34.435982, 33.805233>,  <43.932056, 34.203217, 33.579964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.712055, 34.435982, 33.805233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.108261, 34.416756, 33.856735>,  <45.345985, 34.405220, 33.887634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.108261, 34.416756, 33.856735>,  <44.712055, 34.435982, 33.805233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.108261, 34.416756, 33.856735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134003, 0.545795, -0.827134,
		-0.030513, 0.836539, 0.547058,
		0.990511, -0.048069, 0.128753,
		45.405415, 34.402336, 33.895363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.001862, 35.185894, 33.753174>,  <44.712055, 34.435982, 33.805233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.001862, 35.185894, 33.753174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.235229, 34.890034, 33.618984>,  <45.375248, 34.712517, 33.538471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.235229, 34.890034, 33.618984>,  <45.001862, 35.185894, 33.753174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235229, 34.890034, 33.618984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045065, 0.441907, -0.895928,
		0.810923, 0.507580, 0.291148,
		0.583415, -0.739649, -0.335478,
		45.410255, 34.668140, 33.518341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.525021, 35.531170, 33.468643>,  <45.001862, 35.185894, 33.753174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.525021, 35.531170, 33.468643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.569656, 35.172436, 33.297417>,  <45.596439, 34.957195, 33.194679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.569656, 35.172436, 33.297417>,  <45.525021, 35.531170, 33.468643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.569656, 35.172436, 33.297417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088905, 0.438038, -0.894549,
		0.989769, 0.061769, 0.128615,
		0.111594, -0.896832, -0.428065,
		45.603134, 34.903385, 33.168999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.169464, 35.546196, 33.106731>,  <45.525021, 35.531170, 33.468643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.169464, 35.546196, 33.106731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.940430, 35.266705, 32.935188>,  <45.803009, 35.099010, 32.832260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.940430, 35.266705, 32.935188>,  <46.169464, 35.546196, 33.106731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.940430, 35.266705, 32.935188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176368, 0.405873, -0.896751,
		0.800652, -0.589101, -0.109161,
		-0.572583, -0.698733, -0.428861,
		45.768654, 35.057083, 32.806530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.624020, 35.353741, 32.547855>,  <46.169464, 35.546196, 33.106731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.624020, 35.353741, 32.547855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.255272, 35.229687, 32.454922>,  <46.034023, 35.155254, 32.399162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.255272, 35.229687, 32.454922>,  <46.624020, 35.353741, 32.547855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.255272, 35.229687, 32.454922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113365, 0.357495, -0.927009,
		0.370570, -0.880912, -0.294400,
		-0.921860, -0.310147, -0.232342,
		45.978710, 35.136646, 32.385220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.639061, 35.153587, 31.904963>,  <46.624020, 35.353741, 32.547855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.639061, 35.153587, 31.904963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.243359, 35.201607, 31.938322>,  <46.005936, 35.230419, 31.958338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.243359, 35.201607, 31.938322>,  <46.639061, 35.153587, 31.904963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.243359, 35.201607, 31.938322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020001, 0.454004, -0.890775,
		-0.144799, -0.882875, -0.446726,
		-0.989259, 0.120049, 0.083398,
		45.946583, 35.237621, 31.963341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279461, 34.848770, 31.299070>,  <46.639061, 35.153587, 31.904963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279461, 34.848770, 31.299070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.030586, 35.123337, 31.449656>,  <45.881264, 35.288074, 31.540007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.030586, 35.123337, 31.449656>,  <46.279461, 34.848770, 31.299070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030586, 35.123337, 31.449656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246794, 0.284386, -0.926400,
		-0.742954, -0.669300, -0.007538,
		-0.622183, 0.686412, 0.376465,
		45.843929, 35.329262, 31.562595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.840797, 35.043610, 30.813110>,  <46.279461, 34.848770, 31.299070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.840797, 35.043610, 30.813110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.725662, 35.337612, 31.058685>,  <45.656582, 35.514015, 31.206030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.725662, 35.337612, 31.058685>,  <45.840797, 35.043610, 30.813110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.725662, 35.337612, 31.058685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313773, 0.533305, -0.785578,
		-0.904819, -0.418753, 0.077121,
		-0.287834, 0.735005, 0.613938,
		45.639313, 35.558113, 31.242867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181622, 35.215748, 30.638758>,  <45.840797, 35.043610, 30.813110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181622, 35.215748, 30.638758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.297905, 35.544933, 30.833988>,  <45.367676, 35.742443, 30.951126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.297905, 35.544933, 30.833988>,  <45.181622, 35.215748, 30.638758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.297905, 35.544933, 30.833988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338230, 0.565563, -0.752156,
		-0.895034, 0.053580, 0.442767,
		0.290713, 0.822963, 0.488076,
		45.385120, 35.791821, 30.980412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605129, 35.756943, 30.738176>,  <45.181622, 35.215748, 30.638758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605129, 35.756943, 30.738176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.947704, 35.963104, 30.749954>,  <45.153252, 36.086803, 30.757021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.947704, 35.963104, 30.749954>,  <44.605129, 35.756943, 30.738176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.947704, 35.963104, 30.749954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371961, 0.655619, -0.657122,
		-0.357988, 0.551833, 0.753209,
		0.856440, 0.515406, 0.029444,
		45.204636, 36.117725, 30.758787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.360950, 36.450165, 30.830387>,  <44.605129, 35.756943, 30.738176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.360950, 36.450165, 30.830387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.736874, 36.468174, 30.694899>,  <44.962429, 36.478981, 30.613605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.736874, 36.468174, 30.694899>,  <44.360950, 36.450165, 30.830387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736874, 36.468174, 30.694899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292177, 0.619885, -0.728268,
		0.177177, 0.783399, 0.595729,
		0.939809, 0.045026, -0.338721,
		45.018818, 36.481682, 30.593283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440395, 37.197029, 30.720373>,  <44.360950, 36.450165, 30.830387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440395, 37.197029, 30.720373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.734207, 37.019188, 30.515318>,  <44.910496, 36.912483, 30.392284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.734207, 37.019188, 30.515318>,  <44.440395, 37.197029, 30.720373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734207, 37.019188, 30.515318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263057, 0.509822, -0.819074,
		0.625513, 0.736488, 0.257524,
		0.734530, -0.444598, -0.512639,
		44.954567, 36.885807, 30.361526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.890762, 37.738350, 30.295061>,  <44.440395, 37.197029, 30.720373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.890762, 37.738350, 30.295061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.926502, 37.383007, 30.114914>,  <44.947948, 37.169800, 30.006826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.926502, 37.383007, 30.114914>,  <44.890762, 37.738350, 30.295061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.926502, 37.383007, 30.114914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158109, 0.433790, -0.887033,
		0.983370, 0.150467, -0.101697,
		0.089354, -0.888362, -0.450366,
		44.953308, 37.116497, 29.979805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.215775, 37.933632, 29.750135>,  <44.890762, 37.738350, 30.295061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.215775, 37.933632, 29.750135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.069927, 37.573654, 29.654505>,  <44.982418, 37.357666, 29.597126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.069927, 37.573654, 29.654505>,  <45.215775, 37.933632, 29.750135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.069927, 37.573654, 29.654505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287739, 0.353078, -0.890248,
		0.885585, -0.255808, -0.387687,
		-0.364616, -0.899943, -0.239075,
		44.960541, 37.303673, 29.582783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.622364, 37.661236, 29.170330>,  <45.215775, 37.933632, 29.750135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.622364, 37.661236, 29.170330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.273220, 37.466797, 29.153238>,  <45.063732, 37.350136, 29.142982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.273220, 37.466797, 29.153238>,  <45.622364, 37.661236, 29.170330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273220, 37.466797, 29.153238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037970, 0.154962, -0.987190,
		0.486490, -0.860057, -0.153717,
		-0.872860, -0.486095, -0.042731,
		45.011360, 37.320969, 29.140419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587700, 37.450012, 28.522177>,  <45.622364, 37.661236, 29.170330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587700, 37.450012, 28.522177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.203529, 37.422974, 28.630259>,  <44.973026, 37.406750, 28.695108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.203529, 37.422974, 28.630259>,  <45.587700, 37.450012, 28.522177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203529, 37.422974, 28.630259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274971, 0.075434, -0.958489,
		0.044401, -0.994857, -0.091034,
		-0.960427, -0.067589, 0.270207,
		44.915401, 37.402695, 28.711321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355534, 36.870964, 28.097469>,  <45.587700, 37.450012, 28.522177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355534, 36.870964, 28.097469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.052113, 37.101048, 28.219936>,  <44.870060, 37.239098, 28.293417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.052113, 37.101048, 28.219936>,  <45.355534, 36.870964, 28.097469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.052113, 37.101048, 28.219936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338983, 0.052937, -0.939302,
		-0.556503, -0.816292, 0.154831,
		-0.758548, 0.575209, 0.306168,
		44.824547, 37.273609, 28.311787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.862682, 36.767635, 27.517773>,  <45.355534, 36.870964, 28.097469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.862682, 36.767635, 27.517773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.664158, 37.041454, 27.731342>,  <44.545044, 37.205746, 27.859484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.664158, 37.041454, 27.731342>,  <44.862682, 36.767635, 27.517773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664158, 37.041454, 27.731342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711310, 0.031943, -0.702153,
		-0.497712, -0.728269, 0.471071,
		-0.496308, 0.684547, 0.533923,
		44.515266, 37.246819, 27.891520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147110, 36.572266, 27.548019>,  <44.862682, 36.767635, 27.517773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147110, 36.572266, 27.548019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.161472, 36.969559, 27.592215>,  <44.170090, 37.207935, 27.618732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.161472, 36.969559, 27.592215>,  <44.147110, 36.572266, 27.548019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161472, 36.969559, 27.592215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578692, 0.110800, -0.807985,
		-0.814756, -0.034930, 0.578751,
		0.035903, 0.993229, 0.110488,
		44.172245, 37.267529, 27.625360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453529, 36.828773, 27.282089>,  <44.147110, 36.572266, 27.548019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453529, 36.828773, 27.282089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.689522, 37.150402, 27.252714>,  <43.831116, 37.343380, 27.235090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.689522, 37.150402, 27.252714>,  <43.453529, 36.828773, 27.282089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689522, 37.150402, 27.252714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562138, 0.343760, -0.752217,
		-0.579593, 0.485072, 0.654811,
		0.589977, 0.804073, -0.073437,
		43.866516, 37.391624, 27.230682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981457, 37.452915, 27.242908>,  <43.453529, 36.828773, 27.282089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981457, 37.452915, 27.242908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.337265, 37.561993, 27.096266>,  <43.550751, 37.627438, 27.008280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.337265, 37.561993, 27.096266>,  <42.981457, 37.452915, 27.242908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337265, 37.561993, 27.096266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445755, 0.341770, -0.827343,
		-0.100315, 0.899351, 0.425564,
		0.889516, 0.272692, -0.366605,
		43.604118, 37.643799, 26.986284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.632641, 38.119667, 39.709473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386490, 37.832886, 39.840496>,  <38.238800, 37.660816, 39.919109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386490, 37.832886, 39.840496>,  <38.632641, 38.119667, 39.709473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386490, 37.832886, 39.840496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276581, -0.192742, -0.941463,
		0.738118, -0.669949, -0.079687,
		-0.615374, -0.716951, 0.327562,
		38.201878, 37.617802, 39.938766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694572, 37.619564, 39.219452>,  <38.632641, 38.119667, 39.709473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694572, 37.619564, 39.219452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349045, 37.541870, 39.405396>,  <38.141727, 37.495255, 39.516960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349045, 37.541870, 39.405396>,  <38.694572, 37.619564, 39.219452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349045, 37.541870, 39.405396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459383, -0.075175, -0.885052,
		0.206854, -0.978070, -0.024292,
		-0.863816, -0.194236, 0.464859,
		38.089901, 37.483601, 39.544853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356499, 37.044994, 38.788242>,  <38.694572, 37.619564, 39.219452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356499, 37.044994, 38.788242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068302, 37.209175, 39.011822>,  <37.895386, 37.307682, 39.145969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068302, 37.209175, 39.011822>,  <38.356499, 37.044994, 38.788242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068302, 37.209175, 39.011822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626569, -0.039916, -0.778343,
		-0.297161, -0.911008, 0.285936,
		-0.720490, 0.410452, 0.558948,
		37.852154, 37.332310, 39.179504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755291, 36.572056, 38.749107>,  <38.356499, 37.044994, 38.788242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755291, 36.572056, 38.749107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603432, 36.930927, 38.839378>,  <37.512318, 37.146252, 38.893539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603432, 36.930927, 38.839378>,  <37.755291, 36.572056, 38.749107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603432, 36.930927, 38.839378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407242, 0.056960, -0.911542,
		-0.830675, -0.437971, 0.343746,
		-0.379649, 0.897183, 0.225676,
		37.489536, 37.200081, 38.907082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083004, 36.456612, 38.642677>,  <37.755291, 36.572056, 38.749107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083004, 36.456612, 38.642677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136742, 36.852306, 38.619511>,  <37.168983, 37.089725, 38.605610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136742, 36.852306, 38.619511>,  <37.083004, 36.456612, 38.642677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136742, 36.852306, 38.619511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453761, 0.009456, -0.891073,
		-0.880938, 0.145994, 0.450149,
		0.134348, 0.989240, -0.057916,
		37.177048, 37.149078, 38.602135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452129, 36.714714, 38.523834>,  <37.083004, 36.456612, 38.642677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452129, 36.714714, 38.523834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718575, 36.987354, 38.402695>,  <36.878441, 37.150936, 38.330009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718575, 36.987354, 38.402695>,  <36.452129, 36.714714, 38.523834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718575, 36.987354, 38.402695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440937, 0.032378, -0.896954,
		-0.601554, 0.731012, 0.322108,
		0.666113, 0.681596, -0.302853,
		36.918407, 37.191833, 38.311840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107784, 37.200352, 38.071819>,  <36.452129, 36.714714, 38.523834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107784, 37.200352, 38.071819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477982, 37.304379, 37.961674>,  <36.700100, 37.366795, 37.895584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477982, 37.304379, 37.961674>,  <36.107784, 37.200352, 38.071819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477982, 37.304379, 37.961674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345486, 0.281661, -0.895157,
		-0.155238, 0.923598, 0.350525,
		0.925495, 0.260064, -0.275366,
		36.755630, 37.382397, 37.879063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010155, 37.845753, 37.672817>,  <36.107784, 37.200352, 38.071819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010155, 37.845753, 37.672817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388435, 37.739498, 37.597900>,  <36.615406, 37.675747, 37.552952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388435, 37.739498, 37.597900>,  <36.010155, 37.845753, 37.672817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388435, 37.739498, 37.597900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111744, 0.275389, -0.954816,
		0.305211, 0.923904, 0.230754,
		0.945706, -0.265635, -0.187292,
		36.672146, 37.659809, 37.541714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351154, 38.309750, 37.261932>,  <36.010155, 37.845753, 37.672817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351154, 38.309750, 37.261932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535545, 37.958271, 37.212307>,  <36.646179, 37.747383, 37.182529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535545, 37.958271, 37.212307>,  <36.351154, 38.309750, 37.261932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535545, 37.958271, 37.212307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003519, 0.141615, -0.989916,
		0.887405, 0.455892, 0.068374,
		0.460978, -0.878696, -0.124065,
		36.673840, 37.694664, 37.175087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826851, 38.438690, 36.694504>,  <36.351154, 38.309750, 37.261932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826851, 38.438690, 36.694504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801090, 38.039528, 36.697086>,  <36.785633, 37.800030, 36.698635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801090, 38.039528, 36.697086>,  <36.826851, 38.438690, 36.694504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801090, 38.039528, 36.697086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089807, -0.012238, -0.995884,
		0.993875, -0.063556, 0.090407,
		-0.064401, -0.997903, 0.006455,
		36.781769, 37.740158, 36.699024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331894, 38.264755, 36.140629>,  <36.826851, 38.438690, 36.694504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331894, 38.264755, 36.140629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092289, 37.952198, 36.210613>,  <36.948524, 37.764664, 36.252605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092289, 37.952198, 36.210613>,  <37.331894, 38.264755, 36.140629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092289, 37.952198, 36.210613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051295, -0.180611, -0.982216,
		0.799093, -0.597337, 0.068108,
		-0.599015, -0.781388, 0.174966,
		36.912586, 37.717781, 36.263103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484219, 37.734085, 35.712219>,  <37.331894, 38.264755, 36.140629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484219, 37.734085, 35.712219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099243, 37.685440, 35.809319>,  <36.868259, 37.656254, 35.867577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099243, 37.685440, 35.809319>,  <37.484219, 37.734085, 35.712219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099243, 37.685440, 35.809319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202844, -0.272238, -0.940607,
		0.180474, -0.954514, 0.237343,
		-0.962436, -0.121612, 0.242750,
		36.810513, 37.648956, 35.882145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359116, 37.042965, 35.542351>,  <37.484219, 37.734085, 35.712219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359116, 37.042965, 35.542351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029617, 37.269733, 35.539539>,  <36.831921, 37.405792, 35.537853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029617, 37.269733, 35.539539>,  <37.359116, 37.042965, 35.542351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029617, 37.269733, 35.539539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292651, -0.435775, -0.851150,
		-0.485597, -0.699072, 0.524876,
		-0.823742, 0.566921, -0.007027,
		36.782494, 37.439808, 35.537434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256687, 36.361240, 35.810169>,  <37.359116, 37.042965, 35.542351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256687, 36.361240, 35.810169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857609, 36.388218, 35.813248>,  <36.618164, 36.404404, 35.815094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857609, 36.388218, 35.813248>,  <37.256687, 36.361240, 35.810169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857609, 36.388218, 35.813248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038503, -0.468885, -0.882420,
		-0.055907, -0.880681, 0.470400,
		-0.997694, 0.067445, 0.007695,
		36.558300, 36.408451, 35.815556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496655, 35.932178, 35.240799>,  <37.256687, 36.361240, 35.810169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496655, 35.932178, 35.240799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867790, 36.028023, 35.126465>,  <38.090473, 36.085529, 35.057865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867790, 36.028023, 35.126465>,  <37.496655, 35.932178, 35.240799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867790, 36.028023, 35.126465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338007, -0.216183, 0.915978,
		0.157685, -0.946495, -0.281573,
		0.927840, 0.239609, -0.285833,
		38.146141, 36.099907, 35.040714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986019, 35.450405, 35.566109>,  <37.496655, 35.932178, 35.240799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986019, 35.450405, 35.566109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240738, 35.748684, 35.487698>,  <38.393570, 35.927650, 35.440651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240738, 35.748684, 35.487698>,  <37.986019, 35.450405, 35.566109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240738, 35.748684, 35.487698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394339, -0.096509, 0.913883,
		0.662560, -0.659260, -0.355514,
		0.636797, 0.745696, -0.196029,
		38.431778, 35.972393, 35.428890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544922, 35.163673, 35.675468>,  <37.986019, 35.450405, 35.566109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544922, 35.163673, 35.675468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603634, 35.555519, 35.730331>,  <38.638863, 35.790627, 35.763248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603634, 35.555519, 35.730331>,  <38.544922, 35.163673, 35.675468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603634, 35.555519, 35.730331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387506, -0.184524, 0.903211,
		0.910107, -0.079425, -0.406691,
		0.146781, 0.979614, 0.137158,
		38.647667, 35.849403, 35.771481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264587, 35.276054, 35.943424>,  <38.544922, 35.163673, 35.675468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264587, 35.276054, 35.943424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058372, 35.595764, 36.066963>,  <38.934643, 35.787590, 36.141087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058372, 35.595764, 36.066963>,  <39.264587, 35.276054, 35.943424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058372, 35.595764, 36.066963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491956, -0.019020, 0.870412,
		0.701573, 0.600665, -0.383403,
		-0.515533, 0.799275, 0.308845,
		38.903713, 35.835548, 36.159618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751980, 35.681255, 36.324150>,  <39.264587, 35.276054, 35.943424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751980, 35.681255, 36.324150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391891, 35.810719, 36.440670>,  <39.175838, 35.888397, 36.510582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391891, 35.810719, 36.440670>,  <39.751980, 35.681255, 36.324150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391891, 35.810719, 36.440670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323357, 0.048846, 0.945015,
		0.291632, 0.944913, -0.148629,
		-0.900217, 0.323657, 0.291299,
		39.121826, 35.907814, 36.528061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947639, 36.311943, 36.715939>,  <39.751980, 35.681255, 36.324150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947639, 36.311943, 36.715939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584705, 36.174793, 36.813244>,  <39.366943, 36.092503, 36.871628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584705, 36.174793, 36.813244>,  <39.947639, 36.311943, 36.715939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584705, 36.174793, 36.813244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275898, -0.049031, 0.959936,
		-0.317213, 0.938100, 0.139087,
		-0.907335, -0.342877, 0.243267,
		39.312504, 36.071930, 36.886223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967342, 36.426521, 37.353764>,  <39.947639, 36.311943, 36.715939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967342, 36.426521, 37.353764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625416, 36.219212, 37.364243>,  <39.420261, 36.094826, 37.370529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625416, 36.219212, 37.364243>,  <39.967342, 36.426521, 37.353764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625416, 36.219212, 37.364243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243635, -0.356241, 0.902072,
		-0.458186, 0.777487, 0.430790,
		-0.854814, -0.518273, 0.026198,
		39.368973, 36.063728, 37.372101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740356, 36.559765, 38.061150>,  <39.967342, 36.426521, 37.353764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740356, 36.559765, 38.061150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553970, 36.231663, 37.928448>,  <39.442139, 36.034801, 37.848827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553970, 36.231663, 37.928448>,  <39.740356, 36.559765, 38.061150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553970, 36.231663, 37.928448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001918, -0.375887, 0.926664,
		-0.884800, 0.431159, 0.176724,
		-0.465967, -0.820251, -0.331758,
		39.414181, 35.985588, 37.828918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226307, 36.422863, 38.654346>,  <39.740356, 36.559765, 38.061150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226307, 36.422863, 38.654346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250916, 36.098339, 38.421799>,  <39.265682, 35.903625, 38.282269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250916, 36.098339, 38.421799>,  <39.226307, 36.422863, 38.654346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250916, 36.098339, 38.421799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099936, -0.574537, 0.812354,
		-0.993090, -0.108077, 0.045733,
		0.061521, -0.811311, -0.581368,
		39.269371, 35.854946, 38.247387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755764, 35.915092, 38.941685>,  <39.226307, 36.422863, 38.654346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755764, 35.915092, 38.941685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020515, 35.710701, 38.722298>,  <39.179367, 35.588066, 38.590664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020515, 35.710701, 38.722298>,  <38.755764, 35.915092, 38.941685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020515, 35.710701, 38.722298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232850, -0.555325, 0.798370,
		-0.712531, -0.656133, -0.248574,
		0.661876, -0.510983, -0.548467,
		39.219078, 35.557407, 38.557758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613930, 35.177631, 39.004021>,  <38.755764, 35.915092, 38.941685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613930, 35.177631, 39.004021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997452, 35.194893, 38.891716>,  <39.227566, 35.205250, 38.824333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997452, 35.194893, 38.891716>,  <38.613930, 35.177631, 39.004021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997452, 35.194893, 38.891716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254927, -0.566771, 0.783443,
		-0.125318, -0.822744, -0.554426,
		0.958805, 0.043159, -0.280766,
		39.285095, 35.207840, 38.807487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880329, 34.548218, 39.209534>,  <38.613930, 35.177631, 39.004021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880329, 34.548218, 39.209534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220428, 34.753880, 39.164398>,  <39.424488, 34.877277, 39.137318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220428, 34.753880, 39.164398>,  <38.880329, 34.548218, 39.209534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220428, 34.753880, 39.164398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385045, -0.461321, 0.799326,
		0.358921, -0.723070, -0.590207,
		0.850245, 0.514152, -0.112837,
		39.475502, 34.908127, 39.130547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506813, 34.049480, 39.307140>,  <38.880329, 34.548218, 39.209534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506813, 34.049480, 39.307140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657352, 34.415413, 39.365715>,  <39.747677, 34.634972, 39.400860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657352, 34.415413, 39.365715>,  <39.506813, 34.049480, 39.307140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657352, 34.415413, 39.365715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551753, -0.348286, 0.757803,
		0.744264, -0.204403, -0.635838,
		0.376351, 0.914831, 0.146436,
		39.770256, 34.689861, 39.409645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276764, 34.008907, 39.414997>,  <39.506813, 34.049480, 39.307140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276764, 34.008907, 39.414997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135681, 34.335236, 39.598316>,  <40.051033, 34.531033, 39.708305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135681, 34.335236, 39.598316>,  <40.276764, 34.008907, 39.414997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135681, 34.335236, 39.598316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518734, -0.237155, 0.821384,
		0.778790, 0.527439, -0.339549,
		-0.352704, 0.815822, 0.458295,
		40.029869, 34.579983, 39.735806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810623, 33.663593, 39.004688>,  <40.276764, 34.008907, 39.414997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810623, 33.663593, 39.004688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812027, 33.266041, 38.960541>,  <40.812870, 33.027508, 38.934052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812027, 33.266041, 38.960541>,  <40.810623, 33.663593, 39.004688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812027, 33.266041, 38.960541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626763, 0.083809, -0.774689,
		0.779202, 0.071895, -0.622636,
		0.003514, -0.993885, -0.110365,
		40.813080, 32.967876, 38.927433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670292, 33.611561, 38.271900>,  <40.810623, 33.663593, 39.004688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670292, 33.611561, 38.271900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582233, 33.236965, 38.381104>,  <40.529400, 33.012207, 38.446625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582233, 33.236965, 38.381104>,  <40.670292, 33.611561, 38.271900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582233, 33.236965, 38.381104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576876, -0.100700, -0.810601,
		0.786608, -0.335938, -0.518067,
		-0.220143, -0.936485, 0.273006,
		40.516190, 32.956020, 38.463005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663849, 33.220112, 37.593868>,  <40.670292, 33.611561, 38.271900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663849, 33.220112, 37.593868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460522, 33.031445, 37.882072>,  <40.338524, 32.918243, 38.054996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460522, 33.031445, 37.882072>,  <40.663849, 33.220112, 37.593868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460522, 33.031445, 37.882072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685980, -0.284033, -0.669892,
		0.520620, -0.834776, -0.179179,
		-0.508317, -0.471672, 0.720513,
		40.308025, 32.889942, 38.098225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492817, 32.505043, 37.311157>,  <40.663849, 33.220112, 37.593868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492817, 32.505043, 37.311157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249908, 32.568886, 37.622475>,  <40.104164, 32.607193, 37.809265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249908, 32.568886, 37.622475>,  <40.492817, 32.505043, 37.311157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249908, 32.568886, 37.622475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794451, -0.131979, -0.592814,
		0.008106, -0.978320, 0.206941,
		-0.607274, 0.159599, 0.778298,
		40.067726, 32.616768, 37.855965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863796, 31.987349, 37.260712>,  <40.492817, 32.505043, 37.311157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863796, 31.987349, 37.260712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697918, 32.253338, 37.509174>,  <39.598389, 32.412930, 37.658253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697918, 32.253338, 37.509174>,  <39.863796, 31.987349, 37.260712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697918, 32.253338, 37.509174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839956, -0.017176, -0.542383,
		-0.350001, -0.746670, 0.565670,
		-0.414697, 0.664972, 0.621158,
		39.573509, 32.452831, 37.695522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270741, 31.699331, 37.462303>,  <39.863796, 31.987349, 37.260712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270741, 31.699331, 37.462303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216572, 32.090233, 37.527592>,  <39.184071, 32.324772, 37.566765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216572, 32.090233, 37.527592>,  <39.270741, 31.699331, 37.462303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216572, 32.090233, 37.527592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927188, -0.066925, -0.368570,
		-0.349263, -0.201244, 0.915159,
		-0.135420, 0.977252, 0.163217,
		39.175945, 32.383408, 37.576557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625996, 31.722023, 37.754425>,  <39.270741, 31.699331, 37.462303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625996, 31.722023, 37.754425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686977, 32.105461, 37.658211>,  <38.723564, 32.335526, 37.600483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686977, 32.105461, 37.658211>,  <38.625996, 31.722023, 37.754425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686977, 32.105461, 37.658211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955359, 0.080618, -0.284235,
		-0.253075, 0.273126, 0.928092,
		0.152453, 0.958594, -0.240531,
		38.732712, 32.393040, 37.586052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990574, 31.989964, 37.929432>,  <38.625996, 31.722023, 37.754425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990574, 31.989964, 37.929432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169235, 32.255924, 37.689964>,  <38.276432, 32.415501, 37.546284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169235, 32.255924, 37.689964>,  <37.990574, 31.989964, 37.929432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169235, 32.255924, 37.689964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890429, 0.264987, -0.370024,
		-0.087389, 0.698347, 0.710404,
		0.446653, 0.664901, -0.598671,
		38.303230, 32.455395, 37.510365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621525, 32.598774, 38.061031>,  <37.990574, 31.989964, 37.929432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621525, 32.598774, 38.061031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820473, 32.683712, 37.724571>,  <37.939842, 32.734673, 37.522694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820473, 32.683712, 37.724571>,  <37.621525, 32.598774, 38.061031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820473, 32.683712, 37.724571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835072, 0.379955, -0.397855,
		0.235119, 0.900303, 0.366296,
		0.497366, 0.212341, -0.841153,
		37.969681, 32.747414, 37.472225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327023, 33.318054, 37.847374>,  <37.621525, 32.598774, 38.061031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327023, 33.318054, 37.847374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474972, 33.106754, 37.541656>,  <37.563740, 32.979977, 37.358227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474972, 33.106754, 37.541656>,  <37.327023, 33.318054, 37.847374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474972, 33.106754, 37.541656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799477, 0.238126, -0.551481,
		0.473318, 0.815015, -0.334246,
		0.369873, -0.528248, -0.764296,
		37.585934, 32.948280, 37.312366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364899, 33.743748, 37.262321>,  <37.327023, 33.318054, 37.847374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364899, 33.743748, 37.262321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370441, 33.383541, 37.088478>,  <37.373768, 33.167419, 36.984173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370441, 33.383541, 37.088478>,  <37.364899, 33.743748, 37.262321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370441, 33.383541, 37.088478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760118, 0.272903, -0.589699,
		0.649637, 0.338524, -0.680715,
		0.013858, -0.900514, -0.434606,
		37.374599, 33.113388, 36.958096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375057, 33.830597, 36.440403>,  <37.364899, 33.743748, 37.262321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375057, 33.830597, 36.440403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250114, 33.456951, 36.509525>,  <37.175148, 33.232765, 36.550999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250114, 33.456951, 36.509525>,  <37.375057, 33.830597, 36.440403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250114, 33.456951, 36.509525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737565, 0.123830, -0.663825,
		0.598690, -0.334807, -0.727650,
		-0.312358, -0.934115, 0.172806,
		37.156406, 33.176716, 36.561367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<43.657181, 32.674358, 41.332020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.426838, 32.362282, 41.429745>,  <43.288631, 32.175037, 41.488380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.426838, 32.362282, 41.429745>,  <43.657181, 32.674358, 41.332020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.426838, 32.362282, 41.429745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436394, 0.040632, -0.898838,
		0.691336, -0.624223, -0.363868,
		-0.575860, -0.780189, 0.244317,
		43.254082, 32.128223, 41.503040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773930, 32.180538, 40.728382>,  <43.657181, 32.674358, 41.332020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773930, 32.180538, 40.728382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.427723, 32.137184, 40.923988>,  <43.220001, 32.111172, 41.041351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.427723, 32.137184, 40.923988>,  <43.773930, 32.180538, 40.728382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427723, 32.137184, 40.923988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499100, 0.104222, -0.860254,
		0.042264, -0.988632, -0.144296,
		-0.865513, -0.108376, 0.489021,
		43.168068, 32.104668, 41.070694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405739, 31.707712, 40.338440>,  <43.773930, 32.180538, 40.728382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405739, 31.707712, 40.338440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.126373, 31.872742, 40.572365>,  <42.958755, 31.971760, 40.712719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.126373, 31.872742, 40.572365>,  <43.405739, 31.707712, 40.338440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126373, 31.872742, 40.572365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638833, 0.009011, -0.769293,
		-0.322659, -0.910880, 0.257272,
		-0.698415, 0.412573, 0.584808,
		42.916847, 31.996513, 40.747807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745758, 31.322691, 40.185989>,  <43.405739, 31.707712, 40.338440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745758, 31.322691, 40.185989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.624249, 31.673990, 40.333721>,  <42.551342, 31.884769, 40.422359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.624249, 31.673990, 40.333721>,  <42.745758, 31.322691, 40.185989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624249, 31.673990, 40.333721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631898, 0.104397, -0.767988,
		-0.713042, -0.466668, 0.523252,
		-0.303770, 0.878250, 0.369326,
		42.533119, 31.937466, 40.444519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940266, 31.301062, 40.150078>,  <42.745758, 31.322691, 40.185989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940266, 31.301062, 40.150078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.048515, 31.682991, 40.199181>,  <42.113464, 31.912149, 40.228642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.048515, 31.682991, 40.199181>,  <41.940266, 31.301062, 40.150078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048515, 31.682991, 40.199181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796146, 0.293673, -0.529063,
		-0.541213, 0.045447, 0.839656,
		0.270628, 0.954825, 0.122757,
		42.129704, 31.969439, 40.236008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416759, 31.728487, 40.414032>,  <41.940266, 31.301062, 40.150078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416759, 31.728487, 40.414032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.652103, 32.003994, 40.244591>,  <41.793308, 32.169296, 40.142925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.652103, 32.003994, 40.244591>,  <41.416759, 31.728487, 40.414032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652103, 32.003994, 40.244591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777941, 0.339264, -0.528874,
		-0.220557, 0.640704, 0.735427,
		0.588356, 0.688766, -0.423603,
		41.828609, 32.210625, 40.117512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962765, 32.168968, 40.319466>,  <41.416759, 31.728487, 40.414032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962765, 32.168968, 40.319466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.262741, 32.300709, 40.089993>,  <41.442726, 32.379753, 39.952309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.262741, 32.300709, 40.089993>,  <40.962765, 32.168968, 40.319466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262741, 32.300709, 40.089993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656588, 0.265084, -0.706132,
		-0.080487, 0.906234, 0.415043,
		0.749942, 0.329347, -0.573687,
		41.487724, 32.399513, 39.917885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777718, 32.784645, 40.052505>,  <40.962765, 32.168968, 40.319466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777718, 32.784645, 40.052505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.066257, 32.684483, 39.794220>,  <41.239384, 32.624386, 39.639248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.066257, 32.684483, 39.794220>,  <40.777718, 32.784645, 40.052505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066257, 32.684483, 39.794220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582625, 0.284649, -0.761264,
		0.374430, 0.925348, 0.059437,
		0.721353, -0.250410, -0.645712,
		41.282665, 32.609360, 39.600506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969322, 33.462322, 39.654854>,  <40.777718, 32.784645, 40.052505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969322, 33.462322, 39.654854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.029644, 33.124321, 39.449635>,  <41.065838, 32.921520, 39.326504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.029644, 33.124321, 39.449635>,  <40.969322, 33.462322, 39.654854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029644, 33.124321, 39.449635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576610, 0.346370, -0.739965,
		0.802981, 0.407423, -0.435004,
		0.150806, -0.845006, -0.513053,
		41.074886, 32.870819, 39.295719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749279, 34.014217, 40.011341>,  <40.969322, 33.462322, 39.654854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749279, 34.014217, 40.011341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.473751, 34.288437, 40.105610>,  <40.308434, 34.452969, 40.162170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.473751, 34.288437, 40.105610>,  <40.749279, 34.014217, 40.011341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473751, 34.288437, 40.105610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293757, -0.033244, 0.955302,
		0.662744, 0.727264, -0.178487,
		-0.688823, 0.685552, 0.235672,
		40.267105, 34.494102, 40.176311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062424, 34.619347, 40.358353>,  <40.749279, 34.014217, 40.011341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062424, 34.619347, 40.358353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.676865, 34.592941, 40.461536>,  <40.445530, 34.577099, 40.523449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.676865, 34.592941, 40.461536>,  <41.062424, 34.619347, 40.358353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676865, 34.592941, 40.461536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260917, -0.040759, 0.964500,
		-0.053158, 0.996986, 0.056512,
		-0.963897, -0.066016, 0.257964,
		40.387695, 34.573135, 40.538925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944485, 35.124367, 40.970421>,  <41.062424, 34.619347, 40.358353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944485, 35.124367, 40.970421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.630943, 34.875992, 40.972195>,  <40.442818, 34.726967, 40.973259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.630943, 34.875992, 40.972195>,  <40.944485, 35.124367, 40.970421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630943, 34.875992, 40.972195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114430, -0.137429, 0.983880,
		-0.610315, 0.771722, 0.178777,
		-0.783851, -0.620934, 0.004433,
		40.395786, 34.689713, 40.973526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509846, 35.293320, 41.610619>,  <40.944485, 35.124367, 40.970421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509846, 35.293320, 41.610619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.410091, 34.923214, 41.496284>,  <40.350239, 34.701153, 41.427685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.410091, 34.923214, 41.496284>,  <40.509846, 35.293320, 41.610619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410091, 34.923214, 41.496284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068041, -0.311175, 0.947914,
		-0.966012, 0.216943, 0.140556,
		-0.249381, -0.925260, -0.285838,
		40.335278, 34.645638, 41.410534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068726, 35.072975, 42.131153>,  <40.509846, 35.293320, 41.610619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068726, 35.072975, 42.131153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.190594, 34.737854, 41.949932>,  <40.263714, 34.536781, 41.841202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.190594, 34.737854, 41.949932>,  <40.068726, 35.072975, 42.131153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190594, 34.737854, 41.949932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263016, -0.383162, 0.885443,
		-0.915422, -0.388929, 0.103618,
		0.304673, -0.837807, -0.453049,
		40.281994, 34.486511, 41.814018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925083, 34.533222, 42.572460>,  <40.068726, 35.072975, 42.131153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925083, 34.533222, 42.572460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.231834, 34.385815, 42.362282>,  <40.415886, 34.297371, 42.236176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.231834, 34.385815, 42.362282>,  <39.925083, 34.533222, 42.572460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231834, 34.385815, 42.362282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412643, -0.343943, 0.843462,
		-0.491559, -0.863652, -0.111692,
		0.766873, -0.368523, -0.525448,
		40.461895, 34.275257, 42.204647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117676, 33.920387, 42.815701>,  <39.925083, 34.533222, 42.572460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117676, 33.920387, 42.815701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.458260, 34.016174, 42.629082>,  <40.662609, 34.073647, 42.517109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.458260, 34.016174, 42.629082>,  <40.117676, 33.920387, 42.815701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458260, 34.016174, 42.629082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524157, -0.360555, 0.771531,
		0.016544, -0.901473, -0.432520,
		0.851461, 0.239472, -0.466548,
		40.713699, 34.088017, 42.489117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544327, 33.372208, 42.962704>,  <40.117676, 33.920387, 42.815701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544327, 33.372208, 42.962704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.806263, 33.641228, 42.824799>,  <40.963425, 33.802639, 42.742058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.806263, 33.641228, 42.824799>,  <40.544327, 33.372208, 42.962704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806263, 33.641228, 42.824799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633168, -0.239132, 0.736148,
		0.412656, -0.700348, -0.582432,
		0.654838, 0.672553, -0.344759,
		41.002716, 33.842995, 42.721371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171089, 33.067230, 43.011589>,  <40.544327, 33.372208, 42.962704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171089, 33.067230, 43.011589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.245975, 33.460075, 43.003616>,  <41.290905, 33.695782, 42.998833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.245975, 33.460075, 43.003616>,  <41.171089, 33.067230, 43.011589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245975, 33.460075, 43.003616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655691, -0.109826, 0.746998,
		0.731451, -0.152918, -0.664527,
		0.187212, 0.982117, -0.019934,
		41.302139, 33.754711, 42.997635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891941, 33.205296, 43.119900>,  <41.171089, 33.067230, 43.011589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891941, 33.205296, 43.119900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.739288, 33.559933, 43.224449>,  <41.647697, 33.772713, 43.287178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.739288, 33.559933, 43.224449>,  <41.891941, 33.205296, 43.119900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739288, 33.559933, 43.224449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569802, 0.003005, 0.821777,
		0.727795, 0.462544, -0.506328,
		-0.381629, 0.886591, 0.261372,
		41.624798, 33.825909, 43.302860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448017, 33.463547, 43.364986>,  <41.891941, 33.205296, 43.119900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448017, 33.463547, 43.364986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.162331, 33.701813, 43.511993>,  <41.990917, 33.844772, 43.600197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.162331, 33.701813, 43.511993>,  <42.448017, 33.463547, 43.364986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162331, 33.701813, 43.511993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500745, 0.067993, 0.862920,
		0.489022, 0.800350, -0.346839,
		-0.714221, 0.595665, 0.367521,
		41.948063, 33.880512, 43.622250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766232, 34.095333, 43.449413>,  <42.448017, 33.463547, 43.364986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766232, 34.095333, 43.449413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.443211, 34.070400, 43.684010>,  <42.249397, 34.055443, 43.824768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.443211, 34.070400, 43.684010>,  <42.766232, 34.095333, 43.449413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443211, 34.070400, 43.684010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560927, 0.226142, 0.796380,
		-0.182269, 0.972098, -0.147658,
		-0.807551, -0.062330, 0.586494,
		42.200947, 34.051701, 43.859959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849400, 34.716713, 43.747101>,  <42.766232, 34.095333, 43.449413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849400, 34.716713, 43.747101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.628544, 34.473644, 43.975445>,  <42.496033, 34.327805, 44.112450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.628544, 34.473644, 43.975445>,  <42.849400, 34.716713, 43.747101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628544, 34.473644, 43.975445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425804, 0.383146, 0.819689,
		-0.716824, 0.695655, 0.047200,
		-0.552136, -0.607671, 0.570861,
		42.462902, 34.291344, 44.146702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728741, 35.170387, 44.304863>,  <42.849400, 34.716713, 43.747101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728741, 35.170387, 44.304863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.659927, 34.795738, 44.426945>,  <42.618641, 34.570950, 44.500195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.659927, 34.795738, 44.426945>,  <42.728741, 35.170387, 44.304863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659927, 34.795738, 44.426945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458410, 0.198120, 0.866377,
		-0.871932, 0.288953, 0.395273,
		-0.172030, -0.936619, 0.305206,
		42.608318, 34.514751, 44.518505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.836147, 32.877563, 46.233715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.219982, 32.916531, 46.128109>,  <37.450283, 32.939911, 46.064743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.219982, 32.916531, 46.128109>,  <36.836147, 32.877563, 46.233715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219982, 32.916531, 46.128109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280788, 0.268829, -0.921352,
		-0.018778, 0.958249, 0.285318,
		0.959586, 0.097415, -0.264017,
		37.507858, 32.945755, 46.048904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852127, 33.494286, 45.986561>,  <36.836147, 32.877563, 46.233715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852127, 33.494286, 45.986561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.179554, 33.356422, 45.802753>,  <37.376011, 33.273705, 45.692471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.179554, 33.356422, 45.802753>,  <36.852127, 33.494286, 45.986561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179554, 33.356422, 45.802753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360244, 0.315060, -0.878044,
		0.447400, 0.884278, 0.133737,
		0.818570, -0.344659, -0.459514,
		37.425125, 33.253025, 45.664898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264175, 34.020897, 45.537384>,  <36.852127, 33.494286, 45.986561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264175, 34.020897, 45.537384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.318161, 33.649757, 45.398315>,  <37.350552, 33.427074, 45.314873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.318161, 33.649757, 45.398315>,  <37.264175, 34.020897, 45.537384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318161, 33.649757, 45.398315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297557, 0.296734, -0.907419,
		0.945116, 0.225924, -0.236039,
		0.134967, -0.927851, -0.347673,
		37.358650, 33.371403, 45.294014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418270, 34.106335, 44.866402>,  <37.264175, 34.020897, 45.537384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418270, 34.106335, 44.866402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.340862, 33.714008, 44.856956>,  <37.294418, 33.478615, 44.851288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.340862, 33.714008, 44.856956>,  <37.418270, 34.106335, 44.866402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340862, 33.714008, 44.856956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185018, 0.060124, -0.980894,
		0.963492, -0.185457, -0.193104,
		-0.193524, -0.980811, -0.023616,
		37.282806, 33.419765, 44.849873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724174, 33.855404, 44.244682>,  <37.418270, 34.106335, 44.866402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724174, 33.855404, 44.244682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.457245, 33.580448, 44.359348>,  <37.297089, 33.415474, 44.428146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.457245, 33.580448, 44.359348>,  <37.724174, 33.855404, 44.244682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457245, 33.580448, 44.359348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273835, -0.131485, -0.952747,
		0.692601, -0.714287, -0.100489,
		-0.667321, -0.687391, 0.286663,
		37.257050, 33.374229, 44.445347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862957, 33.369091, 43.829918>,  <37.724174, 33.855404, 44.244682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862957, 33.369091, 43.829918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.486031, 33.328030, 43.957359>,  <37.259876, 33.303394, 44.033825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.486031, 33.328030, 43.957359>,  <37.862957, 33.369091, 43.829918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486031, 33.328030, 43.957359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280812, -0.275588, -0.919345,
		0.182173, -0.955779, 0.230865,
		-0.942315, -0.102650, 0.318599,
		37.203335, 33.297234, 44.052940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539589, 32.806026, 43.454762>,  <37.862957, 33.369091, 43.829918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539589, 32.806026, 43.454762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.203331, 32.960842, 43.606293>,  <37.001575, 33.053734, 43.697212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.203331, 32.960842, 43.606293>,  <37.539589, 32.806026, 43.454762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203331, 32.960842, 43.606293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451449, -0.114393, -0.884934,
		-0.299173, -0.914938, 0.270895,
		-0.840648, 0.387043, 0.378825,
		36.951138, 33.076954, 43.719940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935856, 32.332039, 43.332951>,  <37.539589, 32.806026, 43.454762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935856, 32.332039, 43.332951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.782413, 32.692150, 43.415264>,  <36.690346, 32.908218, 43.464653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.782413, 32.692150, 43.415264>,  <36.935856, 32.332039, 43.332951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782413, 32.692150, 43.415264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600719, -0.074016, -0.796026,
		-0.701413, -0.428979, 0.569207,
		-0.383609, 0.900277, 0.205780,
		36.667332, 32.962234, 43.476997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102436, 32.295078, 43.279205>,  <36.935856, 32.332039, 43.332951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102436, 32.295078, 43.279205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.215801, 32.676399, 43.237457>,  <36.283821, 32.905193, 43.212410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.215801, 32.676399, 43.237457>,  <36.102436, 32.295078, 43.279205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215801, 32.676399, 43.237457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746039, 0.150787, -0.648605,
		-0.602579, 0.261687, 0.753935,
		0.283415, 0.953301, -0.104368,
		36.300827, 32.962391, 43.206146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536362, 32.580193, 43.045898>,  <36.102436, 32.295078, 43.279205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536362, 32.580193, 43.045898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.798183, 32.865261, 42.944981>,  <35.955276, 33.036301, 42.884430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.798183, 32.865261, 42.944981>,  <35.536362, 32.580193, 43.045898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798183, 32.865261, 42.944981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653067, 0.364886, -0.663597,
		-0.380867, 0.599129, 0.704262,
		0.654556, 0.712673, -0.252298,
		35.994549, 33.079063, 42.869289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191296, 33.200161, 42.994362>,  <35.536362, 32.580193, 43.045898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191296, 33.200161, 42.994362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.520714, 33.258930, 42.775204>,  <35.718365, 33.294193, 42.643707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.520714, 33.258930, 42.775204>,  <35.191296, 33.200161, 42.994362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520714, 33.258930, 42.775204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548295, 0.453809, -0.702446,
		0.145434, 0.878903, 0.454290,
		0.823542, 0.146926, -0.547897,
		35.767776, 33.303009, 42.610836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101974, 33.823444, 42.665092>,  <35.191296, 33.200161, 42.994362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101974, 33.823444, 42.665092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403133, 33.661430, 42.457600>,  <35.583828, 33.564220, 42.333103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403133, 33.661430, 42.457600>,  <35.101974, 33.823444, 42.665092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403133, 33.661430, 42.457600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409338, 0.328991, -0.851004,
		0.515348, 0.853059, 0.081900,
		0.752901, -0.405038, -0.518734,
		35.629005, 33.539917, 42.301979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346329, 34.395706, 42.354744>,  <35.101974, 33.823444, 42.665092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346329, 34.395706, 42.354744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.410416, 34.059978, 42.146946>,  <35.448868, 33.858543, 42.022266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.410416, 34.059978, 42.146946>,  <35.346329, 34.395706, 42.354744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410416, 34.059978, 42.146946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534416, 0.368723, -0.760554,
		0.829897, 0.399480, -0.389470,
		0.160219, -0.839321, -0.519491,
		35.458481, 33.808182, 41.991100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405205, 34.630863, 41.642490>,  <35.346329, 34.395706, 42.354744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405205, 34.630863, 41.642490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.356037, 34.236607, 41.596172>,  <35.326534, 34.000053, 41.568382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.356037, 34.236607, 41.596172>,  <35.405205, 34.630863, 41.642490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356037, 34.236607, 41.596172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366658, 0.153530, -0.917600,
		0.922200, -0.070334, -0.380264,
		-0.122921, -0.985638, -0.115796,
		35.319160, 33.940914, 41.561432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779510, 35.224243, 41.128113>,  <35.405205, 34.630863, 41.642490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779510, 35.224243, 41.128113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.586922, 35.556141, 41.241043>,  <35.471367, 35.755280, 41.308800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.586922, 35.556141, 41.241043>,  <35.779510, 35.224243, 41.128113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586922, 35.556141, 41.241043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591525, 0.069934, 0.803248,
		0.646748, 0.553742, -0.524487,
		-0.481472, 0.829746, 0.282323,
		35.442478, 35.805065, 41.325741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249477, 35.900139, 41.260525>,  <35.779510, 35.224243, 41.128113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249477, 35.900139, 41.260525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930904, 35.952717, 41.496632>,  <35.739761, 35.984264, 41.638294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930904, 35.952717, 41.496632>,  <36.249477, 35.900139, 41.260525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930904, 35.952717, 41.496632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592132, -0.028666, 0.805331,
		0.122778, 0.990909, -0.055002,
		-0.796433, 0.131445, 0.590268,
		35.691975, 35.992149, 41.673714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481808, 36.416355, 41.746204>,  <36.249477, 35.900139, 41.260525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481808, 36.416355, 41.746204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.135727, 36.334282, 41.929214>,  <35.928078, 36.285038, 42.039021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.135727, 36.334282, 41.929214>,  <36.481808, 36.416355, 41.746204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135727, 36.334282, 41.929214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470604, -0.017318, 0.882175,
		-0.173086, 0.978570, 0.111544,
		-0.865201, -0.205186, 0.457521,
		35.876167, 36.272728, 42.066471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367535, 36.979374, 42.213551>,  <36.481808, 36.416355, 41.746204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367535, 36.979374, 42.213551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.125935, 36.688820, 42.344730>,  <35.980976, 36.514488, 42.423439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.125935, 36.688820, 42.344730>,  <36.367535, 36.979374, 42.213551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125935, 36.688820, 42.344730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434545, 0.044794, 0.899535,
		-0.668101, 0.685825, 0.288593,
		-0.603996, -0.726387, 0.327949,
		35.944736, 36.470905, 42.443115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972687, 37.110661, 42.793427>,  <36.367535, 36.979374, 42.213551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972687, 37.110661, 42.793427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.030464, 36.714954, 42.802361>,  <36.065128, 36.477531, 42.807720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.030464, 36.714954, 42.802361>,  <35.972687, 37.110661, 42.793427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030464, 36.714954, 42.802361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415150, 0.081070, 0.906134,
		-0.898214, -0.121610, 0.422402,
		0.144439, -0.989262, 0.022332,
		36.073795, 36.418175, 42.809059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927334, 36.989532, 43.489994>,  <35.972687, 37.110661, 42.793427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927334, 36.989532, 43.489994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.095562, 36.658699, 43.340839>,  <36.196499, 36.460197, 43.251347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.095562, 36.658699, 43.340839>,  <35.927334, 36.989532, 43.489994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095562, 36.658699, 43.340839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632052, -0.027750, 0.774429,
		-0.650867, -0.561389, 0.511091,
		0.420573, -0.827086, -0.372889,
		36.221733, 36.410572, 43.228973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122223, 36.577343, 44.042538>,  <35.927334, 36.989532, 43.489994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122223, 36.577343, 44.042538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.336246, 36.376888, 43.770485>,  <36.464661, 36.256615, 43.607254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.336246, 36.376888, 43.770485>,  <36.122223, 36.577343, 44.042538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336246, 36.376888, 43.770485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649778, -0.270390, 0.710407,
		-0.539913, -0.822040, 0.180955,
		0.535054, -0.501139, -0.680130,
		36.496761, 36.226547, 43.566444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273705, 35.960140, 44.342781>,  <36.122223, 36.577343, 44.042538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273705, 35.960140, 44.342781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.547157, 36.028416, 44.058949>,  <36.711231, 36.069382, 43.888649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.547157, 36.028416, 44.058949>,  <36.273705, 35.960140, 44.342781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547157, 36.028416, 44.058949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728223, -0.095147, 0.678704,
		0.048332, -0.980721, -0.189344,
		0.683635, 0.170688, -0.709584,
		36.752247, 36.079620, 43.846073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715549, 35.539925, 44.596443>,  <36.273705, 35.960140, 44.342781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715549, 35.539925, 44.596443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.954067, 35.718758, 44.329742>,  <37.097176, 35.826057, 44.169724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.954067, 35.718758, 44.329742>,  <36.715549, 35.539925, 44.596443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954067, 35.718758, 44.329742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789419, -0.175733, 0.588162,
		0.145785, -0.877062, -0.457721,
		0.596292, 0.447079, -0.666751,
		37.132954, 35.852882, 44.129719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410473, 35.146343, 44.462883>,  <36.715549, 35.539925, 44.596443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410473, 35.146343, 44.462883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.479347, 35.531300, 44.378826>,  <37.520672, 35.762272, 44.328392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.479347, 35.531300, 44.378826>,  <37.410473, 35.146343, 44.462883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479347, 35.531300, 44.378826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785064, -0.005209, 0.619393,
		0.595002, -0.271627, -0.756433,
		0.172184, 0.962389, -0.210145,
		37.531002, 35.820015, 44.315784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139420, 35.198212, 44.169907>,  <37.410473, 35.146343, 44.462883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139420, 35.198212, 44.169907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.021606, 35.539291, 44.342491>,  <37.950916, 35.743938, 44.446041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.021606, 35.539291, 44.342491>,  <38.139420, 35.198212, 44.169907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021606, 35.539291, 44.342491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724868, -0.094869, 0.682324,
		0.622747, 0.513719, -0.590151,
		-0.294536, 0.852697, 0.431458,
		37.933247, 35.795101, 44.471928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643761, 35.399628, 44.434395>,  <38.139420, 35.198212, 44.169907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643761, 35.399628, 44.434395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.438721, 35.694729, 44.610104>,  <38.315697, 35.871788, 44.715527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.438721, 35.694729, 44.610104>,  <38.643761, 35.399628, 44.434395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438721, 35.694729, 44.610104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632649, -0.021362, 0.774144,
		0.580510, 0.674734, -0.455788,
		-0.512605, 0.737752, 0.439270,
		38.284939, 35.916054, 44.741886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170891, 35.866909, 44.661919>,  <38.643761, 35.399628, 44.434395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170891, 35.866909, 44.661919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.829964, 35.894989, 44.869232>,  <38.625408, 35.911839, 44.993622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.829964, 35.894989, 44.869232>,  <39.170891, 35.866909, 44.661919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829964, 35.894989, 44.869232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506045, -0.139725, 0.851114,
		0.132170, 0.987698, 0.083564,
		-0.852320, 0.070204, 0.518287,
		38.574268, 35.916050, 45.024719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374790, 36.125114, 45.226357>,  <39.170891, 35.866909, 44.661919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374790, 36.125114, 45.226357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.017605, 35.971462, 45.320213>,  <38.803295, 35.879269, 45.376526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.017605, 35.971462, 45.320213>,  <39.374790, 36.125114, 45.226357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017605, 35.971462, 45.320213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350465, -0.266195, 0.897950,
		-0.282472, 0.884071, 0.372328,
		-0.892963, -0.384134, 0.234643,
		38.749718, 35.856220, 45.390606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270790, 36.860367, 45.345108>,  <39.374790, 36.125114, 45.226357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270790, 36.860367, 45.345108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.659145, 36.913250, 45.265209>,  <39.892159, 36.944981, 45.217270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.659145, 36.913250, 45.265209>,  <39.270790, 36.860367, 45.345108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659145, 36.913250, 45.265209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227872, 0.252688, -0.940331,
		-0.073848, 0.958472, 0.275458,
		0.970887, 0.132211, -0.199749,
		39.950413, 36.952911, 45.205284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216808, 37.394730, 44.934860>,  <39.270790, 36.860367, 45.345108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216808, 37.394730, 44.934860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.580925, 37.248695, 44.856796>,  <39.799393, 37.161076, 44.809959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.580925, 37.248695, 44.856796>,  <39.216808, 37.394730, 44.934860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580925, 37.248695, 44.856796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114184, 0.231709, -0.966060,
		0.397918, 0.901676, 0.169235,
		0.910287, -0.365089, -0.195158,
		39.854012, 37.139168, 44.798248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610283, 37.915585, 44.509686>,  <39.216808, 37.394730, 44.934860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610283, 37.915585, 44.509686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.754574, 37.546696, 44.454010>,  <39.841148, 37.325363, 44.420605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.754574, 37.546696, 44.454010>,  <39.610283, 37.915585, 44.509686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754574, 37.546696, 44.454010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286393, 0.032503, -0.957561,
		0.887612, 0.385282, -0.252394,
		0.360727, -0.922226, -0.139193,
		39.862793, 37.270027, 44.412251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119202, 37.912949, 43.914711>,  <39.610283, 37.915585, 44.509686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119202, 37.912949, 43.914711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.994507, 37.534599, 43.950832>,  <39.919689, 37.307590, 43.972504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.994507, 37.534599, 43.950832>,  <40.119202, 37.912949, 43.914711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994507, 37.534599, 43.950832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037757, -0.082631, -0.995865,
		0.949419, -0.313854, -0.009954,
		-0.311733, -0.945869, 0.090302,
		39.900986, 37.250839, 43.977924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570644, 37.609791, 43.459217>,  <40.119202, 37.912949, 43.914711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570644, 37.609791, 43.459217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.272766, 37.345596, 43.497555>,  <40.094040, 37.187080, 43.520557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.272766, 37.345596, 43.497555>,  <40.570644, 37.609791, 43.459217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272766, 37.345596, 43.497555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230158, 0.119353, -0.965806,
		0.626467, -0.741287, -0.240898,
		-0.744692, -0.660491, 0.095842,
		40.049358, 37.147449, 43.526306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642639, 37.130856, 42.920193>,  <40.570644, 37.609791, 43.459217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642639, 37.130856, 42.920193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.260715, 37.095436, 43.033688>,  <40.031563, 37.074184, 43.101784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.260715, 37.095436, 43.033688>,  <40.642639, 37.130856, 42.920193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260715, 37.095436, 43.033688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296932, 0.241469, -0.923864,
		0.013292, -0.966360, -0.256848,
		-0.954806, -0.088547, 0.283734,
		39.974274, 37.068871, 43.118809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339066, 36.677094, 42.424374>,  <40.642639, 37.130856, 42.920193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339066, 36.677094, 42.424374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.032757, 36.865131, 42.599922>,  <39.848972, 36.977955, 42.705254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.032757, 36.865131, 42.599922>,  <40.339066, 36.677094, 42.424374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032757, 36.865131, 42.599922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367063, 0.240865, -0.898470,
		-0.528073, -0.849116, -0.011894,
		-0.765770, 0.470091, 0.438874,
		39.803024, 37.006157, 42.731583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701397, 36.397999, 42.052670>,  <40.339066, 36.677094, 42.424374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701397, 36.397999, 42.052670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.576347, 36.730461, 42.236603>,  <39.501316, 36.929939, 42.346962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.576347, 36.730461, 42.236603>,  <39.701397, 36.397999, 42.052670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576347, 36.730461, 42.236603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545406, 0.239273, -0.803294,
		-0.777686, -0.501928, 0.378514,
		-0.312627, 0.831154, 0.459833,
		39.482559, 36.979809, 42.374554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836361, 36.472820, 42.136314>,  <39.701397, 36.397999, 42.052670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836361, 36.472820, 42.136314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.992592, 36.840500, 42.156372>,  <39.086330, 37.061108, 42.168407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.992592, 36.840500, 42.156372>,  <38.836361, 36.472820, 42.136314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992592, 36.840500, 42.156372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611626, 0.299827, -0.732132,
		-0.688013, 0.255285, 0.679314,
		0.390579, 0.919203, 0.050146,
		39.109764, 37.116261, 42.171417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257931, 36.956581, 42.228245>,  <38.836361, 36.472820, 42.136314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257931, 36.956581, 42.228245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.555660, 37.168896, 42.066132>,  <38.734299, 37.296284, 41.968864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.555660, 37.168896, 42.066132>,  <38.257931, 36.956581, 42.228245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555660, 37.168896, 42.066132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571042, 0.191192, -0.798346,
		-0.346262, 0.825660, 0.445408,
		0.744321, 0.530784, -0.405284,
		38.778957, 37.328133, 41.944546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907883, 37.432083, 41.964214>,  <38.257931, 36.956581, 42.228245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907883, 37.432083, 41.964214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258198, 37.449001, 41.771877>,  <38.468388, 37.459152, 41.656475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258198, 37.449001, 41.771877>,  <37.907883, 37.432083, 41.964214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258198, 37.449001, 41.771877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482697, 0.075668, -0.872512,
		-0.000516, 0.996236, 0.086683,
		0.875787, 0.042292, -0.480841,
		38.520935, 37.461689, 41.627625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860149, 37.971302, 41.552437>,  <37.907883, 37.432083, 41.964214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860149, 37.971302, 41.552437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.152416, 37.773972, 41.363647>,  <38.327778, 37.655575, 41.250374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.152416, 37.773972, 41.363647>,  <37.860149, 37.971302, 41.552437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152416, 37.773972, 41.363647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486321, 0.109119, -0.866940,
		0.479185, 0.862973, -0.160185,
		0.730666, -0.493326, -0.471970,
		38.371616, 37.625973, 41.222057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047058, 38.387295, 41.023052>,  <37.860149, 37.971302, 41.552437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047058, 38.387295, 41.023052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.178299, 38.028851, 40.903500>,  <38.257042, 37.813782, 40.831768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.178299, 38.028851, 40.903500>,  <38.047058, 38.387295, 41.023052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178299, 38.028851, 40.903500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335027, 0.185442, -0.923779,
		0.883237, 0.403226, -0.239379,
		0.328101, -0.896114, -0.298881,
		38.276730, 37.760017, 40.813835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275623, 38.462238, 40.288055>,  <38.047058, 38.387295, 41.023052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275623, 38.462238, 40.288055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.215378, 38.070347, 40.340881>,  <38.179230, 37.835213, 40.372578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.215378, 38.070347, 40.340881>,  <38.275623, 38.462238, 40.288055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215378, 38.070347, 40.340881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157453, -0.108107, -0.981591,
		0.975974, -0.168630, -0.137980,
		-0.150609, -0.979733, 0.132061,
		38.170197, 37.776428, 40.380501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.643314, 35.101219, 27.285057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.618704, 35.495262, 27.220844>,  <29.603937, 35.731689, 27.182316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.618704, 35.495262, 27.220844>,  <29.643314, 35.101219, 27.285057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618704, 35.495262, 27.220844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374232, 0.126334, 0.918689,
		0.925291, 0.116600, 0.360888,
		-0.061526, 0.985111, -0.160531,
		29.600246, 35.790794, 27.172686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844942, 35.537724, 27.987484>,  <29.643314, 35.101219, 27.285057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844942, 35.537724, 27.987484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.610634, 35.752949, 27.745043>,  <29.470049, 35.882084, 27.599579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.610634, 35.752949, 27.745043>,  <29.844942, 35.537724, 27.987484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610634, 35.752949, 27.745043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511594, 0.334546, 0.791423,
		0.628606, 0.773670, 0.079303,
		-0.585769, 0.538064, -0.606103,
		29.434902, 35.914368, 27.563211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779045, 36.244205, 28.281359>,  <29.844942, 35.537724, 27.987484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779045, 36.244205, 28.281359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.460041, 36.149479, 28.059406>,  <29.268639, 36.092644, 27.926235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.460041, 36.149479, 28.059406>,  <29.779045, 36.244205, 28.281359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460041, 36.149479, 28.059406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602103, 0.254414, 0.756799,
		-0.038050, 0.937653, -0.345485,
		-0.797511, -0.236814, -0.554883,
		29.220787, 36.078434, 27.892941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339502, 36.903416, 28.166637>,  <29.779045, 36.244205, 28.281359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339502, 36.903416, 28.166637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131529, 36.562408, 28.145147>,  <29.006744, 36.357803, 28.132254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131529, 36.562408, 28.145147>,  <29.339502, 36.903416, 28.166637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131529, 36.562408, 28.145147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725735, 0.407688, 0.554166,
		-0.450533, 0.327117, -0.830671,
		-0.519932, -0.852517, -0.053723,
		28.975550, 36.306652, 28.129030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644840, 37.054512, 28.245541>,  <29.339502, 36.903416, 28.166637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644840, 37.054512, 28.245541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.642588, 36.659794, 28.310282>,  <28.641235, 36.422962, 28.349127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.642588, 36.659794, 28.310282>,  <28.644840, 37.054512, 28.245541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642588, 36.659794, 28.310282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507866, 0.142249, 0.849610,
		-0.861417, -0.077413, -0.501963,
		-0.005633, -0.986799, 0.161851,
		28.640898, 36.363754, 28.358837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026442, 36.900875, 28.448383>,  <28.644840, 37.054512, 28.245541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026442, 36.900875, 28.448383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.234983, 36.592236, 28.594160>,  <28.360109, 36.407051, 28.681627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.234983, 36.592236, 28.594160>,  <28.026442, 36.900875, 28.448383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234983, 36.592236, 28.594160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459488, 0.106040, 0.881831,
		-0.719069, -0.627204, -0.299258,
		0.521355, -0.771602, 0.364443,
		28.391390, 36.360756, 28.703493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470739, 36.589233, 28.821205>,  <28.026442, 36.900875, 28.448383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470739, 36.589233, 28.821205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.804649, 36.397217, 28.929066>,  <28.004995, 36.282009, 28.993782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.804649, 36.397217, 28.929066>,  <27.470739, 36.589233, 28.821205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804649, 36.397217, 28.929066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412656, -0.221251, 0.883608,
		-0.364508, -0.848886, -0.382787,
		0.834775, -0.480042, 0.269650,
		28.055082, 36.253204, 29.009960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253397, 35.917488, 29.194368>,  <27.470739, 36.589233, 28.821205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253397, 35.917488, 29.194368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.631241, 36.005798, 29.291508>,  <27.857946, 36.058784, 29.349791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.631241, 36.005798, 29.291508>,  <27.253397, 35.917488, 29.194368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631241, 36.005798, 29.291508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229101, -0.086276, 0.969572,
		0.235007, -0.971502, -0.030917,
		0.944608, 0.220773, 0.242847,
		27.914623, 36.072029, 29.364363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224018, 35.524837, 29.738377>,  <27.253397, 35.917488, 29.194368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.224018, 35.524837, 29.738377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.539951, 35.766075, 29.782997>,  <27.729511, 35.910816, 29.809769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.539951, 35.766075, 29.782997>,  <27.224018, 35.524837, 29.738377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539951, 35.766075, 29.782997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082203, -0.076144, 0.993703,
		0.607788, -0.794029, -0.010565,
		0.789833, 0.603093, 0.111551,
		27.776901, 35.947002, 29.816462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606647, 35.146111, 30.138454>,  <27.224018, 35.524837, 29.738377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606647, 35.146111, 30.138454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.701771, 35.533867, 30.162855>,  <27.758844, 35.766521, 30.177496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.701771, 35.533867, 30.162855>,  <27.606647, 35.146111, 30.138454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701771, 35.533867, 30.162855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044552, -0.051851, 0.997661,
		0.970289, -0.239972, 0.030858,
		0.237810, 0.969394, 0.061002,
		27.773113, 35.824684, 30.181156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133911, 35.173946, 30.560541>,  <27.606647, 35.146111, 30.138454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133911, 35.173946, 30.560541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.957590, 35.532917, 30.567614>,  <27.851797, 35.748299, 30.571857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.957590, 35.532917, 30.567614>,  <28.133911, 35.173946, 30.560541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957590, 35.532917, 30.567614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060610, -0.049411, 0.996938,
		0.895556, 0.438380, 0.076174,
		-0.440801, 0.897431, 0.017680,
		27.825350, 35.802147, 30.572918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430861, 35.426178, 31.178526>,  <28.133911, 35.173946, 30.560541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430861, 35.426178, 31.178526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.101282, 35.626968, 31.073351>,  <27.903536, 35.747444, 31.010246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.101282, 35.626968, 31.073351>,  <28.430861, 35.426178, 31.178526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101282, 35.626968, 31.073351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237233, 0.115824, 0.964523,
		0.514623, 0.857090, 0.023653,
		-0.823944, 0.501977, -0.262936,
		27.854099, 35.777561, 30.994471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320585, 35.975872, 31.676249>,  <28.430861, 35.426178, 31.178526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320585, 35.975872, 31.676249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.965822, 35.957981, 31.492338>,  <27.752964, 35.947247, 31.381992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.965822, 35.957981, 31.492338>,  <28.320585, 35.975872, 31.676249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965822, 35.957981, 31.492338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459890, 0.179340, 0.869677,
		0.043555, 0.982770, -0.179630,
		-0.886907, -0.044731, -0.459777,
		27.699751, 35.944561, 31.354404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958870, 36.565231, 31.974329>,  <28.320585, 35.975872, 31.676249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958870, 36.565231, 31.974329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680468, 36.308208, 31.846146>,  <27.513426, 36.153996, 31.769236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680468, 36.308208, 31.846146>,  <27.958870, 36.565231, 31.974329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680468, 36.308208, 31.846146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455377, 0.049942, 0.888896,
		-0.555163, 0.764608, -0.327366,
		-0.696007, -0.642557, -0.320459,
		27.471666, 36.115440, 31.750008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208822, 36.692654, 32.370018>,  <27.958870, 36.565231, 31.974329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208822, 36.692654, 32.370018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.158426, 36.329746, 32.209518>,  <27.128189, 36.112003, 32.113220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.158426, 36.329746, 32.209518>,  <27.208822, 36.692654, 32.370018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158426, 36.329746, 32.209518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485810, -0.296223, 0.822339,
		-0.864937, 0.298535, -0.403437,
		-0.125990, -0.907265, -0.401245,
		27.120630, 36.057568, 32.089146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560698, 36.516891, 32.432693>,  <27.208822, 36.692654, 32.370018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560698, 36.516891, 32.432693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.710249, 36.147758, 32.395622>,  <26.799980, 35.926277, 32.373379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.710249, 36.147758, 32.395622>,  <26.560698, 36.516891, 32.432693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710249, 36.147758, 32.395622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661046, -0.335235, 0.671294,
		-0.650563, -0.189717, -0.735374,
		0.373879, -0.922835, -0.092680,
		26.822412, 35.870907, 32.367817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958374, 36.081253, 32.472389>,  <26.560698, 36.516891, 32.432693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958374, 36.081253, 32.472389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.278879, 35.864441, 32.573727>,  <26.471182, 35.734352, 32.634529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.278879, 35.864441, 32.573727>,  <25.958374, 36.081253, 32.472389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278879, 35.864441, 32.573727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487753, -0.346519, 0.801262,
		-0.346519, -0.765591, -0.542029,
		-0.801262, 0.542029, -0.253344,
		26.519258, 35.701832, 32.649731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.718264, 35.443016, 32.866505>,  <25.958374, 36.081253, 32.472389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.718264, 35.443016, 32.866505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.112909, 35.432091, 32.930809>,  <26.349697, 35.425537, 32.969391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.112909, 35.432091, 32.930809>,  <25.718264, 35.443016, 32.866505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112909, 35.432091, 32.930809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154715, -0.468176, 0.869985,
		0.051505, -0.883213, -0.466135,
		0.986616, -0.027310, 0.160760,
		26.408894, 35.423897, 32.979038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786501, 34.831078, 33.216225>,  <25.718264, 35.443016, 32.866505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786501, 34.831078, 33.216225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.109936, 35.043690, 33.317146>,  <26.303997, 35.171257, 33.377701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.109936, 35.043690, 33.317146>,  <25.786501, 34.831078, 33.216225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109936, 35.043690, 33.317146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090437, -0.311443, 0.945952,
		0.581384, -0.787702, -0.203759,
		0.808587, 0.531534, 0.252305,
		26.352512, 35.203152, 33.392838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272440, 34.375385, 33.510353>,  <25.786501, 34.831078, 33.216225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272440, 34.375385, 33.510353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.364491, 34.741295, 33.643154>,  <26.419722, 34.960842, 33.722836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.364491, 34.741295, 33.643154>,  <26.272440, 34.375385, 33.510353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364491, 34.741295, 33.643154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154804, -0.371222, 0.915549,
		0.960769, -0.159298, -0.227040,
		0.230127, 0.914778, 0.331998,
		26.433529, 35.015728, 33.742752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920708, 34.260292, 33.918530>,  <26.272440, 34.375385, 33.510353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920708, 34.260292, 33.918530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.785036, 34.623394, 34.017269>,  <26.703634, 34.841255, 34.076511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.785036, 34.623394, 34.017269>,  <26.920708, 34.260292, 33.918530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785036, 34.623394, 34.017269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361613, -0.116429, 0.925030,
		0.868444, 0.403012, -0.288767,
		-0.339178, 0.907758, 0.246846,
		26.683283, 34.895721, 34.091324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542442, 34.678204, 34.183975>,  <26.920708, 34.260292, 33.918530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542442, 34.678204, 34.183975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.212732, 34.841728, 34.340664>,  <27.014906, 34.939842, 34.434677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.212732, 34.841728, 34.340664>,  <27.542442, 34.678204, 34.183975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212732, 34.841728, 34.340664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332118, -0.211211, 0.919286,
		0.458551, 0.887841, 0.038322,
		-0.824275, 0.408812, 0.391719,
		26.965450, 34.964371, 34.458179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298996, 34.920452, 33.973728>,  <27.542442, 34.678204, 34.183975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298996, 34.920452, 33.973728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617952, 34.705639, 34.083828>,  <28.809326, 34.576752, 34.149887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617952, 34.705639, 34.083828>,  <28.298996, 34.920452, 33.973728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617952, 34.705639, 34.083828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503645, 0.340970, -0.793777,
		0.332432, 0.771579, 0.542360,
		0.797390, -0.537034, 0.275252,
		28.857170, 34.544529, 34.166405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957047, 35.326595, 33.865108>,  <28.298996, 34.920452, 33.973728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957047, 35.326595, 33.865108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.047995, 34.939419, 33.822411>,  <29.102564, 34.707111, 33.796791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.047995, 34.939419, 33.822411>,  <28.957047, 35.326595, 33.865108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047995, 34.939419, 33.822411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497281, 0.209650, -0.841878,
		0.837266, 0.138337, 0.529007,
		0.227369, -0.967941, -0.106740,
		29.116205, 34.649036, 33.790390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733709, 35.322273, 33.704979>,  <28.957047, 35.326595, 33.865108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733709, 35.322273, 33.704979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.601902, 34.951172, 33.634899>,  <29.522818, 34.728512, 33.592850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.601902, 34.951172, 33.634899>,  <29.733709, 35.322273, 33.704979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601902, 34.951172, 33.634899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405245, 0.028623, -0.913760,
		0.852758, -0.372097, 0.366535,
		-0.329516, -0.927752, -0.175199,
		29.503048, 34.672848, 33.582340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311237, 34.950153, 33.511169>,  <29.733709, 35.322273, 33.704979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311237, 34.950153, 33.511169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.977091, 34.796379, 33.354008>,  <29.776602, 34.704117, 33.259712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.977091, 34.796379, 33.354008>,  <30.311237, 34.950153, 33.511169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977091, 34.796379, 33.354008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390718, 0.087503, -0.916342,
		0.386651, -0.918997, 0.077107,
		-0.835369, -0.384432, -0.392902,
		29.726480, 34.681049, 33.236137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480585, 34.393219, 33.081665>,  <30.311237, 34.950153, 33.511169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480585, 34.393219, 33.081665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.122345, 34.475613, 32.923946>,  <29.907400, 34.525047, 32.829315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.122345, 34.475613, 32.923946>,  <30.480585, 34.393219, 33.081665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122345, 34.475613, 32.923946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422114, 0.113692, -0.899385,
		-0.140428, -0.971929, -0.188771,
		-0.895600, 0.205982, -0.394300,
		29.853664, 34.537407, 32.805656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341993, 33.922737, 32.385746>,  <30.480585, 34.393219, 33.081665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341993, 33.922737, 32.385746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.089828, 34.233234, 32.388062>,  <29.938530, 34.419533, 32.389450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.089828, 34.233234, 32.388062>,  <30.341993, 33.922737, 32.385746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089828, 34.233234, 32.388062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302111, 0.252216, -0.919302,
		-0.715060, -0.577788, -0.393510,
		-0.630412, 0.776239, 0.005793,
		29.900705, 34.466106, 32.389801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008574, 33.821430, 31.763721>,  <30.341993, 33.922737, 32.385746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008574, 33.821430, 31.763721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.953596, 34.204716, 31.864063>,  <29.920610, 34.434689, 31.924269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.953596, 34.204716, 31.864063>,  <30.008574, 33.821430, 31.763721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953596, 34.204716, 31.864063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338953, 0.283468, -0.897082,
		-0.930710, -0.038269, -0.363752,
		-0.137442, 0.958218, 0.250855,
		29.912363, 34.492180, 31.939320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704786, 34.170776, 31.228882>,  <30.008574, 33.821430, 31.763721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704786, 34.170776, 31.228882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.867027, 34.480057, 31.423878>,  <29.964373, 34.665627, 31.540874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.867027, 34.480057, 31.423878>,  <29.704786, 34.170776, 31.228882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867027, 34.480057, 31.423878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315785, 0.381955, -0.868556,
		-0.857767, 0.506232, -0.089243,
		0.405604, 0.773201, 0.487489,
		29.988708, 34.712017, 31.570124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503090, 34.768471, 30.831488>,  <29.704786, 34.170776, 31.228882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503090, 34.768471, 30.831488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.807547, 34.926807, 31.036999>,  <29.990221, 35.021809, 31.160305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.807547, 34.926807, 31.036999>,  <29.503090, 34.768471, 30.831488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807547, 34.926807, 31.036999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309240, 0.474826, -0.823961,
		-0.570115, 0.786033, 0.239000,
		0.761143, 0.395845, 0.513778,
		30.035889, 35.045559, 31.191132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411947, 35.478199, 30.679598>,  <29.503090, 34.768471, 30.831488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411947, 35.478199, 30.679598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.790104, 35.400291, 30.784140>,  <30.016998, 35.353546, 30.846865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.790104, 35.400291, 30.784140>,  <29.411947, 35.478199, 30.679598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790104, 35.400291, 30.784140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324292, 0.642648, -0.694146,
		-0.032763, 0.740993, 0.670713,
		0.945390, -0.194764, 0.261353,
		30.073721, 35.341862, 30.862545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712315, 36.129242, 30.601955>,  <29.411947, 35.478199, 30.679598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712315, 36.129242, 30.601955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.021049, 35.875275, 30.615452>,  <30.206291, 35.722893, 30.623550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.021049, 35.875275, 30.615452>,  <29.712315, 36.129242, 30.601955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021049, 35.875275, 30.615452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435257, 0.488945, -0.755966,
		0.463482, 0.598170, 0.653741,
		0.771839, -0.634922, 0.033740,
		30.252602, 35.684799, 30.625574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266886, 36.604729, 30.545574>,  <29.712315, 36.129242, 30.601955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266886, 36.604729, 30.545574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.426970, 36.251778, 30.446583>,  <30.523020, 36.040009, 30.387188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.426970, 36.251778, 30.446583>,  <30.266886, 36.604729, 30.545574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426970, 36.251778, 30.446583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616856, 0.459089, -0.639317,
		0.677732, 0.103202, 0.728031,
		0.400210, -0.882376, -0.247478,
		30.547033, 35.987064, 30.372339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027225, 36.736069, 30.447313>,  <30.266886, 36.604729, 30.545574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027225, 36.736069, 30.447313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.940922, 36.389046, 30.268074>,  <30.889139, 36.180832, 30.160530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.940922, 36.389046, 30.268074>,  <31.027225, 36.736069, 30.447313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940922, 36.389046, 30.268074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518841, 0.286901, -0.805290,
		0.827195, -0.406240, 0.388224,
		-0.215759, -0.867558, -0.448097,
		30.876194, 36.128777, 30.133644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662209, 36.436592, 30.123455>,  <31.027225, 36.736069, 30.447313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662209, 36.436592, 30.123455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.370268, 36.221554, 29.954550>,  <31.195103, 36.092529, 29.853207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.370268, 36.221554, 29.954550>,  <31.662209, 36.436592, 30.123455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370268, 36.221554, 29.954550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405938, 0.156165, -0.900460,
		0.550027, -0.828614, 0.104253,
		-0.729853, -0.537597, -0.422261,
		31.151312, 36.060276, 29.827871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930382, 35.846428, 29.803989>,  <31.662209, 36.436592, 30.123455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930382, 35.846428, 29.803989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.584391, 35.929443, 29.621237>,  <31.376797, 35.979252, 29.511585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.584391, 35.929443, 29.621237>,  <31.930382, 35.846428, 29.803989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584391, 35.929443, 29.621237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482132, 0.091232, -0.871336,
		-0.139154, -0.973963, -0.178975,
		-0.864977, 0.207539, -0.456883,
		31.324898, 35.991707, 29.484171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866266, 35.291248, 29.246037>,  <31.930382, 35.846428, 29.803989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866266, 35.291248, 29.246037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.634857, 35.607445, 29.165598>,  <31.496012, 35.797161, 29.117334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.634857, 35.607445, 29.165598>,  <31.866266, 35.291248, 29.246037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634857, 35.607445, 29.165598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365888, 0.031156, -0.930137,
		-0.728999, -0.611682, -0.307255,
		-0.578521, 0.790490, -0.201095,
		31.461300, 35.844593, 29.105270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807030, 35.232033, 28.479994>,  <31.866266, 35.291248, 29.246037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807030, 35.232033, 28.479994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.704571, 35.605042, 28.581818>,  <31.643095, 35.828846, 28.642912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.704571, 35.605042, 28.581818>,  <31.807030, 35.232033, 28.479994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704571, 35.605042, 28.581818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346737, 0.334457, -0.876306,
		-0.902310, -0.136197, -0.409008,
		-0.256146, 0.932517, 0.254560,
		31.627728, 35.884796, 28.658186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204710, 35.511299, 28.171148>,  <31.807030, 35.232033, 28.479994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204710, 35.511299, 28.171148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.454302, 35.817093, 28.235905>,  <31.604057, 36.000568, 28.274759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.454302, 35.817093, 28.235905>,  <31.204710, 35.511299, 28.171148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454302, 35.817093, 28.235905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154119, 0.082706, -0.984585,
		-0.766092, 0.639311, -0.066215,
		0.623980, 0.764488, 0.161891,
		31.641495, 36.046440, 28.284472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968943, 36.027222, 27.629259>,  <31.204710, 35.511299, 28.171148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968943, 36.027222, 27.629259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.331881, 36.119049, 27.770130>,  <31.549643, 36.174145, 27.854652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.331881, 36.119049, 27.770130>,  <30.968943, 36.027222, 27.629259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331881, 36.119049, 27.770130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315234, 0.182701, -0.931261,
		-0.278129, 0.955991, 0.093406,
		0.907343, 0.229567, 0.352175,
		31.604084, 36.187920, 27.875782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130381, 36.675442, 27.315470>,  <30.968943, 36.027222, 27.629259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130381, 36.675442, 27.315470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.484743, 36.522301, 27.420231>,  <31.697361, 36.430416, 27.483088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.484743, 36.522301, 27.420231>,  <31.130381, 36.675442, 27.315470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484743, 36.522301, 27.420231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372185, 0.249694, -0.893941,
		0.276849, 0.889427, 0.363696,
		0.885908, -0.382849, 0.261904,
		31.750515, 36.407448, 27.498802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.670319, 35.327084, 45.019939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.664917, 34.928032, 44.992935>,  <42.661674, 34.688602, 44.976734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.664917, 34.928032, 44.992935>,  <42.670319, 35.327084, 45.019939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664917, 34.928032, 44.992935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375247, -0.067634, 0.924454,
		-0.926826, -0.012848, 0.375270,
		-0.013504, -0.997627, -0.067506,
		42.660866, 34.628742, 44.972683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257702, 35.015839, 45.597500>,  <42.670319, 35.327084, 45.019939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257702, 35.015839, 45.597500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.545834, 34.763668, 45.481777>,  <42.718712, 34.612366, 45.412346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.545834, 34.763668, 45.481777>,  <42.257702, 35.015839, 45.597500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545834, 34.763668, 45.481777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175647, -0.237703, 0.955325,
		-0.671029, -0.738959, -0.060491,
		0.720325, -0.630426, -0.289302,
		42.761932, 34.574539, 45.394985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281380, 34.492363, 46.137165>,  <42.257702, 35.015839, 45.597500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281380, 34.492363, 46.137165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.622387, 34.447582, 45.932941>,  <42.826992, 34.420712, 45.810406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.622387, 34.447582, 45.932941>,  <42.281380, 34.492363, 46.137165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622387, 34.447582, 45.932941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487582, -0.181625, 0.853976,
		-0.188349, -0.976973, -0.100245,
		0.852519, -0.111967, -0.510563,
		42.878143, 34.413994, 45.779774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579365, 33.812496, 46.296452>,  <42.281380, 34.492363, 46.137165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579365, 33.812496, 46.296452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.878975, 34.051113, 46.181145>,  <43.058739, 34.194283, 46.111961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.878975, 34.051113, 46.181145>,  <42.579365, 33.812496, 46.296452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878975, 34.051113, 46.181145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523823, -0.266794, 0.808969,
		0.405679, -0.756937, -0.512319,
		0.749022, 0.596546, -0.288269,
		43.103683, 34.230076, 46.094666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142612, 33.437847, 46.370457>,  <42.579365, 33.812496, 46.296452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142612, 33.437847, 46.370457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.283649, 33.812119, 46.365074>,  <43.368271, 34.036682, 46.361843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.283649, 33.812119, 46.365074>,  <43.142612, 33.437847, 46.370457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283649, 33.812119, 46.365074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578216, -0.206537, 0.789309,
		0.735761, -0.286085, -0.613849,
		0.352592, 0.935680, -0.013457,
		43.389427, 34.092823, 46.361038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875702, 33.366165, 46.646198>,  <43.142612, 33.437847, 46.370457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875702, 33.366165, 46.646198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.784885, 33.755428, 46.661205>,  <43.730396, 33.988987, 46.670208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.784885, 33.755428, 46.661205>,  <43.875702, 33.366165, 46.646198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784885, 33.755428, 46.661205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602452, 0.110081, 0.790528,
		0.765182, 0.202084, -0.611276,
		-0.227043, 0.973162, 0.037514,
		43.716774, 34.047379, 46.672459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495941, 33.717396, 46.849594>,  <43.875702, 33.366165, 46.646198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495941, 33.717396, 46.849594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.246243, 34.024036, 46.909782>,  <44.096424, 34.208019, 46.945896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.246243, 34.024036, 46.909782>,  <44.495941, 33.717396, 46.849594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246243, 34.024036, 46.909782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515734, 0.259711, 0.816436,
		0.586799, 0.587263, -0.557485,
		-0.624248, 0.766598, 0.150474,
		44.058968, 34.254017, 46.954926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.810055, 34.349548, 46.779972>,  <44.495941, 33.717396, 46.849594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.810055, 34.349548, 46.779972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.510242, 34.406281, 47.038609>,  <44.330353, 34.440319, 47.193790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.510242, 34.406281, 47.038609>,  <44.810055, 34.349548, 46.779972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.510242, 34.406281, 47.038609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640407, 0.402615, 0.654049,
		-0.167563, 0.904314, -0.392604,
		-0.749534, 0.141832, 0.646593,
		44.285381, 34.448830, 47.232586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.973896, 35.010181, 47.176369>,  <44.810055, 34.349548, 46.779972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.973896, 35.010181, 47.176369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.732124, 34.785728, 47.402573>,  <44.587063, 34.651058, 47.538296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.732124, 34.785728, 47.402573>,  <44.973896, 35.010181, 47.176369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732124, 34.785728, 47.402573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558205, 0.208158, 0.803167,
		-0.568399, 0.801124, 0.187412,
		-0.604425, -0.561134, 0.565508,
		44.550797, 34.617390, 47.572224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823460, 35.339436, 47.909058>,  <44.973896, 35.010181, 47.176369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823460, 35.339436, 47.909058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.760513, 34.945221, 47.934185>,  <44.722744, 34.708691, 47.949261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.760513, 34.945221, 47.934185>,  <44.823460, 35.339436, 47.909058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.760513, 34.945221, 47.934185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549007, -0.034437, 0.835108,
		-0.820869, 0.165904, 0.546488,
		-0.157368, -0.985540, 0.062814,
		44.713303, 34.649559, 47.953030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.699677, 35.346748, 48.609760>,  <44.823460, 35.339436, 47.909058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.699677, 35.346748, 48.609760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.720776, 34.955933, 48.527187>,  <44.733437, 34.721443, 48.477646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.720776, 34.955933, 48.527187>,  <44.699677, 35.346748, 48.609760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720776, 34.955933, 48.527187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446128, -0.161883, 0.880207,
		-0.893413, -0.138526, 0.427344,
		0.052752, -0.977039, -0.206429,
		44.736603, 34.662823, 48.465260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.654015, 35.057384, 49.260197>,  <44.699677, 35.346748, 48.609760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.654015, 35.057384, 49.260197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.797226, 34.760632, 49.033417>,  <44.883152, 34.582581, 48.897350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.797226, 34.760632, 49.033417>,  <44.654015, 35.057384, 49.260197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797226, 34.760632, 49.033417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378063, -0.440017, 0.814527,
		-0.853749, -0.505963, 0.122941,
		0.358025, -0.741881, -0.566950,
		44.904633, 34.538067, 48.863331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.458946, 34.409840, 49.456978>,  <44.654015, 35.057384, 49.260197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.458946, 34.409840, 49.456978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.800858, 34.338852, 49.261894>,  <45.006004, 34.296257, 49.144844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.800858, 34.338852, 49.261894>,  <44.458946, 34.409840, 49.456978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800858, 34.338852, 49.261894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403607, -0.363457, 0.839643,
		-0.326269, -0.914551, -0.239049,
		0.854781, -0.177468, -0.487704,
		45.057293, 34.285610, 49.115582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009903, 34.609913, 50.031078>,  <44.458946, 34.409840, 49.456978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009903, 34.609913, 50.031078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.226822, 34.943565, 50.071346>,  <44.356976, 35.143757, 50.095505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.226822, 34.943565, 50.071346>,  <44.009903, 34.609913, 50.031078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.226822, 34.943565, 50.071346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838371, 0.529361, 0.130043,
		0.055184, -0.154918, 0.986385,
		0.542300, 0.834133, 0.100667,
		44.389511, 35.193806, 50.101547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648602, 35.155903, 49.577946>,  <44.009903, 34.609913, 50.031078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648602, 35.155903, 49.577946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.354736, 35.364433, 49.751606>,  <43.178417, 35.489552, 49.855804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.354736, 35.364433, 49.751606>,  <43.648602, 35.155903, 49.577946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.354736, 35.364433, 49.751606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278745, 0.351479, -0.893736,
		-0.618526, -0.777611, -0.112900,
		-0.734661, 0.521328, 0.434154,
		43.134338, 35.520832, 49.881851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022446, 34.944481, 49.270100>,  <43.648602, 35.155903, 49.577946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022446, 34.944481, 49.270100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.903454, 35.291771, 49.428944>,  <42.832058, 35.500145, 49.524250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.903454, 35.291771, 49.428944>,  <43.022446, 34.944481, 49.270100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903454, 35.291771, 49.428944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319375, 0.301481, -0.898392,
		-0.899725, -0.394082, 0.187603,
		-0.297482, 0.868221, 0.397110,
		42.814209, 35.552238, 49.548077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309345, 34.975147, 49.233826>,  <43.022446, 34.944481, 49.270100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309345, 34.975147, 49.233826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.438347, 35.353771, 49.232243>,  <42.515747, 35.580944, 49.231293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.438347, 35.353771, 49.232243>,  <42.309345, 34.975147, 49.233826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438347, 35.353771, 49.232243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422142, 0.140082, -0.895641,
		-0.847222, 0.290524, 0.444759,
		0.322508, 0.946559, -0.003961,
		42.535099, 35.637737, 49.231052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678028, 35.402775, 49.089767>,  <42.309345, 34.975147, 49.233826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678028, 35.402775, 49.089767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.987022, 35.645874, 49.016109>,  <42.172421, 35.791733, 48.971916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.987022, 35.645874, 49.016109>,  <41.678028, 35.402775, 49.089767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987022, 35.645874, 49.016109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489124, 0.384496, -0.782892,
		-0.404997, 0.694843, 0.594281,
		0.772486, 0.607747, -0.184145,
		42.218769, 35.828197, 48.960865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409893, 36.066078, 48.985817>,  <41.678028, 35.402775, 49.089767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409893, 36.066078, 48.985817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.766857, 36.083271, 48.806152>,  <41.981037, 36.093586, 48.698353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.766857, 36.083271, 48.806152>,  <41.409893, 36.066078, 48.985817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766857, 36.083271, 48.806152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397131, 0.547388, -0.736650,
		0.214206, 0.835774, 0.505565,
		0.892414, 0.042980, -0.449166,
		42.034580, 36.096165, 48.671402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481197, 36.796638, 48.751652>,  <41.409893, 36.066078, 48.985817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481197, 36.796638, 48.751652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.766838, 36.606499, 48.546089>,  <41.938221, 36.492416, 48.422752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.766838, 36.606499, 48.546089>,  <41.481197, 36.796638, 48.751652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766838, 36.606499, 48.546089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355009, 0.386808, -0.851087,
		0.603348, 0.790204, 0.107466,
		0.714101, -0.475350, -0.513909,
		41.981068, 36.463894, 48.391918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770142, 37.344250, 48.324928>,  <41.481197, 36.796638, 48.751652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770142, 37.344250, 48.324928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.843536, 36.985424, 48.164127>,  <41.887573, 36.770130, 48.067646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.843536, 36.985424, 48.164127>,  <41.770142, 37.344250, 48.324928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843536, 36.985424, 48.164127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312999, 0.334349, -0.888956,
		0.931860, 0.288941, -0.219431,
		0.183489, -0.897064, -0.402005,
		41.898582, 36.716305, 48.043526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167244, 37.428875, 47.740353>,  <41.770142, 37.344250, 48.324928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167244, 37.428875, 47.740353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.009056, 37.066845, 47.677814>,  <41.914143, 36.849628, 47.640293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.009056, 37.066845, 47.677814>,  <42.167244, 37.428875, 47.740353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009056, 37.066845, 47.677814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221969, 0.259353, -0.939929,
		0.891253, -0.337013, -0.303465,
		-0.395473, -0.905074, -0.156343,
		41.890415, 36.795322, 47.630913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351391, 37.195820, 47.087097>,  <42.167244, 37.428875, 47.740353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351391, 37.195820, 47.087097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.036869, 36.962429, 47.168365>,  <41.848156, 36.822395, 47.217125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.036869, 36.962429, 47.168365>,  <42.351391, 37.195820, 47.087097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036869, 36.962429, 47.168365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305202, 0.080905, -0.948845,
		0.537191, -0.808090, -0.241694,
		-0.786306, -0.583477, 0.203169,
		41.800976, 36.787388, 47.229317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336678, 36.785877, 46.438068>,  <42.351391, 37.195820, 47.087097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336678, 36.785877, 46.438068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.987450, 36.761581, 46.631588>,  <41.777912, 36.747005, 46.747700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.987450, 36.761581, 46.631588>,  <42.336678, 36.785877, 46.438068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987450, 36.761581, 46.631588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475444, -0.114058, -0.872321,
		0.108166, -0.991615, 0.070702,
		-0.873071, -0.060741, 0.483795,
		41.725529, 36.743359, 46.776726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925842, 36.389061, 45.921261>,  <42.336678, 36.785877, 46.438068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925842, 36.389061, 45.921261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.651264, 36.537571, 46.171364>,  <41.486515, 36.626678, 46.321426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.651264, 36.537571, 46.171364>,  <41.925842, 36.389061, 45.921261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651264, 36.537571, 46.171364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677227, -0.013224, -0.735655,
		-0.264864, -0.928428, 0.260517,
		-0.686448, 0.371278, 0.625254,
		41.445332, 36.648952, 46.358940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344940, 35.927082, 45.960724>,  <41.925842, 36.389061, 45.921261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344940, 35.927082, 45.960724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.223709, 36.295849, 46.057228>,  <41.150970, 36.517109, 46.115131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.223709, 36.295849, 46.057228>,  <41.344940, 35.927082, 45.960724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223709, 36.295849, 46.057228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646607, -0.012974, -0.762713,
		-0.700030, -0.387162, 0.600052,
		-0.303079, 0.921920, 0.241260,
		41.132786, 36.572426, 46.129604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597256, 35.849796, 46.176357>,  <41.344940, 35.927082, 45.960724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597256, 35.849796, 46.176357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.653316, 36.221088, 46.038525>,  <40.686954, 36.443863, 45.955826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.653316, 36.221088, 46.038525>,  <40.597256, 35.849796, 46.176357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653316, 36.221088, 46.038525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616167, -0.190654, -0.764192,
		-0.775046, 0.319425, 0.545226,
		0.140153, 0.928234, -0.344585,
		40.695362, 36.499557, 45.935150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047726, 35.947727, 45.666359>,  <40.597256, 35.849796, 46.176357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047726, 35.947727, 45.666359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.277393, 36.270393, 45.610321>,  <40.415195, 36.463993, 45.576698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.277393, 36.270393, 45.610321>,  <40.047726, 35.947727, 45.666359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277393, 36.270393, 45.610321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390704, 0.119589, -0.912715,
		-0.719498, 0.578788, 0.383831,
		0.574171, 0.806661, -0.140091,
		40.449646, 36.512390, 45.568295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376274, 36.195274, 45.948582>,  <40.047726, 35.947727, 45.666359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376274, 36.195274, 45.948582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.062607, 35.951126, 45.903801>,  <38.874405, 35.804638, 45.876930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.062607, 35.951126, 45.903801>,  <39.376274, 36.195274, 45.948582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062607, 35.951126, 45.903801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107985, -0.311878, 0.943966,
		-0.611081, 0.728138, 0.310475,
		-0.784168, -0.610366, -0.111955,
		38.827358, 35.768017, 45.870216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671314, 36.426983, 46.341938>,  <39.376274, 36.195274, 45.948582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671314, 36.426983, 46.341938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.699581, 36.032928, 46.279301>,  <38.716541, 35.796497, 46.241718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.699581, 36.032928, 46.279301>,  <38.671314, 36.426983, 46.341938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699581, 36.032928, 46.279301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056021, -0.160655, 0.985419,
		-0.995925, -0.060867, -0.066542,
		0.070670, -0.985132, -0.156591,
		38.720783, 35.737389, 46.232323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417847, 36.194733, 47.037693>,  <38.671314, 36.426983, 46.341938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417847, 36.194733, 47.037693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.578808, 35.872097, 46.864494>,  <38.675385, 35.678516, 46.760574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.578808, 35.872097, 46.864494>,  <38.417847, 36.194733, 47.037693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578808, 35.872097, 46.864494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198241, -0.384986, 0.901380,
		-0.893740, -0.448559, 0.004978,
		0.402405, -0.806586, -0.433000,
		38.699528, 35.630123, 46.734592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080986, 35.578659, 47.390892>,  <38.417847, 36.194733, 47.037693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080986, 35.578659, 47.390892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.413025, 35.471809, 47.195103>,  <38.612247, 35.407700, 47.077629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.413025, 35.471809, 47.195103>,  <38.080986, 35.578659, 47.390892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413025, 35.471809, 47.195103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370755, -0.391266, 0.842290,
		-0.416524, -0.880652, -0.225742,
		0.830089, -0.267139, -0.489478,
		38.662052, 35.391670, 47.048260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198593, 34.867905, 47.669518>,  <38.080986, 35.578659, 47.390892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198593, 34.867905, 47.669518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.531773, 35.004192, 47.495110>,  <38.731678, 35.085964, 47.390465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.531773, 35.004192, 47.495110>,  <38.198593, 34.867905, 47.669518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531773, 35.004192, 47.495110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539641, -0.325835, 0.776285,
		0.122424, -0.881897, -0.455269,
		0.832947, 0.340718, -0.436018,
		38.781658, 35.106407, 47.364304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689899, 34.329136, 47.785740>,  <38.198593, 34.867905, 47.669518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689899, 34.329136, 47.785740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.902073, 34.665237, 47.740814>,  <39.029377, 34.866898, 47.713860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.902073, 34.665237, 47.740814>,  <38.689899, 34.329136, 47.785740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902073, 34.665237, 47.740814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658581, -0.325033, 0.678694,
		0.533767, -0.433973, -0.725783,
		0.530438, 0.840251, -0.112315,
		39.061203, 34.917313, 47.707119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433762, 34.106445, 47.859749>,  <38.689899, 34.329136, 47.785740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433762, 34.106445, 47.859749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.446442, 34.498749, 47.936806>,  <39.454052, 34.734131, 47.983040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.446442, 34.498749, 47.936806>,  <39.433762, 34.106445, 47.859749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446442, 34.498749, 47.936806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753711, -0.150042, 0.639849,
		0.656441, 0.124910, -0.743964,
		0.031703, 0.980757, 0.192640,
		39.455952, 34.792976, 47.994598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036716, 33.618565, 47.609985>,  <39.433762, 34.106445, 47.859749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036716, 33.618565, 47.609985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.917408, 33.249683, 47.708431>,  <39.845825, 33.028355, 47.767498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.917408, 33.249683, 47.708431>,  <40.036716, 33.618565, 47.609985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917408, 33.249683, 47.708431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760826, 0.074009, -0.644722,
		0.576351, -0.379553, -0.723712,
		-0.298268, -0.922205, 0.246118,
		39.827927, 32.973022, 47.782269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012951, 33.342400, 47.035770>,  <40.036716, 33.618565, 47.609985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012951, 33.342400, 47.035770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.768200, 33.128403, 47.268799>,  <39.621349, 33.000004, 47.408615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.768200, 33.128403, 47.268799>,  <40.012951, 33.342400, 47.035770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768200, 33.128403, 47.268799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733024, 0.106870, -0.671755,
		0.297127, -0.838067, -0.457557,
		-0.611875, -0.534997, 0.582570,
		39.584637, 32.967903, 47.443569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738251, 32.941395, 46.625858>,  <40.012951, 33.342400, 47.035770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738251, 32.941395, 46.625858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.492615, 32.883545, 46.936207>,  <39.345234, 32.848835, 47.122417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.492615, 32.883545, 46.936207>,  <39.738251, 32.941395, 46.625858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492615, 32.883545, 46.936207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770565, -0.102696, -0.629033,
		0.170655, -0.984142, -0.048381,
		-0.614090, -0.144628, 0.775872,
		39.308388, 32.840157, 47.168968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333344, 32.311695, 46.601635>,  <39.738251, 32.941395, 46.625858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333344, 32.311695, 46.601635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.101120, 32.546696, 46.827126>,  <38.961784, 32.687698, 46.962421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.101120, 32.546696, 46.827126>,  <39.333344, 32.311695, 46.601635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101120, 32.546696, 46.827126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735414, -0.081207, -0.672735,
		-0.349455, -0.805137, 0.479204,
		-0.580558, 0.587504, 0.563731,
		38.926952, 32.722946, 46.996246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650867, 31.968922, 46.623417>,  <39.333344, 32.311695, 46.601635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650867, 31.968922, 46.623417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.576118, 32.345222, 46.736599>,  <38.531269, 32.571003, 46.804508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.576118, 32.345222, 46.736599>,  <38.650867, 31.968922, 46.623417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576118, 32.345222, 46.736599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786682, 0.029212, -0.616667,
		-0.588396, -0.337833, 0.734615,
		-0.186871, 0.940753, 0.282955,
		38.520058, 32.627449, 46.821487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923378, 32.021042, 46.583008>,  <38.650867, 31.968922, 46.623417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923378, 32.021042, 46.583008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.060482, 32.396393, 46.600708>,  <38.142742, 32.621605, 46.611328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.060482, 32.396393, 46.600708>,  <37.923378, 32.021042, 46.583008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060482, 32.396393, 46.600708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739274, 0.298495, -0.603634,
		-0.579647, 0.174187, 0.796033,
		0.342757, 0.938381, 0.044250,
		38.163311, 32.677906, 46.613983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399590, 32.237854, 46.807598>,  <37.923378, 32.021042, 46.583008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399590, 32.237854, 46.807598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.617336, 32.515091, 46.618584>,  <37.747986, 32.681435, 46.505177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.617336, 32.515091, 46.618584>,  <37.399590, 32.237854, 46.807598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617336, 32.515091, 46.618584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696535, 0.059569, -0.715046,
		-0.467444, 0.718384, 0.515190,
		0.544367, 0.693091, -0.472535,
		37.780647, 32.723019, 46.476822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<45.982895, 31.034691, 47.929462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.835255, 31.391273, 48.034588>,  <45.746670, 31.605223, 48.097664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.835255, 31.391273, 48.034588>,  <45.982895, 31.034691, 47.929462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<45.835255, 31.391273, 48.034588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423495, 0.090389, -0.901378,
		-0.827293, -0.444001, 0.344164,
		-0.369104, 0.891456, 0.262811,
		45.724522, 31.658710, 48.113430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186119, 31.094385, 47.863705>,  <45.982895, 31.034691, 47.929462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186119, 31.094385, 47.863705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.311626, 31.473715, 47.844810>,  <45.386929, 31.701313, 47.833473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.311626, 31.473715, 47.844810>,  <45.186119, 31.094385, 47.863705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<45.311626, 31.473715, 47.844810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466313, 0.110571, -0.877682,
		-0.827106, 0.297411, 0.476909,
		0.313765, 0.948325, -0.047233,
		45.405754, 31.758213, 47.830639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550770, 31.521282, 47.864933>,  <45.186119, 31.094385, 47.863705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550770, 31.521282, 47.864933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.855804, 31.739904, 47.726521>,  <45.038826, 31.871078, 47.643475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.855804, 31.739904, 47.726521>,  <44.550770, 31.521282, 47.864933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.855804, 31.739904, 47.726521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545382, 0.255556, -0.798279,
		-0.347875, 0.797476, 0.492966,
		0.762589, 0.546556, -0.346027,
		45.084579, 31.903872, 47.622711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.264938, 32.027054, 47.587772>,  <44.550770, 31.521282, 47.864933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.264938, 32.027054, 47.587772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.623123, 32.045116, 47.410637>,  <44.838036, 32.055954, 47.304356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.623123, 32.045116, 47.410637>,  <44.264938, 32.027054, 47.587772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.623123, 32.045116, 47.410637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445132, 0.094340, -0.890482,
		0.001566, 0.994515, 0.104579,
		0.895464, 0.045157, -0.442838,
		44.891762, 32.058662, 47.277786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238003, 32.636250, 47.091026>,  <44.264938, 32.027054, 47.587772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238003, 32.636250, 47.091026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.522823, 32.380501, 46.974960>,  <44.693714, 32.227051, 46.905319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.522823, 32.380501, 46.974960>,  <44.238003, 32.636250, 47.091026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.522823, 32.380501, 46.974960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277319, 0.123564, -0.952799,
		0.645045, 0.758905, -0.089326,
		0.712047, -0.639370, -0.290164,
		44.736439, 32.188690, 46.887913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470444, 32.952732, 46.553902>,  <44.238003, 32.636250, 47.091026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470444, 32.952732, 46.553902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.571140, 32.569168, 46.501568>,  <44.631557, 32.339031, 46.470165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.571140, 32.569168, 46.501568>,  <44.470444, 32.952732, 46.553902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.571140, 32.569168, 46.501568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331978, 0.041428, -0.942377,
		0.909075, 0.280668, -0.307908,
		0.251740, -0.958910, -0.130836,
		44.646664, 32.281494, 46.462318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.846977, 32.904419, 45.894032>,  <44.470444, 32.952732, 46.553902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.846977, 32.904419, 45.894032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.744980, 32.523491, 45.961048>,  <44.683781, 32.294933, 46.001259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.744980, 32.523491, 45.961048>,  <44.846977, 32.904419, 45.894032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.744980, 32.523491, 45.961048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265039, -0.097795, -0.959265,
		0.929910, -0.289011, -0.227465,
		-0.254993, -0.952318, 0.167540,
		44.668484, 32.237797, 46.011311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.054321, 32.565170, 45.320263>,  <44.846977, 32.904419, 45.894032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.054321, 32.565170, 45.320263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.801685, 32.291046, 45.465286>,  <44.650105, 32.126572, 45.552299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.801685, 32.291046, 45.465286>,  <45.054321, 32.565170, 45.320263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801685, 32.291046, 45.465286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364311, -0.150464, -0.919042,
		0.684378, -0.712541, -0.154633,
		-0.631588, -0.685307, 0.362561,
		44.612209, 32.085453, 45.574055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.143341, 32.028912, 44.933689>,  <45.054321, 32.565170, 45.320263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.143341, 32.028912, 44.933689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.787388, 31.941519, 45.093880>,  <44.573818, 31.889084, 45.189995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.787388, 31.941519, 45.093880>,  <45.143341, 32.028912, 44.933689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.787388, 31.941519, 45.093880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350638, -0.234003, -0.906805,
		0.291832, -0.947369, 0.131627,
		-0.889880, -0.218481, 0.400474,
		44.520424, 31.875975, 45.214024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937546, 31.356470, 44.760841>,  <45.143341, 32.028912, 44.933689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937546, 31.356470, 44.760841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.576176, 31.514923, 44.826443>,  <44.359352, 31.609995, 44.865803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.576176, 31.514923, 44.826443>,  <44.937546, 31.356470, 44.760841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576176, 31.514923, 44.826443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295870, -0.299195, -0.907162,
		-0.310298, -0.868075, 0.387506,
		-0.903424, 0.396142, 0.163998,
		44.305149, 31.633762, 44.875645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423817, 30.918434, 44.395927>,  <44.937546, 31.356470, 44.760841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423817, 30.918434, 44.395927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.227032, 31.265278, 44.427166>,  <44.108963, 31.473383, 44.445908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.227032, 31.265278, 44.427166>,  <44.423817, 30.918434, 44.395927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227032, 31.265278, 44.427166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328872, -0.102033, -0.938846,
		-0.806113, -0.487558, 0.335364,
		-0.491960, 0.867108, 0.078094,
		44.079445, 31.525410, 44.450596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854351, 30.788408, 44.027050>,  <44.423817, 30.918434, 44.395927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854351, 30.788408, 44.027050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.838314, 31.187338, 44.051510>,  <43.828693, 31.426695, 44.066185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.838314, 31.187338, 44.051510>,  <43.854351, 30.788408, 44.027050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838314, 31.187338, 44.051510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340217, 0.043913, -0.939321,
		-0.939492, -0.058463, 0.337546,
		-0.040093, 0.997323, 0.061146,
		43.826286, 31.486534, 44.069855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343262, 30.689350, 44.571941>,  <43.854351, 30.788408, 44.027050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343262, 30.689350, 44.571941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.098454, 30.404932, 44.710415>,  <42.951569, 30.234282, 44.793499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.098454, 30.404932, 44.710415>,  <43.343262, 30.689350, 44.571941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098454, 30.404932, 44.710415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366452, 0.132935, 0.920892,
		-0.700815, 0.690467, 0.179204,
		-0.612023, -0.711044, 0.346186,
		42.914848, 30.191618, 44.814270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347164, 30.845589, 45.299927>,  <43.343262, 30.689350, 44.571941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347164, 30.845589, 45.299927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.119171, 30.517267, 45.284927>,  <42.982376, 30.320274, 45.275928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.119171, 30.517267, 45.284927>,  <43.347164, 30.845589, 45.299927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119171, 30.517267, 45.284927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154476, -0.151871, 0.976254,
		-0.807006, 0.550654, 0.213357,
		-0.569981, -0.820802, -0.037499,
		42.948177, 30.271027, 45.273678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746040, 30.926069, 45.805237>,  <43.347164, 30.845589, 45.299927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746040, 30.926069, 45.805237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.829395, 30.542759, 45.726971>,  <42.879410, 30.312773, 45.680012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.829395, 30.542759, 45.726971>,  <42.746040, 30.926069, 45.805237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829395, 30.542759, 45.726971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013033, -0.197319, 0.980252,
		-0.977959, -0.206825, -0.028630,
		0.208390, -0.958274, -0.195666,
		42.891911, 30.255278, 45.668270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255783, 30.541042, 46.259518>,  <42.746040, 30.926069, 45.805237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255783, 30.541042, 46.259518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.548851, 30.292711, 46.147968>,  <42.724693, 30.143713, 46.081039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.548851, 30.292711, 46.147968>,  <42.255783, 30.541042, 46.259518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548851, 30.292711, 46.147968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146902, -0.255840, 0.955492,
		-0.664542, -0.741027, -0.096245,
		0.732669, -0.620826, -0.278875,
		42.768650, 30.106462, 46.064304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148438, 29.853041, 46.443207>,  <42.255783, 30.541042, 46.259518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148438, 29.853041, 46.443207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.545013, 29.862076, 46.391777>,  <42.782959, 29.867496, 46.360920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.545013, 29.862076, 46.391777>,  <42.148438, 29.853041, 46.443207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545013, 29.862076, 46.391777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129678, -0.283415, 0.950189,
		-0.014977, -0.958731, -0.283919,
		0.991443, 0.022587, -0.128570,
		42.842445, 29.868853, 46.353207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369873, 29.312609, 46.931282>,  <42.148438, 29.853041, 46.443207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369873, 29.312609, 46.931282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.701591, 29.512547, 46.831341>,  <42.900623, 29.632509, 46.771374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.701591, 29.512547, 46.831341>,  <42.369873, 29.312609, 46.931282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701591, 29.512547, 46.831341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328276, -0.073926, 0.941684,
		0.452224, -0.862955, -0.225393,
		0.829294, 0.499843, -0.249857,
		42.950378, 29.662500, 46.756382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947807, 28.913040, 47.062962>,  <42.369873, 29.312609, 46.931282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947807, 28.913040, 47.062962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.078583, 29.290648, 47.080593>,  <43.157047, 29.517212, 47.091171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.078583, 29.290648, 47.080593>,  <42.947807, 28.913040, 47.062962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078583, 29.290648, 47.080593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149139, -0.097594, 0.983988,
		0.933203, -0.315133, -0.172697,
		0.326941, 0.944017, 0.044077,
		43.176666, 29.573853, 47.093815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460224, 28.870068, 47.469200>,  <42.947807, 28.913040, 47.062962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460224, 28.870068, 47.469200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.374725, 29.260822, 47.469730>,  <43.323425, 29.495275, 47.470051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.374725, 29.260822, 47.469730>,  <43.460224, 28.870068, 47.469200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374725, 29.260822, 47.469730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365767, 0.078768, 0.927367,
		0.905830, 0.198705, -0.374150,
		-0.213743, 0.976889, 0.001329,
		43.310604, 29.553888, 47.470127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074192, 29.375576, 47.725983>,  <43.460224, 28.870068, 47.469200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074192, 29.375576, 47.725983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.739025, 29.589796, 47.768093>,  <43.537926, 29.718328, 47.793358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.739025, 29.589796, 47.768093>,  <44.074192, 29.375576, 47.725983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739025, 29.589796, 47.768093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211545, 0.140867, 0.967163,
		0.503137, 0.832671, -0.231328,
		-0.837915, 0.535552, 0.105272,
		43.487652, 29.750462, 47.799675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207207, 29.654158, 48.310608>,  <44.074192, 29.375576, 47.725983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207207, 29.654158, 48.310608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.825615, 29.769464, 48.277569>,  <43.596661, 29.838648, 48.257744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.825615, 29.769464, 48.277569>,  <44.207207, 29.654158, 48.310608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825615, 29.769464, 48.277569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029574, 0.183664, 0.982544,
		0.298404, 0.939772, -0.166687,
		-0.953981, 0.288266, -0.082599,
		43.539421, 29.855944, 48.252789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078743, 30.334476, 48.692181>,  <44.207207, 29.654158, 48.310608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078743, 30.334476, 48.692181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.716328, 30.165735, 48.678692>,  <43.498878, 30.064491, 48.670601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.716328, 30.165735, 48.678692>,  <44.078743, 30.334476, 48.692181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716328, 30.165735, 48.678692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110888, 0.159754, 0.980909,
		-0.408413, 0.892479, -0.191522,
		-0.906037, -0.421854, -0.033720,
		43.444515, 30.039179, 48.668575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.732422, 30.694241, 49.091442>,  <44.078743, 30.334476, 48.692181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.732422, 30.694241, 49.091442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.487083, 30.379910, 49.059734>,  <43.339882, 30.191311, 49.040710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.487083, 30.379910, 49.059734>,  <43.732422, 30.694241, 49.091442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487083, 30.379910, 49.059734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171852, 0.034818, 0.984507,
		-0.770891, 0.617467, -0.156401,
		-0.613346, -0.785826, -0.079272,
		43.303082, 30.144161, 49.035954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047356, 30.918520, 49.254307>,  <43.732422, 30.694241, 49.091442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047356, 30.918520, 49.254307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.074059, 30.526224, 49.327728>,  <43.090080, 30.290846, 49.371780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.074059, 30.526224, 49.327728>,  <43.047356, 30.918520, 49.254307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074059, 30.526224, 49.327728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216614, 0.165331, 0.962156,
		-0.973972, -0.103995, -0.201404,
		0.066761, -0.980740, 0.183555,
		43.094086, 30.232002, 49.382793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531265, 30.764154, 49.754974>,  <43.047356, 30.918520, 49.254307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531265, 30.764154, 49.754974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.789589, 30.462709, 49.803959>,  <42.944584, 30.281843, 49.833351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.789589, 30.462709, 49.803959>,  <42.531265, 30.764154, 49.754974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789589, 30.462709, 49.803959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190812, -0.004004, 0.981619,
		-0.739269, -0.657308, -0.146383,
		0.645811, -0.753612, 0.122462,
		42.983334, 30.236626, 49.840698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096809, 31.376617, 49.250080>,  <42.531265, 30.764154, 49.754974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096809, 31.376617, 49.250080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.963341, 31.717449, 49.411385>,  <41.883259, 31.921949, 49.508167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.963341, 31.717449, 49.411385>,  <42.096809, 31.376617, 49.250080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963341, 31.717449, 49.411385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788165, -0.017485, -0.615216,
		-0.517163, -0.523118, 0.677415,
		-0.333675, 0.852081, 0.403260,
		41.863239, 31.973074, 49.532364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274830, 31.365232, 49.406696>,  <42.096809, 31.376617, 49.250080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274830, 31.365232, 49.406696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.382481, 31.749968, 49.386955>,  <41.447071, 31.980808, 49.375111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.382481, 31.749968, 49.386955>,  <41.274830, 31.365232, 49.406696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382481, 31.749968, 49.386955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859441, 0.216718, -0.463028,
		-0.434661, 0.167034, 0.884968,
		0.269130, 0.961838, -0.049357,
		41.463219, 32.038521, 49.372147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670921, 31.720692, 49.120525>,  <41.274830, 31.365232, 49.406696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670921, 31.720692, 49.120525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.900257, 32.048077, 49.135502>,  <41.037857, 32.244507, 49.144489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.900257, 32.048077, 49.135502>,  <40.670921, 31.720692, 49.120525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900257, 32.048077, 49.135502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767612, 0.552568, -0.324716,
		-0.286458, 0.157430, 0.945070,
		0.573335, 0.818465, 0.037442,
		41.072258, 32.293617, 49.146736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285213, 32.181870, 49.543629>,  <40.670921, 31.720692, 49.120525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285213, 32.181870, 49.543629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.523777, 32.375237, 49.287315>,  <40.666916, 32.491257, 49.133526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.523777, 32.375237, 49.287315>,  <40.285213, 32.181870, 49.543629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523777, 32.375237, 49.287315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796708, 0.453741, -0.399219,
		0.097760, 0.748615, 0.655758,
		0.596406, 0.483420, -0.640785,
		40.702698, 32.520264, 49.095081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935253, 32.745289, 49.405407>,  <40.285213, 32.181870, 49.543629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935253, 32.745289, 49.405407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.194103, 32.782475, 49.102730>,  <40.349411, 32.804787, 48.921124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.194103, 32.782475, 49.102730>,  <39.935253, 32.745289, 49.405407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194103, 32.782475, 49.102730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752017, 0.240974, -0.613516,
		0.125310, 0.966069, 0.225849,
		0.647123, 0.092963, -0.756697,
		40.388241, 32.810364, 48.875721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838646, 33.385597, 49.052372>,  <39.935253, 32.745289, 49.405407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838646, 33.385597, 49.052372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.986561, 33.139404, 48.773968>,  <40.075310, 32.991688, 48.606926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.986561, 33.139404, 48.773968>,  <39.838646, 33.385597, 49.052372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986561, 33.139404, 48.773968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666913, 0.345746, -0.660066,
		0.646906, 0.708264, -0.282624,
		0.369785, -0.615486, -0.696015,
		40.097496, 32.954758, 48.565163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123695, 33.689342, 48.403755>,  <39.838646, 33.385597, 49.052372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123695, 33.689342, 48.403755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.993240, 33.320446, 48.320705>,  <39.914967, 33.099110, 48.270874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.993240, 33.320446, 48.320705>,  <40.123695, 33.689342, 48.403755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993240, 33.320446, 48.320705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612755, 0.373486, -0.696447,
		0.719837, -0.099913, -0.686915,
		-0.326138, -0.922239, -0.207626,
		39.895397, 33.043774, 48.258419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141537, 34.281200, 48.013344>,  <40.123695, 33.689342, 48.403755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141537, 34.281200, 48.013344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.968746, 34.623081, 48.128506>,  <39.865074, 34.828209, 48.197601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.968746, 34.623081, 48.128506>,  <40.141537, 34.281200, 48.013344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968746, 34.623081, 48.128506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647333, 0.071556, 0.758841,
		0.627981, 0.514166, -0.584186,
		-0.431973, 0.854700, 0.287901,
		39.839153, 34.879490, 48.214874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769165, 34.703293, 48.303726>,  <40.141537, 34.281200, 48.013344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769165, 34.703293, 48.303726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.439152, 34.867233, 48.459335>,  <40.241142, 34.965599, 48.552700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.439152, 34.867233, 48.459335>,  <40.769165, 34.703293, 48.303726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439152, 34.867233, 48.459335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478045, 0.139144, 0.867244,
		0.301310, 0.901478, -0.310726,
		-0.825036, 0.409850, 0.389022,
		40.191639, 34.990189, 48.576042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897068, 35.257969, 48.675732>,  <40.769165, 34.703293, 48.303726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897068, 35.257969, 48.675732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.555630, 35.127171, 48.837940>,  <40.350765, 35.048691, 48.935265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.555630, 35.127171, 48.837940>,  <40.897068, 35.257969, 48.675732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555630, 35.127171, 48.837940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437095, -0.026054, 0.899038,
		-0.283416, 0.944667, 0.165167,
		-0.853594, -0.326995, 0.405526,
		40.299553, 35.029072, 48.959599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791351, 35.666775, 49.208817>,  <40.897068, 35.257969, 48.675732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791351, 35.666775, 49.208817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.536987, 35.377918, 49.317719>,  <40.384369, 35.204605, 49.383060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.536987, 35.377918, 49.317719>,  <40.791351, 35.666775, 49.208817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536987, 35.377918, 49.317719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373713, 0.020518, 0.927318,
		-0.675243, 0.691439, 0.256827,
		-0.635914, -0.722144, 0.272254,
		40.346214, 35.161274, 49.399395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482151, 35.778358, 49.907932>,  <40.791351, 35.666775, 49.208817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482151, 35.778358, 49.907932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.457096, 35.384789, 49.841030>,  <40.442062, 35.148647, 49.800888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.457096, 35.384789, 49.841030>,  <40.482151, 35.778358, 49.907932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457096, 35.384789, 49.841030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427768, -0.177876, 0.886213,
		-0.901716, -0.016040, 0.432032,
		-0.062633, -0.983922, -0.167255,
		40.438305, 35.089611, 49.790855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440582, 35.403782, 50.608551>,  <40.482151, 35.778358, 49.907932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440582, 35.403782, 50.608551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.542740, 35.084362, 50.390526>,  <40.604034, 34.892712, 50.259712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.542740, 35.084362, 50.390526>,  <40.440582, 35.403782, 50.608551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542740, 35.084362, 50.390526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524008, -0.359454, 0.772145,
		-0.812522, -0.482816, 0.326645,
		0.255390, -0.798549, -0.545064,
		40.619358, 34.844799, 50.227005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249096, 34.866459, 51.064590>,  <40.440582, 35.403782, 50.608551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249096, 34.866459, 51.064590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.517056, 34.724400, 50.803787>,  <40.677830, 34.639164, 50.647305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.517056, 34.724400, 50.803787>,  <40.249096, 34.866459, 51.064590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517056, 34.724400, 50.803787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559217, -0.336300, 0.757746,
		-0.488381, -0.872223, -0.026681,
		0.669896, -0.355148, -0.652005,
		40.718025, 34.617855, 50.608185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190315, 34.118038, 51.084709>,  <40.249096, 34.866459, 51.064590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190315, 34.118038, 51.084709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.567333, 34.205849, 50.983974>,  <40.793545, 34.258533, 50.923534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.567333, 34.205849, 50.983974>,  <40.190315, 34.118038, 51.084709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567333, 34.205849, 50.983974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334086, -0.622714, 0.707541,
		-0.001500, -0.751023, -0.660275,
		0.942541, 0.219527, -0.251841,
		40.850094, 34.271706, 50.908421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554726, 33.409309, 51.222736>,  <40.190315, 34.118038, 51.084709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554726, 33.409309, 51.222736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.818321, 33.707790, 51.184978>,  <40.976479, 33.886879, 51.162323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.818321, 33.707790, 51.184978>,  <40.554726, 33.409309, 51.222736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818321, 33.707790, 51.184978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553272, -0.395898, 0.732908,
		0.509527, -0.535208, -0.673747,
		0.658993, 0.746202, -0.094395,
		41.016018, 33.931652, 51.156658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.853386, 35.217400, 36.687405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964725, 35.596725, 36.748356>,  <35.031528, 35.824322, 36.784927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964725, 35.596725, 36.748356>,  <34.853386, 35.217400, 36.687405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964725, 35.596725, 36.748356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164400, -0.109270, 0.980323,
		0.946307, -0.297919, 0.125488,
		0.278345, 0.948316, 0.152381,
		35.048229, 35.881222, 36.794071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300453, 35.215019, 37.261898>,  <34.853386, 35.217400, 36.687405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300453, 35.215019, 37.261898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163620, 35.590267, 37.240334>,  <35.081520, 35.815418, 37.227394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163620, 35.590267, 37.240334>,  <35.300453, 35.215019, 37.261898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163620, 35.590267, 37.240334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051253, 0.038658, 0.997937,
		0.938272, 0.344138, 0.034857,
		-0.342081, 0.938123, -0.053910,
		35.060997, 35.871704, 37.224159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581669, 35.501015, 37.811367>,  <35.300453, 35.215019, 37.261898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581669, 35.501015, 37.811367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298325, 35.770844, 37.728245>,  <35.128319, 35.932739, 37.678371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298325, 35.770844, 37.728245>,  <35.581669, 35.501015, 37.811367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298325, 35.770844, 37.728245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098829, 0.196720, 0.975466,
		0.698900, 0.711517, -0.072681,
		-0.708358, 0.674570, -0.207806,
		35.085815, 35.973213, 37.665901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704613, 36.089073, 38.340492>,  <35.581669, 35.501015, 37.811367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704613, 36.089073, 38.340492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331203, 36.135288, 38.204735>,  <35.107159, 36.163017, 38.123280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331203, 36.135288, 38.204735>,  <35.704613, 36.089073, 38.340492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331203, 36.135288, 38.204735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310799, 0.211089, 0.926739,
		0.178713, 0.970614, -0.161148,
		-0.933523, 0.115536, -0.339390,
		35.051147, 36.169949, 38.102917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555752, 36.611271, 38.708065>,  <35.704613, 36.089073, 38.340492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555752, 36.611271, 38.708065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211868, 36.442642, 38.592705>,  <35.005539, 36.341465, 38.523487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211868, 36.442642, 38.592705>,  <35.555752, 36.611271, 38.708065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211868, 36.442642, 38.592705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356501, 0.090887, 0.929864,
		-0.365794, 0.902228, -0.228428,
		-0.859710, -0.421573, -0.288399,
		34.953957, 36.316170, 38.506184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071587, 37.137630, 38.784813>,  <35.555752, 36.611271, 38.708065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071587, 37.137630, 38.784813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889854, 36.782082, 38.808430>,  <34.780815, 36.568752, 38.822601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889854, 36.782082, 38.808430>,  <35.071587, 37.137630, 38.784813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889854, 36.782082, 38.808430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272533, 0.201793, 0.940747,
		-0.848120, 0.411321, -0.333928,
		-0.454333, -0.888873, 0.059047,
		34.753555, 36.515419, 38.826145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390213, 37.183025, 39.263596>,  <35.071587, 37.137630, 38.784813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390213, 37.183025, 39.263596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517715, 36.804600, 39.240417>,  <34.594219, 36.577545, 39.226513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517715, 36.804600, 39.240417>,  <34.390213, 37.183025, 39.263596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517715, 36.804600, 39.240417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127200, -0.103274, 0.986486,
		-0.939262, -0.307082, -0.153259,
		0.318759, -0.946063, -0.057941,
		34.613342, 36.520782, 39.223034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035088, 36.929028, 39.798237>,  <34.390213, 37.183025, 39.263596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035088, 36.929028, 39.798237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282562, 36.635872, 39.685032>,  <34.431049, 36.459976, 39.617111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282562, 36.635872, 39.685032>,  <34.035088, 36.929028, 39.798237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282562, 36.635872, 39.685032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142541, -0.249537, 0.957817,
		-0.772597, -0.632931, -0.049919,
		0.618689, -0.732891, -0.283010,
		34.468170, 36.416004, 39.600128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816628, 36.328274, 40.170189>,  <34.035088, 36.929028, 39.798237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816628, 36.328274, 40.170189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201729, 36.284569, 40.071266>,  <34.432789, 36.258347, 40.011913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201729, 36.284569, 40.071266>,  <33.816628, 36.328274, 40.170189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201729, 36.284569, 40.071266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216006, -0.239281, 0.946618,
		-0.162605, -0.964783, -0.206768,
		0.962757, -0.109262, -0.247308,
		34.490555, 36.251789, 39.997074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009098, 35.704147, 40.504993>,  <33.816628, 36.328274, 40.170189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009098, 35.704147, 40.504993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340984, 35.911942, 40.423306>,  <34.540115, 36.036617, 40.374294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340984, 35.911942, 40.423306>,  <34.009098, 35.704147, 40.504993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340984, 35.911942, 40.423306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446160, -0.397364, 0.801900,
		0.335423, -0.756466, -0.561472,
		0.829719, 0.519482, -0.204220,
		34.589901, 36.067787, 40.362038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544319, 35.251526, 40.726425>,  <34.009098, 35.704147, 40.504993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544319, 35.251526, 40.726425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743393, 35.598236, 40.713692>,  <34.862839, 35.806263, 40.706051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743393, 35.598236, 40.713692>,  <34.544319, 35.251526, 40.726425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743393, 35.598236, 40.713692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509346, -0.262355, 0.819596,
		0.702051, -0.424117, -0.572057,
		0.497686, 0.866772, -0.031836,
		34.892700, 35.858269, 40.704140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054626, 35.081047, 41.050770>,  <34.544319, 35.251526, 40.726425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054626, 35.081047, 41.050770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110950, 35.477009, 41.044365>,  <35.144745, 35.714588, 41.040524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110950, 35.477009, 41.044365>,  <35.054626, 35.081047, 41.050770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110950, 35.477009, 41.044365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557690, -0.065947, 0.827426,
		0.818019, -0.125438, -0.561347,
		0.140810, 0.989907, -0.016010,
		35.153194, 35.773979, 41.039562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518391, 34.491673, 40.890720>,  <35.054626, 35.081047, 41.050770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518391, 34.491673, 40.890720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342499, 34.158009, 41.023880>,  <35.236965, 33.957809, 41.103775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342499, 34.158009, 41.023880>,  <35.518391, 34.491673, 40.890720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342499, 34.158009, 41.023880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431014, -0.129189, -0.893049,
		0.787949, -0.536185, -0.302725,
		-0.439731, -0.834156, 0.332898,
		35.210579, 33.907761, 41.123749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617580, 33.923676, 40.441025>,  <35.518391, 34.491673, 40.890720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617580, 33.923676, 40.441025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285801, 33.875530, 40.659210>,  <35.086735, 33.846642, 40.790123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285801, 33.875530, 40.659210>,  <35.617580, 33.923676, 40.441025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285801, 33.875530, 40.659210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538018, -0.090402, -0.838071,
		0.150185, -0.988605, 0.010225,
		-0.829446, -0.120365, 0.545465,
		35.036968, 33.839420, 40.822849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257412, 33.422756, 40.051411>,  <35.617580, 33.923676, 40.441025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257412, 33.422756, 40.051411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992035, 33.562389, 40.316132>,  <34.832809, 33.646168, 40.474964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992035, 33.562389, 40.316132>,  <35.257412, 33.422756, 40.051411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992035, 33.562389, 40.316132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741634, -0.189632, -0.643443,
		-0.099117, -0.917703, 0.384703,
		-0.663442, 0.349085, 0.661804,
		34.793003, 33.667114, 40.514671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726379, 32.812256, 40.184677>,  <35.257412, 33.422756, 40.051411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726379, 32.812256, 40.184677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547020, 33.155983, 40.283070>,  <34.439404, 33.362221, 40.342106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547020, 33.155983, 40.283070>,  <34.726379, 32.812256, 40.184677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547020, 33.155983, 40.283070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791971, -0.254372, -0.555047,
		-0.414392, -0.443693, 0.794617,
		-0.448399, 0.859320, 0.245983,
		34.412498, 33.413780, 40.356865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100594, 32.546173, 40.224159>,  <34.726379, 32.812256, 40.184677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100594, 32.546173, 40.224159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083027, 32.943890, 40.185253>,  <34.072487, 33.182518, 40.161907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083027, 32.943890, 40.185253>,  <34.100594, 32.546173, 40.224159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083027, 32.943890, 40.185253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707732, -0.099680, -0.699414,
		-0.705115, 0.038124, 0.708067,
		-0.043916, 0.994289, -0.097267,
		34.069851, 33.242176, 40.156075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431034, 32.782661, 40.291893>,  <34.100594, 32.546173, 40.224159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431034, 32.782661, 40.291893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594620, 33.096359, 40.105251>,  <33.692772, 33.284576, 39.993267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594620, 33.096359, 40.105251>,  <33.431034, 32.782661, 40.291893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594620, 33.096359, 40.105251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757224, 0.006281, -0.653125,
		-0.509277, 0.620424, 0.596415,
		0.408961, 0.784241, -0.466601,
		33.717308, 33.331631, 39.965271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929955, 33.181576, 40.211742>,  <33.431034, 32.782661, 40.291893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929955, 33.181576, 40.211742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173527, 33.315533, 39.924118>,  <33.319672, 33.395908, 39.751545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173527, 33.315533, 39.924118>,  <32.929955, 33.181576, 40.211742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173527, 33.315533, 39.924118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723616, -0.136810, -0.676508,
		-0.324932, 0.932272, 0.159025,
		0.608933, 0.334892, -0.719060,
		33.356205, 33.416000, 39.708401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509216, 33.714588, 39.829796>,  <32.929955, 33.181576, 40.211742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509216, 33.714588, 39.829796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809471, 33.620670, 39.582760>,  <32.989624, 33.564320, 39.434536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809471, 33.620670, 39.582760>,  <32.509216, 33.714588, 39.829796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809471, 33.620670, 39.582760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595257, 0.165335, -0.786342,
		0.286738, 0.957881, -0.015657,
		0.750633, -0.234794, -0.617594,
		33.034660, 33.550232, 39.397480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464771, 34.149960, 39.240929>,  <32.509216, 33.714588, 39.829796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464771, 34.149960, 39.240929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646179, 33.807983, 39.140213>,  <32.755024, 33.602798, 39.079784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646179, 33.807983, 39.140213>,  <32.464771, 34.149960, 39.240929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646179, 33.807983, 39.140213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558096, -0.052155, -0.828135,
		0.694874, 0.516098, -0.500792,
		0.453517, -0.854940, -0.251792,
		32.782234, 33.551502, 39.064674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778412, 34.274536, 38.585789>,  <32.464771, 34.149960, 39.240929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778412, 34.274536, 38.585789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752575, 33.879166, 38.640701>,  <32.737072, 33.641945, 38.673649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752575, 33.879166, 38.640701>,  <32.778412, 34.274536, 38.585789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752575, 33.879166, 38.640701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531816, -0.082308, -0.842851,
		0.844394, -0.127446, -0.520343,
		-0.064590, -0.988424, 0.137278,
		32.733196, 33.582638, 38.681885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007629, 33.988361, 37.918297>,  <32.778412, 34.274536, 38.585789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007629, 33.988361, 37.918297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806087, 33.696503, 38.103230>,  <32.685162, 33.521389, 38.214188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806087, 33.696503, 38.103230>,  <33.007629, 33.988361, 37.918297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806087, 33.696503, 38.103230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525353, -0.166005, -0.834534,
		0.685662, -0.663372, -0.299677,
		-0.503858, -0.729644, 0.462328,
		32.654930, 33.477608, 38.241928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121998, 33.389610, 37.509178>,  <33.007629, 33.988361, 37.918297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121998, 33.389610, 37.509178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795769, 33.308224, 37.725861>,  <32.600033, 33.259392, 37.855869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795769, 33.308224, 37.725861>,  <33.121998, 33.389610, 37.509178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795769, 33.308224, 37.725861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512305, -0.181384, -0.839430,
		0.269051, -0.962134, 0.043696,
		-0.815570, -0.203464, 0.541708,
		32.551098, 33.247185, 37.888374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723637, 33.643707, 37.855679>,  <33.121998, 33.389610, 37.509178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723637, 33.643707, 37.855679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527622, 33.762184, 38.183617>,  <33.410015, 33.833271, 38.380379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527622, 33.762184, 38.183617>,  <33.723637, 33.643707, 37.855679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527622, 33.762184, 38.183617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158473, -0.894560, 0.417909,
		0.857179, 0.334712, 0.391424,
		-0.490032, 0.296193, 0.819841,
		33.380611, 33.851044, 38.429569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749802, 32.905987, 37.896790>,  <33.723637, 33.643707, 37.855679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749802, 32.905987, 37.896790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891350, 32.535133, 37.946114>,  <33.976280, 32.312622, 37.975708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891350, 32.535133, 37.946114>,  <33.749802, 32.905987, 37.896790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891350, 32.535133, 37.946114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773469, 0.364217, 0.518740,
		-0.525853, -0.088188, 0.845992,
		0.353871, -0.927129, 0.123314,
		33.997513, 32.256996, 37.983109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555569, 32.859150, 38.120506>,  <33.749802, 32.905987, 37.896790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555569, 32.859150, 38.120506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919594, 32.710938, 38.194786>,  <35.138008, 32.622009, 38.239353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919594, 32.710938, 38.194786>,  <34.555569, 32.859150, 38.120506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919594, 32.710938, 38.194786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363523, -0.498399, 0.787051,
		-0.199073, -0.783776, -0.588273,
		0.910067, -0.370531, 0.185704,
		35.192616, 32.599777, 38.250496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483051, 32.209892, 38.453671>,  <34.555569, 32.859150, 38.120506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483051, 32.209892, 38.453671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870262, 32.296932, 38.503605>,  <35.102589, 32.349155, 38.533566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870262, 32.296932, 38.503605>,  <34.483051, 32.209892, 38.453671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870262, 32.296932, 38.503605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029286, -0.592238, 0.805231,
		0.249147, -0.775826, -0.579673,
		0.968023, 0.217598, 0.124833,
		35.160667, 32.362213, 38.541054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778725, 31.544601, 38.572773>,  <34.483051, 32.209892, 38.453671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778725, 31.544601, 38.572773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988136, 31.851412, 38.721146>,  <35.113785, 32.035500, 38.810169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988136, 31.851412, 38.721146>,  <34.778725, 31.544601, 38.572773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988136, 31.851412, 38.721146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153342, -0.513079, 0.844533,
		0.838096, -0.385257, -0.386228,
		0.523528, 0.767025, 0.370933,
		35.145195, 32.081520, 38.832424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313541, 31.124479, 38.378819>,  <34.778725, 31.544601, 38.572773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313541, 31.124479, 38.378819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573460, 31.399399, 38.248966>,  <35.729412, 31.564350, 38.171055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573460, 31.399399, 38.248966>,  <35.313541, 31.124479, 38.378819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573460, 31.399399, 38.248966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593827, -0.192421, 0.781245,
		0.474481, -0.700426, -0.533170,
		0.649798, 0.687297, -0.324632,
		35.768398, 31.605587, 38.151577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890602, 30.728525, 38.103310>,  <35.313541, 31.124479, 38.378819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890602, 30.728525, 38.103310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972240, 31.095638, 38.239555>,  <36.021225, 31.315907, 38.321301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972240, 31.095638, 38.239555>,  <35.890602, 30.728525, 38.103310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972240, 31.095638, 38.239555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537674, -0.395850, 0.744452,
		0.818078, 0.031197, -0.574260,
		0.204096, 0.917785, 0.340610,
		36.033470, 31.370974, 38.341740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599068, 30.628492, 38.307713>,  <35.890602, 30.728525, 38.103310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599068, 30.628492, 38.307713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491081, 30.970173, 38.485458>,  <36.426289, 31.175180, 38.592106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491081, 30.970173, 38.485458>,  <36.599068, 30.628492, 38.307713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491081, 30.970173, 38.485458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606736, -0.207433, 0.767361,
		0.747656, 0.476772, -0.462275,
		-0.269965, 0.854201, 0.444364,
		36.410091, 31.226433, 38.618767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204842, 30.821630, 38.629223>,  <36.599068, 30.628492, 38.307713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204842, 30.821630, 38.629223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929337, 31.048100, 38.810352>,  <36.764034, 31.183981, 38.919029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929337, 31.048100, 38.810352>,  <37.204842, 30.821630, 38.629223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929337, 31.048100, 38.810352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564357, 0.026636, 0.825101,
		0.455090, 0.823855, -0.337870,
		-0.688763, 0.566175, 0.452827,
		36.722706, 31.217953, 38.946201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446495, 31.420389, 38.827435>,  <37.204842, 30.821630, 38.629223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446495, 31.420389, 38.827435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159290, 31.362013, 39.099655>,  <36.986965, 31.326986, 39.262989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159290, 31.362013, 39.099655>,  <37.446495, 31.420389, 38.827435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159290, 31.362013, 39.099655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680530, 0.057974, 0.730424,
		-0.146054, 0.987593, 0.057692,
		-0.718017, -0.145942, 0.680553,
		36.943886, 31.318230, 39.303822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622997, 31.864363, 39.334057>,  <37.446495, 31.420389, 38.827435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622997, 31.864363, 39.334057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380203, 31.588985, 39.492863>,  <37.234528, 31.423759, 39.588146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380203, 31.588985, 39.492863>,  <37.622997, 31.864363, 39.334057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380203, 31.588985, 39.492863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547300, 0.000105, 0.836936,
		-0.576223, 0.725292, 0.376721,
		-0.606984, -0.688442, 0.397013,
		37.198109, 31.382454, 39.611965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486259, 32.095200, 40.069302>,  <37.622997, 31.864363, 39.334057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486259, 32.095200, 40.069302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395832, 31.705559, 40.067875>,  <37.341576, 31.471773, 40.067020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395832, 31.705559, 40.067875>,  <37.486259, 32.095200, 40.069302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395832, 31.705559, 40.067875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491183, -0.117153, 0.863142,
		-0.841209, 0.193378, 0.504949,
		-0.226069, -0.974105, -0.003566,
		37.328011, 31.413328, 40.066807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323597, 31.953190, 40.745518>,  <37.486259, 32.095200, 40.069302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323597, 31.953190, 40.745518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395454, 31.591915, 40.589577>,  <37.438568, 31.375151, 40.496014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395454, 31.591915, 40.589577>,  <37.323597, 31.953190, 40.745518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395454, 31.591915, 40.589577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611953, -0.207687, 0.763138,
		-0.770223, -0.375662, 0.515398,
		0.179641, -0.903185, -0.389853,
		37.449348, 31.320959, 40.472622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401867, 31.470022, 41.360657>,  <37.323597, 31.953190, 40.745518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401867, 31.470022, 41.360657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544979, 31.286222, 41.035484>,  <37.630844, 31.175943, 40.840382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544979, 31.286222, 41.035484>,  <37.401867, 31.470022, 41.360657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544979, 31.286222, 41.035484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773837, -0.341362, 0.533524,
		-0.522658, -0.819958, 0.233446,
		0.357778, -0.459500, -0.812930,
		37.652313, 31.148373, 40.791607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649906, 30.815136, 41.615795>,  <37.401867, 31.470022, 41.360657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649906, 30.815136, 41.615795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850071, 30.871296, 41.274063>,  <37.970169, 30.904993, 41.069023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850071, 30.871296, 41.274063>,  <37.649906, 30.815136, 41.615795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850071, 30.871296, 41.274063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849649, -0.269277, 0.453416,
		-0.166391, -0.952773, -0.254041,
		0.500410, 0.140401, -0.854328,
		38.000195, 30.913416, 41.017765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044922, 30.188225, 41.551136>,  <37.649906, 30.815136, 41.615795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044922, 30.188225, 41.551136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225769, 30.491356, 41.362976>,  <38.334278, 30.673235, 41.250080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225769, 30.491356, 41.362976>,  <38.044922, 30.188225, 41.551136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225769, 30.491356, 41.362976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887215, -0.327791, 0.324657,
		0.091841, -0.564134, -0.820560,
		0.452122, 0.757830, -0.470403,
		38.361404, 30.718704, 41.221855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606762, 29.880140, 41.176346>,  <38.044922, 30.188225, 41.551136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606762, 29.880140, 41.176346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702484, 30.267422, 41.205521>,  <38.759918, 30.499790, 41.223026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702484, 30.267422, 41.205521>,  <38.606762, 29.880140, 41.176346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702484, 30.267422, 41.205521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926936, -0.250168, 0.279653,
		0.289006, 0.000682, -0.957327,
		0.239302, 0.968202, 0.072933,
		38.774273, 30.557882, 41.227402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271870, 29.922560, 41.019882>,  <38.606762, 29.880140, 41.176346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271870, 29.922560, 41.019882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245602, 30.295364, 41.162453>,  <39.229839, 30.519047, 41.247993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245602, 30.295364, 41.162453>,  <39.271870, 29.922560, 41.019882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245602, 30.295364, 41.162453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822827, -0.151490, 0.547729,
		0.564486, 0.329247, -0.756936,
		-0.065670, 0.932012, 0.356427,
		39.225899, 30.574968, 41.269382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953114, 30.357315, 40.945976>,  <39.271870, 29.922560, 41.019882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953114, 30.357315, 40.945976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752277, 30.521601, 41.250404>,  <39.631775, 30.620173, 41.433060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752277, 30.521601, 41.250404>,  <39.953114, 30.357315, 40.945976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752277, 30.521601, 41.250404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817868, -0.060509, 0.572215,
		0.281069, 0.909754, -0.305529,
		-0.502088, 0.410715, 0.761066,
		39.601650, 30.644815, 41.478725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461525, 30.833496, 41.228916>,  <39.953114, 30.357315, 40.945976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461525, 30.833496, 41.228916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197994, 30.760822, 41.520927>,  <40.039875, 30.717218, 41.696133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197994, 30.760822, 41.520927>,  <40.461525, 30.833496, 41.228916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197994, 30.760822, 41.520927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752243, -0.170809, 0.636360,
		0.009078, 0.968408, 0.249205,
		-0.658823, -0.181685, 0.730029,
		40.000347, 30.706316, 41.739937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704014, 31.223045, 41.839764>,  <40.461525, 30.833496, 41.228916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704014, 31.223045, 41.839764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458534, 30.936605, 41.972775>,  <40.311245, 30.764742, 42.052582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458534, 30.936605, 41.972775>,  <40.704014, 31.223045, 41.839764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458534, 30.936605, 41.972775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643023, -0.208942, 0.736793,
		-0.458138, 0.665993, 0.588695,
		-0.613703, -0.716098, 0.332525,
		40.274422, 30.721777, 42.072533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773697, 31.234207, 42.615345>,  <40.704014, 31.223045, 41.839764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773697, 31.234207, 42.615345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580906, 30.889496, 42.552059>,  <40.465233, 30.682669, 42.514088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580906, 30.889496, 42.552059>,  <40.773697, 31.234207, 42.615345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580906, 30.889496, 42.552059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549945, -0.438118, 0.711065,
		-0.682098, 0.255709, 0.685095,
		-0.481978, -0.861780, -0.158213,
		40.436314, 30.630962, 42.504597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167336, 31.095587, 43.159836>,  <40.773697, 31.234207, 42.615345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167336, 31.095587, 43.159836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346050, 30.773558, 43.003765>,  <40.453281, 30.580341, 42.910122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346050, 30.773558, 43.003765>,  <40.167336, 31.095587, 43.159836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346050, 30.773558, 43.003765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364798, -0.234283, 0.901129,
		-0.816886, -0.544950, 0.189013,
		0.446788, -0.805072, -0.390179,
		40.480087, 30.532036, 42.886711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127014, 30.586857, 43.629005>,  <40.167336, 31.095587, 43.159836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127014, 30.586857, 43.629005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399807, 30.421148, 43.387913>,  <40.563480, 30.321724, 43.243256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399807, 30.421148, 43.387913>,  <40.127014, 30.586857, 43.629005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399807, 30.421148, 43.387913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504955, -0.329465, 0.797793,
		-0.529081, -0.848430, -0.015500,
		0.681977, -0.414271, -0.602732,
		40.604401, 30.296867, 43.207092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291462, 29.904900, 43.916065>,  <40.127014, 30.586857, 43.629005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291462, 29.904900, 43.916065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584538, 30.034126, 43.676468>,  <40.760384, 30.111662, 43.532711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584538, 30.034126, 43.676468>,  <40.291462, 29.904900, 43.916065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584538, 30.034126, 43.676468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680284, -0.322566, 0.658152,
		0.019412, -0.889707, -0.456119,
		0.732692, 0.323067, -0.598992,
		40.804344, 30.131046, 43.496769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742432, 29.404741, 44.068516>,  <40.291462, 29.904900, 43.916065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742432, 29.404741, 44.068516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964741, 29.681768, 43.884571>,  <41.098125, 29.847984, 43.774204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964741, 29.681768, 43.884571>,  <40.742432, 29.404741, 44.068516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964741, 29.681768, 43.884571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756349, -0.191648, 0.625465,
		0.345045, -0.695429, -0.630334,
		0.555769, 0.692567, -0.459860,
		41.131470, 29.889538, 43.746613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390144, 29.159086, 44.085606>,  <40.742432, 29.404741, 44.068516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390144, 29.159086, 44.085606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451931, 29.549597, 44.024910>,  <41.489002, 29.783903, 43.988491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451931, 29.549597, 44.024910>,  <41.390144, 29.159086, 44.085606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451931, 29.549597, 44.024910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808751, -0.036723, 0.587003,
		0.567505, -0.213393, -0.795237,
		0.154466, 0.976276, -0.151741,
		41.498272, 29.842480, 43.979389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026035, 29.251251, 43.754128>,  <41.390144, 29.159086, 44.085606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026035, 29.251251, 43.754128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938179, 29.584583, 43.957035>,  <41.885464, 29.784582, 44.078781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938179, 29.584583, 43.957035>,  <42.026035, 29.251251, 43.754128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938179, 29.584583, 43.957035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906254, -0.018225, 0.422340,
		0.361193, 0.552478, -0.751204,
		-0.219642, 0.833328, 0.507268,
		41.872288, 29.834581, 44.109215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635098, 29.637506, 43.699432>,  <42.026035, 29.251251, 43.754128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635098, 29.637506, 43.699432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419922, 29.799547, 43.995136>,  <42.290817, 29.896772, 44.172558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419922, 29.799547, 43.995136>,  <42.635098, 29.637506, 43.699432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419922, 29.799547, 43.995136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818436, 0.040907, 0.573140,
		0.201939, 0.913356, -0.353555,
		-0.537943, 0.405102, 0.739263,
		42.258537, 29.921078, 44.216915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090065, 30.182796, 43.975288>,  <42.635098, 29.637506, 43.699432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090065, 30.182796, 43.975288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811626, 30.084534, 44.245132>,  <42.644562, 30.025576, 44.407040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811626, 30.084534, 44.245132>,  <43.090065, 30.182796, 43.975288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811626, 30.084534, 44.245132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702339, -0.038126, 0.710821,
		-0.148898, 0.968607, 0.199073,
		-0.696096, -0.245657, 0.674613,
		42.602798, 30.010838, 44.447517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063877, 30.948919, 43.875359>,  <43.090065, 30.182796, 43.975288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063877, 30.948919, 43.875359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275047, 31.276173, 43.784187>,  <43.401749, 31.472525, 43.729485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275047, 31.276173, 43.784187>,  <43.063877, 30.948919, 43.875359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275047, 31.276173, 43.784187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499574, 0.082109, -0.862371,
		-0.686821, 0.569133, 0.452066,
		0.527923, 0.818135, -0.227930,
		43.433426, 31.521614, 43.715809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573196, 31.552645, 43.607388>,  <43.063877, 30.948919, 43.875359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573196, 31.552645, 43.607388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932129, 31.663448, 43.469944>,  <43.147488, 31.729931, 43.387478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932129, 31.663448, 43.469944>,  <42.573196, 31.552645, 43.607388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932129, 31.663448, 43.469944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419825, 0.295506, -0.858151,
		-0.136176, 0.914299, 0.381461,
		0.897331, 0.277007, -0.343605,
		43.201328, 31.746550, 43.366863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371845, 32.078648, 43.182945>,  <42.573196, 31.552645, 43.607388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371845, 32.078648, 43.182945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744675, 31.987709, 43.070129>,  <42.968372, 31.933146, 43.002441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744675, 31.987709, 43.070129>,  <42.371845, 32.078648, 43.182945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744675, 31.987709, 43.070129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253820, 0.145640, -0.956224,
		0.258470, 0.962862, 0.078043,
		0.932078, -0.227347, -0.282037,
		43.024300, 31.919504, 42.985519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613758, 32.576237, 42.772514>,  <42.371845, 32.078648, 43.182945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613758, 32.576237, 42.772514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827835, 32.261246, 42.650242>,  <42.956280, 32.072250, 42.576878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827835, 32.261246, 42.650242>,  <42.613758, 32.576237, 42.772514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827835, 32.261246, 42.650242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128423, 0.281809, -0.950837,
		0.834910, 0.548139, 0.049691,
		0.535194, -0.787482, -0.305679,
		42.988392, 32.025002, 42.558537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081875, 32.841557, 42.293819>,  <42.613758, 32.576237, 42.772514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081875, 32.841557, 42.293819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094749, 32.458092, 42.180725>,  <43.102474, 32.228012, 42.112869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094749, 32.458092, 42.180725>,  <43.081875, 32.841557, 42.293819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094749, 32.458092, 42.180725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144951, 0.275413, -0.950335,
		0.988915, 0.071574, -0.130093,
		0.032190, -0.958658, -0.282734,
		43.104408, 32.170494, 42.095905>
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
