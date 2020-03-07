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
	<-0.570779, 1.651185, 2.958931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.584000, 1.759140, 2.574001>,  <-0.591932, 1.823913, 2.343044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.584000, 1.759140, 2.574001>,  <-0.570779, 1.651185, 2.958931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.584000, 1.759140, 2.574001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481618, -0.839384, -0.251951,
		-0.875758, -0.471800, -0.102241,
		-0.033051, 0.269889, -0.962324,
		-0.593915, 1.840107, 2.285304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.864260, 1.127168, 2.497309>,  <-0.570779, 1.651185, 2.958931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.864260, 1.127168, 2.497309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.619160, 1.336304, 2.260269>,  <-0.472099, 1.461785, 2.118045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.619160, 1.336304, 2.260269>,  <-0.864260, 1.127168, 2.497309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.619160, 1.336304, 2.260269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383896, -0.852373, -0.355082,
		-0.690767, -0.009920, -0.723009,
		0.612751, 0.522839, -0.592600,
		-0.435334, 1.493156, 2.082489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.979548, 1.101677, 1.774926>,  <-0.864260, 1.127168, 2.497309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.979548, 1.101677, 1.774926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.600700, 1.134781, 1.898937>,  <-0.373392, 1.154643, 1.973344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.600700, 1.134781, 1.898937>,  <-0.979548, 1.101677, 1.774926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.600700, 1.134781, 1.898937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156911, -0.962223, -0.222499,
		0.279902, 0.259379, -0.924325,
		0.947119, 0.082759, 0.310028,
		-0.316565, 1.159608, 1.991946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.507985, 0.861941, 1.291698>,  <-0.979548, 1.101677, 1.774926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.507985, 0.861941, 1.291698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.265350, 0.858307, 1.609684>,  <-0.119770, 0.856126, 1.800476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.265350, 0.858307, 1.609684>,  <-0.507985, 0.861941, 1.291698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.265350, 0.858307, 1.609684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348685, -0.895589, -0.276294,
		0.714473, 0.444789, -0.540084,
		0.606586, -0.009086, 0.794966,
		-0.083375, 0.855581, 1.848174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.047673, 0.708712, 0.935217>,  <-0.507985, 0.861941, 1.291698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.047673, 0.708712, 0.935217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.056217, 0.591125, 1.317448>,  <0.061344, 0.520574, 1.546786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.056217, 0.591125, 1.317448>,  <0.047673, 0.708712, 0.935217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.056217, 0.591125, 1.317448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296004, -0.911083, -0.286895,
		0.954948, 0.288983, 0.067553,
		0.021362, -0.293966, 0.955577,
		0.062626, 0.502936, 1.604121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.716215, 0.492484, 1.123775>,  <0.047673, 0.708712, 0.935217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.716215, 0.492484, 1.123775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.516155, 0.332138, 1.430801>,  <0.396119, 0.235930, 1.615017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.516155, 0.332138, 1.430801>,  <0.716215, 0.492484, 1.123775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.516155, 0.332138, 1.430801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484725, -0.864117, -0.135441,
		0.717560, 0.304317, 0.626497,
		-0.500149, -0.400866, 0.767566,
		0.366110, 0.211878, 1.661071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.252261, 0.253480, 1.518256>,  <0.716215, 0.492484, 1.123775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.252261, 0.253480, 1.518256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.921322, 0.076553, 1.656734>,  <0.722759, -0.029603, 1.739822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.921322, 0.076553, 1.656734>,  <1.252261, 0.253480, 1.518256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.921322, 0.076553, 1.656734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417567, -0.896578, -0.147601,
		0.375679, 0.022443, 0.926478,
		-0.827347, -0.442317, 0.346197,
		0.673118, -0.056142, 1.760593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.488946, -0.243258, 2.074308>,  <1.252261, 0.253480, 1.518256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.488946, -0.243258, 2.074308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.134998, -0.384155, 1.952370>,  <0.922630, -0.468694, 1.879206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.134998, -0.384155, 1.952370>,  <1.488946, -0.243258, 2.074308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.134998, -0.384155, 1.952370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428524, -0.872126, -0.236141,
		-0.182686, -0.339588, 0.922662,
		-0.884869, -0.352244, -0.304847,
		0.869538, -0.489828, 1.860916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.181226, 2.989914, 2.148786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.005268, 2.898010, 1.801521>,  <0.899693, 2.842868, 1.593163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.005268, 2.898010, 1.801521>,  <1.181226, 2.989914, 2.148786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.005268, 2.898010, 1.801521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611784, 0.784369, 0.102406,
		0.657429, 0.576174, -0.485603,
		-0.439895, -0.229759, -0.868161,
		0.873300, 2.829082, 1.541073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.370550, 3.459036, 1.561954>,  <1.181226, 2.989914, 2.148786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.370550, 3.459036, 1.561954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.002953, 3.302048, 1.577011>,  <0.782394, 3.207855, 1.586046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.002953, 3.302048, 1.577011>,  <1.370550, 3.459036, 1.561954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.002953, 3.302048, 1.577011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374235, 0.898355, 0.230014,
		-0.124091, 0.197294, -0.972459,
		-0.918994, -0.392470, 0.037643,
		0.727254, 3.184307, 1.588304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.939305, 3.755741, 1.017292>,  <1.370550, 3.459036, 1.561954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.939305, 3.755741, 1.017292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.729776, 3.688141, 1.351250>,  <0.604059, 3.647581, 1.551624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.729776, 3.688141, 1.351250>,  <0.939305, 3.755741, 1.017292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.729776, 3.688141, 1.351250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246459, 0.968270, 0.041367,
		-0.815394, -0.184098, -0.548853,
		-0.523822, -0.169001, 0.834894,
		0.572630, 3.637441, 1.601718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.215414, 3.932582, 0.982356>,  <0.939305, 3.755741, 1.017292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.215414, 3.932582, 0.982356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.352144, 3.972031, 1.356186>,  <0.434183, 3.995700, 1.580484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.352144, 3.972031, 1.356186>,  <0.215414, 3.932582, 0.982356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.352144, 3.972031, 1.356186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376188, 0.925683, 0.039909,
		-0.861184, -0.365218, 0.353524,
		0.341826, 0.098623, 0.934574,
		0.454692, 4.001617, 1.636558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.273282, 4.099331, 1.469114>,  <0.215414, 3.932582, 0.982356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.273282, 4.099331, 1.469114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.073542, 4.234985, 1.615097>,  <0.281636, 4.316378, 1.702687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.073542, 4.234985, 1.615097>,  <-0.273282, 4.099331, 1.469114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.073542, 4.234985, 1.615097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420631, 0.890877, 0.171483,
		-0.266976, -0.302199, 0.915096,
		0.867060, 0.339136, 0.364957,
		0.333660, 4.336726, 1.724584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.348273, 4.215635, 2.177523>,  <-0.273282, 4.099331, 1.469114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.348273, 4.215635, 2.177523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.045986, 4.439911, 2.042160>,  <0.135386, 4.574476, 1.960942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.045986, 4.439911, 2.042160>,  <-0.348273, 4.215635, 2.177523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.045986, 4.439911, 2.042160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449928, 0.819983, 0.353826,
		0.475875, -0.115133, 0.871944,
		0.755717, 0.560689, -0.338408,
		0.180729, 4.608118, 1.940638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.342599, 4.717396, 2.643949>,  <-0.348273, 4.215635, 2.177523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.342599, 4.717396, 2.643949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.120243, 4.875458, 2.351418>,  <0.013171, 4.970294, 2.175899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.120243, 4.875458, 2.351418>,  <-0.342599, 4.717396, 2.643949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.120243, 4.875458, 2.351418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314869, 0.914324, 0.254696,
		0.769314, 0.088690, 0.632685,
		0.555890, 0.395154, -0.731328,
		0.046524, 4.994004, 2.132019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.168818, 5.198583, 2.978276>,  <-0.342599, 4.717396, 2.643949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.168818, 5.198583, 2.978276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.084124, 5.291534, 2.598557>,  <0.033307, 5.347305, 2.370725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.084124, 5.291534, 2.598557>,  <0.168818, 5.198583, 2.978276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.084124, 5.291534, 2.598557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275931, 0.917591, 0.286162,
		0.937566, 0.322532, -0.130167,
		-0.211737, 0.232379, -0.949298,
		0.020603, 5.361248, 2.313767>
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
