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
	<23.963114, 35.246433, 34.920189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338514, 35.266323, 34.783516>,  <24.563755, 35.278259, 34.701511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338514, 35.266323, 34.783516>,  <23.963114, 35.246433, 34.920189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.338514, 35.266323, 34.783516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091688, -0.918155, -0.385468,
		-0.332883, 0.393089, -0.857129,
		0.938500, 0.049727, -0.341680,
		24.620064, 35.281242, 34.681011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.897507, 34.887352, 34.259029>,  <23.963114, 35.246433, 34.920189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.897507, 34.887352, 34.259029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.284389, 34.881050, 34.360428>,  <24.516520, 34.877270, 34.421265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.284389, 34.881050, 34.360428>,  <23.897507, 34.887352, 34.259029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.284389, 34.881050, 34.360428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044608, -0.972019, -0.230630,
		0.250034, 0.234375, -0.939442,
		0.967209, -0.015758, 0.253493,
		24.574553, 34.876324, 34.436474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.341848, 34.607483, 33.706478>,  <23.897507, 34.887352, 34.259029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.341848, 34.607483, 33.706478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533737, 34.527763, 34.048271>,  <24.648870, 34.479931, 34.253349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533737, 34.527763, 34.048271>,  <24.341848, 34.607483, 33.706478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.533737, 34.527763, 34.048271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042797, -0.967387, -0.249661,
		0.876377, 0.156337, -0.455547,
		0.479721, -0.199301, 0.854486,
		24.677654, 34.467972, 34.304619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.869997, 34.120380, 33.510788>,  <24.341848, 34.607483, 33.706478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.869997, 34.120380, 33.510788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.824139, 34.083771, 33.906460>,  <24.796623, 34.061806, 34.143864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.824139, 34.083771, 33.906460>,  <24.869997, 34.120380, 33.510788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.824139, 34.083771, 33.906460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077233, -0.993555, -0.082973,
		0.990399, 0.066885, 0.120977,
		-0.114648, -0.091520, 0.989182,
		24.789745, 34.056316, 34.203213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.456171, 33.708267, 33.853184>,  <24.869997, 34.120380, 33.510788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.456171, 33.708267, 33.853184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074892, 33.675976, 33.969730>,  <24.846125, 33.656601, 34.039658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074892, 33.675976, 33.969730>,  <25.456171, 33.708267, 33.853184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.074892, 33.675976, 33.969730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093843, -0.995095, 0.031305,
		0.287409, 0.057183, 0.956099,
		-0.953200, -0.080725, 0.291365,
		24.788933, 33.651756, 34.057140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060814, 34.166965, 33.799915>,  <25.456171, 33.708267, 33.853184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060814, 34.166965, 33.799915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057911, 33.767647, 33.776760>,  <26.056170, 33.528057, 33.762867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057911, 33.767647, 33.776760>,  <26.060814, 34.166965, 33.799915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.057911, 33.767647, 33.776760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999965, -0.007003, -0.004636,
		0.004223, -0.057919, 0.998312,
		-0.007259, -0.998297, -0.057888,
		26.055733, 33.468159, 33.759396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344706, 34.093975, 34.618713>,  <26.060814, 34.166965, 33.799915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.344706, 34.093975, 34.618713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580225, 33.962898, 34.914265>,  <26.721537, 33.884254, 35.091595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580225, 33.962898, 34.914265>,  <26.344706, 34.093975, 34.618713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580225, 33.962898, 34.914265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012832, 0.910227, 0.413910,
		-0.808178, -0.253191, 0.531735,
		0.588798, -0.327690, 0.738875,
		26.756865, 33.864590, 35.135925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019995, 34.293056, 35.241932>,  <26.344706, 34.093975, 34.618713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019995, 34.293056, 35.241932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.417091, 34.273144, 35.285717>,  <26.655350, 34.261196, 35.311989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.417091, 34.273144, 35.285717>,  <26.019995, 34.293056, 35.241932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.417091, 34.273144, 35.285717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001917, 0.903639, 0.428291,
		-0.120238, -0.425393, 0.896986,
		0.992743, -0.049778, 0.109467,
		26.714914, 34.258209, 35.318558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057808, 34.451431, 35.886395>,  <26.019995, 34.293056, 35.241932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057808, 34.451431, 35.886395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422737, 34.535183, 35.745636>,  <26.641695, 34.585434, 35.661182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422737, 34.535183, 35.745636>,  <26.057808, 34.451431, 35.886395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422737, 34.535183, 35.745636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018778, 0.879870, 0.474842,
		0.409045, -0.426601, 0.806656,
		0.912321, 0.209379, -0.351896,
		26.696434, 34.597996, 35.640068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278027, 34.642433, 36.407619>,  <26.057808, 34.451431, 35.886395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.278027, 34.642433, 36.407619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522329, 34.802711, 36.134441>,  <26.668911, 34.898880, 35.970535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522329, 34.802711, 36.134441>,  <26.278027, 34.642433, 36.407619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522329, 34.802711, 36.134441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018159, 0.855192, 0.517993,
		0.791609, -0.328769, 0.515039,
		0.610757, 0.400696, -0.682948,
		26.705557, 34.922920, 35.929558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845669, 34.894951, 36.758354>,  <26.278027, 34.642433, 36.407619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845669, 34.894951, 36.758354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850967, 35.085918, 36.406921>,  <26.854147, 35.200497, 36.196064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850967, 35.085918, 36.406921>,  <26.845669, 34.894951, 36.758354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850967, 35.085918, 36.406921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017836, 0.878629, 0.477173,
		0.999753, 0.009349, 0.020155,
		0.013248, 0.477415, -0.878578,
		26.854942, 35.229141, 36.143349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271616, 35.309624, 36.926270>,  <26.845669, 34.894951, 36.758354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271616, 35.309624, 36.926270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066931, 35.478500, 36.626961>,  <26.944118, 35.579826, 36.447376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066931, 35.478500, 36.626961>,  <27.271616, 35.309624, 36.926270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066931, 35.478500, 36.626961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017616, 0.875907, 0.482157,
		0.858975, 0.233545, -0.455652,
		-0.511714, 0.422188, -0.748268,
		26.913416, 35.605156, 36.402481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609949, 35.951447, 36.750454>,  <27.271616, 35.309624, 36.926270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609949, 35.951447, 36.750454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253618, 35.984928, 36.571831>,  <27.039820, 36.005016, 36.464657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253618, 35.984928, 36.571831>,  <27.609949, 35.951447, 36.750454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253618, 35.984928, 36.571831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079539, 0.938975, 0.334663,
		0.447322, 0.333647, -0.829809,
		-0.890829, 0.083700, -0.446562,
		26.986370, 36.010036, 36.437862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569859, 36.498840, 36.182846>,  <27.609949, 35.951447, 36.750454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569859, 36.498840, 36.182846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215822, 36.479900, 36.368050>,  <27.003401, 36.468536, 36.479172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215822, 36.479900, 36.368050>,  <27.569859, 36.498840, 36.182846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215822, 36.479900, 36.368050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117067, 0.940180, 0.319932,
		-0.450459, 0.337371, -0.826600,
		-0.885089, -0.047349, 0.463008,
		26.950296, 36.465694, 36.506950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375019, 37.173359, 36.153149>,  <27.569859, 36.498840, 36.182846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375019, 37.173359, 36.153149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091618, 37.013893, 36.386074>,  <26.921577, 36.918213, 36.525829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091618, 37.013893, 36.386074>,  <27.375019, 37.173359, 36.153149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091618, 37.013893, 36.386074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120281, 0.881290, 0.457012,
		-0.695382, 0.253754, -0.672349,
		-0.708503, -0.398669, 0.582311,
		26.879066, 36.894291, 36.560768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835121, 37.699032, 36.268036>,  <27.375019, 37.173359, 36.153149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835121, 37.699032, 36.268036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712290, 37.468678, 36.571102>,  <26.638590, 37.330463, 36.752941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712290, 37.468678, 36.571102>,  <26.835121, 37.699032, 36.268036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712290, 37.468678, 36.571102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120970, 0.813291, 0.569143,
		-0.943964, 0.083118, -0.319411,
		-0.307081, -0.575889, 0.757663,
		26.620165, 37.295910, 36.798401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407940, 38.065540, 36.606781>,  <26.835121, 37.699032, 36.268036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407940, 38.065540, 36.606781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512398, 37.770695, 36.856091>,  <26.575073, 37.593788, 37.005676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512398, 37.770695, 36.856091>,  <26.407940, 38.065540, 36.606781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512398, 37.770695, 36.856091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046894, 0.654606, 0.754514,
		-0.964160, -0.167809, 0.205513,
		0.261145, -0.737110, 0.623275,
		26.590742, 37.549561, 37.043072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.898254, 38.052750, 37.306099>,  <26.407940, 38.065540, 36.606781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.898254, 38.052750, 37.306099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259977, 37.905235, 37.392097>,  <26.477013, 37.816727, 37.443695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259977, 37.905235, 37.392097>,  <25.898254, 38.052750, 37.306099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.259977, 37.905235, 37.392097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039889, 0.574447, 0.817569,
		-0.425009, -0.730760, 0.534189,
		0.904309, -0.368783, 0.214996,
		26.531271, 37.794601, 37.456596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884039, 37.868599, 38.053593>,  <25.898254, 38.052750, 37.306099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884039, 37.868599, 38.053593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273272, 37.912548, 37.972561>,  <26.506811, 37.938919, 37.923943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273272, 37.912548, 37.972561>,  <25.884039, 37.868599, 38.053593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273272, 37.912548, 37.972561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135144, 0.439972, 0.887784,
		0.186675, -0.891264, 0.413280,
		0.973082, 0.109875, -0.202581,
		26.565197, 37.945511, 37.911785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115553, 37.812256, 38.707596>,  <25.884039, 37.868599, 38.053593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115553, 37.812256, 38.707596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429569, 37.960457, 38.509026>,  <26.617979, 38.049377, 38.389881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429569, 37.960457, 38.509026>,  <26.115553, 37.812256, 38.707596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429569, 37.960457, 38.509026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388974, 0.328860, 0.860552,
		0.482092, -0.868666, 0.114052,
		0.785039, 0.370502, -0.496429,
		26.665081, 38.071606, 38.360096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646000, 37.656887, 39.183365>,  <26.115553, 37.812256, 38.707596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646000, 37.656887, 39.183365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798651, 37.939037, 38.944431>,  <26.890242, 38.108330, 38.801071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798651, 37.939037, 38.944431>,  <26.646000, 37.656887, 39.183365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.798651, 37.939037, 38.944431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446946, 0.424846, 0.787239,
		0.809075, -0.567405, -0.153133,
		0.381626, 0.705377, -0.597332,
		26.913139, 38.150650, 38.765232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437759, 37.570084, 39.279152>,  <26.646000, 37.656887, 39.183365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437759, 37.570084, 39.279152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363138, 37.928429, 39.117844>,  <27.318365, 38.143436, 39.021061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363138, 37.928429, 39.117844>,  <27.437759, 37.570084, 39.279152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363138, 37.928429, 39.117844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464154, 0.442145, 0.767508,
		0.865886, -0.043997, -0.498302,
		-0.186554, 0.895864, -0.403269,
		27.307173, 38.197189, 38.996864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103590, 37.888748, 39.394833>,  <27.437759, 37.570084, 39.279152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103590, 37.888748, 39.394833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858938, 38.188553, 39.293530>,  <27.712147, 38.368435, 39.232750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858938, 38.188553, 39.293530>,  <28.103590, 37.888748, 39.394833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858938, 38.188553, 39.293530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614834, 0.651766, 0.444051,
		0.497885, 0.115885, -0.859465,
		-0.611629, 0.749515, -0.253255,
		27.675449, 38.413406, 39.217552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529434, 38.448219, 39.038658>,  <28.103590, 37.888748, 39.394833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529434, 38.448219, 39.038658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.199911, 38.587070, 39.217922>,  <28.002197, 38.670383, 39.325481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.199911, 38.587070, 39.217922>,  <28.529434, 38.448219, 39.038658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.199911, 38.587070, 39.217922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556621, 0.645015, 0.523573,
		-0.107319, 0.680775, -0.724588,
		-0.823805, 0.347132, 0.448156,
		27.952770, 38.691212, 39.352367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667049, 39.124336, 39.060776>,  <28.529434, 38.448219, 39.038658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667049, 39.124336, 39.060776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381460, 39.066570, 39.334824>,  <28.210106, 39.031910, 39.499252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381460, 39.066570, 39.334824>,  <28.667049, 39.124336, 39.060776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381460, 39.066570, 39.334824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411914, 0.704620, 0.577787,
		-0.566185, 0.694735, -0.443596,
		-0.713975, -0.144411, 0.685117,
		28.167267, 39.023247, 39.540359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548849, 39.710503, 39.275196>,  <28.667049, 39.124336, 39.060776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548849, 39.710503, 39.275196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.395679, 39.494804, 39.575218>,  <28.303778, 39.365383, 39.755230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.395679, 39.494804, 39.575218>,  <28.548849, 39.710503, 39.275196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395679, 39.494804, 39.575218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348283, 0.667749, 0.657883,
		-0.855610, 0.513151, -0.067886,
		-0.382924, -0.539247, 0.750054,
		28.280802, 39.333031, 39.800236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249184, 40.196815, 39.696777>,  <28.548849, 39.710503, 39.275196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249184, 40.196815, 39.696777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334200, 39.860062, 39.895195>,  <28.385210, 39.658009, 40.014244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334200, 39.860062, 39.895195>,  <28.249184, 40.196815, 39.696777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334200, 39.860062, 39.895195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206570, 0.534879, 0.819288,
		-0.955069, -0.071664, 0.287591,
		0.212540, -0.841884, 0.496043,
		28.397963, 39.607498, 40.044006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797472, 40.226513, 40.387863>,  <28.249184, 40.196815, 39.696777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797472, 40.226513, 40.387863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167633, 40.074921, 40.388161>,  <28.389730, 39.983963, 40.388340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167633, 40.074921, 40.388161>,  <27.797472, 40.226513, 40.387863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167633, 40.074921, 40.388161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318765, 0.779419, 0.539347,
		-0.204982, -0.498876, 0.842084,
		0.925403, -0.378983, 0.000742,
		28.445253, 39.961227, 40.388382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047119, 40.347008, 41.099487>,  <27.797472, 40.226513, 40.387863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047119, 40.347008, 41.099487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379232, 40.304974, 40.880550>,  <28.578501, 40.279755, 40.749187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379232, 40.304974, 40.880550>,  <28.047119, 40.347008, 41.099487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379232, 40.304974, 40.880550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405387, 0.787812, 0.463695,
		0.382477, -0.606885, 0.696708,
		0.830285, -0.105083, -0.547343,
		28.628317, 40.273449, 40.716347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687202, 40.308823, 41.540207>,  <28.047119, 40.347008, 41.099487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687202, 40.308823, 41.540207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789537, 40.455597, 41.182457>,  <28.850939, 40.543663, 40.967808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789537, 40.455597, 41.182457>,  <28.687202, 40.308823, 41.540207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789537, 40.455597, 41.182457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575367, 0.685662, 0.445893,
		0.776853, -0.628669, -0.035705,
		0.255838, 0.366937, -0.894373,
		28.866289, 40.565678, 40.914146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485847, 40.225773, 41.755085>,  <28.687202, 40.308823, 41.540207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485847, 40.225773, 41.755085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323652, 40.487335, 41.499592>,  <29.226336, 40.644272, 41.346294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323652, 40.487335, 41.499592>,  <29.485847, 40.225773, 41.755085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323652, 40.487335, 41.499592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577419, 0.724928, 0.375589,
		0.708637, -0.216520, -0.671530,
		-0.405488, 0.653911, -0.638734,
		29.202005, 40.683510, 41.307972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638470, 40.973377, 42.073910>,  <29.485847, 40.225773, 41.755085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638470, 40.973377, 42.073910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755806, 41.355618, 42.062695>,  <29.826208, 41.584961, 42.055965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755806, 41.355618, 42.062695>,  <29.638470, 40.973377, 42.073910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755806, 41.355618, 42.062695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956008, -0.293222, 0.008341,
		-0.000249, -0.029248, -0.999572,
		0.293340, 0.955597, -0.028035,
		29.843807, 41.642296, 42.054283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043554, 41.063343, 41.495651>,  <29.638470, 40.973377, 42.073910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043554, 41.063343, 41.495651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153555, 41.337620, 41.765228>,  <30.219555, 41.502186, 41.926975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153555, 41.337620, 41.765228>,  <30.043554, 41.063343, 41.495651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153555, 41.337620, 41.765228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827028, -0.526179, 0.197891,
		0.490307, 0.502947, -0.711789,
		0.275000, 0.685696, 0.673940,
		30.236055, 41.543327, 41.967411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804817, 41.074432, 41.436275>,  <30.043554, 41.063343, 41.495651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804817, 41.074432, 41.436275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671026, 41.220917, 41.783611>,  <30.590752, 41.308807, 41.992012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671026, 41.220917, 41.783611>,  <30.804817, 41.074432, 41.436275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671026, 41.220917, 41.783611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690337, -0.532029, 0.490285,
		0.641530, 0.763437, -0.074857,
		-0.334476, 0.366210, 0.868341,
		30.570684, 41.330780, 42.044113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694618, 40.408192, 41.417477>,  <30.804817, 41.074432, 41.436275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694618, 40.408192, 41.417477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727386, 40.065926, 41.621876>,  <30.747047, 39.860565, 41.744514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727386, 40.065926, 41.621876>,  <30.694618, 40.408192, 41.417477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727386, 40.065926, 41.621876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344567, -0.505424, -0.791088,
		0.935181, -0.111268, -0.336239,
		0.081920, -0.855667, 0.511002,
		30.751963, 39.809227, 41.775177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266016, 39.851597, 41.124432>,  <30.694618, 40.408192, 41.417477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266016, 39.851597, 41.124432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974352, 39.653522, 41.313374>,  <30.799353, 39.534679, 41.426739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974352, 39.653522, 41.313374>,  <31.266016, 39.851597, 41.124432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974352, 39.653522, 41.313374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012172, -0.699510, -0.714520,
		0.684235, -0.515249, 0.516081,
		-0.729159, -0.495182, 0.472357,
		30.755604, 39.504967, 41.455082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488964, 39.159874, 41.094387>,  <31.266016, 39.851597, 41.124432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488964, 39.159874, 41.094387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092461, 39.157478, 41.147106>,  <30.854559, 39.156040, 41.178738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092461, 39.157478, 41.147106>,  <31.488964, 39.159874, 41.094387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092461, 39.157478, 41.147106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073943, -0.802118, -0.592571,
		0.109267, -0.597136, 0.794663,
		-0.991259, -0.005989, 0.131799,
		30.795084, 39.155682, 41.186646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234858, 38.371349, 41.249660>,  <31.488964, 39.159874, 41.094387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234858, 38.371349, 41.249660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921635, 38.579666, 41.113659>,  <30.733702, 38.704655, 41.032059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921635, 38.579666, 41.113659>,  <31.234858, 38.371349, 41.249660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921635, 38.579666, 41.113659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315352, -0.803647, -0.504682,
		-0.536074, -0.287975, 0.793533,
		-0.783056, 0.520790, -0.340001,
		30.686718, 38.735905, 41.011658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731052, 37.862259, 41.302578>,  <31.234858, 38.371349, 41.249660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731052, 37.862259, 41.302578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606712, 38.141827, 41.044933>,  <30.532108, 38.309566, 40.890347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606712, 38.141827, 41.044933>,  <30.731052, 37.862259, 41.302578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606712, 38.141827, 41.044933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469958, -0.702071, -0.535009,
		-0.826143, 0.136400, 0.546702,
		-0.310848, 0.698921, -0.644114,
		30.513458, 38.351501, 40.851700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950163, 37.867519, 41.255920>,  <30.731052, 37.862259, 41.302578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950163, 37.867519, 41.255920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067739, 38.023018, 40.906639>,  <30.138285, 38.116318, 40.697071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067739, 38.023018, 40.906639>,  <29.950163, 37.867519, 41.255920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067739, 38.023018, 40.906639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483743, -0.727416, -0.486680,
		-0.824374, 0.565459, -0.025764,
		0.293940, 0.388743, -0.873200,
		30.155922, 38.139641, 40.644680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449512, 37.865822, 40.638000>,  <29.950163, 37.867519, 41.255920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449512, 37.865822, 40.638000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770741, 37.934914, 40.409878>,  <29.963476, 37.976368, 40.273006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770741, 37.934914, 40.409878>,  <29.449512, 37.865822, 40.638000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770741, 37.934914, 40.409878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342505, -0.649373, -0.678973,
		-0.487619, 0.740594, -0.462331,
		0.803068, 0.172730, -0.570303,
		30.011662, 37.986732, 40.238789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203955, 37.920895, 40.005520>,  <29.449512, 37.865822, 40.638000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203955, 37.920895, 40.005520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593191, 37.839283, 39.962692>,  <29.826733, 37.790318, 39.936996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593191, 37.839283, 39.962692>,  <29.203955, 37.920895, 40.005520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593191, 37.839283, 39.962692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228593, -0.796461, -0.559817,
		0.028943, 0.569229, -0.821670,
		0.973092, -0.204031, -0.107070,
		29.885118, 37.778072, 39.930573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343805, 37.807911, 39.282421>,  <29.203955, 37.920895, 40.005520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343805, 37.807911, 39.282421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648382, 37.625336, 39.466537>,  <29.831129, 37.515793, 39.577007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648382, 37.625336, 39.466537>,  <29.343805, 37.807911, 39.282421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648382, 37.625336, 39.466537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120341, -0.797267, -0.591510,
		0.636963, 0.395009, -0.662002,
		0.761443, -0.456436, 0.460294,
		29.876816, 37.488403, 39.604626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804541, 37.646461, 38.755833>,  <29.343805, 37.807911, 39.282421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804541, 37.646461, 38.755833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853359, 37.393757, 39.062031>,  <29.882650, 37.242134, 39.245750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853359, 37.393757, 39.062031>,  <29.804541, 37.646461, 38.755833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853359, 37.393757, 39.062031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163954, -0.773496, -0.612228,
		0.978889, -0.050785, -0.197983,
		0.122046, -0.631763, 0.765493,
		29.889973, 37.204227, 39.291679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246780, 37.164215, 38.503834>,  <29.804541, 37.646461, 38.755833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246780, 37.164215, 38.503834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085993, 36.966679, 38.812260>,  <29.989519, 36.848156, 38.997314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085993, 36.966679, 38.812260>,  <30.246780, 37.164215, 38.503834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085993, 36.966679, 38.812260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131521, -0.802219, -0.582364,
		0.906158, -0.335504, 0.257517,
		-0.401970, -0.493845, 0.771063,
		29.965401, 36.818523, 39.043579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678749, 36.531605, 38.491699>,  <30.246780, 37.164215, 38.503834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678749, 36.531605, 38.491699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331656, 36.463070, 38.678326>,  <30.123400, 36.421947, 38.790302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331656, 36.463070, 38.678326>,  <30.678749, 36.531605, 38.491699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331656, 36.463070, 38.678326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074734, -0.883056, -0.463279,
		0.491379, -0.436871, 0.753452,
		-0.867733, -0.171337, 0.466564,
		30.071335, 36.411667, 38.818295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792496, 35.846123, 38.692154>,  <30.678749, 36.531605, 38.491699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792496, 35.846123, 38.692154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401484, 35.927486, 38.714287>,  <30.166876, 35.976307, 38.727566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401484, 35.927486, 38.714287>,  <30.792496, 35.846123, 38.692154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401484, 35.927486, 38.714287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209871, -0.914458, -0.346006,
		-0.019787, -0.349843, 0.936599,
		-0.977529, 0.203411, 0.055328,
		30.108225, 35.988510, 38.730885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451578, 35.309002, 39.073586>,  <30.792496, 35.846123, 38.692154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451578, 35.309002, 39.073586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158962, 35.468155, 38.852119>,  <29.983393, 35.563644, 38.719242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158962, 35.468155, 38.852119>,  <30.451578, 35.309002, 39.073586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158962, 35.468155, 38.852119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241486, -0.910624, -0.335333,
		-0.637600, -0.111608, 0.762240,
		-0.731540, 0.397879, -0.553662,
		29.939501, 35.587517, 38.686020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993341, 34.773895, 39.042370>,  <30.451578, 35.309002, 39.073586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993341, 34.773895, 39.042370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844646, 35.012566, 38.757896>,  <29.755428, 35.155769, 38.587212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844646, 35.012566, 38.757896>,  <29.993341, 34.773895, 39.042370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844646, 35.012566, 38.757896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501604, -0.773728, -0.386960,
		-0.781157, 0.212889, 0.586917,
		-0.371735, 0.596677, -0.711189,
		29.733126, 35.191570, 38.544540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265127, 34.603737, 38.979813>,  <29.993341, 34.773895, 39.042370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265127, 34.603737, 38.979813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311424, 34.794823, 38.631470>,  <29.339203, 34.909473, 38.422462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311424, 34.794823, 38.631470>,  <29.265127, 34.603737, 38.979813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311424, 34.794823, 38.631470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499373, -0.729903, -0.466764,
		-0.858621, 0.488906, 0.154078,
		0.115742, 0.477716, -0.870857,
		29.346148, 34.938137, 38.370213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524096, 34.657990, 38.746727>,  <29.265127, 34.603737, 38.979813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524096, 34.657990, 38.746727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783587, 34.690918, 38.444103>,  <28.939281, 34.710674, 38.262531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783587, 34.690918, 38.444103>,  <28.524096, 34.657990, 38.746727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783587, 34.690918, 38.444103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468238, -0.740509, -0.482078,
		-0.599921, 0.666985, -0.441843,
		0.648728, 0.082321, -0.756555,
		28.978205, 34.715614, 38.217136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146030, 34.416607, 38.192657>,  <28.524096, 34.657990, 38.746727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146030, 34.416607, 38.192657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510069, 34.419163, 38.026917>,  <28.728491, 34.420696, 37.927471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510069, 34.419163, 38.026917>,  <28.146030, 34.416607, 38.192657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510069, 34.419163, 38.026917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261710, -0.766393, -0.586643,
		-0.321302, 0.642341, -0.695819,
		0.910095, 0.006386, -0.414351,
		28.783098, 34.421078, 37.902611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021669, 34.433258, 37.416817>,  <28.146030, 34.416607, 38.192657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021669, 34.433258, 37.416817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385456, 34.280300, 37.482109>,  <28.603729, 34.188526, 37.521282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385456, 34.280300, 37.482109>,  <28.021669, 34.433258, 37.416817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385456, 34.280300, 37.482109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179833, -0.715753, -0.674802,
		0.374871, 0.584357, -0.719721,
		0.909468, -0.382393, 0.163229,
		28.658297, 34.165581, 37.531078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161816, 34.321766, 36.764626>,  <28.021669, 34.433258, 37.416817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161816, 34.321766, 36.764626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400848, 34.094490, 36.990917>,  <28.544268, 33.958126, 37.126694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400848, 34.094490, 36.990917>,  <28.161816, 34.321766, 36.764626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400848, 34.094490, 36.990917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079880, -0.744251, -0.663107,
		0.797819, 0.351070, -0.490138,
		0.597583, -0.568191, 0.565734,
		28.580124, 33.924034, 37.160637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739285, 34.121014, 36.298138>,  <28.161816, 34.321766, 36.764626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739285, 34.121014, 36.298138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689495, 33.862518, 36.599304>,  <28.659622, 33.707420, 36.780006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689495, 33.862518, 36.599304>,  <28.739285, 34.121014, 36.298138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689495, 33.862518, 36.599304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118006, -0.743792, -0.657912,
		0.985181, -0.170740, 0.016322,
		-0.124472, -0.646236, 0.752918,
		28.652153, 33.668648, 36.825180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157120, 33.660568, 35.985928>,  <28.739285, 34.121014, 36.298138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157120, 33.660568, 35.985928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943617, 33.495728, 36.281300>,  <28.815516, 33.396824, 36.458523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943617, 33.495728, 36.281300>,  <29.157120, 33.660568, 35.985928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943617, 33.495728, 36.281300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108016, -0.832842, -0.542869,
		0.838710, -0.369523, 0.400023,
		-0.533759, -0.412100, 0.738428,
		28.783489, 33.372097, 36.502827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508505, 33.103714, 36.155548>,  <29.157120, 33.660568, 35.985928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508505, 33.103714, 36.155548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145742, 33.023090, 36.303547>,  <28.928085, 32.974716, 36.392345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145742, 33.023090, 36.303547>,  <29.508505, 33.103714, 36.155548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145742, 33.023090, 36.303547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041065, -0.831692, -0.553717,
		0.419330, -0.517362, 0.745988,
		-0.906905, -0.201556, 0.369999,
		28.873671, 32.962624, 36.414547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556408, 32.424358, 36.382465>,  <29.508505, 33.103714, 36.155548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556408, 32.424358, 36.382465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174364, 32.516914, 36.308468>,  <28.945137, 32.572449, 36.264069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174364, 32.516914, 36.308468>,  <29.556408, 32.424358, 36.382465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174364, 32.516914, 36.308468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069710, -0.782456, -0.618792,
		-0.287934, -0.578118, 0.763462,
		-0.955110, 0.231392, -0.184995,
		28.887831, 32.586330, 36.252968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889336, 31.976837, 36.841026>,  <29.556408, 32.424358, 36.382465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889336, 31.976837, 36.841026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589952, 32.080811, 37.085072>,  <29.410322, 32.143196, 37.231499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589952, 32.080811, 37.085072>,  <29.889336, 31.976837, 36.841026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589952, 32.080811, 37.085072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657815, -0.174200, -0.732758,
		-0.084185, -0.949784, 0.301369,
		-0.748460, 0.259933, 0.610117,
		29.365416, 32.158791, 37.268108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760941, 32.135208, 36.778801>,  <29.889336, 31.976837, 36.841026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760941, 32.135208, 36.778801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479696, 32.369350, 36.940289>,  <30.310949, 32.509838, 37.037182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479696, 32.369350, 36.940289>,  <30.760941, 32.135208, 36.778801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479696, 32.369350, 36.940289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627321, 0.777954, -0.035435,
		-0.334817, 0.228346, -0.914196,
		-0.703112, 0.585359, 0.403719,
		30.268763, 32.544960, 37.061405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782661, 32.642078, 36.404114>,  <30.760941, 32.135208, 36.778801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782661, 32.642078, 36.404114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640718, 32.764023, 36.757641>,  <30.555553, 32.837189, 36.969757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640718, 32.764023, 36.757641>,  <30.782661, 32.642078, 36.404114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640718, 32.764023, 36.757641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738390, 0.671240, 0.064935,
		-0.573460, 0.675647, -0.463298,
		-0.354858, 0.304857, 0.883820,
		30.534262, 32.855480, 37.022785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155746, 33.212639, 36.554596>,  <30.782661, 32.642078, 36.404114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155746, 33.212639, 36.554596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973989, 33.178154, 36.909245>,  <30.864935, 33.157463, 37.122032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973989, 33.178154, 36.909245>,  <31.155746, 33.212639, 36.554596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973989, 33.178154, 36.909245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676004, 0.614811, 0.406234,
		-0.580126, 0.783948, -0.221088,
		-0.454394, -0.086211, 0.886620,
		30.837671, 33.152290, 37.175232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898109, 33.948586, 36.823109>,  <31.155746, 33.212639, 36.554596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898109, 33.948586, 36.823109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987537, 33.672894, 37.098785>,  <31.041195, 33.507481, 37.264191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987537, 33.672894, 37.098785>,  <30.898109, 33.948586, 36.823109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987537, 33.672894, 37.098785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529731, 0.679463, 0.507656,
		-0.818170, 0.251589, 0.517012,
		0.223570, -0.689226, 0.689191,
		31.054607, 33.466125, 37.305542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957129, 34.201347, 37.576809>,  <30.898109, 33.948586, 36.823109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957129, 34.201347, 37.576809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176697, 33.867249, 37.589787>,  <31.308437, 33.666790, 37.597572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176697, 33.867249, 37.589787>,  <30.957129, 34.201347, 37.576809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176697, 33.867249, 37.589787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439125, 0.321185, 0.839053,
		-0.711236, -0.446324, 0.543082,
		0.548919, -0.835245, 0.032447,
		31.341373, 33.616676, 37.599522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100571, 34.068043, 38.239033>,  <30.957129, 34.201347, 37.576809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100571, 34.068043, 38.239033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390654, 33.853542, 38.066284>,  <31.564703, 33.724842, 37.962635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390654, 33.853542, 38.066284>,  <31.100571, 34.068043, 38.239033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390654, 33.853542, 38.066284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617430, 0.228892, 0.752588,
		-0.304725, -0.812430, 0.497092,
		0.725205, -0.536252, -0.431870,
		31.608215, 33.692665, 37.936722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295355, 33.625565, 38.712486>,  <31.100571, 34.068043, 38.239033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295355, 33.625565, 38.712486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599049, 33.696972, 38.462147>,  <31.781265, 33.739819, 38.311943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599049, 33.696972, 38.462147>,  <31.295355, 33.625565, 38.712486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599049, 33.696972, 38.462147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540671, 0.362264, 0.759236,
		0.362264, -0.914819, 0.178522,
		-0.759236, -0.178522, 0.625852,
		31.826820, 33.750530, 38.274391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981827, 33.472996, 39.117767>,  <31.295355, 33.625565, 38.712486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981827, 33.472996, 39.117767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071701, 33.696819, 38.798664>,  <32.125626, 33.831112, 38.607204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071701, 33.696819, 38.798664>,  <31.981827, 33.472996, 39.117767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071701, 33.696819, 38.798664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735488, 0.439649, 0.515525,
		0.639198, -0.702570, -0.312765,
		0.224685, 0.559557, -0.797755,
		32.139107, 33.864685, 38.559338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627296, 33.471912, 39.131420>,  <31.981827, 33.472996, 39.117767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627296, 33.471912, 39.131420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599052, 33.773285, 38.869934>,  <32.582108, 33.954109, 38.713043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599052, 33.773285, 38.869934>,  <32.627296, 33.471912, 39.131420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599052, 33.773285, 38.869934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656886, 0.528310, 0.537949,
		0.750676, -0.391438, -0.532223,
		-0.070606, 0.753436, -0.653720,
		32.577869, 33.999317, 38.673817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340366, 33.727341, 39.006851>,  <32.627296, 33.471912, 39.131420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340366, 33.727341, 39.006851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080036, 34.016922, 38.915359>,  <32.923840, 34.190670, 38.860466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080036, 34.016922, 38.915359>,  <33.340366, 33.727341, 39.006851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080036, 34.016922, 38.915359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607414, 0.677236, 0.415210,
		0.455495, 0.131298, -0.880503,
		-0.650825, 0.723956, -0.228726,
		32.884789, 34.234108, 38.846741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709129, 34.165356, 38.545067>,  <33.340366, 33.727341, 39.006851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709129, 34.165356, 38.545067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407211, 34.363365, 38.717224>,  <33.226063, 34.482170, 38.820518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407211, 34.363365, 38.717224>,  <33.709129, 34.165356, 38.545067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407211, 34.363365, 38.717224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642683, 0.689432, 0.334130,
		-0.131328, 0.528808, -0.838519,
		-0.754793, 0.495021, 0.430398,
		33.180775, 34.511871, 38.846344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036617, 34.923038, 38.555717>,  <33.709129, 34.165356, 38.545067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036617, 34.923038, 38.555717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740498, 34.933975, 38.824406>,  <33.562824, 34.940536, 38.985619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740498, 34.933975, 38.824406>,  <34.036617, 34.923038, 38.555717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740498, 34.933975, 38.824406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553910, 0.591029, 0.586403,
		-0.380975, 0.806186, -0.452682,
		-0.740298, 0.027340, 0.671722,
		33.518410, 34.942177, 39.025921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076584, 35.639809, 38.762943>,  <34.036617, 34.923038, 38.555717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076584, 35.639809, 38.762943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861210, 35.437778, 39.032753>,  <33.731983, 35.316559, 39.194637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861210, 35.437778, 39.032753>,  <34.076584, 35.639809, 38.762943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861210, 35.437778, 39.032753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498028, 0.454961, 0.738227,
		-0.679744, 0.733420, 0.006575,
		-0.538438, -0.505080, 0.674521,
		33.699677, 35.286255, 39.235107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928394, 36.144909, 39.256023>,  <34.076584, 35.639809, 38.762943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928394, 36.144909, 39.256023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883553, 35.803249, 39.459148>,  <33.856647, 35.598255, 39.581024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883553, 35.803249, 39.459148>,  <33.928394, 36.144909, 39.256023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883553, 35.803249, 39.459148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345833, 0.445548, 0.825764,
		-0.931575, 0.268187, 0.245444,
		-0.112102, -0.854144, 0.507810,
		33.849922, 35.547005, 39.611492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747238, 36.321148, 39.908253>,  <33.928394, 36.144909, 39.256023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747238, 36.321148, 39.908253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869469, 35.946613, 39.977425>,  <33.942806, 35.721893, 40.018929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869469, 35.946613, 39.977425>,  <33.747238, 36.321148, 39.908253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869469, 35.946613, 39.977425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325890, 0.273497, 0.904983,
		-0.894662, -0.220184, 0.388716,
		0.305576, -0.936332, 0.172932,
		33.961140, 35.665714, 40.029305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547573, 36.237267, 40.547535>,  <33.747238, 36.321148, 39.908253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547573, 36.237267, 40.547535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802330, 35.934143, 40.490837>,  <33.955185, 35.752270, 40.456818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802330, 35.934143, 40.490837>,  <33.547573, 36.237267, 40.547535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802330, 35.934143, 40.490837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339293, 0.110419, 0.934178,
		-0.692275, -0.643067, 0.327445,
		0.636895, -0.757808, -0.141748,
		33.993397, 35.706802, 40.448315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374962, 35.669888, 41.079197>,  <33.547573, 36.237267, 40.547535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374962, 35.669888, 41.079197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764915, 35.658863, 40.990799>,  <33.998886, 35.652248, 40.937759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764915, 35.658863, 40.990799>,  <33.374962, 35.669888, 41.079197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764915, 35.658863, 40.990799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222260, 0.057408, 0.973296,
		-0.014137, -0.997970, 0.062091,
		0.974885, -0.027560, -0.220998,
		34.057381, 35.650597, 40.924500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612087, 35.224766, 41.557838>,  <33.374962, 35.669888, 41.079197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612087, 35.224766, 41.557838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960274, 35.384235, 41.442352>,  <34.169186, 35.479916, 41.373062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960274, 35.384235, 41.442352>,  <33.612087, 35.224766, 41.557838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960274, 35.384235, 41.442352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293925, 0.049515, 0.954545,
		0.394845, -0.915756, -0.074078,
		0.870463, 0.398671, -0.288714,
		34.221413, 35.503838, 41.355740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138317, 34.941380, 42.020302>,  <33.612087, 35.224766, 41.557838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138317, 34.941380, 42.020302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342720, 35.245964, 41.860775>,  <34.465363, 35.428715, 41.765060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342720, 35.245964, 41.860775>,  <34.138317, 34.941380, 42.020302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342720, 35.245964, 41.860775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461663, 0.148242, 0.874581,
		0.725077, -0.631036, -0.275784,
		0.511009, 0.761458, -0.398813,
		34.496021, 35.474400, 41.741131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814049, 34.820263, 42.145782>,  <34.138317, 34.941380, 42.020302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814049, 34.820263, 42.145782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755547, 35.213562, 42.102257>,  <34.720444, 35.449539, 42.076141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755547, 35.213562, 42.102257>,  <34.814049, 34.820263, 42.145782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755547, 35.213562, 42.102257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492692, 0.167783, 0.853875,
		0.857825, 0.071271, -0.508976,
		-0.146255, 0.983244, -0.108814,
		34.711670, 35.508533, 42.069614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425781, 35.205509, 42.430161>,  <34.814049, 34.820263, 42.145782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425781, 35.205509, 42.430161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104279, 35.442410, 42.407463>,  <34.911377, 35.584549, 42.393845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104279, 35.442410, 42.407463>,  <35.425781, 35.205509, 42.430161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104279, 35.442410, 42.407463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294904, 0.479408, 0.826559,
		0.516730, 0.647618, -0.559983,
		-0.803755, 0.592249, -0.056739,
		34.863152, 35.620083, 42.390442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599491, 35.654701, 43.005581>,  <35.425781, 35.205509, 42.430161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599491, 35.654701, 43.005581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243973, 35.796104, 42.888912>,  <35.030663, 35.880947, 42.818909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243973, 35.796104, 42.888912>,  <35.599491, 35.654701, 43.005581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243973, 35.796104, 42.888912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092112, 0.485655, 0.869284,
		0.448949, 0.799483, -0.399087,
		-0.888797, 0.353504, -0.291676,
		34.977333, 35.902157, 42.801411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540184, 36.389641, 43.042236>,  <35.599491, 35.654701, 43.005581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540184, 36.389641, 43.042236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175804, 36.233940, 43.096870>,  <34.957176, 36.140518, 43.129650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175804, 36.233940, 43.096870>,  <35.540184, 36.389641, 43.042236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175804, 36.233940, 43.096870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088408, 0.507620, 0.857033,
		-0.402938, 0.768637, -0.496828,
		-0.910947, -0.389255, 0.136585,
		34.902519, 36.117165, 43.137848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246052, 36.992241, 43.387142>,  <35.540184, 36.389641, 43.042236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246052, 36.992241, 43.387142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988861, 36.690010, 43.437225>,  <34.834545, 36.508671, 43.467274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988861, 36.690010, 43.437225>,  <35.246052, 36.992241, 43.387142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988861, 36.690010, 43.437225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297376, 0.396949, 0.868331,
		-0.705794, 0.521085, -0.479921,
		-0.642979, -0.755580, 0.125206,
		34.795967, 36.463337, 43.474789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589619, 37.284882, 43.458481>,  <35.246052, 36.992241, 43.387142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589619, 37.284882, 43.458481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583897, 36.921124, 43.624760>,  <34.580463, 36.702869, 43.724525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583897, 36.921124, 43.624760>,  <34.589619, 37.284882, 43.458481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583897, 36.921124, 43.624760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254152, 0.405388, 0.878104,
		-0.967058, -0.093091, -0.236922,
		-0.014302, -0.909392, 0.415693,
		34.579605, 36.648304, 43.749466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038116, 37.251896, 43.907017>,  <34.589619, 37.284882, 43.458481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038116, 37.251896, 43.907017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228989, 36.928059, 44.043755>,  <34.343513, 36.733757, 44.125797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228989, 36.928059, 44.043755>,  <34.038116, 37.251896, 43.907017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228989, 36.928059, 44.043755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134313, 0.317236, 0.938787,
		-0.868480, -0.493887, 0.042641,
		0.477182, -0.809590, 0.341849,
		34.372143, 36.685181, 44.146309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541157, 37.010288, 44.514484>,  <34.038116, 37.251896, 43.907017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541157, 37.010288, 44.514484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913616, 36.876572, 44.572742>,  <34.137093, 36.796341, 44.607697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913616, 36.876572, 44.572742>,  <33.541157, 37.010288, 44.514484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913616, 36.876572, 44.572742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083804, 0.192544, 0.977703,
		-0.354878, -0.922593, 0.151273,
		0.931149, -0.334289, 0.145647,
		34.192963, 36.776287, 44.616436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584625, 36.727234, 45.228737>,  <33.541157, 37.010288, 44.514484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584625, 36.727234, 45.228737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969013, 36.739876, 45.118797>,  <34.199646, 36.747459, 45.052834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969013, 36.739876, 45.118797>,  <33.584625, 36.727234, 45.228737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969013, 36.739876, 45.118797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244390, 0.368677, 0.896856,
		0.129678, -0.929020, 0.346562,
		0.960967, 0.031606, -0.274853,
		34.257301, 36.749359, 45.036343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941147, 36.371784, 45.710361>,  <33.584625, 36.727234, 45.228737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941147, 36.371784, 45.710361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173218, 36.650131, 45.541050>,  <34.312462, 36.817139, 45.439465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173218, 36.650131, 45.541050>,  <33.941147, 36.371784, 45.710361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173218, 36.650131, 45.541050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168708, 0.405739, 0.898284,
		0.796823, -0.592577, 0.118004,
		0.580181, 0.695865, -0.423274,
		34.347271, 36.858891, 45.414066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478619, 36.284256, 46.139912>,  <33.941147, 36.371784, 45.710361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478619, 36.284256, 46.139912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514072, 36.628670, 45.939606>,  <34.535347, 36.835320, 45.819424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514072, 36.628670, 45.939606>,  <34.478619, 36.284256, 46.139912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514072, 36.628670, 45.939606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325001, 0.450228, 0.831666,
		0.941551, -0.236467, -0.239929,
		0.088639, 0.861033, -0.500765,
		34.540665, 36.886978, 45.789375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135395, 36.493820, 46.284397>,  <34.478619, 36.284256, 46.139912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135395, 36.493820, 46.284397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927605, 36.816509, 46.171730>,  <34.802929, 37.010124, 46.104130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927605, 36.816509, 46.171730>,  <35.135395, 36.493820, 46.284397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927605, 36.816509, 46.171730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140742, 0.405914, 0.903009,
		0.842813, 0.429451, -0.324403,
		-0.519478, 0.806725, -0.281668,
		34.771763, 37.058525, 46.087231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496632, 37.032314, 46.538456>,  <35.135395, 36.493820, 46.284397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496632, 37.032314, 46.538456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141644, 37.195583, 46.452854>,  <34.928650, 37.293545, 46.401493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141644, 37.195583, 46.452854>,  <35.496632, 37.032314, 46.538456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141644, 37.195583, 46.452854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104365, 0.630275, 0.769326,
		0.448896, 0.660418, -0.601947,
		-0.887468, 0.408169, -0.214004,
		34.875404, 37.318035, 46.388653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510571, 37.748966, 46.669441>,  <35.496632, 37.032314, 46.538456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510571, 37.748966, 46.669441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133453, 37.628998, 46.727676>,  <34.907185, 37.557014, 46.762615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133453, 37.628998, 46.727676>,  <35.510571, 37.748966, 46.669441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133453, 37.628998, 46.727676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016852, 0.478990, 0.877658,
		-0.332966, 0.824993, -0.456641,
		-0.942788, -0.299926, 0.145585,
		34.850616, 37.539021, 46.771351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183556, 38.378742, 46.818165>,  <35.510571, 37.748966, 46.669441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183556, 38.378742, 46.818165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953762, 38.085472, 46.963726>,  <34.815887, 37.909512, 47.051064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953762, 38.085472, 46.963726>,  <35.183556, 38.378742, 46.818165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953762, 38.085472, 46.963726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079787, 0.492633, 0.866572,
		-0.814618, 0.468797, -0.341507,
		-0.574484, -0.733172, 0.363904,
		34.781418, 37.865520, 47.072899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690025, 38.764061, 47.100151>,  <35.183556, 38.378742, 46.818165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690025, 38.764061, 47.100151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643368, 38.402248, 47.264202>,  <34.615372, 38.185162, 47.362633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643368, 38.402248, 47.264202>,  <34.690025, 38.764061, 47.100151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643368, 38.402248, 47.264202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158936, 0.424630, 0.891307,
		-0.980374, 0.038783, -0.193295,
		-0.116646, -0.904536, 0.410132,
		34.608376, 38.130886, 47.387241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021496, 38.777836, 47.420544>,  <34.690025, 38.764061, 47.100151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021496, 38.777836, 47.420544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226795, 38.496418, 47.617157>,  <34.349976, 38.327568, 47.735126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226795, 38.496418, 47.617157>,  <34.021496, 38.777836, 47.420544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226795, 38.496418, 47.617157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292282, 0.395204, 0.870853,
		-0.806938, -0.590630, -0.002795,
		0.513247, -0.703541, 0.491535,
		34.380768, 38.285355, 47.764618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605942, 38.454536, 47.869884>,  <34.021496, 38.777836, 47.420544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605942, 38.454536, 47.869884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967415, 38.393822, 48.030045>,  <34.184299, 38.357395, 48.126141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967415, 38.393822, 48.030045>,  <33.605942, 38.454536, 47.869884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967415, 38.393822, 48.030045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374712, 0.172234, 0.911003,
		-0.207237, -0.973292, 0.098770,
		0.903683, -0.151783, 0.400398,
		34.238522, 38.348286, 48.150166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530769, 38.393368, 48.596954>,  <33.605942, 38.454536, 47.869884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530769, 38.393368, 48.596954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930588, 38.404205, 48.591759>,  <34.170479, 38.410709, 48.588642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930588, 38.404205, 48.591759>,  <33.530769, 38.393368, 48.596954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930588, 38.404205, 48.591759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007437, 0.195831, 0.980609,
		0.029111, -0.980263, 0.195541,
		0.999549, 0.027092, -0.012991,
		34.230453, 38.412334, 48.587860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802135, 37.972443, 49.066856>,  <33.530769, 38.393368, 48.596954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802135, 37.972443, 49.066856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096462, 38.233315, 48.993931>,  <34.273060, 38.389835, 48.950176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096462, 38.233315, 48.993931>,  <33.802135, 37.972443, 49.066856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096462, 38.233315, 48.993931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148785, 0.106948, 0.983069,
		0.660633, -0.750485, -0.018340,
		0.735817, 0.652176, -0.182314,
		34.317207, 38.428967, 48.939236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405113, 37.796291, 49.532852>,  <33.802135, 37.972443, 49.066856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405113, 37.796291, 49.532852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438896, 38.171299, 49.397842>,  <34.459164, 38.396305, 49.316837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438896, 38.171299, 49.397842>,  <34.405113, 37.796291, 49.532852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438896, 38.171299, 49.397842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147999, 0.346782, 0.926196,
		0.985375, -0.028268, 0.168039,
		0.084455, 0.937519, -0.337527,
		34.464233, 38.452557, 49.296585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844288, 38.176304, 50.019215>,  <34.405113, 37.796291, 49.532852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844288, 38.176304, 50.019215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615383, 38.426971, 49.807629>,  <34.478039, 38.577370, 49.680679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615383, 38.426971, 49.807629>,  <34.844288, 38.176304, 50.019215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615383, 38.426971, 49.807629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311794, 0.430317, 0.847120,
		0.758483, 0.649705, -0.050865,
		-0.572266, 0.626666, -0.528962,
		34.443703, 38.614971, 49.648941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004871, 38.963509, 50.186409>,  <34.844288, 38.176304, 50.019215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004871, 38.963509, 50.186409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625843, 38.935398, 50.061726>,  <34.398426, 38.918533, 49.986916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625843, 38.935398, 50.061726>,  <35.004871, 38.963509, 50.186409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625843, 38.935398, 50.061726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304226, 0.496756, 0.812822,
		0.097722, 0.865040, -0.492094,
		-0.947574, -0.070278, -0.311712,
		34.341572, 38.914314, 49.968212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762558, 39.653877, 50.360699>,  <35.004871, 38.963509, 50.186409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762558, 39.653877, 50.360699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441235, 39.423546, 50.299881>,  <34.248440, 39.285347, 50.263390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441235, 39.423546, 50.299881>,  <34.762558, 39.653877, 50.360699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441235, 39.423546, 50.299881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529661, 0.574013, 0.624474,
		-0.272315, 0.582177, -0.766104,
		-0.803308, -0.575829, -0.152044,
		34.200241, 39.250797, 50.254269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196854, 40.096268, 50.393478>,  <34.762558, 39.653877, 50.360699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196854, 40.096268, 50.393478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005772, 39.751217, 50.460014>,  <33.891125, 39.544186, 50.499935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005772, 39.751217, 50.460014>,  <34.196854, 40.096268, 50.393478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005772, 39.751217, 50.460014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211035, 0.296473, 0.931433,
		-0.852799, 0.409843, -0.323671,
		-0.477701, -0.862631, 0.166341,
		33.862461, 39.492428, 50.509918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518795, 40.203876, 50.664967>,  <34.196854, 40.096268, 50.393478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518795, 40.203876, 50.664967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621243, 39.835419, 50.782192>,  <33.682713, 39.614342, 50.852528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621243, 39.835419, 50.782192>,  <33.518795, 40.203876, 50.664967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621243, 39.835419, 50.782192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353985, 0.192744, 0.915174,
		-0.899499, -0.338135, -0.276708,
		0.256119, -0.921149, 0.293068,
		33.698078, 39.559074, 50.870113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891678, 39.997562, 50.954464>,  <33.518795, 40.203876, 50.664967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891678, 39.997562, 50.954464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191479, 39.767090, 51.084854>,  <33.371361, 39.628807, 51.163090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191479, 39.767090, 51.084854>,  <32.891678, 39.997562, 50.954464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191479, 39.767090, 51.084854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355602, 0.064928, 0.932380,
		-0.558387, -0.814737, -0.156229,
		0.749501, -0.576183, 0.325977,
		33.416328, 39.594234, 51.182648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599995, 39.429070, 51.297665>,  <32.891678, 39.997562, 50.954464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599995, 39.429070, 51.297665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969070, 39.527058, 51.416756>,  <33.190514, 39.585850, 51.488209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969070, 39.527058, 51.416756>,  <32.599995, 39.429070, 51.297665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969070, 39.527058, 51.416756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238583, -0.243828, 0.940014,
		0.302871, -0.938369, -0.166530,
		0.922685, 0.244972, 0.297728,
		33.245876, 39.600548, 51.506073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779446, 38.909916, 51.650494>,  <32.599995, 39.429070, 51.297665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779446, 38.909916, 51.650494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978081, 39.235455, 51.771194>,  <33.097260, 39.430779, 51.843616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978081, 39.235455, 51.771194>,  <32.779446, 38.909916, 51.650494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978081, 39.235455, 51.771194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323400, -0.149135, 0.934436,
		0.805491, -0.561613, 0.189140,
		0.496584, 0.813849, 0.301753,
		33.127056, 39.479610, 51.861721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080471, 38.699955, 52.291599>,  <32.779446, 38.909916, 51.650494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080471, 38.699955, 52.291599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068428, 39.099335, 52.272907>,  <33.061203, 39.338963, 52.261692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068428, 39.099335, 52.272907>,  <33.080471, 38.699955, 52.291599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068428, 39.099335, 52.272907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210768, 0.039361, 0.976743,
		0.977072, 0.039261, 0.209257,
		-0.030112, 0.998453, -0.046734,
		33.059395, 39.398872, 52.258888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567028, 38.905502, 52.761436>,  <33.080471, 38.699955, 52.291599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567028, 38.905502, 52.761436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252743, 39.147392, 52.709332>,  <33.064171, 39.292526, 52.678070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252743, 39.147392, 52.709332>,  <33.567028, 38.905502, 52.761436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252743, 39.147392, 52.709332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205394, -0.056406, 0.977053,
		0.583500, 0.794435, 0.168525,
		-0.785711, 0.604724, -0.130259,
		33.017029, 39.328808, 52.670254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615570, 39.546257, 53.143734>,  <33.567028, 38.905502, 52.761436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615570, 39.546257, 53.143734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257133, 39.377964, 53.087162>,  <33.042072, 39.276989, 53.053219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257133, 39.377964, 53.087162>,  <33.615570, 39.546257, 53.143734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257133, 39.377964, 53.087162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087461, -0.145021, 0.985556,
		-0.435164, 0.895519, 0.093155,
		-0.896093, -0.420731, -0.141431,
		32.988304, 39.251743, 53.044731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143570, 39.127796, 53.491215>,  <33.615570, 39.546257, 53.143734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143570, 39.127796, 53.491215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384201, 38.830357, 53.607952>,  <34.528580, 38.651894, 53.677994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384201, 38.830357, 53.607952>,  <34.143570, 39.127796, 53.491215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384201, 38.830357, 53.607952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286454, -0.541858, -0.790148,
		0.745688, 0.391734, -0.538974,
		0.601575, -0.743595, 0.291844,
		34.564674, 38.607277, 53.695507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269207, 38.618538, 52.949154>,  <34.143570, 39.127796, 53.491215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269207, 38.618538, 52.949154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374596, 38.376827, 53.249935>,  <34.437828, 38.231800, 53.430405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374596, 38.376827, 53.249935>,  <34.269207, 38.618538, 52.949154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374596, 38.376827, 53.249935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239798, -0.796055, -0.555692,
		0.934386, -0.033905, -0.354645,
		0.263476, -0.604275, 0.751953,
		34.453640, 38.195545, 53.475521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874733, 38.238937, 52.750023>,  <34.269207, 38.618538, 52.949154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874733, 38.238937, 52.750023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618378, 38.056992, 52.997364>,  <34.464565, 37.947826, 53.145771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618378, 38.056992, 52.997364>,  <34.874733, 38.238937, 52.750023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618378, 38.056992, 52.997364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200710, -0.678219, -0.706918,
		0.740931, -0.577166, 0.343367,
		-0.640887, -0.454861, 0.618357,
		34.426113, 37.920532, 53.182873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034122, 37.513931, 52.714630>,  <34.874733, 38.238937, 52.750023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034122, 37.513931, 52.714630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648041, 37.547569, 52.813679>,  <34.416393, 37.567753, 52.873108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648041, 37.547569, 52.813679>,  <35.034122, 37.513931, 52.714630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648041, 37.547569, 52.813679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233545, -0.703246, -0.671492,
		0.117665, -0.705955, 0.698414,
		-0.965200, 0.084100, 0.247620,
		34.358482, 37.572800, 52.887966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792065, 36.908302, 53.119999>,  <35.034122, 37.513931, 52.714630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792065, 36.908302, 53.119999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516403, 37.110291, 52.912121>,  <34.351006, 37.231483, 52.787395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516403, 37.110291, 52.912121>,  <34.792065, 36.908302, 53.119999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516403, 37.110291, 52.912121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041997, -0.743820, -0.667059,
		-0.723393, -0.437884, 0.533817,
		-0.689158, 0.504964, -0.519684,
		34.309658, 37.261780, 52.756214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350647, 36.317402, 52.907761>,  <34.792065, 36.908302, 53.119999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350647, 36.317402, 52.907761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227394, 36.596966, 52.649590>,  <34.153442, 36.764706, 52.494686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227394, 36.596966, 52.649590>,  <34.350647, 36.317402, 52.907761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227394, 36.596966, 52.649590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077486, -0.694622, -0.715190,
		-0.948182, -0.170363, 0.268192,
		-0.308134, 0.698911, -0.645427,
		34.134953, 36.806641, 52.455963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756020, 35.981915, 52.409969>,  <34.350647, 36.317402, 52.907761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756020, 35.981915, 52.409969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842747, 36.322102, 52.218262>,  <33.894783, 36.526215, 52.103237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842747, 36.322102, 52.218262>,  <33.756020, 35.981915, 52.409969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842747, 36.322102, 52.218262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107648, -0.467127, -0.877612,
		-0.970258, 0.241876, -0.009732,
		0.216819, 0.850464, -0.479271,
		33.907791, 36.577240, 52.074482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364925, 36.015293, 51.787052>,  <33.756020, 35.981915, 52.409969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364925, 36.015293, 51.787052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659641, 36.273342, 51.706100>,  <33.836472, 36.428173, 51.657532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659641, 36.273342, 51.706100>,  <33.364925, 36.015293, 51.787052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659641, 36.273342, 51.706100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037401, -0.337749, -0.940493,
		-0.675084, 0.685379, -0.272979,
		0.736792, 0.645121, -0.202375,
		33.880680, 36.466877, 51.645390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187466, 36.346409, 51.151123>,  <33.364925, 36.015293, 51.787052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187466, 36.346409, 51.151123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581619, 36.376270, 51.212368>,  <33.818111, 36.394188, 51.249115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581619, 36.376270, 51.212368>,  <33.187466, 36.346409, 51.151123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581619, 36.376270, 51.212368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163424, -0.160714, -0.973377,
		-0.048057, 0.984174, -0.170565,
		0.985385, 0.074652, 0.153114,
		33.877235, 36.398666, 51.258301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455368, 36.853542, 50.683945>,  <33.187466, 36.346409, 51.151123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455368, 36.853542, 50.683945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769638, 36.634983, 50.799992>,  <33.958199, 36.503849, 50.869621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769638, 36.634983, 50.799992>,  <33.455368, 36.853542, 50.683945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769638, 36.634983, 50.799992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213427, -0.200770, -0.956107,
		0.580659, 0.813108, -0.041125,
		0.785674, -0.546395, 0.290118,
		34.005341, 36.471066, 50.887028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065880, 37.081539, 50.350418>,  <33.455368, 36.853542, 50.683945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065880, 37.081539, 50.350418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120415, 36.697971, 50.449928>,  <34.153133, 36.467831, 50.509636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120415, 36.697971, 50.449928>,  <34.065880, 37.081539, 50.350418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120415, 36.697971, 50.449928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233843, -0.212876, -0.948684,
		0.962668, 0.187513, 0.195214,
		0.136334, -0.958917, 0.248778,
		34.161316, 36.410297, 50.524563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547894, 36.958061, 49.896297>,  <34.065880, 37.081539, 50.350418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547894, 36.958061, 49.896297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428928, 36.598099, 50.023872>,  <34.357548, 36.382122, 50.100418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428928, 36.598099, 50.023872>,  <34.547894, 36.958061, 49.896297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428928, 36.598099, 50.023872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319819, -0.408657, -0.854819,
		0.899590, -0.152231, 0.409346,
		-0.297412, -0.899903, 0.318937,
		34.339706, 36.328129, 50.119553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127254, 36.484444, 49.727806>,  <34.547894, 36.958061, 49.896297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127254, 36.484444, 49.727806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829636, 36.223476, 49.785419>,  <34.651066, 36.066895, 49.819988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829636, 36.223476, 49.785419>,  <35.127254, 36.484444, 49.727806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829636, 36.223476, 49.785419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268483, -0.489362, -0.829724,
		0.611815, -0.578679, 0.539270,
		-0.744043, -0.652423, 0.144034,
		34.606422, 36.027748, 49.828629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361897, 35.775406, 49.687584>,  <35.127254, 36.484444, 49.727806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361897, 35.775406, 49.687584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975239, 35.745674, 49.589550>,  <34.743244, 35.727837, 49.530727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975239, 35.745674, 49.589550>,  <35.361897, 35.775406, 49.687584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975239, 35.745674, 49.589550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245818, -0.537811, -0.806432,
		-0.071872, -0.839782, 0.538145,
		-0.966648, -0.074326, -0.245087,
		34.685246, 35.723377, 49.516026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152401, 35.034901, 49.520077>,  <35.361897, 35.775406, 49.687584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152401, 35.034901, 49.520077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863056, 35.248276, 49.344715>,  <34.689449, 35.376301, 49.239498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863056, 35.248276, 49.344715>,  <35.152401, 35.034901, 49.520077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863056, 35.248276, 49.344715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232435, -0.409756, -0.882085,
		-0.650176, -0.739964, 0.172410,
		-0.723357, 0.533436, -0.438407,
		34.646049, 35.408306, 49.213192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756371, 34.529106, 49.152233>,  <35.152401, 35.034901, 49.520077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756371, 34.529106, 49.152233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644127, 34.872086, 48.979706>,  <34.576778, 35.077873, 48.876190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644127, 34.872086, 48.979706>,  <34.756371, 34.529106, 49.152233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644127, 34.872086, 48.979706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165868, -0.399295, -0.901693,
		-0.945381, -0.324568, -0.030177,
		-0.280611, 0.857449, -0.431322,
		34.559944, 35.129322, 48.850307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329346, 34.296879, 48.640400>,  <34.756371, 34.529106, 49.152233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329346, 34.296879, 48.640400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454090, 34.663395, 48.539871>,  <34.528934, 34.883305, 48.479553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454090, 34.663395, 48.539871>,  <34.329346, 34.296879, 48.640400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454090, 34.663395, 48.539871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084919, -0.290338, -0.953149,
		-0.946326, 0.275905, -0.168354,
		0.311858, 0.916286, -0.251324,
		34.547649, 34.938282, 48.464474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018024, 34.465885, 47.977932>,  <34.329346, 34.296879, 48.640400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018024, 34.465885, 47.977932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305592, 34.743847, 47.984501>,  <34.478130, 34.910625, 47.988441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305592, 34.743847, 47.984501>,  <34.018024, 34.465885, 47.977932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305592, 34.743847, 47.984501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281138, -0.269085, -0.921170,
		-0.635705, 0.666860, -0.388813,
		0.718916, 0.694903, 0.016421,
		34.521267, 34.952316, 47.989426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827530, 34.849030, 47.490681>,  <34.018024, 34.465885, 47.977932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827530, 34.849030, 47.490681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216343, 34.923042, 47.548534>,  <34.449631, 34.967449, 47.583244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216343, 34.923042, 47.548534>,  <33.827530, 34.849030, 47.490681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216343, 34.923042, 47.548534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182043, -0.204543, -0.961781,
		-0.148379, 0.961210, -0.232506,
		0.972031, 0.185035, 0.144632,
		34.507954, 34.978554, 47.591923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085102, 35.393818, 46.954201>,  <33.827530, 34.849030, 47.490681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085102, 35.393818, 46.954201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411312, 35.199867, 47.080574>,  <34.607037, 35.083496, 47.156399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411312, 35.199867, 47.080574>,  <34.085102, 35.393818, 46.954201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411312, 35.199867, 47.080574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188628, -0.293403, -0.937195,
		0.547125, 0.823897, -0.147814,
		0.815521, -0.484881, 0.315938,
		34.655968, 35.054401, 47.175354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674187, 35.559547, 46.517853>,  <34.085102, 35.393818, 46.954201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674187, 35.559547, 46.517853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765274, 35.203442, 46.675621>,  <34.819927, 34.989777, 46.770283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765274, 35.203442, 46.675621>,  <34.674187, 35.559547, 46.517853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765274, 35.203442, 46.675621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341436, -0.306337, -0.888583,
		0.911902, 0.337016, 0.234211,
		0.227719, -0.890268, 0.394419,
		34.833591, 34.936359, 46.793945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266357, 35.370998, 46.152763>,  <34.674187, 35.559547, 46.517853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266357, 35.370998, 46.152763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147293, 35.027275, 46.319130>,  <35.075855, 34.821041, 46.418949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147293, 35.027275, 46.319130>,  <35.266357, 35.370998, 46.152763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147293, 35.027275, 46.319130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270398, -0.493710, -0.826520,
		0.915578, -0.133559, 0.379313,
		-0.297660, -0.859309, 0.415916,
		35.057995, 34.769482, 46.443905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687031, 34.954815, 45.872467>,  <35.266357, 35.370998, 46.152763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687031, 34.954815, 45.872467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385113, 34.725784, 46.000488>,  <35.203960, 34.588367, 46.077301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385113, 34.725784, 46.000488>,  <35.687031, 34.954815, 45.872467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385113, 34.725784, 46.000488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090943, -0.574550, -0.813401,
		0.649620, -0.584848, 0.485742,
		-0.754799, -0.572577, 0.320052,
		35.158672, 34.554012, 46.096504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964127, 34.200264, 45.722454>,  <35.687031, 34.954815, 45.872467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964127, 34.200264, 45.722454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567768, 34.196007, 45.776146>,  <35.329952, 34.193451, 45.808361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567768, 34.196007, 45.776146>,  <35.964127, 34.200264, 45.722454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567768, 34.196007, 45.776146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113154, -0.474507, -0.872949,
		0.072981, -0.880187, 0.468982,
		-0.990893, -0.010642, 0.134227,
		35.270500, 34.192814, 45.816414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825603, 33.461140, 45.553852>,  <35.964127, 34.200264, 45.722454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825603, 33.461140, 45.553852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484180, 33.659378, 45.489574>,  <35.279327, 33.778320, 45.451008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484180, 33.659378, 45.489574>,  <35.825603, 33.461140, 45.553852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484180, 33.659378, 45.489574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157728, -0.539771, -0.826903,
		-0.496548, -0.680464, 0.538896,
		-0.853559, 0.495596, -0.160694,
		35.228111, 33.808056, 45.441364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328259, 32.998810, 45.345810>,  <35.825603, 33.461140, 45.553852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328259, 32.998810, 45.345810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173031, 33.340675, 45.207851>,  <35.079895, 33.545795, 45.125076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173031, 33.340675, 45.207851>,  <35.328259, 32.998810, 45.345810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173031, 33.340675, 45.207851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117368, -0.417012, -0.901291,
		-0.914126, -0.309284, 0.262140,
		-0.388071, 0.854661, -0.344901,
		35.056610, 33.597073, 45.104382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923489, 32.735390, 44.942490>,  <35.328259, 32.998810, 45.345810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923489, 32.735390, 44.942490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909111, 33.117622, 44.825485>,  <34.900482, 33.346962, 44.755283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909111, 33.117622, 44.825485>,  <34.923489, 32.735390, 44.942490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909111, 33.117622, 44.825485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180522, -0.294099, -0.938572,
		-0.982914, 0.019068, 0.183075,
		-0.035946, 0.955585, -0.292516,
		34.898327, 33.404297, 44.737732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397373, 32.777782, 44.554993>,  <34.923489, 32.735390, 44.942490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397373, 32.777782, 44.554993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557228, 33.124016, 44.434296>,  <34.653141, 33.331757, 44.361877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557228, 33.124016, 44.434296>,  <34.397373, 32.777782, 44.554993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557228, 33.124016, 44.434296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223406, -0.227277, -0.947858,
		-0.889031, 0.446214, 0.102548,
		0.399641, 0.865586, -0.301743,
		34.677120, 33.383690, 44.343773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876518, 33.206474, 44.174820>,  <34.397373, 32.777782, 44.554993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876518, 33.206474, 44.174820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246300, 33.281967, 44.042297>,  <34.468170, 33.327263, 43.962784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246300, 33.281967, 44.042297>,  <33.876518, 33.206474, 44.174820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246300, 33.281967, 44.042297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265157, -0.306205, -0.914292,
		-0.274004, 0.933070, -0.233029,
		0.924453, 0.188730, -0.331311,
		34.523636, 33.338585, 43.942905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805439, 33.513165, 43.579441>,  <33.876518, 33.206474, 44.174820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805439, 33.513165, 43.579441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193878, 33.422455, 43.549671>,  <34.426941, 33.368031, 43.531811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193878, 33.422455, 43.549671>,  <33.805439, 33.513165, 43.579441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193878, 33.422455, 43.549671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151638, -0.345429, -0.926113,
		0.184309, 0.910634, -0.369833,
		0.971100, -0.226772, -0.074421,
		34.485207, 33.354424, 43.527344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905533, 33.713531, 42.920624>,  <33.805439, 33.513165, 43.579441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905533, 33.713531, 42.920624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204350, 33.466480, 43.018982>,  <34.383640, 33.318249, 43.077995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204350, 33.466480, 43.018982>,  <33.905533, 33.713531, 42.920624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204350, 33.466480, 43.018982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070758, -0.441657, -0.894389,
		0.661003, 0.650746, -0.373638,
		0.747040, -0.617632, 0.245891,
		34.428463, 33.281189, 43.092751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344318, 33.799946, 42.443085>,  <33.905533, 33.713531, 42.920624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344318, 33.799946, 42.443085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439754, 33.439331, 42.587475>,  <34.497017, 33.222961, 42.674110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439754, 33.439331, 42.587475>,  <34.344318, 33.799946, 42.443085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439754, 33.439331, 42.587475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149639, -0.333142, -0.930927,
		0.959522, 0.276128, 0.055420,
		0.238592, -0.901537, 0.360976,
		34.511333, 33.168869, 42.695766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789577, 33.668949, 41.975620>,  <34.344318, 33.799946, 42.443085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789577, 33.668949, 41.975620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703617, 33.320202, 42.151649>,  <34.652039, 33.110954, 42.257267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703617, 33.320202, 42.151649>,  <34.789577, 33.668949, 41.975620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703617, 33.320202, 42.151649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014220, -0.453348, -0.891220,
		0.976532, -0.185269, 0.109825,
		-0.214905, -0.871866, 0.440074,
		34.639145, 33.058643, 42.283672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279522, 33.283569, 41.775909>,  <34.789577, 33.668949, 41.975620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279522, 33.283569, 41.775909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969467, 33.051373, 41.875668>,  <34.783436, 32.912056, 41.935520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969467, 33.051373, 41.875668>,  <35.279522, 33.283569, 41.775909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969467, 33.051373, 41.875668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030035, -0.428148, -0.903209,
		0.631080, -0.692620, 0.349308,
		-0.775136, -0.580489, 0.249393,
		34.736927, 32.877228, 41.950485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360500, 32.823273, 41.331226>,  <35.279522, 33.283569, 41.775909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360500, 32.823273, 41.331226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999706, 32.679192, 41.426456>,  <34.783230, 32.592743, 41.483593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999706, 32.679192, 41.426456>,  <35.360500, 32.823273, 41.331226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999706, 32.679192, 41.426456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024718, -0.507404, -0.861354,
		0.431063, -0.782811, 0.448766,
		-0.901983, -0.360206, 0.238073,
		34.729111, 32.571129, 41.497879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354946, 32.090107, 41.256947>,  <35.360500, 32.823273, 41.331226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354946, 32.090107, 41.256947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968586, 32.193119, 41.246227>,  <34.736771, 32.254925, 41.239796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968586, 32.193119, 41.246227>,  <35.354946, 32.090107, 41.256947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968586, 32.193119, 41.246227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083163, -0.406598, -0.909814,
		-0.245197, -0.876561, 0.414150,
		-0.965900, 0.257525, -0.026800,
		34.678818, 32.270378, 41.238186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158607, 31.540712, 40.903595>,  <35.354946, 32.090107, 41.256947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158607, 31.540712, 40.903595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883671, 31.829268, 40.869747>,  <34.718708, 32.002399, 40.849438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883671, 31.829268, 40.869747>,  <35.158607, 31.540712, 40.903595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883671, 31.829268, 40.869747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099160, -0.208613, -0.972958,
		-0.719533, -0.660364, 0.214921,
		-0.687342, 0.721387, -0.084623,
		34.677467, 32.045685, 40.844360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647194, 31.279121, 40.495834>,  <35.158607, 31.540712, 40.903595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647194, 31.279121, 40.495834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611393, 31.677454, 40.488750>,  <34.589912, 31.916452, 40.484501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611393, 31.677454, 40.488750>,  <34.647194, 31.279121, 40.495834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611393, 31.677454, 40.488750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143249, -0.030465, -0.989218,
		-0.985632, -0.085997, 0.145378,
		-0.089499, 0.995829, -0.017708,
		34.584541, 31.976202, 40.483437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054386, 31.383982, 40.029835>,  <34.647194, 31.279121, 40.495834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054386, 31.383982, 40.029835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232662, 31.741917, 40.019829>,  <34.339626, 31.956678, 40.013824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232662, 31.741917, 40.019829>,  <34.054386, 31.383982, 40.029835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232662, 31.741917, 40.019829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386291, 0.167040, -0.907126,
		-0.807553, 0.413958, 0.420115,
		0.445688, 0.894839, -0.025014,
		34.366367, 32.010368, 40.012325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642117, 31.810352, 39.595280>,  <34.054386, 31.383982, 40.029835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642117, 31.810352, 39.595280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995102, 31.998426, 39.589901>,  <34.206894, 32.111271, 39.586674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995102, 31.998426, 39.589901>,  <33.642117, 31.810352, 39.595280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995102, 31.998426, 39.589901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148699, 0.251734, -0.956305,
		-0.446253, 0.845906, 0.292063,
		0.882467, 0.470183, -0.013449,
		34.259842, 32.139481, 39.585865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537903, 32.356682, 39.077393>,  <33.642117, 31.810352, 39.595280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537903, 32.356682, 39.077393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936169, 32.337345, 39.109188>,  <34.175129, 32.325741, 39.128265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936169, 32.337345, 39.109188>,  <33.537903, 32.356682, 39.077393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936169, 32.337345, 39.109188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089076, 0.248862, -0.964434,
		0.026843, 0.967332, 0.252089,
		0.995663, -0.048344, 0.079486,
		34.234867, 32.322842, 39.133034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832096, 32.998989, 38.812840>,  <33.537903, 32.356682, 39.077393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832096, 32.998989, 38.812840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118069, 32.720165, 38.790989>,  <34.289654, 32.552872, 38.777878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118069, 32.720165, 38.790989>,  <33.832096, 32.998989, 38.812840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118069, 32.720165, 38.790989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289041, 0.365782, -0.884680,
		0.636655, 0.616695, 0.462987,
		0.714930, -0.697058, -0.054627,
		34.332546, 32.511047, 38.774601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505257, 33.285393, 38.689838>,  <33.832096, 32.998989, 38.812840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505257, 33.285393, 38.689838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526337, 32.907772, 38.559612>,  <34.538986, 32.681198, 38.481476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526337, 32.907772, 38.559612>,  <34.505257, 33.285393, 38.689838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526337, 32.907772, 38.559612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359242, 0.322114, -0.875892,
		0.931755, -0.070792, 0.356119,
		0.052705, -0.944050, -0.325563,
		34.542149, 32.624557, 38.461945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937603, 33.495548, 38.161274>,  <34.505257, 33.285393, 38.689838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937603, 33.495548, 38.161274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739689, 33.156879, 38.082954>,  <34.620941, 32.953678, 38.035965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739689, 33.156879, 38.082954>,  <34.937603, 33.495548, 38.161274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739689, 33.156879, 38.082954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202937, 0.331651, -0.921317,
		0.844990, -0.416116, -0.335915,
		-0.494781, -0.846673, -0.195796,
		34.591255, 32.902878, 38.024216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025990, 33.432941, 37.481709>,  <34.937603, 33.495548, 38.161274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025990, 33.432941, 37.481709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717232, 33.190365, 37.558029>,  <34.531975, 33.044819, 37.603821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717232, 33.190365, 37.558029>,  <35.025990, 33.432941, 37.481709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717232, 33.190365, 37.558029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438393, 0.290382, -0.850582,
		0.460420, -0.740209, -0.490004,
		-0.771897, -0.606439, 0.190805,
		34.485661, 33.008434, 37.615273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723412, 33.451244, 37.915939>,  <35.025990, 33.432941, 37.481709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723412, 33.451244, 37.915939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112976, 33.441833, 38.006226>,  <36.346714, 33.436188, 38.060398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112976, 33.441833, 38.006226>,  <35.723412, 33.451244, 37.915939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112976, 33.441833, 38.006226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226168, -0.182622, 0.956816,
		0.018708, -0.982902, -0.183178,
		0.973909, -0.023529, 0.225717,
		36.405148, 33.434776, 38.073940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855900, 32.917461, 38.439159>,  <35.723412, 33.451244, 37.915939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855900, 32.917461, 38.439159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178471, 33.150162, 38.481564>,  <36.372013, 33.289783, 38.507008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178471, 33.150162, 38.481564>,  <35.855900, 32.917461, 38.439159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178471, 33.150162, 38.481564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039658, -0.125666, 0.991280,
		0.590004, -0.803598, -0.078269,
		0.806426, 0.581755, 0.106012,
		36.420399, 33.324688, 38.513367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181240, 32.537300, 38.860806>,  <35.855900, 32.917461, 38.439159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181240, 32.537300, 38.860806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338249, 32.902668, 38.903866>,  <36.432453, 33.121891, 38.929703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338249, 32.902668, 38.903866>,  <36.181240, 32.537300, 38.860806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338249, 32.902668, 38.903866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050835, -0.138409, 0.989070,
		0.918338, -0.382757, -0.100762,
		0.392519, 0.913422, 0.107649,
		36.456005, 33.176693, 38.936161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620914, 32.431900, 39.249733>,  <36.181240, 32.537300, 38.860806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620914, 32.431900, 39.249733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620213, 32.828785, 39.299557>,  <36.619793, 33.066914, 39.329453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620213, 32.828785, 39.299557>,  <36.620914, 32.431900, 39.249733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620213, 32.828785, 39.299557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188838, -0.121994, 0.974401,
		0.982007, 0.025228, -0.187154,
		-0.001750, 0.992210, 0.124563,
		36.619686, 33.126450, 39.336926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202438, 32.642654, 39.685356>,  <36.620914, 32.431900, 39.249733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202438, 32.642654, 39.685356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961555, 32.958553, 39.732082>,  <36.817024, 33.148090, 39.760117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961555, 32.958553, 39.732082>,  <37.202438, 32.642654, 39.685356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961555, 32.958553, 39.732082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252424, 0.049547, 0.966347,
		0.757381, 0.611431, -0.229188,
		-0.602210, 0.789745, 0.116814,
		36.780891, 33.195477, 39.767128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675293, 33.223042, 40.010391>,  <37.202438, 32.642654, 39.685356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675293, 33.223042, 40.010391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290607, 33.312225, 40.074142>,  <37.059795, 33.365734, 40.112392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290607, 33.312225, 40.074142>,  <37.675293, 33.223042, 40.010391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290607, 33.312225, 40.074142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215929, 0.258298, 0.941625,
		0.168774, 0.939986, -0.296551,
		-0.961712, 0.222955, 0.159377,
		37.002094, 33.379112, 40.121956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684242, 33.881580, 40.326374>,  <37.675293, 33.223042, 40.010391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684242, 33.881580, 40.326374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335075, 33.719822, 40.435543>,  <37.125576, 33.622768, 40.501045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335075, 33.719822, 40.435543>,  <37.684242, 33.881580, 40.326374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335075, 33.719822, 40.435543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239281, 0.132632, 0.961849,
		-0.425166, 0.904916, -0.019012,
		-0.872914, -0.404396, 0.272919,
		37.073200, 33.598503, 40.517418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310162, 34.352493, 40.789326>,  <37.684242, 33.881580, 40.326374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310162, 34.352493, 40.789326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166546, 33.985538, 40.858009>,  <37.080376, 33.765366, 40.899220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166546, 33.985538, 40.858009>,  <37.310162, 34.352493, 40.789326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166546, 33.985538, 40.858009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118459, 0.137696, 0.983365,
		-0.925774, 0.373409, 0.059235,
		-0.359041, -0.917391, 0.171709,
		37.058834, 33.710320, 40.909523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782612, 34.476189, 41.413055>,  <37.310162, 34.352493, 40.789326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782612, 34.476189, 41.413055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905815, 34.097237, 41.378185>,  <36.979736, 33.869865, 41.357262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905815, 34.097237, 41.378185>,  <36.782612, 34.476189, 41.413055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905815, 34.097237, 41.378185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228128, -0.015416, 0.973509,
		-0.923628, -0.319737, 0.211376,
		0.308009, -0.947381, -0.087179,
		36.998219, 33.813023, 41.352032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799404, 34.331825, 42.148792>,  <36.782612, 34.476189, 41.413055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799404, 34.331825, 42.148792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970291, 34.021683, 41.962757>,  <37.072823, 33.835598, 41.851135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970291, 34.021683, 41.962757>,  <36.799404, 34.331825, 42.148792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970291, 34.021683, 41.962757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309256, -0.358057, 0.880997,
		-0.849615, -0.520210, 0.086815,
		0.427219, -0.775356, -0.465088,
		37.098457, 33.789078, 41.823231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535648, 33.651997, 42.438499>,  <36.799404, 34.331825, 42.148792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535648, 33.651997, 42.438499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908710, 33.611687, 42.299938>,  <37.132549, 33.587502, 42.216801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908710, 33.611687, 42.299938>,  <36.535648, 33.651997, 42.438499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908710, 33.611687, 42.299938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296708, -0.331943, 0.895421,
		-0.205223, -0.937901, -0.279688,
		0.932656, -0.100776, -0.346405,
		37.188507, 33.581455, 42.196018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751377, 32.990314, 42.637302>,  <36.535648, 33.651997, 42.438499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751377, 32.990314, 42.637302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090446, 33.186707, 42.556923>,  <37.293888, 33.304543, 42.508694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090446, 33.186707, 42.556923>,  <36.751377, 32.990314, 42.637302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090446, 33.186707, 42.556923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421901, -0.394259, 0.816431,
		0.321628, -0.776850, -0.541350,
		0.847676, 0.490983, -0.200948,
		37.344749, 33.334000, 42.496639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306587, 32.612446, 42.998192>,  <36.751377, 32.990314, 42.637302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306587, 32.612446, 42.998192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500916, 32.957802, 42.943722>,  <37.617512, 33.165016, 42.911037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500916, 32.957802, 42.943722>,  <37.306587, 32.612446, 42.998192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500916, 32.957802, 42.943722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464482, -0.123035, 0.876994,
		0.740430, -0.489312, -0.460800,
		0.485818, 0.863386, -0.136177,
		37.646660, 33.216816, 42.902870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977421, 32.480461, 43.347538>,  <37.306587, 32.612446, 42.998192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977421, 32.480461, 43.347538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916916, 32.874050, 43.309761>,  <37.880611, 33.110203, 43.287094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916916, 32.874050, 43.309761>,  <37.977421, 32.480461, 43.347538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916916, 32.874050, 43.309761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358240, 0.143613, 0.922518,
		0.921294, 0.105714, -0.374222,
		-0.151267, 0.983971, -0.094439,
		37.871536, 33.169243, 43.281429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447926, 32.786854, 43.828472>,  <37.977421, 32.480461, 43.347538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447926, 32.786854, 43.828472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228794, 33.120090, 43.797894>,  <38.097313, 33.320030, 43.779545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228794, 33.120090, 43.797894>,  <38.447926, 32.786854, 43.828472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228794, 33.120090, 43.797894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021212, 0.105184, 0.994227,
		0.836319, 0.543048, -0.075295,
		-0.547832, 0.833088, -0.076448,
		38.064445, 33.370018, 43.774960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736835, 33.342289, 44.308914>,  <38.447926, 32.786854, 43.828472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736835, 33.342289, 44.308914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354652, 33.428505, 44.228275>,  <38.125343, 33.480236, 44.179893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354652, 33.428505, 44.228275>,  <38.736835, 33.342289, 44.308914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354652, 33.428505, 44.228275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211102, -0.021801, 0.977221,
		0.206234, 0.976252, 0.066331,
		-0.955460, 0.215539, -0.201593,
		38.068016, 33.493168, 44.167797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608376, 34.057175, 44.506592>,  <38.736835, 33.342289, 44.308914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608376, 34.057175, 44.506592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254353, 33.871330, 44.517990>,  <38.041939, 33.759823, 44.524830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254353, 33.871330, 44.517990>,  <38.608376, 34.057175, 44.506592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254353, 33.871330, 44.517990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065029, 0.184029, 0.980767,
		-0.460917, 0.866182, -0.193089,
		-0.885057, -0.464609, 0.028496,
		37.988834, 33.731949, 44.526539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013767, 34.543259, 44.799393>,  <38.608376, 34.057175, 44.506592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013767, 34.543259, 44.799393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877262, 34.171764, 44.857346>,  <37.795361, 33.948868, 44.892117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877262, 34.171764, 44.857346>,  <38.013767, 34.543259, 44.799393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877262, 34.171764, 44.857346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177985, 0.215192, 0.960215,
		-0.922964, 0.301896, -0.238737,
		-0.341259, -0.928737, 0.144881,
		37.774883, 33.893143, 44.900810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322002, 34.597179, 45.117840>,  <38.013767, 34.543259, 44.799393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322002, 34.597179, 45.117840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438980, 34.223194, 45.198170>,  <37.509167, 33.998802, 45.246368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438980, 34.223194, 45.198170>,  <37.322002, 34.597179, 45.117840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438980, 34.223194, 45.198170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158596, 0.159676, 0.974346,
		-0.943041, -0.316787, -0.101586,
		0.292439, -0.934960, 0.200823,
		37.526711, 33.942707, 45.258415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912457, 34.450932, 45.531864>,  <37.322002, 34.597179, 45.117840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912457, 34.450932, 45.531864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185566, 34.167328, 45.602432>,  <37.349434, 33.997166, 45.644775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185566, 34.167328, 45.602432>,  <36.912457, 34.450932, 45.531864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185566, 34.167328, 45.602432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126481, 0.123123, 0.984298,
		-0.719595, -0.694371, -0.005610,
		0.682778, -0.709005, 0.176423,
		37.390400, 33.954628, 45.655357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576752, 33.895355, 45.981613>,  <36.912457, 34.450932, 45.531864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576752, 33.895355, 45.981613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968899, 33.830105, 46.025921>,  <37.204185, 33.790955, 46.052505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968899, 33.830105, 46.025921>,  <36.576752, 33.895355, 45.981613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968899, 33.830105, 46.025921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085476, 0.154681, 0.984260,
		-0.177692, -0.974404, 0.137701,
		0.980367, -0.163125, 0.110774,
		37.263008, 33.781166, 46.059155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635883, 33.522358, 46.589741>,  <36.576752, 33.895355, 45.981613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635883, 33.522358, 46.589741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000912, 33.675896, 46.533352>,  <37.219929, 33.768017, 46.499519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000912, 33.675896, 46.533352>,  <36.635883, 33.522358, 46.589741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000912, 33.675896, 46.533352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084814, 0.159586, 0.983534,
		0.400022, -0.909503, 0.113078,
		0.912573, 0.383845, -0.140977,
		37.274685, 33.791050, 46.491058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082142, 33.225300, 47.126316>,  <36.635883, 33.522358, 46.589741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082142, 33.225300, 47.126316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247894, 33.559261, 46.981419>,  <37.347343, 33.759640, 46.894482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247894, 33.559261, 46.981419>,  <37.082142, 33.225300, 47.126316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247894, 33.559261, 46.981419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053412, 0.419648, 0.906115,
		0.908536, -0.356127, 0.218487,
		0.414379, 0.834907, -0.362243,
		37.372208, 33.809734, 46.872746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516449, 33.400215, 47.595222>,  <37.082142, 33.225300, 47.126316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516449, 33.400215, 47.595222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454247, 33.740273, 47.393997>,  <37.416927, 33.944305, 47.273262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454247, 33.740273, 47.393997>,  <37.516449, 33.400215, 47.595222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454247, 33.740273, 47.393997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142576, 0.484612, 0.863031,
		0.977492, 0.205929, 0.045852,
		-0.155503, 0.850144, -0.503065,
		37.407597, 33.995316, 47.243076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755970, 33.885544, 47.929672>,  <37.516449, 33.400215, 47.595222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755970, 33.885544, 47.929672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560513, 34.164379, 47.719799>,  <37.443237, 34.331680, 47.593876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560513, 34.164379, 47.719799>,  <37.755970, 33.885544, 47.929672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560513, 34.164379, 47.719799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071109, 0.567551, 0.820262,
		0.869584, 0.438122, -0.227758,
		-0.488639, 0.697090, -0.524688,
		37.413921, 34.373505, 47.562393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992344, 34.540981, 48.140526>,  <37.755970, 33.885544, 47.929672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992344, 34.540981, 48.140526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632877, 34.623711, 47.985806>,  <37.417198, 34.673347, 47.892971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632877, 34.623711, 47.985806>,  <37.992344, 34.540981, 48.140526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632877, 34.623711, 47.985806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200647, 0.590341, 0.781817,
		0.390040, 0.780207, -0.489025,
		-0.898671, 0.206819, -0.386803,
		37.363277, 34.685757, 47.869766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888824, 35.289604, 48.119961>,  <37.992344, 34.540981, 48.140526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888824, 35.289604, 48.119961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519302, 35.140633, 48.155487>,  <37.297588, 35.051250, 48.176804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519302, 35.140633, 48.155487>,  <37.888824, 35.289604, 48.119961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519302, 35.140633, 48.155487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187733, 0.642776, 0.742694,
		-0.333685, 0.669430, -0.663715,
		-0.923802, -0.372428, 0.088811,
		37.242161, 35.028904, 48.182129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493469, 35.867588, 48.037743>,  <37.888824, 35.289604, 48.119961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493469, 35.867588, 48.037743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264622, 35.606720, 48.236683>,  <37.127312, 35.450199, 48.356049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264622, 35.606720, 48.236683>,  <37.493469, 35.867588, 48.037743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264622, 35.606720, 48.236683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112877, 0.663239, 0.739847,
		-0.812366, 0.367141, -0.453066,
		-0.572118, -0.652167, 0.497351,
		37.092987, 35.411068, 48.385887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947655, 36.292843, 48.259800>,  <37.493469, 35.867588, 48.037743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947655, 36.292843, 48.259800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931206, 35.959869, 48.480839>,  <36.921337, 35.760086, 48.613461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931206, 35.959869, 48.480839>,  <36.947655, 36.292843, 48.259800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931206, 35.959869, 48.480839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125171, 0.553001, 0.823725,
		-0.991283, -0.035295, -0.126937,
		-0.041123, -0.832433, 0.552598,
		36.918869, 35.710140, 48.646618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266697, 36.284801, 48.647038>,  <36.947655, 36.292843, 48.259800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266697, 36.284801, 48.647038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569172, 36.090492, 48.822403>,  <36.750656, 35.973907, 48.927624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569172, 36.090492, 48.822403>,  <36.266697, 36.284801, 48.647038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569172, 36.090492, 48.822403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159275, 0.513205, 0.843358,
		-0.634678, -0.707563, 0.310707,
		0.756185, -0.485772, 0.438417,
		36.796028, 35.944759, 48.953926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042332, 36.292984, 49.246666>,  <36.266697, 36.284801, 48.647038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042332, 36.292984, 49.246666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428391, 36.202843, 49.299904>,  <36.660027, 36.148758, 49.331844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428391, 36.202843, 49.299904>,  <36.042332, 36.292984, 49.246666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428391, 36.202843, 49.299904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013931, 0.463580, 0.885946,
		-0.261346, -0.856920, 0.444283,
		0.965145, -0.225349, 0.133092,
		36.717934, 36.135239, 49.339832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036068, 36.181458, 49.971992>,  <36.042332, 36.292984, 49.246666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036068, 36.181458, 49.971992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427109, 36.197475, 49.889351>,  <36.661736, 36.207088, 49.839764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427109, 36.197475, 49.889351>,  <36.036068, 36.181458, 49.971992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427109, 36.197475, 49.889351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160487, 0.493209, 0.854979,
		0.136141, -0.868989, 0.475736,
		0.977604, 0.040049, -0.206607,
		36.720390, 36.209492, 49.827370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477081, 36.004684, 50.567802>,  <36.036068, 36.181458, 49.971992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477081, 36.004684, 50.567802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706303, 36.226704, 50.326630>,  <36.843838, 36.359917, 50.181927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706303, 36.226704, 50.326630>,  <36.477081, 36.004684, 50.567802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706303, 36.226704, 50.326630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326075, 0.520538, 0.789123,
		0.751852, -0.648812, 0.117309,
		0.573056, 0.555052, -0.602929,
		36.878220, 36.393219, 50.145752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164848, 36.041744, 50.887447>,  <36.477081, 36.004684, 50.567802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164848, 36.041744, 50.887447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134441, 36.356064, 50.641933>,  <37.116196, 36.544655, 50.494625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134441, 36.356064, 50.641933>,  <37.164848, 36.041744, 50.887447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134441, 36.356064, 50.641933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543520, 0.548733, 0.635199,
		0.835947, -0.285318, -0.468814,
		-0.076020, 0.785803, -0.613787,
		37.111637, 36.591805, 50.457798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866463, 36.285198, 50.820347>,  <37.164848, 36.041744, 50.887447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866463, 36.285198, 50.820347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654171, 36.608864, 50.719486>,  <37.526794, 36.803062, 50.658970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654171, 36.608864, 50.719486>,  <37.866463, 36.285198, 50.820347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654171, 36.608864, 50.719486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467170, 0.527527, 0.709554,
		0.707159, 0.258789, -0.657993,
		-0.530734, 0.809162, -0.252147,
		37.494949, 36.851612, 50.643841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304920, 36.859215, 50.979763>,  <37.866463, 36.285198, 50.820347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304920, 36.859215, 50.979763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936169, 37.010506, 50.946095>,  <37.714916, 37.101280, 50.925896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936169, 37.010506, 50.946095>,  <38.304920, 36.859215, 50.979763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936169, 37.010506, 50.946095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230017, 0.708992, 0.666650,
		0.311818, 0.595211, -0.740603,
		-0.921879, 0.378225, -0.084168,
		37.659603, 37.123974, 50.920845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408653, 37.652691, 50.923447>,  <38.304920, 36.859215, 50.979763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408653, 37.652691, 50.923447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046902, 37.557274, 51.064983>,  <37.829853, 37.500023, 51.149906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046902, 37.557274, 51.064983>,  <38.408653, 37.652691, 50.923447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046902, 37.557274, 51.064983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108939, 0.672647, 0.731901,
		-0.412596, 0.700461, -0.582339,
		-0.904376, -0.238540, 0.353839,
		37.775589, 37.485710, 51.171135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093697, 38.308800, 51.067787>,  <38.408653, 37.652691, 50.923447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093697, 38.308800, 51.067787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882256, 38.038223, 51.272926>,  <37.755390, 37.875877, 51.396011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882256, 38.038223, 51.272926>,  <38.093697, 38.308800, 51.067787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882256, 38.038223, 51.272926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052541, 0.576923, 0.815107,
		-0.847244, 0.457810, -0.269421,
		-0.528600, -0.676438, 0.512848,
		37.723675, 37.835293, 51.426781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863304, 38.758091, 51.639698>,  <38.093697, 38.308800, 51.067787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863304, 38.758091, 51.639698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160870, 39.015572, 51.567875>,  <38.339409, 39.170059, 51.524780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160870, 39.015572, 51.567875>,  <37.863304, 38.758091, 51.639698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160870, 39.015572, 51.567875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175481, -0.447422, -0.876938,
		-0.644825, 0.620856, -0.445801,
		0.743913, 0.643701, -0.179560,
		38.384045, 39.208683, 51.514008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754341, 39.073013, 50.983101>,  <37.863304, 38.758091, 51.639698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754341, 39.073013, 50.983101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145298, 39.120415, 51.053139>,  <38.379871, 39.148857, 51.095161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145298, 39.120415, 51.053139>,  <37.754341, 39.073013, 50.983101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145298, 39.120415, 51.053139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198469, -0.228813, -0.953024,
		-0.072874, 0.966230, -0.247161,
		0.977394, 0.118505, 0.175093,
		38.438515, 39.155968, 51.105667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906303, 39.382870, 50.385078>,  <37.754341, 39.073013, 50.983101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906303, 39.382870, 50.385078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272873, 39.288589, 50.514462>,  <38.492813, 39.232021, 50.592091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272873, 39.288589, 50.514462>,  <37.906303, 39.382870, 50.385078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272873, 39.288589, 50.514462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283107, -0.189487, -0.940184,
		0.282888, 0.953175, -0.106923,
		0.916420, -0.235696, 0.323454,
		38.547798, 39.217880, 50.611496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533882, 39.751038, 50.089443>,  <37.906303, 39.382870, 50.385078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533882, 39.751038, 50.089443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687065, 39.399731, 50.203979>,  <38.778973, 39.188946, 50.272701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687065, 39.399731, 50.203979>,  <38.533882, 39.751038, 50.089443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687065, 39.399731, 50.203979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268760, -0.190630, -0.944155,
		0.883807, 0.438523, 0.163041,
		0.382953, -0.878270, 0.286338,
		38.801952, 39.136250, 50.289883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240105, 39.678860, 49.785240>,  <38.533882, 39.751038, 50.089443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240105, 39.678860, 49.785240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140587, 39.299957, 49.866039>,  <39.080875, 39.072617, 49.914520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140587, 39.299957, 49.866039>,  <39.240105, 39.678860, 49.785240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140587, 39.299957, 49.866039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206647, -0.255672, -0.944420,
		0.946254, -0.193226, 0.259359,
		-0.248797, -0.947257, 0.202002,
		39.065948, 39.015781, 49.926640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571541, 39.333378, 49.287212>,  <39.240105, 39.678860, 49.785240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571541, 39.333378, 49.287212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303234, 39.063530, 49.410477>,  <39.142250, 38.901623, 49.484436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303234, 39.063530, 49.410477>,  <39.571541, 39.333378, 49.287212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303234, 39.063530, 49.410477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101008, -0.328529, -0.939077,
		0.734756, -0.661031, 0.152226,
		-0.670770, -0.674616, 0.308158,
		39.102005, 38.861145, 49.502926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784218, 38.711227, 48.992165>,  <39.571541, 39.333378, 49.287212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784218, 38.711227, 48.992165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400841, 38.647854, 49.087070>,  <39.170815, 38.609829, 49.144016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400841, 38.647854, 49.087070>,  <39.784218, 38.711227, 48.992165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400841, 38.647854, 49.087070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152211, -0.419440, -0.894931,
		0.241304, -0.893851, 0.377893,
		-0.958438, -0.158431, 0.237267,
		39.113308, 38.600327, 49.158249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716019, 37.892464, 48.812786>,  <39.784218, 38.711227, 48.992165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716019, 37.892464, 48.812786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369061, 38.091228, 48.823406>,  <39.160885, 38.210487, 48.829781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369061, 38.091228, 48.823406>,  <39.716019, 37.892464, 48.812786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369061, 38.091228, 48.823406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260455, -0.407872, -0.875102,
		-0.424030, -0.765968, 0.483209,
		-0.867388, 0.496924, 0.026550,
		39.108841, 38.240303, 48.831371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301895, 37.395470, 48.506050>,  <39.716019, 37.892464, 48.812786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301895, 37.395470, 48.506050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076328, 37.725250, 48.486942>,  <38.940990, 37.923119, 48.475479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076328, 37.725250, 48.486942>,  <39.301895, 37.395470, 48.506050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076328, 37.725250, 48.486942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317273, -0.269689, -0.909178,
		-0.762456, -0.497542, 0.413657,
		-0.563914, 0.824451, -0.047770,
		38.907154, 37.972584, 48.472610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701157, 37.229797, 48.255638>,  <39.301895, 37.395470, 48.506050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701157, 37.229797, 48.255638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658562, 37.623615, 48.200024>,  <38.633007, 37.859905, 48.166656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658562, 37.623615, 48.200024>,  <38.701157, 37.229797, 48.255638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658562, 37.623615, 48.200024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382263, -0.169620, -0.908353,
		-0.917898, -0.043575, 0.394417,
		-0.106483, 0.984546, -0.139036,
		38.626617, 37.918980, 48.158314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054153, 37.320004, 48.092182>,  <38.701157, 37.229797, 48.255638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054153, 37.320004, 48.092182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237885, 37.642841, 47.943790>,  <38.348122, 37.836544, 47.854755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237885, 37.642841, 47.943790>,  <38.054153, 37.320004, 48.092182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237885, 37.642841, 47.943790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389799, -0.192135, -0.900634,
		-0.798172, 0.558288, 0.226351,
		0.459323, 0.807092, -0.370977,
		38.375683, 37.884968, 47.832497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570026, 37.755493, 47.681114>,  <38.054153, 37.320004, 48.092182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570026, 37.755493, 47.681114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921581, 37.867741, 47.526810>,  <38.132515, 37.935089, 47.434227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921581, 37.867741, 47.526810>,  <37.570026, 37.755493, 47.681114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921581, 37.867741, 47.526810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338100, -0.204028, -0.918728,
		-0.336518, 0.937884, -0.084441,
		0.878888, 0.280619, -0.385757,
		38.185249, 37.951927, 47.411083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335640, 38.088192, 47.056812>,  <37.570026, 37.755493, 47.681114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335640, 38.088192, 47.056812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724934, 37.997620, 47.041065>,  <37.958508, 37.943275, 47.031616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724934, 37.997620, 47.041065>,  <37.335640, 38.088192, 47.056812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724934, 37.997620, 47.041065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086945, -0.204181, -0.975065,
		0.212743, 0.952387, -0.218402,
		0.973232, -0.226428, -0.039367,
		38.016903, 37.929691, 47.029255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661922, 38.417191, 46.470909>,  <37.335640, 38.088192, 47.056812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661922, 38.417191, 46.470909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913902, 38.122135, 46.568111>,  <38.065090, 37.945103, 46.626434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913902, 38.122135, 46.568111>,  <37.661922, 38.417191, 46.470909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913902, 38.122135, 46.568111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141199, -0.198900, -0.969795,
		0.763695, 0.645231, -0.021142,
		0.629946, -0.737642, 0.243005,
		38.102886, 37.900841, 46.641014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234402, 38.484901, 46.094761>,  <37.661922, 38.417191, 46.470909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234402, 38.484901, 46.094761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217205, 38.096455, 46.188648>,  <38.206886, 37.863388, 46.244980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217205, 38.096455, 46.188648>,  <38.234402, 38.484901, 46.094761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217205, 38.096455, 46.188648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218851, -0.238383, -0.946191,
		0.974811, 0.010689, 0.222778,
		-0.042993, -0.971112, 0.234718,
		38.204308, 37.805122, 46.259064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562691, 38.070408, 45.549641>,  <38.234402, 38.484901, 46.094761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562691, 38.070408, 45.549641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431610, 37.758617, 45.763191>,  <38.352962, 37.571541, 45.891319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431610, 37.758617, 45.763191>,  <38.562691, 38.070408, 45.549641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431610, 37.758617, 45.763191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043554, -0.576940, -0.815624,
		0.943776, -0.244032, 0.223016,
		-0.327705, -0.779479, 0.533874,
		38.333298, 37.524773, 45.923355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134426, 37.547421, 45.403893>,  <38.562691, 38.070408, 45.549641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134426, 37.547421, 45.403893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784264, 37.395706, 45.523769>,  <38.574165, 37.304676, 45.595695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784264, 37.395706, 45.523769>,  <39.134426, 37.547421, 45.403893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784264, 37.395706, 45.523769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027658, -0.658247, -0.752294,
		0.482604, -0.650271, 0.586721,
		-0.875402, -0.379287, 0.299688,
		38.521645, 37.281921, 45.613674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139244, 36.868809, 45.347015>,  <39.134426, 37.547421, 45.403893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139244, 36.868809, 45.347015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755615, 36.978409, 45.318428>,  <38.525440, 37.044170, 45.301277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755615, 36.978409, 45.318428>,  <39.139244, 36.868809, 45.347015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755615, 36.978409, 45.318428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027349, -0.340840, -0.939724,
		-0.281840, -0.899307, 0.334383,
		-0.959072, 0.273997, -0.071468,
		38.467896, 37.060608, 45.296986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793411, 36.360432, 45.229008>,  <39.139244, 36.868809, 45.347015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793411, 36.360432, 45.229008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556595, 36.646317, 45.080055>,  <38.414505, 36.817848, 44.990685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556595, 36.646317, 45.080055>,  <38.793411, 36.360432, 45.229008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556595, 36.646317, 45.080055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011826, -0.469722, -0.882735,
		-0.805820, -0.518213, 0.286548,
		-0.592043, 0.714714, -0.372383,
		38.378983, 36.860729, 44.968342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303516, 36.026276, 44.877056>,  <38.793411, 36.360432, 45.229008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303516, 36.026276, 44.877056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288536, 36.397938, 44.729942>,  <38.279549, 36.620937, 44.641674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288536, 36.397938, 44.729942>,  <38.303516, 36.026276, 44.877056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288536, 36.397938, 44.729942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006196, -0.367816, -0.929878,
		-0.999279, -0.037104, 0.008018,
		-0.037451, 0.929158, -0.367781,
		38.277302, 36.676685, 44.619610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795959, 35.978474, 44.353054>,  <38.303516, 36.026276, 44.877056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795959, 35.978474, 44.353054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021988, 36.296726, 44.265728>,  <38.157604, 36.487679, 44.213333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021988, 36.296726, 44.265728>,  <37.795959, 35.978474, 44.353054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021988, 36.296726, 44.265728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020349, -0.251090, -0.967750,
		-0.824790, 0.551292, -0.125694,
		0.565073, 0.795633, -0.218314,
		38.191509, 36.535416, 44.200233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615849, 35.966801, 43.759411>,  <37.795959, 35.978474, 44.353054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615849, 35.966801, 43.759411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940319, 36.197681, 43.797005>,  <38.135002, 36.336212, 43.819561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940319, 36.197681, 43.797005>,  <37.615849, 35.966801, 43.759411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940319, 36.197681, 43.797005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340294, -0.335179, -0.878553,
		-0.475603, 0.744641, -0.468307,
		0.811173, 0.577205, 0.093984,
		38.183670, 36.370842, 43.825199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727852, 36.307098, 43.064430>,  <37.615849, 35.966801, 43.759411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727852, 36.307098, 43.064430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078117, 36.325878, 43.256683>,  <38.288277, 36.337147, 43.372036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078117, 36.325878, 43.256683>,  <37.727852, 36.307098, 43.064430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078117, 36.325878, 43.256683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482496, -0.126893, -0.866658,
		0.020298, 0.990804, -0.133770,
		0.875663, 0.046952, 0.480635,
		38.340816, 36.339962, 43.400875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059460, 36.767944, 42.684608>,  <37.727852, 36.307098, 43.064430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059460, 36.767944, 42.684608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326080, 36.542717, 42.880024>,  <38.486053, 36.407581, 42.997272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326080, 36.542717, 42.880024>,  <38.059460, 36.767944, 42.684608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326080, 36.542717, 42.880024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450413, -0.218005, -0.865796,
		0.594003, 0.797140, 0.108301,
		0.666550, -0.563065, 0.488538,
		38.526047, 36.373798, 43.026585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597763, 36.881878, 42.230598>,  <38.059460, 36.767944, 42.684608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597763, 36.881878, 42.230598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722271, 36.587032, 42.470524>,  <38.796974, 36.410126, 42.614479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722271, 36.587032, 42.470524>,  <38.597763, 36.881878, 42.230598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722271, 36.587032, 42.470524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589504, -0.345294, -0.730244,
		0.745384, 0.580897, 0.327050,
		0.311268, -0.737110, 0.599818,
		38.815651, 36.365898, 42.650471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271156, 36.747810, 42.124977>,  <38.597763, 36.881878, 42.230598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271156, 36.747810, 42.124977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168468, 36.390774, 42.273239>,  <39.106857, 36.176552, 42.362194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168468, 36.390774, 42.273239>,  <39.271156, 36.747810, 42.124977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168468, 36.390774, 42.273239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557735, -0.450021, -0.697433,
		0.789322, 0.027684, 0.613355,
		-0.256715, -0.892589, 0.370651,
		39.091454, 36.122997, 42.384434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823948, 36.390751, 42.152153>,  <39.271156, 36.747810, 42.124977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823948, 36.390751, 42.152153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535454, 36.116718, 42.111191>,  <39.362358, 35.952297, 42.086613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535454, 36.116718, 42.111191>,  <39.823948, 36.390751, 42.152153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535454, 36.116718, 42.111191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544819, -0.469735, -0.694638,
		0.427780, -0.556788, 0.712034,
		-0.721233, -0.685081, -0.102405,
		39.319084, 35.911194, 42.080471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169006, 35.852436, 42.061115>,  <39.823948, 36.390751, 42.152153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169006, 35.852436, 42.061115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808571, 35.740875, 41.928303>,  <39.592308, 35.673939, 41.848614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808571, 35.740875, 41.928303>,  <40.169006, 35.852436, 42.061115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808571, 35.740875, 41.928303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432741, -0.529436, -0.729680,
		0.027719, -0.801193, 0.597763,
		-0.901092, -0.278902, -0.332034,
		39.538242, 35.657204, 41.828693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330025, 35.214676, 41.862690>,  <40.169006, 35.852436, 42.061115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330025, 35.214676, 41.862690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966705, 35.260075, 41.701637>,  <39.748714, 35.287315, 41.605003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966705, 35.260075, 41.701637>,  <40.330025, 35.214676, 41.862690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966705, 35.260075, 41.701637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365852, -0.251206, -0.896130,
		-0.202848, -0.961257, 0.186648,
		-0.908298, 0.113492, -0.402635,
		39.694218, 35.294125, 41.580845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254379, 34.668121, 41.440922>,  <40.330025, 35.214676, 41.862690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254379, 34.668121, 41.440922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978809, 34.924049, 41.304680>,  <39.813465, 35.077606, 41.222935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978809, 34.924049, 41.304680>,  <40.254379, 34.668121, 41.440922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978809, 34.924049, 41.304680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295147, -0.181565, -0.938042,
		-0.662019, -0.746771, -0.063755,
		-0.688927, 0.639818, -0.340607,
		39.772133, 35.115993, 41.202499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968639, 34.350670, 40.848717>,  <40.254379, 34.668121, 41.440922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968639, 34.350670, 40.848717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933945, 34.745506, 40.794868>,  <39.913128, 34.982410, 40.762562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933945, 34.745506, 40.794868>,  <39.968639, 34.350670, 40.848717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933945, 34.745506, 40.794868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208020, -0.114204, -0.971434,
		-0.974271, -0.112260, -0.195430,
		-0.086734, 0.987094, -0.134618,
		39.907925, 35.041634, 40.754482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432312, 34.475441, 40.304157>,  <39.968639, 34.350670, 40.848717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432312, 34.475441, 40.304157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704525, 34.768131, 40.319450>,  <39.867851, 34.943745, 40.328625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704525, 34.768131, 40.319450>,  <39.432312, 34.475441, 40.304157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704525, 34.768131, 40.319450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271117, -0.202988, -0.940899,
		-0.680715, 0.650677, -0.336522,
		0.680531, 0.731721, 0.038233,
		39.908684, 34.987648, 40.330921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450600, 34.601791, 39.662041>,  <39.432312, 34.475441, 40.304157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450600, 34.601791, 39.662041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754333, 34.813210, 39.813862>,  <39.936573, 34.940060, 39.904953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754333, 34.813210, 39.813862>,  <39.450600, 34.601791, 39.662041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754333, 34.813210, 39.813862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489834, -0.080326, -0.868107,
		-0.428343, 0.845098, -0.319892,
		0.759332, 0.528542, 0.379551,
		39.982132, 34.971771, 39.927727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580719, 35.045673, 39.135910>,  <39.450600, 34.601791, 39.662041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580719, 35.045673, 39.135910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897003, 35.038136, 39.380672>,  <40.086773, 35.033611, 39.527531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897003, 35.038136, 39.380672>,  <39.580719, 35.045673, 39.135910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897003, 35.038136, 39.380672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611936, -0.004769, -0.790893,
		0.017823, 0.999811, 0.007762,
		0.790706, -0.018846, 0.611906,
		40.134216, 35.032482, 39.564243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003819, 35.641327, 38.985996>,  <39.580719, 35.045673, 39.135910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003819, 35.641327, 38.985996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247494, 35.382633, 39.169571>,  <40.393700, 35.227417, 39.279716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247494, 35.382633, 39.169571>,  <40.003819, 35.641327, 38.985996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247494, 35.382633, 39.169571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598548, -0.004658, -0.801074,
		0.520219, 0.762701, 0.384264,
		0.609190, -0.646734, 0.458936,
		40.430252, 35.188614, 39.307251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528702, 35.892960, 38.769680>,  <40.003819, 35.641327, 38.985996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528702, 35.892960, 38.769680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662926, 35.530064, 38.871128>,  <40.743458, 35.312328, 38.931999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662926, 35.530064, 38.871128>,  <40.528702, 35.892960, 38.769680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662926, 35.530064, 38.871128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670605, 0.040973, -0.740682,
		0.661581, 0.418623, 0.622145,
		0.335558, -0.907235, 0.253624,
		40.763592, 35.257893, 38.947216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168007, 35.937740, 38.440628>,  <40.528702, 35.892960, 38.769680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168007, 35.937740, 38.440628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094185, 35.552711, 38.520020>,  <41.049892, 35.321693, 38.567654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094185, 35.552711, 38.520020>,  <41.168007, 35.937740, 38.440628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094185, 35.552711, 38.520020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648459, -0.271012, -0.711374,
		0.738539, -0.002587, 0.674206,
		-0.184558, -0.962572, 0.198476,
		41.038818, 35.263939, 38.579563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829102, 35.614948, 38.474110>,  <41.168007, 35.937740, 38.440628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829102, 35.614948, 38.474110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567299, 35.327309, 38.380718>,  <41.410217, 35.154724, 38.324684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567299, 35.327309, 38.380718>,  <41.829102, 35.614948, 38.474110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567299, 35.327309, 38.380718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552782, -0.244469, -0.796660,
		0.515797, -0.650487, 0.557512,
		-0.654511, -0.719098, -0.233481,
		41.370945, 35.111580, 38.310673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240879, 35.063267, 38.386982>,  <41.829102, 35.614948, 38.474110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240879, 35.063267, 38.386982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894535, 35.021450, 38.191284>,  <41.686729, 34.996361, 38.073868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894535, 35.021450, 38.191284>,  <42.240879, 35.063267, 38.386982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894535, 35.021450, 38.191284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500157, -0.158666, -0.851274,
		0.011373, -0.981781, 0.189673,
		-0.865860, -0.104548, -0.489240,
		41.634777, 34.990086, 38.044514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410629, 34.531498, 37.926769>,  <42.240879, 35.063267, 38.386982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410629, 34.531498, 37.926769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087879, 34.706772, 37.768307>,  <41.894230, 34.811935, 37.673229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087879, 34.706772, 37.768307>,  <42.410629, 34.531498, 37.926769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087879, 34.706772, 37.768307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445340, 0.010628, -0.895298,
		-0.388095, -0.898823, -0.203716,
		-0.806879, 0.438183, -0.396158,
		41.845814, 34.838226, 37.649460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174641, 34.067276, 37.349480>,  <42.410629, 34.531498, 37.926769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174641, 34.067276, 37.349480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090061, 34.456940, 37.317738>,  <42.039314, 34.690739, 37.298691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090061, 34.456940, 37.317738>,  <42.174641, 34.067276, 37.349480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090061, 34.456940, 37.317738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685107, 0.089823, -0.722884,
		-0.697078, -0.207220, -0.686398,
		-0.211451, 0.974162, -0.079354,
		42.026627, 34.749187, 37.293930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080429, 34.197685, 36.638878>,  <42.174641, 34.067276, 37.349480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080429, 34.197685, 36.638878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223255, 34.535656, 36.798180>,  <42.308952, 34.738438, 36.893761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223255, 34.535656, 36.798180>,  <42.080429, 34.197685, 36.638878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223255, 34.535656, 36.798180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577949, 0.135102, -0.804812,
		-0.733810, 0.517542, -0.440082,
		0.357069, 0.844924, 0.398252,
		42.330376, 34.789135, 36.917656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884960, 34.740089, 36.208340>,  <42.080429, 34.197685, 36.638878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884960, 34.740089, 36.208340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222408, 34.777672, 36.419804>,  <42.424877, 34.800220, 36.546680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222408, 34.777672, 36.419804>,  <41.884960, 34.740089, 36.208340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222408, 34.777672, 36.419804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499483, 0.223982, -0.836868,
		-0.197037, 0.970054, 0.142028,
		0.843619, 0.093953, 0.528658,
		42.475494, 34.805859, 36.578400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397606, 35.304104, 35.944717>,  <41.884960, 34.740089, 36.208340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397606, 35.304104, 35.944717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595844, 35.009888, 36.129482>,  <42.714787, 34.833359, 36.240341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595844, 35.009888, 36.129482>,  <42.397606, 35.304104, 35.944717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595844, 35.009888, 36.129482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595459, -0.099434, -0.797209,
		0.632312, 0.670141, 0.388707,
		0.495591, -0.735544, 0.461914,
		42.744522, 34.789223, 36.268055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145870, 35.456654, 35.936306>,  <42.397606, 35.304104, 35.944717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145870, 35.456654, 35.936306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117851, 35.059875, 35.978527>,  <43.101040, 34.821808, 36.003860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117851, 35.059875, 35.978527>,  <43.145870, 35.456654, 35.936306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117851, 35.059875, 35.978527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706010, -0.124045, -0.697254,
		0.704730, 0.025682, 0.709011,
		-0.070043, -0.991944, 0.105550,
		43.096840, 34.762291, 36.010193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831421, 35.095772, 36.126362>,  <43.145870, 35.456654, 35.936306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831421, 35.095772, 36.126362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587185, 34.866043, 35.908249>,  <43.440643, 34.728207, 35.777382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587185, 34.866043, 35.908249>,  <43.831421, 35.095772, 36.126362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587185, 34.866043, 35.908249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664163, 0.003665, -0.747579,
		0.431349, -0.818621, 0.379206,
		-0.610594, -0.574322, -0.545279,
		43.404007, 34.693748, 35.744667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567032, 35.209175, 35.892704>,  <43.831421, 35.095772, 36.126362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567032, 35.209175, 35.892704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.696686, 35.544327, 36.068378>,  <44.774479, 35.745419, 36.173782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.696686, 35.544327, 36.068378>,  <44.567032, 35.209175, 35.892704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.696686, 35.544327, 36.068378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267407, 0.526470, -0.807046,
		-0.907430, 0.144151, 0.394705,
		0.324137, 0.837884, 0.439188,
		44.793926, 35.795692, 36.200134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032467, 35.900890, 36.120960>,  <44.567032, 35.209175, 35.892704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032467, 35.900890, 36.120960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.405987, 35.997581, 36.015450>,  <44.630100, 36.055595, 35.952141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.405987, 35.997581, 36.015450>,  <44.032467, 35.900890, 36.120960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405987, 35.997581, 36.015450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357673, 0.649180, -0.671294,
		0.008972, 0.721203, 0.692665,
		0.933804, 0.241724, -0.263779,
		44.686127, 36.070099, 35.936317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.086605, 36.583622, 36.082012>,  <44.032467, 35.900890, 36.120960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.086605, 36.583622, 36.082012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396637, 36.478752, 35.852051>,  <44.582657, 36.415833, 35.714073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396637, 36.478752, 35.852051>,  <44.086605, 36.583622, 36.082012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396637, 36.478752, 35.852051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242069, 0.717238, -0.653432,
		0.583656, 0.645629, 0.492452,
		0.775080, -0.262172, -0.574907,
		44.629162, 36.400101, 35.679577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354572, 37.210548, 35.864964>,  <44.086605, 36.583622, 36.082012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354572, 37.210548, 35.864964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502037, 36.929794, 35.621178>,  <44.590515, 36.761341, 35.474907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502037, 36.929794, 35.621178>,  <44.354572, 37.210548, 35.864964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502037, 36.929794, 35.621178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164684, 0.595955, -0.785950,
		0.914858, 0.390120, 0.104118,
		0.368665, -0.701886, -0.609461,
		44.612637, 36.719227, 35.438339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499680, 37.603661, 35.217178>,  <44.354572, 37.210548, 35.864964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499680, 37.603661, 35.217178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.513168, 37.233540, 35.066090>,  <44.521263, 37.011467, 34.975437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.513168, 37.233540, 35.066090>,  <44.499680, 37.603661, 35.217178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.513168, 37.233540, 35.066090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450954, 0.323190, -0.831979,
		0.891910, 0.198395, -0.406369,
		0.033726, -0.925304, -0.377724,
		44.523285, 36.955948, 34.952774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845066, 37.576298, 34.515087>,  <44.499680, 37.603661, 35.217178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.845066, 37.576298, 34.515087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.598839, 37.262398, 34.544075>,  <44.451103, 37.074059, 34.561466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.598839, 37.262398, 34.544075>,  <44.845066, 37.576298, 34.515087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.598839, 37.262398, 34.544075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404580, 0.235763, -0.883590,
		0.676308, -0.573228, -0.462620,
		-0.615567, -0.784746, 0.072468,
		44.414169, 37.026974, 34.565815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.879246, 37.320518, 33.756702>,  <44.845066, 37.576298, 34.515087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.879246, 37.320518, 33.756702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562450, 37.184574, 33.959579>,  <44.372372, 37.103008, 34.081306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562450, 37.184574, 33.959579>,  <44.879246, 37.320518, 33.756702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562450, 37.184574, 33.959579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574228, 0.132444, -0.807911,
		0.207404, -0.931102, -0.300054,
		-0.791988, -0.339863, 0.507196,
		44.324856, 37.082615, 34.111736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582001, 36.855438, 33.294636>,  <44.879246, 37.320518, 33.756702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.582001, 36.855438, 33.294636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277908, 36.952999, 33.535488>,  <44.095455, 37.011536, 33.680000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277908, 36.952999, 33.535488>,  <44.582001, 36.855438, 33.294636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277908, 36.952999, 33.535488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633901, -0.075607, -0.769710,
		-0.142213, -0.966847, 0.212093,
		-0.760227, 0.243908, 0.602132,
		44.049839, 37.026173, 33.716129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021545, 36.501732, 32.937325>,  <44.582001, 36.855438, 33.294636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021545, 36.501732, 32.937325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821144, 36.738659, 33.189724>,  <43.700905, 36.880817, 33.341164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821144, 36.738659, 33.189724>,  <44.021545, 36.501732, 32.937325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821144, 36.738659, 33.189724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673932, 0.190411, -0.713834,
		-0.542968, -0.782878, 0.303789,
		-0.501000, 0.592322, 0.630994,
		43.670845, 36.916355, 33.379021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284248, 36.285580, 33.016525>,  <44.021545, 36.501732, 32.937325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284248, 36.285580, 33.016525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304234, 36.678814, 33.087013>,  <43.316223, 36.914753, 33.129307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304234, 36.678814, 33.087013>,  <43.284248, 36.285580, 33.016525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304234, 36.678814, 33.087013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813563, 0.142406, -0.563770,
		-0.579327, -0.115203, 0.806913,
		0.049961, 0.983082, 0.176224,
		43.319221, 36.973740, 33.139881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567940, 36.511806, 33.013184>,  <43.284248, 36.285580, 33.016525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567940, 36.511806, 33.013184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782070, 36.845871, 32.962681>,  <42.910549, 37.046310, 32.932381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782070, 36.845871, 32.962681>,  <42.567940, 36.511806, 33.013184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782070, 36.845871, 32.962681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647469, 0.309756, -0.696301,
		-0.542413, 0.454494, 0.706558,
		0.535325, 0.835157, -0.126255,
		42.942669, 37.096416, 32.924805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093876, 37.088081, 32.883492>,  <42.567940, 36.511806, 33.013184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093876, 37.088081, 32.883492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441967, 37.205055, 32.724903>,  <42.650822, 37.275242, 32.629749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441967, 37.205055, 32.724903>,  <42.093876, 37.088081, 32.883492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441967, 37.205055, 32.724903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472169, 0.265432, -0.840596,
		-0.140587, 0.918709, 0.369067,
		0.870225, 0.292439, -0.396469,
		42.703033, 37.292786, 32.605961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907864, 37.629036, 32.503056>,  <42.093876, 37.088081, 32.883492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907864, 37.629036, 32.503056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257805, 37.519150, 32.343475>,  <42.467770, 37.453217, 32.247726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257805, 37.519150, 32.343475>,  <41.907864, 37.629036, 32.503056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257805, 37.519150, 32.343475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324273, 0.279660, -0.903680,
		0.359823, 0.919957, 0.155580,
		0.874856, -0.274715, -0.398946,
		42.520264, 37.436737, 32.223793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260563, 38.231789, 32.167973>,  <41.907864, 37.629036, 32.503056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260563, 38.231789, 32.167973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473934, 37.925007, 32.025288>,  <42.601955, 37.740940, 31.939678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473934, 37.925007, 32.025288>,  <42.260563, 38.231789, 32.167973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473934, 37.925007, 32.025288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214665, 0.285162, -0.934132,
		0.818153, 0.574864, -0.012524,
		0.533428, -0.766951, -0.356709,
		42.633961, 37.694923, 31.918276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601807, 38.489464, 31.555105>,  <42.260563, 38.231789, 32.167973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601807, 38.489464, 31.555105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628216, 38.092865, 31.510265>,  <42.644062, 37.854904, 31.483360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628216, 38.092865, 31.510265>,  <42.601807, 38.489464, 31.555105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628216, 38.092865, 31.510265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164588, 0.099986, -0.981282,
		0.984150, 0.083239, -0.156587,
		0.066024, -0.991501, -0.112101,
		42.648022, 37.795414, 31.476635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.164295, 38.437267, 31.185749>,  <42.601807, 38.489464, 31.555105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.164295, 38.437267, 31.185749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907158, 38.136959, 31.124964>,  <42.752876, 37.956772, 31.088493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907158, 38.136959, 31.124964>,  <43.164295, 38.437267, 31.185749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907158, 38.136959, 31.124964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031341, 0.172441, -0.984521,
		0.765358, -0.637653, -0.087322,
		-0.642841, -0.750774, -0.151964,
		42.714306, 37.911728, 31.079374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428268, 37.998188, 30.579550>,  <43.164295, 38.437267, 31.185749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428268, 37.998188, 30.579550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034946, 37.928226, 30.599632>,  <42.798954, 37.886250, 30.611681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034946, 37.928226, 30.599632>,  <43.428268, 37.998188, 30.579550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034946, 37.928226, 30.599632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096143, 0.265112, -0.959412,
		0.154500, -0.948221, -0.277502,
		-0.983304, -0.174909, 0.050205,
		42.739956, 37.875755, 30.614695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291039, 37.471706, 30.039064>,  <43.428268, 37.998188, 30.579550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291039, 37.471706, 30.039064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937717, 37.647415, 30.104565>,  <42.725723, 37.752838, 30.143864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937717, 37.647415, 30.104565>,  <43.291039, 37.471706, 30.039064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937717, 37.647415, 30.104565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112060, 0.141329, -0.983600,
		-0.455207, -0.887169, -0.075612,
		-0.883306, 0.439268, 0.163750,
		42.672726, 37.779194, 30.153690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921288, 37.242287, 29.401236>,  <43.291039, 37.471706, 30.039064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921288, 37.242287, 29.401236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707115, 37.540218, 29.560511>,  <42.578613, 37.718975, 29.656075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707115, 37.540218, 29.560511>,  <42.921288, 37.242287, 29.401236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707115, 37.540218, 29.560511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354451, 0.229766, -0.906406,
		-0.766604, -0.626453, 0.140981,
		-0.535428, 0.744825, 0.398187,
		42.546486, 37.763664, 29.679966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232323, 37.136410, 29.073551>,  <42.921288, 37.242287, 29.401236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232323, 37.136410, 29.073551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256886, 37.509281, 29.216253>,  <42.271622, 37.733006, 29.301874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256886, 37.509281, 29.216253>,  <42.232323, 37.136410, 29.073551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256886, 37.509281, 29.216253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392122, 0.351222, -0.850226,
		-0.917862, -0.087683, 0.387094,
		0.061405, 0.932178, 0.356755,
		42.275307, 37.788933, 29.323280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592052, 37.491871, 28.901955>,  <42.232323, 37.136410, 29.073551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592052, 37.491871, 28.901955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842121, 37.798157, 28.962408>,  <41.992165, 37.981926, 28.998680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842121, 37.798157, 28.962408>,  <41.592052, 37.491871, 28.901955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842121, 37.798157, 28.962408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359512, 0.454395, -0.815031,
		-0.692753, 0.455203, 0.559360,
		0.625175, 0.765712, 0.151133,
		42.029675, 38.027870, 29.007748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994511, 37.800007, 29.217957>,  <41.592052, 37.491871, 28.901955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994511, 37.800007, 29.217957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641945, 37.848236, 29.400637>,  <40.430405, 37.877174, 29.510244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641945, 37.848236, 29.400637>,  <40.994511, 37.800007, 29.217957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641945, 37.848236, 29.400637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281429, 0.910576, 0.302737,
		-0.379359, 0.395365, -0.836525,
		-0.881410, 0.120577, 0.456703,
		40.377522, 37.884411, 29.537647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712692, 38.328442, 28.803465>,  <40.994511, 37.800007, 29.217957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712692, 38.328442, 28.803465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764671, 38.684536, 28.628836>,  <40.795856, 38.898193, 28.524057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764671, 38.684536, 28.628836>,  <40.712692, 38.328442, 28.803465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764671, 38.684536, 28.628836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287668, 0.455217, 0.842629,
		0.948874, 0.016094, 0.315245,
		0.129943, 0.890235, -0.436573,
		40.803654, 38.951607, 28.497864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293304, 38.702690, 28.341818>,  <40.712692, 38.328442, 28.803465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293304, 38.702690, 28.341818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925522, 38.545456, 28.338236>,  <39.704853, 38.451115, 28.336086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925522, 38.545456, 28.338236>,  <40.293304, 38.702690, 28.341818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925522, 38.545456, 28.338236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225103, 0.507596, 0.831670,
		-0.322371, 0.766702, -0.555198,
		-0.919459, -0.393083, -0.008953,
		39.649685, 38.427532, 28.335550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087852, 39.199890, 28.859570>,  <40.293304, 38.702690, 28.341818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087852, 39.199890, 28.859570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755566, 39.370834, 28.716869>,  <39.556194, 39.473404, 28.631250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755566, 39.370834, 28.716869>,  <40.087852, 39.199890, 28.859570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755566, 39.370834, 28.716869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548070, 0.740222, -0.389474,
		0.097626, -0.519066, -0.849140,
		-0.830716, 0.427365, -0.356750,
		39.506351, 39.499043, 28.609844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092930, 39.533829, 29.440981>,  <40.087852, 39.199890, 28.859570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092930, 39.533829, 29.440981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440987, 39.359646, 29.533268>,  <40.649822, 39.255138, 29.588640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440987, 39.359646, 29.533268>,  <40.092930, 39.533829, 29.440981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440987, 39.359646, 29.533268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469566, 0.874695, -0.120068,
		-0.149524, 0.212814, 0.965584,
		0.870144, -0.435453, 0.230718,
		40.702030, 39.229012, 29.602484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389591, 39.871372, 29.994507>,  <40.092930, 39.533829, 29.440981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389591, 39.871372, 29.994507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695946, 39.729088, 29.780260>,  <40.879761, 39.643719, 29.651712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695946, 39.729088, 29.780260>,  <40.389591, 39.871372, 29.994507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695946, 39.729088, 29.780260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441426, 0.896584, 0.035773,
		0.467500, -0.263833, 0.843703,
		0.765889, -0.355709, -0.535616,
		40.925713, 39.622375, 29.619576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007084, 40.007992, 30.351921>,  <40.389591, 39.871372, 29.994507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007084, 40.007992, 30.351921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056522, 40.011223, 29.955002>,  <41.086185, 40.013161, 29.716850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056522, 40.011223, 29.955002>,  <41.007084, 40.007992, 30.351921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056522, 40.011223, 29.955002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459308, 0.885938, 0.064422,
		0.879637, -0.463733, 0.105784,
		0.123593, 0.008081, -0.992300,
		41.093601, 40.013649, 29.657312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638287, 40.438583, 30.362743>,  <41.007084, 40.007992, 30.351921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638287, 40.438583, 30.362743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467403, 40.457214, 30.001562>,  <41.364872, 40.468395, 29.784853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467403, 40.457214, 30.001562>,  <41.638287, 40.438583, 30.362743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467403, 40.457214, 30.001562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007341, 0.998818, 0.048054,
		0.904124, 0.013901, -0.427044,
		-0.427207, 0.046582, -0.902953,
		41.339241, 40.471188, 29.730677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973755, 40.762413, 29.794195>,  <41.638287, 40.438583, 30.362743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973755, 40.762413, 29.794195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825592, 41.082161, 29.604959>,  <41.736694, 41.274010, 29.491417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825592, 41.082161, 29.604959>,  <41.973755, 40.762413, 29.794195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825592, 41.082161, 29.604959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790756, 0.538587, 0.290911,
		0.487344, -0.266344, -0.831599,
		-0.370406, 0.799366, -0.473090,
		41.714470, 41.321972, 29.463032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398373, 41.065037, 29.369572>,  <41.973755, 40.762413, 29.794195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398373, 41.065037, 29.369572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166531, 41.360775, 29.506639>,  <42.027424, 41.538219, 29.588881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166531, 41.360775, 29.506639>,  <42.398373, 41.065037, 29.369572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166531, 41.360775, 29.506639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803402, 0.448081, 0.392134,
		0.136380, 0.502584, -0.853704,
		-0.579609, 0.739346, 0.342668,
		41.992649, 41.582581, 29.609440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756924, 41.776184, 29.631874>,  <42.398373, 41.065037, 29.369572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756924, 41.776184, 29.631874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676552, 41.821877, 30.021044>,  <42.628330, 41.849293, 30.254545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676552, 41.821877, 30.021044>,  <42.756924, 41.776184, 29.631874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.676552, 41.821877, 30.021044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864037, -0.447320, 0.230964,
		0.461592, 0.887048, -0.008823,
		-0.200930, 0.114234, 0.972922,
		42.616272, 41.856148, 30.312920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338230, 42.116325, 30.011816>,  <42.756924, 41.776184, 29.631874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338230, 42.116325, 30.011816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117645, 41.907047, 30.271711>,  <42.985294, 41.781479, 30.427649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117645, 41.907047, 30.271711>,  <43.338230, 42.116325, 30.011816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117645, 41.907047, 30.271711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832907, -0.388687, 0.393941,
		0.046437, 0.758413, 0.650117,
		-0.551462, -0.523194, 0.649737,
		42.952206, 41.750088, 30.466633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631687, 42.189182, 30.684174>,  <43.338230, 42.116325, 30.011816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631687, 42.189182, 30.684174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433746, 41.842983, 30.715240>,  <43.314983, 41.635262, 30.733881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433746, 41.842983, 30.715240>,  <43.631687, 42.189182, 30.684174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433746, 41.842983, 30.715240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712636, -0.353048, 0.606223,
		-0.497267, 0.355337, 0.791493,
		-0.494849, -0.865501, 0.077667,
		43.285294, 41.583332, 30.738541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581799, 42.025837, 31.439415>,  <43.631687, 42.189182, 30.684174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581799, 42.025837, 31.439415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519634, 41.687477, 31.235334>,  <43.482334, 41.484463, 31.112886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519634, 41.687477, 31.235334>,  <43.581799, 42.025837, 31.439415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519634, 41.687477, 31.235334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484707, -0.515328, 0.706751,
		-0.860759, -0.137458, 0.490102,
		-0.155415, -0.845897, -0.510200,
		43.473011, 41.433708, 31.082275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470882, 41.549313, 31.922575>,  <43.581799, 42.025837, 31.439415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470882, 41.549313, 31.922575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562378, 41.310204, 31.615240>,  <43.617275, 41.166737, 31.430840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562378, 41.310204, 31.615240>,  <43.470882, 41.549313, 31.922575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562378, 41.310204, 31.615240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575233, -0.553737, 0.602064,
		-0.785357, -0.579689, 0.217199,
		0.228739, -0.597775, -0.768338,
		43.631001, 41.130871, 31.384739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483253, 40.934963, 32.265167>,  <43.470882, 41.549313, 31.922575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483253, 40.934963, 32.265167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.660831, 40.859314, 31.914818>,  <43.767376, 40.813927, 31.704609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.660831, 40.859314, 31.914818>,  <43.483253, 40.934963, 32.265167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660831, 40.859314, 31.914818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599365, -0.663941, 0.447152,
		-0.666092, -0.723475, -0.181398,
		0.443940, -0.189121, -0.875871,
		43.794014, 40.802578, 31.652056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570770, 40.317837, 32.299469>,  <43.483253, 40.934963, 32.265167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570770, 40.317837, 32.299469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844158, 40.426643, 32.028507>,  <44.008190, 40.491928, 31.865931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844158, 40.426643, 32.028507>,  <43.570770, 40.317837, 32.299469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844158, 40.426643, 32.028507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642966, -0.663713, 0.382205,
		-0.345633, -0.696772, -0.628527,
		0.683471, 0.272018, -0.677402,
		44.049198, 40.508247, 31.825287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946804, 39.607231, 32.050282>,  <43.570770, 40.317837, 32.299469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946804, 39.607231, 32.050282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200092, 39.912640, 31.999567>,  <44.352066, 40.095882, 31.969139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200092, 39.912640, 31.999567>,  <43.946804, 39.607231, 32.050282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200092, 39.912640, 31.999567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652446, -0.438463, 0.618113,
		0.416348, -0.474123, -0.775797,
		0.633220, 0.763517, -0.126786,
		44.390057, 40.141693, 31.961531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518078, 39.275944, 31.939962>,  <43.946804, 39.607231, 32.050282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518078, 39.275944, 31.939962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.629894, 39.647408, 32.037498>,  <44.696983, 39.870285, 32.096020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.629894, 39.647408, 32.037498>,  <44.518078, 39.275944, 31.939962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629894, 39.647408, 32.037498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825440, -0.362163, 0.432998,
		0.490416, 0.080234, -0.867787,
		0.279539, 0.928655, 0.243839,
		44.713757, 39.926003, 32.110649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.204876, 39.466267, 31.650320>,  <44.518078, 39.275944, 31.939962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.204876, 39.466267, 31.650320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.151558, 39.683411, 31.981993>,  <45.119568, 39.813698, 32.180996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.151558, 39.683411, 31.981993>,  <45.204876, 39.466267, 31.650320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151558, 39.683411, 31.981993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781987, -0.456392, 0.424503,
		0.608876, 0.704992, -0.363672,
		-0.133294, 0.542856, 0.829180,
		45.111568, 39.846268, 32.230747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865040, 39.595070, 31.946108>,  <45.204876, 39.466267, 31.650320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.865040, 39.595070, 31.946108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.637829, 39.693268, 32.260326>,  <45.501503, 39.752186, 32.448856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.637829, 39.693268, 32.260326>,  <45.865040, 39.595070, 31.946108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.637829, 39.693268, 32.260326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521012, -0.631605, 0.574127,
		0.637098, 0.735397, 0.230863,
		-0.568025, 0.245492, 0.785545,
		45.467422, 39.766914, 32.495991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.319702, 39.927269, 32.334869>,  <45.865040, 39.595070, 31.946108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.319702, 39.927269, 32.334869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.032543, 39.756760, 32.555019>,  <45.860249, 39.654453, 32.687111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.032543, 39.756760, 32.555019>,  <46.319702, 39.927269, 32.334869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.032543, 39.756760, 32.555019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682940, -0.584537, 0.438076,
		0.134978, 0.690369, 0.710754,
		-0.717896, -0.426272, 0.550380,
		45.817173, 39.628880, 32.720135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.563938, 39.744652, 33.114090>,  <46.319702, 39.927269, 32.334869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.563938, 39.744652, 33.114090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221581, 39.541046, 33.077541>,  <46.016167, 39.418884, 33.055611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221581, 39.541046, 33.077541>,  <46.563938, 39.744652, 33.114090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221581, 39.541046, 33.077541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347076, -0.696366, 0.628182,
		-0.383385, 0.505943, 0.772682,
		-0.855894, -0.509015, -0.091376,
		45.964813, 39.388340, 33.050129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243134, 39.590870, 33.836494>,  <46.563938, 39.744652, 33.114090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243134, 39.590870, 33.836494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.097893, 39.318993, 33.581570>,  <46.010746, 39.155865, 33.428616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.097893, 39.318993, 33.581570>,  <46.243134, 39.590870, 33.836494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.097893, 39.318993, 33.581570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194289, -0.724196, 0.661658,
		-0.911266, 0.116428, 0.395017,
		-0.363105, -0.679694, -0.637315,
		45.988960, 39.115086, 33.390377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888046, 39.211769, 34.301548>,  <46.243134, 39.590870, 33.836494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888046, 39.211769, 34.301548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937359, 38.991150, 33.971558>,  <45.966946, 38.858776, 33.773563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937359, 38.991150, 33.971558>,  <45.888046, 39.211769, 34.301548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.937359, 38.991150, 33.971558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179482, -0.805219, 0.565163,
		-0.976006, -0.217744, -0.000277,
		0.123284, -0.551552, -0.824979,
		45.974342, 38.825684, 33.724064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.622341, 38.480289, 34.434746>,  <45.888046, 39.211769, 34.301548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.622341, 38.480289, 34.434746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.864761, 38.427990, 34.120903>,  <46.010212, 38.396610, 33.932598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.864761, 38.427990, 34.120903>,  <45.622341, 38.480289, 34.434746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864761, 38.427990, 34.120903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339928, -0.849212, 0.404089,
		-0.719133, -0.511608, -0.470219,
		0.606051, -0.130753, -0.784606,
		46.046577, 38.388763, 33.885521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.657017, 37.812935, 34.307358>,  <45.622341, 38.480289, 34.434746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.657017, 37.812935, 34.307358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.983711, 37.935135, 34.111557>,  <46.179729, 38.008453, 33.994076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.983711, 37.935135, 34.111557>,  <45.657017, 37.812935, 34.307358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.983711, 37.935135, 34.111557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558250, -0.632939, 0.536420,
		-0.145949, -0.711378, -0.687488,
		0.816735, 0.305501, -0.489503,
		46.228733, 38.026787, 33.964706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.783672, 37.371628, 33.828705>,  <45.657017, 37.812935, 34.307358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.783672, 37.371628, 33.828705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133560, 37.551033, 33.902145>,  <46.343491, 37.658676, 33.946209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133560, 37.551033, 33.902145>,  <45.783672, 37.371628, 33.828705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.133560, 37.551033, 33.902145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350186, -0.846825, 0.400322,
		0.335024, -0.285876, -0.897794,
		0.874716, 0.448512, 0.183597,
		46.395977, 37.685585, 33.957226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.322315, 36.960121, 33.579418>,  <45.783672, 37.371628, 33.828705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.322315, 36.960121, 33.579418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.555824, 37.191872, 33.806934>,  <46.695930, 37.330921, 33.943443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.555824, 37.191872, 33.806934>,  <46.322315, 36.960121, 33.579418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.555824, 37.191872, 33.806934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587842, -0.784843, 0.196121,
		0.560042, 0.219870, -0.798756,
		0.583776, 0.579378, 0.568793,
		46.730957, 37.365685, 33.977573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.920742, 36.651184, 33.485287>,  <46.322315, 36.960121, 33.579418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.920742, 36.651184, 33.485287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.008671, 36.870667, 33.807926>,  <47.061428, 37.002357, 34.001511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.008671, 36.870667, 33.807926>,  <46.920742, 36.651184, 33.485287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.008671, 36.870667, 33.807926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564569, -0.745848, 0.353516,
		0.795575, 0.377668, -0.473738,
		0.219825, 0.548706, 0.806597,
		47.074619, 37.035278, 34.049904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.582451, 36.639969, 33.501926>,  <46.920742, 36.651184, 33.485287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.582451, 36.639969, 33.501926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.447895, 36.711361, 33.871788>,  <47.367161, 36.754196, 34.093704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.447895, 36.711361, 33.871788>,  <47.582451, 36.639969, 33.501926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.447895, 36.711361, 33.871788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527880, -0.777377, 0.342093,
		0.779863, 0.603183, 0.167283,
		-0.336386, 0.178481, 0.924656,
		47.346981, 36.764904, 34.149185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.084854, 36.515457, 33.999313>,  <47.582451, 36.639969, 33.501926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.084854, 36.515457, 33.999313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.737694, 36.428730, 34.178082>,  <47.529396, 36.376694, 34.285343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.737694, 36.428730, 34.178082>,  <48.084854, 36.515457, 33.999313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.737694, 36.428730, 34.178082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415693, -0.809552, 0.414518,
		0.271927, 0.545541, 0.792743,
		-0.867903, -0.216819, 0.446917,
		47.477322, 36.363686, 34.312157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.226303, 36.291771, 34.762592>,  <48.084854, 36.515457, 33.999313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.226303, 36.291771, 34.762592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.869774, 36.132881, 34.675186>,  <47.655857, 36.037548, 34.622742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.869774, 36.132881, 34.675186>,  <48.226303, 36.291771, 34.762592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.869774, 36.132881, 34.675186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325565, -0.896243, 0.301256,
		-0.315512, 0.197375, 0.928168,
		-0.891325, -0.397229, -0.218517,
		47.602375, 36.013714, 34.609631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.860386, 35.954098, 35.331539>,  <48.226303, 36.291771, 34.762592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.860386, 35.954098, 35.331539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.756859, 35.769821, 34.991947>,  <47.694744, 35.659256, 34.788193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.756859, 35.769821, 34.991947>,  <47.860386, 35.954098, 35.331539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.756859, 35.769821, 34.991947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307241, -0.872548, 0.379819,
		-0.915760, -0.162540, 0.367374,
		-0.258816, -0.460696, -0.848984,
		47.679214, 35.631611, 34.737251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.336926, 35.361492, 35.480152>,  <47.860386, 35.954098, 35.331539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.336926, 35.361492, 35.480152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.556435, 35.313789, 35.149185>,  <47.688141, 35.285168, 34.950603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.556435, 35.313789, 35.149185>,  <47.336926, 35.361492, 35.480152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.556435, 35.313789, 35.149185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393332, -0.836538, 0.381438,
		-0.737656, -0.534775, -0.412165,
		0.548775, -0.119252, -0.827421,
		47.721066, 35.278015, 34.900959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.280613, 34.589825, 35.235683>,  <47.336926, 35.361492, 35.480152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.280613, 34.589825, 35.235683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.609928, 34.776318, 35.106178>,  <47.807518, 34.888214, 35.028473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.609928, 34.776318, 35.106178>,  <47.280613, 34.589825, 35.235683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.609928, 34.776318, 35.106178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554512, -0.782493, 0.283235,
		-0.121292, -0.412717, -0.902747,
		0.823289, 0.466230, -0.323767,
		47.856915, 34.916187, 35.009048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.440594, 39.919769, 44.036880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.056957, 39.808430, 44.016232>,  <35.826775, 39.741627, 44.003841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.056957, 39.808430, 44.016232>,  <36.440594, 39.919769, 44.036880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056957, 39.808430, 44.016232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215358, -0.599023, -0.771228,
		0.183743, -0.750797, 0.634462,
		-0.959093, -0.278345, -0.051624,
		35.769230, 39.724926, 44.000744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513458, 39.325417, 43.717850>,  <36.440594, 39.919769, 44.036880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513458, 39.325417, 43.717850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.114456, 39.353344, 43.713673>,  <35.875053, 39.370102, 43.711166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.114456, 39.353344, 43.713673>,  <36.513458, 39.325417, 43.717850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114456, 39.353344, 43.713673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045868, -0.753425, -0.655932,
		-0.053661, -0.653816, 0.754748,
		-0.997505, 0.069817, -0.010441,
		35.815205, 39.374290, 43.710541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163338, 38.616703, 43.860405>,  <36.513458, 39.325417, 43.717850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163338, 38.616703, 43.860405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924767, 38.854012, 43.644142>,  <35.781624, 38.996395, 43.514385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924767, 38.854012, 43.644142>,  <36.163338, 38.616703, 43.860405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924767, 38.854012, 43.644142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086240, -0.717036, -0.691680,
		-0.798023, -0.365909, 0.478822,
		-0.596425, 0.593270, -0.540655,
		35.745838, 39.031994, 43.481945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793720, 38.061584, 43.600136>,  <36.163338, 38.616703, 43.860405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793720, 38.061584, 43.600136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699482, 38.385368, 43.385002>,  <35.642941, 38.579639, 43.255920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699482, 38.385368, 43.385002>,  <35.793720, 38.061584, 43.600136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699482, 38.385368, 43.385002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043470, -0.544084, -0.837904,
		-0.970880, -0.220782, 0.092994,
		-0.235591, 0.809461, -0.537838,
		35.628803, 38.628208, 43.223652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228657, 37.884422, 43.156307>,  <35.793720, 38.061584, 43.600136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228657, 37.884422, 43.156307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.419582, 38.187721, 42.978668>,  <35.534138, 38.369701, 42.872086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.419582, 38.187721, 42.978668>,  <35.228657, 37.884422, 43.156307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419582, 38.187721, 42.978668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005715, -0.508057, -0.861305,
		-0.878714, 0.408576, -0.246837,
		0.477315, 0.758250, -0.444102,
		35.562778, 38.415195, 42.845436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844753, 37.899395, 42.512100>,  <35.228657, 37.884422, 43.156307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844753, 37.899395, 42.512100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.196625, 38.071121, 42.430260>,  <35.407745, 38.174156, 42.381157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.196625, 38.071121, 42.430260>,  <34.844753, 37.899395, 42.512100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196625, 38.071121, 42.430260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089375, -0.571784, -0.815521,
		-0.467099, 0.699108, -0.541355,
		0.879676, 0.429313, -0.204597,
		35.460529, 38.199917, 42.368881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811497, 38.073555, 41.807274>,  <34.844753, 37.899395, 42.512100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811497, 38.073555, 41.807274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.204079, 38.096512, 41.880436>,  <35.439629, 38.110287, 41.924332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.204079, 38.096512, 41.880436>,  <34.811497, 38.073555, 41.807274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204079, 38.096512, 41.880436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188211, -0.469640, -0.862563,
		0.036391, 0.880990, -0.471733,
		0.981454, 0.057395, 0.182903,
		35.498516, 38.113731, 41.935307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048618, 38.246479, 41.125118>,  <34.811497, 38.073555, 41.807274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048618, 38.246479, 41.125118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.373970, 38.151718, 41.337639>,  <35.569183, 38.094860, 41.465153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.373970, 38.151718, 41.337639>,  <35.048618, 38.246479, 41.125118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373970, 38.151718, 41.337639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425978, -0.379436, -0.821323,
		0.396168, 0.894375, -0.207712,
		0.813384, -0.236901, 0.531305,
		35.617985, 38.080647, 41.497028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668232, 38.525776, 40.765255>,  <35.048618, 38.246479, 41.125118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668232, 38.525776, 40.765255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.772999, 38.215267, 40.994621>,  <35.835857, 38.028961, 41.132240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.772999, 38.215267, 40.994621>,  <35.668232, 38.525776, 40.765255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772999, 38.215267, 40.994621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364681, -0.470497, -0.803518,
		0.893536, 0.419569, 0.159859,
		0.261918, -0.776270, 0.573415,
		35.851574, 37.982388, 41.166645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315617, 38.470604, 40.542694>,  <35.668232, 38.525776, 40.765255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315617, 38.470604, 40.542694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.216351, 38.127010, 40.721828>,  <36.156792, 37.920853, 40.829308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.216351, 38.127010, 40.721828>,  <36.315617, 38.470604, 40.542694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216351, 38.127010, 40.721828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318012, -0.508913, -0.799922,
		0.915031, -0.056099, 0.399464,
		-0.248168, -0.858988, 0.447831,
		36.141899, 37.869312, 40.856178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978073, 38.031937, 40.636559>,  <36.315617, 38.470604, 40.542694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978073, 38.031937, 40.636559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.667271, 37.780270, 40.644665>,  <36.480789, 37.629269, 40.649529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.667271, 37.780270, 40.644665>,  <36.978073, 38.031937, 40.636559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667271, 37.780270, 40.644665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444122, -0.570726, -0.690671,
		0.446114, -0.527655, 0.722885,
		-0.777005, -0.629168, 0.020266,
		36.434170, 37.591518, 40.650745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244255, 37.374283, 40.620403>,  <36.978073, 38.031937, 40.636559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244255, 37.374283, 40.620403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.873608, 37.346836, 40.472523>,  <36.651218, 37.330368, 40.383797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.873608, 37.346836, 40.472523>,  <37.244255, 37.374283, 40.620403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873608, 37.346836, 40.472523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352760, -0.499007, -0.791551,
		-0.130171, -0.863877, 0.486592,
		-0.926615, -0.068613, -0.369697,
		36.595623, 37.326252, 40.361614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330090, 36.782867, 40.404518>,  <37.244255, 37.374283, 40.620403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330090, 36.782867, 40.404518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.977505, 36.880707, 40.242931>,  <36.765953, 36.939411, 40.145977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.977505, 36.880707, 40.242931>,  <37.330090, 36.782867, 40.404518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977505, 36.880707, 40.242931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167781, -0.637405, -0.752040,
		-0.441442, -0.730675, 0.520810,
		-0.881464, 0.244600, -0.403971,
		36.713066, 36.954086, 40.121738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040760, 36.185387, 40.149498>,  <37.330090, 36.782867, 40.404518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040760, 36.185387, 40.149498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886131, 36.483311, 39.931942>,  <36.793354, 36.662064, 39.801407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886131, 36.483311, 39.931942>,  <37.040760, 36.185387, 40.149498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886131, 36.483311, 39.931942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304304, -0.453705, -0.837587,
		-0.870608, -0.489301, -0.051256,
		-0.386577, 0.744807, -0.543895,
		36.770157, 36.706753, 39.768772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524479, 35.906551, 39.743744>,  <37.040760, 36.185387, 40.149498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524479, 35.906551, 39.743744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.637074, 36.239716, 39.553158>,  <36.704628, 36.439613, 39.438805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.637074, 36.239716, 39.553158>,  <36.524479, 35.906551, 39.743744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637074, 36.239716, 39.553158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092529, -0.517791, -0.850489,
		-0.955094, 0.195311, -0.222819,
		0.281484, 0.832914, -0.476467,
		36.721519, 36.489590, 39.410217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249298, 35.821087, 39.129425>,  <36.524479, 35.906551, 39.743744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249298, 35.821087, 39.129425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.495453, 36.127285, 39.054253>,  <36.643147, 36.311005, 39.009148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.495453, 36.127285, 39.054253>,  <36.249298, 35.821087, 39.129425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495453, 36.127285, 39.054253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130100, -0.333797, -0.933624,
		-0.777412, 0.550093, -0.305006,
		0.615390, 0.765492, -0.187931,
		36.680069, 36.356934, 38.997875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077293, 36.138538, 38.470863>,  <36.249298, 35.821087, 39.129425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077293, 36.138538, 38.470863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.460724, 36.219715, 38.550808>,  <36.690781, 36.268421, 38.598774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.460724, 36.219715, 38.550808>,  <36.077293, 36.138538, 38.470863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460724, 36.219715, 38.550808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251341, -0.272525, -0.928740,
		-0.134011, 0.940503, -0.312243,
		0.958576, 0.202941, 0.199866,
		36.748299, 36.280598, 38.610767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340603, 36.401398, 37.779343>,  <36.077293, 36.138538, 38.470863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340603, 36.401398, 37.779343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.676418, 36.339561, 37.987679>,  <36.877907, 36.302460, 38.112682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.676418, 36.339561, 37.987679>,  <36.340603, 36.401398, 37.779343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676418, 36.339561, 37.987679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456585, -0.318822, -0.830592,
		0.294456, 0.935123, -0.197081,
		0.839539, -0.154588, 0.520842,
		36.928280, 36.293186, 38.143932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874882, 36.818825, 37.424835>,  <36.340603, 36.401398, 37.779343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874882, 36.818825, 37.424835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082150, 36.558838, 37.647202>,  <37.206512, 36.402843, 37.780621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082150, 36.558838, 37.647202>,  <36.874882, 36.818825, 37.424835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082150, 36.558838, 37.647202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603930, -0.182181, -0.775937,
		0.605612, 0.737801, 0.298135,
		0.518172, -0.649969, 0.555911,
		37.237602, 36.363846, 37.813976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565575, 37.043949, 37.396202>,  <36.874882, 36.818825, 37.424835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565575, 37.043949, 37.396202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.578758, 36.657494, 37.498562>,  <37.586670, 36.425621, 37.559978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.578758, 36.657494, 37.498562>,  <37.565575, 37.043949, 37.396202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578758, 36.657494, 37.498562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650003, -0.173775, -0.739796,
		0.759217, 0.190718, 0.622267,
		0.032958, -0.966141, 0.255900,
		37.588646, 36.367653, 37.575333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230579, 36.873764, 37.364395>,  <37.565575, 37.043949, 37.396202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230579, 36.873764, 37.364395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.047626, 36.522053, 37.311230>,  <37.937855, 36.311024, 37.279331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.047626, 36.522053, 37.311230>,  <38.230579, 36.873764, 37.364395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047626, 36.522053, 37.311230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679748, -0.249323, -0.689769,
		0.573362, -0.405836, 0.711726,
		-0.457383, -0.879281, -0.132914,
		37.910412, 36.258270, 37.271355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787376, 36.466125, 37.317181>,  <38.230579, 36.873764, 37.364395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787376, 36.466125, 37.317181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.463161, 36.298904, 37.153103>,  <38.268631, 36.198570, 37.054657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.463161, 36.298904, 37.153103>,  <38.787376, 36.466125, 37.317181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463161, 36.298904, 37.153103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519814, -0.190797, -0.832700,
		0.269853, -0.888158, 0.371960,
		-0.810539, -0.418056, -0.410190,
		38.220001, 36.173489, 37.030045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913929, 36.357246, 38.075493>,  <38.787376, 36.466125, 37.317181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913929, 36.357246, 38.075493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.264889, 36.509567, 37.958763>,  <39.475464, 36.600960, 37.888725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.264889, 36.509567, 37.958763>,  <38.913929, 36.357246, 38.075493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264889, 36.509567, 37.958763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154950, 0.800595, 0.578824,
		0.454055, -0.462639, 0.761445,
		0.877396, 0.380804, -0.291829,
		39.528107, 36.623810, 37.871216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235062, 36.595200, 38.694637>,  <38.913929, 36.357246, 38.075493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235062, 36.595200, 38.694637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.443527, 36.788582, 38.413311>,  <39.568607, 36.904613, 38.244514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.443527, 36.788582, 38.413311>,  <39.235062, 36.595200, 38.694637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443527, 36.788582, 38.413311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109773, 0.855208, 0.506526,
		0.846362, -0.186783, 0.498782,
		0.521173, 0.483458, -0.703312,
		39.599876, 36.933620, 38.202316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797455, 36.885284, 39.043777>,  <39.235062, 36.595200, 38.694637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797455, 36.885284, 39.043777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.724789, 37.092457, 38.709412>,  <39.681187, 37.216759, 38.508793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.724789, 37.092457, 38.709412>,  <39.797455, 36.885284, 39.043777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724789, 37.092457, 38.709412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187665, 0.816173, 0.546482,
		0.965287, 0.256149, -0.051076,
		-0.181668, 0.517926, -0.835912,
		39.670288, 37.247833, 38.458637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163063, 37.493290, 39.095997>,  <39.797455, 36.885284, 39.043777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163063, 37.493290, 39.095997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.860718, 37.588776, 38.852131>,  <39.679310, 37.646069, 38.705811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.860718, 37.588776, 38.852131>,  <40.163063, 37.493290, 39.095997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860718, 37.588776, 38.852131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139689, 0.850928, 0.506369,
		0.639656, 0.467908, -0.609838,
		-0.755862, 0.238714, -0.609662,
		39.633961, 37.660389, 38.669231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410828, 38.123749, 38.891399>,  <40.163063, 37.493290, 39.095997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410828, 38.123749, 38.891399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.021099, 38.100964, 38.804264>,  <39.787262, 38.087292, 38.751984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.021099, 38.100964, 38.804264>,  <40.410828, 38.123749, 38.891399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021099, 38.100964, 38.804264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139192, 0.912847, 0.383843,
		0.176986, 0.404307, -0.897336,
		-0.974321, -0.056967, -0.217837,
		39.728802, 38.083874, 38.738914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320660, 38.788513, 38.628979>,  <40.410828, 38.123749, 38.891399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320660, 38.788513, 38.628979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.968334, 38.630314, 38.733093>,  <39.756939, 38.535397, 38.795563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.968334, 38.630314, 38.733093>,  <40.320660, 38.788513, 38.628979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968334, 38.630314, 38.733093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165551, 0.772318, 0.613285,
		-0.443573, 0.497100, -0.745744,
		-0.880815, -0.395496, 0.260284,
		39.704090, 38.511665, 38.811180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726357, 39.338287, 38.462887>,  <40.320660, 38.788513, 38.628979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726357, 39.338287, 38.462887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.587021, 39.071995, 38.726845>,  <39.503418, 38.912220, 38.885220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.587021, 39.071995, 38.726845>,  <39.726357, 39.338287, 38.462887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587021, 39.071995, 38.726845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250617, 0.744503, 0.618795,
		-0.903244, 0.050171, -0.426185,
		-0.348342, -0.665731, 0.659894,
		39.482517, 38.872276, 38.924812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159401, 39.604481, 38.673321>,  <39.726357, 39.338287, 38.462887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159401, 39.604481, 38.673321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.199406, 39.329010, 38.960575>,  <39.223408, 39.163727, 39.132927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.199406, 39.329010, 38.960575>,  <39.159401, 39.604481, 38.673321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199406, 39.329010, 38.960575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439287, 0.617037, 0.652911,
		-0.892762, -0.380768, -0.240815,
		0.100015, -0.688681, 0.718133,
		39.229412, 39.122406, 39.176014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558723, 39.603104, 39.028069>,  <39.159401, 39.604481, 38.673321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558723, 39.603104, 39.028069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.821228, 39.444412, 39.284794>,  <38.978733, 39.349197, 39.438828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.821228, 39.444412, 39.284794>,  <38.558723, 39.603104, 39.028069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821228, 39.444412, 39.284794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424811, 0.508708, 0.748833,
		-0.623580, -0.764081, 0.165312,
		0.656265, -0.396731, 0.641811,
		39.018108, 39.325394, 39.477337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153622, 39.352863, 39.559345>,  <38.558723, 39.603104, 39.028069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153622, 39.352863, 39.559345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.516727, 39.434620, 39.705872>,  <38.734592, 39.483673, 39.793789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.516727, 39.434620, 39.705872>,  <38.153622, 39.352863, 39.559345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516727, 39.434620, 39.705872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417330, 0.528396, 0.739346,
		-0.042446, -0.824027, 0.564957,
		0.907763, 0.204391, 0.366320,
		38.789055, 39.495937, 39.815769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219151, 39.155766, 40.283997>,  <38.153622, 39.352863, 39.559345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219151, 39.155766, 40.283997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.523277, 39.414288, 40.258038>,  <38.705753, 39.569401, 40.242462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.523277, 39.414288, 40.258038>,  <38.219151, 39.155766, 40.283997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523277, 39.414288, 40.258038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291733, 0.429038, 0.854879,
		0.580356, -0.631044, 0.514752,
		0.760314, 0.646305, -0.064898,
		38.751373, 39.608177, 40.238567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485035, 39.161934, 40.949493>,  <38.219151, 39.155766, 40.283997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485035, 39.161934, 40.949493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.651760, 39.481480, 40.776016>,  <38.751793, 39.673206, 40.671932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.651760, 39.481480, 40.776016>,  <38.485035, 39.161934, 40.949493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651760, 39.481480, 40.776016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100255, 0.514599, 0.851550,
		0.903448, -0.311455, 0.294580,
		0.416810, 0.798865, -0.433688,
		38.776802, 39.721138, 40.645908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931870, 39.432346, 41.435219>,  <38.485035, 39.161934, 40.949493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931870, 39.432346, 41.435219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.837833, 39.717499, 41.170937>,  <38.781414, 39.888588, 41.012367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.837833, 39.717499, 41.170937>,  <38.931870, 39.432346, 41.435219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837833, 39.717499, 41.170937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233357, 0.618482, 0.750349,
		0.943546, 0.330579, 0.020957,
		-0.235088, 0.712879, -0.660709,
		38.767307, 39.931362, 40.972725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146957, 40.006866, 41.739609>,  <38.931870, 39.432346, 41.435219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146957, 40.006866, 41.739609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.887661, 40.137386, 41.464417>,  <38.732082, 40.215698, 41.299301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.887661, 40.137386, 41.464417>,  <39.146957, 40.006866, 41.739609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887661, 40.137386, 41.464417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414986, 0.606155, 0.678501,
		0.638415, 0.725332, -0.257524,
		-0.648238, 0.326296, -0.687981,
		38.693188, 40.235275, 41.258022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316544, 40.699265, 41.684521>,  <39.146957, 40.006866, 41.739609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316544, 40.699265, 41.684521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.947510, 40.625374, 41.549046>,  <38.726089, 40.581039, 41.467762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.947510, 40.625374, 41.549046>,  <39.316544, 40.699265, 41.684521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947510, 40.625374, 41.549046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377707, 0.611248, 0.695495,
		0.078542, 0.769578, -0.633703,
		-0.922588, -0.184728, -0.338684,
		38.670734, 40.569954, 41.447441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089035, 41.259087, 41.378529>,  <39.316544, 40.699265, 41.684521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089035, 41.259087, 41.378529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.789227, 41.042343, 41.530640>,  <38.609341, 40.912300, 41.621906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.789227, 41.042343, 41.530640>,  <39.089035, 41.259087, 41.378529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789227, 41.042343, 41.530640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255937, 0.766983, 0.588415,
		-0.610503, 0.343702, -0.713551,
		-0.749521, -0.541854, 0.380279,
		38.564369, 40.879787, 41.644722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851856, 41.653931, 41.867954>,  <39.089035, 41.259087, 41.378529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851856, 41.653931, 41.867954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.602432, 41.349312, 41.938633>,  <38.452778, 41.166542, 41.981041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.602432, 41.349312, 41.938633>,  <38.851856, 41.653931, 41.867954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602432, 41.349312, 41.938633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439893, 0.528638, 0.725972,
		-0.646270, 0.374959, -0.664636,
		-0.623562, -0.761543, 0.176701,
		38.415363, 41.120850, 41.991642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284199, 41.938622, 42.126862>,  <38.851856, 41.653931, 41.867954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284199, 41.938622, 42.126862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.232788, 41.558697, 42.240936>,  <38.201942, 41.330742, 42.309380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.232788, 41.558697, 42.240936>,  <38.284199, 41.938622, 42.126862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232788, 41.558697, 42.240936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435213, 0.312419, 0.844384,
		-0.891107, -0.015594, -0.453525,
		-0.128523, -0.949816, 0.285185,
		38.194233, 41.273750, 42.326492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.567783, 41.892696, 42.597408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.765675, 41.551983, 42.666344>,  <37.884411, 41.347553, 42.707706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.765675, 41.551983, 42.666344>,  <37.567783, 41.892696, 42.597408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765675, 41.551983, 42.666344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282895, 0.029664, 0.958692,
		-0.821714, -0.523047, -0.226291,
		0.494728, -0.851788, 0.172342,
		37.914093, 41.296448, 42.718048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160927, 41.507614, 43.136635>,  <37.567783, 41.892696, 42.597408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160927, 41.507614, 43.136635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.516647, 41.325230, 43.150703>,  <37.730080, 41.215797, 43.159145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.516647, 41.325230, 43.150703>,  <37.160927, 41.507614, 43.136635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516647, 41.325230, 43.150703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111000, -0.140611, 0.983823,
		-0.443645, -0.878819, -0.175658,
		0.889302, -0.455966, 0.035168,
		37.783440, 41.188438, 43.161255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037220, 40.744526, 43.469627>,  <37.160927, 41.507614, 43.136635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037220, 40.744526, 43.469627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.415531, 40.865891, 43.516010>,  <37.642517, 40.938709, 43.543839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.415531, 40.865891, 43.516010>,  <37.037220, 40.744526, 43.469627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415531, 40.865891, 43.516010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080355, -0.127334, 0.988600,
		0.314714, -0.944314, -0.096050,
		0.945779, 0.303408, 0.115954,
		37.699265, 40.956913, 43.550797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307285, 40.224548, 43.837738>,  <37.037220, 40.744526, 43.469627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307285, 40.224548, 43.837738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.548874, 40.534958, 43.910412>,  <37.693825, 40.721203, 43.954014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.548874, 40.534958, 43.910412>,  <37.307285, 40.224548, 43.837738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548874, 40.534958, 43.910412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034005, -0.252835, 0.966912,
		0.796284, -0.577805, -0.179092,
		0.603967, 0.776026, 0.181680,
		37.730064, 40.767765, 43.964916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886551, 40.003811, 44.195362>,  <37.307285, 40.224548, 43.837738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886551, 40.003811, 44.195362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.898998, 40.392113, 44.290588>,  <37.906467, 40.625092, 44.347725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.898998, 40.392113, 44.290588>,  <37.886551, 40.003811, 44.195362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898998, 40.392113, 44.290588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122147, -0.240088, 0.963036,
		0.992024, -0.000886, -0.126045,
		0.031115, 0.970751, 0.238065,
		37.908333, 40.683338, 44.362007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289944, 40.117867, 44.838879>,  <37.886551, 40.003811, 44.195362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289944, 40.117867, 44.838879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.072590, 40.453594, 44.832134>,  <37.942177, 40.655029, 44.828087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.072590, 40.453594, 44.832134>,  <38.289944, 40.117867, 44.838879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072590, 40.453594, 44.832134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011199, 0.027334, 0.999564,
		0.839412, 0.542955, -0.024252,
		-0.543381, 0.839317, -0.016864,
		37.909576, 40.705391, 44.827076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626823, 40.454884, 45.398422>,  <38.289944, 40.117867, 44.838879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626823, 40.454884, 45.398422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278225, 40.639175, 45.331226>,  <38.069065, 40.749748, 45.290909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278225, 40.639175, 45.331226>,  <38.626823, 40.454884, 45.398422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278225, 40.639175, 45.331226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035542, 0.282318, 0.958662,
		0.489107, 0.841444, -0.229665,
		-0.871499, 0.460726, -0.167990,
		38.016777, 40.777393, 45.280830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623379, 41.015221, 45.820728>,  <38.626823, 40.454884, 45.398422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623379, 41.015221, 45.820728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234112, 40.971413, 45.739788>,  <38.000549, 40.945129, 45.691223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234112, 40.971413, 45.739788>,  <38.623379, 41.015221, 45.820728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234112, 40.971413, 45.739788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227736, 0.332977, 0.915020,
		-0.032833, 0.936553, -0.348985,
		-0.973169, -0.109520, -0.202354,
		37.942162, 40.938557, 45.679081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301914, 41.569309, 45.987759>,  <38.623379, 41.015221, 45.820728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301914, 41.569309, 45.987759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.978291, 41.334679, 46.002419>,  <37.784115, 41.193901, 46.011215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.978291, 41.334679, 46.002419>,  <38.301914, 41.569309, 45.987759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978291, 41.334679, 46.002419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154029, 0.271800, 0.949947,
		-0.567179, 0.762923, -0.310254,
		-0.809063, -0.586578, 0.036647,
		37.735573, 41.158707, 46.013412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865028, 41.992184, 46.209984>,  <38.301914, 41.569309, 45.987759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865028, 41.992184, 46.209984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680515, 41.652809, 46.313808>,  <37.569809, 41.449184, 46.376102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680515, 41.652809, 46.313808>,  <37.865028, 41.992184, 46.209984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680515, 41.652809, 46.313808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289765, 0.420564, 0.859745,
		-0.838603, 0.321373, -0.439846,
		-0.461282, -0.848437, 0.259563,
		37.542130, 41.398277, 46.391678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149712, 42.078056, 46.488430>,  <37.865028, 41.992184, 46.209984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149712, 42.078056, 46.488430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.260780, 41.733948, 46.659466>,  <37.327423, 41.527485, 46.762089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.260780, 41.733948, 46.659466>,  <37.149712, 42.078056, 46.488430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260780, 41.733948, 46.659466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271063, 0.356852, 0.893969,
		-0.921642, -0.364134, -0.134100,
		0.277671, -0.860269, 0.427593,
		37.344082, 41.475868, 46.787743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729500, 42.031677, 46.972397>,  <37.149712, 42.078056, 46.488430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729500, 42.031677, 46.972397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.000355, 41.764927, 47.096828>,  <37.162868, 41.604877, 47.171486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.000355, 41.764927, 47.096828>,  <36.729500, 42.031677, 46.972397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000355, 41.764927, 47.096828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108997, 0.327181, 0.938654,
		-0.727740, -0.669504, 0.148859,
		0.677137, -0.666871, 0.311077,
		37.203495, 41.564865, 47.190151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437389, 41.853363, 47.478493>,  <36.729500, 42.031677, 46.972397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437389, 41.853363, 47.478493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807793, 41.728336, 47.563168>,  <37.030033, 41.653320, 47.613972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807793, 41.728336, 47.563168>,  <36.437389, 41.853363, 47.478493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807793, 41.728336, 47.563168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115354, 0.299641, 0.947053,
		-0.359451, -0.901396, 0.241413,
		0.926006, -0.312571, 0.211686,
		37.085594, 41.634563, 47.626675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414314, 41.497139, 48.147697>,  <36.437389, 41.853363, 47.478493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414314, 41.497139, 48.147697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.810143, 41.554497, 48.142326>,  <37.047642, 41.588913, 48.139103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.810143, 41.554497, 48.142326>,  <36.414314, 41.497139, 48.147697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810143, 41.554497, 48.142326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001168, 0.085228, 0.996361,
		0.144022, -0.985988, 0.084172,
		0.989574, 0.143400, -0.013426,
		37.107014, 41.597515, 48.138298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727047, 41.120647, 48.683468>,  <36.414314, 41.497139, 48.147697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727047, 41.120647, 48.683468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.032639, 41.369965, 48.616722>,  <37.215992, 41.519554, 48.576675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.032639, 41.369965, 48.616722>,  <36.727047, 41.120647, 48.683468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032639, 41.369965, 48.616722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207788, 0.007169, 0.978148,
		0.610869, -0.781955, -0.124036,
		0.763978, 0.623294, -0.166860,
		37.261833, 41.556953, 48.566666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297070, 40.864536, 49.104527>,  <36.727047, 41.120647, 48.683468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297070, 40.864536, 49.104527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.344246, 41.253933, 49.026138>,  <37.372551, 41.487572, 48.979107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.344246, 41.253933, 49.026138>,  <37.297070, 40.864536, 49.104527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344246, 41.253933, 49.026138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242915, 0.163070, 0.956243,
		0.962851, -0.160384, -0.217243,
		0.117940, 0.973491, -0.195972,
		37.379627, 41.545979, 48.967346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797359, 41.029312, 49.623928>,  <37.297070, 40.864536, 49.104527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797359, 41.029312, 49.623928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.687355, 41.392723, 49.498104>,  <37.621353, 41.610771, 49.422611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.687355, 41.392723, 49.498104>,  <37.797359, 41.029312, 49.623928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687355, 41.392723, 49.498104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255809, 0.384524, 0.886962,
		0.926786, 0.163454, -0.338157,
		-0.275007, 0.908528, -0.314559,
		37.604855, 41.665283, 49.403736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433338, 41.552319, 49.713703>,  <37.797359, 41.029312, 49.623928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433338, 41.552319, 49.713703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.062225, 41.700897, 49.727818>,  <37.839558, 41.790043, 49.736286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.062225, 41.700897, 49.727818>,  <38.433338, 41.552319, 49.713703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062225, 41.700897, 49.727818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229171, 0.492672, 0.839496,
		0.294446, 0.786957, -0.542218,
		-0.927783, 0.371447, 0.035283,
		37.783890, 41.812332, 49.738403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524242, 42.196823, 49.985302>,  <38.433338, 41.552319, 49.713703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524242, 42.196823, 49.985302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.135021, 42.119816, 50.036079>,  <37.901489, 42.073612, 50.066544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.135021, 42.119816, 50.036079>,  <38.524242, 42.196823, 49.985302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135021, 42.119816, 50.036079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050055, 0.361026, 0.931211,
		-0.225100, 0.912468, -0.341660,
		-0.973049, -0.192514, 0.126941,
		37.843105, 42.062061, 50.074162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271675, 42.797310, 50.212280>,  <38.524242, 42.196823, 49.985302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271675, 42.797310, 50.212280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.979652, 42.547878, 50.324116>,  <37.804440, 42.398220, 50.391216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.979652, 42.547878, 50.324116>,  <38.271675, 42.797310, 50.212280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979652, 42.547878, 50.324116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178098, 0.568596, 0.803106,
		-0.659775, 0.536515, -0.526164,
		-0.730053, -0.623578, 0.279593,
		37.760635, 42.360806, 50.407993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856140, 43.257225, 50.542294>,  <38.271675, 42.797310, 50.212280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856140, 43.257225, 50.542294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.729183, 42.895039, 50.655003>,  <37.653008, 42.677727, 50.722630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.729183, 42.895039, 50.655003>,  <37.856140, 43.257225, 50.542294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729183, 42.895039, 50.655003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327017, 0.383418, 0.863742,
		-0.890124, 0.182002, -0.417797,
		-0.317394, -0.905464, 0.281772,
		37.633965, 42.623398, 50.739532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266796, 43.420670, 50.948746>,  <37.856140, 43.257225, 50.542294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266796, 43.420670, 50.948746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.361187, 43.047310, 51.056881>,  <37.417824, 42.823296, 51.121761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.361187, 43.047310, 51.056881>,  <37.266796, 43.420670, 50.948746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361187, 43.047310, 51.056881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249791, 0.210582, 0.945124,
		-0.939105, -0.290558, -0.183461,
		0.235980, -0.933398, 0.270337,
		37.431980, 42.767292, 51.137981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719643, 43.133789, 51.363338>,  <37.266796, 43.420670, 50.948746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719643, 43.133789, 51.363338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.087009, 43.003582, 51.453266>,  <37.307430, 42.925457, 51.507225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.087009, 43.003582, 51.453266>,  <36.719643, 43.133789, 51.363338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087009, 43.003582, 51.453266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190329, 0.134632, 0.972445,
		-0.346821, -0.935900, 0.061692,
		0.918417, -0.325523, 0.224822,
		37.362534, 42.905926, 51.520714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408623, 42.713760, 50.890747>,  <36.719643, 43.133789, 51.363338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408623, 42.713760, 50.890747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.251820, 42.761269, 50.525845>,  <36.157738, 42.789776, 50.306904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.251820, 42.761269, 50.525845>,  <36.408623, 42.713760, 50.890747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251820, 42.761269, 50.525845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297639, -0.921922, -0.247933,
		-0.870481, -0.368717, 0.326053,
		-0.392013, 0.118775, -0.912260,
		36.134216, 42.796902, 50.252167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621777, 42.639160, 50.992424>,  <36.408623, 42.713760, 50.890747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621777, 42.639160, 50.992424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.246040, 42.505974, 51.025345>,  <35.020599, 42.426060, 51.045097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.246040, 42.505974, 51.025345>,  <35.621777, 42.639160, 50.992424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246040, 42.505974, 51.025345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247002, -0.823184, -0.511233,
		0.237976, -0.459892, 0.855492,
		-0.939339, -0.332969, 0.082303,
		34.964237, 42.406082, 51.050037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619038, 41.959274, 51.130936>,  <35.621777, 42.639160, 50.992424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619038, 41.959274, 51.130936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.243885, 41.994640, 50.996731>,  <35.018795, 42.015862, 50.916206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.243885, 41.994640, 50.996731>,  <35.619038, 41.959274, 51.130936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243885, 41.994640, 50.996731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175879, -0.712394, -0.679383,
		-0.299084, -0.696188, 0.652588,
		-0.937878, 0.088416, -0.335511,
		34.962521, 42.021164, 50.896076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422997, 41.246063, 51.031685>,  <35.619038, 41.959274, 51.130936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422997, 41.246063, 51.031685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.195518, 41.482018, 50.802383>,  <35.059032, 41.623592, 50.664803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.195518, 41.482018, 50.802383>,  <35.422997, 41.246063, 51.031685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195518, 41.482018, 50.802383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172003, -0.596232, -0.784170,
		-0.804366, -0.544552, 0.237609,
		-0.568691, 0.589890, -0.573253,
		35.024910, 41.658985, 50.630409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967934, 40.780987, 50.587238>,  <35.422997, 41.246063, 51.031685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967934, 40.780987, 50.587238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.959248, 41.139191, 50.409435>,  <34.954037, 41.354115, 50.302753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.959248, 41.139191, 50.409435>,  <34.967934, 40.780987, 50.587238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959248, 41.139191, 50.409435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080072, -0.441625, -0.893619,
		-0.996553, -0.054994, -0.062117,
		-0.021711, 0.895513, -0.444506,
		34.952736, 41.407845, 50.276085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496185, 40.628822, 49.923779>,  <34.967934, 40.780987, 50.587238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496185, 40.628822, 49.923779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.696117, 40.969715, 49.861973>,  <34.816074, 41.174252, 49.824890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.696117, 40.969715, 49.861973>,  <34.496185, 40.628822, 49.923779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696117, 40.969715, 49.861973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054101, -0.208772, -0.976467,
		-0.864434, 0.479705, -0.150456,
		0.499827, 0.852231, -0.154517,
		34.846066, 41.225384, 49.815617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044567, 41.078762, 49.463108>,  <34.496185, 40.628822, 49.923779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044567, 41.078762, 49.463108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.428413, 41.180542, 49.415127>,  <34.658722, 41.241611, 49.386337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.428413, 41.180542, 49.415127>,  <34.044567, 41.078762, 49.463108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428413, 41.180542, 49.415127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079434, -0.163959, -0.983264,
		-0.269860, 0.953086, -0.137125,
		0.959618, 0.254451, -0.119953,
		34.716297, 41.256878, 49.379143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970673, 41.364944, 48.861317>,  <34.044567, 41.078762, 49.463108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970673, 41.364944, 48.861317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.358028, 41.298290, 48.935558>,  <34.590443, 41.258297, 48.980103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.358028, 41.298290, 48.935558>,  <33.970673, 41.364944, 48.861317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358028, 41.298290, 48.935558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157062, -0.170693, -0.972726,
		0.193774, 0.971131, -0.139125,
		0.968392, -0.166637, 0.185603,
		34.648544, 41.248299, 48.991238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372860, 41.741241, 48.417168>,  <33.970673, 41.364944, 48.861317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372860, 41.741241, 48.417168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.649899, 41.479267, 48.538086>,  <34.816120, 41.322083, 48.610638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.649899, 41.479267, 48.538086>,  <34.372860, 41.741241, 48.417168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649899, 41.479267, 48.538086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222543, -0.204624, -0.953207,
		0.686141, 0.727457, 0.004029,
		0.692593, -0.654931, 0.302292,
		34.857677, 41.282787, 48.628773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966423, 41.745522, 48.038559>,  <34.372860, 41.741241, 48.417168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966423, 41.745522, 48.038559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030388, 41.380775, 48.189785>,  <35.068768, 41.161926, 48.280521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030388, 41.380775, 48.189785>,  <34.966423, 41.745522, 48.038559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030388, 41.380775, 48.189785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280339, -0.325270, -0.903111,
		0.946487, 0.250408, 0.203615,
		0.159917, -0.911864, 0.378062,
		35.078362, 41.107216, 48.303204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694092, 41.459297, 47.867958>,  <34.966423, 41.745522, 48.038559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694092, 41.459297, 47.867958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472908, 41.133968, 47.940350>,  <35.340199, 40.938770, 47.983784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472908, 41.133968, 47.940350>,  <35.694092, 41.459297, 47.867958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472908, 41.133968, 47.940350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293000, -0.393143, -0.871544,
		0.779994, -0.428897, 0.455693,
		-0.552955, -0.813318, 0.180982,
		35.307022, 40.889973, 47.994644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156914, 40.902378, 47.618427>,  <35.694092, 41.459297, 47.867958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156914, 40.902378, 47.618427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.786297, 40.753754, 47.641979>,  <35.563927, 40.664581, 47.656109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.786297, 40.753754, 47.641979>,  <36.156914, 40.902378, 47.618427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786297, 40.753754, 47.641979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010597, -0.182221, -0.983201,
		0.376045, -0.910351, 0.172772,
		-0.926541, -0.371559, 0.058876,
		35.508335, 40.642284, 47.659641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170082, 40.333447, 47.237797>,  <36.156914, 40.902378, 47.618427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170082, 40.333447, 47.237797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.776142, 40.400509, 47.255558>,  <35.539780, 40.440746, 47.266216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.776142, 40.400509, 47.255558>,  <36.170082, 40.333447, 47.237797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776142, 40.400509, 47.255558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089801, -0.273900, -0.957557,
		-0.148376, -0.947033, 0.284805,
		-0.984845, 0.167654, 0.044404,
		35.480690, 40.450806, 47.268879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806259, 39.634502, 47.148991>,  <36.170082, 40.333447, 47.237797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806259, 39.634502, 47.148991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.555737, 39.926456, 47.039440>,  <35.405422, 40.101631, 46.973709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.555737, 39.926456, 47.039440>,  <35.806259, 39.634502, 47.148991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555737, 39.926456, 47.039440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034454, -0.325049, -0.945069,
		-0.778817, -0.601337, 0.178432,
		-0.626304, 0.729888, -0.273872,
		35.367844, 40.145424, 46.957279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371796, 39.360672, 46.692898>,  <35.806259, 39.634502, 47.148991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371796, 39.360672, 46.692898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.314968, 39.751122, 46.627178>,  <35.280872, 39.985394, 46.587746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.314968, 39.751122, 46.627178>,  <35.371796, 39.360672, 46.692898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314968, 39.751122, 46.627178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129317, -0.182863, -0.974596,
		-0.981373, -0.117214, 0.152209,
		-0.142069, 0.976126, -0.164299,
		35.272346, 40.043961, 46.577888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852142, 39.343636, 46.201149>,  <35.371796, 39.360672, 46.692898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852142, 39.343636, 46.201149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.009731, 39.710960, 46.185696>,  <35.104286, 39.931355, 46.176422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.009731, 39.710960, 46.185696>,  <34.852142, 39.343636, 46.201149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009731, 39.710960, 46.185696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065394, -0.013923, -0.997763,
		-0.916793, 0.395619, 0.054566,
		0.393974, 0.918309, -0.038636,
		35.127922, 39.986454, 46.174107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522564, 39.576340, 45.627361>,  <34.852142, 39.343636, 46.201149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522564, 39.576340, 45.627361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.823154, 39.833340, 45.687336>,  <35.003510, 39.987537, 45.723320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.823154, 39.833340, 45.687336>,  <34.522564, 39.576340, 45.627361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823154, 39.833340, 45.687336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098826, 0.115083, -0.988428,
		-0.652316, 0.757598, 0.022987,
		0.751477, 0.642496, 0.149941,
		35.048599, 40.026089, 45.732319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416557, 40.191250, 45.236382>,  <34.522564, 39.576340, 45.627361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416557, 40.191250, 45.236382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.811676, 40.185780, 45.298439>,  <35.048748, 40.182495, 45.335674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.811676, 40.185780, 45.298439>,  <34.416557, 40.191250, 45.236382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811676, 40.185780, 45.298439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154894, -0.018015, -0.987767,
		0.016306, 0.999744, -0.015677,
		0.987796, -0.013679, 0.155148,
		35.108013, 40.181675, 45.344982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767437, 40.774323, 44.821148>,  <34.416557, 40.191250, 45.236382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767437, 40.774323, 44.821148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030735, 40.492535, 44.927315>,  <35.188713, 40.323463, 44.991016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030735, 40.492535, 44.927315>,  <34.767437, 40.774323, 44.821148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030735, 40.492535, 44.927315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275194, -0.102998, -0.955855,
		0.700704, 0.702225, 0.126068,
		0.658241, -0.704465, 0.265419,
		35.228207, 40.281197, 45.006939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353901, 40.871223, 44.371555>,  <34.767437, 40.774323, 44.821148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353901, 40.871223, 44.371555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.387611, 40.495369, 44.504208>,  <35.407837, 40.269855, 44.583801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.387611, 40.495369, 44.504208>,  <35.353901, 40.871223, 44.371555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387611, 40.495369, 44.504208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277467, -0.297525, -0.913505,
		0.957032, 0.169005, 0.235643,
		0.084277, -0.939636, 0.331634,
		35.412895, 40.213478, 44.603699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977058, 40.559250, 43.996342>,  <35.353901, 40.871223, 44.371555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977058, 40.559250, 43.996342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739674, 40.265106, 44.127213>,  <35.597240, 40.088619, 44.205734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739674, 40.265106, 44.127213>,  <35.977058, 40.559250, 43.996342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739674, 40.265106, 44.127213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191077, -0.523610, -0.830254,
		0.781850, -0.430209, 0.451254,
		-0.593464, -0.735359, 0.327182,
		35.561634, 40.044498, 44.225368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.944824, 38.706215, 28.581121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.555500, 38.636356, 28.640671>,  <42.321907, 38.594440, 28.676401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.555500, 38.636356, 28.640671>,  <42.944824, 38.706215, 28.581121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555500, 38.636356, 28.640671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196208, -0.296823, 0.934558,
		-0.119026, 0.938826, 0.323168,
		-0.973311, -0.174645, 0.148875,
		42.263508, 38.583961, 28.685333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771370, 39.044044, 29.163715>,  <42.944824, 38.706215, 28.581121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771370, 39.044044, 29.163715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.530190, 38.728306, 29.117439>,  <42.385483, 38.538864, 29.089674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.530190, 38.728306, 29.117439>,  <42.771370, 39.044044, 29.163715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530190, 38.728306, 29.117439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197473, -0.288173, 0.936996,
		-0.772955, 0.542113, 0.329628,
		-0.602947, -0.789348, -0.115692,
		42.349304, 38.491501, 29.082731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376286, 38.991699, 29.839170>,  <42.771370, 39.044044, 29.163715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376286, 38.991699, 29.839170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.338215, 38.627048, 29.679232>,  <42.315372, 38.408257, 29.583269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.338215, 38.627048, 29.679232>,  <42.376286, 38.991699, 29.839170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338215, 38.627048, 29.679232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107346, -0.408727, 0.906322,
		-0.989656, 0.043336, 0.136759,
		-0.095174, -0.911627, -0.399847,
		42.309662, 38.353561, 29.559277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824162, 38.712700, 30.234571>,  <42.376286, 38.991699, 29.839170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824162, 38.712700, 30.234571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.048241, 38.425396, 30.069510>,  <42.182686, 38.253014, 29.970472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.048241, 38.425396, 30.069510>,  <41.824162, 38.712700, 30.234571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048241, 38.425396, 30.069510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045071, -0.470988, 0.880987,
		-0.827135, -0.512121, -0.231471,
		0.560193, -0.718263, -0.412653,
		42.216297, 38.209919, 29.945713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529919, 38.126060, 30.501894>,  <41.824162, 38.712700, 30.234571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529919, 38.126060, 30.501894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.877270, 37.975101, 30.373211>,  <42.085678, 37.884525, 30.296001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.877270, 37.975101, 30.373211>,  <41.529919, 38.126060, 30.501894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877270, 37.975101, 30.373211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099194, -0.503428, 0.858325,
		-0.485883, -0.777261, -0.399730,
		0.868377, -0.377394, -0.321706,
		42.137783, 37.861881, 30.276699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518860, 37.396042, 30.650076>,  <41.529919, 38.126060, 30.501894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518860, 37.396042, 30.650076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.891834, 37.536366, 30.615461>,  <42.115620, 37.620560, 30.594692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.891834, 37.536366, 30.615461>,  <41.518860, 37.396042, 30.650076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891834, 37.536366, 30.615461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264539, -0.499662, 0.824838,
		0.246123, -0.792003, -0.558708,
		0.932439, 0.350811, -0.086537,
		42.171566, 37.641609, 30.589500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902332, 36.889927, 30.979973>,  <41.518860, 37.396042, 30.650076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902332, 36.889927, 30.979973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.147442, 37.205116, 31.003983>,  <42.294510, 37.394230, 31.018389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.147442, 37.205116, 31.003983>,  <41.902332, 36.889927, 30.979973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147442, 37.205116, 31.003983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472368, -0.426118, 0.771551,
		0.633539, -0.444435, -0.633329,
		0.612778, 0.787973, 0.060025,
		42.331276, 37.441509, 31.021990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512276, 36.548477, 31.222183>,  <41.902332, 36.889927, 30.979973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512276, 36.548477, 31.222183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.553146, 36.937321, 31.306623>,  <42.577667, 37.170628, 31.357288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.553146, 36.937321, 31.306623>,  <42.512276, 36.548477, 31.222183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553146, 36.937321, 31.306623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448745, -0.234435, 0.862362,
		0.887800, 0.006618, -0.460182,
		0.102176, 0.972109, 0.211101,
		42.583797, 37.228954, 31.369953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243149, 36.599968, 31.429327>,  <42.512276, 36.548477, 31.222183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243149, 36.599968, 31.429327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.066219, 36.929928, 31.570118>,  <42.960064, 37.127903, 31.654593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.066219, 36.929928, 31.570118>,  <43.243149, 36.599968, 31.429327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066219, 36.929928, 31.570118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508732, -0.092434, 0.855948,
		0.738608, 0.557666, -0.378769,
		-0.442322, 0.824903, 0.351975,
		42.933521, 37.177399, 31.675711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753502, 37.090408, 31.754644>,  <43.243149, 36.599968, 31.429327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753502, 37.090408, 31.754644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.405102, 37.198853, 31.918524>,  <43.196060, 37.263920, 32.016853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.405102, 37.198853, 31.918524>,  <43.753502, 37.090408, 31.754644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.405102, 37.198853, 31.918524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426685, 0.004115, 0.904391,
		0.243501, 0.962540, -0.119261,
		-0.871004, 0.271107, 0.409699,
		43.143799, 37.280186, 32.041435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878540, 37.674217, 32.137115>,  <43.753502, 37.090408, 31.754644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878540, 37.674217, 32.137115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.523949, 37.553188, 32.277180>,  <43.311195, 37.480572, 32.361217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.523949, 37.553188, 32.277180>,  <43.878540, 37.674217, 32.137115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523949, 37.553188, 32.277180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346833, 0.066553, 0.935563,
		-0.306384, 0.950799, 0.045946,
		-0.886474, -0.302577, 0.350159,
		43.258007, 37.462414, 32.382229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711777, 38.148979, 32.797276>,  <43.878540, 37.674217, 32.137115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711777, 38.148979, 32.797276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.474476, 37.827900, 32.821697>,  <43.332096, 37.635250, 32.836349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.474476, 37.827900, 32.821697>,  <43.711777, 38.148979, 32.797276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474476, 37.827900, 32.821697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284994, -0.138493, 0.948471,
		-0.752883, 0.580079, 0.310926,
		-0.593250, -0.802700, 0.061050,
		43.296501, 37.587090, 32.840012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377525, 38.206013, 33.499695>,  <43.711777, 38.148979, 32.797276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377525, 38.206013, 33.499695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.352505, 37.827087, 33.374043>,  <43.337494, 37.599731, 33.298653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.352505, 37.827087, 33.374043>,  <43.377525, 38.206013, 33.499695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352505, 37.827087, 33.374043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419398, -0.310556, 0.853030,
		-0.905645, -0.078385, 0.416729,
		-0.062553, -0.947318, -0.314128,
		43.333740, 37.542892, 33.279804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183598, 37.868965, 34.143875>,  <43.377525, 38.206013, 33.499695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183598, 37.868965, 34.143875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.339832, 37.585575, 33.908752>,  <43.433571, 37.415543, 33.767681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.339832, 37.585575, 33.908752>,  <43.183598, 37.868965, 34.143875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339832, 37.585575, 33.908752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472949, -0.393379, 0.788398,
		-0.789787, -0.585937, 0.181424,
		0.390583, -0.708471, -0.587804,
		43.457008, 37.373035, 33.732410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150810, 37.217667, 34.591454>,  <43.183598, 37.868965, 34.143875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.150810, 37.217667, 34.591454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.433922, 37.142895, 34.318954>,  <43.603790, 37.098030, 34.155453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.433922, 37.142895, 34.318954>,  <43.150810, 37.217667, 34.591454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433922, 37.142895, 34.318954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549669, -0.460033, 0.697304,
		-0.443751, -0.868000, -0.222848,
		0.707777, -0.186937, -0.681253,
		43.646255, 37.086815, 34.114578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289219, 36.459709, 34.575947>,  <43.150810, 37.217667, 34.591454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289219, 36.459709, 34.575947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.621071, 36.643158, 34.448586>,  <43.820183, 36.753227, 34.372169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.621071, 36.643158, 34.448586>,  <43.289219, 36.459709, 34.575947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.621071, 36.643158, 34.448586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513828, -0.404112, 0.756753,
		0.218396, -0.791427, -0.570917,
		0.829629, 0.458625, -0.318401,
		43.869961, 36.780746, 34.353065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.752373, 35.915802, 34.506199>,  <43.289219, 36.459709, 34.575947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.752373, 35.915802, 34.506199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.946999, 36.263565, 34.540577>,  <44.063774, 36.472221, 34.561203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.946999, 36.263565, 34.540577>,  <43.752373, 35.915802, 34.506199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946999, 36.263565, 34.540577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584684, -0.397147, 0.707403,
		0.649154, -0.293946, -0.701566,
		0.486563, 0.869408, 0.085944,
		44.092968, 36.524387, 34.566360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.450294, 35.727634, 34.583832>,  <43.752373, 35.915802, 34.506199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.450294, 35.727634, 34.583832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.459053, 36.108688, 34.705166>,  <44.464310, 36.337318, 34.777966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.459053, 36.108688, 34.705166>,  <44.450294, 35.727634, 34.583832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.459053, 36.108688, 34.705166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493013, -0.274240, 0.825670,
		0.869747, 0.131469, -0.475664,
		0.021896, 0.952632, 0.303335,
		44.465622, 36.394478, 34.796165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.137466, 35.845764, 34.664524>,  <44.450294, 35.727634, 34.583832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.137466, 35.845764, 34.664524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.937176, 36.096687, 34.903107>,  <44.817001, 36.247242, 35.046257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.937176, 36.096687, 34.903107>,  <45.137466, 35.845764, 34.664524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937176, 36.096687, 34.903107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519498, -0.333383, 0.786751,
		0.692384, 0.703803, -0.158953,
		-0.500725, 0.627310, 0.596453,
		44.786957, 36.284882, 35.082043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.716919, 36.270969, 34.990707>,  <45.137466, 35.845764, 34.664524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.716919, 36.270969, 34.990707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.383118, 36.287273, 35.210506>,  <45.182838, 36.297054, 35.342384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.383118, 36.287273, 35.210506>,  <45.716919, 36.270969, 34.990707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383118, 36.287273, 35.210506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496991, -0.374937, 0.782574,
		0.237925, 0.926154, 0.292627,
		-0.834501, 0.040761, 0.549497,
		45.132767, 36.299503, 35.375355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.882812, 36.481243, 35.584904>,  <45.716919, 36.270969, 34.990707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.882812, 36.481243, 35.584904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.523144, 36.333836, 35.679287>,  <45.307343, 36.245392, 35.735916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.523144, 36.333836, 35.679287>,  <45.882812, 36.481243, 35.584904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523144, 36.333836, 35.679287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379415, -0.387932, 0.839972,
		-0.218008, 0.844810, 0.488640,
		-0.899176, -0.368517, 0.235961,
		45.253391, 36.223282, 35.750076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.556366, 36.425610, 35.103958>,  <45.882812, 36.481243, 35.584904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.556366, 36.425610, 35.103958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.921745, 36.485558, 34.952618>,  <47.140972, 36.521526, 34.861813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.921745, 36.485558, 34.952618>,  <46.556366, 36.425610, 35.103958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.921745, 36.485558, 34.952618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249805, 0.940440, -0.230589,
		0.321256, 0.305145, 0.896483,
		0.913451, 0.149867, -0.378348,
		47.195782, 36.530518, 34.839111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.877007, 36.999214, 35.317497>,  <46.556366, 36.425610, 35.103958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.877007, 36.999214, 35.317497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.051849, 36.950207, 34.961086>,  <47.156757, 36.920803, 34.747242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.051849, 36.950207, 34.961086>,  <46.877007, 36.999214, 35.317497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.051849, 36.950207, 34.961086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383362, 0.870800, -0.307801,
		0.813614, 0.476128, 0.333668,
		0.437110, -0.122516, -0.891024,
		47.182983, 36.913452, 34.693779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.317822, 37.615185, 35.183395>,  <46.877007, 36.999214, 35.317497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.317822, 37.615185, 35.183395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.239681, 37.447479, 34.828758>,  <47.192799, 37.346855, 34.615974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.239681, 37.447479, 34.828758>,  <47.317822, 37.615185, 35.183395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.239681, 37.447479, 34.828758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279193, 0.890382, -0.359543,
		0.940154, 0.177296, -0.290990,
		-0.195347, -0.419268, -0.886597,
		47.181076, 37.321697, 34.562778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.599575, 38.035454, 34.760887>,  <47.317822, 37.615185, 35.183395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.599575, 38.035454, 34.760887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.325363, 37.842079, 34.543137>,  <47.160835, 37.726055, 34.412487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.325363, 37.842079, 34.543137>,  <47.599575, 38.035454, 34.760887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.325363, 37.842079, 34.543137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312166, 0.870677, -0.380096,
		0.657727, -0.090630, -0.747784,
		-0.685527, -0.483433, -0.544377,
		47.119705, 37.697048, 34.379822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.539650, 38.384624, 34.076939>,  <47.599575, 38.035454, 34.760887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.539650, 38.384624, 34.076939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.209286, 38.163048, 34.034943>,  <47.011066, 38.030102, 34.009747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.209286, 38.163048, 34.034943>,  <47.539650, 38.384624, 34.076939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.209286, 38.163048, 34.034943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375309, 0.679125, -0.630819,
		0.420740, -0.481594, -0.768795,
		-0.825906, -0.553946, -0.104989,
		46.961514, 37.996864, 34.003445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.343353, 38.367641, 33.422222>,  <47.539650, 38.384624, 34.076939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.343353, 38.367641, 33.422222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.992844, 38.291603, 33.599316>,  <46.782539, 38.245979, 33.705570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.992844, 38.291603, 33.599316>,  <47.343353, 38.367641, 33.422222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.992844, 38.291603, 33.599316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439184, 0.693034, -0.571683,
		-0.198157, -0.695391, -0.690771,
		-0.876271, -0.190093, 0.442734,
		46.729961, 38.234573, 33.732136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.853302, 38.280598, 32.829525>,  <47.343353, 38.367641, 33.422222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.853302, 38.280598, 32.829525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.613770, 38.327602, 33.146408>,  <46.470051, 38.355804, 33.336536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.613770, 38.327602, 33.146408>,  <46.853302, 38.280598, 32.829525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.613770, 38.327602, 33.146408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459592, 0.759666, -0.460089,
		-0.655879, -0.639608, -0.400904,
		-0.598830, 0.117511, 0.792208,
		46.434120, 38.362854, 33.384071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.076679, 38.197128, 32.540096>,  <46.853302, 38.280598, 32.829525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.076679, 38.197128, 32.540096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.068150, 38.370281, 32.900578>,  <46.063030, 38.474174, 33.116867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.068150, 38.370281, 32.900578>,  <46.076679, 38.197128, 32.540096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.068150, 38.370281, 32.900578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464305, 0.794013, -0.392383,
		-0.885419, -0.426799, 0.184056,
		-0.021326, 0.432881, 0.901199,
		46.061752, 38.500145, 33.170937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.372417, 38.292679, 32.609184>,  <46.076679, 38.197128, 32.540096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.372417, 38.292679, 32.609184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.589542, 38.533527, 32.843384>,  <45.719818, 38.678036, 32.983906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.589542, 38.533527, 32.843384>,  <45.372417, 38.292679, 32.609184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.589542, 38.533527, 32.843384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501047, 0.791659, -0.349611,
		-0.674024, -0.103592, 0.731410,
		0.542810, 0.602117, 0.585501,
		45.752384, 38.714161, 33.019035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868561, 38.677578, 33.085968>,  <45.372417, 38.292679, 32.609184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.868561, 38.677578, 33.085968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.192501, 38.911377, 33.065952>,  <45.386868, 39.051655, 33.053944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.192501, 38.911377, 33.065952>,  <44.868561, 38.677578, 33.085968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192501, 38.911377, 33.065952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575466, 0.774976, -0.261249,
		-0.113920, 0.240369, 0.963974,
		0.809853, 0.584496, -0.050039,
		45.435455, 39.086727, 33.050941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730434, 39.349277, 33.420563>,  <44.868561, 38.677578, 33.085968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730434, 39.349277, 33.420563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.070076, 39.425682, 33.223572>,  <45.273861, 39.471523, 33.105377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.070076, 39.425682, 33.223572>,  <44.730434, 39.349277, 33.420563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.070076, 39.425682, 33.223572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425590, 0.799621, -0.423651,
		0.312872, 0.569318, 0.760256,
		0.849108, 0.191008, -0.492475,
		45.324810, 39.482986, 33.075829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809361, 40.091030, 33.566231>,  <44.730434, 39.349277, 33.420563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809361, 40.091030, 33.566231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.003304, 39.990231, 33.231232>,  <45.119671, 39.929752, 33.030231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.003304, 39.990231, 33.231232>,  <44.809361, 40.091030, 33.566231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003304, 39.990231, 33.231232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442254, 0.755496, -0.483360,
		0.754534, 0.604750, 0.254863,
		0.484860, -0.251997, -0.837501,
		45.148762, 39.914631, 32.979980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934040, 40.687447, 33.194149>,  <44.809361, 40.091030, 33.566231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.934040, 40.687447, 33.194149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.999088, 40.429626, 32.895321>,  <45.038116, 40.274937, 32.716022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.999088, 40.429626, 32.895321>,  <44.934040, 40.687447, 33.194149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.999088, 40.429626, 32.895321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576248, 0.552568, -0.602168,
		0.800933, 0.528421, -0.281562,
		0.162616, -0.644546, -0.747072,
		45.047874, 40.236263, 32.671200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108929, 41.091904, 32.551491>,  <44.934040, 40.687447, 33.194149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108929, 41.091904, 32.551491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.980618, 40.734047, 32.427097>,  <44.903633, 40.519333, 32.352459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.980618, 40.734047, 32.427097>,  <45.108929, 41.091904, 32.551491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980618, 40.734047, 32.427097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488528, 0.437570, -0.754899,
		0.811445, -0.090228, -0.577421,
		-0.320775, -0.894646, -0.310986,
		44.884384, 40.465652, 32.333801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.359970, 41.033272, 31.849369>,  <45.108929, 41.091904, 32.551491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.359970, 41.033272, 31.849369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049286, 40.782486, 31.873478>,  <44.862873, 40.632015, 31.887943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049286, 40.782486, 31.873478>,  <45.359970, 41.033272, 31.849369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049286, 40.782486, 31.873478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431009, 0.459289, -0.776714,
		0.459289, -0.629262, -0.626963,
		0.776714, 0.626963, -0.060271,
		44.816273, 40.594398, 31.891560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024448, 41.004997, 31.165501>,  <45.359970, 41.033272, 31.849369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024448, 41.004997, 31.165501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.722157, 40.828907, 31.359438>,  <44.540783, 40.723251, 31.475801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.722157, 40.828907, 31.359438>,  <45.024448, 41.004997, 31.165501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.722157, 40.828907, 31.359438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631257, 0.292611, -0.718257,
		0.174322, -0.848871, -0.499029,
		-0.755729, -0.440224, 0.484847,
		44.495438, 40.696838, 31.504892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631207, 40.626656, 30.662453>,  <45.024448, 41.004997, 31.165501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631207, 40.626656, 30.662453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.353695, 40.670357, 30.947193>,  <44.187187, 40.696579, 31.118036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.353695, 40.670357, 30.947193>,  <44.631207, 40.626656, 30.662453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353695, 40.670357, 30.947193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627038, 0.394554, -0.671678,
		-0.354245, -0.912355, -0.205229,
		-0.693782, 0.109252, 0.711849,
		44.145561, 40.703133, 31.160748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.945133, 40.335491, 30.398842>,  <44.631207, 40.626656, 30.662453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.945133, 40.335491, 30.398842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.849361, 40.583523, 30.697685>,  <43.791901, 40.732342, 30.876991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.849361, 40.583523, 30.697685>,  <43.945133, 40.335491, 30.398842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849361, 40.583523, 30.697685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772614, 0.344333, -0.533387,
		-0.587998, -0.704935, 0.396642,
		-0.239426, 0.620082, 0.747110,
		43.777534, 40.769547, 30.921818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248085, 40.372120, 30.444944>,  <43.945133, 40.335491, 30.398842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248085, 40.372120, 30.444944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.310490, 40.699291, 30.666449>,  <43.347931, 40.895596, 30.799351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.310490, 40.699291, 30.666449>,  <43.248085, 40.372120, 30.444944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310490, 40.699291, 30.666449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716503, 0.479611, -0.506554,
		-0.679915, -0.317743, 0.660874,
		0.156009, 0.817932, 0.553758,
		43.357292, 40.944672, 30.832577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634884, 40.482414, 30.880308>,  <43.248085, 40.372120, 30.444944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634884, 40.482414, 30.880308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.831150, 40.824829, 30.815252>,  <42.948910, 41.030277, 30.776218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.831150, 40.824829, 30.815252>,  <42.634884, 40.482414, 30.880308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831150, 40.824829, 30.815252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818280, 0.388533, -0.423626,
		-0.299448, 0.340943, 0.891116,
		0.490661, 0.856037, -0.162641,
		42.978348, 41.081642, 30.766460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205456, 40.945637, 31.114964>,  <42.634884, 40.482414, 30.880308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205456, 40.945637, 31.114964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.433983, 41.164715, 30.870464>,  <42.571098, 41.296162, 30.723764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.433983, 41.164715, 30.870464>,  <42.205456, 40.945637, 31.114964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433983, 41.164715, 30.870464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801555, 0.532390, -0.272159,
		0.176362, 0.645438, 0.743173,
		0.571319, 0.547696, -0.611247,
		42.605377, 41.329025, 30.687090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.325443, 40.796963, 40.075344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146770, 40.474838, 40.231266>,  <39.039566, 40.281563, 40.324818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146770, 40.474838, 40.231266>,  <39.325443, 40.796963, 40.075344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146770, 40.474838, 40.231266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594818, -0.592753, -0.542988,
		0.668333, -0.010680, 0.743786,
		-0.446680, -0.805313, 0.389803,
		39.012768, 40.233246, 40.348206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850399, 40.256561, 40.090340>,  <39.325443, 40.796963, 40.075344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850399, 40.256561, 40.090340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512501, 40.051689, 40.152412>,  <39.309761, 39.928764, 40.189655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512501, 40.051689, 40.152412>,  <39.850399, 40.256561, 40.090340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512501, 40.051689, 40.152412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371223, -0.769649, -0.519455,
		0.385491, -0.381198, 0.840289,
		-0.844743, -0.512180, 0.155184,
		39.259079, 39.898037, 40.198967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052650, 39.558094, 40.188427>,  <39.850399, 40.256561, 40.090340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052650, 39.558094, 40.188427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668667, 39.531620, 40.079544>,  <39.438274, 39.515736, 40.014214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668667, 39.531620, 40.079544>,  <40.052650, 39.558094, 40.188427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668667, 39.531620, 40.079544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179197, -0.891965, -0.415075,
		-0.215322, -0.447234, 0.868112,
		-0.959961, -0.066188, -0.272202,
		39.380680, 39.511765, 39.997883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820080, 38.915096, 40.364296>,  <40.052650, 39.558094, 40.188427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820080, 38.915096, 40.364296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568924, 39.033684, 40.076443>,  <39.418232, 39.104836, 39.903732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568924, 39.033684, 40.076443>,  <39.820080, 38.915096, 40.364296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568924, 39.033684, 40.076443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132609, -0.870342, -0.474256,
		-0.766925, -0.393208, 0.507162,
		-0.627886, 0.296465, -0.719630,
		39.380558, 39.122623, 39.860554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510338, 38.278767, 40.112225>,  <39.820080, 38.915096, 40.364296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510338, 38.278767, 40.112225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401226, 38.528843, 39.819725>,  <39.335758, 38.678886, 39.644226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401226, 38.528843, 39.819725>,  <39.510338, 38.278767, 40.112225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401226, 38.528843, 39.819725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057910, -0.769369, -0.636174,
		-0.960331, -0.131192, 0.246076,
		-0.272784, 0.625188, -0.731252,
		39.319389, 38.716400, 39.600349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947311, 37.996525, 39.720257>,  <39.510338, 38.278767, 40.112225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947311, 37.996525, 39.720257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092525, 38.268814, 39.465755>,  <39.179653, 38.432186, 39.313053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092525, 38.268814, 39.465755>,  <38.947311, 37.996525, 39.720257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092525, 38.268814, 39.465755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006312, -0.684625, -0.728868,
		-0.931753, 0.260591, -0.252842,
		0.363038, 0.680721, -0.636257,
		39.201435, 38.473030, 39.274879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477703, 37.928463, 39.140858>,  <38.947311, 37.996525, 39.720257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477703, 37.928463, 39.140858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803326, 38.127392, 39.020870>,  <38.998699, 38.246750, 38.948879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803326, 38.127392, 39.020870>,  <38.477703, 37.928463, 39.140858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803326, 38.127392, 39.020870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086981, -0.615059, -0.783668,
		-0.574233, 0.611860, -0.543952,
		0.814058, 0.497322, -0.299967,
		39.047543, 38.276588, 38.930882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417095, 38.070572, 38.399170>,  <38.477703, 37.928463, 39.140858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417095, 38.070572, 38.399170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805069, 38.075737, 38.496376>,  <39.037853, 38.078835, 38.554699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805069, 38.075737, 38.496376>,  <38.417095, 38.070572, 38.399170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805069, 38.075737, 38.496376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173095, -0.738517, -0.651637,
		0.171058, 0.674111, -0.718550,
		0.969937, 0.012910, 0.243014,
		39.096050, 38.079609, 38.569279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713303, 37.843533, 37.767109>,  <38.417095, 38.070572, 38.399170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713303, 37.843533, 37.767109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018112, 37.808880, 38.023800>,  <39.200996, 37.788090, 38.177814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018112, 37.808880, 38.023800>,  <38.713303, 37.843533, 37.767109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018112, 37.808880, 38.023800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337296, -0.792854, -0.507557,
		0.552769, 0.603222, -0.574952,
		0.762022, -0.086632, 0.641729,
		39.246719, 37.782890, 38.216320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322327, 37.857841, 37.407375>,  <38.713303, 37.843533, 37.767109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322327, 37.857841, 37.407375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436001, 37.671425, 37.742527>,  <39.504204, 37.559574, 37.943619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436001, 37.671425, 37.742527>,  <39.322327, 37.857841, 37.407375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436001, 37.671425, 37.742527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402430, -0.735223, -0.545433,
		0.870224, 0.492192, -0.021390,
		0.284184, -0.466040, 0.837882,
		39.521255, 37.531612, 37.993893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100037, 37.705673, 37.282230>,  <39.322327, 37.857841, 37.407375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100037, 37.705673, 37.282230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949772, 37.455845, 37.556103>,  <39.859612, 37.305950, 37.720425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949772, 37.455845, 37.556103>,  <40.100037, 37.705673, 37.282230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949772, 37.455845, 37.556103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330206, -0.780514, -0.530813,
		0.865933, 0.026679, 0.499448,
		-0.375665, -0.624569, 0.684682,
		39.837070, 37.268475, 37.761509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577583, 37.196201, 37.429268>,  <40.100037, 37.705673, 37.282230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577583, 37.196201, 37.429268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216343, 37.041840, 37.504620>,  <39.999599, 36.949223, 37.549831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216343, 37.041840, 37.504620>,  <40.577583, 37.196201, 37.429268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216343, 37.041840, 37.504620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224163, -0.797807, -0.559692,
		0.366275, -0.463232, 0.807006,
		-0.903102, -0.385902, 0.188377,
		39.945412, 36.926067, 37.561134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736000, 36.517952, 37.486034>,  <40.577583, 37.196201, 37.429268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736000, 36.517952, 37.486034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346062, 36.563141, 37.409180>,  <40.112099, 36.590252, 37.363068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346062, 36.563141, 37.409180>,  <40.736000, 36.517952, 37.486034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346062, 36.563141, 37.409180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029500, -0.789060, -0.613607,
		-0.220926, -0.603839, 0.765878,
		-0.974844, 0.112968, -0.192138,
		40.053608, 36.597031, 37.351540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255547, 35.867664, 37.537045>,  <40.736000, 36.517952, 37.486034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255547, 35.867664, 37.537045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084396, 36.127731, 37.285900>,  <39.981705, 36.283772, 37.135216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084396, 36.127731, 37.285900>,  <40.255547, 35.867664, 37.537045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084396, 36.127731, 37.285900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152285, -0.736587, -0.658975,
		-0.890915, -0.186348, 0.414181,
		-0.427879, 0.650164, -0.627858,
		39.956032, 36.322781, 37.097542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782234, 35.384598, 37.243210>,  <40.255547, 35.867664, 37.537045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782234, 35.384598, 37.243210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095936, 35.164448, 37.357773>,  <41.284157, 35.032356, 37.426510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095936, 35.164448, 37.357773>,  <40.782234, 35.384598, 37.243210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095936, 35.164448, 37.357773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460495, -0.206992, 0.863191,
		-0.415799, -0.808849, -0.415781,
		0.784255, -0.550379, 0.286404,
		41.331211, 34.999336, 37.443695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572590, 34.607040, 37.374168>,  <40.782234, 35.384598, 37.243210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572590, 34.607040, 37.374168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895302, 34.743221, 37.567333>,  <41.088928, 34.824932, 37.683231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895302, 34.743221, 37.567333>,  <40.572590, 34.607040, 37.374168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895302, 34.743221, 37.567333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504932, -0.027177, 0.862731,
		0.306844, -0.939868, 0.149981,
		0.806778, 0.340454, 0.482909,
		41.137337, 34.845356, 37.712208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517849, 34.183796, 37.964119>,  <40.572590, 34.607040, 37.374168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517849, 34.183796, 37.964119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790550, 34.454155, 38.076103>,  <40.954170, 34.616371, 38.143291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790550, 34.454155, 38.076103>,  <40.517849, 34.183796, 37.964119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790550, 34.454155, 38.076103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295968, -0.095144, 0.950447,
		0.669039, -0.730830, 0.135179,
		0.681754, 0.675895, 0.279958,
		40.995075, 34.656925, 38.160091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630272, 34.072941, 38.663357>,  <40.517849, 34.183796, 37.964119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630272, 34.072941, 38.663357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779762, 34.443485, 38.644672>,  <40.869457, 34.665813, 38.633461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779762, 34.443485, 38.644672>,  <40.630272, 34.072941, 38.663357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779762, 34.443485, 38.644672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324011, 0.177574, 0.929238,
		0.869105, -0.332149, 0.366515,
		0.373730, 0.926361, -0.046711,
		40.891880, 34.721394, 38.630661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078522, 34.061714, 39.230091>,  <40.630272, 34.072941, 38.663357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078522, 34.061714, 39.230091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990192, 34.442829, 39.146732>,  <40.937195, 34.671497, 39.096718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990192, 34.442829, 39.146732>,  <41.078522, 34.061714, 39.230091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990192, 34.442829, 39.146732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309393, 0.134200, 0.941417,
		0.924939, 0.272367, 0.265151,
		-0.220828, 0.952789, -0.208395,
		40.923943, 34.728664, 39.084213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276970, 34.405842, 39.794788>,  <41.078522, 34.061714, 39.230091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276970, 34.405842, 39.794788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009552, 34.656788, 39.635063>,  <40.849102, 34.807358, 39.539227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009552, 34.656788, 39.635063>,  <41.276970, 34.405842, 39.794788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009552, 34.656788, 39.635063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408102, 0.139377, 0.902235,
		0.621687, 0.766150, 0.162849,
		-0.668549, 0.627367, -0.399316,
		40.808987, 34.844997, 39.515270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225636, 35.053200, 40.276134>,  <41.276970, 34.405842, 39.794788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225636, 35.053200, 40.276134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885509, 35.028103, 40.067123>,  <40.681435, 35.013046, 39.941719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885509, 35.028103, 40.067123>,  <41.225636, 35.053200, 40.276134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885509, 35.028103, 40.067123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514808, 0.305323, 0.801094,
		0.109278, 0.950180, -0.291919,
		-0.850313, -0.062740, -0.522525,
		40.630417, 35.009281, 39.910366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943501, 35.652809, 40.505894>,  <41.225636, 35.053200, 40.276134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943501, 35.652809, 40.505894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649563, 35.453449, 40.321892>,  <40.473202, 35.333836, 40.211491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649563, 35.453449, 40.321892>,  <40.943501, 35.652809, 40.505894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649563, 35.453449, 40.321892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667977, 0.414308, 0.618187,
		-0.117519, 0.761544, -0.637370,
		-0.734844, -0.498397, -0.460005,
		40.429111, 35.303928, 40.183891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409523, 36.151203, 40.481079>,  <40.943501, 35.652809, 40.505894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409523, 36.151203, 40.481079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245632, 35.788723, 40.439274>,  <40.147297, 35.571236, 40.414192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245632, 35.788723, 40.439274>,  <40.409523, 36.151203, 40.481079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245632, 35.788723, 40.439274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631897, 0.199323, 0.748983,
		-0.657897, 0.372921, -0.654294,
		-0.409728, -0.906201, -0.104514,
		40.122715, 35.516861, 40.407921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630550, 36.206932, 40.475338>,  <40.409523, 36.151203, 40.481079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630550, 36.206932, 40.475338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752743, 35.848038, 40.602867>,  <39.826057, 35.632702, 40.679382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752743, 35.848038, 40.602867>,  <39.630550, 36.206932, 40.475338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752743, 35.848038, 40.602867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647471, 0.049776, 0.760463,
		-0.698186, -0.438732, -0.565730,
		0.305480, -0.897238, 0.318819,
		39.844387, 35.578865, 40.698513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049412, 36.119873, 40.849636>,  <39.630550, 36.206932, 40.475338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049412, 36.119873, 40.849636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269703, 35.799366, 40.943157>,  <39.401878, 35.607059, 40.999271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269703, 35.799366, 40.943157>,  <39.049412, 36.119873, 40.849636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269703, 35.799366, 40.943157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593972, -0.179422, 0.784223,
		-0.586426, -0.570765, -0.574745,
		0.550729, -0.801271, 0.233801,
		39.434921, 35.558987, 41.013298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548401, 35.556419, 40.919235>,  <39.049412, 36.119873, 40.849636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548401, 35.556419, 40.919235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890644, 35.491535, 41.115856>,  <39.095989, 35.452602, 41.233829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890644, 35.491535, 41.115856>,  <38.548401, 35.556419, 40.919235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890644, 35.491535, 41.115856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508535, -0.086265, 0.856709,
		-0.096607, -0.982970, -0.156324,
		0.855605, -0.162260, 0.491541,
		39.147327, 35.442871, 41.263321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376667, 35.154404, 41.517223>,  <38.548401, 35.556419, 40.919235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376667, 35.154404, 41.517223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724560, 35.323009, 41.619896>,  <38.933296, 35.424171, 41.681499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724560, 35.323009, 41.619896>,  <38.376667, 35.154404, 41.517223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724560, 35.323009, 41.619896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378573, 0.236164, 0.894935,
		0.316615, -0.875527, 0.364976,
		0.869734, 0.421519, 0.256678,
		38.985481, 35.449463, 41.696899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606800, 34.857510, 42.159153>,  <38.376667, 35.154404, 41.517223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606800, 34.857510, 42.159153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799301, 35.206314, 42.123383>,  <38.914803, 35.415596, 42.101921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799301, 35.206314, 42.123383>,  <38.606800, 34.857510, 42.159153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799301, 35.206314, 42.123383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433704, 0.325522, 0.840200,
		0.761771, -0.365566, 0.534852,
		0.481255, 0.872007, -0.089426,
		38.943676, 35.467915, 42.096554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301239, 34.166340, 42.140270>,  <38.606800, 34.857510, 42.159153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301239, 34.166340, 42.140270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056484, 33.866520, 42.241280>,  <37.909634, 33.686626, 42.301884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056484, 33.866520, 42.241280>,  <38.301239, 34.166340, 42.140270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056484, 33.866520, 42.241280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415447, 0.032900, -0.909022,
		0.673053, -0.661125, -0.331531,
		-0.611885, -0.749554, 0.252519,
		37.872917, 33.641655, 42.317036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334862, 33.556293, 41.601444>,  <38.301239, 34.166340, 42.140270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334862, 33.556293, 41.601444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987453, 33.545200, 41.799393>,  <37.779007, 33.538544, 41.918163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987453, 33.545200, 41.799393>,  <38.334862, 33.556293, 41.601444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987453, 33.545200, 41.799393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475794, -0.233112, -0.848103,
		0.138881, -0.972054, 0.189268,
		-0.868523, -0.027733, 0.494873,
		37.726898, 33.536880, 41.947853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987713, 32.943710, 41.374798>,  <38.334862, 33.556293, 41.601444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987713, 32.943710, 41.374798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725689, 33.216698, 41.504498>,  <37.568474, 33.380489, 41.582317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725689, 33.216698, 41.504498>,  <37.987713, 32.943710, 41.374798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725689, 33.216698, 41.504498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510261, -0.083076, -0.855998,
		-0.557253, -0.726180, 0.402656,
		-0.655059, 0.682467, 0.324247,
		37.529171, 33.421436, 41.601772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285263, 32.615345, 41.307472>,  <37.987713, 32.943710, 41.374798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285263, 32.615345, 41.307472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252277, 33.013851, 41.297188>,  <37.232487, 33.252953, 41.291016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252277, 33.013851, 41.297188>,  <37.285263, 32.615345, 41.307472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252277, 33.013851, 41.297188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653613, -0.073541, -0.753248,
		-0.752324, -0.045305, 0.657234,
		-0.082460, 0.996263, -0.025715,
		37.227539, 33.312729, 41.289474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474461, 32.587578, 41.173740>,  <37.285263, 32.615345, 41.307472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474461, 32.587578, 41.173740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668568, 32.920937, 41.067936>,  <36.785030, 33.120953, 41.004456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668568, 32.920937, 41.067936>,  <36.474461, 32.587578, 41.173740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668568, 32.920937, 41.067936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459598, -0.014230, -0.888013,
		-0.743831, 0.552492, 0.376122,
		0.485268, 0.833396, -0.264509,
		36.814148, 33.170956, 40.988583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984760, 32.964409, 40.752464>,  <36.474461, 32.587578, 41.173740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984760, 32.964409, 40.752464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326912, 33.158867, 40.680927>,  <36.532204, 33.275543, 40.638004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326912, 33.158867, 40.680927>,  <35.984760, 32.964409, 40.752464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326912, 33.158867, 40.680927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276525, 0.136607, -0.951248,
		-0.438012, 0.863135, 0.251283,
		0.855383, 0.486144, -0.178843,
		36.583527, 33.304710, 40.627274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820492, 33.716206, 40.556347>,  <35.984760, 32.964409, 40.752464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820492, 33.716206, 40.556347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173244, 33.600925, 40.407093>,  <36.384895, 33.531757, 40.317539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173244, 33.600925, 40.407093>,  <35.820492, 33.716206, 40.556347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173244, 33.600925, 40.407093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369857, 0.067939, -0.926601,
		0.292396, 0.955157, -0.046678,
		0.881879, -0.288199, -0.373137,
		36.437809, 33.514465, 40.295151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873562, 34.104370, 39.913147>,  <35.820492, 33.716206, 40.556347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873562, 34.104370, 39.913147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149345, 33.817162, 39.875027>,  <36.314816, 33.644836, 39.852154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149345, 33.817162, 39.875027>,  <35.873562, 34.104370, 39.913147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149345, 33.817162, 39.875027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143471, -0.006416, -0.989634,
		0.709969, 0.695989, -0.107439,
		0.689463, -0.718024, -0.095299,
		36.356186, 33.601753, 39.846436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338604, 34.379265, 39.424175>,  <35.873562, 34.104370, 39.913147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338604, 34.379265, 39.424175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443680, 33.993313, 39.423382>,  <36.506725, 33.761742, 39.422905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443680, 33.993313, 39.423382>,  <36.338604, 34.379265, 39.424175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443680, 33.993313, 39.423382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144161, 0.041278, -0.988693,
		0.954052, 0.259429, 0.149941,
		0.262685, -0.964880, -0.001981,
		36.522484, 33.703850, 39.422787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025867, 34.301811, 39.042702>,  <36.338604, 34.379265, 39.424175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025867, 34.301811, 39.042702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815598, 33.966167, 38.986759>,  <36.689434, 33.764782, 38.953194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815598, 33.966167, 38.986759>,  <37.025867, 34.301811, 39.042702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815598, 33.966167, 38.986759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273436, -0.010993, -0.961827,
		0.805543, -0.543849, 0.235222,
		-0.525674, -0.839111, -0.139852,
		36.657894, 33.714436, 38.944805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512249, 34.005703, 38.559803>,  <37.025867, 34.301811, 39.042702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512249, 34.005703, 38.559803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172630, 33.794399, 38.556805>,  <36.968857, 33.667618, 38.555004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172630, 33.794399, 38.556805>,  <37.512249, 34.005703, 38.559803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172630, 33.794399, 38.556805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209602, -0.323791, -0.922619,
		0.484955, -0.784921, 0.385639,
		-0.849050, -0.528259, -0.007497,
		36.917915, 33.635921, 38.554554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663795, 33.341099, 38.331463>,  <37.512249, 34.005703, 38.559803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663795, 33.341099, 38.331463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280914, 33.416367, 38.243511>,  <37.051186, 33.461529, 38.190739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280914, 33.416367, 38.243511>,  <37.663795, 33.341099, 38.331463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280914, 33.416367, 38.243511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155820, -0.305147, -0.939471,
		-0.243873, -0.933530, 0.262769,
		-0.957208, 0.188166, -0.219880,
		36.993752, 33.472816, 38.177547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.562263, 33.727901, 46.155502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.163136, 33.736881, 46.130692>,  <37.923656, 33.742268, 46.115807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.163136, 33.736881, 46.130692>,  <38.562263, 33.727901, 46.155502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163136, 33.736881, 46.130692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042346, -0.502975, -0.863263,
		-0.050578, -0.864010, 0.500928,
		-0.997822, 0.022450, -0.062027,
		37.863789, 33.743618, 46.112083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313068, 33.091721, 45.816532>,  <38.562263, 33.727901, 46.155502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313068, 33.091721, 45.816532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.034706, 33.372746, 45.757030>,  <37.867691, 33.541359, 45.721329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.034706, 33.372746, 45.757030>,  <38.313068, 33.091721, 45.816532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034706, 33.372746, 45.757030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231086, -0.415193, -0.879894,
		-0.679939, -0.577947, 0.451287,
		-0.695904, 0.702561, -0.148751,
		37.825935, 33.583515, 45.712406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731213, 32.673210, 45.434772>,  <38.313068, 33.091721, 45.816532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731213, 32.673210, 45.434772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.681992, 33.065804, 45.376053>,  <37.652458, 33.301361, 45.340820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.681992, 33.065804, 45.376053>,  <37.731213, 32.673210, 45.434772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681992, 33.065804, 45.376053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104584, -0.159920, -0.981574,
		-0.986875, -0.105428, 0.122325,
		-0.123048, 0.981484, -0.146795,
		37.645077, 33.360249, 45.332016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195431, 32.746223, 44.983837>,  <37.731213, 32.673210, 45.434772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195431, 32.746223, 44.983837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.392803, 33.093502, 44.962807>,  <37.511227, 33.301868, 44.950188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.392803, 33.093502, 44.962807>,  <37.195431, 32.746223, 44.983837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392803, 33.093502, 44.962807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138122, 0.018534, -0.990242,
		-0.858750, 0.495874, 0.129062,
		0.493428, 0.868197, -0.052575,
		37.540833, 33.353962, 44.947033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787529, 33.257858, 44.534142>,  <37.195431, 32.746223, 44.983837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787529, 33.257858, 44.534142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.160782, 33.401581, 44.528934>,  <37.384731, 33.487816, 44.525810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.160782, 33.401581, 44.528934>,  <36.787529, 33.257858, 44.534142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160782, 33.401581, 44.528934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029205, 0.039664, -0.998786,
		-0.358354, 0.932376, 0.047505,
		0.933129, 0.359306, -0.013016,
		37.440720, 33.509373, 44.525028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827164, 33.703842, 43.996090>,  <36.787529, 33.257858, 44.534142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827164, 33.703842, 43.996090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.217133, 33.633350, 44.050446>,  <37.451115, 33.591057, 44.083057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.217133, 33.633350, 44.050446>,  <36.827164, 33.703842, 43.996090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217133, 33.633350, 44.050446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138070, 0.000120, -0.990422,
		0.174522, 0.984350, 0.024448,
		0.974925, -0.176226, 0.135888,
		37.509609, 33.580482, 44.091213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099541, 34.203629, 43.495182>,  <36.827164, 33.703842, 43.996090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099541, 34.203629, 43.495182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.360542, 33.909634, 43.568977>,  <37.517143, 33.733238, 43.613255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.360542, 33.909634, 43.568977>,  <37.099541, 34.203629, 43.495182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360542, 33.909634, 43.568977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402289, 0.129655, -0.906285,
		0.642185, 0.665573, 0.380277,
		0.652504, -0.734984, 0.184490,
		37.556293, 33.689137, 43.624325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758614, 34.427654, 43.128693>,  <37.099541, 34.203629, 43.495182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758614, 34.427654, 43.128693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.780628, 34.031326, 43.178082>,  <37.793839, 33.793530, 43.207714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.780628, 34.031326, 43.178082>,  <37.758614, 34.427654, 43.128693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780628, 34.031326, 43.178082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366906, -0.094941, -0.925400,
		0.928629, 0.096233, 0.358313,
		0.055036, -0.990821, 0.123474,
		37.797138, 33.734081, 43.215122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414539, 34.255375, 42.887512>,  <37.758614, 34.427654, 43.128693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414539, 34.255375, 42.887512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.183289, 33.929150, 42.877529>,  <38.044537, 33.733414, 42.871540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.183289, 33.929150, 42.877529>,  <38.414539, 34.255375, 42.887512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183289, 33.929150, 42.877529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183216, -0.099948, -0.977979,
		0.795108, -0.569972, 0.207208,
		-0.578131, -0.815562, -0.024958,
		38.009850, 33.684483, 42.870041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691696, 35.028214, 42.927124>,  <38.414539, 34.255375, 42.887512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691696, 35.028214, 42.927124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.853222, 35.359692, 42.772102>,  <38.950138, 35.558578, 42.679089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.853222, 35.359692, 42.772102>,  <38.691696, 35.028214, 42.927124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853222, 35.359692, 42.772102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329574, 0.526963, 0.783385,
		0.853415, -0.188612, 0.485910,
		0.403812, 0.828695, -0.387556,
		38.974365, 35.608299, 42.655834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136024, 35.276646, 43.327637>,  <38.691696, 35.028214, 42.927124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136024, 35.276646, 43.327637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.991943, 35.594604, 43.132336>,  <38.905495, 35.785381, 43.015156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.991943, 35.594604, 43.132336>,  <39.136024, 35.276646, 43.327637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991943, 35.594604, 43.132336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171994, 0.457821, 0.872248,
		0.916880, 0.398166, -0.028193,
		-0.360207, 0.794898, -0.488250,
		38.883881, 35.833073, 42.985859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524113, 35.868427, 43.602264>,  <39.136024, 35.276646, 43.327637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524113, 35.868427, 43.602264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.174553, 35.984936, 43.446594>,  <38.964817, 36.054840, 43.353191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.174553, 35.984936, 43.446594>,  <39.524113, 35.868427, 43.602264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174553, 35.984936, 43.446594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262555, 0.390946, 0.882171,
		0.409101, 0.873109, -0.265172,
		-0.873900, 0.291275, -0.389176,
		38.912384, 36.072319, 43.329842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502712, 36.515324, 43.958244>,  <39.524113, 35.868427, 43.602264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502712, 36.515324, 43.958244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.146183, 36.440517, 43.793045>,  <38.932266, 36.395634, 43.693924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.146183, 36.440517, 43.793045>,  <39.502712, 36.515324, 43.958244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146183, 36.440517, 43.793045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433792, 0.616593, 0.656991,
		0.131787, 0.764748, -0.630709,
		-0.891323, -0.187013, -0.413001,
		38.878788, 36.384415, 43.669144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216839, 37.160301, 43.848488>,  <39.502712, 36.515324, 43.958244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216839, 37.160301, 43.848488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.886391, 36.934906, 43.847637>,  <38.688122, 36.799667, 43.847126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.886391, 36.934906, 43.847637>,  <39.216839, 37.160301, 43.848488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886391, 36.934906, 43.847637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383699, 0.559770, 0.734460,
		-0.412671, 0.607568, -0.678648,
		-0.826122, -0.563487, -0.002123,
		38.638554, 36.765862, 43.847000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767536, 37.678543, 43.839710>,  <39.216839, 37.160301, 43.848488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767536, 37.678543, 43.839710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.604908, 37.330025, 43.949657>,  <38.507332, 37.120914, 44.015625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.604908, 37.330025, 43.949657>,  <38.767536, 37.678543, 43.839710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604908, 37.330025, 43.949657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470777, 0.457632, 0.754282,
		-0.782987, 0.177269, -0.596244,
		-0.406571, -0.871292, 0.274866,
		38.482937, 37.068638, 44.032116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050449, 37.792583, 44.065456>,  <38.767536, 37.678543, 43.839710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050449, 37.792583, 44.065456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.175266, 37.455208, 44.240383>,  <38.250156, 37.252785, 44.345341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.175266, 37.455208, 44.240383>,  <38.050449, 37.792583, 44.065456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175266, 37.455208, 44.240383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304417, 0.347269, 0.886980,
		-0.899977, -0.409903, -0.148393,
		0.312044, -0.843435, 0.437316,
		38.268879, 37.202179, 44.371578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600796, 37.839024, 44.612717>,  <38.050449, 37.792583, 44.065456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600796, 37.839024, 44.612717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.817860, 37.518894, 44.714695>,  <37.948097, 37.326817, 44.775883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.817860, 37.518894, 44.714695>,  <37.600796, 37.839024, 44.612717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817860, 37.518894, 44.714695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169940, 0.192637, 0.966443,
		-0.822580, -0.567778, -0.031470,
		0.542663, -0.800324, 0.254947,
		37.980659, 37.278797, 44.791180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222996, 37.407997, 45.235352>,  <37.600796, 37.839024, 44.612717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222996, 37.407997, 45.235352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.604118, 37.287384, 45.249420>,  <37.832790, 37.215015, 45.257862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.604118, 37.287384, 45.249420>,  <37.222996, 37.407997, 45.235352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604118, 37.287384, 45.249420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007797, 0.140132, 0.990102,
		-0.303479, -0.943101, 0.135870,
		0.952806, -0.301535, 0.035174,
		37.889961, 37.196922, 45.259972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285076, 36.855728, 45.727219>,  <37.222996, 37.407997, 45.235352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285076, 36.855728, 45.727219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.664650, 36.979580, 45.703033>,  <37.892395, 37.053890, 45.688522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.664650, 36.979580, 45.703033>,  <37.285076, 36.855728, 45.727219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664650, 36.979580, 45.703033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032711, 0.287197, 0.957313,
		0.313786, -0.906445, 0.282658,
		0.948930, 0.309637, -0.060467,
		37.949329, 37.072468, 45.684895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662086, 36.623528, 46.400940>,  <37.285076, 36.855728, 45.727219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662086, 36.623528, 46.400940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.895580, 36.888165, 46.212666>,  <38.035679, 37.046947, 46.099701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.895580, 36.888165, 46.212666>,  <37.662086, 36.623528, 46.400940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895580, 36.888165, 46.212666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246426, 0.407997, 0.879098,
		0.773643, -0.629151, 0.075129,
		0.583738, 0.661595, -0.470683,
		38.070702, 37.086643, 46.071461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296295, 36.644321, 46.770638>,  <37.662086, 36.623528, 46.400940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296295, 36.644321, 46.770638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.274101, 36.999496, 46.587994>,  <38.260784, 37.212601, 46.478409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.274101, 36.999496, 46.587994>,  <38.296295, 36.644321, 46.770638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274101, 36.999496, 46.587994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199279, 0.457959, 0.866349,
		0.978371, -0.042925, -0.202356,
		-0.055483, 0.887936, -0.456608,
		38.257458, 37.265877, 46.451012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923031, 36.968483, 46.903305>,  <38.296295, 36.644321, 46.770638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923031, 36.968483, 46.903305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.653263, 37.247738, 46.807167>,  <38.491402, 37.415291, 46.749485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.653263, 37.247738, 46.807167>,  <38.923031, 36.968483, 46.903305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653263, 37.247738, 46.807167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269310, 0.535685, 0.800321,
		0.687484, 0.475022, -0.549290,
		-0.674417, 0.698137, -0.240346,
		38.450939, 37.457180, 46.735062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315025, 37.645241, 46.954384>,  <38.923031, 36.968483, 46.903305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315025, 37.645241, 46.954384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.922592, 37.722660, 46.953190>,  <38.687130, 37.769112, 46.952473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.922592, 37.722660, 46.953190>,  <39.315025, 37.645241, 46.954384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922592, 37.722660, 46.953190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117659, 0.608514, 0.784772,
		0.153706, 0.769578, -0.619778,
		-0.981087, 0.193546, -0.002985,
		38.628265, 37.780724, 46.952293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.643185, 37.742611, 46.196026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.021507, 37.621643, 46.243328>,  <34.248501, 37.549061, 46.271709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.021507, 37.621643, 46.243328>,  <33.643185, 37.742611, 46.196026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021507, 37.621643, 46.243328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017123, -0.317214, -0.948200,
		0.324267, 0.898842, -0.294846,
		0.945811, -0.302421, 0.118252,
		34.305252, 37.530918, 46.278805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130604, 38.010742, 45.581509>,  <33.643185, 37.742611, 46.196026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130604, 38.010742, 45.581509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.323128, 37.703701, 45.750801>,  <34.438641, 37.519478, 45.852375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.323128, 37.703701, 45.750801>,  <34.130604, 38.010742, 45.581509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323128, 37.703701, 45.750801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058920, -0.453413, -0.889351,
		0.874568, 0.452990, -0.173005,
		0.481310, -0.767604, 0.423230,
		34.467522, 37.473419, 45.877769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738190, 38.018562, 45.156788>,  <34.130604, 38.010742, 45.581509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738190, 38.018562, 45.156788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677711, 37.677391, 45.356651>,  <34.641426, 37.472687, 45.476570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677711, 37.677391, 45.356651>,  <34.738190, 38.018562, 45.156788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677711, 37.677391, 45.356651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139476, -0.518816, -0.843431,
		0.978615, -0.057829, 0.197403,
		-0.151191, -0.852928, 0.499655,
		34.632355, 37.421513, 45.506546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274372, 37.563854, 44.913147>,  <34.738190, 38.018562, 45.156788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274372, 37.563854, 44.913147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.978676, 37.338844, 45.061253>,  <34.801258, 37.203838, 45.150116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.978676, 37.338844, 45.061253>,  <35.274372, 37.563854, 44.913147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978676, 37.338844, 45.061253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010219, -0.540373, -0.841363,
		0.673367, -0.625751, 0.393716,
		-0.739238, -0.562524, 0.370264,
		34.756905, 37.170086, 45.172333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487808, 36.920513, 44.799259>,  <35.274372, 37.563854, 44.913147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487808, 36.920513, 44.799259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.096161, 36.863468, 44.857216>,  <34.861172, 36.829243, 44.891991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.096161, 36.863468, 44.857216>,  <35.487808, 36.920513, 44.799259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096161, 36.863468, 44.857216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048923, -0.526493, -0.848771,
		0.197330, -0.838134, 0.508520,
		-0.979116, -0.142609, 0.144897,
		34.802425, 36.820686, 44.900684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419041, 36.256958, 44.744591>,  <35.487808, 36.920513, 44.799259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419041, 36.256958, 44.744591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.070148, 36.436012, 44.665764>,  <34.860813, 36.543446, 44.618469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.070148, 36.436012, 44.665764>,  <35.419041, 36.256958, 44.744591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070148, 36.436012, 44.665764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070649, -0.514008, -0.854871,
		-0.483965, -0.731722, 0.479959,
		-0.872231, 0.447636, -0.197066,
		34.808479, 36.570305, 44.606644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017559, 35.663654, 44.602840>,  <35.419041, 36.256958, 44.744591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017559, 35.663654, 44.602840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.828728, 35.991268, 44.472408>,  <34.715427, 36.187836, 44.394150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.828728, 35.991268, 44.472408>,  <35.017559, 35.663654, 44.602840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828728, 35.991268, 44.472408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114414, -0.423691, -0.898552,
		-0.874100, -0.386879, 0.293724,
		-0.472079, 0.819031, -0.326084,
		34.687103, 36.236977, 44.374584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504311, 35.382633, 44.227303>,  <35.017559, 35.663654, 44.602840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504311, 35.382633, 44.227303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.541294, 35.753860, 44.083004>,  <34.563484, 35.976597, 43.996426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.541294, 35.753860, 44.083004>,  <34.504311, 35.382633, 44.227303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541294, 35.753860, 44.083004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140055, -0.370814, -0.918086,
		-0.985817, 0.034362, -0.164266,
		0.092460, 0.928071, -0.360742,
		34.569031, 36.032284, 43.974781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080013, 35.407413, 43.664406>,  <34.504311, 35.382633, 44.227303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080013, 35.407413, 43.664406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.281128, 35.747654, 43.602844>,  <34.401798, 35.951797, 43.565907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.281128, 35.747654, 43.602844>,  <34.080013, 35.407413, 43.664406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281128, 35.747654, 43.602844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056310, -0.209896, -0.976101,
		-0.862574, 0.482106, -0.153431,
		0.502788, 0.850599, -0.153903,
		34.431965, 36.002834, 43.556675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754570, 35.717384, 43.096661>,  <34.080013, 35.407413, 43.664406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754570, 35.717384, 43.096661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116169, 35.885994, 43.125248>,  <34.333126, 35.987160, 43.142399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116169, 35.885994, 43.125248>,  <33.754570, 35.717384, 43.096661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116169, 35.885994, 43.125248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105264, -0.057423, -0.992785,
		-0.414381, 0.904996, -0.096282,
		0.903995, 0.421526, 0.071469,
		34.387367, 36.012451, 43.146690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788818, 36.239132, 42.598919>,  <33.754570, 35.717384, 43.096661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788818, 36.239132, 42.598919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.165489, 36.127525, 42.674175>,  <34.391491, 36.060562, 42.719330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.165489, 36.127525, 42.674175>,  <33.788818, 36.239132, 42.598919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165489, 36.127525, 42.674175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184400, -0.039859, -0.982043,
		0.281506, 0.959459, 0.013917,
		0.941675, -0.279017, 0.188145,
		34.447990, 36.043819, 42.730618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238976, 36.746227, 42.220467>,  <33.788818, 36.239132, 42.598919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238976, 36.746227, 42.220467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.426682, 36.401604, 42.297935>,  <34.539303, 36.194828, 42.344418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.426682, 36.401604, 42.297935>,  <34.238976, 36.746227, 42.220467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426682, 36.401604, 42.297935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157201, -0.134315, -0.978390,
		0.868954, 0.489567, 0.072410,
		0.469262, -0.861559, 0.193674,
		34.567459, 36.143135, 42.356037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615284, 36.731342, 41.698204>,  <34.238976, 36.746227, 42.220467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615284, 36.731342, 41.698204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669308, 36.354141, 41.819866>,  <34.701721, 36.127823, 41.892864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669308, 36.354141, 41.819866>,  <34.615284, 36.731342, 41.698204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669308, 36.354141, 41.819866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000804, -0.307070, -0.951687,
		0.990838, 0.128285, -0.042230,
		0.135055, -0.943001, 0.304153,
		34.709824, 36.071239, 41.911114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035271, 36.529152, 41.242821>,  <34.615284, 36.731342, 41.698204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035271, 36.529152, 41.242821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.885387, 36.190308, 41.393547>,  <34.795456, 35.987000, 41.483982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.885387, 36.190308, 41.393547>,  <35.035271, 36.529152, 41.242821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885387, 36.190308, 41.393547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228673, -0.309430, -0.923018,
		0.898501, -0.432028, -0.077767,
		-0.374707, -0.847116, 0.376816,
		34.772976, 35.936172, 41.506592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734680, 36.729664, 41.350384>,  <35.035271, 36.529152, 41.242821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734680, 36.729664, 41.350384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.886314, 37.075230, 41.217751>,  <35.977295, 37.282570, 41.138172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.886314, 37.075230, 41.217751>,  <35.734680, 36.729664, 41.350384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886314, 37.075230, 41.217751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084914, 0.389293, 0.917191,
		0.921456, -0.319540, 0.220935,
		0.379088, 0.863912, -0.331584,
		36.000042, 37.334404, 41.118275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243874, 36.957958, 41.857067>,  <35.734680, 36.729664, 41.350384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243874, 36.957958, 41.857067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.129120, 37.273106, 41.639091>,  <36.060268, 37.462196, 41.508308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.129120, 37.273106, 41.639091>,  <36.243874, 36.957958, 41.857067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129120, 37.273106, 41.639091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157079, 0.522459, 0.838071,
		0.944999, 0.326029, -0.026129,
		-0.286887, 0.787871, -0.544936,
		36.043053, 37.509468, 41.475613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497192, 37.454285, 42.221424>,  <36.243874, 36.957958, 41.857067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497192, 37.454285, 42.221424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.252258, 37.646149, 41.970039>,  <36.105297, 37.761269, 41.819210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.252258, 37.646149, 41.970039>,  <36.497192, 37.454285, 42.221424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252258, 37.646149, 41.970039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181639, 0.688303, 0.702315,
		0.769448, 0.544207, -0.334348,
		-0.612337, 0.479664, -0.628463,
		36.068558, 37.790047, 41.781502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769085, 38.141777, 42.190350>,  <36.497192, 37.454285, 42.221424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769085, 38.141777, 42.190350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.375988, 38.117702, 42.120377>,  <36.140129, 38.103256, 42.078392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.375988, 38.117702, 42.120377>,  <36.769085, 38.141777, 42.190350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375988, 38.117702, 42.120377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145577, 0.835114, 0.530465,
		0.114163, 0.546775, -0.829460,
		-0.982738, -0.060191, -0.174937,
		36.081165, 38.099644, 42.067894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483444, 38.882412, 42.020672>,  <36.769085, 38.141777, 42.190350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483444, 38.882412, 42.020672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.184059, 38.655731, 42.158459>,  <36.004429, 38.519722, 42.241131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.184059, 38.655731, 42.158459>,  <36.483444, 38.882412, 42.020672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184059, 38.655731, 42.158459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248570, 0.721272, 0.646513,
		-0.614832, 0.398267, -0.680709,
		-0.748462, -0.566701, 0.344464,
		35.959522, 38.485722, 42.261799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100964, 39.497845, 42.399685>,  <36.483444, 38.882412, 42.020672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100964, 39.497845, 42.399685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.904057, 39.163231, 42.495918>,  <35.785912, 38.962463, 42.553658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.904057, 39.163231, 42.495918>,  <36.100964, 39.497845, 42.399685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904057, 39.163231, 42.495918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428780, 0.473572, 0.769336,
		-0.757510, 0.275563, -0.591814,
		-0.492267, -0.836537, 0.240579,
		35.756378, 38.912270, 42.568092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391121, 39.699394, 42.542519>,  <36.100964, 39.497845, 42.399685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391121, 39.699394, 42.542519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465611, 39.362923, 42.745590>,  <35.510303, 39.161037, 42.867432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465611, 39.362923, 42.745590>,  <35.391121, 39.699394, 42.542519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465611, 39.362923, 42.745590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153643, 0.485426, 0.860672,
		-0.970420, -0.238277, -0.038845,
		0.186222, -0.841181, 0.507677,
		35.521477, 39.110569, 42.897892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722733, 39.513672, 42.832146>,  <35.391121, 39.699394, 42.542519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722733, 39.513672, 42.832146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.047741, 39.389648, 43.029598>,  <35.242744, 39.315235, 43.148071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.047741, 39.389648, 43.029598>,  <34.722733, 39.513672, 42.832146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047741, 39.389648, 43.029598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279924, 0.535250, 0.796963,
		-0.511323, -0.785728, 0.348109,
		0.812521, -0.310061, 0.493630,
		35.291496, 39.296631, 43.177689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544338, 39.707184, 43.450813>,  <34.722733, 39.513672, 42.832146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544338, 39.707184, 43.450813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.919731, 39.595467, 43.532047>,  <35.144966, 39.528439, 43.580788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.919731, 39.595467, 43.532047>,  <34.544338, 39.707184, 43.450813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919731, 39.595467, 43.532047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072240, 0.416295, 0.906355,
		-0.337676, -0.865272, 0.370511,
		0.938486, -0.279289, 0.203080,
		35.201279, 39.511681, 43.592972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512703, 39.393414, 44.069248>,  <34.544338, 39.707184, 43.450813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512703, 39.393414, 44.069248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.897125, 39.498558, 44.035110>,  <35.127777, 39.561646, 44.014629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.897125, 39.498558, 44.035110>,  <34.512703, 39.393414, 44.069248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897125, 39.498558, 44.035110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019673, 0.242943, 0.969841,
		0.275665, -0.933747, 0.228309,
		0.961053, 0.262860, -0.085341,
		35.185440, 39.577415, 44.009510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885052, 39.009418, 44.615978>,  <34.512703, 39.393414, 44.069248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885052, 39.009418, 44.615978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.085556, 39.335167, 44.498989>,  <35.205860, 39.530617, 44.428795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.085556, 39.335167, 44.498989>,  <34.885052, 39.009418, 44.615978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085556, 39.335167, 44.498989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200758, 0.219332, 0.954772,
		0.841685, -0.537308, -0.053548,
		0.501261, 0.814368, -0.292477,
		35.235935, 39.579475, 44.411247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535992, 38.951706, 45.023449>,  <34.885052, 39.009418, 44.615978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535992, 38.951706, 45.023449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.498493, 39.328915, 44.895744>,  <35.475994, 39.555241, 44.819122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.498493, 39.328915, 44.895744>,  <35.535992, 38.951706, 45.023449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498493, 39.328915, 44.895744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064012, 0.325721, 0.943297,
		0.993536, 0.067996, -0.090901,
		-0.093749, 0.943018, -0.319263,
		35.470367, 39.611820, 44.799965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112251, 39.366604, 45.278286>,  <35.535992, 38.951706, 45.023449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112251, 39.366604, 45.278286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.821892, 39.630440, 45.200294>,  <35.647675, 39.788742, 45.153500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.821892, 39.630440, 45.200294>,  <36.112251, 39.366604, 45.278286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821892, 39.630440, 45.200294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038279, 0.321777, 0.946041,
		0.686735, 0.679267, -0.258826,
		-0.725899, 0.659587, -0.194974,
		35.604122, 39.828316, 45.141804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392155, 39.987659, 45.585629>,  <36.112251, 39.366604, 45.278286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392155, 39.987659, 45.585629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.998837, 40.045547, 45.541470>,  <35.762844, 40.080280, 45.514973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.998837, 40.045547, 45.541470>,  <36.392155, 39.987659, 45.585629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998837, 40.045547, 45.541470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051044, 0.362949, 0.930410,
		0.174721, 0.920501, -0.349499,
		-0.983294, 0.144723, -0.110401,
		35.703850, 40.088963, 45.508350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666119, 40.824852, 45.424416>,  <36.392155, 39.987659, 45.585629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666119, 40.824852, 45.424416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.053631, 40.863544, 45.515717>,  <37.286140, 40.886761, 45.570496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.053631, 40.863544, 45.515717>,  <36.666119, 40.824852, 45.424416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053631, 40.863544, 45.515717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214457, 0.134851, -0.967380,
		-0.124354, 0.986133, 0.109897,
		0.968785, 0.096729, 0.228252,
		37.344265, 40.892563, 45.584190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842907, 41.461792, 45.139786>,  <36.666119, 40.824852, 45.424416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842907, 41.461792, 45.139786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.179543, 41.248005, 45.170940>,  <37.381523, 41.119732, 45.189632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.179543, 41.248005, 45.170940>,  <36.842907, 41.461792, 45.139786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179543, 41.248005, 45.170940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311074, 0.361762, -0.878841,
		0.441540, 0.763852, 0.470715,
		0.841591, -0.534470, 0.077882,
		37.432018, 41.087666, 45.194305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323780, 41.857147, 44.728394>,  <36.842907, 41.461792, 45.139786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323780, 41.857147, 44.728394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.518238, 41.510895, 44.776295>,  <37.634914, 41.303143, 44.805035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.518238, 41.510895, 44.776295>,  <37.323780, 41.857147, 44.728394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518238, 41.510895, 44.776295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280329, 0.024689, -0.959586,
		0.827695, 0.500067, 0.254665,
		0.486145, -0.865635, 0.119749,
		37.664082, 41.251205, 44.812218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886044, 41.948452, 44.387531>,  <37.323780, 41.857147, 44.728394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886044, 41.948452, 44.387531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.875320, 41.549061, 44.406803>,  <37.868885, 41.309425, 44.418365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.875320, 41.549061, 44.406803>,  <37.886044, 41.948452, 44.387531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875320, 41.549061, 44.406803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369006, -0.054682, -0.927817,
		0.929040, -0.007094, 0.369911,
		-0.026810, -0.998479, 0.048184,
		37.867279, 41.249516, 44.421257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516392, 41.834835, 44.115593>,  <37.886044, 41.948452, 44.387531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516392, 41.834835, 44.115593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.295052, 41.503376, 44.081799>,  <38.162247, 41.304501, 44.061523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.295052, 41.503376, 44.081799>,  <38.516392, 41.834835, 44.115593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295052, 41.503376, 44.081799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304319, -0.106707, -0.946575,
		0.775365, -0.549500, 0.311221,
		-0.553352, -0.828652, -0.084486,
		38.129047, 41.254780, 44.056454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930199, 41.302746, 43.759945>,  <38.516392, 41.834835, 44.115593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930199, 41.302746, 43.759945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.557419, 41.171535, 43.698151>,  <38.333752, 41.092808, 43.661076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.557419, 41.171535, 43.698151>,  <38.930199, 41.302746, 43.759945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557419, 41.171535, 43.698151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212029, -0.147405, -0.966083,
		0.294129, -0.933097, 0.206925,
		-0.931950, -0.328027, -0.154487,
		38.277832, 41.073128, 43.651806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994122, 40.772045, 43.253555>,  <38.930199, 41.302746, 43.759945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994122, 40.772045, 43.253555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.613575, 40.892773, 43.228867>,  <38.385246, 40.965210, 43.214054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.613575, 40.892773, 43.228867>,  <38.994122, 40.772045, 43.253555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613575, 40.892773, 43.228867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014025, -0.242568, -0.970033,
		-0.307746, -0.921990, 0.235003,
		-0.951365, 0.301820, -0.061719,
		38.328167, 40.983318, 43.210350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622128, 40.258575, 43.060833>,  <38.994122, 40.772045, 43.253555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622128, 40.258575, 43.060833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.423264, 40.585991, 42.945717>,  <38.303947, 40.782440, 42.876648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.423264, 40.585991, 42.945717>,  <38.622128, 40.258575, 43.060833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423264, 40.585991, 42.945717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014977, -0.339728, -0.940405,
		-0.867531, -0.463219, 0.181158,
		-0.497158, 0.818543, -0.287787,
		38.274117, 40.831554, 42.859383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042164, 40.000237, 42.706863>,  <38.622128, 40.258575, 43.060833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042164, 40.000237, 42.706863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.092712, 40.380913, 42.594921>,  <38.123043, 40.609318, 42.527756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.092712, 40.380913, 42.594921>,  <38.042164, 40.000237, 42.706863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092712, 40.380913, 42.594921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011005, -0.283442, -0.958926,
		-0.991921, 0.118105, -0.046293,
		0.126375, 0.951689, -0.279853,
		38.130627, 40.666420, 42.510963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656693, 40.068127, 42.192463>,  <38.042164, 40.000237, 42.706863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656693, 40.068127, 42.192463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.898998, 40.382095, 42.140400>,  <38.044384, 40.570477, 42.109161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.898998, 40.382095, 42.140400>,  <37.656693, 40.068127, 42.192463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898998, 40.382095, 42.140400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036313, -0.190687, -0.980979,
		-0.794812, 0.589520, -0.144015,
		0.605768, 0.784924, -0.130153,
		38.080730, 40.617573, 42.101353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330650, 40.399742, 41.612354>,  <37.656693, 40.068127, 42.192463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330650, 40.399742, 41.612354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.715515, 40.506397, 41.634808>,  <37.946434, 40.570389, 41.648277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.715515, 40.506397, 41.634808>,  <37.330650, 40.399742, 41.612354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715515, 40.506397, 41.634808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125018, -0.248952, -0.960413,
		-0.242110, 0.931089, -0.272866,
		0.962161, 0.266639, 0.056129,
		38.004162, 40.586388, 41.651646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512432, 40.259453, 40.955025>,  <37.330650, 40.399742, 41.612354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512432, 40.259453, 40.955025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.863991, 40.387142, 41.096809>,  <38.074924, 40.463757, 41.181881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.863991, 40.387142, 41.096809>,  <37.512432, 40.259453, 40.955025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863991, 40.387142, 41.096809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456275, -0.345835, -0.819885,
		-0.139138, 0.882325, -0.449604,
		0.878894, 0.319220, 0.354464,
		38.127659, 40.482906, 41.203148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851036, 40.762886, 40.458374>,  <37.512432, 40.259453, 40.955025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851036, 40.762886, 40.458374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.136105, 40.604511, 40.690010>,  <38.307144, 40.509487, 40.828991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.136105, 40.604511, 40.690010>,  <37.851036, 40.762886, 40.458374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136105, 40.604511, 40.690010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536909, -0.223424, -0.813518,
		0.451480, 0.890685, 0.053353,
		0.712667, -0.395933, 0.579088,
		38.349903, 40.485733, 40.863735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466816, 40.873535, 40.105724>,  <37.851036, 40.762886, 40.458374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466816, 40.873535, 40.105724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.560238, 40.583622, 40.364998>,  <38.616291, 40.409676, 40.520561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.560238, 40.583622, 40.364998>,  <38.466816, 40.873535, 40.105724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560238, 40.583622, 40.364998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500885, -0.481686, -0.719091,
		0.833405, 0.492616, 0.250530,
		0.233559, -0.724781, 0.648184,
		38.630306, 40.366188, 40.559452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.169979, 38.857990, 40.379486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.445351, 38.942223, 40.101860>,  <27.610573, 38.992764, 39.935284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.445351, 38.942223, 40.101860>,  <27.169979, 38.857990, 40.379486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.445351, 38.942223, 40.101860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568542, -0.437508, -0.696668,
		-0.450362, 0.874210, -0.181469,
		0.688428, 0.210580, -0.694062,
		27.651878, 39.005398, 39.893642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849796, 39.214333, 39.784199>,  <27.169979, 38.857990, 40.379486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849796, 39.214333, 39.784199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.189157, 39.052731, 39.647385>,  <27.392775, 38.955769, 39.565296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.189157, 39.052731, 39.647385>,  <26.849796, 39.214333, 39.784199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189157, 39.052731, 39.647385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496903, -0.385084, -0.777688,
		0.182481, 0.829751, -0.527460,
		0.848403, -0.404010, -0.342035,
		27.443678, 38.931526, 39.544773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830479, 39.413696, 39.036140>,  <26.849796, 39.214333, 39.784199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830479, 39.413696, 39.036140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.078985, 39.105675, 39.094162>,  <27.228088, 38.920860, 39.128975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.078985, 39.105675, 39.094162>,  <26.830479, 39.413696, 39.036140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078985, 39.105675, 39.094162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254272, -0.373208, -0.892223,
		0.741199, 0.517424, -0.427665,
		0.621265, -0.770057, 0.145055,
		27.265366, 38.874657, 39.137680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054371, 39.320499, 38.430210>,  <26.830479, 39.413696, 39.036140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054371, 39.320499, 38.430210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.127827, 38.970154, 38.608707>,  <27.171900, 38.759945, 38.715805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.127827, 38.970154, 38.608707>,  <27.054371, 39.320499, 38.430210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127827, 38.970154, 38.608707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150620, -0.473677, -0.867723,
		0.971386, 0.092136, -0.218909,
		0.183641, -0.875866, 0.446246,
		27.182919, 38.707394, 38.742580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524715, 39.049564, 38.028866>,  <27.054371, 39.320499, 38.430210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524715, 39.049564, 38.028866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.321526, 38.771591, 38.232445>,  <27.199612, 38.604805, 38.354591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.321526, 38.771591, 38.232445>,  <27.524715, 39.049564, 38.028866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321526, 38.771591, 38.232445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263276, -0.437316, -0.859907,
		0.820150, -0.570805, 0.039186,
		-0.507976, -0.694935, 0.508944,
		27.169132, 38.563110, 38.385128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757275, 38.480202, 37.802479>,  <27.524715, 39.049564, 38.028866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757275, 38.480202, 37.802479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.405821, 38.370060, 37.958523>,  <27.194948, 38.303974, 38.052151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.405821, 38.370060, 37.958523>,  <27.757275, 38.480202, 37.802479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405821, 38.370060, 37.958523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224581, -0.482679, -0.846513,
		0.421389, -0.831385, 0.362258,
		-0.878632, -0.275355, 0.390109,
		27.142231, 38.287453, 38.075554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798946, 37.798962, 37.628166>,  <27.757275, 38.480202, 37.802479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798946, 37.798962, 37.628166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.420872, 37.855145, 37.746078>,  <27.194027, 37.888855, 37.816826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.420872, 37.855145, 37.746078>,  <27.798946, 37.798962, 37.628166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420872, 37.855145, 37.746078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306055, -0.695714, -0.649856,
		0.113804, -0.704454, 0.700567,
		-0.945188, 0.140456, 0.294776,
		27.137316, 37.897282, 37.834511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603542, 37.192028, 37.732937>,  <27.798946, 37.798962, 37.628166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603542, 37.192028, 37.732937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.260441, 37.383865, 37.658913>,  <27.054581, 37.498970, 37.614498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.260441, 37.383865, 37.658913>,  <27.603542, 37.192028, 37.732937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260441, 37.383865, 37.658913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334326, -0.793908, -0.507874,
		-0.390497, -0.373759, 0.841318,
		-0.857752, 0.479598, -0.185061,
		27.003115, 37.527744, 37.603394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098715, 36.635986, 37.810577>,  <27.603542, 37.192028, 37.732937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098715, 36.635986, 37.810577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.930681, 36.915020, 37.578403>,  <26.829861, 37.082439, 37.439098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.930681, 36.915020, 37.578403>,  <27.098715, 36.635986, 37.810577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930681, 36.915020, 37.578403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413974, -0.716490, -0.561487,
		-0.807560, 0.004413, 0.589769,
		-0.420085, 0.697584, -0.580436,
		26.804655, 37.124294, 37.404274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425203, 36.452183, 37.807072>,  <27.098715, 36.635986, 37.810577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425203, 36.452183, 37.807072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.488405, 36.692921, 37.493942>,  <26.526327, 36.837364, 37.306065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.488405, 36.692921, 37.493942>,  <26.425203, 36.452183, 37.807072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488405, 36.692921, 37.493942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252917, -0.741670, -0.621256,
		-0.954498, 0.296152, 0.035028,
		0.158007, 0.601847, -0.782824,
		26.535807, 36.873474, 37.259094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037460, 36.245476, 37.307629>,  <26.425203, 36.452183, 37.807072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037460, 36.245476, 37.307629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.253744, 36.472687, 37.059444>,  <26.383514, 36.609013, 36.910534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.253744, 36.472687, 37.059444>,  <26.037460, 36.245476, 37.307629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253744, 36.472687, 37.059444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121062, -0.677361, -0.725622,
		-0.832454, 0.467463, -0.297487,
		0.540707, 0.568032, -0.620463,
		26.415956, 36.643097, 36.873306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704348, 36.378193, 36.593342>,  <26.037460, 36.245476, 37.307629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704348, 36.378193, 36.593342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.101437, 36.406963, 36.554703>,  <26.339689, 36.424225, 36.531517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.101437, 36.406963, 36.554703>,  <25.704348, 36.378193, 36.593342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101437, 36.406963, 36.554703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015369, -0.719877, -0.693932,
		-0.119454, 0.690365, -0.713531,
		0.992721, 0.071926, -0.096602,
		26.399254, 36.428539, 36.525723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791901, 36.093498, 35.954201>,  <25.704348, 36.378193, 36.593342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791901, 36.093498, 35.954201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.169323, 36.085423, 36.086441>,  <26.395777, 36.080578, 36.165783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.169323, 36.085423, 36.086441>,  <25.791901, 36.093498, 35.954201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.169323, 36.085423, 36.086441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196666, -0.768985, -0.608263,
		0.266506, 0.638947, -0.721610,
		0.943555, -0.020190, 0.330599,
		26.452389, 36.079365, 36.185619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210814, 36.002598, 35.377819>,  <25.791901, 36.093498, 35.954201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210814, 36.002598, 35.377819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.450081, 35.907223, 35.683849>,  <26.593641, 35.849998, 35.867470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.450081, 35.907223, 35.683849>,  <26.210814, 36.002598, 35.377819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450081, 35.907223, 35.683849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351895, -0.779591, -0.518080,
		0.719976, 0.579126, -0.382423,
		0.598168, -0.238433, 0.765079,
		26.629532, 35.835693, 35.913372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939034, 35.927277, 35.099762>,  <26.210814, 36.002598, 35.377819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939034, 35.927277, 35.099762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.914124, 35.711002, 35.435329>,  <26.899178, 35.581238, 35.636669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.914124, 35.711002, 35.435329>,  <26.939034, 35.927277, 35.099762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914124, 35.711002, 35.435329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461566, -0.760865, -0.456116,
		0.884917, 0.358810, 0.296945,
		-0.062276, -0.540685, 0.838917,
		26.895441, 35.548798, 35.687004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521578, 35.448902, 35.082890>,  <26.939034, 35.927277, 35.099762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521578, 35.448902, 35.082890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.296652, 35.272587, 35.362747>,  <27.161697, 35.166798, 35.530663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.296652, 35.272587, 35.362747>,  <27.521578, 35.448902, 35.082890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296652, 35.272587, 35.362747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255703, -0.897305, -0.359805,
		0.786397, -0.023421, 0.617278,
		-0.562313, -0.440790, 0.699649,
		27.127958, 35.140350, 35.572643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918850, 34.840324, 35.339230>,  <27.521578, 35.448902, 35.082890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918850, 34.840324, 35.339230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.533548, 34.750278, 35.397831>,  <27.302366, 34.696251, 35.432991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.533548, 34.750278, 35.397831>,  <27.918850, 34.840324, 35.339230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533548, 34.750278, 35.397831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181525, -0.947666, -0.262637,
		0.197960, -0.226392, 0.953708,
		-0.963255, -0.225113, 0.146504,
		27.244572, 34.682743, 35.441784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955219, 34.229912, 35.603096>,  <27.918850, 34.840324, 35.339230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955219, 34.229912, 35.603096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.567053, 34.224487, 35.506676>,  <27.334152, 34.221233, 35.448822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.567053, 34.224487, 35.506676>,  <27.955219, 34.229912, 35.603096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567053, 34.224487, 35.506676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052857, -0.986136, -0.157297,
		-0.235578, -0.165385, 0.957680,
		-0.970417, -0.013564, -0.241053,
		27.275928, 34.220417, 35.434361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784536, 33.641232, 35.946758>,  <27.955219, 34.229912, 35.603096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784536, 33.641232, 35.946758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.495625, 33.709965, 35.678791>,  <27.322277, 33.751205, 35.518013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.495625, 33.709965, 35.678791>,  <27.784536, 33.641232, 35.946758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495625, 33.709965, 35.678791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035761, -0.976626, -0.211951,
		-0.690676, -0.129131, 0.711542,
		-0.722279, 0.171835, -0.669914,
		27.278940, 33.761517, 35.477818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677973, 32.843910, 36.049587>,  <27.784536, 33.641232, 35.946758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677973, 32.843910, 36.049587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.050917, 32.741474, 36.151661>,  <28.274683, 32.680012, 36.212906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.050917, 32.741474, 36.151661>,  <27.677973, 32.843910, 36.049587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050917, 32.741474, 36.151661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034024, 0.764877, 0.643278,
		-0.359922, -0.591085, 0.721855,
		0.932362, -0.256090, 0.255185,
		28.330626, 32.664646, 36.228218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669506, 32.666801, 36.831841>,  <27.677973, 32.843910, 36.049587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669506, 32.666801, 36.831841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.043447, 32.744507, 36.712971>,  <28.267813, 32.791130, 36.641647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.043447, 32.744507, 36.712971>,  <27.669506, 32.666801, 36.831841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043447, 32.744507, 36.712971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112641, 0.631502, 0.767148,
		0.336692, -0.750645, 0.568481,
		0.934853, 0.194259, -0.297175,
		28.323904, 32.802784, 36.623817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068089, 32.809399, 37.510788>,  <27.669506, 32.666801, 36.831841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068089, 32.809399, 37.510788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.293858, 32.956039, 37.214943>,  <28.429319, 33.044025, 37.037437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.293858, 32.956039, 37.214943>,  <28.068089, 32.809399, 37.510788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293858, 32.956039, 37.214943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405735, 0.657071, 0.635324,
		0.718893, -0.658677, 0.222120,
		0.564422, 0.366608, -0.739612,
		28.463184, 33.066021, 36.993061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722795, 32.847221, 37.787083>,  <28.068089, 32.809399, 37.510788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722795, 32.847221, 37.787083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.696800, 33.101280, 37.479221>,  <28.681204, 33.253716, 37.294506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.696800, 33.101280, 37.479221>,  <28.722795, 32.847221, 37.787083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696800, 33.101280, 37.479221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457734, 0.704325, 0.542592,
		0.886711, -0.317032, -0.336503,
		-0.064988, 0.635151, -0.769649,
		28.677303, 33.291824, 37.248325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341974, 33.137306, 37.919476>,  <28.722795, 32.847221, 37.787083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341974, 33.137306, 37.919476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.134850, 33.387348, 37.685856>,  <29.010574, 33.537373, 37.545685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.134850, 33.387348, 37.685856>,  <29.341974, 33.137306, 37.919476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134850, 33.387348, 37.685856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344374, 0.777258, 0.526571,
		0.783119, 0.071533, -0.617743,
		-0.517813, 0.625102, -0.584052,
		28.979506, 33.574879, 37.510639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834833, 33.655735, 37.640736>,  <29.341974, 33.137306, 37.919476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834833, 33.655735, 37.640736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.468275, 33.813152, 37.611485>,  <29.248341, 33.907600, 37.593933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.468275, 33.813152, 37.611485>,  <29.834833, 33.655735, 37.640736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468275, 33.813152, 37.611485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345930, 0.870559, 0.349942,
		0.201378, 0.295388, -0.933912,
		-0.916395, 0.393539, -0.073128,
		29.193357, 33.931213, 37.589546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026138, 34.365559, 37.535286>,  <29.834833, 33.655735, 37.640736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026138, 34.365559, 37.535286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.639082, 34.391346, 37.632870>,  <29.406849, 34.406818, 37.691418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.639082, 34.391346, 37.632870>,  <30.026138, 34.365559, 37.535286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639082, 34.391346, 37.632870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151240, 0.922083, 0.356216,
		-0.201984, 0.381586, -0.901995,
		-0.967641, 0.064468, 0.243957,
		29.348789, 34.410686, 37.706059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848213, 34.921505, 37.218189>,  <30.026138, 34.365559, 37.535286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848213, 34.921505, 37.218189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.584690, 34.866512, 37.514046>,  <29.426577, 34.833515, 37.691559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.584690, 34.866512, 37.514046>,  <29.848213, 34.921505, 37.218189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584690, 34.866512, 37.514046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239357, 0.893765, 0.379332,
		-0.713216, 0.426946, -0.555913,
		-0.658810, -0.137484, 0.739640,
		29.387047, 34.825268, 37.735939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542337, 35.508816, 37.217220>,  <29.848213, 34.921505, 37.218189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542337, 35.508816, 37.217220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.474022, 35.339302, 37.573029>,  <29.433033, 35.237595, 37.786514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.474022, 35.339302, 37.573029>,  <29.542337, 35.508816, 37.217220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474022, 35.339302, 37.573029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364722, 0.811464, 0.456623,
		-0.915319, 0.402411, 0.015975,
		-0.170788, -0.423783, 0.889517,
		29.422785, 35.212166, 37.839882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283596, 35.968689, 37.649372>,  <29.542337, 35.508816, 37.217220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283596, 35.968689, 37.649372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.415298, 35.713837, 37.928127>,  <29.494320, 35.560925, 38.095379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.415298, 35.713837, 37.928127>,  <29.283596, 35.968689, 37.649372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415298, 35.713837, 37.928127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246801, 0.770454, 0.587785,
		-0.911416, -0.021541, 0.410922,
		0.329258, -0.637132, 0.696887,
		29.514076, 35.522697, 38.137192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884525, 36.117298, 38.258766>,  <29.283596, 35.968689, 37.649372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884525, 36.117298, 38.258766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210760, 35.924599, 38.386971>,  <29.406502, 35.808979, 38.463894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210760, 35.924599, 38.386971>,  <28.884525, 36.117298, 38.258766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210760, 35.924599, 38.386971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160876, 0.720871, 0.674139,
		-0.555818, -0.498257, 0.665437,
		0.815589, -0.481751, 0.320515,
		29.455437, 35.780075, 38.483124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791588, 35.962589, 38.971535>,  <28.884525, 36.117298, 38.258766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791588, 35.962589, 38.971535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.183022, 35.988014, 38.893219>,  <29.417881, 36.003269, 38.846230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.183022, 35.988014, 38.893219>,  <28.791588, 35.962589, 38.971535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183022, 35.988014, 38.893219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110057, 0.642223, 0.758575,
		0.173963, -0.763877, 0.621473,
		0.978583, 0.063566, -0.195793,
		29.476597, 36.007084, 38.834480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104555, 36.082916, 39.608974>,  <28.791588, 35.962589, 38.971535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104555, 36.082916, 39.608974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.386923, 36.179470, 39.342617>,  <29.556343, 36.237400, 39.182804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.386923, 36.179470, 39.342617>,  <29.104555, 36.082916, 39.608974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386923, 36.179470, 39.342617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287872, 0.761210, 0.581109,
		0.647154, -0.601908, 0.467866,
		0.705919, 0.241381, -0.665893,
		29.598698, 36.251884, 39.142849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597624, 36.025547, 39.998665>,  <29.104555, 36.082916, 39.608974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597624, 36.025547, 39.998665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.697304, 36.285698, 39.711636>,  <29.757111, 36.441788, 39.539417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.697304, 36.285698, 39.711636>,  <29.597624, 36.025547, 39.998665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697304, 36.285698, 39.711636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350371, 0.630216, 0.692870,
		0.902851, -0.424080, -0.070824,
		0.249198, 0.650373, -0.717576,
		29.772062, 36.480808, 39.496365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299648, 36.271095, 40.136089>,  <29.597624, 36.025547, 39.998665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299648, 36.271095, 40.136089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.150537, 36.566017, 39.910728>,  <30.061071, 36.742970, 39.775513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.150537, 36.566017, 39.910728>,  <30.299648, 36.271095, 40.136089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150537, 36.566017, 39.910728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518058, 0.669097, 0.532846,
		0.769839, -0.093241, -0.631391,
		-0.372779, 0.737303, -0.563401,
		30.038704, 36.787209, 39.741707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822475, 36.883049, 40.236252>,  <30.299648, 36.271095, 40.136089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822475, 36.883049, 40.236252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.535542, 37.082512, 40.041615>,  <30.363380, 37.202190, 39.924831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.535542, 37.082512, 40.041615>,  <30.822475, 36.883049, 40.236252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535542, 37.082512, 40.041615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266330, 0.841610, 0.469853,
		0.643815, 0.207449, -0.736524,
		-0.717336, 0.498656, -0.486591,
		30.320341, 37.232109, 39.895638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130762, 37.456306, 39.891712>,  <30.822475, 36.883049, 40.236252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130762, 37.456306, 39.891712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.739643, 37.540100, 39.893784>,  <30.504972, 37.590378, 39.895027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.739643, 37.540100, 39.893784>,  <31.130762, 37.456306, 39.891712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739643, 37.540100, 39.893784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201677, 0.934062, 0.294712,
		0.056903, 0.289213, -0.955572,
		-0.977798, 0.209487, 0.005176,
		30.446304, 37.602947, 39.895336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049076, 38.116375, 39.520615>,  <31.130762, 37.456306, 39.891712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049076, 38.116375, 39.520615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.744446, 38.074650, 39.776466>,  <30.561668, 38.049614, 39.929977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.744446, 38.074650, 39.776466>,  <31.049076, 38.116375, 39.520615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744446, 38.074650, 39.776466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183015, 0.912171, 0.366673,
		-0.621698, 0.396310, -0.675596,
		-0.761576, -0.104316, 0.639626,
		30.515974, 38.043354, 39.968353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834867, 38.748245, 39.638546>,  <31.049076, 38.116375, 39.520615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834867, 38.748245, 39.638546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.612499, 38.560890, 39.913231>,  <30.479078, 38.448479, 40.078041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.612499, 38.560890, 39.913231>,  <30.834867, 38.748245, 39.638546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612499, 38.560890, 39.913231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088786, 0.787944, 0.609312,
		-0.826481, 0.399698, -0.396447,
		-0.555919, -0.468386, 0.686709,
		30.445724, 38.420376, 40.119244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418953, 39.229877, 39.863632>,  <30.834867, 38.748245, 39.638546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418953, 39.229877, 39.863632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.416166, 38.960781, 40.159569>,  <30.414495, 38.799324, 40.337132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.416166, 38.960781, 40.159569>,  <30.418953, 39.229877, 39.863632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416166, 38.960781, 40.159569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037672, 0.739160, 0.672475,
		-0.999266, 0.032556, 0.020194,
		-0.006966, -0.672742, 0.739844,
		30.414076, 38.758957, 40.381523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736525, 39.238358, 40.317604>,  <30.418953, 39.229877, 39.863632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736525, 39.238358, 40.317604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.013193, 39.088997, 40.564880>,  <30.179193, 38.999378, 40.713245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.013193, 39.088997, 40.564880>,  <29.736525, 39.238358, 40.317604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013193, 39.088997, 40.564880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154731, 0.759474, 0.631869,
		-0.705442, -0.532699, 0.467529,
		0.691672, -0.373406, 0.618190,
		30.220695, 38.976974, 40.750336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460922, 39.100803, 41.011971>,  <29.736525, 39.238358, 40.317604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460922, 39.100803, 41.011971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.854141, 39.170937, 41.033432>,  <30.090073, 39.213017, 41.046307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.854141, 39.170937, 41.033432>,  <29.460922, 39.100803, 41.011971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854141, 39.170937, 41.033432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173774, 0.797558, 0.577670,
		0.058495, -0.577200, 0.814505,
		0.983047, 0.175331, 0.053650,
		30.149055, 39.223537, 41.049526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707243, 39.356663, 41.773285>,  <29.460922, 39.100803, 41.011971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707243, 39.356663, 41.773285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.954973, 39.475952, 41.482769>,  <30.103611, 39.547527, 41.308460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.954973, 39.475952, 41.482769>,  <29.707243, 39.356663, 41.773285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954973, 39.475952, 41.482769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146331, 0.952687, 0.266409,
		0.771375, -0.058716, 0.633666,
		0.619328, 0.298227, -0.726288,
		30.140772, 39.565418, 41.264881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.323086, 38.355423, 47.034504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.966938, 38.223965, 47.160515>,  <38.753250, 38.145088, 47.236122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.966938, 38.223965, 47.160515>,  <39.323086, 38.355423, 47.034504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966938, 38.223965, 47.160515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096948, 0.539231, 0.836559,
		-0.444803, 0.775385, -0.448251,
		-0.890366, -0.328647, 0.315023,
		38.699829, 38.125370, 47.255020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926033, 39.023308, 47.428356>,  <39.323086, 38.355423, 47.034504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926033, 39.023308, 47.428356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.795368, 38.665371, 47.550045>,  <38.716969, 38.450607, 47.623058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.795368, 38.665371, 47.550045>,  <38.926033, 39.023308, 47.428356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795368, 38.665371, 47.550045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155870, 0.266467, 0.951157,
		-0.932199, 0.358127, 0.052434,
		-0.326663, -0.894841, 0.304222,
		38.697369, 38.396919, 47.641312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551540, 39.183422, 47.986485>,  <38.926033, 39.023308, 47.428356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551540, 39.183422, 47.986485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.560818, 38.789036, 48.052612>,  <38.566383, 38.552402, 48.092289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.560818, 38.789036, 48.052612>,  <38.551540, 39.183422, 47.986485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560818, 38.789036, 48.052612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155283, 0.166909, 0.973668,
		-0.987598, 0.003089, 0.156975,
		0.023193, -0.985967, 0.165319,
		38.567776, 38.493244, 48.102207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349594, 39.174339, 48.605293>,  <38.551540, 39.183422, 47.986485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349594, 39.174339, 48.605293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.468727, 38.795414, 48.558159>,  <38.540207, 38.568058, 48.529877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.468727, 38.795414, 48.558159>,  <38.349594, 39.174339, 48.605293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468727, 38.795414, 48.558159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035462, -0.112376, 0.993033,
		-0.953959, -0.299937, 0.000124,
		0.297834, -0.947317, -0.117839,
		38.558079, 38.511219, 48.522808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900265, 38.865471, 49.000698>,  <38.349594, 39.174339, 48.605293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900265, 38.865471, 49.000698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.233303, 38.650661, 48.946472>,  <38.433128, 38.521774, 48.913937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.233303, 38.650661, 48.946472>,  <37.900265, 38.865471, 49.000698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233303, 38.650661, 48.946472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198165, 0.060275, 0.978314,
		-0.517211, -0.841408, 0.156605,
		0.832600, -0.537028, -0.135562,
		38.483082, 38.489552, 48.905804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900269, 38.384224, 49.541954>,  <37.900265, 38.865471, 49.000698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900269, 38.384224, 49.541954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.276814, 38.436718, 49.417618>,  <38.502739, 38.468212, 49.343018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.276814, 38.436718, 49.417618>,  <37.900269, 38.384224, 49.541954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276814, 38.436718, 49.417618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301988, 0.083165, 0.949677,
		0.150480, -0.987857, 0.038657,
		0.941360, 0.131234, -0.310836,
		38.559223, 38.476089, 49.324368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292542, 37.997547, 49.969849>,  <37.900269, 38.384224, 49.541954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292542, 37.997547, 49.969849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.533676, 38.285400, 49.832024>,  <38.678356, 38.458111, 49.749329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.533676, 38.285400, 49.832024>,  <38.292542, 37.997547, 49.969849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533676, 38.285400, 49.832024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369203, 0.131234, 0.920037,
		0.707305, -0.681842, -0.186577,
		0.602834, 0.719632, -0.344560,
		38.714527, 38.501289, 49.728657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916447, 37.791103, 50.291950>,  <38.292542, 37.997547, 49.969849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916447, 37.791103, 50.291950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.932560, 38.171883, 50.170517>,  <38.942230, 38.400352, 50.097656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.932560, 38.171883, 50.170517>,  <38.916447, 37.791103, 50.291950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932560, 38.171883, 50.170517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145300, 0.295019, 0.944379,
		0.988567, -0.082157, -0.126433,
		0.040287, 0.951952, -0.303584,
		38.944645, 38.457470, 50.079441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346638, 38.068539, 50.699844>,  <38.916447, 37.791103, 50.291950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346638, 38.068539, 50.699844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.178841, 38.398731, 50.548790>,  <39.078163, 38.596848, 50.458157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.178841, 38.398731, 50.548790>,  <39.346638, 38.068539, 50.699844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178841, 38.398731, 50.548790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070278, 0.385228, 0.920142,
		0.905035, 0.412531, -0.103587,
		-0.419492, 0.825480, -0.377637,
		39.052994, 38.646374, 50.435497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556122, 38.653378, 51.172165>,  <39.346638, 38.068539, 50.699844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556122, 38.653378, 51.172165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.240540, 38.840229, 51.012497>,  <39.051189, 38.952339, 50.916698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.240540, 38.840229, 51.012497>,  <39.556122, 38.653378, 51.172165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240540, 38.840229, 51.012497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056393, 0.591845, 0.804077,
		0.611854, 0.656893, -0.440598,
		-0.788958, 0.467131, -0.399167,
		39.003853, 38.980370, 50.892746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655815, 39.425194, 51.349186>,  <39.556122, 38.653378, 51.172165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655815, 39.425194, 51.349186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.275932, 39.334827, 51.262451>,  <39.048004, 39.280609, 51.210411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.275932, 39.334827, 51.262451>,  <39.655815, 39.425194, 51.349186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275932, 39.334827, 51.262451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291255, 0.382945, 0.876655,
		-0.115013, 0.895721, -0.429484,
		-0.949707, -0.225916, -0.216840,
		38.991020, 39.267052, 51.197399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372635, 40.008121, 51.357548>,  <39.655815, 39.425194, 51.349186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372635, 40.008121, 51.357548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.077332, 39.748219, 51.429981>,  <38.900150, 39.592278, 51.473442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.077332, 39.748219, 51.429981>,  <39.372635, 40.008121, 51.357548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077332, 39.748219, 51.429981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245999, 0.509332, 0.824661,
		-0.628059, 0.564267, -0.535858,
		-0.738259, -0.649756, 0.181082,
		38.855854, 39.553291, 51.484306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848457, 40.562801, 51.399113>,  <39.372635, 40.008121, 51.357548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848457, 40.562801, 51.399113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.540047, 40.429394, 51.182121>,  <38.355000, 40.349350, 51.051926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.540047, 40.429394, 51.182121>,  <38.848457, 40.562801, 51.399113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540047, 40.429394, 51.182121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616725, 0.603293, 0.505655,
		0.158629, 0.724434, -0.670844,
		-0.771030, -0.333515, -0.542477,
		38.308739, 40.329338, 51.019379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587605, 41.173512, 51.304226>,  <38.848457, 40.562801, 51.399113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587605, 41.173512, 51.304226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.317917, 40.882725, 51.252148>,  <38.156105, 40.708252, 51.220901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.317917, 40.882725, 51.252148>,  <38.587605, 41.173512, 51.304226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317917, 40.882725, 51.252148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647955, 0.497674, 0.576606,
		-0.354379, 0.473118, -0.806582,
		-0.674218, -0.726966, -0.130194,
		38.115650, 40.664635, 51.213089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942947, 41.632824, 51.559250>,  <38.587605, 41.173512, 51.304226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942947, 41.632824, 51.559250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.779152, 41.970974, 51.422047>,  <37.680874, 42.173866, 51.339725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.779152, 41.970974, 51.422047>,  <37.942947, 41.632824, 51.559250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779152, 41.970974, 51.422047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326635, -0.486903, -0.810083,
		-0.851839, -0.219680, 0.475511,
		-0.409487, 0.845379, -0.343008,
		37.656307, 42.224586, 51.319145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270859, 41.514656, 51.272640>,  <37.942947, 41.632824, 51.559250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270859, 41.514656, 51.272640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.391815, 41.853027, 51.096931>,  <37.464390, 42.056049, 50.991505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.391815, 41.853027, 51.096931>,  <37.270859, 41.514656, 51.272640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391815, 41.853027, 51.096931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238443, -0.379066, -0.894122,
		-0.922879, 0.375115, 0.087081,
		0.302389, 0.845930, -0.439276,
		37.482533, 42.106808, 50.965149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775806, 41.617035, 50.794197>,  <37.270859, 41.514656, 51.272640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775806, 41.617035, 50.794197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.081272, 41.839878, 50.663696>,  <37.264553, 41.973583, 50.585396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.081272, 41.839878, 50.663696>,  <36.775806, 41.617035, 50.794197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081272, 41.839878, 50.663696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060561, -0.441298, -0.895315,
		-0.642764, 0.703480, -0.303266,
		0.763666, 0.557110, -0.326254,
		37.310371, 42.007011, 50.565819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568504, 41.891838, 50.159298>,  <36.775806, 41.617035, 50.794197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568504, 41.891838, 50.159298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.962681, 41.956928, 50.139618>,  <37.199188, 41.995983, 50.127811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.962681, 41.956928, 50.139618>,  <36.568504, 41.891838, 50.159298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962681, 41.956928, 50.139618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014429, -0.208298, -0.977959,
		-0.169383, 0.964434, -0.202919,
		0.985445, 0.162722, -0.049198,
		37.258316, 42.005745, 50.124859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545902, 42.397751, 49.687241>,  <36.568504, 41.891838, 50.159298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545902, 42.397751, 49.687241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.900883, 42.214249, 49.705032>,  <37.113873, 42.104149, 49.715710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.900883, 42.214249, 49.705032>,  <36.545902, 42.397751, 49.687241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900883, 42.214249, 49.705032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040128, -0.173051, -0.984095,
		0.459153, 0.871550, -0.171983,
		0.887450, -0.458752, 0.044484,
		37.167118, 42.076622, 49.718376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986404, 42.772545, 49.207684>,  <36.545902, 42.397751, 49.687241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986404, 42.772545, 49.207684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.165722, 42.419182, 49.262276>,  <37.273312, 42.207165, 49.295033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.165722, 42.419182, 49.262276>,  <36.986404, 42.772545, 49.207684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165722, 42.419182, 49.262276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156925, -0.072535, -0.984943,
		0.880003, 0.462964, 0.106111,
		0.448296, -0.883404, 0.136481,
		37.300209, 42.154160, 49.303219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641060, 42.811653, 48.758842>,  <36.986404, 42.772545, 49.207684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641060, 42.811653, 48.758842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.555908, 42.422356, 48.793438>,  <37.504818, 42.188778, 48.814198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.555908, 42.422356, 48.793438>,  <37.641060, 42.811653, 48.758842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555908, 42.422356, 48.793438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267731, -0.143236, -0.952787,
		0.939682, -0.179672, 0.291059,
		-0.212879, -0.973243, 0.086493,
		37.492046, 42.130383, 48.819386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218071, 42.387016, 48.359707>,  <37.641060, 42.811653, 48.758842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218071, 42.387016, 48.359707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.898170, 42.152683, 48.412178>,  <37.706230, 42.012085, 48.443661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.898170, 42.152683, 48.412178>,  <38.218071, 42.387016, 48.359707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898170, 42.152683, 48.412178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011027, -0.232811, -0.972459,
		0.600236, -0.776275, 0.192650,
		-0.799747, -0.585830, 0.131182,
		37.658245, 41.976936, 48.451534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365704, 41.893902, 48.000416>,  <38.218071, 42.387016, 48.359707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365704, 41.893902, 48.000416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.973061, 41.823372, 48.029694>,  <37.737476, 41.781055, 48.047260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.973061, 41.823372, 48.029694>,  <38.365704, 41.893902, 48.000416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973061, 41.823372, 48.029694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000557, -0.380739, -0.924682,
		0.190912, -0.907715, 0.373638,
		-0.981607, -0.176325, 0.073193,
		37.678577, 41.770473, 48.051651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271057, 41.241337, 47.909237>,  <38.365704, 41.893902, 48.000416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271057, 41.241337, 47.909237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.893517, 41.344559, 47.826721>,  <37.666992, 41.406490, 47.777210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.893517, 41.344559, 47.826721>,  <38.271057, 41.241337, 47.909237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893517, 41.344559, 47.826721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086863, -0.408613, -0.908565,
		-0.318750, -0.875468, 0.363254,
		-0.943851, 0.258052, -0.206291,
		37.610363, 41.421974, 47.764835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049469, 40.612438, 47.588474>,  <38.271057, 41.241337, 47.909237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049469, 40.612438, 47.588474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.795296, 40.896885, 47.468113>,  <37.642792, 41.067551, 47.395897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.795296, 40.896885, 47.468113>,  <38.049469, 40.612438, 47.588474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795296, 40.896885, 47.468113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030423, -0.366329, -0.929988,
		-0.771556, -0.600100, 0.211144,
		-0.635434, 0.711114, -0.300900,
		37.604664, 41.110218, 47.377842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568649, 40.294029, 47.277496>,  <38.049469, 40.612438, 47.588474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568649, 40.294029, 47.277496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.482925, 40.647038, 47.110058>,  <37.431492, 40.858841, 47.009594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.482925, 40.647038, 47.110058>,  <37.568649, 40.294029, 47.277496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482925, 40.647038, 47.110058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000567, -0.428668, -0.903462,
		-0.976765, -0.193387, 0.092370,
		-0.214314, 0.882522, -0.418598,
		37.418633, 40.911793, 46.984478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078892, 40.272869, 46.725132>,  <37.568649, 40.294029, 47.277496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078892, 40.272869, 46.725132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.257980, 40.615875, 46.623775>,  <37.365433, 40.821678, 46.562962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.257980, 40.615875, 46.623775>,  <37.078892, 40.272869, 46.725132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257980, 40.615875, 46.623775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123361, -0.339902, -0.932335,
		-0.885622, 0.386170, -0.257967,
		0.447723, 0.857519, -0.253387,
		37.392296, 40.873131, 46.547760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757259, 40.323086, 46.145084>,  <37.078892, 40.272869, 46.725132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757259, 40.323086, 46.145084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055473, 40.586014, 46.101070>,  <37.234402, 40.743771, 46.074661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055473, 40.586014, 46.101070>,  <36.757259, 40.323086, 46.145084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055473, 40.586014, 46.101070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009395, -0.154725, -0.987913,
		-0.666399, 0.737558, -0.109177,
		0.745536, 0.657319, -0.110038,
		37.279133, 40.783211, 46.068058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189499, 40.679565, 46.011200>,  <36.757259, 40.323086, 46.145084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189499, 40.679565, 46.011200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.849064, 40.503830, 45.896210>,  <35.644802, 40.398388, 45.827217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.849064, 40.503830, 45.896210>,  <36.189499, 40.679565, 46.011200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849064, 40.503830, 45.896210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343245, 0.051274, 0.937845,
		-0.397288, 0.896859, -0.194438,
		-0.851084, -0.439335, -0.287472,
		35.593739, 40.372028, 45.809967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696060, 41.204800, 46.067234>,  <36.189499, 40.679565, 46.011200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696060, 41.204800, 46.067234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.535400, 40.839870, 46.099094>,  <35.439003, 40.620914, 46.118210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.535400, 40.839870, 46.099094>,  <35.696060, 41.204800, 46.067234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535400, 40.839870, 46.099094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349956, 0.233276, 0.907256,
		-0.846292, 0.336524, -0.412968,
		-0.401649, -0.912323, 0.079651,
		35.414906, 40.566174, 46.122990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039658, 41.279095, 46.441345>,  <35.696060, 41.204800, 46.067234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039658, 41.279095, 46.441345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121296, 40.890209, 46.487190>,  <35.170280, 40.656876, 46.514698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121296, 40.890209, 46.487190>,  <35.039658, 41.279095, 46.441345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121296, 40.890209, 46.487190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269943, 0.056645, 0.961209,
		-0.940997, -0.227122, -0.250882,
		0.204100, -0.972218, 0.114613,
		35.182526, 40.598545, 46.521576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561508, 41.081696, 46.964825>,  <35.039658, 41.279095, 46.441345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561508, 41.081696, 46.964825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.834484, 40.791813, 46.926723>,  <34.998272, 40.617882, 46.903862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.834484, 40.791813, 46.926723>,  <34.561508, 41.081696, 46.964825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834484, 40.791813, 46.926723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087841, -0.210679, 0.973601,
		-0.725642, -0.656060, -0.207436,
		0.682443, -0.724707, -0.095249,
		35.039215, 40.574402, 46.898148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217773, 40.654247, 47.384571>,  <34.561508, 41.081696, 46.964825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217773, 40.654247, 47.384571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.612209, 40.606827, 47.337971>,  <34.848869, 40.578377, 47.310009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.612209, 40.606827, 47.337971>,  <34.217773, 40.654247, 47.384571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612209, 40.606827, 47.337971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134393, 0.156230, 0.978535,
		-0.097804, -0.980581, 0.169989,
		0.986090, -0.118550, -0.116503,
		34.908035, 40.571262, 47.303020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315853, 40.030910, 47.727928>,  <34.217773, 40.654247, 47.384571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315853, 40.030910, 47.727928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.658234, 40.237656, 47.722355>,  <34.863663, 40.361702, 47.719009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.658234, 40.237656, 47.722355>,  <34.315853, 40.030910, 47.727928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658234, 40.237656, 47.722355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083800, -0.112087, 0.990159,
		0.510218, -0.848697, -0.139255,
		0.855953, 0.516866, -0.013933,
		34.915020, 40.392715, 47.718174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833466, 39.687351, 48.165451>,  <34.315853, 40.030910, 47.727928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833466, 39.687351, 48.165451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.944847, 40.070560, 48.138145>,  <35.011677, 40.300484, 48.121761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.944847, 40.070560, 48.138145>,  <34.833466, 39.687351, 48.165451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944847, 40.070560, 48.138145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015675, 0.075596, 0.997015,
		0.960322, -0.276552, 0.036067,
		0.278453, 0.958021, -0.068262,
		35.028381, 40.357967, 48.117668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220970, 39.229008, 48.541607>,  <34.833466, 39.687351, 48.165451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220970, 39.229008, 48.541607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946152, 38.978176, 48.688431>,  <34.781261, 38.827675, 48.776524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946152, 38.978176, 48.688431>,  <35.220970, 39.229008, 48.541607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946152, 38.978176, 48.688431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286569, -0.698067, -0.656187,
		0.667712, -0.345646, 0.659310,
		-0.687050, -0.627082, 0.367056,
		34.740036, 38.790051, 48.798546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482475, 38.523617, 48.500320>,  <35.220970, 39.229008, 48.541607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482475, 38.523617, 48.500320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.085381, 38.485550, 48.529770>,  <34.847122, 38.462711, 48.547440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.085381, 38.485550, 48.529770>,  <35.482475, 38.523617, 48.500320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085381, 38.485550, 48.529770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005791, -0.648951, -0.760808,
		0.120181, -0.754854, 0.644788,
		-0.992735, -0.095168, 0.073620,
		34.787560, 38.457001, 48.551857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395679, 37.820271, 48.397385>,  <35.482475, 38.523617, 48.500320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395679, 37.820271, 48.397385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.034313, 37.976028, 48.325603>,  <34.817493, 38.069485, 48.282536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.034313, 37.976028, 48.325603>,  <35.395679, 37.820271, 48.397385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034313, 37.976028, 48.325603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115127, -0.623476, -0.773319,
		-0.413012, -0.677972, 0.608091,
		-0.903419, 0.389398, -0.179450,
		34.763287, 38.092850, 48.271767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007484, 37.291859, 48.374550>,  <35.395679, 37.820271, 48.397385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007484, 37.291859, 48.374550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.820465, 37.571602, 48.158295>,  <34.708252, 37.739449, 48.028542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.820465, 37.571602, 48.158295>,  <35.007484, 37.291859, 48.374550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820465, 37.571602, 48.158295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073212, -0.640143, -0.764759,
		-0.880930, -0.317982, 0.350500,
		-0.467549, 0.699360, -0.540641,
		34.680199, 37.781410, 47.996101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382729, 36.969990, 47.899376>,  <35.007484, 37.291859, 48.374550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382729, 36.969990, 47.899376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.459896, 37.327293, 47.736961>,  <34.506199, 37.541676, 47.639515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.459896, 37.327293, 47.736961>,  <34.382729, 36.969990, 47.899376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459896, 37.327293, 47.736961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344130, -0.325926, -0.880538,
		-0.918888, 0.309604, 0.244520,
		0.192923, 0.893262, -0.406033,
		34.517773, 37.595272, 47.615150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773727, 37.108101, 47.553745>,  <34.382729, 36.969990, 47.899376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773727, 37.108101, 47.553745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.057632, 37.320614, 47.368717>,  <34.227978, 37.448124, 47.257702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.057632, 37.320614, 47.368717>,  <33.773727, 37.108101, 47.553745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057632, 37.320614, 47.368717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367871, -0.280449, -0.886577,
		-0.600752, 0.799427, -0.003609,
		0.709766, 0.531286, -0.462567,
		34.270561, 37.480000, 47.229946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588055, 37.251274, 46.911472>,  <33.773727, 37.108101, 47.553745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588055, 37.251274, 46.911472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972721, 37.344646, 46.853909>,  <34.203522, 37.400669, 46.819370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972721, 37.344646, 46.853909>,  <33.588055, 37.251274, 46.911472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972721, 37.344646, 46.853909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063559, -0.320760, -0.945026,
		-0.266754, 0.917946, -0.293627,
		0.961666, 0.233427, -0.143908,
		34.261223, 37.414673, 46.810738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.898312, 37.064991, 51.975182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.157169, 37.316349, 51.802521>,  <37.312485, 37.467163, 51.698925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.157169, 37.316349, 51.802521>,  <36.898312, 37.064991, 51.975182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157169, 37.316349, 51.802521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192279, -0.413359, -0.890035,
		-0.737722, 0.658979, -0.146676,
		0.647144, 0.628396, -0.431652,
		37.351311, 37.504868, 51.673027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523754, 37.326775, 51.473728>,  <36.898312, 37.064991, 51.975182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523754, 37.326775, 51.473728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.903290, 37.392410, 51.365818>,  <37.131012, 37.431793, 51.301071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.903290, 37.392410, 51.365818>,  <36.523754, 37.326775, 51.473728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903290, 37.392410, 51.365818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193910, -0.371490, -0.907961,
		-0.249205, 0.913822, -0.320666,
		0.948839, 0.164088, -0.269777,
		37.187943, 37.441635, 51.284885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431526, 37.528675, 50.892700>,  <36.523754, 37.326775, 51.473728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431526, 37.528675, 50.892700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.808075, 37.394566, 50.907738>,  <37.034004, 37.314098, 50.916759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.808075, 37.394566, 50.907738>,  <36.431526, 37.528675, 50.892700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808075, 37.394566, 50.907738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049807, -0.248307, -0.967400,
		0.333679, 0.908809, -0.250448,
		0.941370, -0.335276, 0.037590,
		37.090485, 37.293983, 50.919014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780884, 37.842793, 50.432201>,  <36.431526, 37.528675, 50.892700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780884, 37.842793, 50.432201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.983398, 37.501892, 50.484863>,  <37.104908, 37.297352, 50.516460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.983398, 37.501892, 50.484863>,  <36.780884, 37.842793, 50.432201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983398, 37.501892, 50.484863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046479, -0.125482, -0.991007,
		0.861111, 0.507854, -0.023918,
		0.506288, -0.852255, 0.131658,
		37.135284, 37.246216, 50.524361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978149, 37.610806, 49.675270>,  <36.780884, 37.842793, 50.432201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978149, 37.610806, 49.675270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.040054, 37.286602, 49.901234>,  <37.077198, 37.092079, 50.036812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.040054, 37.286602, 49.901234>,  <36.978149, 37.610806, 49.675270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040054, 37.286602, 49.901234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056385, -0.578114, -0.814006,
		0.986341, 0.094125, -0.135171,
		0.154763, -0.810509, 0.564910,
		37.086483, 37.043449, 50.070705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568264, 37.181595, 49.431450>,  <36.978149, 37.610806, 49.675270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568264, 37.181595, 49.431450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.333374, 36.947094, 49.654694>,  <37.192440, 36.806393, 49.788639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.333374, 36.947094, 49.654694>,  <37.568264, 37.181595, 49.431450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333374, 36.947094, 49.654694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010075, -0.694751, -0.719180,
		0.809364, -0.416695, 0.413879,
		-0.587221, -0.586248, 0.558108,
		37.157207, 36.771221, 49.822124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876259, 36.523277, 49.211121>,  <37.568264, 37.181595, 49.431450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876259, 36.523277, 49.211121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.546623, 36.443623, 49.423241>,  <37.348843, 36.395828, 49.550514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.546623, 36.443623, 49.423241>,  <37.876259, 36.523277, 49.211121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546623, 36.443623, 49.423241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155646, -0.820529, -0.550006,
		0.544655, -0.535794, 0.645194,
		-0.824090, -0.199141, 0.530300,
		37.299397, 36.383881, 49.582329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954632, 35.783459, 49.602142>,  <37.876259, 36.523277, 49.211121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954632, 35.783459, 49.602142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.576111, 35.882839, 49.519405>,  <37.348999, 35.942467, 49.469761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.576111, 35.882839, 49.519405>,  <37.954632, 35.783459, 49.602142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576111, 35.882839, 49.519405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061279, -0.766084, -0.639812,
		-0.317420, -0.592781, 0.740173,
		-0.946303, 0.248447, -0.206846,
		37.292221, 35.957375, 49.457352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567131, 35.153164, 49.625793>,  <37.954632, 35.783459, 49.602142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567131, 35.153164, 49.625793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.335083, 35.396130, 49.408722>,  <37.195854, 35.541908, 49.278477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.335083, 35.396130, 49.408722>,  <37.567131, 35.153164, 49.625793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335083, 35.396130, 49.408722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221858, -0.758893, -0.612258,
		-0.783735, -0.234784, 0.575010,
		-0.580119, 0.607418, -0.542683,
		37.161049, 35.578354, 49.245918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831764, 34.794247, 49.508911>,  <37.567131, 35.153164, 49.625793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831764, 34.794247, 49.508911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.869377, 35.072933, 49.224449>,  <36.891945, 35.240147, 49.053772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.869377, 35.072933, 49.224449>,  <36.831764, 34.794247, 49.508911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869377, 35.072933, 49.224449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020419, -0.712821, -0.701048,
		-0.995359, 0.080444, -0.052804,
		0.094035, 0.696717, -0.711156,
		36.897587, 35.281948, 49.011101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299667, 34.567356, 49.036259>,  <36.831764, 34.794247, 49.508911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299667, 34.567356, 49.036259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.543800, 34.807930, 48.830044>,  <36.690281, 34.952274, 48.706314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.543800, 34.807930, 48.830044>,  <36.299667, 34.567356, 49.036259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543800, 34.807930, 48.830044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057046, -0.682485, -0.728670,
		-0.790091, 0.415320, -0.450850,
		0.610330, 0.601434, -0.515533,
		36.726898, 34.988361, 48.675385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045677, 34.587646, 48.359291>,  <36.299667, 34.567356, 49.036259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045677, 34.587646, 48.359291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.403107, 34.746277, 48.275143>,  <36.617565, 34.841457, 48.224655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.403107, 34.746277, 48.275143>,  <36.045677, 34.587646, 48.359291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403107, 34.746277, 48.275143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053646, -0.370916, -0.927116,
		-0.445702, 0.839731, -0.310166,
		0.893573, 0.396578, -0.210366,
		36.671177, 34.865250, 48.212032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756981, 35.117916, 47.931290>,  <36.045677, 34.587646, 48.359291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756981, 35.117916, 47.931290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.376583, 35.079678, 47.813663>,  <35.148346, 35.056736, 47.743088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.376583, 35.079678, 47.813663>,  <35.756981, 35.117916, 47.931290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376583, 35.079678, 47.813663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307379, 0.395677, 0.865424,
		0.033622, 0.913401, -0.405671,
		-0.950993, -0.095598, -0.294063,
		35.091286, 35.050999, 47.725445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492558, 35.773384, 48.133362>,  <35.756981, 35.117916, 47.931290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492558, 35.773384, 48.133362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.189373, 35.518192, 48.078979>,  <35.007462, 35.365078, 48.046352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.189373, 35.518192, 48.078979>,  <35.492558, 35.773384, 48.133362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189373, 35.518192, 48.078979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476974, 0.399884, 0.782681,
		-0.444969, 0.658084, -0.607394,
		-0.757957, -0.637980, -0.135953,
		34.961987, 35.326797, 48.038193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911686, 36.192146, 48.245586>,  <35.492558, 35.773384, 48.133362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911686, 36.192146, 48.245586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.799805, 35.810093, 48.284565>,  <34.732677, 35.580860, 48.307953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.799805, 35.810093, 48.284565>,  <34.911686, 36.192146, 48.245586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799805, 35.810093, 48.284565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559728, 0.244687, 0.791728,
		-0.780047, 0.166902, -0.603051,
		-0.279700, -0.955129, 0.097448,
		34.715897, 35.523556, 48.313801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260284, 36.235329, 48.252369>,  <34.911686, 36.192146, 48.245586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260284, 36.235329, 48.252369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.367588, 35.903366, 48.448040>,  <34.431969, 35.704189, 48.565445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.367588, 35.903366, 48.448040>,  <34.260284, 36.235329, 48.252369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367588, 35.903366, 48.448040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319135, 0.402561, 0.857961,
		-0.908951, -0.386267, -0.156863,
		0.268255, -0.829905, 0.489180,
		34.448063, 35.654396, 48.594795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703625, 36.115356, 48.674763>,  <34.260284, 36.235329, 48.252369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703625, 36.115356, 48.674763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.995106, 35.891552, 48.832714>,  <34.169994, 35.757267, 48.927486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.995106, 35.891552, 48.832714>,  <33.703625, 36.115356, 48.674763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995106, 35.891552, 48.832714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290792, 0.269248, 0.918120,
		-0.620022, -0.783869, 0.033501,
		0.728706, -0.559513, 0.394883,
		34.213718, 35.723698, 48.951180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395538, 35.668186, 49.227741>,  <33.703625, 36.115356, 48.674763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395538, 35.668186, 49.227741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.785664, 35.690697, 49.313152>,  <34.019741, 35.704201, 49.364399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.785664, 35.690697, 49.313152>,  <33.395538, 35.668186, 49.227741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785664, 35.690697, 49.313152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218082, 0.093781, 0.971414,
		0.034634, -0.994002, 0.103737,
		0.975316, 0.056267, 0.213526,
		34.078259, 35.707577, 49.377209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473518, 35.415844, 49.912308>,  <33.395538, 35.668186, 49.227741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473518, 35.415844, 49.912308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.845123, 35.563221, 49.898533>,  <34.068085, 35.651646, 49.890266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.845123, 35.563221, 49.898533>,  <33.473518, 35.415844, 49.912308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845123, 35.563221, 49.898533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132282, 0.417571, 0.898964,
		0.345594, -0.830595, 0.436667,
		0.929014, 0.368439, -0.034437,
		34.123829, 35.673752, 49.888203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942730, 35.138680, 50.430351>,  <33.473518, 35.415844, 49.912308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942730, 35.138680, 50.430351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.044327, 35.512280, 50.329849>,  <34.105286, 35.736439, 50.269550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.044327, 35.512280, 50.329849>,  <33.942730, 35.138680, 50.430351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044327, 35.512280, 50.329849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026903, 0.266492, 0.963461,
		0.966833, -0.237948, 0.092814,
		0.253987, 0.934004, -0.251252,
		34.120522, 35.792480, 50.254475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608887, 35.315655, 50.911453>,  <33.942730, 35.138680, 50.430351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608887, 35.315655, 50.911453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.449932, 35.661423, 50.788254>,  <34.354561, 35.868885, 50.714336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.449932, 35.661423, 50.788254>,  <34.608887, 35.315655, 50.911453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449932, 35.661423, 50.788254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130004, 0.385280, 0.913596,
		0.908396, 0.323010, -0.265483,
		-0.397386, 0.864421, -0.307994,
		34.330715, 35.920750, 50.695854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079376, 35.827480, 51.131653>,  <34.608887, 35.315655, 50.911453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079376, 35.827480, 51.131653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.726585, 36.006046, 51.071209>,  <34.514912, 36.113186, 51.034943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.726585, 36.006046, 51.071209>,  <35.079376, 35.827480, 51.131653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726585, 36.006046, 51.071209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099753, 0.490181, 0.865894,
		0.460620, 0.748622, -0.476858,
		-0.881974, 0.446417, -0.151110,
		34.461994, 36.139973, 51.025875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193954, 36.550598, 51.298641>,  <35.079376, 35.827480, 51.131653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193954, 36.550598, 51.298641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.799828, 36.483105, 51.309097>,  <34.563351, 36.442608, 51.315369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.799828, 36.483105, 51.309097>,  <35.193954, 36.550598, 51.298641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799828, 36.483105, 51.309097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108655, 0.737696, 0.666332,
		-0.131716, 0.653707, -0.745197,
		-0.985315, -0.168736, 0.026138,
		34.504234, 36.432484, 51.316940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942062, 37.225842, 51.395905>,  <35.193954, 36.550598, 51.298641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942062, 37.225842, 51.395905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.633602, 36.983952, 51.475536>,  <34.448524, 36.838818, 51.523315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.633602, 36.983952, 51.475536>,  <34.942062, 37.225842, 51.395905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633602, 36.983952, 51.475536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289388, 0.611470, 0.736450,
		-0.567081, 0.510304, -0.646537,
		-0.771151, -0.604726, 0.199077,
		34.402256, 36.802532, 51.535259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439690, 37.705978, 51.582226>,  <34.942062, 37.225842, 51.395905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439690, 37.705978, 51.582226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.306019, 37.367424, 51.748096>,  <34.225815, 37.164291, 51.847618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.306019, 37.367424, 51.748096>,  <34.439690, 37.705978, 51.582226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306019, 37.367424, 51.748096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357027, 0.520864, 0.775392,
		-0.872271, 0.111066, -0.476243,
		-0.334177, -0.846384, 0.414681,
		34.205765, 37.113510, 51.872501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952110, 37.940166, 51.904350>,  <34.439690, 37.705978, 51.582226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952110, 37.940166, 51.904350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.022900, 37.579853, 52.062977>,  <34.065372, 37.363663, 52.158154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.022900, 37.579853, 52.062977>,  <33.952110, 37.940166, 51.904350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022900, 37.579853, 52.062977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208061, 0.359583, 0.909621,
		-0.961973, -0.243486, -0.123783,
		0.176970, -0.900785, 0.396570,
		34.075989, 37.309616, 52.181950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299236, 38.606041, 51.598515>,  <33.952110, 37.940166, 51.904350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299236, 38.606041, 51.598515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.036488, 38.889572, 51.495678>,  <33.878838, 39.059689, 51.433975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.036488, 38.889572, 51.495678>,  <34.299236, 38.606041, 51.598515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036488, 38.889572, 51.495678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069596, -0.282509, -0.956737,
		-0.750788, -0.646341, 0.136239,
		-0.656867, 0.708824, -0.257087,
		33.839428, 39.102219, 51.418552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819218, 38.291218, 51.147240>,  <34.299236, 38.606041, 51.598515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819218, 38.291218, 51.147240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.763214, 38.680504, 51.074303>,  <33.729610, 38.914074, 51.030540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.763214, 38.680504, 51.074303>,  <33.819218, 38.291218, 51.147240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763214, 38.680504, 51.074303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010124, -0.182743, -0.983109,
		-0.990098, -0.139490, 0.015733,
		-0.140009, 0.973215, -0.182345,
		33.721210, 38.972469, 51.019600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285145, 38.319950, 50.617207>,  <33.819218, 38.291218, 51.147240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285145, 38.319950, 50.617207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.446304, 38.684460, 50.583138>,  <33.542999, 38.903164, 50.562695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.446304, 38.684460, 50.583138>,  <33.285145, 38.319950, 50.617207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446304, 38.684460, 50.583138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055186, -0.117077, -0.991588,
		-0.913579, 0.394810, -0.097460,
		0.402899, 0.911273, -0.085172,
		33.567173, 38.957840, 50.557587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084965, 38.677631, 50.016281>,  <33.285145, 38.319950, 50.617207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084965, 38.677631, 50.016281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.444298, 38.848202, 50.058529>,  <33.659897, 38.950542, 50.083878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.444298, 38.848202, 50.058529>,  <33.084965, 38.677631, 50.016281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444298, 38.848202, 50.058529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131280, -0.031139, -0.990856,
		-0.419238, 0.903986, -0.083954,
		0.898335, 0.426426, 0.105620,
		33.713799, 38.976128, 50.090214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161808, 39.043526, 49.399197>,  <33.084965, 38.677631, 50.016281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161808, 39.043526, 49.399197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.524681, 39.009636, 49.564045>,  <33.742405, 38.989304, 49.662956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.524681, 39.009636, 49.564045>,  <33.161808, 39.043526, 49.399197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524681, 39.009636, 49.564045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406610, -0.075200, -0.910502,
		0.108131, 0.993563, -0.033772,
		0.907180, -0.084721, 0.412124,
		33.796837, 38.984219, 49.687683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706810, 39.406063, 49.018230>,  <33.161808, 39.043526, 49.399197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706810, 39.406063, 49.018230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.952576, 39.172382, 49.230343>,  <34.100037, 39.032173, 49.357609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.952576, 39.172382, 49.230343>,  <33.706810, 39.406063, 49.018230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952576, 39.172382, 49.230343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567414, -0.139812, -0.811476,
		0.548207, 0.799474, 0.245582,
		0.614419, -0.584203, 0.530279,
		34.136902, 38.997120, 49.389427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380680, 39.709709, 48.932869>,  <33.706810, 39.406063, 49.018230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380680, 39.709709, 48.932869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.419865, 39.324390, 49.032845>,  <34.443375, 39.093201, 49.092831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.419865, 39.324390, 49.032845>,  <34.380680, 39.709709, 48.932869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419865, 39.324390, 49.032845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375853, -0.196734, -0.905555,
		0.921487, 0.182649, 0.342784,
		0.097962, -0.963294, 0.249937,
		34.449253, 39.035400, 49.107826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111649, 39.953335, 48.867332>,  <34.380680, 39.709709, 48.932869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111649, 39.953335, 48.867332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.112797, 40.309021, 48.684341>,  <35.113487, 40.522434, 48.574547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.112797, 40.309021, 48.684341>,  <35.111649, 39.953335, 48.867332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112797, 40.309021, 48.684341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190294, 0.449609, 0.872720,
		0.981723, 0.084551, 0.170503,
		0.002870, 0.889215, -0.457481,
		35.113659, 40.575787, 48.547096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682194, 40.351189, 49.146088>,  <35.111649, 39.953335, 48.867332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682194, 40.351189, 49.146088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.436501, 40.622700, 48.985104>,  <35.289085, 40.785606, 48.888512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.436501, 40.622700, 48.985104>,  <35.682194, 40.351189, 49.146088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436501, 40.622700, 48.985104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073438, 0.458630, 0.885588,
		0.785702, 0.573511, -0.231856,
		-0.614230, 0.678781, -0.402464,
		35.252232, 40.826336, 48.864365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900948, 41.015671, 49.366436>,  <35.682194, 40.351189, 49.146088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900948, 41.015671, 49.366436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.545033, 41.095894, 49.202457>,  <35.331482, 41.144028, 49.104073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.545033, 41.095894, 49.202457>,  <35.900948, 41.015671, 49.366436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545033, 41.095894, 49.202457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111206, 0.775902, 0.620974,
		0.442617, 0.598124, -0.668085,
		-0.889788, 0.200559, -0.409942,
		35.278095, 41.156063, 49.079475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881443, 41.736370, 49.310173>,  <35.900948, 41.015671, 49.366436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881443, 41.736370, 49.310173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.518047, 41.569630, 49.322086>,  <35.300011, 41.469585, 49.329235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.518047, 41.569630, 49.322086>,  <35.881443, 41.736370, 49.310173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518047, 41.569630, 49.322086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221379, 0.540471, 0.811716,
		-0.354467, 0.730837, -0.583293,
		-0.908485, -0.416855, 0.029787,
		35.245502, 41.444572, 49.331024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596004, 42.184990, 49.611561>,  <35.881443, 41.736370, 49.310173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596004, 42.184990, 49.611561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.324284, 41.896194, 49.664143>,  <35.161251, 41.722919, 49.695690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.324284, 41.896194, 49.664143>,  <35.596004, 42.184990, 49.611561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324284, 41.896194, 49.664143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335841, 0.465119, 0.819070,
		-0.652499, 0.512251, -0.558430,
		-0.679305, -0.721986, 0.131455,
		35.120491, 41.679600, 49.703579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929123, 42.542294, 49.664074>,  <35.596004, 42.184990, 49.611561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929123, 42.542294, 49.664074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.937672, 42.184593, 49.842896>,  <34.942802, 41.969975, 49.950188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.937672, 42.184593, 49.842896>,  <34.929123, 42.542294, 49.664074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937672, 42.184593, 49.842896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417177, 0.398393, 0.816851,
		-0.908574, -0.203963, -0.364545,
		0.021375, -0.894249, 0.447058,
		34.944084, 41.916317, 49.977013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228111, 42.348419, 49.872066>,  <34.929123, 42.542294, 49.664074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228111, 42.348419, 49.872066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.476219, 42.132744, 50.099937>,  <34.625084, 42.003338, 50.236660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.476219, 42.132744, 50.099937>,  <34.228111, 42.348419, 49.872066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476219, 42.132744, 50.099937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347775, 0.461942, 0.815881,
		-0.703076, -0.704188, 0.099012,
		0.620272, -0.539192, 0.569680,
		34.662300, 41.970985, 50.270840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825554, 42.214897, 50.370407>,  <34.228111, 42.348419, 49.872066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825554, 42.214897, 50.370407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.181789, 42.132034, 50.532360>,  <34.395531, 42.082317, 50.629532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.181789, 42.132034, 50.532360>,  <33.825554, 42.214897, 50.370407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181789, 42.132034, 50.532360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271576, 0.471876, 0.838796,
		-0.364822, -0.856981, 0.363989,
		0.890591, -0.207161, 0.404886,
		34.448967, 42.069885, 50.653828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734634, 41.964890, 51.055737>,  <33.825554, 42.214897, 50.370407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734634, 41.964890, 51.055737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.099838, 42.127560, 51.042931>,  <34.318962, 42.225163, 51.035248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.099838, 42.127560, 51.042931>,  <33.734634, 41.964890, 51.055737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099838, 42.127560, 51.042931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220309, 0.557624, 0.800324,
		0.343323, -0.723653, 0.598712,
		0.913013, 0.406672, -0.032018,
		34.373741, 42.249561, 51.033325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.055222, 35.754166, 36.776321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440273, 35.840694, 36.841503>,  <37.671303, 35.892612, 36.880611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440273, 35.840694, 36.841503>,  <37.055222, 35.754166, 36.776321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440273, 35.840694, 36.841503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125820, -0.175613, 0.976386,
		0.239828, -0.960399, -0.141832,
		0.962628, 0.216319, 0.162954,
		37.729061, 35.905590, 36.890388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317814, 35.136604, 37.127964>,  <37.055222, 35.754166, 36.776321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317814, 35.136604, 37.127964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529678, 35.472252, 37.177498>,  <37.656796, 35.673641, 37.207218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529678, 35.472252, 37.177498>,  <37.317814, 35.136604, 37.127964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529678, 35.472252, 37.177498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168436, -0.039036, 0.984939,
		0.831319, -0.542540, 0.120663,
		0.529658, 0.839122, 0.123835,
		37.688576, 35.723988, 37.214649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587128, 35.090618, 37.869213>,  <37.317814, 35.136604, 37.127964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587128, 35.090618, 37.869213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607491, 35.479313, 37.777012>,  <37.619709, 35.712532, 37.721691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607491, 35.479313, 37.777012>,  <37.587128, 35.090618, 37.869213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607491, 35.479313, 37.777012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327027, 0.234295, 0.915510,
		0.943643, 0.028772, 0.329713,
		0.050909, 0.971740, -0.230500,
		37.622765, 35.770836, 37.707863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789021, 35.456924, 38.502956>,  <37.587128, 35.090618, 37.869213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789021, 35.456924, 38.502956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634811, 35.756584, 38.287498>,  <37.542286, 35.936382, 38.158222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634811, 35.756584, 38.287498>,  <37.789021, 35.456924, 38.502956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634811, 35.756584, 38.287498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472700, 0.340993, 0.812576,
		0.792418, 0.567887, 0.222662,
		-0.385525, 0.749152, -0.538649,
		37.519154, 35.981331, 38.125904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964684, 36.001122, 38.820999>,  <37.789021, 35.456924, 38.502956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964684, 36.001122, 38.820999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637394, 36.104431, 38.615551>,  <37.441021, 36.166416, 38.492283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637394, 36.104431, 38.615551>,  <37.964684, 36.001122, 38.820999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637394, 36.104431, 38.615551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388039, 0.411094, 0.824880,
		0.424191, 0.874241, -0.236147,
		-0.818223, 0.258272, -0.513622,
		37.391926, 36.181911, 38.461464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960087, 36.747280, 38.793968>,  <37.964684, 36.001122, 38.820999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960087, 36.747280, 38.793968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597366, 36.585018, 38.748077>,  <37.379734, 36.487663, 38.720543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597366, 36.585018, 38.748077>,  <37.960087, 36.747280, 38.793968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597366, 36.585018, 38.748077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328176, 0.508451, 0.796102,
		-0.264608, 0.759555, -0.594188,
		-0.906798, -0.405653, -0.114727,
		37.325325, 36.463322, 38.713657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515591, 37.323334, 38.756042>,  <37.960087, 36.747280, 38.793968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515591, 37.323334, 38.756042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311604, 37.000607, 38.875355>,  <37.189209, 36.806969, 38.946941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311604, 37.000607, 38.875355>,  <37.515591, 37.323334, 38.756042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311604, 37.000607, 38.875355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375031, 0.520614, 0.767016,
		-0.774133, 0.279291, -0.568080,
		-0.509971, -0.806820, 0.298281,
		37.158611, 36.758560, 38.964840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966263, 37.667614, 38.997261>,  <37.515591, 37.323334, 38.756042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966263, 37.667614, 38.997261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876392, 37.289639, 39.092438>,  <36.822472, 37.062855, 39.149544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876392, 37.289639, 39.092438>,  <36.966263, 37.667614, 38.997261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876392, 37.289639, 39.092438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517543, 0.322612, 0.792509,
		-0.825634, 0.054910, -0.561528,
		-0.224673, -0.944937, 0.237941,
		36.808990, 37.006157, 39.163818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252953, 37.641739, 39.024338>,  <36.966263, 37.667614, 38.997261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252953, 37.641739, 39.024338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415306, 37.356979, 39.253586>,  <36.512718, 37.186123, 39.391132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415306, 37.356979, 39.253586>,  <36.252953, 37.641739, 39.024338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415306, 37.356979, 39.253586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596529, 0.268728, 0.756266,
		-0.692394, -0.648839, -0.315592,
		0.405886, -0.711894, 0.573117,
		36.537071, 37.143410, 39.425522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765858, 37.350536, 39.302444>,  <36.252953, 37.641739, 39.024338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765858, 37.350536, 39.302444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055763, 37.275909, 39.567749>,  <36.229706, 37.231133, 39.726933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055763, 37.275909, 39.567749>,  <35.765858, 37.350536, 39.302444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055763, 37.275909, 39.567749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613166, 0.264398, 0.744393,
		-0.314246, -0.946195, 0.077227,
		0.724760, -0.186569, 0.663261,
		36.273190, 37.219940, 39.766727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408375, 37.244228, 39.929401>,  <35.765858, 37.350536, 39.302444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408375, 37.244228, 39.929401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782589, 37.223244, 40.069126>,  <36.007118, 37.210651, 40.152962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782589, 37.223244, 40.069126>,  <35.408375, 37.244228, 39.929401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782589, 37.223244, 40.069126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313274, 0.333638, 0.889126,
		-0.163192, -0.941240, 0.295695,
		0.935536, -0.052464, 0.349313,
		36.063251, 37.207504, 40.173920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446545, 36.785278, 40.476875>,  <35.408375, 37.244228, 39.929401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446545, 36.785278, 40.476875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739361, 37.050533, 40.539318>,  <35.915051, 37.209686, 40.576782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739361, 37.050533, 40.539318>,  <35.446545, 36.785278, 40.476875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739361, 37.050533, 40.539318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348202, 0.167252, 0.922379,
		0.585552, -0.729575, 0.353340,
		0.732041, 0.663135, 0.156104,
		35.958973, 37.249474, 40.586151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345085, 36.054295, 40.820362>,  <35.446545, 36.785278, 40.476875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345085, 36.054295, 40.820362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018585, 35.899590, 40.992016>,  <34.822685, 35.806767, 41.095009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018585, 35.899590, 40.992016>,  <35.345085, 36.054295, 40.820362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018585, 35.899590, 40.992016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260310, -0.416908, -0.870877,
		0.515729, -0.822559, 0.239623,
		-0.816249, -0.386760, 0.429132,
		34.773712, 35.783562, 41.120754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293274, 35.273773, 40.686665>,  <35.345085, 36.054295, 40.820362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293274, 35.273773, 40.686665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923851, 35.421654, 40.727406>,  <34.702198, 35.510380, 40.751850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923851, 35.421654, 40.727406>,  <35.293274, 35.273773, 40.686665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923851, 35.421654, 40.727406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300537, -0.532838, -0.791051,
		-0.238175, -0.761189, 0.603211,
		-0.923553, 0.369696, 0.101857,
		34.646786, 35.532562, 40.757961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915920, 34.864403, 40.261154>,  <35.293274, 35.273773, 40.686665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915920, 34.864403, 40.261154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606628, 35.108852, 40.328850>,  <34.421055, 35.255524, 40.369465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606628, 35.108852, 40.328850>,  <34.915920, 34.864403, 40.261154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606628, 35.108852, 40.328850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452348, -0.344539, -0.822602,
		-0.444407, -0.712613, 0.542849,
		-0.773229, 0.611126, 0.169234,
		34.374660, 35.292191, 40.379620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345100, 34.442856, 40.202122>,  <34.915920, 34.864403, 40.261154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345100, 34.442856, 40.202122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228218, 34.822628, 40.156155>,  <34.158089, 35.050491, 40.128574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228218, 34.822628, 40.156155>,  <34.345100, 34.442856, 40.202122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228218, 34.822628, 40.156155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680566, -0.290855, -0.672483,
		-0.671897, -0.118294, 0.731137,
		-0.292206, 0.949426, -0.114918,
		34.140556, 35.107456, 40.121681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609108, 34.488041, 40.264145>,  <34.345100, 34.442856, 40.202122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609108, 34.488041, 40.264145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695335, 34.817463, 40.054272>,  <33.747070, 35.015118, 39.928349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695335, 34.817463, 40.054272>,  <33.609108, 34.488041, 40.264145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695335, 34.817463, 40.054272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678350, -0.260201, -0.687122,
		-0.702404, 0.504038, 0.502567,
		0.215567, 0.823554, -0.524681,
		33.760006, 35.064529, 39.896866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961700, 34.718700, 40.145691>,  <33.609108, 34.488041, 40.264145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961700, 34.718700, 40.145691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185337, 34.900249, 39.868153>,  <33.319519, 35.009178, 39.701630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185337, 34.900249, 39.868153>,  <32.961700, 34.718700, 40.145691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185337, 34.900249, 39.868153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665750, -0.253023, -0.701966,
		-0.494165, 0.854386, 0.160707,
		0.559087, 0.453877, -0.693843,
		33.353062, 35.036411, 39.660000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452076, 35.031681, 39.767353>,  <32.961700, 34.718700, 40.145691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452076, 35.031681, 39.767353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782650, 34.990391, 39.545959>,  <32.980995, 34.965614, 39.413124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782650, 34.990391, 39.545959>,  <32.452076, 35.031681, 39.767353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782650, 34.990391, 39.545959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560259, -0.248104, -0.790287,
		-0.055740, 0.963217, -0.262878,
		0.826440, -0.103229, -0.553481,
		33.030582, 34.959423, 39.379913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348515, 35.448578, 39.156673>,  <32.452076, 35.031681, 39.767353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348515, 35.448578, 39.156673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601532, 35.150284, 39.072987>,  <32.753342, 34.971306, 39.022774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601532, 35.150284, 39.072987>,  <32.348515, 35.448578, 39.156673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601532, 35.150284, 39.072987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660618, -0.378445, -0.648354,
		0.404323, 0.548324, -0.732028,
		0.632540, -0.745735, -0.209219,
		32.791294, 34.926563, 39.010220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093246, 35.220482, 38.570724>,  <32.348515, 35.448578, 39.156673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093246, 35.220482, 38.570724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368145, 34.935482, 38.627346>,  <32.533085, 34.764481, 38.661320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368145, 34.935482, 38.627346>,  <32.093246, 35.220482, 38.570724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368145, 34.935482, 38.627346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510123, -0.612085, -0.604257,
		0.517176, 0.343063, -0.784115,
		0.687243, -0.712503, 0.141552,
		32.574318, 34.721733, 38.669811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482342, 35.096306, 37.989094>,  <32.093246, 35.220482, 38.570724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482342, 35.096306, 37.989094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500038, 34.752388, 38.192577>,  <32.510658, 34.546036, 38.314667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500038, 34.752388, 38.192577>,  <32.482342, 35.096306, 37.989094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500038, 34.752388, 38.192577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613992, -0.425090, -0.665065,
		0.788071, -0.282921, -0.546717,
		0.044243, -0.859799, 0.508713,
		32.513309, 34.494450, 38.345192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473587, 34.616627, 37.537102>,  <32.482342, 35.096306, 37.989094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473587, 34.616627, 37.537102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403751, 34.387459, 37.857422>,  <32.361851, 34.249958, 38.049614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403751, 34.387459, 37.857422>,  <32.473587, 34.616627, 37.537102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403751, 34.387459, 37.857422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448592, -0.677703, -0.582653,
		0.876518, -0.460956, -0.138690,
		-0.174586, -0.572921, 0.800800,
		32.351376, 34.215584, 38.097660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707100, 33.910995, 37.386753>,  <32.473587, 34.616627, 37.537102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707100, 33.910995, 37.386753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404678, 33.914448, 37.648533>,  <32.223225, 33.916519, 37.805599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404678, 33.914448, 37.648533>,  <32.707100, 33.910995, 37.386753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404678, 33.914448, 37.648533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555831, -0.536428, -0.635057,
		0.345587, -0.843902, 0.410365,
		-0.756057, 0.008626, 0.654449,
		32.177860, 33.917034, 37.844868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627464, 33.220509, 37.348175>,  <32.707100, 33.910995, 37.386753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627464, 33.220509, 37.348175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299694, 33.375519, 37.517109>,  <32.103031, 33.468525, 37.618469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299694, 33.375519, 37.517109>,  <32.627464, 33.220509, 37.348175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299694, 33.375519, 37.517109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553947, -0.724718, -0.409790,
		0.147272, -0.569744, 0.808519,
		-0.819423, 0.387525, 0.422339,
		32.053867, 33.491776, 37.643810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298168, 32.594360, 37.477646>,  <32.627464, 33.220509, 37.348175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298168, 32.594360, 37.477646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036572, 32.896511, 37.494175>,  <31.879614, 33.077801, 37.504093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036572, 32.896511, 37.494175>,  <32.298168, 32.594360, 37.477646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036572, 32.896511, 37.494175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650588, -0.533714, -0.540263,
		-0.386045, -0.380212, 0.840481,
		-0.653991, 0.755373, 0.041324,
		31.840374, 33.123123, 37.506573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765553, 32.109329, 37.752529>,  <32.298168, 32.594360, 37.477646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765553, 32.109329, 37.752529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455681, 31.886953, 37.873066>,  <32.269756, 31.753529, 37.945389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455681, 31.886953, 37.873066>,  <32.765553, 32.109329, 37.752529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455681, 31.886953, 37.873066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023306, -0.451116, -0.892161,
		0.631925, -0.698162, 0.336513,
		-0.774679, -0.555936, 0.301343,
		32.223278, 31.720173, 37.963470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249371, 32.557735, 37.238091>,  <32.765553, 32.109329, 37.752529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249371, 32.557735, 37.238091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540073, 32.810871, 37.344925>,  <33.714497, 32.962753, 37.409027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540073, 32.810871, 37.344925>,  <33.249371, 32.557735, 37.238091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540073, 32.810871, 37.344925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260085, -0.613410, 0.745711,
		0.635748, -0.472487, -0.610393,
		0.726760, 0.632838, 0.267087,
		33.758102, 33.000721, 37.425053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570873, 32.038494, 37.688152>,  <33.249371, 32.557735, 37.238091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570873, 32.038494, 37.688152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839752, 32.333317, 37.660141>,  <34.001080, 32.510208, 37.643333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839752, 32.333317, 37.660141>,  <33.570873, 32.038494, 37.688152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839752, 32.333317, 37.660141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511540, -0.393980, 0.763614,
		0.535236, -0.549120, -0.641865,
		0.672198, 0.737053, -0.070024,
		34.041412, 32.554432, 37.639133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118118, 31.671124, 37.640217>,  <33.570873, 32.038494, 37.688152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118118, 31.671124, 37.640217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224335, 32.031738, 37.776875>,  <34.288063, 32.248108, 37.858871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224335, 32.031738, 37.776875>,  <34.118118, 31.671124, 37.640217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224335, 32.031738, 37.776875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488522, -0.431326, 0.758488,
		0.831165, -0.034506, -0.554954,
		0.265538, 0.901536, 0.341646,
		34.303997, 32.302200, 37.879368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722290, 31.435104, 38.050404>,  <34.118118, 31.671124, 37.640217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722290, 31.435104, 38.050404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648067, 31.806799, 38.178211>,  <34.603535, 32.029816, 38.254894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648067, 31.806799, 38.178211>,  <34.722290, 31.435104, 38.050404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648067, 31.806799, 38.178211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295354, -0.257384, 0.920065,
		0.937196, 0.265090, -0.226695,
		-0.185552, 0.929237, 0.319514,
		34.592403, 32.085571, 38.274067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268414, 31.627867, 38.568146>,  <34.722290, 31.435104, 38.050404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268414, 31.627867, 38.568146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969341, 31.885145, 38.634197>,  <34.789898, 32.039513, 38.673828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969341, 31.885145, 38.634197>,  <35.268414, 31.627867, 38.568146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969341, 31.885145, 38.634197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262348, 0.057671, 0.963249,
		0.610036, 0.763525, -0.211861,
		-0.747683, 0.643198, 0.165128,
		34.745037, 32.078106, 38.683735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515739, 32.158691, 39.113781>,  <35.268414, 31.627867, 38.568146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515739, 32.158691, 39.113781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120125, 32.217289, 39.106251>,  <34.882755, 32.252449, 39.101734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120125, 32.217289, 39.106251>,  <35.515739, 32.158691, 39.113781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120125, 32.217289, 39.106251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010894, 0.199461, 0.979845,
		0.147297, 0.968893, -0.198870,
		-0.989032, 0.146495, -0.018825,
		34.823414, 32.261238, 39.100605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406944, 32.732555, 39.538792>,  <35.515739, 32.158691, 39.113781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406944, 32.732555, 39.538792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043888, 32.565052, 39.550358>,  <34.826054, 32.464550, 39.557297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043888, 32.565052, 39.550358>,  <35.406944, 32.732555, 39.538792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043888, 32.565052, 39.550358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074040, -0.091919, 0.993010,
		-0.413176, 0.903433, 0.114434,
		-0.907636, -0.418761, 0.028912,
		34.771599, 32.439423, 39.559032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074955, 33.097576, 40.028847>,  <35.406944, 32.732555, 39.538792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074955, 33.097576, 40.028847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863541, 32.758076, 40.035511>,  <34.736691, 32.554375, 40.039509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863541, 32.758076, 40.035511>,  <35.074955, 33.097576, 40.028847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863541, 32.758076, 40.035511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024117, 0.004604, 0.999699,
		-0.848568, 0.528779, 0.018036,
		-0.528536, -0.848747, 0.016659,
		34.704979, 32.503452, 40.040508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568642, 33.253258, 40.419060>,  <35.074955, 33.097576, 40.028847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568642, 33.253258, 40.419060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565861, 32.853268, 40.419140>,  <34.564194, 32.613274, 40.419186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565861, 32.853268, 40.419140>,  <34.568642, 33.253258, 40.419060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565861, 32.853268, 40.419140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152532, 0.001254, 0.988298,
		-0.988274, 0.006838, -0.152537,
		-0.006949, -0.999976, 0.000196,
		34.563778, 32.553276, 40.419197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910965, 33.153770, 40.735970>,  <34.568642, 33.253258, 40.419060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910965, 33.153770, 40.735970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132431, 32.822380, 40.769623>,  <34.265312, 32.623547, 40.789814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132431, 32.822380, 40.769623>,  <33.910965, 33.153770, 40.735970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132431, 32.822380, 40.769623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199731, -0.034038, 0.979259,
		-0.808432, -0.558985, -0.184319,
		0.553665, -0.828479, 0.084130,
		34.298531, 32.573837, 40.794861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518234, 32.771034, 41.249985>,  <33.910965, 33.153770, 40.735970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518234, 32.771034, 41.249985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883209, 32.608006, 41.235352>,  <34.102196, 32.510189, 41.226574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883209, 32.608006, 41.235352>,  <33.518234, 32.771034, 41.249985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883209, 32.608006, 41.235352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055670, 0.035073, 0.997833,
		-0.405405, -0.912500, 0.054692,
		0.912441, -0.407571, -0.036580,
		34.156940, 32.485733, 41.224377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440220, 32.354168, 41.763603>,  <33.518234, 32.771034, 41.249985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440220, 32.354168, 41.763603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835617, 32.386822, 41.712666>,  <34.072857, 32.406414, 41.682102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835617, 32.386822, 41.712666>,  <33.440220, 32.354168, 41.763603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835617, 32.386822, 41.712666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084956, 0.396919, 0.913914,
		0.125147, -0.914217, 0.385417,
		0.988494, 0.081630, -0.127342,
		34.132164, 32.411312, 41.674461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789566, 32.135971, 42.354816>,  <33.440220, 32.354168, 41.763603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789566, 32.135971, 42.354816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100098, 32.356995, 42.233498>,  <34.286419, 32.489609, 42.160706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100098, 32.356995, 42.233498>,  <33.789566, 32.135971, 42.354816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100098, 32.356995, 42.233498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202888, 0.236508, 0.950211,
		0.596779, -0.799214, 0.071501,
		0.776332, 0.552560, -0.303293,
		34.332996, 32.522762, 42.142509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299591, 31.893375, 42.809078>,  <33.789566, 32.135971, 42.354816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299591, 31.893375, 42.809078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420052, 32.243889, 42.658646>,  <34.492329, 32.454197, 42.568386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420052, 32.243889, 42.658646>,  <34.299591, 31.893375, 42.809078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420052, 32.243889, 42.658646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232268, 0.315102, 0.920197,
		0.924856, -0.364471, -0.108639,
		0.301153, 0.876283, -0.376079,
		34.510399, 32.506775, 42.545822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883018, 32.012115, 43.098274>,  <34.299591, 31.893375, 42.809078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883018, 32.012115, 43.098274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776684, 32.378906, 42.979286>,  <34.712883, 32.598980, 42.907894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776684, 32.378906, 42.979286>,  <34.883018, 32.012115, 43.098274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776684, 32.378906, 42.979286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290332, 0.370402, 0.882332,
		0.919260, 0.148189, -0.364693,
		-0.265835, 0.916975, -0.297472,
		34.696934, 32.653999, 42.890045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343956, 32.432499, 43.289661>,  <34.883018, 32.012115, 43.098274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343956, 32.432499, 43.289661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089622, 32.732338, 43.216110>,  <34.937023, 32.912243, 43.171982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089622, 32.732338, 43.216110>,  <35.343956, 32.432499, 43.289661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089622, 32.732338, 43.216110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216570, 0.401939, 0.889687,
		0.740816, 0.525874, -0.417909,
		-0.635837, 0.749601, -0.183874,
		34.898872, 32.957218, 43.160950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748127, 33.052036, 43.321156>,  <35.343956, 32.432499, 43.289661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748127, 33.052036, 43.321156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362106, 33.138325, 43.380669>,  <35.130493, 33.190098, 43.416378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362106, 33.138325, 43.380669>,  <35.748127, 33.052036, 43.321156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362106, 33.138325, 43.380669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232518, 0.442999, 0.865845,
		0.120870, 0.870181, -0.477677,
		-0.965052, 0.215723, 0.148787,
		35.072590, 33.203041, 43.425304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827042, 33.629265, 43.613548>,  <35.748127, 33.052036, 43.321156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827042, 33.629265, 43.613548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444141, 33.554207, 43.701611>,  <35.214401, 33.509171, 43.754448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444141, 33.554207, 43.701611>,  <35.827042, 33.629265, 43.613548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444141, 33.554207, 43.701611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116469, 0.446638, 0.887102,
		-0.264788, 0.874817, -0.405689,
		-0.957247, -0.187643, 0.220153,
		35.156967, 33.497913, 43.767658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560577, 34.301853, 43.936047>,  <35.827042, 33.629265, 43.613548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560577, 34.301853, 43.936047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279156, 34.040813, 44.048561>,  <35.110302, 33.884190, 44.116070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279156, 34.040813, 44.048561>,  <35.560577, 34.301853, 43.936047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279156, 34.040813, 44.048561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192021, 0.555680, 0.808918,
		-0.684209, 0.515103, -0.516263,
		-0.703553, -0.652602, 0.281290,
		35.068089, 33.845032, 44.132950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957352, 34.632950, 44.181408>,  <35.560577, 34.301853, 43.936047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957352, 34.632950, 44.181408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915272, 34.275856, 44.356659>,  <34.890026, 34.061600, 44.461811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915272, 34.275856, 44.356659>,  <34.957352, 34.632950, 44.181408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915272, 34.275856, 44.356659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133693, 0.449273, 0.883335,
		-0.985424, 0.034349, -0.166614,
		-0.105197, -0.892734, 0.438132,
		34.883713, 34.008038, 44.488098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529118, 34.730324, 44.781845>,  <34.957352, 34.632950, 44.181408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529118, 34.730324, 44.781845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677620, 34.374924, 44.889721>,  <34.766720, 34.161682, 44.954445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677620, 34.374924, 44.889721>,  <34.529118, 34.730324, 44.781845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677620, 34.374924, 44.889721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004223, 0.292059, 0.956391,
		-0.928520, -0.353928, 0.112181,
		0.371257, -0.888502, 0.269688,
		34.788998, 34.108372, 44.970627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179363, 34.536430, 45.372784>,  <34.529118, 34.730324, 44.781845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179363, 34.536430, 45.372784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485870, 34.281464, 45.405109>,  <34.669773, 34.128483, 45.424507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485870, 34.281464, 45.405109>,  <34.179363, 34.536430, 45.372784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485870, 34.281464, 45.405109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059781, 0.195962, 0.978788,
		-0.639736, -0.745180, 0.188265,
		0.766266, -0.637421, 0.080816,
		34.715752, 34.090237, 45.429356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052414, 33.970444, 45.902660>,  <34.179363, 34.536430, 45.372784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052414, 33.970444, 45.902660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441311, 34.053104, 45.858772>,  <34.674648, 34.102699, 45.832439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441311, 34.053104, 45.858772>,  <34.052414, 33.970444, 45.902660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441311, 34.053104, 45.858772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063102, 0.219981, 0.973461,
		0.225340, -0.953357, 0.200831,
		0.972235, 0.206686, -0.109730,
		34.732983, 34.115101, 45.825855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361572, 33.627644, 46.500832>,  <34.052414, 33.970444, 45.902660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361572, 33.627644, 46.500832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608555, 33.916656, 46.376450>,  <34.756744, 34.090065, 46.301819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608555, 33.916656, 46.376450>,  <34.361572, 33.627644, 46.500832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608555, 33.916656, 46.376450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237247, 0.205841, 0.949391,
		0.749974, -0.659981, -0.044322,
		0.617457, 0.722534, -0.310954,
		34.793793, 34.133415, 46.283165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783600, 33.704472, 47.063107>,  <34.361572, 33.627644, 46.500832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783600, 33.704472, 47.063107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856464, 34.033409, 46.847488>,  <34.900181, 34.230770, 46.718117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856464, 34.033409, 46.847488>,  <34.783600, 33.704472, 47.063107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856464, 34.033409, 46.847488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330051, 0.465276, 0.821331,
		0.926221, -0.327524, -0.186662,
		0.182157, 0.822342, -0.539048,
		34.911110, 34.280113, 46.685776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453758, 33.948730, 47.159794>,  <34.783600, 33.704472, 47.063107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453758, 33.948730, 47.159794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247047, 34.272095, 47.047070>,  <35.123020, 34.466114, 46.979435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247047, 34.272095, 47.047070>,  <35.453758, 33.948730, 47.159794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247047, 34.272095, 47.047070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309373, 0.483268, 0.818987,
		0.798268, 0.336047, -0.499841,
		-0.516775, 0.808408, -0.281814,
		35.092014, 34.514618, 46.962524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802498, 34.475758, 47.500797>,  <35.453758, 33.948730, 47.159794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802498, 34.475758, 47.500797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437893, 34.612278, 47.409012>,  <35.219128, 34.694191, 47.353939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437893, 34.612278, 47.409012>,  <35.802498, 34.475758, 47.500797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437893, 34.612278, 47.409012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043254, 0.475296, 0.878762,
		0.408987, 0.810930, -0.418477,
		-0.911515, 0.341301, -0.229466,
		35.164440, 34.714668, 47.340172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341846, 34.814053, 47.206917>,  <35.802498, 34.475758, 47.500797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341846, 34.814053, 47.206917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686466, 34.840134, 47.408306>,  <36.893238, 34.855782, 47.529140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686466, 34.840134, 47.408306>,  <36.341846, 34.814053, 47.206917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686466, 34.840134, 47.408306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458190, -0.526929, -0.715827,
		0.218620, 0.847404, -0.483850,
		0.861549, 0.065202, 0.503469,
		36.944931, 34.859695, 47.559345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775082, 35.110435, 46.756573>,  <36.341846, 34.814053, 47.206917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775082, 35.110435, 46.756573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996590, 34.906418, 47.019840>,  <37.129494, 34.784008, 47.177803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996590, 34.906418, 47.019840>,  <36.775082, 35.110435, 46.756573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996590, 34.906418, 47.019840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455675, -0.475943, -0.752222,
		0.696919, 0.716473, -0.031150,
		0.553772, -0.510044, 0.658173,
		37.162720, 34.753407, 47.217293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412403, 35.187614, 46.637531>,  <36.775082, 35.110435, 46.756573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412403, 35.187614, 46.637531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395687, 34.832626, 46.821121>,  <37.385658, 34.619633, 46.931274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395687, 34.832626, 46.821121>,  <37.412403, 35.187614, 46.637531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395687, 34.832626, 46.821121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354446, -0.442662, -0.823662,
		0.934142, 0.128262, 0.333056,
		-0.041786, -0.887468, 0.458971,
		37.383152, 34.566387, 46.958813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927048, 34.923271, 46.351452>,  <37.412403, 35.187614, 46.637531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927048, 34.923271, 46.351452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768028, 34.601585, 46.528175>,  <37.672615, 34.408573, 46.634209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768028, 34.601585, 46.528175>,  <37.927048, 34.923271, 46.351452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768028, 34.601585, 46.528175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373740, -0.581663, -0.722486,
		0.838015, -0.122105, 0.531809,
		-0.397553, -0.804213, 0.441807,
		37.648762, 34.360321, 46.660717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403820, 34.405289, 46.332172>,  <37.927048, 34.923271, 46.351452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403820, 34.405289, 46.332172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054386, 34.219845, 46.391380>,  <37.844727, 34.108578, 46.426907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054386, 34.219845, 46.391380>,  <38.403820, 34.405289, 46.332172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054386, 34.219845, 46.391380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183766, -0.595876, -0.781769,
		0.450639, -0.655742, 0.605745,
		-0.873587, -0.463611, 0.148022,
		37.792309, 34.080761, 46.435787>
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
