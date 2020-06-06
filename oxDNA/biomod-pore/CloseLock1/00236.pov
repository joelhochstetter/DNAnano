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
	<23.907690, 34.910183, 35.148022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.210146, 35.124947, 34.998371>,  <24.391621, 35.253807, 34.908581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.210146, 35.124947, 34.998371>,  <23.907690, 34.910183, 35.148022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.210146, 35.124947, 34.998371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092633, 0.653768, 0.751004,
		0.647806, -0.533217, 0.544084,
		0.756153, 0.536905, -0.374121,
		24.436989, 35.286022, 34.886131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.657068, 35.000477, 35.539539>,  <23.907690, 34.910183, 35.148022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.657068, 35.000477, 35.539539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542589, 35.310162, 35.313728>,  <24.473902, 35.495972, 35.178242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542589, 35.310162, 35.313728>,  <24.657068, 35.000477, 35.539539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542589, 35.310162, 35.313728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049729, 0.576379, 0.815668,
		0.956879, 0.261516, -0.126458,
		-0.286198, 0.774207, -0.564530,
		24.456730, 35.542423, 35.144371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.950085, 34.736153, 34.905949>,  <24.657068, 35.000477, 35.539539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.950085, 34.736153, 34.905949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.578447, 34.656727, 34.781139>,  <24.355465, 34.609070, 34.706253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.578447, 34.656727, 34.781139>,  <24.950085, 34.736153, 34.905949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.578447, 34.656727, 34.781139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364541, -0.349235, -0.863218,
		0.062436, -0.915754, 0.396856,
		-0.929092, -0.198567, -0.312026,
		24.299721, 34.597157, 34.687531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.833385, 33.956398, 34.882092>,  <24.950085, 34.736153, 34.905949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.833385, 33.956398, 34.882092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609713, 34.163731, 34.623280>,  <24.475510, 34.288128, 34.467991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609713, 34.163731, 34.623280>,  <24.833385, 33.956398, 34.882092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.609713, 34.163731, 34.623280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351570, -0.558547, -0.751281,
		-0.750809, -0.647580, 0.130100,
		-0.559182, 0.518329, -0.647032,
		24.441957, 34.319229, 34.429169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.349789, 33.514992, 34.688835>,  <24.833385, 33.956398, 34.882092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.349789, 33.514992, 34.688835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687189, 33.560963, 34.478962>,  <25.889629, 33.588547, 34.353039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687189, 33.560963, 34.478962>,  <25.349789, 33.514992, 34.688835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687189, 33.560963, 34.478962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234783, -0.957469, 0.167723,
		-0.483094, -0.264662, -0.834610,
		0.843503, 0.114926, -0.524686,
		25.940239, 33.595440, 34.321556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379160, 33.014225, 34.107574>,  <25.349789, 33.514992, 34.688835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.379160, 33.014225, 34.107574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743183, 33.131142, 34.225124>,  <25.961597, 33.201290, 34.295654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743183, 33.131142, 34.225124>,  <25.379160, 33.014225, 34.107574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.743183, 33.131142, 34.225124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187434, -0.922593, 0.337181,
		0.369677, -0.251773, -0.894399,
		0.910059, 0.292288, 0.293871,
		26.016201, 33.218826, 34.313286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.723743, 32.410069, 34.254623>,  <25.379160, 33.014225, 34.107574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.723743, 32.410069, 34.254623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.059422, 32.607510, 34.345928>,  <26.260828, 32.725975, 34.400711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.059422, 32.607510, 34.345928>,  <25.723743, 32.410069, 34.254623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.059422, 32.607510, 34.345928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372435, -0.827498, 0.420166,
		0.396285, -0.267588, -0.878268,
		0.839197, 0.493603, 0.228266,
		26.311180, 32.755592, 34.414410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253986, 31.963917, 34.051243>,  <25.723743, 32.410069, 34.254623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253986, 31.963917, 34.051243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397451, 32.223301, 34.319828>,  <26.483530, 32.378933, 34.480980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397451, 32.223301, 34.319828>,  <26.253986, 31.963917, 34.051243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397451, 32.223301, 34.319828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357207, -0.759913, 0.543079,
		0.862417, 0.045068, -0.504188,
		0.358664, 0.648460, 0.671461,
		26.505051, 32.417839, 34.521267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035076, 31.937006, 34.089855>,  <26.253986, 31.963917, 34.051243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035076, 31.937006, 34.089855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.884371, 32.055454, 34.440937>,  <26.793947, 32.126522, 34.651585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.884371, 32.055454, 34.440937>,  <27.035076, 31.937006, 34.089855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.884371, 32.055454, 34.440937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612038, -0.631658, 0.475834,
		0.695311, 0.716465, 0.056750,
		-0.376765, 0.296119, 0.877703,
		26.771341, 32.144291, 34.704247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616447, 32.026466, 34.541756>,  <27.035076, 31.937006, 34.089855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616447, 32.026466, 34.541756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286774, 31.959974, 34.758305>,  <27.088970, 31.920078, 34.888233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286774, 31.959974, 34.758305>,  <27.616447, 32.026466, 34.541756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286774, 31.959974, 34.758305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456637, -0.760493, 0.461664,
		0.334968, 0.627708, 0.702694,
		-0.824184, -0.166233, 0.541375,
		27.039518, 31.910105, 34.920715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890791, 31.861197, 35.104420>,  <27.616447, 32.026466, 34.541756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890791, 31.861197, 35.104420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514706, 31.739426, 35.165512>,  <27.289055, 31.666363, 35.202168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514706, 31.739426, 35.165512>,  <27.890791, 31.861197, 35.104420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514706, 31.739426, 35.165512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340296, -0.821006, 0.458418,
		-0.014159, 0.482985, 0.875514,
		-0.940212, -0.304425, 0.152733,
		27.232641, 31.648098, 35.211330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803335, 31.614042, 35.795959>,  <27.890791, 31.861197, 35.104420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803335, 31.614042, 35.795959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485266, 31.455921, 35.612034>,  <27.294424, 31.361048, 35.501678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485266, 31.455921, 35.612034>,  <27.803335, 31.614042, 35.795959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485266, 31.455921, 35.612034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106024, -0.837256, 0.536434,
		-0.597040, 0.377807, 0.707676,
		-0.795174, -0.395303, -0.459818,
		27.246714, 31.337330, 35.474087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469046, 31.357199, 36.324997>,  <27.803335, 31.614042, 35.795959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469046, 31.357199, 36.324997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354528, 31.175962, 35.987301>,  <27.285818, 31.067221, 35.784683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354528, 31.175962, 35.987301>,  <27.469046, 31.357199, 36.324997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354528, 31.175962, 35.987301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189747, -0.890485, 0.413561,
		-0.939165, -0.041792, 0.340914,
		-0.286295, -0.453090, -0.844242,
		27.268641, 31.040035, 35.734028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103148, 30.718077, 36.497021>,  <27.469046, 31.357199, 36.324997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103148, 30.718077, 36.497021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215336, 30.662668, 36.117096>,  <27.282648, 30.629423, 35.889141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215336, 30.662668, 36.117096>,  <27.103148, 30.718077, 36.497021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215336, 30.662668, 36.117096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210999, -0.956430, 0.201793,
		-0.936385, -0.257007, -0.239021,
		0.280469, -0.138523, -0.949815,
		27.299477, 30.621111, 35.832150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871101, 30.021757, 36.315029>,  <27.103148, 30.718077, 36.497021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871101, 30.021757, 36.315029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138994, 30.082867, 36.024342>,  <27.299730, 30.119534, 35.849930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138994, 30.082867, 36.024342>,  <26.871101, 30.021757, 36.315029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138994, 30.082867, 36.024342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368073, -0.918235, 0.146172,
		-0.644967, -0.365381, -0.671203,
		0.669731, 0.152775, -0.726719,
		27.339914, 30.128700, 35.806328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801598, 29.462139, 35.962898>,  <26.871101, 30.021757, 36.315029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801598, 29.462139, 35.962898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.140444, 29.555140, 35.771759>,  <27.343752, 29.610939, 35.657074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.140444, 29.555140, 35.771759>,  <26.801598, 29.462139, 35.962898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.140444, 29.555140, 35.771759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300146, -0.951381, 0.069187,
		-0.438529, -0.202033, -0.875714,
		0.847116, 0.232501, -0.477848,
		27.394579, 29.624889, 35.628407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940042, 28.901926, 35.434673>,  <26.801598, 29.462139, 35.962898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940042, 28.901926, 35.434673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276840, 29.090281, 35.539982>,  <27.478918, 29.203293, 35.603168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276840, 29.090281, 35.539982>,  <26.940042, 28.901926, 35.434673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276840, 29.090281, 35.539982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468526, -0.880187, 0.075859,
		0.267452, 0.059479, -0.961734,
		0.841993, 0.470886, 0.263275,
		27.529438, 29.231546, 35.618965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446640, 28.591377, 35.081699>,  <26.940042, 28.901926, 35.434673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446640, 28.591377, 35.081699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645115, 28.789051, 35.367241>,  <27.764200, 28.907656, 35.538567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645115, 28.789051, 35.367241>,  <27.446640, 28.591377, 35.081699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645115, 28.789051, 35.367241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657122, -0.751127, 0.063234,
		0.567441, 0.437711, -0.697438,
		0.496186, 0.494184, 0.713850,
		27.793970, 28.937305, 35.581394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128897, 28.446970, 34.949329>,  <27.446640, 28.591377, 35.081699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128897, 28.446970, 34.949329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134438, 28.564781, 35.331547>,  <28.137762, 28.635468, 35.560879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134438, 28.564781, 35.331547>,  <28.128897, 28.446970, 34.949329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134438, 28.564781, 35.331547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757606, -0.626765, 0.182205,
		0.652565, 0.721401, -0.231819,
		0.013854, 0.294528, 0.955542,
		28.138594, 28.653139, 35.618210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854969, 28.618540, 35.162048>,  <28.128897, 28.446970, 34.949329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854969, 28.618540, 35.162048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635588, 28.540010, 35.487171>,  <28.503960, 28.492893, 35.682247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635588, 28.540010, 35.487171>,  <28.854969, 28.618540, 35.162048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635588, 28.540010, 35.487171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634616, -0.730682, 0.251728,
		0.544485, 0.653882, 0.525332,
		-0.548452, -0.196322, 0.812809,
		28.471052, 28.481113, 35.731014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315193, 28.569115, 35.667213>,  <28.854969, 28.618540, 35.162048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315193, 28.569115, 35.667213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983175, 28.372875, 35.773300>,  <28.783964, 28.255133, 35.836952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983175, 28.372875, 35.773300>,  <29.315193, 28.569115, 35.667213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983175, 28.372875, 35.773300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547425, -0.807578, 0.219416,
		0.106536, 0.327310, 0.938892,
		-0.830046, -0.490597, 0.265213,
		28.734161, 28.225697, 35.852863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623795, 28.482662, 36.254520>,  <29.315193, 28.569115, 35.667213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623795, 28.482662, 36.254520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290825, 28.262205, 36.231503>,  <29.091043, 28.129930, 36.217690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290825, 28.262205, 36.231503>,  <29.623795, 28.482662, 36.254520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290825, 28.262205, 36.231503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425438, -0.702181, 0.570915,
		-0.355065, 0.450761, 0.818990,
		-0.832425, -0.551141, -0.057549,
		29.041098, 28.096863, 36.214237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406862, 28.268353, 36.969109>,  <29.623795, 28.482662, 36.254520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406862, 28.268353, 36.969109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241188, 27.985947, 36.739326>,  <29.141785, 27.816504, 36.601460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241188, 27.985947, 36.739326>,  <29.406862, 28.268353, 36.969109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241188, 27.985947, 36.739326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606251, -0.684745, 0.404456,
		-0.678904, -0.180743, 0.711632,
		-0.414184, -0.706015, -0.574452,
		29.116932, 27.774141, 36.566990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171606, 27.738028, 37.421638>,  <29.406862, 28.268353, 36.969109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171606, 27.738028, 37.421638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180529, 27.549294, 37.069077>,  <29.185883, 27.436052, 36.857540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180529, 27.549294, 37.069077>,  <29.171606, 27.738028, 37.421638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180529, 27.549294, 37.069077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441956, -0.786148, 0.432026,
		-0.896759, -0.399179, 0.190995,
		0.022305, -0.471835, -0.881405,
		29.187220, 27.407743, 36.804657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811655, 27.090891, 37.493382>,  <29.171606, 27.738028, 37.421638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811655, 27.090891, 37.493382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076366, 27.071503, 37.194130>,  <29.235193, 27.059870, 37.014580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076366, 27.071503, 37.194130>,  <28.811655, 27.090891, 37.493382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076366, 27.071503, 37.194130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448055, -0.774510, 0.446521,
		-0.601078, -0.630702, -0.490836,
		0.661779, -0.048472, -0.748130,
		29.274900, 27.056961, 36.969692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901573, 26.432356, 37.223469>,  <28.811655, 27.090891, 37.493382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901573, 26.432356, 37.223469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243870, 26.634069, 37.177155>,  <29.449247, 26.755096, 37.149368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243870, 26.634069, 37.177155>,  <28.901573, 26.432356, 37.223469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243870, 26.634069, 37.177155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476330, -0.680454, 0.556858,
		0.202030, -0.531677, -0.822498,
		0.855741, 0.504283, -0.115782,
		29.500591, 26.785355, 37.142422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432392, 25.890926, 37.107388>,  <28.901573, 26.432356, 37.223469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432392, 25.890926, 37.107388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605154, 26.232079, 37.224724>,  <29.708811, 26.436769, 37.295124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605154, 26.232079, 37.224724>,  <29.432392, 25.890926, 37.107388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605154, 26.232079, 37.224724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691660, -0.521948, 0.499175,
		0.578846, -0.012706, -0.815338,
		0.431907, 0.852882, 0.293340,
		29.734726, 26.487944, 37.312725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165079, 25.912678, 36.904800>,  <29.432392, 25.890926, 37.107388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165079, 25.912678, 36.904800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090977, 26.113632, 37.242626>,  <30.046516, 26.234205, 37.445320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090977, 26.113632, 37.242626>,  <30.165079, 25.912678, 36.904800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090977, 26.113632, 37.242626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696924, -0.538745, 0.473341,
		0.692805, 0.676285, -0.250320,
		-0.185255, 0.502387, 0.844564,
		30.035400, 26.264349, 37.495995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820858, 26.343494, 36.925480>,  <30.165079, 25.912678, 36.904800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820858, 26.343494, 36.925480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612288, 26.250750, 37.253956>,  <30.487144, 26.195103, 37.451042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612288, 26.250750, 37.253956>,  <30.820858, 26.343494, 36.925480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612288, 26.250750, 37.253956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846443, -0.262269, 0.463410,
		0.107925, 0.936726, 0.333013,
		-0.521427, -0.231863, 0.821190,
		30.455860, 26.181190, 37.500313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205099, 26.671734, 37.452301>,  <30.820858, 26.343494, 36.925480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205099, 26.671734, 37.452301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013620, 26.332455, 37.542999>,  <30.898733, 26.128887, 37.597420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013620, 26.332455, 37.542999>,  <31.205099, 26.671734, 37.452301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013620, 26.332455, 37.542999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819574, -0.339068, 0.461879,
		-0.314882, 0.406934, 0.857469,
		-0.478695, -0.848197, 0.226746,
		30.870012, 26.077995, 37.611023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309090, 26.501844, 38.142170>,  <31.205099, 26.671734, 37.452301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309090, 26.501844, 38.142170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238144, 26.149881, 37.965851>,  <31.195576, 25.938704, 37.860058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238144, 26.149881, 37.965851>,  <31.309090, 26.501844, 38.142170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238144, 26.149881, 37.965851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771903, -0.402226, 0.492320,
		-0.610497, -0.252932, 0.750546,
		-0.177366, -0.879909, -0.440797,
		31.184935, 25.885908, 37.833611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725046, 26.794954, 38.641747>,  <31.309090, 26.501844, 38.142170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725046, 26.794954, 38.641747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444052, 26.871544, 38.915928>,  <31.275455, 26.917498, 39.080437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444052, 26.871544, 38.915928>,  <31.725046, 26.794954, 38.641747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444052, 26.871544, 38.915928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239006, 0.970665, -0.026199,
		-0.670365, 0.145424, -0.727641,
		-0.702486, 0.191473, 0.685457,
		31.233307, 26.928986, 39.121567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159275, 27.094778, 39.218090>,  <31.725046, 26.794954, 38.641747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159275, 27.094778, 39.218090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439484, 27.370998, 39.290096>,  <32.607609, 27.536732, 39.333298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439484, 27.370998, 39.290096>,  <32.159275, 27.094778, 39.218090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439484, 27.370998, 39.290096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579418, 0.697635, -0.421403,
		-0.416583, 0.190900, 0.888828,
		0.700523, 0.690553, 0.180012,
		32.649639, 27.578165, 39.344101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862438, 27.735878, 39.513474>,  <32.159275, 27.094778, 39.218090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862438, 27.735878, 39.513474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197754, 27.810099, 39.308399>,  <32.398945, 27.854631, 39.185356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197754, 27.810099, 39.308399>,  <31.862438, 27.735878, 39.513474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197754, 27.810099, 39.308399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450238, 0.765908, -0.458989,
		0.307501, 0.615595, 0.725594,
		0.838289, 0.185550, -0.512682,
		32.449242, 27.865765, 39.154594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942287, 28.412067, 39.453293>,  <31.862438, 27.735878, 39.513474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942287, 28.412067, 39.453293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174095, 28.300274, 39.147079>,  <32.313179, 28.233198, 38.963352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174095, 28.300274, 39.147079>,  <31.942287, 28.412067, 39.453293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174095, 28.300274, 39.147079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406378, 0.715136, -0.568716,
		0.706409, 0.640679, 0.300859,
		0.579520, -0.279484, -0.765536,
		32.347950, 28.216429, 38.917419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474571, 28.974293, 39.296173>,  <31.942287, 28.412067, 39.453293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474571, 28.974293, 39.296173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343098, 28.741156, 38.998917>,  <32.264214, 28.601274, 38.820564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343098, 28.741156, 38.998917>,  <32.474571, 28.974293, 39.296173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343098, 28.741156, 38.998917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575867, 0.747347, -0.331434,
		0.748592, 0.319072, -0.581208,
		-0.328613, -0.582808, -0.743202,
		32.244492, 28.566303, 38.775974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624744, 29.233898, 38.631599>,  <32.474571, 28.974293, 39.296173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624744, 29.233898, 38.631599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326778, 28.978199, 38.555218>,  <32.147999, 28.824780, 38.509388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326778, 28.978199, 38.555218>,  <32.624744, 29.233898, 38.631599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326778, 28.978199, 38.555218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410009, 0.664429, -0.624841,
		0.526301, -0.387162, -0.757042,
		-0.744915, -0.639248, -0.190950,
		32.103302, 28.786425, 38.497932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496075, 29.370155, 38.018524>,  <32.624744, 29.233898, 38.631599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496075, 29.370155, 38.018524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167446, 29.178211, 38.141659>,  <31.970270, 29.063046, 38.215538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167446, 29.178211, 38.141659>,  <32.496075, 29.370155, 38.018524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167446, 29.178211, 38.141659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568101, 0.734368, -0.371436,
		-0.047827, -0.480040, -0.875942,
		-0.821568, -0.479859, 0.307833,
		31.920977, 29.034254, 38.234009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030323, 29.572933, 37.513184>,  <32.496075, 29.370155, 38.018524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030323, 29.572933, 37.513184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793077, 29.453241, 37.812164>,  <31.650730, 29.381426, 37.991550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793077, 29.453241, 37.812164>,  <32.030323, 29.572933, 37.513184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793077, 29.453241, 37.812164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713076, 0.626281, -0.315112,
		-0.373821, -0.719884, -0.584829,
		-0.593111, -0.299232, 0.747449,
		31.615145, 29.363472, 38.036400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468573, 29.451288, 37.165466>,  <32.030323, 29.572933, 37.513184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468573, 29.451288, 37.165466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366671, 29.516146, 37.546791>,  <31.305531, 29.555059, 37.775585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366671, 29.516146, 37.546791>,  <31.468573, 29.451288, 37.165466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366671, 29.516146, 37.546791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591861, 0.753474, -0.286316,
		-0.764723, -0.637170, -0.095985,
		-0.254754, 0.162143, 0.953315,
		31.290245, 29.564789, 37.832787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723360, 29.423676, 37.143562>,  <31.468573, 29.451288, 37.165466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723360, 29.423676, 37.143562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851042, 29.633421, 37.459324>,  <30.927650, 29.759268, 37.648781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851042, 29.633421, 37.459324>,  <30.723360, 29.423676, 37.143562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851042, 29.633421, 37.459324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580043, 0.766827, -0.274819,
		-0.749439, -0.370163, 0.548927,
		0.319205, 0.524361, 0.789401,
		30.946804, 29.790730, 37.696144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048000, 29.778343, 37.513779>,  <30.723360, 29.423676, 37.143562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048000, 29.778343, 37.513779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369965, 29.972782, 37.649914>,  <30.563143, 30.089445, 37.731594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369965, 29.972782, 37.649914>,  <30.048000, 29.778343, 37.513779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369965, 29.972782, 37.649914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479511, 0.870676, -0.109508,
		-0.349552, -0.075049, 0.933906,
		0.804912, 0.486097, 0.340333,
		30.611439, 30.118610, 37.752014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801947, 30.367779, 38.021904>,  <30.048000, 29.778343, 37.513779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801947, 30.367779, 38.021904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170279, 30.453022, 37.891270>,  <30.391277, 30.504168, 37.812889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170279, 30.453022, 37.891270>,  <29.801947, 30.367779, 38.021904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170279, 30.453022, 37.891270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271081, 0.951842, -0.143218,
		0.280333, 0.220410, 0.934255,
		0.920830, 0.213110, -0.326582,
		30.446527, 30.516954, 37.793297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896448, 31.045238, 38.135300>,  <29.801947, 30.367779, 38.021904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896448, 31.045238, 38.135300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176128, 30.979107, 37.857079>,  <30.343937, 30.939428, 37.690147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176128, 30.979107, 37.857079>,  <29.896448, 31.045238, 38.135300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176128, 30.979107, 37.857079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196490, 0.890990, -0.409303,
		0.687395, 0.422853, 0.590495,
		0.699200, -0.165327, -0.695548,
		30.385889, 30.929508, 37.648415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227093, 31.596281, 38.129154>,  <29.896448, 31.045238, 38.135300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227093, 31.596281, 38.129154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300726, 31.446678, 37.765564>,  <30.344906, 31.356916, 37.547409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300726, 31.446678, 37.765564>,  <30.227093, 31.596281, 38.129154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300726, 31.446678, 37.765564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118411, 0.909603, -0.398248,
		0.975752, 0.180942, 0.123154,
		0.184081, -0.374009, -0.908973,
		30.355949, 31.334476, 37.492870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681925, 32.163254, 37.810696>,  <30.227093, 31.596281, 38.129154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681925, 32.163254, 37.810696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579575, 31.911419, 37.517262>,  <30.518166, 31.760317, 37.341202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579575, 31.911419, 37.517262>,  <30.681925, 32.163254, 37.810696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579575, 31.911419, 37.517262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137146, 0.774811, -0.617138,
		0.956933, -0.057301, -0.284599,
		-0.255873, -0.629591, -0.733583,
		30.502813, 31.722542, 37.297188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129799, 32.362122, 37.315155>,  <30.681925, 32.163254, 37.810696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129799, 32.362122, 37.315155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805866, 32.184311, 37.162014>,  <30.611507, 32.077625, 37.070129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805866, 32.184311, 37.162014>,  <31.129799, 32.362122, 37.315155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805866, 32.184311, 37.162014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051956, 0.704363, -0.707937,
		0.584359, -0.553417, -0.593510,
		-0.809830, -0.444526, -0.382847,
		30.562918, 32.050953, 37.047161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185339, 32.475708, 36.584782>,  <31.129799, 32.362122, 37.315155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185339, 32.475708, 36.584782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798201, 32.381310, 36.619614>,  <30.565918, 32.324669, 36.640511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798201, 32.381310, 36.619614>,  <31.185339, 32.475708, 36.584782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798201, 32.381310, 36.619614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232597, 0.707774, -0.667049,
		0.095790, -0.665854, -0.739907,
		-0.967844, -0.235997, 0.087078,
		30.507847, 32.310509, 36.645737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880829, 32.399204, 35.919659>,  <31.185339, 32.475708, 36.584782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880829, 32.399204, 35.919659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593109, 32.490444, 36.182133>,  <30.420477, 32.545189, 36.339619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593109, 32.490444, 36.182133>,  <30.880829, 32.399204, 35.919659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593109, 32.490444, 36.182133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375315, 0.667253, -0.643360,
		-0.584590, -0.709045, -0.394348,
		-0.719301, 0.228097, 0.656184,
		30.377319, 32.558872, 36.378986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342915, 32.451092, 35.447113>,  <30.880829, 32.399204, 35.919659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342915, 32.451092, 35.447113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173483, 32.611225, 35.772152>,  <30.071823, 32.707306, 35.967175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173483, 32.611225, 35.772152>,  <30.342915, 32.451092, 35.447113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173483, 32.611225, 35.772152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601790, 0.546125, -0.582749,
		-0.677073, -0.735854, 0.009589,
		-0.423581, 0.400334, 0.812596,
		30.046408, 32.731327, 36.015930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535128, 32.344040, 35.321304>,  <30.342915, 32.451092, 35.447113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535128, 32.344040, 35.321304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585131, 32.643234, 35.582039>,  <29.615131, 32.822750, 35.738480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585131, 32.643234, 35.582039>,  <29.535128, 32.344040, 35.321304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585131, 32.643234, 35.582039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797688, 0.466439, -0.382268,
		-0.589973, -0.472173, 0.654970,
		0.125007, 0.747989, 0.651833,
		29.622633, 32.867630, 35.777588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932545, 32.358780, 35.472408>,  <29.535128, 32.344040, 35.321304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932545, 32.358780, 35.472408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135696, 32.696968, 35.538422>,  <29.257587, 32.899883, 35.578030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135696, 32.696968, 35.538422>,  <28.932545, 32.358780, 35.472408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135696, 32.696968, 35.538422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687852, 0.513360, -0.513148,
		-0.518574, 0.147098, 0.842285,
		0.507878, 0.845473, 0.165033,
		29.288059, 32.950611, 35.587933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391846, 32.787697, 35.744629>,  <28.932545, 32.358780, 35.472408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391846, 32.787697, 35.744629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688267, 33.033752, 35.636971>,  <28.866119, 33.181385, 35.572376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688267, 33.033752, 35.636971>,  <28.391846, 32.787697, 35.744629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688267, 33.033752, 35.636971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638686, 0.522112, -0.565225,
		-0.207169, 0.590762, 0.779795,
		0.741054, 0.615141, -0.269146,
		28.910583, 33.218296, 35.556225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110382, 33.405960, 35.826603>,  <28.391846, 32.787697, 35.744629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110382, 33.405960, 35.826603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427876, 33.472610, 35.592602>,  <28.618372, 33.512600, 35.452202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427876, 33.472610, 35.592602>,  <28.110382, 33.405960, 35.826603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427876, 33.472610, 35.592602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581457, 0.490233, -0.649291,
		0.178599, 0.855516, 0.485998,
		0.793732, 0.166624, -0.585001,
		28.665995, 33.522598, 35.417103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119123, 34.037708, 35.632629>,  <28.110382, 33.405960, 35.826603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119123, 34.037708, 35.632629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332275, 33.862171, 35.343227>,  <28.460167, 33.756851, 35.169586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332275, 33.862171, 35.343227>,  <28.119123, 34.037708, 35.632629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332275, 33.862171, 35.343227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483875, 0.543401, -0.685989,
		0.694192, 0.715636, 0.077224,
		0.532882, -0.438840, -0.723503,
		28.492140, 33.730518, 35.126175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394850, 34.613976, 35.089230>,  <28.119123, 34.037708, 35.632629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394850, 34.613976, 35.089230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399002, 34.250469, 34.922363>,  <28.401493, 34.032364, 34.822243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399002, 34.250469, 34.922363>,  <28.394850, 34.613976, 35.089230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399002, 34.250469, 34.922363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341452, 0.388892, -0.855672,
		0.939842, 0.151327, -0.306263,
		0.010383, -0.908770, -0.417168,
		28.402117, 33.977837, 34.797215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811720, 34.663166, 34.565105>,  <28.394850, 34.613976, 35.089230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811720, 34.663166, 34.565105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544254, 34.372215, 34.503376>,  <28.383776, 34.197647, 34.466339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544254, 34.372215, 34.503376>,  <28.811720, 34.663166, 34.565105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544254, 34.372215, 34.503376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444483, 0.557387, -0.701252,
		0.596094, -0.400305, -0.696009,
		-0.668661, -0.727376, -0.154326,
		28.343655, 34.154003, 34.457081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974844, 34.287224, 33.946953>,  <28.811720, 34.663166, 34.565105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974844, 34.287224, 33.946953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587301, 34.307579, 34.043884>,  <28.354774, 34.319790, 34.102043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587301, 34.307579, 34.043884>,  <28.974844, 34.287224, 33.946953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587301, 34.307579, 34.043884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189966, 0.474982, -0.859246,
		-0.158826, -0.878523, -0.450524,
		-0.968858, 0.050886, 0.242329,
		28.296644, 34.322845, 34.116585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602785, 34.590687, 33.854191>,  <28.974844, 34.287224, 33.946953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602785, 34.590687, 33.854191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809315, 34.840332, 33.619621>,  <29.933231, 34.990120, 33.478878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809315, 34.840332, 33.619621>,  <29.602785, 34.590687, 33.854191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809315, 34.840332, 33.619621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486056, 0.350220, 0.800684,
		0.705096, -0.698446, -0.122528,
		0.516324, 0.624115, -0.586423,
		29.964212, 35.027565, 33.443695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487154, 34.699078, 34.020008>,  <29.602785, 34.590687, 33.854191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487154, 34.699078, 34.020008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321592, 35.020077, 33.848106>,  <30.222256, 35.212677, 33.744965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321592, 35.020077, 33.848106>,  <30.487154, 34.699078, 34.020008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321592, 35.020077, 33.848106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426460, 0.588017, 0.687290,
		0.804249, 0.101198, -0.585613,
		-0.413903, 0.802493, -0.429754,
		30.197422, 35.260826, 33.719181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934847, 35.095921, 33.599762>,  <30.487154, 34.699078, 34.020008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934847, 35.095921, 33.599762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648397, 35.283958, 33.806133>,  <30.476528, 35.396782, 33.929955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648397, 35.283958, 33.806133>,  <30.934847, 35.095921, 33.599762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648397, 35.283958, 33.806133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697960, 0.486818, 0.525223,
		-0.004259, 0.736221, -0.676728,
		-0.716124, 0.470092, 0.515926,
		30.433559, 35.424988, 33.960911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215357, 35.809902, 33.781036>,  <30.934847, 35.095921, 33.599762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215357, 35.809902, 33.781036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914007, 35.720684, 34.028481>,  <30.733196, 35.667152, 34.176949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914007, 35.720684, 34.028481>,  <31.215357, 35.809902, 33.781036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914007, 35.720684, 34.028481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508062, 0.399821, 0.762900,
		-0.417492, 0.889042, -0.187896,
		-0.753375, -0.223042, 0.618610,
		30.687994, 35.653770, 34.214062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917871, 36.412510, 34.196136>,  <31.215357, 35.809902, 33.781036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917871, 36.412510, 34.196136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932255, 36.064159, 34.392208>,  <30.940886, 35.855148, 34.509850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932255, 36.064159, 34.392208>,  <30.917871, 36.412510, 34.196136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932255, 36.064159, 34.392208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392270, 0.463432, 0.794579,
		-0.919147, 0.163710, 0.358284,
		0.035959, -0.870879, 0.490180,
		30.943043, 35.802895, 34.539261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730902, 36.542747, 34.853752>,  <30.917871, 36.412510, 34.196136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730902, 36.542747, 34.853752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917397, 36.190559, 34.888134>,  <31.029293, 35.979244, 34.908764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917397, 36.190559, 34.888134>,  <30.730902, 36.542747, 34.853752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917397, 36.190559, 34.888134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503688, 0.344071, 0.792410,
		-0.727270, -0.326158, 0.603903,
		0.466237, -0.880475, 0.085951,
		31.057268, 35.926418, 34.913918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530523, 36.233322, 35.585892>,  <30.730902, 36.542747, 34.853752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530523, 36.233322, 35.585892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887171, 36.107197, 35.455910>,  <31.101158, 36.031521, 35.377918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887171, 36.107197, 35.455910>,  <30.530523, 36.233322, 35.585892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887171, 36.107197, 35.455910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432353, 0.379698, 0.817863,
		-0.134497, -0.869717, 0.474871,
		0.891617, -0.315312, -0.324957,
		31.154655, 36.012604, 35.358421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829184, 35.704536, 36.190990>,  <30.530523, 36.233322, 35.585892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829184, 35.704536, 36.190990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129663, 35.854176, 35.973461>,  <31.309952, 35.943958, 35.842945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129663, 35.854176, 35.973461>,  <30.829184, 35.704536, 36.190990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129663, 35.854176, 35.973461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580573, 0.017526, 0.814020,
		0.314056, -0.927223, -0.204027,
		0.751202, 0.374100, -0.543824,
		31.355024, 35.966404, 35.810314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439800, 35.415558, 36.407379>,  <30.829184, 35.704536, 36.190990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439800, 35.415558, 36.407379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575678, 35.738800, 36.214890>,  <31.657204, 35.932747, 36.099396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575678, 35.738800, 36.214890>,  <31.439800, 35.415558, 36.407379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575678, 35.738800, 36.214890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661547, 0.158404, 0.732983,
		0.668554, -0.567340, -0.480791,
		0.339692, 0.808105, -0.481224,
		31.677586, 35.981232, 36.070522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141090, 35.299030, 36.464256>,  <31.439800, 35.415558, 36.407379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141090, 35.299030, 36.464256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066517, 35.688057, 36.408588>,  <32.021774, 35.921471, 36.375187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066517, 35.688057, 36.408588>,  <32.141090, 35.299030, 36.464256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066517, 35.688057, 36.408588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690713, 0.230479, 0.685416,
		0.698685, 0.031659, -0.714729,
		-0.186430, 0.972562, -0.139165,
		32.010590, 35.979824, 36.366840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789192, 35.573406, 36.409779>,  <32.141090, 35.299030, 36.464256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789192, 35.573406, 36.409779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589813, 35.915623, 36.465767>,  <32.470184, 36.120953, 36.499359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589813, 35.915623, 36.465767>,  <32.789192, 35.573406, 36.409779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589813, 35.915623, 36.465767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685225, 0.289910, 0.668145,
		0.531050, 0.428947, -0.730747,
		-0.498450, 0.855545, 0.139969,
		32.440277, 36.172287, 36.507759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382160, 36.110378, 36.416763>,  <32.789192, 35.573406, 36.409779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382160, 36.110378, 36.416763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040695, 36.218006, 36.595139>,  <32.835815, 36.282581, 36.702164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040695, 36.218006, 36.595139>,  <33.382160, 36.110378, 36.416763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040695, 36.218006, 36.595139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505808, 0.224204, 0.833001,
		0.124153, 0.936662, -0.327491,
		-0.853665, 0.269067, 0.445935,
		32.784595, 36.298725, 36.728920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575611, 36.777138, 36.590942>,  <33.382160, 36.110378, 36.416763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575611, 36.777138, 36.590942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286526, 36.644966, 36.833759>,  <33.113075, 36.565662, 36.979450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286526, 36.644966, 36.833759>,  <33.575611, 36.777138, 36.590942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286526, 36.644966, 36.833759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644320, -0.004317, 0.764744,
		-0.250072, 0.943821, 0.216021,
		-0.722714, -0.330428, 0.607043,
		33.069710, 36.545837, 37.015873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692486, 37.198772, 37.112579>,  <33.575611, 36.777138, 36.590942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692486, 37.198772, 37.112579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455078, 36.914940, 37.264488>,  <33.312634, 36.744640, 37.355633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455078, 36.914940, 37.264488>,  <33.692486, 37.198772, 37.112579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455078, 36.914940, 37.264488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423027, 0.126391, 0.897259,
		-0.684681, 0.693192, 0.225158,
		-0.593515, -0.709584, 0.379776,
		33.277023, 36.702065, 37.378422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549644, 37.492672, 37.736847>,  <33.692486, 37.198772, 37.112579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549644, 37.492672, 37.736847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465084, 37.103085, 37.769581>,  <33.414349, 36.869331, 37.789223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465084, 37.103085, 37.769581>,  <33.549644, 37.492672, 37.736847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465084, 37.103085, 37.769581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573966, -0.055935, 0.816966,
		-0.791122, 0.219675, 0.570850,
		-0.211397, -0.973968, 0.081835,
		33.401665, 36.810894, 37.794132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501205, 37.436699, 38.438545>,  <33.549644, 37.492672, 37.736847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501205, 37.436699, 38.438545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555546, 37.058521, 38.320103>,  <33.588150, 36.831615, 38.249035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555546, 37.058521, 38.320103>,  <33.501205, 37.436699, 38.438545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555546, 37.058521, 38.320103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525423, -0.184632, 0.830567,
		-0.839926, -0.268416, 0.471675,
		0.135851, -0.945444, -0.296109,
		33.596302, 36.774887, 38.231270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304840, 36.966515, 39.048695>,  <33.501205, 37.436699, 38.438545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304840, 36.966515, 39.048695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536381, 36.782570, 38.779335>,  <33.675304, 36.672203, 38.617722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536381, 36.782570, 38.779335>,  <33.304840, 36.966515, 39.048695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536381, 36.782570, 38.779335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558842, -0.377666, 0.738285,
		-0.593826, -0.803677, 0.038377,
		0.578849, -0.459860, -0.673397,
		33.710037, 36.644611, 38.577316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308914, 36.231319, 39.238731>,  <33.304840, 36.966515, 39.048695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308914, 36.231319, 39.238731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645782, 36.258663, 39.024792>,  <33.847904, 36.275070, 38.896427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645782, 36.258663, 39.024792>,  <33.308914, 36.231319, 39.238731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645782, 36.258663, 39.024792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530394, -0.283594, 0.798910,
		-0.097071, -0.956505, -0.275091,
		0.842175, 0.068355, -0.534854,
		33.898434, 36.279171, 38.864334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666996, 35.794106, 39.593834>,  <33.308914, 36.231319, 39.238731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666996, 35.794106, 39.593834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945286, 35.992641, 39.386135>,  <34.112259, 36.111763, 39.261517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945286, 35.992641, 39.386135>,  <33.666996, 35.794106, 39.593834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945286, 35.992641, 39.386135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683388, -0.234697, 0.691302,
		0.221252, -0.835803, -0.502475,
		0.695721, 0.496337, -0.519251,
		34.154003, 36.141544, 39.230358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214252, 35.390636, 39.585003>,  <33.666996, 35.794106, 39.593834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214252, 35.390636, 39.585003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363430, 35.755325, 39.516087>,  <34.452938, 35.974136, 39.474739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363430, 35.755325, 39.516087>,  <34.214252, 35.390636, 39.585003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363430, 35.755325, 39.516087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616929, -0.104965, 0.779988,
		0.693045, -0.397181, -0.601611,
		0.372945, 0.911718, -0.172287,
		34.475315, 36.028839, 39.464401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902897, 35.283310, 39.606834>,  <34.214252, 35.390636, 39.585003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902897, 35.283310, 39.606834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849220, 35.673607, 39.676022>,  <34.817017, 35.907784, 39.717533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849220, 35.673607, 39.676022>,  <34.902897, 35.283310, 39.606834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849220, 35.673607, 39.676022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612224, -0.055617, 0.788726,
		0.779214, 0.211733, -0.589911,
		-0.134190, 0.975744, 0.172966,
		34.808964, 35.966331, 39.727913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562206, 35.502853, 39.809616>,  <34.902897, 35.283310, 39.606834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562206, 35.502853, 39.809616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317093, 35.790268, 39.941185>,  <35.170025, 35.962719, 40.020126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317093, 35.790268, 39.941185>,  <35.562206, 35.502853, 39.809616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317093, 35.790268, 39.941185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424548, -0.051722, 0.903927,
		0.666521, 0.693559, -0.273360,
		-0.612787, 0.718541, 0.328923,
		35.133255, 36.005829, 40.039864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952415, 35.978897, 40.207970>,  <35.562206, 35.502853, 39.809616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952415, 35.978897, 40.207970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570358, 36.031075, 40.314320>,  <35.341125, 36.062382, 40.378128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570358, 36.031075, 40.314320>,  <35.952415, 35.978897, 40.207970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570358, 36.031075, 40.314320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268460, 0.002336, 0.963288,
		0.125037, 0.991453, -0.037251,
		-0.955141, 0.130448, 0.265874,
		35.283817, 36.070210, 40.394081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058510, 36.442898, 40.751549>,  <35.952415, 35.978897, 40.207970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058510, 36.442898, 40.751549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683025, 36.330074, 40.830803>,  <35.457733, 36.262379, 40.878353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683025, 36.330074, 40.830803>,  <36.058510, 36.442898, 40.751549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683025, 36.330074, 40.830803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193105, 0.045812, 0.980108,
		-0.285527, 0.958302, 0.011463,
		-0.938714, -0.282061, 0.198134,
		35.401409, 36.245457, 40.890244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803673, 36.843353, 41.342869>,  <36.058510, 36.442898, 40.751549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803673, 36.843353, 41.342869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524696, 36.556709, 41.340069>,  <35.357311, 36.384724, 41.338390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524696, 36.556709, 41.340069>,  <35.803673, 36.843353, 41.342869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524696, 36.556709, 41.340069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022144, 0.011788, 0.999685,
		-0.716302, 0.697375, -0.024090,
		-0.697439, -0.716610, -0.006999,
		35.315464, 36.341728, 41.337971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399204, 37.067627, 41.908630>,  <35.803673, 36.843353, 41.342869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399204, 37.067627, 41.908630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341003, 36.674644, 41.861980>,  <35.306084, 36.438854, 41.833992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341003, 36.674644, 41.861980>,  <35.399204, 37.067627, 41.908630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341003, 36.674644, 41.861980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007267, -0.116815, 0.993127,
		-0.989331, 0.145350, 0.009858,
		-0.145503, -0.982460, -0.116625,
		35.297352, 36.379906, 41.826992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867455, 36.896198, 42.350151>,  <35.399204, 37.067627, 41.908630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867455, 36.896198, 42.350151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043926, 36.549107, 42.258587>,  <35.149811, 36.340851, 42.203648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043926, 36.549107, 42.258587>,  <34.867455, 36.896198, 42.350151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043926, 36.549107, 42.258587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172952, -0.332507, 0.927106,
		-0.880594, -0.369432, -0.296772,
		0.441182, -0.867732, -0.228909,
		35.176281, 36.288788, 42.189915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456291, 36.405514, 42.526546>,  <34.867455, 36.896198, 42.350151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456291, 36.405514, 42.526546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807220, 36.215748, 42.497597>,  <35.017776, 36.101887, 42.480228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807220, 36.215748, 42.497597>,  <34.456291, 36.405514, 42.526546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807220, 36.215748, 42.497597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096854, -0.322737, 0.941520,
		-0.470032, -0.819004, -0.329093,
		0.877319, -0.474419, -0.072373,
		35.070415, 36.073421, 42.475883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385368, 35.844662, 42.816914>,  <34.456291, 36.405514, 42.526546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385368, 35.844662, 42.816914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784466, 35.870701, 42.823505>,  <35.023926, 35.886322, 42.827461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784466, 35.870701, 42.823505>,  <34.385368, 35.844662, 42.816914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784466, 35.870701, 42.823505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008963, -0.372360, 0.928045,
		0.066548, -0.925803, -0.372103,
		0.997743, 0.065094, 0.016482,
		35.083790, 35.890228, 42.828449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601383, 35.145962, 43.196766>,  <34.385368, 35.844662, 42.816914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601383, 35.145962, 43.196766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926273, 35.378727, 43.180424>,  <35.121208, 35.518387, 43.170620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926273, 35.378727, 43.180424>,  <34.601383, 35.145962, 43.196766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926273, 35.378727, 43.180424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183418, -0.188271, 0.964838,
		0.553758, -0.791159, -0.259651,
		0.812225, 0.581911, -0.040856,
		35.169941, 35.553299, 43.168167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155010, 34.699421, 43.397938>,  <34.601383, 35.145962, 43.196766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155010, 34.699421, 43.397938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225975, 35.089508, 43.450825>,  <35.268555, 35.323559, 43.482555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225975, 35.089508, 43.450825>,  <35.155010, 34.699421, 43.397938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225975, 35.089508, 43.450825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072449, -0.146923, 0.986491,
		0.981467, -0.165432, -0.096718,
		0.177408, 0.975216, 0.132215,
		35.279198, 35.382072, 43.490490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753887, 34.813614, 43.887764>,  <35.155010, 34.699421, 43.397938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753887, 34.813614, 43.887764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518917, 35.137291, 43.882977>,  <35.377937, 35.331497, 43.880104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518917, 35.137291, 43.882977>,  <35.753887, 34.813614, 43.887764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518917, 35.137291, 43.882977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018239, 0.028018, 0.999441,
		0.809075, 0.586876, -0.031217,
		-0.587423, 0.809192, -0.011964,
		35.342690, 35.380047, 43.879387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057533, 35.159302, 44.491276>,  <35.753887, 34.813614, 43.887764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057533, 35.159302, 44.491276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721436, 35.357010, 44.402107>,  <35.519779, 35.475636, 44.348606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721436, 35.357010, 44.402107>,  <36.057533, 35.159302, 44.491276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721436, 35.357010, 44.402107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236418, 0.036018, 0.970984,
		0.487958, 0.868562, 0.086590,
		-0.840240, 0.494271, -0.222919,
		35.469364, 35.505291, 44.335232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101059, 35.743587, 44.823425>,  <36.057533, 35.159302, 44.491276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101059, 35.743587, 44.823425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708679, 35.769047, 44.750000>,  <35.473251, 35.784321, 44.705944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708679, 35.769047, 44.750000>,  <36.101059, 35.743587, 44.823425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708679, 35.769047, 44.750000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175181, 0.118809, 0.977341,
		0.084010, 0.990876, -0.105396,
		-0.980945, 0.063643, -0.183564,
		35.414394, 35.788139, 44.694931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772316, 36.369553, 45.191750>,  <36.101059, 35.743587, 44.823425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772316, 36.369553, 45.191750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501446, 36.083229, 45.123573>,  <35.338924, 35.911434, 45.082668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501446, 36.083229, 45.123573>,  <35.772316, 36.369553, 45.191750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501446, 36.083229, 45.123573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189854, -0.053823, 0.980336,
		-0.710907, 0.696219, -0.099452,
		-0.677176, -0.715809, -0.170443,
		35.298294, 35.868484, 45.072441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199699, 36.569332, 45.557064>,  <35.772316, 36.369553, 45.191750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199699, 36.569332, 45.557064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155243, 36.174374, 45.511978>,  <35.128571, 35.937401, 45.484928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155243, 36.174374, 45.511978>,  <35.199699, 36.569332, 45.557064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155243, 36.174374, 45.511978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170083, -0.092845, 0.981046,
		-0.979142, 0.128205, -0.157620,
		-0.111140, -0.987392, -0.112714,
		35.121902, 35.878155, 45.478165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724491, 36.377735, 46.101322>,  <35.199699, 36.569332, 45.557064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724491, 36.377735, 46.101322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859821, 36.013638, 46.005836>,  <34.941021, 35.795177, 45.948544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859821, 36.013638, 46.005836>,  <34.724491, 36.377735, 46.101322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859821, 36.013638, 46.005836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031838, -0.242455, 0.969640,
		-0.940489, -0.335658, -0.053049,
		0.338330, -0.910247, -0.238713,
		34.961319, 35.740562, 45.934223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247234, 35.980427, 46.414082>,  <34.724491, 36.377735, 46.101322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247234, 35.980427, 46.414082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565853, 35.752232, 46.334026>,  <34.757023, 35.615314, 46.285992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565853, 35.752232, 46.334026>,  <34.247234, 35.980427, 46.414082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565853, 35.752232, 46.334026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031855, -0.290973, 0.956201,
		-0.603740, -0.768032, -0.213600,
		0.796545, -0.570492, -0.200138,
		34.804817, 35.581085, 46.273987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137436, 35.381844, 46.831730>,  <34.247234, 35.980427, 46.414082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137436, 35.381844, 46.831730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529964, 35.378178, 46.754860>,  <34.765480, 35.375977, 46.708740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529964, 35.378178, 46.754860>,  <34.137436, 35.381844, 46.831730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529964, 35.378178, 46.754860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187107, -0.186998, 0.964377,
		-0.044774, -0.982318, -0.181790,
		0.981318, -0.009165, -0.192172,
		34.824360, 35.375427, 46.697208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457451, 34.738617, 46.955879>,  <34.137436, 35.381844, 46.831730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457451, 34.738617, 46.955879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760605, 34.990677, 47.023422>,  <34.942497, 35.141914, 47.063950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760605, 34.990677, 47.023422>,  <34.457451, 34.738617, 46.955879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760605, 34.990677, 47.023422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037861, -0.300880, 0.952910,
		0.651286, -0.715805, -0.251891,
		0.757887, 0.630154, 0.168858,
		34.987972, 35.179722, 47.074081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155655, 34.416157, 46.962387>,  <34.457451, 34.738617, 46.955879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155655, 34.416157, 46.962387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146011, 34.728558, 47.212013>,  <35.140224, 34.915997, 47.361790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146011, 34.728558, 47.212013>,  <35.155655, 34.416157, 46.962387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146011, 34.728558, 47.212013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305970, -0.588529, 0.748342,
		0.951735, 0.208990, -0.224772,
		-0.024111, 0.780997, 0.624069,
		35.138779, 34.962856, 47.399235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765682, 34.320858, 47.363224>,  <35.155655, 34.416157, 46.962387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765682, 34.320858, 47.363224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528248, 34.555950, 47.583126>,  <35.385788, 34.697006, 47.715065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528248, 34.555950, 47.583126>,  <35.765682, 34.320858, 47.363224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528248, 34.555950, 47.583126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307301, -0.465822, 0.829805,
		0.743792, 0.661497, 0.095893,
		-0.593582, 0.587734, 0.549753,
		35.350174, 34.732269, 47.748051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170063, 34.527039, 48.010681>,  <35.765682, 34.320858, 47.363224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170063, 34.527039, 48.010681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800484, 34.636036, 48.118069>,  <35.578735, 34.701435, 48.182499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800484, 34.636036, 48.118069>,  <36.170063, 34.527039, 48.010681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800484, 34.636036, 48.118069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174092, -0.325381, 0.929419,
		0.340616, 0.905468, 0.253195,
		-0.923944, 0.272495, 0.268464,
		35.523300, 34.717785, 48.198608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301315, 34.927944, 48.579407>,  <36.170063, 34.527039, 48.010681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301315, 34.927944, 48.579407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921059, 34.803829, 48.580608>,  <35.692905, 34.729362, 48.581329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921059, 34.803829, 48.580608>,  <36.301315, 34.927944, 48.579407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921059, 34.803829, 48.580608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072814, -0.213666, 0.974190,
		-0.301636, 0.926321, 0.225712,
		-0.950639, -0.310285, 0.003000,
		35.635868, 34.710743, 48.581509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035461, 35.283974, 49.080280>,  <36.301315, 34.927944, 48.579407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035461, 35.283974, 49.080280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742741, 35.013645, 49.045109>,  <35.567108, 34.851448, 49.024006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742741, 35.013645, 49.045109>,  <36.035461, 35.283974, 49.080280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742741, 35.013645, 49.045109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111383, -0.008687, 0.993740,
		-0.672351, 0.737017, -0.068918,
		-0.731804, -0.675819, -0.087931,
		35.523201, 34.810898, 49.018730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552139, 35.356281, 49.651039>,  <36.035461, 35.283974, 49.080280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552139, 35.356281, 49.651039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467617, 34.985886, 49.525887>,  <35.416904, 34.763649, 49.450794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467617, 34.985886, 49.525887>,  <35.552139, 35.356281, 49.651039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467617, 34.985886, 49.525887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292030, -0.245680, 0.924316,
		-0.932775, 0.286681, -0.218503,
		-0.211302, -0.925989, -0.312883,
		35.404228, 34.708088, 49.432022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891766, 35.099125, 49.852077>,  <35.552139, 35.356281, 49.651039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891766, 35.099125, 49.852077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115704, 34.772556, 49.795467>,  <35.250065, 34.576614, 49.761501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115704, 34.772556, 49.795467>,  <34.891766, 35.099125, 49.852077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115704, 34.772556, 49.795467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227956, -0.315962, 0.920980,
		-0.796627, -0.483341, -0.362997,
		0.559840, -0.816425, -0.141524,
		35.283657, 34.527630, 49.753010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464821, 34.479710, 49.938450>,  <34.891766, 35.099125, 49.852077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464821, 34.479710, 49.938450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851944, 34.406170, 50.007214>,  <35.084217, 34.362045, 50.048473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851944, 34.406170, 50.007214>,  <34.464821, 34.479710, 49.938450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851944, 34.406170, 50.007214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227599, -0.347551, 0.909619,
		-0.107488, -0.919460, -0.378206,
		0.967804, -0.183852, 0.171910,
		35.142284, 34.351013, 50.058788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587067, 33.715462, 50.059837>,  <34.464821, 34.479710, 49.938450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587067, 33.715462, 50.059837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823570, 33.974854, 50.251621>,  <34.965473, 34.130489, 50.366692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823570, 33.974854, 50.251621>,  <34.587067, 33.715462, 50.059837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823570, 33.974854, 50.251621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440077, -0.238763, 0.865635,
		0.675827, -0.722814, 0.144212,
		0.591261, 0.648484, 0.479457,
		35.000950, 34.169399, 50.395458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211880, 33.358841, 50.441883>,  <34.587067, 33.715462, 50.059837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211880, 33.358841, 50.441883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094173, 33.697334, 50.619556>,  <35.023552, 33.900429, 50.726162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094173, 33.697334, 50.619556>,  <35.211880, 33.358841, 50.441883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094173, 33.697334, 50.619556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305294, -0.523641, 0.795359,
		0.905652, 0.098437, 0.412437,
		-0.294262, 0.846233, 0.444184,
		35.005894, 33.951202, 50.752811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630978, 33.632931, 51.054054>,  <35.211880, 33.358841, 50.441883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630978, 33.632931, 51.054054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239552, 33.713955, 51.068909>,  <35.004696, 33.762569, 51.077820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239552, 33.713955, 51.068909>,  <35.630978, 33.632931, 51.054054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239552, 33.713955, 51.068909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076068, -0.523112, 0.848863,
		0.191372, 0.827843, 0.527307,
		-0.978565, 0.202560, 0.037137,
		34.945980, 33.774723, 51.080051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500710, 33.838501, 51.798531>,  <35.630978, 33.632931, 51.054054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500710, 33.838501, 51.798531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180958, 33.691891, 51.608105>,  <34.989105, 33.603924, 51.493847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180958, 33.691891, 51.608105>,  <35.500710, 33.838501, 51.798531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180958, 33.691891, 51.608105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229904, -0.545454, 0.805993,
		-0.555094, 0.753748, 0.351760,
		-0.799384, -0.366530, -0.476068,
		34.941143, 33.581932, 51.465282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024895, 33.580791, 52.353477>,  <35.500710, 33.838501, 51.798531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024895, 33.580791, 52.353477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980145, 33.336185, 52.040165>,  <35.953293, 33.189423, 51.852177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980145, 33.336185, 52.040165>,  <36.024895, 33.580791, 52.353477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980145, 33.336185, 52.040165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215233, 0.754607, -0.619874,
		0.970133, -0.237936, 0.047197,
		-0.111875, -0.611518, -0.783281,
		35.946583, 33.152729, 51.805180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533646, 33.719025, 51.955250>,  <36.024895, 33.580791, 52.353477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533646, 33.719025, 51.955250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284370, 33.523685, 51.710903>,  <36.134804, 33.406483, 51.564297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284370, 33.523685, 51.710903>,  <36.533646, 33.719025, 51.955250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284370, 33.523685, 51.710903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073111, 0.741285, -0.667197,
		0.778650, -0.460448, -0.426253,
		-0.623184, -0.488348, -0.610865,
		36.097416, 33.377182, 51.527645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875366, 33.158131, 51.617252>,  <36.533646, 33.719025, 51.955250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875366, 33.158131, 51.617252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504547, 33.051094, 51.512203>,  <36.282055, 32.986874, 51.449173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504547, 33.051094, 51.512203>,  <36.875366, 33.158131, 51.617252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504547, 33.051094, 51.512203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360641, -0.444872, -0.819773,
		0.102533, -0.854683, 0.508924,
		-0.927052, -0.267593, -0.262620,
		36.226433, 32.970818, 51.433418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986549, 32.577312, 51.240921>,  <36.875366, 33.158131, 51.617252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986549, 32.577312, 51.240921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605377, 32.679176, 51.175098>,  <36.376675, 32.740295, 51.135605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605377, 32.679176, 51.175098>,  <36.986549, 32.577312, 51.240921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605377, 32.679176, 51.175098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044452, -0.419540, -0.906648,
		-0.299925, -0.871284, 0.388471,
		-0.952927, 0.254659, -0.164561,
		36.319500, 32.755573, 51.125729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535110, 31.886440, 51.129940>,  <36.986549, 32.577312, 51.240921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535110, 31.886440, 51.129940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397751, 32.214924, 50.947643>,  <36.315334, 32.412014, 50.838264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397751, 32.214924, 50.947643>,  <36.535110, 31.886440, 51.129940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397751, 32.214924, 50.947643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114675, -0.518275, -0.847491,
		-0.932164, -0.238762, 0.272145,
		-0.343394, 0.821209, -0.455738,
		36.294731, 32.461285, 50.810921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037212, 31.761410, 50.538338>,  <36.535110, 31.886440, 51.129940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037212, 31.761410, 50.538338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177814, 32.121449, 50.435371>,  <36.262177, 32.337471, 50.373592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177814, 32.121449, 50.435371>,  <36.037212, 31.761410, 50.538338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177814, 32.121449, 50.435371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106059, -0.311483, -0.944314,
		-0.930157, 0.304634, -0.204953,
		0.351510, 0.900098, -0.257419,
		36.283268, 32.391479, 50.358147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639889, 31.864233, 49.978970>,  <36.037212, 31.761410, 50.538338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639889, 31.864233, 49.978970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949306, 32.114792, 49.940479>,  <36.134956, 32.265125, 49.917385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949306, 32.114792, 49.940479>,  <35.639889, 31.864233, 49.978970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949306, 32.114792, 49.940479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177134, -0.359485, -0.916185,
		-0.608486, 0.691663, -0.389033,
		0.773543, 0.626397, -0.096224,
		36.181370, 32.302711, 49.911613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583336, 32.337875, 49.432625>,  <35.639889, 31.864233, 49.978970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583336, 32.337875, 49.432625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981857, 32.359200, 49.459591>,  <36.220970, 32.371994, 49.475769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981857, 32.359200, 49.459591>,  <35.583336, 32.337875, 49.432625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981857, 32.359200, 49.459591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075221, -0.161435, -0.984012,
		-0.041579, 0.985442, -0.164848,
		0.996300, 0.053315, 0.067414,
		36.280746, 32.375195, 49.479816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776764, 32.903465, 49.049686>,  <35.583336, 32.337875, 49.432625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776764, 32.903465, 49.049686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098362, 32.668533, 49.086849>,  <36.291321, 32.527573, 49.109146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098362, 32.668533, 49.086849>,  <35.776764, 32.903465, 49.049686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098362, 32.668533, 49.086849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108264, -0.009048, -0.994081,
		0.584696, 0.809296, 0.056312,
		0.803996, -0.587332, 0.092909,
		36.339561, 32.492332, 49.114723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167580, 33.062160, 48.462208>,  <35.776764, 32.903465, 49.049686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167580, 33.062160, 48.462208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374821, 32.736401, 48.566769>,  <36.499165, 32.540947, 48.629505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374821, 32.736401, 48.566769>,  <36.167580, 33.062160, 48.462208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374821, 32.736401, 48.566769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167726, -0.202950, -0.964717,
		0.838714, 0.543663, 0.031447,
		0.518099, -0.814397, 0.261404,
		36.530251, 32.492081, 48.645191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790314, 33.147884, 48.096432>,  <36.167580, 33.062160, 48.462208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790314, 33.147884, 48.096432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796787, 32.764088, 48.208946>,  <36.800671, 32.533810, 48.276455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796787, 32.764088, 48.208946>,  <36.790314, 33.147884, 48.096432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796787, 32.764088, 48.208946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348558, -0.258261, -0.901004,
		0.937147, 0.112625, 0.330258,
		0.016183, -0.959488, 0.281285,
		36.801643, 32.476242, 48.293331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377796, 32.914490, 47.858032>,  <36.790314, 33.147884, 48.096432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377796, 32.914490, 47.858032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150242, 32.587624, 47.895145>,  <37.013710, 32.391502, 47.917416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150242, 32.587624, 47.895145>,  <37.377796, 32.914490, 47.858032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150242, 32.587624, 47.895145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273275, -0.294233, -0.915832,
		0.775688, -0.495646, 0.390696,
		-0.568884, -0.817167, 0.092786,
		36.979576, 32.342472, 47.922981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788692, 32.407341, 47.530529>,  <37.377796, 32.914490, 47.858032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788692, 32.407341, 47.530529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433929, 32.227333, 47.572235>,  <37.221069, 32.119328, 47.597260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433929, 32.227333, 47.572235>,  <37.788692, 32.407341, 47.530529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433929, 32.227333, 47.572235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153833, -0.500558, -0.851925,
		0.435575, -0.739542, 0.513178,
		-0.886910, -0.450021, 0.104265,
		37.167858, 32.092327, 47.603516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892014, 31.734638, 47.205391>,  <37.788692, 32.407341, 47.530529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892014, 31.734638, 47.205391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508102, 31.846914, 47.208183>,  <37.277756, 31.914280, 47.209858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508102, 31.846914, 47.208183>,  <37.892014, 31.734638, 47.205391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508102, 31.846914, 47.208183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052570, -0.155226, -0.986479,
		-0.275812, -0.947163, 0.163738,
		-0.959773, 0.280691, 0.006979,
		37.220169, 31.931122, 47.210278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663277, 31.339869, 46.687286>,  <37.892014, 31.734638, 47.205391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663277, 31.339869, 46.687286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395283, 31.632214, 46.739380>,  <37.234486, 31.807621, 46.770638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395283, 31.632214, 46.739380>,  <37.663277, 31.339869, 46.687286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395283, 31.632214, 46.739380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082587, 0.100962, -0.991457,
		-0.737770, -0.675013, -0.007283,
		-0.669982, 0.730865, 0.130234,
		37.194286, 31.851473, 46.778450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159256, 31.273001, 46.107639>,  <37.663277, 31.339869, 46.687286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159256, 31.273001, 46.107639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122452, 31.651934, 46.230339>,  <37.100368, 31.879293, 46.303959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122452, 31.651934, 46.230339>,  <37.159256, 31.273001, 46.107639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122452, 31.651934, 46.230339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177534, 0.287513, -0.941179,
		-0.979804, -0.141057, 0.141729,
		-0.092011, 0.947333, 0.306748,
		37.094849, 31.936134, 46.322365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538059, 31.604898, 45.763222>,  <37.159256, 31.273001, 46.107639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538059, 31.604898, 45.763222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767628, 31.903166, 45.898628>,  <36.905369, 32.082127, 45.979870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767628, 31.903166, 45.898628>,  <36.538059, 31.604898, 45.763222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767628, 31.903166, 45.898628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184541, 0.520504, -0.833679,
		-0.797845, 0.415998, 0.436335,
		0.573923, 0.745668, 0.338513,
		36.939804, 32.126865, 46.000183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186905, 32.168831, 45.585506>,  <36.538059, 31.604898, 45.763222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186905, 32.168831, 45.585506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568127, 32.286190, 45.615459>,  <36.796860, 32.356606, 45.633430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568127, 32.286190, 45.615459>,  <36.186905, 32.168831, 45.585506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568127, 32.286190, 45.615459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068609, 0.450087, -0.890345,
		-0.294930, 0.843409, 0.449086,
		0.953053, 0.293401, 0.074879,
		36.854042, 32.374210, 45.637924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182945, 32.914364, 45.423077>,  <36.186905, 32.168831, 45.585506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182945, 32.914364, 45.423077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557137, 32.784325, 45.367668>,  <36.781651, 32.706303, 45.334423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557137, 32.784325, 45.367668>,  <36.182945, 32.914364, 45.423077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557137, 32.784325, 45.367668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038874, 0.294927, -0.954729,
		0.351234, 0.898515, 0.263260,
		0.935481, -0.325099, -0.138517,
		36.837780, 32.686794, 45.326115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607632, 33.408951, 45.092766>,  <36.182945, 32.914364, 45.423077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607632, 33.408951, 45.092766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840832, 33.105526, 44.976353>,  <36.980751, 32.923473, 44.906506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840832, 33.105526, 44.976353>,  <36.607632, 33.408951, 45.092766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840832, 33.105526, 44.976353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024995, 0.341286, -0.939627,
		0.812086, 0.555078, 0.180010,
		0.583002, -0.758559, -0.291028,
		37.015732, 32.877960, 44.889046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077793, 33.698921, 44.581085>,  <36.607632, 33.408951, 45.092766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077793, 33.698921, 44.581085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099411, 33.301674, 44.539509>,  <37.112381, 33.063328, 44.514565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099411, 33.301674, 44.539509>,  <37.077793, 33.698921, 44.581085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099411, 33.301674, 44.539509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117956, 0.109715, -0.986939,
		0.991547, 0.041081, 0.123073,
		0.054047, -0.993114, -0.103942,
		37.115623, 33.003738, 44.508327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525070, 33.679173, 44.073074>,  <37.077793, 33.698921, 44.581085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525070, 33.679173, 44.073074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347820, 33.320648, 44.079498>,  <37.241470, 33.105534, 44.083351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347820, 33.320648, 44.079498>,  <37.525070, 33.679173, 44.073074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347820, 33.320648, 44.079498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031606, -0.033522, -0.998938,
		0.895900, -0.442151, 0.043183,
		-0.443129, -0.896314, 0.016058,
		37.214882, 33.051754, 44.084316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848938, 33.240860, 43.617908>,  <37.525070, 33.679173, 44.073074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848938, 33.240860, 43.617908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482574, 33.083992, 43.652107>,  <37.262756, 32.989872, 43.672626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482574, 33.083992, 43.652107>,  <37.848938, 33.240860, 43.617908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482574, 33.083992, 43.652107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148018, 0.132016, -0.980134,
		0.373097, -0.910368, -0.178963,
		-0.915909, -0.392175, 0.085496,
		37.207802, 32.966339, 43.677757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823410, 32.718929, 43.104252>,  <37.848938, 33.240860, 43.617908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823410, 32.718929, 43.104252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434437, 32.774784, 43.178955>,  <37.201054, 32.808296, 43.223778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434437, 32.774784, 43.178955>,  <37.823410, 32.718929, 43.104252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434437, 32.774784, 43.178955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193844, -0.038908, -0.980260,
		-0.129610, -0.989439, 0.064903,
		-0.972433, 0.139633, 0.186754,
		37.142708, 32.816673, 43.234982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423874, 32.156139, 42.649044>,  <37.823410, 32.718929, 43.104252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423874, 32.156139, 42.649044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182713, 32.459671, 42.747578>,  <37.038017, 32.641792, 42.806698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182713, 32.459671, 42.747578>,  <37.423874, 32.156139, 42.649044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182713, 32.459671, 42.747578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341869, 0.033251, -0.939159,
		-0.720855, -0.650436, 0.239374,
		-0.602904, 0.758833, 0.246334,
		37.001842, 32.687321, 42.821476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753025, 31.959864, 42.431149>,  <37.423874, 32.156139, 42.649044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753025, 31.959864, 42.431149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718212, 32.355953, 42.474754>,  <36.697327, 32.593605, 42.500919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718212, 32.355953, 42.474754>,  <36.753025, 31.959864, 42.431149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718212, 32.355953, 42.474754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409005, 0.064265, -0.910266,
		-0.908373, -0.123806, 0.399413,
		-0.087028, 0.990223, 0.109014,
		36.692104, 32.653019, 42.507458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031620, 32.083069, 42.306446>,  <36.753025, 31.959864, 42.431149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031620, 32.083069, 42.306446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225380, 32.430534, 42.264915>,  <36.341637, 32.639015, 42.239998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225380, 32.430534, 42.264915>,  <36.031620, 32.083069, 42.306446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225380, 32.430534, 42.264915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409433, 0.120222, -0.904384,
		-0.773126, 0.480589, 0.413896,
		0.484397, 0.868666, -0.103823,
		36.370701, 32.691135, 42.233768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608734, 32.503536, 41.867634>,  <36.031620, 32.083069, 42.306446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608734, 32.503536, 41.867634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942261, 32.721088, 41.829792>,  <36.142376, 32.851620, 41.807087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942261, 32.721088, 41.829792>,  <35.608734, 32.503536, 41.867634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942261, 32.721088, 41.829792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301066, 0.304362, -0.903727,
		-0.462722, 0.782024, 0.417525,
		0.833815, 0.543877, -0.094606,
		36.192406, 32.884251, 41.801411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365116, 33.170937, 41.738205>,  <35.608734, 32.503536, 41.867634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365116, 33.170937, 41.738205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741074, 33.147556, 41.603630>,  <35.966648, 33.133526, 41.522884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741074, 33.147556, 41.603630>,  <35.365116, 33.170937, 41.738205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741074, 33.147556, 41.603630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253237, 0.541624, -0.801570,
		0.229076, 0.838586, 0.494265,
		0.939891, -0.058454, -0.336434,
		36.023041, 33.130020, 41.502701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539955, 33.859711, 41.522385>,  <35.365116, 33.170937, 41.738205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539955, 33.859711, 41.522385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791630, 33.616154, 41.329151>,  <35.942635, 33.470020, 41.213211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791630, 33.616154, 41.329151>,  <35.539955, 33.859711, 41.522385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791630, 33.616154, 41.329151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187450, 0.484309, -0.854580,
		0.754308, 0.628248, 0.190586,
		0.629191, -0.608891, -0.483083,
		35.980389, 33.433487, 41.184227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895542, 34.269733, 41.154465>,  <35.539955, 33.859711, 41.522385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895542, 34.269733, 41.154465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969788, 33.923866, 40.967747>,  <36.014336, 33.716347, 40.855717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969788, 33.923866, 40.967747>,  <35.895542, 34.269733, 41.154465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969788, 33.923866, 40.967747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344452, 0.387653, -0.855031,
		0.920271, 0.319497, -0.225881,
		0.185616, -0.864666, -0.466797,
		36.025471, 33.664467, 40.827709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103420, 34.452419, 40.412800>,  <35.895542, 34.269733, 41.154465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103420, 34.452419, 40.412800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993954, 34.070053, 40.370220>,  <35.928272, 33.840633, 40.344673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993954, 34.070053, 40.370220>,  <36.103420, 34.452419, 40.412800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993954, 34.070053, 40.370220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474698, 0.230493, -0.849432,
		0.836521, -0.181931, -0.516850,
		-0.273668, -0.955916, -0.106450,
		35.911854, 33.783279, 40.338284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390396, 34.222294, 39.797550>,  <36.103420, 34.452419, 40.412800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390396, 34.222294, 39.797550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061867, 33.999340, 39.846127>,  <35.864750, 33.865566, 39.875271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061867, 33.999340, 39.846127>,  <36.390396, 34.222294, 39.797550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061867, 33.999340, 39.846127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266321, 0.186390, -0.945691,
		0.504476, -0.809063, -0.301529,
		-0.821326, -0.557383, 0.121441,
		35.815468, 33.832127, 39.882561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290619, 34.133587, 39.157707>,  <36.390396, 34.222294, 39.797550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290619, 34.133587, 39.157707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969551, 33.952991, 39.313591>,  <35.776909, 33.844635, 39.407124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969551, 33.952991, 39.313591>,  <36.290619, 34.133587, 39.157707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969551, 33.952991, 39.313591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469407, 0.075125, -0.879780,
		0.367934, -0.889108, -0.272233,
		-0.802671, -0.451490, 0.389713,
		35.728748, 33.817543, 39.430504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178223, 33.654472, 38.741703>,  <36.290619, 34.133587, 39.157707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178223, 33.654472, 38.741703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822739, 33.700420, 38.919239>,  <35.609447, 33.727989, 39.025761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822739, 33.700420, 38.919239>,  <36.178223, 33.654472, 38.741703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822739, 33.700420, 38.919239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449864, -0.031861, -0.892529,
		-0.088393, -0.992868, 0.079997,
		-0.888712, 0.114881, 0.443839,
		35.556126, 33.734882, 39.052391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705364, 33.084255, 38.520378>,  <36.178223, 33.654472, 38.741703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705364, 33.084255, 38.520378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491756, 33.399738, 38.642204>,  <35.363590, 33.589027, 38.715298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491756, 33.399738, 38.642204>,  <35.705364, 33.084255, 38.520378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491756, 33.399738, 38.642204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500983, -0.005015, -0.865443,
		-0.681055, -0.614746, 0.397808,
		-0.534022, 0.788709, 0.304562,
		35.331551, 33.636353, 38.733574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039303, 32.983608, 38.350349>,  <35.705364, 33.084255, 38.520378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039303, 32.983608, 38.350349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006004, 33.377380, 38.412266>,  <34.986027, 33.613644, 38.449417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006004, 33.377380, 38.412266>,  <35.039303, 32.983608, 38.350349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006004, 33.377380, 38.412266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313947, 0.121517, -0.941632,
		-0.945784, -0.126982, 0.298945,
		-0.083244, 0.984433, 0.154794,
		34.981030, 33.672710, 38.458706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325161, 33.179317, 38.268661>,  <35.039303, 32.983608, 38.350349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325161, 33.179317, 38.268661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580982, 33.478622, 38.198154>,  <34.734474, 33.658207, 38.155849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580982, 33.478622, 38.198154>,  <34.325161, 33.179317, 38.268661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580982, 33.478622, 38.198154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262174, -0.003237, -0.965015,
		-0.722658, 0.663392, 0.194106,
		0.639555, 0.748266, -0.176263,
		34.772850, 33.703102, 38.145275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975742, 33.590580, 37.817806>,  <34.325161, 33.179317, 38.268661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975742, 33.590580, 37.817806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342205, 33.741123, 37.762657>,  <34.562084, 33.831451, 37.729568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342205, 33.741123, 37.762657>,  <33.975742, 33.590580, 37.817806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342205, 33.741123, 37.762657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218091, 0.179467, -0.959285,
		-0.336294, 0.908925, 0.246500,
		0.916157, 0.376361, -0.137874,
		34.617050, 33.854031, 37.721294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927574, 34.284931, 37.444149>,  <33.975742, 33.590580, 37.817806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927574, 34.284931, 37.444149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291504, 34.132355, 37.378769>,  <34.509861, 34.040810, 37.339539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291504, 34.132355, 37.378769>,  <33.927574, 34.284931, 37.444149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291504, 34.132355, 37.378769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150552, 0.063649, -0.986551,
		0.386718, 0.922197, 0.000483,
		0.909826, -0.381445, -0.163453,
		34.564453, 34.017921, 37.329735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241913, 34.735840, 36.833157>,  <33.927574, 34.284931, 37.444149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241913, 34.735840, 36.833157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451904, 34.395554, 36.843582>,  <34.577900, 34.191380, 36.849838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451904, 34.395554, 36.843582>,  <34.241913, 34.735840, 36.833157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451904, 34.395554, 36.843582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033613, -0.009874, -0.999386,
		0.850454, 0.525528, 0.023411,
		0.524974, -0.850719, 0.026062,
		34.609398, 34.140339, 36.851402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623646, 34.787231, 36.261063>,  <34.241913, 34.735840, 36.833157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623646, 34.787231, 36.261063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627289, 34.397758, 36.352154>,  <34.629475, 34.164074, 36.406807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627289, 34.397758, 36.352154>,  <34.623646, 34.787231, 36.261063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627289, 34.397758, 36.352154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161130, -0.226187, -0.960665,
		0.986891, -0.027945, -0.158949,
		0.009106, -0.973683, 0.227725,
		34.630020, 34.105652, 36.420471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026199, 34.512051, 35.816689>,  <34.623646, 34.787231, 36.261063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026199, 34.512051, 35.816689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861481, 34.162643, 35.920528>,  <34.762650, 33.952999, 35.982830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861481, 34.162643, 35.920528>,  <35.026199, 34.512051, 35.816689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861481, 34.162643, 35.920528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140150, -0.342191, -0.929119,
		0.900434, -0.346227, 0.263337,
		-0.411797, -0.873517, 0.259597,
		34.737942, 33.900589, 35.998409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415989, 33.969898, 35.491646>,  <35.026199, 34.512051, 35.816689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415989, 33.969898, 35.491646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050976, 33.815659, 35.546181>,  <34.831966, 33.723114, 35.578903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050976, 33.815659, 35.546181>,  <35.415989, 33.969898, 35.491646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050976, 33.815659, 35.546181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042114, -0.242989, -0.969114,
		0.406821, -0.890094, 0.205497,
		-0.912537, -0.385602, 0.136338,
		34.777214, 33.699978, 35.587082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330330, 33.314453, 35.064453>,  <35.415989, 33.969898, 35.491646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330330, 33.314453, 35.064453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955166, 33.417431, 35.157440>,  <34.730068, 33.479218, 35.213234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955166, 33.417431, 35.157440>,  <35.330330, 33.314453, 35.064453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955166, 33.417431, 35.157440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280669, -0.169462, -0.944726,
		-0.203819, -0.951318, 0.231197,
		-0.937913, 0.257443, 0.232466,
		34.673790, 33.494663, 35.227180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817497, 33.215088, 35.577656>,  <35.330330, 33.314453, 35.064453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817497, 33.215088, 35.577656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153084, 33.144085, 35.371887>,  <36.354435, 33.101482, 35.248428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153084, 33.144085, 35.371887>,  <35.817497, 33.215088, 35.577656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153084, 33.144085, 35.371887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475668, -0.219975, 0.851675,
		-0.264343, -0.959219, -0.100114,
		0.838965, -0.177513, -0.514419,
		36.404774, 33.090832, 35.217564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105156, 32.586361, 35.819225>,  <35.817497, 33.215088, 35.577656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105156, 32.586361, 35.819225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375801, 32.821529, 35.641895>,  <36.538189, 32.962631, 35.535496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375801, 32.821529, 35.641895>,  <36.105156, 32.586361, 35.819225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375801, 32.821529, 35.641895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618755, -0.127583, 0.775154,
		0.399170, -0.798792, -0.450106,
		0.676613, 0.587924, -0.443329,
		36.578785, 32.997906, 35.508896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818134, 32.199417, 35.753887>,  <36.105156, 32.586361, 35.819225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818134, 32.199417, 35.753887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886047, 32.593357, 35.739742>,  <36.926796, 32.829720, 35.731255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886047, 32.593357, 35.739742>,  <36.818134, 32.199417, 35.753887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886047, 32.593357, 35.739742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737572, -0.103194, 0.667337,
		0.653576, -0.139382, -0.743916,
		0.169782, 0.984847, -0.035359,
		36.936981, 32.888813, 35.729134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470219, 32.249821, 35.883602>,  <36.818134, 32.199417, 35.753887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470219, 32.249821, 35.883602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343048, 32.626316, 35.929207>,  <37.266747, 32.852211, 35.956570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343048, 32.626316, 35.929207>,  <37.470219, 32.249821, 35.883602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343048, 32.626316, 35.929207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620063, 0.115446, 0.776011,
		0.717247, 0.317410, -0.620329,
		-0.317929, 0.941235, 0.114011,
		37.247669, 32.908688, 35.963409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065117, 32.466743, 35.918419>,  <37.470219, 32.249821, 35.883602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065117, 32.466743, 35.918419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779022, 32.677177, 36.102451>,  <37.607365, 32.803436, 36.212872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779022, 32.677177, 36.102451>,  <38.065117, 32.466743, 35.918419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779022, 32.677177, 36.102451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527810, -0.024904, 0.848997,
		0.458103, 0.850067, -0.259861,
		-0.715233, 0.526086, 0.460083,
		37.564453, 32.835003, 36.240475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426693, 32.869942, 36.365295>,  <38.065117, 32.466743, 35.918419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426693, 32.869942, 36.365295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064720, 32.903538, 36.532169>,  <37.847538, 32.923695, 36.632294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064720, 32.903538, 36.532169>,  <38.426693, 32.869942, 36.365295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064720, 32.903538, 36.532169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422166, 0.053628, 0.904931,
		0.053628, 0.995023, -0.083986,
		-0.904931, 0.083986, 0.417189,
		37.793240, 32.928734, 36.657326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507675, 33.303249, 36.972416>,  <38.426693, 32.869942, 36.365295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507675, 33.303249, 36.972416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155190, 33.126102, 37.038555>,  <37.943699, 33.019814, 37.078239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155190, 33.126102, 37.038555>,  <38.507675, 33.303249, 36.972416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155190, 33.126102, 37.038555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116529, 0.135481, 0.983903,
		-0.458136, 0.886294, -0.067781,
		-0.881211, -0.442863, 0.165347,
		37.890827, 32.993244, 37.088158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178463, 33.734566, 37.453415>,  <38.507675, 33.303249, 36.972416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178463, 33.734566, 37.453415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003490, 33.375393, 37.472893>,  <37.898506, 33.159889, 37.484581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003490, 33.375393, 37.472893>,  <38.178463, 33.734566, 37.453415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003490, 33.375393, 37.472893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054082, 0.080325, 0.995300,
		-0.897622, 0.432746, -0.083699,
		-0.437436, -0.897930, 0.048698,
		37.872261, 33.106014, 37.487503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695969, 33.787823, 38.122429>,  <38.178463, 33.734566, 37.453415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695969, 33.787823, 38.122429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746342, 33.403545, 38.023460>,  <37.776566, 33.172981, 37.964081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746342, 33.403545, 38.023460>,  <37.695969, 33.787823, 38.122429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746342, 33.403545, 38.023460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143348, -0.229163, 0.962775,
		-0.981628, -0.156710, 0.108854,
		0.125931, -0.960691, -0.247417,
		37.784122, 33.115337, 37.949234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487610, 33.420284, 38.716454>,  <37.695969, 33.787823, 38.122429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487610, 33.420284, 38.716454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678661, 33.128105, 38.521183>,  <37.793293, 32.952797, 38.404022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678661, 33.128105, 38.521183>,  <37.487610, 33.420284, 38.716454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678661, 33.128105, 38.521183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517166, -0.215424, 0.828331,
		-0.710217, -0.648104, 0.274870,
		0.477631, -0.730448, -0.488175,
		37.821949, 32.908970, 38.374729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373383, 32.911076, 39.105801>,  <37.487610, 33.420284, 38.716454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373383, 32.911076, 39.105801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696514, 32.818073, 38.889156>,  <37.890392, 32.762272, 38.759171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696514, 32.818073, 38.889156>,  <37.373383, 32.911076, 39.105801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696514, 32.818073, 38.889156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495081, -0.230977, 0.837583,
		-0.319845, -0.944770, -0.071480,
		0.807833, -0.232508, -0.541614,
		37.938866, 32.748322, 38.726673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428570, 32.244350, 39.266495>,  <37.373383, 32.911076, 39.105801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428570, 32.244350, 39.266495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773262, 32.409492, 39.148533>,  <37.980080, 32.508575, 39.077755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773262, 32.409492, 39.148533>,  <37.428570, 32.244350, 39.266495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773262, 32.409492, 39.148533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429125, -0.282978, 0.857773,
		0.270683, -0.865723, -0.421017,
		0.861732, 0.412854, -0.294906,
		38.031780, 32.533348, 39.060062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970684, 31.753239, 39.284508>,  <37.428570, 32.244350, 39.266495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970684, 31.753239, 39.284508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177353, 32.094288, 39.315712>,  <38.301353, 32.298920, 39.334435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177353, 32.094288, 39.315712>,  <37.970684, 31.753239, 39.284508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177353, 32.094288, 39.315712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510394, -0.379871, 0.771489,
		0.687424, -0.358788, -0.631442,
		0.516668, 0.852625, 0.078009,
		38.332352, 32.350075, 39.339115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668278, 31.536644, 39.363472>,  <37.970684, 31.753239, 39.284508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668278, 31.536644, 39.363472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636364, 31.902374, 39.522289>,  <38.617214, 32.121811, 39.617580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636364, 31.902374, 39.522289>,  <38.668278, 31.536644, 39.363472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636364, 31.902374, 39.522289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450686, -0.322186, 0.832513,
		0.889110, 0.245363, -0.386369,
		-0.079786, 0.914327, 0.397040,
		38.612427, 32.176674, 39.641399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272827, 31.526236, 39.678001>,  <38.668278, 31.536644, 39.363472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272827, 31.526236, 39.678001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087528, 31.846846, 39.829239>,  <38.976349, 32.039211, 39.919983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087528, 31.846846, 39.829239>,  <39.272827, 31.526236, 39.678001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087528, 31.846846, 39.829239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480641, -0.131212, 0.867045,
		0.744569, 0.583389, -0.324462,
		-0.463251, 0.801524, 0.378097,
		38.948551, 32.087303, 39.942669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766136, 31.851639, 40.058044>,  <39.272827, 31.526236, 39.678001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766136, 31.851639, 40.058044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416859, 31.979261, 40.205414>,  <39.207291, 32.055836, 40.293835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416859, 31.979261, 40.205414>,  <39.766136, 31.851639, 40.058044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416859, 31.979261, 40.205414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372706, -0.049942, 0.926605,
		0.314037, 0.946420, -0.075305,
		-0.873196, 0.319055, 0.368420,
		39.154900, 32.074978, 40.315941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943027, 32.410145, 40.601841>,  <39.766136, 31.851639, 40.058044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943027, 32.410145, 40.601841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580597, 32.255814, 40.671307>,  <39.363140, 32.163216, 40.712986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580597, 32.255814, 40.671307>,  <39.943027, 32.410145, 40.601841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580597, 32.255814, 40.671307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229308, -0.102846, 0.967905,
		-0.355589, 0.916819, 0.181661,
		-0.906077, -0.385832, 0.173662,
		39.308773, 32.140064, 40.723404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704029, 32.719353, 41.194187>,  <39.943027, 32.410145, 40.601841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704029, 32.719353, 41.194187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460537, 32.404976, 41.150856>,  <39.314442, 32.216351, 41.124855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460537, 32.404976, 41.150856>,  <39.704029, 32.719353, 41.194187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460537, 32.404976, 41.150856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108317, -0.217596, 0.970010,
		-0.785948, 0.578741, 0.217589,
		-0.608731, -0.785946, -0.108332,
		39.277916, 32.169193, 41.118355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361141, 32.733166, 41.871399>,  <39.704029, 32.719353, 41.194187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361141, 32.733166, 41.871399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303650, 32.373985, 41.705013>,  <39.269154, 32.158478, 41.605183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303650, 32.373985, 41.705013>,  <39.361141, 32.733166, 41.871399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303650, 32.373985, 41.705013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093274, -0.406168, 0.909026,
		-0.985211, 0.169454, -0.025376,
		-0.143731, -0.897950, -0.415967,
		39.260532, 32.104599, 41.580223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841187, 32.588123, 42.208984>,  <39.361141, 32.733166, 41.871399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841187, 32.588123, 42.208984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009430, 32.241112, 42.102787>,  <39.110374, 32.032906, 42.039066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009430, 32.241112, 42.102787>,  <38.841187, 32.588123, 42.208984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009430, 32.241112, 42.102787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044021, -0.272782, 0.961068,
		-0.906174, -0.415921, -0.076545,
		0.420608, -0.867525, -0.265497,
		39.135612, 31.980854, 42.023136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461544, 32.048817, 42.611362>,  <38.841187, 32.588123, 42.208984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461544, 32.048817, 42.611362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801151, 31.875967, 42.489754>,  <39.004917, 31.772257, 42.416786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801151, 31.875967, 42.489754>,  <38.461544, 32.048817, 42.611362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801151, 31.875967, 42.489754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188241, -0.290263, 0.938250,
		-0.493686, -0.853825, -0.165097,
		0.849023, -0.432123, -0.304024,
		39.055859, 31.746330, 42.398548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490940, 31.362265, 42.738297>,  <38.461544, 32.048817, 42.611362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490940, 31.362265, 42.738297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860535, 31.515110, 42.744564>,  <39.082291, 31.606817, 42.748325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860535, 31.515110, 42.744564>,  <38.490940, 31.362265, 42.738297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860535, 31.515110, 42.744564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126964, -0.345145, 0.929922,
		0.360745, -0.857241, -0.367423,
		0.923982, 0.382115, 0.015670,
		39.137730, 31.629744, 42.749264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987835, 30.812716, 42.988251>,  <38.490940, 31.362265, 42.738297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987835, 30.812716, 42.988251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129314, 31.180347, 43.057755>,  <39.214203, 31.400927, 43.099457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129314, 31.180347, 43.057755>,  <38.987835, 30.812716, 42.988251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129314, 31.180347, 43.057755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037288, -0.171762, 0.984432,
		0.934615, -0.354673, -0.026481,
		0.353700, 0.919078, 0.173757,
		39.235424, 31.456070, 43.109882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392651, 30.758051, 43.619450>,  <38.987835, 30.812716, 42.988251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392651, 30.758051, 43.619450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364105, 31.156986, 43.613403>,  <39.346977, 31.396347, 43.609776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364105, 31.156986, 43.613403>,  <39.392651, 30.758051, 43.619450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364105, 31.156986, 43.613403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029719, 0.013023, 0.999474,
		0.997008, 0.071773, 0.028711,
		-0.071361, 0.997336, -0.015117,
		39.342697, 31.456186, 43.608868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935272, 30.924273, 44.048046>,  <39.392651, 30.758051, 43.619450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935272, 30.924273, 44.048046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682961, 31.233524, 44.021549>,  <39.531574, 31.419075, 44.005653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682961, 31.233524, 44.021549>,  <39.935272, 30.924273, 44.048046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682961, 31.233524, 44.021549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068878, 0.140816, 0.987637,
		0.772899, 0.618419, -0.142075,
		-0.630780, 0.773129, -0.066241,
		39.493725, 31.465464, 44.001678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264351, 31.394957, 44.406925>,  <39.935272, 30.924273, 44.048046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264351, 31.394957, 44.406925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892639, 31.542532, 44.414055>,  <39.669613, 31.631077, 44.418331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892639, 31.542532, 44.414055>,  <40.264351, 31.394957, 44.406925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892639, 31.542532, 44.414055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088750, 0.176179, 0.980349,
		0.358547, 0.912604, -0.196463,
		-0.929283, 0.368938, 0.017825,
		39.613853, 31.653214, 44.419403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376083, 32.015327, 44.753471>,  <40.264351, 31.394957, 44.406925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376083, 32.015327, 44.753471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980583, 31.971819, 44.794521>,  <39.743282, 31.945715, 44.819153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980583, 31.971819, 44.794521>,  <40.376083, 32.015327, 44.753471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980583, 31.971819, 44.794521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066761, 0.293034, 0.953768,
		-0.133815, 0.949895, -0.282478,
		-0.988755, -0.108770, 0.102628,
		39.683956, 31.939188, 44.825310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047085, 32.660435, 44.918148>,  <40.376083, 32.015327, 44.753471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047085, 32.660435, 44.918148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783501, 32.392590, 45.055199>,  <39.625351, 32.231884, 45.137428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783501, 32.392590, 45.055199>,  <40.047085, 32.660435, 44.918148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783501, 32.392590, 45.055199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116701, 0.358981, 0.926021,
		-0.743072, 0.650193, -0.158408,
		-0.658957, -0.669614, 0.342627,
		39.585812, 32.191704, 45.157986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547821, 32.978195, 45.225964>,  <40.047085, 32.660435, 44.918148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547821, 32.978195, 45.225964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501133, 32.614449, 45.385677>,  <39.473118, 32.396198, 45.481506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501133, 32.614449, 45.385677>,  <39.547821, 32.978195, 45.225964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501133, 32.614449, 45.385677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027537, 0.398911, 0.916576,
		-0.992783, 0.117980, -0.021521,
		-0.116723, -0.909368, 0.399281,
		39.466118, 32.341637, 45.505463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978535, 32.978645, 45.753975>,  <39.547821, 32.978195, 45.225964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978535, 32.978645, 45.753975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235611, 32.689644, 45.855911>,  <39.389854, 32.516243, 45.917072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235611, 32.689644, 45.855911>,  <38.978535, 32.978645, 45.753975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235611, 32.689644, 45.855911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090485, 0.401886, 0.911208,
		-0.760767, -0.562562, 0.323663,
		0.642687, -0.722503, 0.254838,
		39.428417, 32.472893, 45.932362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907490, 33.006317, 46.439426>,  <38.978535, 32.978645, 45.753975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907490, 33.006317, 46.439426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227119, 32.769989, 46.394867>,  <39.418896, 32.628193, 46.368130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227119, 32.769989, 46.394867>,  <38.907490, 33.006317, 46.439426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227119, 32.769989, 46.394867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250722, 0.159053, 0.954903,
		-0.546460, -0.790969, 0.275227,
		0.799075, -0.590822, -0.111397,
		39.466843, 32.592743, 46.361446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957760, 32.632732, 47.050560>,  <38.907490, 33.006317, 46.439426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957760, 32.632732, 47.050560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330280, 32.578705, 46.915249>,  <39.553791, 32.546288, 46.834061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330280, 32.578705, 46.915249>,  <38.957760, 32.632732, 47.050560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330280, 32.578705, 46.915249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335548, -0.043208, 0.941032,
		-0.141718, -0.989894, 0.005081,
		0.931302, -0.135066, -0.338280,
		39.609673, 32.538185, 46.813766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254028, 31.999039, 47.440243>,  <38.957760, 32.632732, 47.050560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254028, 31.999039, 47.440243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548973, 32.234283, 47.307320>,  <39.725941, 32.375431, 47.227566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548973, 32.234283, 47.307320>,  <39.254028, 31.999039, 47.440243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548973, 32.234283, 47.307320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336698, 0.106491, 0.935571,
		0.585609, -0.801737, -0.119495,
		0.737357, 0.588113, -0.332306,
		39.770180, 32.410717, 47.207626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875736, 31.799604, 47.876472>,  <39.254028, 31.999039, 47.440243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875736, 31.799604, 47.876472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928165, 32.172905, 47.742687>,  <39.959621, 32.396885, 47.662418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928165, 32.172905, 47.742687>,  <39.875736, 31.799604, 47.876472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928165, 32.172905, 47.742687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362948, 0.268776, 0.892204,
		0.922545, -0.238333, -0.303493,
		0.131070, 0.933251, -0.334460,
		39.967487, 32.452881, 47.642349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520866, 32.039066, 48.005035>,  <39.875736, 31.799604, 47.876472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520866, 32.039066, 48.005035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316338, 32.380894, 47.968655>,  <40.193623, 32.585991, 47.946827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316338, 32.380894, 47.968655>,  <40.520866, 32.039066, 48.005035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316338, 32.380894, 47.968655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372478, 0.315748, 0.872676,
		0.774477, 0.412337, -0.479754,
		-0.511317, 0.854565, -0.090953,
		40.162941, 32.637264, 47.941368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004726, 32.537598, 48.139484>,  <40.520866, 32.039066, 48.005035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004726, 32.537598, 48.139484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626293, 32.648235, 48.206928>,  <40.399235, 32.714619, 48.247395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626293, 32.648235, 48.206928>,  <41.004726, 32.537598, 48.139484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626293, 32.648235, 48.206928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235420, 0.229548, 0.944397,
		0.222513, 0.933167, -0.282287,
		-0.946079, 0.276597, 0.168609,
		40.342468, 32.731213, 48.257511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851807, 33.294003, 48.244068>,  <41.004726, 32.537598, 48.139484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851807, 33.294003, 48.244068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605591, 33.076641, 48.472389>,  <40.457859, 32.946224, 48.609383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605591, 33.076641, 48.472389>,  <40.851807, 33.294003, 48.244068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605591, 33.076641, 48.472389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221441, 0.575843, 0.787000,
		-0.756354, 0.610832, -0.234124,
		-0.615543, -0.543405, 0.570804,
		40.420929, 32.913620, 48.643631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085007, 34.064026, 48.223976>,  <40.851807, 33.294003, 48.244068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085007, 34.064026, 48.223976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278038, 33.795151, 48.448574>,  <41.393856, 33.633827, 48.583332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278038, 33.795151, 48.448574>,  <41.085007, 34.064026, 48.223976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278038, 33.795151, 48.448574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848059, -0.518829, 0.107761,
		0.218885, -0.528185, -0.820433,
		0.482582, -0.672188, 0.561496,
		41.422813, 33.593494, 48.617023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198181, 34.700947, 48.617634>,  <41.085007, 34.064026, 48.223976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198181, 34.700947, 48.617634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215427, 35.083420, 48.501801>,  <41.225773, 35.312904, 48.432301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215427, 35.083420, 48.501801>,  <41.198181, 34.700947, 48.617634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215427, 35.083420, 48.501801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528324, -0.224192, -0.818909,
		-0.847948, 0.188301, 0.495508,
		0.043112, 0.956181, -0.289586,
		41.228359, 35.370274, 48.414925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514435, 34.929108, 48.566929>,  <41.198181, 34.700947, 48.617634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514435, 34.929108, 48.566929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712776, 35.177582, 48.324192>,  <40.831783, 35.326668, 48.178551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712776, 35.177582, 48.324192>,  <40.514435, 34.929108, 48.566929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712776, 35.177582, 48.324192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792489, 0.037953, -0.608704,
		-0.355089, 0.782742, 0.511104,
		0.495856, 0.621188, -0.606838,
		40.861534, 35.363937, 48.142139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985516, 35.457027, 48.402229>,  <40.514435, 34.929108, 48.566929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985516, 35.457027, 48.402229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266655, 35.471275, 48.118050>,  <40.435341, 35.479824, 47.947544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266655, 35.471275, 48.118050>,  <39.985516, 35.457027, 48.402229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266655, 35.471275, 48.118050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711014, 0.005084, -0.703159,
		-0.021438, 0.999353, 0.028902,
		0.702851, 0.035624, -0.710445,
		40.477509, 35.481964, 47.904915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698780, 35.820690, 47.915401>,  <39.985516, 35.457027, 48.402229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698780, 35.820690, 47.915401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008339, 35.671299, 47.710819>,  <40.194077, 35.581665, 47.588070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008339, 35.671299, 47.710819>,  <39.698780, 35.820690, 47.915401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008339, 35.671299, 47.710819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539808, 0.033316, -0.841129,
		0.331184, 0.927040, -0.175824,
		0.773902, -0.373479, -0.511458,
		40.240509, 35.559254, 47.557381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909855, 36.263256, 47.330906>,  <39.698780, 35.820690, 47.915401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909855, 36.263256, 47.330906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065731, 35.905777, 47.241962>,  <40.159256, 35.691288, 47.188599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065731, 35.905777, 47.241962>,  <39.909855, 36.263256, 47.330906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065731, 35.905777, 47.241962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388169, 0.059557, -0.919662,
		0.835146, 0.444691, -0.323699,
		0.389686, -0.893702, -0.222354,
		40.182636, 35.637665, 47.175255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205353, 36.256233, 46.697983>,  <39.909855, 36.263256, 47.330906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205353, 36.256233, 46.697983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203564, 35.857761, 46.732845>,  <40.202488, 35.618675, 46.753765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203564, 35.857761, 46.732845>,  <40.205353, 36.256233, 46.697983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203564, 35.857761, 46.732845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133981, -0.085778, -0.987265,
		0.990974, -0.016097, -0.133085,
		-0.004476, -0.996184, 0.087160,
		40.202221, 35.558907, 46.758995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705582, 35.877296, 46.187737>,  <40.205353, 36.256233, 46.697983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705582, 35.877296, 46.187737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444893, 35.603062, 46.317493>,  <40.288479, 35.438522, 46.395348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444893, 35.603062, 46.317493>,  <40.705582, 35.877296, 46.187737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444893, 35.603062, 46.317493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157017, -0.296475, -0.942045,
		0.742023, -0.664890, 0.085572,
		-0.651726, -0.685583, 0.324391,
		40.249374, 35.397388, 46.414810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817188, 35.318165, 45.716961>,  <40.705582, 35.877296, 46.187737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817188, 35.318165, 45.716961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446255, 35.256058, 45.853168>,  <40.223694, 35.218796, 45.934891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446255, 35.256058, 45.853168>,  <40.817188, 35.318165, 45.716961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446255, 35.256058, 45.853168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269311, -0.354939, -0.895259,
		0.259866, -0.921906, 0.287331,
		-0.927330, -0.155266, 0.340516,
		40.168056, 35.209476, 45.955322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702663, 34.677605, 45.529217>,  <40.817188, 35.318165, 45.716961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702663, 34.677605, 45.529217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354919, 34.871944, 45.565346>,  <40.146275, 34.988548, 45.587025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354919, 34.871944, 45.565346>,  <40.702663, 34.677605, 45.529217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354919, 34.871944, 45.565346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266927, -0.307848, -0.913225,
		-0.415888, -0.818032, 0.397318,
		-0.869361, 0.485854, 0.090324,
		40.094112, 35.017700, 45.592442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231541, 34.342033, 44.992760>,  <40.702663, 34.677605, 45.529217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231541, 34.342033, 44.992760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980545, 34.624107, 45.124802>,  <39.829948, 34.793354, 45.204029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980545, 34.624107, 45.124802>,  <40.231541, 34.342033, 44.992760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980545, 34.624107, 45.124802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464070, 0.001719, -0.885796,
		-0.625221, -0.709017, 0.326179,
		-0.627484, 0.705189, 0.330109,
		39.792301, 34.835663, 45.223835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512287, 34.229328, 44.776310>,  <40.231541, 34.342033, 44.992760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512287, 34.229328, 44.776310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530842, 34.627346, 44.811489>,  <39.541973, 34.866158, 44.832596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530842, 34.627346, 44.811489>,  <39.512287, 34.229328, 44.776310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530842, 34.627346, 44.811489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243571, 0.096649, -0.965055,
		-0.968773, 0.023342, 0.246847,
		0.046383, 0.995045, 0.087946,
		39.544758, 34.925861, 44.837872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873924, 34.396320, 44.495895>,  <39.512287, 34.229328, 44.776310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873924, 34.396320, 44.495895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139488, 34.695171, 44.483074>,  <39.298824, 34.874481, 44.475384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139488, 34.695171, 44.483074>,  <38.873924, 34.396320, 44.495895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139488, 34.695171, 44.483074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142540, 0.084358, -0.986188,
		-0.734106, 0.659304, 0.162502,
		0.663906, 0.747129, -0.032050,
		39.338661, 34.919312, 44.473457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632965, 34.866974, 44.122940>,  <38.873924, 34.396320, 44.495895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632965, 34.866974, 44.122940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018185, 34.971085, 44.095222>,  <39.249317, 35.033550, 44.078590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018185, 34.971085, 44.095222>,  <38.632965, 34.866974, 44.122940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018185, 34.971085, 44.095222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106662, 0.132306, -0.985453,
		-0.247319, 0.956427, 0.155178,
		0.963046, 0.260273, -0.069293,
		39.307098, 35.049168, 44.074436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623196, 35.358505, 43.682610>,  <38.632965, 34.866974, 44.122940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623196, 35.358505, 43.682610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000278, 35.225056, 43.682102>,  <39.226528, 35.144985, 43.681797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000278, 35.225056, 43.682102>,  <38.623196, 35.358505, 43.682610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000278, 35.225056, 43.682102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021210, 0.063723, -0.997742,
		0.332953, 0.940549, 0.067148,
		0.942705, -0.333625, -0.001268,
		39.283089, 35.124969, 43.681721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003738, 35.865326, 43.355713>,  <38.623196, 35.358505, 43.682610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003738, 35.865326, 43.355713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227516, 35.535358, 43.323391>,  <39.361782, 35.337379, 43.303997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227516, 35.535358, 43.323391>,  <39.003738, 35.865326, 43.355713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227516, 35.535358, 43.323391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175300, 0.213035, -0.961190,
		0.810116, 0.523572, 0.263790,
		0.559449, -0.824917, -0.080800,
		39.395351, 35.287884, 43.299152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295544, 35.947105, 42.660492>,  <39.003738, 35.865326, 43.355713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295544, 35.947105, 42.660492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431713, 35.588169, 42.772839>,  <39.513416, 35.372807, 42.840248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431713, 35.588169, 42.772839>,  <39.295544, 35.947105, 42.660492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431713, 35.588169, 42.772839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247605, -0.202612, -0.947439,
		0.907084, 0.392076, 0.153212,
		0.340425, -0.897343, 0.280866,
		39.533840, 35.318966, 42.857098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914486, 35.845734, 42.341228>,  <39.295544, 35.947105, 42.660492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914486, 35.845734, 42.341228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781387, 35.475555, 42.413704>,  <39.701527, 35.253448, 42.457191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781387, 35.475555, 42.413704>,  <39.914486, 35.845734, 42.341228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781387, 35.475555, 42.413704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313694, -0.289826, -0.904211,
		0.889310, -0.244038, 0.386746,
		-0.332751, -0.925444, 0.181192,
		39.681561, 35.197922, 42.468060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479248, 35.373699, 42.141468>,  <39.914486, 35.845734, 42.341228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479248, 35.373699, 42.141468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113670, 35.213757, 42.113701>,  <39.894325, 35.117790, 42.097042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113670, 35.213757, 42.113701>,  <40.479248, 35.373699, 42.141468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113670, 35.213757, 42.113701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131920, -0.130954, -0.982572,
		0.383800, -0.907174, 0.172434,
		-0.913944, -0.399859, -0.069414,
		39.839485, 35.093800, 42.092876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564354, 34.701313, 41.724022>,  <40.479248, 35.373699, 42.141468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564354, 34.701313, 41.724022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172737, 34.782082, 41.713394>,  <39.937767, 34.830544, 41.707016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172737, 34.782082, 41.713394>,  <40.564354, 34.701313, 41.724022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172737, 34.782082, 41.713394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036275, -0.301285, -0.952844,
		-0.200404, -0.931910, 0.302295,
		-0.979042, 0.201919, -0.026573,
		39.879025, 34.842659, 41.705421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256878, 34.131210, 41.485859>,  <40.564354, 34.701313, 41.724022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256878, 34.131210, 41.485859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007652, 34.431023, 41.396412>,  <39.858116, 34.610909, 41.342743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007652, 34.431023, 41.396412>,  <40.256878, 34.131210, 41.485859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007652, 34.431023, 41.396412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041694, -0.317314, -0.947404,
		-0.781061, -0.580966, 0.228957,
		-0.623061, 0.749527, -0.223618,
		39.820736, 34.655880, 41.329327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824425, 33.802895, 40.984863>,  <40.256878, 34.131210, 41.485859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824425, 33.802895, 40.984863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707901, 34.181328, 40.928204>,  <39.637989, 34.408390, 40.894207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707901, 34.181328, 40.928204>,  <39.824425, 33.802895, 40.984863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707901, 34.181328, 40.928204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213622, -0.208666, -0.954371,
		-0.932473, -0.247753, 0.262890,
		-0.291305, 0.946085, -0.141650,
		39.620510, 34.465153, 40.885708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254078, 33.717228, 40.512383>,  <39.824425, 33.802895, 40.984863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254078, 33.717228, 40.512383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342793, 34.106674, 40.490871>,  <39.396019, 34.340340, 40.477966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342793, 34.106674, 40.490871>,  <39.254078, 33.717228, 40.512383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342793, 34.106674, 40.490871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316975, 0.019830, -0.948227,
		-0.922138, 0.227347, 0.313009,
		0.221784, 0.973612, -0.053778,
		39.409328, 34.398758, 40.474739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600761, 34.085560, 40.205654>,  <39.254078, 33.717228, 40.512383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600761, 34.085560, 40.205654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928139, 34.309948, 40.155910>,  <39.124565, 34.444580, 40.126064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928139, 34.309948, 40.155910>,  <38.600761, 34.085560, 40.205654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928139, 34.309948, 40.155910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149286, -0.001394, -0.988793,
		-0.554861, 0.827832, 0.082605,
		0.818439, 0.560975, -0.124357,
		39.173672, 34.478241, 40.118603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387791, 34.574974, 39.671432>,  <38.600761, 34.085560, 40.205654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387791, 34.574974, 39.671432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786648, 34.586315, 39.643421>,  <39.025963, 34.593121, 39.626614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786648, 34.586315, 39.643421>,  <38.387791, 34.574974, 39.671432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786648, 34.586315, 39.643421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070659, 0.021809, -0.997262,
		-0.026749, 0.999360, 0.023750,
		0.997142, 0.028354, -0.070030,
		39.085789, 34.594822, 39.622414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518478, 34.991596, 39.045448>,  <38.387791, 34.574974, 39.671432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518478, 34.991596, 39.045448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860302, 34.793152, 39.106892>,  <39.065395, 34.674084, 39.143757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860302, 34.793152, 39.106892>,  <38.518478, 34.991596, 39.045448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860302, 34.793152, 39.106892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077163, -0.171194, -0.982211,
		0.513586, 0.851212, -0.108014,
		0.854561, -0.496115, 0.153605,
		39.116669, 34.644318, 39.152973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009789, 35.277153, 38.622269>,  <38.518478, 34.991596, 39.045448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009789, 35.277153, 38.622269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165226, 34.914734, 38.689297>,  <39.258488, 34.697281, 38.729511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165226, 34.914734, 38.689297>,  <39.009789, 35.277153, 38.622269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165226, 34.914734, 38.689297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353052, -0.021569, -0.935355,
		0.851089, 0.422629, 0.311500,
		0.388589, -0.906046, 0.167567,
		39.281803, 34.642921, 38.739567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718605, 35.330730, 38.499233>,  <39.009789, 35.277153, 38.622269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718605, 35.330730, 38.499233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620167, 34.948166, 38.436344>,  <39.561104, 34.718628, 38.398609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620167, 34.948166, 38.436344>,  <39.718605, 35.330730, 38.499233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620167, 34.948166, 38.436344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506380, 0.011448, -0.862234,
		0.826448, -0.291807, 0.481489,
		-0.246094, -0.956409, -0.157226,
		39.546337, 34.661243, 38.389175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298347, 34.973614, 38.275333>,  <39.718605, 35.330730, 38.499233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298347, 34.973614, 38.275333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015491, 34.717472, 38.155403>,  <39.845779, 34.563786, 38.083447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015491, 34.717472, 38.155403>,  <40.298347, 34.973614, 38.275333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015491, 34.717472, 38.155403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459622, -0.094066, -0.883119,
		0.537307, -0.762296, 0.360839,
		-0.707142, -0.640356, -0.299826,
		39.803349, 34.525364, 38.065456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665642, 34.500195, 37.885658>,  <40.298347, 34.973614, 38.275333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665642, 34.500195, 37.885658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280777, 34.471149, 37.780602>,  <40.049858, 34.453724, 37.717567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280777, 34.471149, 37.780602>,  <40.665642, 34.500195, 37.885658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280777, 34.471149, 37.780602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255489, 0.094749, -0.962158,
		0.094749, -0.992849, -0.072612,
		0.962158, 0.072612, 0.262639,
		39.992130, 34.449368, 37.701809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656979, 34.133755, 37.291740>,  <40.665642, 34.500195, 37.885658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656979, 34.133755, 37.291740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292774, 34.298374, 37.275784>,  <40.074249, 34.397144, 37.266209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292774, 34.298374, 37.275784>,  <40.656979, 34.133755, 37.291740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292774, 34.298374, 37.275784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123969, 0.179681, -0.975882,
		-0.394454, -0.893501, -0.214621,
		-0.910515, 0.411547, -0.039891,
		40.019619, 34.421837, 37.263817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246567, 33.722263, 36.749741>,  <40.656979, 34.133755, 37.291740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246567, 33.722263, 36.749741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105247, 34.092659, 36.802994>,  <40.020458, 34.314896, 36.834946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105247, 34.092659, 36.802994>,  <40.246567, 33.722263, 36.749741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105247, 34.092659, 36.802994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072021, 0.168805, -0.983015,
		-0.932735, -0.337707, -0.126329,
		-0.353296, 0.925991, 0.133128,
		39.999260, 34.370457, 36.842934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832512, 33.703526, 36.076866>,  <40.246567, 33.722263, 36.749741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832512, 33.703526, 36.076866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882687, 34.075356, 36.215523>,  <39.912792, 34.298454, 36.298717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882687, 34.075356, 36.215523>,  <39.832512, 33.703526, 36.076866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882687, 34.075356, 36.215523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054162, 0.342467, -0.937967,
		-0.990623, 0.136427, -0.007391,
		0.125433, 0.929572, 0.346644,
		39.920315, 34.354229, 36.319515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489735, 34.150051, 35.638695>,  <39.832512, 33.703526, 36.076866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489735, 34.150051, 35.638695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736832, 34.412231, 35.812492>,  <39.885090, 34.569538, 35.916771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736832, 34.412231, 35.812492>,  <39.489735, 34.150051, 35.638695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736832, 34.412231, 35.812492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210059, 0.394904, -0.894386,
		-0.757807, 0.643767, 0.106264,
		0.617740, 0.655450, 0.434490,
		39.922153, 34.608868, 35.942841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207973, 34.876377, 35.567245>,  <39.489735, 34.150051, 35.638695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207973, 34.876377, 35.567245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604836, 34.856434, 35.613102>,  <39.842953, 34.844467, 35.640617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604836, 34.856434, 35.613102>,  <39.207973, 34.876377, 35.567245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604836, 34.856434, 35.613102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121529, 0.599766, -0.790893,
		-0.029326, 0.798621, 0.601120,
		0.992155, -0.049860, 0.114644,
		39.902481, 34.841476, 35.647495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382889, 35.530769, 35.473564>,  <39.207973, 34.876377, 35.567245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382889, 35.530769, 35.473564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736916, 35.356560, 35.407871>,  <39.949333, 35.252033, 35.368458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736916, 35.356560, 35.407871>,  <39.382889, 35.530769, 35.473564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736916, 35.356560, 35.407871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218679, 0.700549, -0.679272,
		0.410887, 0.565291, 0.715275,
		0.885071, -0.435519, -0.164230,
		40.002438, 35.225903, 35.358601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653770, 35.962929, 35.150589>,  <39.382889, 35.530769, 35.473564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653770, 35.962929, 35.150589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956924, 35.710903, 35.082905>,  <40.138817, 35.559689, 35.042294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956924, 35.710903, 35.082905>,  <39.653770, 35.962929, 35.150589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956924, 35.710903, 35.082905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288827, 0.556620, -0.778944,
		0.584967, 0.541479, 0.603833,
		0.757887, -0.630060, -0.169210,
		40.184292, 35.521885, 35.032143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329254, 36.395527, 35.144394>,  <39.653770, 35.962929, 35.150589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329254, 36.395527, 35.144394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374630, 36.049057, 34.949718>,  <40.401855, 35.841175, 34.832912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374630, 36.049057, 34.949718>,  <40.329254, 36.395527, 35.144394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374630, 36.049057, 34.949718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170059, 0.499550, -0.849429,
		0.978883, 0.013590, 0.203968,
		0.113437, -0.866179, -0.486690,
		40.408661, 35.789204, 34.803711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976727, 36.392456, 34.792889>,  <40.329254, 36.395527, 35.144394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976727, 36.392456, 34.792889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777233, 36.105350, 34.598534>,  <40.657536, 35.933086, 34.481922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777233, 36.105350, 34.598534>,  <40.976727, 36.392456, 34.792889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777233, 36.105350, 34.598534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343582, 0.350940, -0.871087,
		0.795748, -0.601382, 0.071584,
		-0.498734, -0.717761, -0.485884,
		40.627613, 35.890022, 34.452766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428158, 36.154087, 34.276943>,  <40.976727, 36.392456, 34.792889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428158, 36.154087, 34.276943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053112, 36.064014, 34.170979>,  <40.828087, 36.009972, 34.107399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053112, 36.064014, 34.170979>,  <41.428158, 36.154087, 34.276943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053112, 36.064014, 34.170979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155720, 0.409248, -0.899037,
		0.310861, -0.884199, -0.348650,
		-0.937612, -0.225184, -0.264907,
		40.771828, 35.996460, 34.091507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348568, 35.751781, 33.644550>,  <41.428158, 36.154087, 34.276943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348568, 35.751781, 33.644550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041370, 36.006382, 33.672970>,  <40.857052, 36.159142, 33.690022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041370, 36.006382, 33.672970>,  <41.348568, 35.751781, 33.644550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041370, 36.006382, 33.672970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141311, 0.276611, -0.950535,
		-0.624668, -0.719969, -0.302381,
		-0.767998, 0.636498, 0.071050,
		40.810970, 36.197330, 33.694286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366047, 35.190472, 33.053406>,  <41.348568, 35.751781, 33.644550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366047, 35.190472, 33.053406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434090, 34.833935, 32.885323>,  <41.474915, 34.620014, 32.784473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434090, 34.833935, 32.885323>,  <41.366047, 35.190472, 33.053406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434090, 34.833935, 32.885323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748932, -0.160202, 0.642990,
		-0.640442, -0.424081, 0.640304,
		0.170102, -0.891342, -0.420208,
		41.485119, 34.566532, 32.759258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219688, 34.584522, 33.485016>,  <41.366047, 35.190472, 33.053406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219688, 34.584522, 33.485016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554985, 34.560528, 33.268219>,  <41.756161, 34.546131, 33.138142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554985, 34.560528, 33.268219>,  <41.219688, 34.584522, 33.485016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554985, 34.560528, 33.268219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526295, -0.171161, 0.832897,
		-0.142729, -0.983416, -0.111904,
		0.838238, -0.059984, -0.541996,
		41.806458, 34.542534, 33.105621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564831, 33.961418, 33.801693>,  <41.219688, 34.584522, 33.485016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564831, 33.961418, 33.801693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799374, 34.233459, 33.625671>,  <41.940098, 34.396683, 33.520058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799374, 34.233459, 33.625671>,  <41.564831, 33.961418, 33.801693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799374, 34.233459, 33.625671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656276, -0.080378, 0.750228,
		0.474860, -0.728698, -0.493464,
		0.586353, 0.680102, -0.440058,
		41.975281, 34.437489, 33.493652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286564, 33.678749, 33.683464>,  <41.564831, 33.961418, 33.801693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286564, 33.678749, 33.683464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293262, 34.078247, 33.702343>,  <42.297283, 34.317947, 33.713669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293262, 34.078247, 33.702343>,  <42.286564, 33.678749, 33.683464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293262, 34.078247, 33.702343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694542, -0.045579, 0.718007,
		0.719257, 0.020754, -0.694434,
		0.016750, 0.998745, 0.047198,
		42.298286, 34.377872, 33.716503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032402, 33.959274, 33.423943>,  <42.286564, 33.678749, 33.683464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032402, 33.959274, 33.423943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821671, 34.155235, 33.701778>,  <42.695232, 34.272812, 33.868481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821671, 34.155235, 33.701778>,  <43.032402, 33.959274, 33.423943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821671, 34.155235, 33.701778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804944, 0.025105, 0.592820,
		0.272985, 0.871418, -0.407567,
		-0.526826, 0.489899, 0.694589,
		42.663624, 34.302204, 33.910156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419449, 34.579124, 33.605885>,  <43.032402, 33.959274, 33.423943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419449, 34.579124, 33.605885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180557, 34.431767, 33.890869>,  <43.037220, 34.343349, 34.061859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180557, 34.431767, 33.890869>,  <43.419449, 34.579124, 33.605885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180557, 34.431767, 33.890869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712554, 0.164089, 0.682159,
		-0.368213, 0.915072, 0.164505,
		-0.597231, -0.368399, 0.712458,
		43.001389, 34.321247, 34.104607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.305573, 34.960266, 34.266968>,  <43.419449, 34.579124, 33.605885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.305573, 34.960266, 34.266968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254078, 34.572697, 34.351463>,  <43.223183, 34.340157, 34.402161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254078, 34.572697, 34.351463>,  <43.305573, 34.960266, 34.266968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254078, 34.572697, 34.351463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615019, 0.089093, 0.783463,
		-0.777933, 0.230774, 0.584435,
		-0.128734, -0.968920, 0.211239,
		43.215458, 34.282021, 34.414837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082291, 35.158180, 34.346645>,  <43.305573, 34.960266, 34.266968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082291, 35.158180, 34.346645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.451946, 35.268970, 34.241379>,  <44.673740, 35.335445, 34.178219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.451946, 35.268970, 34.241379>,  <44.082291, 35.158180, 34.346645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.451946, 35.268970, 34.241379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242663, 0.957540, 0.155668,
		0.295109, -0.079997, 0.952109,
		0.924135, 0.276980, -0.263167,
		44.729187, 35.352066, 34.162430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290710, 35.695450, 34.756889>,  <44.082291, 35.158180, 34.346645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290710, 35.695450, 34.756889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549622, 35.756355, 34.458130>,  <44.704967, 35.792896, 34.278873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549622, 35.756355, 34.458130>,  <44.290710, 35.695450, 34.756889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549622, 35.756355, 34.458130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184668, 0.981981, 0.040147,
		0.739549, 0.111942, 0.663729,
		0.647275, 0.152260, -0.746895,
		44.743805, 35.802032, 34.234062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670231, 36.307068, 34.876038>,  <44.290710, 35.695450, 34.756889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670231, 36.307068, 34.876038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719631, 36.238483, 34.485069>,  <44.749271, 36.197334, 34.250488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719631, 36.238483, 34.485069>,  <44.670231, 36.307068, 34.876038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719631, 36.238483, 34.485069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019024, 0.985188, -0.170420,
		0.992162, 0.002452, 0.124931,
		0.123499, -0.171461, -0.977420,
		44.756680, 36.187046, 34.191845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.936882, 36.887405, 34.647583>,  <44.670231, 36.307068, 34.876038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.936882, 36.887405, 34.647583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.835098, 36.745724, 34.287628>,  <44.774029, 36.660713, 34.071655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.835098, 36.745724, 34.287628>,  <44.936882, 36.887405, 34.647583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.835098, 36.745724, 34.287628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136766, 0.934341, -0.329093,
		0.957365, 0.039335, -0.286191,
		-0.254455, -0.354204, -0.899885,
		44.758762, 36.639462, 34.017662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340199, 37.255821, 34.102676>,  <44.936882, 36.887405, 34.647583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340199, 37.255821, 34.102676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.013588, 37.093460, 33.938465>,  <44.817623, 36.996044, 33.839939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.013588, 37.093460, 33.938465>,  <45.340199, 37.255821, 34.102676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.013588, 37.093460, 33.938465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257081, 0.892353, -0.370967,
		0.516914, -0.197363, -0.832975,
		-0.816523, -0.405900, -0.410531,
		44.768631, 36.971691, 33.815304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.298626, 37.623863, 33.513889>,  <45.340199, 37.255821, 34.102676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.298626, 37.623863, 33.513889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925682, 37.479259, 33.512135>,  <44.701916, 37.392498, 33.511082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925682, 37.479259, 33.512135>,  <45.298626, 37.623863, 33.513889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925682, 37.479259, 33.512135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307980, 0.800538, -0.514089,
		0.189365, -0.477962, -0.857726,
		-0.932357, -0.361513, -0.004390,
		44.645973, 37.370804, 33.510818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034988, 37.663734, 32.802944>,  <45.298626, 37.623863, 33.513889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034988, 37.663734, 32.802944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719612, 37.631203, 33.046829>,  <44.530388, 37.611683, 33.193161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719612, 37.631203, 33.046829>,  <45.034988, 37.663734, 32.802944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719612, 37.631203, 33.046829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449251, 0.753208, -0.480471,
		-0.420159, -0.652735, -0.630399,
		-0.788441, -0.081333, 0.609709,
		44.483078, 37.606804, 33.229740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393616, 37.874969, 32.388462>,  <45.034988, 37.663734, 32.802944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393616, 37.874969, 32.388462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266300, 37.890396, 32.767345>,  <44.189911, 37.899654, 32.994675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266300, 37.890396, 32.767345>,  <44.393616, 37.874969, 32.388462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266300, 37.890396, 32.767345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597099, 0.767914, -0.231908,
		-0.736321, -0.639391, -0.221385,
		-0.318284, 0.038570, 0.947211,
		44.170815, 37.901966, 33.051510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561901, 37.945427, 32.428207>,  <44.393616, 37.874969, 32.388462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561901, 37.945427, 32.428207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750862, 38.100544, 32.744801>,  <43.864239, 38.193615, 32.934757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750862, 38.100544, 32.744801>,  <43.561901, 37.945427, 32.428207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750862, 38.100544, 32.744801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354818, 0.905700, -0.231973,
		-0.806806, -0.171248, 0.565455,
		0.472407, 0.387791, 0.791486,
		43.892586, 38.216881, 32.982246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925735, 38.285915, 32.896374>,  <43.561901, 37.945427, 32.428207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925735, 38.285915, 32.896374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260895, 38.459438, 33.028877>,  <43.461990, 38.563553, 33.108379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260895, 38.459438, 33.028877>,  <42.925735, 38.285915, 32.896374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260895, 38.459438, 33.028877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288489, 0.867178, -0.405927,
		-0.463353, 0.244563, 0.851759,
		0.837901, 0.433810, 0.331256,
		43.512264, 38.589581, 33.128254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739285, 38.945526, 33.079754>,  <42.925735, 38.285915, 32.896374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739285, 38.945526, 33.079754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133362, 38.994884, 33.032158>,  <43.369808, 39.024502, 33.003601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133362, 38.994884, 33.032158>,  <42.739285, 38.945526, 33.079754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133362, 38.994884, 33.032158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143506, 0.973375, -0.178739,
		0.093761, 0.193168, 0.976675,
		0.985198, 0.123400, -0.118985,
		43.428921, 39.031906, 32.996464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880264, 39.644928, 33.393879>,  <42.739285, 38.945526, 33.079754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880264, 39.644928, 33.393879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177052, 39.561398, 33.139046>,  <43.355125, 39.511280, 32.986145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177052, 39.561398, 33.139046>,  <42.880264, 39.644928, 33.393879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177052, 39.561398, 33.139046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033792, 0.960695, -0.275542,
		0.669583, 0.182915, 0.719862,
		0.741969, -0.208824, -0.637084,
		43.399643, 39.498749, 32.947922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331600, 40.170895, 33.534908>,  <42.880264, 39.644928, 33.393879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331600, 40.170895, 33.534908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466923, 40.038620, 33.182499>,  <43.548115, 39.959255, 32.971054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466923, 40.038620, 33.182499>,  <43.331600, 40.170895, 33.534908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466923, 40.038620, 33.182499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208146, 0.939328, -0.272651,
		0.917729, -0.091142, 0.386609,
		0.338303, -0.330691, -0.881019,
		43.568413, 39.939411, 32.918194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007122, 40.385475, 33.390503>,  <43.331600, 40.170895, 33.534908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.007122, 40.385475, 33.390503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.907352, 40.310612, 33.010448>,  <43.847492, 40.265694, 32.782417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.907352, 40.310612, 33.010448>,  <44.007122, 40.385475, 33.390503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907352, 40.310612, 33.010448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236062, 0.939798, -0.247094,
		0.939177, -0.285926, -0.190245,
		-0.249442, -0.187155, -0.950132,
		43.832527, 40.254463, 32.725407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528728, 40.699532, 33.057453>,  <44.007122, 40.385475, 33.390503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528728, 40.699532, 33.057453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217968, 40.655628, 32.809464>,  <44.031509, 40.629284, 32.660667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217968, 40.655628, 32.809464>,  <44.528728, 40.699532, 33.057453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217968, 40.655628, 32.809464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171216, 0.910750, -0.375791,
		0.605892, -0.398103, -0.688773,
		-0.776904, -0.109760, -0.619978,
		43.984898, 40.622700, 32.623470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767338, 41.097511, 32.507046>,  <44.528728, 40.699532, 33.057453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767338, 41.097511, 32.507046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370171, 41.064926, 32.472446>,  <44.131870, 41.045376, 32.451687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370171, 41.064926, 32.472446>,  <44.767338, 41.097511, 32.507046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370171, 41.064926, 32.472446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036222, 0.900856, -0.432604,
		0.113168, -0.426405, -0.897425,
		-0.992915, -0.081463, -0.086503,
		44.072296, 41.040485, 32.446495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668434, 41.518913, 31.899790>,  <44.767338, 41.097511, 32.507046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.668434, 41.518913, 31.899790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317722, 41.486542, 32.089401>,  <44.107296, 41.467117, 32.203167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317722, 41.486542, 32.089401>,  <44.668434, 41.518913, 31.899790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317722, 41.486542, 32.089401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183263, 0.967583, -0.173773,
		-0.444600, -0.239233, -0.863191,
		-0.876781, -0.080931, 0.474030,
		44.054688, 41.462261, 32.231609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094963, 41.876034, 31.504332>,  <44.668434, 41.518913, 31.899790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094963, 41.876034, 31.504332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.941113, 41.859371, 31.873184>,  <43.848804, 41.849373, 32.094498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.941113, 41.859371, 31.873184>,  <44.094963, 41.876034, 31.504332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.941113, 41.859371, 31.873184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232687, 0.971096, -0.053183,
		-0.893265, -0.235024, -0.383200,
		-0.384623, -0.041659, 0.922133,
		43.825726, 41.846874, 32.149822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554924, 42.302692, 31.400658>,  <44.094963, 41.876034, 31.504332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554924, 42.302692, 31.400658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612206, 42.287437, 31.796242>,  <43.646576, 42.278286, 32.033592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612206, 42.287437, 31.796242>,  <43.554924, 42.302692, 31.400658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612206, 42.287437, 31.796242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250107, 0.965429, 0.073444,
		-0.957570, -0.257863, 0.128713,
		0.143202, -0.038136, 0.988959,
		43.655167, 42.275997, 32.092930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932312, 42.711689, 31.650497>,  <43.554924, 42.302692, 31.400658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932312, 42.711689, 31.650497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221676, 42.706394, 31.926615>,  <43.395294, 42.703217, 32.092285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221676, 42.706394, 31.926615>,  <42.932312, 42.711689, 31.650497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.221676, 42.706394, 31.926615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102026, 0.986790, 0.125842,
		-0.682841, -0.161463, 0.712501,
		0.723408, -0.013237, 0.690294,
		43.438698, 42.702423, 32.133701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670605, 43.204777, 32.195999>,  <42.932312, 42.711689, 31.650497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670605, 43.204777, 32.195999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063042, 43.132927, 32.167191>,  <43.298504, 43.089817, 32.149906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063042, 43.132927, 32.167191>,  <42.670605, 43.204777, 32.195999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063042, 43.132927, 32.167191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182580, 0.982504, 0.036739,
		0.064164, -0.049194, 0.996726,
		0.981095, -0.179625, -0.072023,
		43.357368, 43.079041, 32.145584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009228, 43.513309, 32.767910>,  <42.670605, 43.204777, 32.195999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009228, 43.513309, 32.767910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247646, 43.476109, 32.448891>,  <43.390697, 43.453789, 32.257481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247646, 43.476109, 32.448891>,  <43.009228, 43.513309, 32.767910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247646, 43.476109, 32.448891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237318, 0.969299, 0.064335,
		0.767078, -0.227619, 0.599818,
		0.596047, -0.092998, -0.797546,
		43.426460, 43.448208, 32.209625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258537, 44.218601, 32.578495>,  <43.009228, 43.513309, 32.767910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258537, 44.218601, 32.578495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478943, 44.108391, 32.263412>,  <43.611187, 44.042267, 32.074364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478943, 44.108391, 32.263412>,  <43.258537, 44.218601, 32.578495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478943, 44.108391, 32.263412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229772, 0.957528, -0.174195,
		0.802242, -0.085009, 0.590916,
		0.551011, -0.275522, -0.787702,
		43.644245, 44.025734, 32.027103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882004, 44.548870, 32.697006>,  <43.258537, 44.218601, 32.578495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882004, 44.548870, 32.697006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.820961, 44.446701, 32.315125>,  <43.784336, 44.385399, 32.085995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.820961, 44.446701, 32.315125>,  <43.882004, 44.548870, 32.697006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.820961, 44.446701, 32.315125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125345, 0.953220, -0.275065,
		0.980305, -0.161646, -0.113454,
		-0.152610, -0.255427, -0.954708,
		43.775177, 44.370071, 32.028713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397888, 44.817432, 32.247986>,  <43.882004, 44.548870, 32.697006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397888, 44.817432, 32.247986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055706, 44.762730, 32.048191>,  <43.850395, 44.729908, 31.928312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055706, 44.762730, 32.048191>,  <44.397888, 44.817432, 32.247986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.055706, 44.762730, 32.048191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033641, 0.947791, -0.317113,
		0.516781, -0.288080, -0.806193,
		-0.855457, -0.136757, -0.499491,
		43.799068, 44.721703, 31.898344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.237961, 45.280659, 31.839809>,  <44.397888, 44.817432, 32.247986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.237961, 45.280659, 31.839809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929501, 45.108852, 31.651833>,  <43.744423, 45.005768, 31.539047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929501, 45.108852, 31.651833>,  <44.237961, 45.280659, 31.839809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929501, 45.108852, 31.651833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043832, 0.772211, -0.633852,
		0.635141, -0.468198, -0.614318,
		-0.771152, -0.429513, -0.469941,
		43.698154, 44.980000, 31.510851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406307, 45.335800, 31.165913>,  <44.237961, 45.280659, 31.839809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406307, 45.335800, 31.165913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.009457, 45.295368, 31.195505>,  <43.771347, 45.271107, 31.213261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.009457, 45.295368, 31.195505>,  <44.406307, 45.335800, 31.165913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.009457, 45.295368, 31.195505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125197, 0.780802, -0.612106,
		0.004110, -0.616547, -0.787307,
		-0.992123, -0.101084, 0.073981,
		43.711819, 45.265041, 31.217699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.067616, 45.151798, 30.842115>,  <44.406307, 45.335800, 31.165913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.067616, 45.151798, 30.842115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392937, 45.250450, 30.631323>,  <45.588131, 45.309639, 30.504848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392937, 45.250450, 30.631323>,  <45.067616, 45.151798, 30.842115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392937, 45.250450, 30.631323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240547, -0.967217, -0.081412,
		-0.529783, -0.060550, -0.845969,
		0.813307, 0.246626, -0.526980,
		45.636929, 45.324436, 30.473228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172012, 44.768497, 30.102848>,  <45.067616, 45.151798, 30.842115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172012, 44.768497, 30.102848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.509502, 44.836483, 30.306509>,  <45.711998, 44.877274, 30.428705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.509502, 44.836483, 30.306509>,  <45.172012, 44.768497, 30.102848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.509502, 44.836483, 30.306509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287423, -0.944157, -0.161110,
		0.453336, 0.282275, -0.845463,
		0.843727, 0.169968, 0.509152,
		45.762619, 44.887474, 30.459255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.692539, 44.420551, 29.726959>,  <45.172012, 44.768497, 30.102848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.692539, 44.420551, 29.726959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.810326, 44.421688, 30.109222>,  <45.880997, 44.422371, 30.338579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.810326, 44.421688, 30.109222>,  <45.692539, 44.420551, 29.726959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.810326, 44.421688, 30.109222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123195, -0.991765, -0.035006,
		0.947687, 0.128041, -0.292394,
		0.294468, 0.002847, 0.955657,
		45.898666, 44.422543, 30.395920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.242367, 43.846920, 29.692493>,  <45.692539, 44.420551, 29.726959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.242367, 43.846920, 29.692493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.178665, 43.948200, 30.074181>,  <46.140446, 44.008968, 30.303192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.178665, 43.948200, 30.074181>,  <46.242367, 43.846920, 29.692493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.178665, 43.948200, 30.074181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230509, -0.930299, 0.285323,
		0.959950, 0.265395, 0.089791,
		-0.159255, 0.253199, 0.954216,
		46.130890, 44.024158, 30.360445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.891155, 43.770550, 30.153538>,  <46.242367, 43.846920, 29.692493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.891155, 43.770550, 30.153538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.551483, 43.717503, 30.358013>,  <46.347679, 43.685673, 30.480698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.551483, 43.717503, 30.358013>,  <46.891155, 43.770550, 30.153538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.551483, 43.717503, 30.358013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369324, -0.841020, 0.395330,
		0.377490, 0.524498, 0.763153,
		-0.849177, -0.132618, 0.511186,
		46.296730, 43.677719, 30.511370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.027172, 43.710400, 30.821751>,  <46.891155, 43.770550, 30.153538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.027172, 43.710400, 30.821751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679371, 43.515263, 30.790815>,  <46.470692, 43.398182, 30.772255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679371, 43.515263, 30.790815>,  <47.027172, 43.710400, 30.821751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679371, 43.515263, 30.790815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328477, -0.688040, 0.647074,
		-0.368880, 0.537227, 0.758495,
		-0.869500, -0.487840, -0.077337,
		46.418522, 43.368912, 30.767614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.908539, 43.409599, 31.474068>,  <47.027172, 43.710400, 30.821751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.908539, 43.409599, 31.474068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.697109, 43.172684, 31.230820>,  <46.570251, 43.030537, 31.084871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.697109, 43.172684, 31.230820>,  <46.908539, 43.409599, 31.474068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.697109, 43.172684, 31.230820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341918, -0.804237, 0.486103,
		-0.776984, 0.049013, 0.627610,
		-0.528572, -0.592285, -0.608120,
		46.538536, 42.994999, 31.048384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.884262, 42.842285, 31.924410>,  <46.908539, 43.409599, 31.474068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.884262, 42.842285, 31.924410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.719364, 42.707722, 31.585733>,  <46.620426, 42.626984, 31.382528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.719364, 42.707722, 31.585733>,  <46.884262, 42.842285, 31.924410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.719364, 42.707722, 31.585733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128844, -0.941520, 0.311350,
		-0.901917, 0.019261, 0.431479,
		-0.412243, -0.336405, -0.846692,
		46.595692, 42.606800, 31.331726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.411247, 42.362385, 32.176605>,  <46.884262, 42.842285, 31.924410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.411247, 42.362385, 32.176605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.506584, 42.305519, 31.792316>,  <46.563786, 42.271400, 31.561743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.506584, 42.305519, 31.792316>,  <46.411247, 42.362385, 32.176605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.506584, 42.305519, 31.792316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114404, -0.978230, 0.173138,
		-0.964420, -0.151176, -0.216886,
		0.238339, -0.142165, -0.960721,
		46.578087, 42.262871, 31.504101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.036270, 41.794567, 32.093872>,  <46.411247, 42.362385, 32.176605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.036270, 41.794567, 32.093872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.333698, 41.828999, 31.828632>,  <46.512154, 41.849659, 31.669489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.333698, 41.828999, 31.828632>,  <46.036270, 41.794567, 32.093872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.333698, 41.828999, 31.828632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203959, -0.973617, 0.102321,
		-0.636794, -0.211327, -0.741508,
		0.743568, 0.086080, -0.663096,
		46.556770, 41.854824, 31.629704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.765739, 41.403877, 31.644058>,  <46.036270, 41.794567, 32.093872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.765739, 41.403877, 31.644058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.162949, 41.426758, 31.602812>,  <46.401276, 41.440487, 31.578064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.162949, 41.426758, 31.602812>,  <45.765739, 41.403877, 31.644058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.162949, 41.426758, 31.602812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086365, -0.948199, 0.305711,
		-0.080290, -0.312484, -0.946524,
		0.993023, 0.057201, -0.103118,
		46.460857, 41.443916, 31.571877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.967655, 40.712105, 31.269270>,  <45.765739, 41.403877, 31.644058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.967655, 40.712105, 31.269270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314156, 40.845337, 31.418224>,  <46.522057, 40.925278, 31.507597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314156, 40.845337, 31.418224>,  <45.967655, 40.712105, 31.269270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.314156, 40.845337, 31.418224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255884, -0.935948, 0.241919,
		0.429115, -0.114274, -0.895992,
		0.866247, 0.333081, 0.372388,
		46.574028, 40.945263, 31.529942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.547836, 40.235603, 30.951328>,  <45.967655, 40.712105, 31.269270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.547836, 40.235603, 30.951328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.707245, 40.399899, 31.279346>,  <46.802891, 40.498474, 31.476158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.707245, 40.399899, 31.279346>,  <46.547836, 40.235603, 30.951328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.707245, 40.399899, 31.279346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328245, -0.898766, 0.290647,
		0.856409, 0.153348, -0.492998,
		0.398520, 0.410737, 0.820047,
		46.826801, 40.523121, 31.525360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.287827, 40.000168, 30.979174>,  <46.547836, 40.235603, 30.951328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.287827, 40.000168, 30.979174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.190933, 40.088234, 31.357138>,  <47.132797, 40.141071, 31.583916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.190933, 40.088234, 31.357138>,  <47.287827, 40.000168, 30.979174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.190933, 40.088234, 31.357138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384575, -0.872349, 0.301844,
		0.890744, 0.436505, 0.126644,
		-0.242234, 0.220161, 0.944908,
		47.118263, 40.154282, 31.640610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.827168, 39.745296, 31.453043>,  <47.287827, 40.000168, 30.979174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.827168, 39.745296, 31.453043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547321, 39.816299, 31.729893>,  <47.379414, 39.858902, 31.896002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547321, 39.816299, 31.729893>,  <47.827168, 39.745296, 31.453043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.547321, 39.816299, 31.729893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202731, -0.879530, 0.430496,
		0.685161, 0.441494, 0.579342,
		-0.699611, 0.177508, 0.692124,
		47.337437, 39.869553, 31.937531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.052158, 39.330105, 32.010502>,  <47.827168, 39.745296, 31.453043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.052158, 39.330105, 32.010502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.665390, 39.409889, 32.074093>,  <47.433331, 39.457760, 32.112247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.665390, 39.409889, 32.074093>,  <48.052158, 39.330105, 32.010502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.665390, 39.409889, 32.074093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129601, -0.921020, 0.367322,
		0.219692, 0.334567, 0.916406,
		-0.966922, 0.199465, 0.158981,
		47.375313, 39.469730, 32.121788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.971985, 39.049599, 32.662106>,  <48.052158, 39.330105, 32.010502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.971985, 39.049599, 32.662106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.602509, 39.076267, 32.511185>,  <47.380825, 39.092270, 32.420631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.602509, 39.076267, 32.511185>,  <47.971985, 39.049599, 32.662106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.602509, 39.076267, 32.511185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216124, -0.903792, 0.369391,
		-0.316370, 0.422745, 0.849233,
		-0.923689, 0.066675, -0.377298,
		47.325401, 39.096272, 32.397995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.584377, 38.829960, 33.155987>,  <47.971985, 39.049599, 32.662106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.584377, 38.829960, 33.155987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.363834, 38.779167, 32.826168>,  <47.231510, 38.748692, 32.628277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.363834, 38.779167, 32.826168>,  <47.584377, 38.829960, 33.155987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.363834, 38.779167, 32.826168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253367, -0.916181, 0.310511,
		-0.794866, 0.380116, 0.472969,
		-0.551355, -0.126980, -0.824550,
		47.198429, 38.741074, 32.578804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.903255, 38.620777, 33.415493>,  <47.584377, 38.829960, 33.155987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.903255, 38.620777, 33.415493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.917255, 38.487331, 33.038670>,  <46.925655, 38.407265, 32.812576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.917255, 38.487331, 33.038670>,  <46.903255, 38.620777, 33.415493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.917255, 38.487331, 33.038670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328526, -0.894092, 0.304419,
		-0.943846, 0.298836, -0.140895,
		0.035001, -0.333613, -0.942060,
		46.927757, 38.387249, 32.756050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.302753, 38.306503, 33.291023>,  <46.903255, 38.620777, 33.415493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.302753, 38.306503, 33.291023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577152, 38.149414, 33.046013>,  <46.741791, 38.055161, 32.899006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577152, 38.149414, 33.046013>,  <46.302753, 38.306503, 33.291023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.577152, 38.149414, 33.046013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211693, -0.913139, 0.348373,
		-0.696130, -0.109315, -0.709544,
		0.685995, -0.392719, -0.612522,
		46.782951, 38.031597, 32.862255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.035496, 37.629452, 33.223328>,  <46.302753, 38.306503, 33.291023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.035496, 37.629452, 33.223328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408669, 37.603115, 33.081734>,  <46.632572, 37.587311, 32.996777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408669, 37.603115, 33.081734>,  <46.035496, 37.629452, 33.223328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.408669, 37.603115, 33.081734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033370, -0.963092, 0.267095,
		-0.358502, -0.260994, -0.896303,
		0.932932, -0.065844, -0.353980,
		46.688549, 37.583363, 32.975540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.933315, 37.144192, 32.748608>,  <46.035496, 37.629452, 33.223328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.933315, 37.144192, 32.748608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.326096, 37.126797, 32.822235>,  <46.561764, 37.116360, 32.866409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.326096, 37.126797, 32.822235>,  <45.933315, 37.144192, 32.748608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.326096, 37.126797, 32.822235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044514, -0.999008, 0.001469,
		0.183819, -0.009636, -0.982913,
		0.981952, -0.043483, 0.184065,
		46.620682, 37.113750, 32.877453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.266792, 36.559265, 32.356537>,  <45.933315, 37.144192, 32.748608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.266792, 36.559265, 32.356537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.539112, 36.634060, 32.639820>,  <46.702503, 36.678936, 32.809788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.539112, 36.634060, 32.639820>,  <46.266792, 36.559265, 32.356537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.539112, 36.634060, 32.639820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169684, -0.980826, 0.095850,
		0.712548, 0.054916, -0.699470,
		0.680795, 0.186987, 0.708205,
		46.743351, 36.690155, 32.852280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.892960, 36.175728, 32.185658>,  <46.266792, 36.559265, 32.356537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.892960, 36.175728, 32.185658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.911182, 36.231697, 32.581303>,  <46.922115, 36.265278, 32.818691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.911182, 36.231697, 32.581303>,  <46.892960, 36.175728, 32.185658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.911182, 36.231697, 32.581303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260323, -0.957594, 0.123471,
		0.964446, 0.251864, -0.080049,
		0.045557, 0.139920, 0.989114,
		46.924850, 36.273674, 32.878036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.566238, 35.897484, 32.389080>,  <46.892960, 36.175728, 32.185658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.566238, 35.897484, 32.389080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.352749, 35.907532, 32.727196>,  <47.224655, 35.913563, 32.930065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.352749, 35.907532, 32.727196>,  <47.566238, 35.897484, 32.389080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.352749, 35.907532, 32.727196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376137, -0.888189, 0.263896,
		0.757402, 0.458791, 0.464599,
		-0.533725, 0.025123, 0.845285,
		47.192631, 35.915070, 32.980782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.998058, 35.540905, 32.971020>,  <47.566238, 35.897484, 32.389080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.998058, 35.540905, 32.971020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.609627, 35.535419, 33.066368>,  <47.376568, 35.532127, 33.123577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.609627, 35.535419, 33.066368>,  <47.998058, 35.540905, 32.971020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.609627, 35.535419, 33.066368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099776, -0.930316, 0.352926,
		0.216922, 0.366502, 0.904777,
		-0.971076, -0.013718, 0.238374,
		47.318302, 35.531303, 33.137882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.062721, 35.226135, 33.584396>,  <47.998058, 35.540905, 32.971020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.062721, 35.226135, 33.584396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.717957, 35.168533, 33.389927>,  <47.511097, 35.133972, 33.273243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.717957, 35.168533, 33.389927>,  <48.062721, 35.226135, 33.584396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.717957, 35.168533, 33.389927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049860, -0.978246, 0.201367,
		-0.504598, 0.149321, 0.850344,
		-0.861914, -0.144008, -0.486176,
		47.459381, 35.125332, 33.244076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.624424, 34.737255, 34.057240>,  <48.062721, 35.226135, 33.584396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.624424, 34.737255, 34.057240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.591511, 34.735039, 33.658604>,  <47.571762, 34.733711, 33.419422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.591511, 34.735039, 33.658604>,  <47.624424, 34.737255, 34.057240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.591511, 34.735039, 33.658604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046151, -0.998933, 0.001740,
		-0.995539, -0.045850, 0.082456,
		-0.082288, -0.005537, -0.996593,
		47.566826, 34.733379, 33.359627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.516830, 35.044144, 34.739758>,  <47.624424, 34.737255, 34.057240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.516830, 35.044144, 34.739758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.746201, 34.974533, 35.059982>,  <47.883823, 34.932766, 35.252117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.746201, 34.974533, 35.059982>,  <47.516830, 35.044144, 34.739758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.746201, 34.974533, 35.059982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140074, 0.983615, 0.113492,
		-0.807194, 0.047058, 0.588408,
		0.573426, -0.174030, 0.800560,
		47.918228, 34.922325, 35.300152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.472919, 39.320675, 42.056194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117905, 39.164585, 42.154175>,  <36.904896, 39.070930, 42.212963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117905, 39.164585, 42.154175>,  <37.472919, 39.320675, 42.056194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117905, 39.164585, 42.154175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309016, 0.109843, -0.944692,
		0.341735, -0.914145, -0.218075,
		-0.887540, -0.390223, 0.244948,
		36.851643, 39.047520, 42.227661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397976, 38.750450, 41.519638>,  <37.472919, 39.320675, 42.056194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397976, 38.750450, 41.519638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.028942, 38.816765, 41.658978>,  <36.807522, 38.856552, 41.742580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.028942, 38.816765, 41.658978>,  <37.397976, 38.750450, 41.519638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028942, 38.816765, 41.658978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338878, 0.083288, -0.937137,
		-0.184378, -0.982638, -0.020659,
		-0.922587, 0.165787, 0.348351,
		36.752167, 38.866501, 41.763481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958000, 38.232716, 41.220814>,  <37.397976, 38.750450, 41.519638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958000, 38.232716, 41.220814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.682541, 38.497475, 41.339245>,  <36.517265, 38.656330, 41.410305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.682541, 38.497475, 41.339245>,  <36.958000, 38.232716, 41.220814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682541, 38.497475, 41.339245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427732, -0.041098, -0.902971,
		-0.585503, -0.748469, 0.311416,
		-0.688644, 0.661895, 0.296081,
		36.475948, 38.696045, 41.428070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407520, 37.914707, 41.051804>,  <36.958000, 38.232716, 41.220814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407520, 37.914707, 41.051804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293144, 38.297367, 41.073959>,  <36.224518, 38.526962, 41.087254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293144, 38.297367, 41.073959>,  <36.407520, 37.914707, 41.051804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293144, 38.297367, 41.073959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521187, -0.106759, -0.846738,
		-0.804116, -0.270983, 0.529118,
		-0.285940, 0.956645, 0.055387,
		36.207363, 38.584362, 41.090576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818314, 37.850441, 40.830246>,  <36.407520, 37.914707, 41.051804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818314, 37.850441, 40.830246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859238, 38.247559, 40.805302>,  <35.883793, 38.485828, 40.790337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859238, 38.247559, 40.805302>,  <35.818314, 37.850441, 40.830246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859238, 38.247559, 40.805302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217739, -0.038816, -0.975235,
		-0.970630, 0.113351, 0.212199,
		0.102307, 0.992796, -0.062357,
		35.889931, 38.545399, 40.786594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187508, 38.163704, 40.503601>,  <35.818314, 37.850441, 40.830246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187508, 38.163704, 40.503601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518032, 38.371754, 40.417175>,  <35.716347, 38.496586, 40.365318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518032, 38.371754, 40.417175>,  <35.187508, 38.163704, 40.503601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518032, 38.371754, 40.417175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303169, 0.087448, -0.948916,
		-0.474661, 0.849601, 0.229945,
		0.826308, 0.520126, -0.216064,
		35.765926, 38.527790, 40.352356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866028, 38.542160, 40.041954>,  <35.187508, 38.163704, 40.503601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866028, 38.542160, 40.041954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.256165, 38.608452, 39.983646>,  <35.490246, 38.648228, 39.948662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.256165, 38.608452, 39.983646>,  <34.866028, 38.542160, 40.041954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256165, 38.608452, 39.983646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147387, -0.002577, -0.989075,
		-0.164292, 0.986168, 0.021912,
		0.975338, 0.165726, -0.145772,
		35.548767, 38.658169, 39.939915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806076, 38.884579, 39.396564>,  <34.866028, 38.542160, 40.041954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806076, 38.884579, 39.396564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.194920, 38.797607, 39.431744>,  <35.428226, 38.745426, 39.452850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.194920, 38.797607, 39.431744>,  <34.806076, 38.884579, 39.396564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194920, 38.797607, 39.431744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089972, -0.000608, -0.995944,
		0.216597, 0.976077, 0.018971,
		0.972106, -0.217425, 0.087951,
		35.486553, 38.732380, 39.458130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163666, 39.318596, 38.925213>,  <34.806076, 38.884579, 39.396564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163666, 39.318596, 38.925213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.399940, 39.005390, 39.003162>,  <35.541706, 38.817467, 39.049934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.399940, 39.005390, 39.003162>,  <35.163666, 39.318596, 38.925213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399940, 39.005390, 39.003162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161448, -0.121940, -0.979319,
		0.790584, 0.609933, 0.054388,
		0.590687, -0.783015, 0.194876,
		35.577148, 38.770485, 39.061626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638664, 39.436104, 38.489769>,  <35.163666, 39.318596, 38.925213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638664, 39.436104, 38.489769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.665092, 39.050663, 38.593384>,  <35.680950, 38.819397, 38.655552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.665092, 39.050663, 38.593384>,  <35.638664, 39.436104, 38.489769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665092, 39.050663, 38.593384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181169, -0.243703, -0.952779,
		0.981230, 0.109883, 0.158473,
		0.066074, -0.963605, 0.259036,
		35.684914, 38.761581, 38.671093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184891, 39.225697, 38.202412>,  <35.638664, 39.436104, 38.489769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184891, 39.225697, 38.202412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.977581, 38.891953, 38.277500>,  <35.853195, 38.691708, 38.322552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.977581, 38.891953, 38.277500>,  <36.184891, 39.225697, 38.202412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977581, 38.891953, 38.277500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218272, -0.341284, -0.914266,
		0.826891, -0.432867, 0.358995,
		-0.518275, -0.834357, 0.187722,
		35.822098, 38.641644, 38.333817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608604, 38.614185, 38.231003>,  <36.184891, 39.225697, 38.202412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608604, 38.614185, 38.231003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.230503, 38.530914, 38.130482>,  <36.003643, 38.480953, 38.070171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.230503, 38.530914, 38.130482>,  <36.608604, 38.614185, 38.231003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230503, 38.530914, 38.130482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310680, -0.338491, -0.888201,
		0.099842, -0.917652, 0.384638,
		-0.945256, -0.208179, -0.251300,
		35.946926, 38.468460, 38.055092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735027, 38.199150, 37.724789>,  <36.608604, 38.614185, 38.231003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735027, 38.199150, 37.724789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.340340, 38.238010, 37.672707>,  <36.103527, 38.261326, 37.641457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.340340, 38.238010, 37.672707>,  <36.735027, 38.199150, 37.724789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340340, 38.238010, 37.672707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102739, -0.247685, -0.963378,
		-0.125837, -0.963958, 0.234414,
		-0.986717, 0.097145, -0.130204,
		36.044323, 38.267155, 37.633644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431309, 37.537197, 37.401184>,  <36.735027, 38.199150, 37.724789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431309, 37.537197, 37.401184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.187141, 37.844536, 37.324219>,  <36.040642, 38.028938, 37.278042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.187141, 37.844536, 37.324219>,  <36.431309, 37.537197, 37.401184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187141, 37.844536, 37.324219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165157, -0.114110, -0.979644,
		-0.774666, -0.629774, -0.057243,
		-0.610422, 0.768351, -0.192409,
		36.004013, 38.075043, 37.266495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183071, 37.344067, 36.832054>,  <36.431309, 37.537197, 37.401184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183071, 37.344067, 36.832054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082359, 37.731041, 36.821678>,  <36.021931, 37.963226, 36.815453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082359, 37.731041, 36.821678>,  <36.183071, 37.344067, 36.832054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082359, 37.731041, 36.821678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021975, -0.032508, -0.999230,
		-0.967534, -0.251020, 0.029445,
		-0.251784, 0.967436, -0.025937,
		36.006824, 38.021271, 36.813896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579716, 37.504208, 36.371525>,  <36.183071, 37.344067, 36.832054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579716, 37.504208, 36.371525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.837074, 37.808498, 36.405762>,  <35.991489, 37.991074, 36.426304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.837074, 37.808498, 36.405762>,  <35.579716, 37.504208, 36.371525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837074, 37.808498, 36.405762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064325, 0.057684, -0.996261,
		-0.762823, 0.646499, -0.011820,
		0.643400, 0.760731, 0.085589,
		36.030094, 38.036716, 36.431438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522514, 37.678295, 35.697948>,  <35.579716, 37.504208, 36.371525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522514, 37.678295, 35.697948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.826347, 37.896179, 35.840118>,  <36.008648, 38.026909, 35.925419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.826347, 37.896179, 35.840118>,  <35.522514, 37.678295, 35.697948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826347, 37.896179, 35.840118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345519, 0.125037, -0.930044,
		-0.551046, 0.829250, -0.093232,
		0.759582, 0.544711, 0.355423,
		36.054222, 38.059593, 35.946747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509533, 38.374268, 35.298149>,  <35.522514, 37.678295, 35.697948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509533, 38.374268, 35.298149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.874458, 38.297817, 35.443008>,  <36.093414, 38.251949, 35.529922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.874458, 38.297817, 35.443008>,  <35.509533, 38.374268, 35.298149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874458, 38.297817, 35.443008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403826, 0.273406, -0.873025,
		0.067842, 0.942720, 0.326614,
		0.912317, -0.191123, 0.362147,
		36.148155, 38.240479, 35.551651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907314, 38.926701, 35.110416>,  <35.509533, 38.374268, 35.298149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907314, 38.926701, 35.110416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193157, 38.664589, 35.208351>,  <36.364662, 38.507320, 35.267113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193157, 38.664589, 35.208351>,  <35.907314, 38.926701, 35.110416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193157, 38.664589, 35.208351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541781, 0.297041, -0.786282,
		0.442510, 0.694530, 0.567286,
		0.714604, -0.655282, 0.244839,
		36.407539, 38.468002, 35.281803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510944, 39.328724, 35.164116>,  <35.907314, 38.926701, 35.110416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510944, 39.328724, 35.164116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.626362, 38.950333, 35.104965>,  <36.695610, 38.723297, 35.069477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.626362, 38.950333, 35.104965>,  <36.510944, 39.328724, 35.164116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626362, 38.950333, 35.104965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591520, 0.297566, -0.749372,
		0.752892, 0.128755, 0.645427,
		0.288542, -0.945979, -0.147874,
		36.712925, 38.666538, 35.060604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261234, 39.356594, 35.081104>,  <36.510944, 39.328724, 35.164116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261234, 39.356594, 35.081104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.162579, 38.996456, 34.937687>,  <37.103386, 38.780373, 34.851639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.162579, 38.996456, 34.937687>,  <37.261234, 39.356594, 35.081104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162579, 38.996456, 34.937687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688324, 0.097684, -0.718796,
		0.682186, -0.424077, 0.595635,
		-0.246641, -0.900343, -0.358541,
		37.088585, 38.726353, 34.830124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844036, 38.985649, 35.030945>,  <37.261234, 39.356594, 35.081104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844036, 38.985649, 35.030945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.597263, 38.803955, 34.773869>,  <37.449200, 38.694939, 34.619621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.597263, 38.803955, 34.773869>,  <37.844036, 38.985649, 35.030945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597263, 38.803955, 34.773869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712536, 0.024383, -0.701212,
		0.334189, -0.890546, 0.308620,
		-0.616936, -0.454240, -0.642694,
		37.412182, 38.667683, 34.581059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091671, 38.284122, 34.640049>,  <37.844036, 38.985649, 35.030945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091671, 38.284122, 34.640049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.830757, 38.299793, 34.337265>,  <37.674210, 38.309196, 34.155594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.830757, 38.299793, 34.337265>,  <38.091671, 38.284122, 34.640049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830757, 38.299793, 34.337265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635083, -0.516896, -0.574010,
		-0.413761, -0.855151, 0.312280,
		-0.652282, 0.039180, -0.756963,
		37.635075, 38.311546, 34.110176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410778, 37.897530, 35.216888>,  <38.091671, 38.284122, 34.640049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410778, 37.897530, 35.216888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.750969, 38.063026, 35.086964>,  <38.955082, 38.162327, 35.009007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.750969, 38.063026, 35.086964>,  <38.410778, 37.897530, 35.216888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750969, 38.063026, 35.086964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358020, -0.002912, 0.933709,
		0.385373, -0.910387, -0.150606,
		0.850476, 0.413746, -0.324815,
		39.006111, 38.187149, 34.989521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992874, 37.587021, 35.528870>,  <38.410778, 37.897530, 35.216888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992874, 37.587021, 35.528870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.110474, 37.958206, 35.437260>,  <39.181034, 38.180916, 35.382294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.110474, 37.958206, 35.437260>,  <38.992874, 37.587021, 35.528870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110474, 37.958206, 35.437260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218326, 0.168077, 0.961293,
		0.930536, -0.332624, -0.153182,
		0.294003, 0.927961, -0.229022,
		39.198673, 38.236595, 35.368553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671928, 37.644600, 35.744865>,  <38.992874, 37.587021, 35.528870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671928, 37.644600, 35.744865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.587841, 38.033329, 35.702206>,  <39.537388, 38.266567, 35.676609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.587841, 38.033329, 35.702206>,  <39.671928, 37.644600, 35.744865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587841, 38.033329, 35.702206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395558, 0.184302, 0.899759,
		0.894060, 0.146957, -0.423154,
		-0.210214, 0.971821, -0.106647,
		39.524776, 38.324875, 35.670212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204391, 37.903404, 36.035515>,  <39.671928, 37.644600, 35.744865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204391, 37.903404, 36.035515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913754, 38.177883, 36.021656>,  <39.739372, 38.342571, 36.013340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913754, 38.177883, 36.021656>,  <40.204391, 37.903404, 36.035515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913754, 38.177883, 36.021656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160013, 0.218048, 0.962731,
		0.668175, 0.693969, -0.268232,
		-0.726593, 0.686194, -0.034650,
		39.695774, 38.383739, 36.011261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519325, 38.519588, 36.287460>,  <40.204391, 37.903404, 36.035515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519325, 38.519588, 36.287460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.127705, 38.583084, 36.338474>,  <39.892735, 38.621181, 36.369083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.127705, 38.583084, 36.338474>,  <40.519325, 38.519588, 36.287460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127705, 38.583084, 36.338474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179556, 0.377649, 0.908372,
		0.096034, 0.912240, -0.398240,
		-0.979049, 0.158742, 0.127531,
		39.833988, 38.630707, 36.376732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519157, 39.221184, 36.535679>,  <40.519325, 38.519588, 36.287460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519157, 39.221184, 36.535679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.189289, 39.034676, 36.663750>,  <39.991367, 38.922771, 36.740593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.189289, 39.034676, 36.663750>,  <40.519157, 39.221184, 36.535679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189289, 39.034676, 36.663750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198148, 0.292044, 0.935654,
		-0.529772, 0.835048, -0.148450,
		-0.824669, -0.466268, 0.320180,
		39.941887, 38.894794, 36.759804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190758, 39.652798, 36.959991>,  <40.519157, 39.221184, 36.535679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190758, 39.652798, 36.959991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.072964, 39.280975, 37.048725>,  <40.002289, 39.057884, 37.101963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.072964, 39.280975, 37.048725>,  <40.190758, 39.652798, 36.959991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072964, 39.280975, 37.048725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092709, 0.203243, 0.974729,
		-0.951148, 0.307610, 0.026325,
		-0.294486, -0.929553, 0.221832,
		39.984619, 39.002110, 37.115276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671200, 39.728020, 37.467567>,  <40.190758, 39.652798, 36.959991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671200, 39.728020, 37.467567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.811718, 39.354763, 37.498096>,  <39.896030, 39.130806, 37.516415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.811718, 39.354763, 37.498096>,  <39.671200, 39.728020, 37.467567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811718, 39.354763, 37.498096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001269, 0.081048, 0.996710,
		-0.936262, -0.350241, 0.027288,
		0.351300, -0.933147, 0.076327,
		39.917107, 39.074818, 37.520996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140293, 39.443867, 37.974419>,  <39.671200, 39.728020, 37.467567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140293, 39.443867, 37.974419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.475090, 39.226238, 37.951015>,  <39.675968, 39.095661, 37.936974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.475090, 39.226238, 37.951015>,  <39.140293, 39.443867, 37.974419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475090, 39.226238, 37.951015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034548, -0.054167, 0.997934,
		-0.546120, -0.837286, -0.026541,
		0.836994, -0.544075, -0.058508,
		39.726189, 39.063015, 37.933464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967503, 38.960793, 38.420433>,  <39.140293, 39.443867, 37.974419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967503, 38.960793, 38.420433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.361534, 38.915520, 38.368561>,  <39.597954, 38.888355, 38.337437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.361534, 38.915520, 38.368561>,  <38.967503, 38.960793, 38.420433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361534, 38.915520, 38.368561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114001, -0.135508, 0.984196,
		-0.128960, -0.984291, -0.120583,
		0.985075, -0.113175, -0.129685,
		39.657055, 38.881565, 38.329655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156822, 38.294285, 38.783340>,  <38.967503, 38.960793, 38.420433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156822, 38.294285, 38.783340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.473652, 38.537048, 38.757145>,  <39.663750, 38.682705, 38.741428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.473652, 38.537048, 38.757145>,  <39.156822, 38.294285, 38.783340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473652, 38.537048, 38.757145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233014, -0.201451, 0.951379,
		0.564205, -0.768820, -0.300980,
		0.792072, 0.606905, -0.065486,
		39.711273, 38.719120, 38.737499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495937, 37.938446, 39.209476>,  <39.156822, 38.294285, 38.783340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495937, 37.938446, 39.209476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.714081, 38.267197, 39.143620>,  <39.844967, 38.464447, 39.104107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.714081, 38.267197, 39.143620>,  <39.495937, 37.938446, 39.209476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714081, 38.267197, 39.143620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495844, -0.157961, 0.853925,
		0.675810, -0.547334, -0.493666,
		0.545362, 0.821872, -0.164640,
		39.877689, 38.513760, 39.094227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221123, 37.799625, 39.355083>,  <39.495937, 37.938446, 39.209476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221123, 37.799625, 39.355083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.134872, 38.187134, 39.404064>,  <40.083122, 38.419640, 39.433453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.134872, 38.187134, 39.404064>,  <40.221123, 37.799625, 39.355083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134872, 38.187134, 39.404064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398912, -0.027070, 0.916590,
		0.891278, 0.246484, -0.380617,
		-0.215622, 0.968769, 0.122453,
		40.070187, 38.477764, 39.440800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849976, 38.083599, 39.640308>,  <40.221123, 37.799625, 39.355083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849976, 38.083599, 39.640308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.556099, 38.339355, 39.730999>,  <40.379772, 38.492809, 39.785412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.556099, 38.339355, 39.730999>,  <40.849976, 38.083599, 39.640308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556099, 38.339355, 39.730999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224098, -0.086706, 0.970702,
		0.640316, 0.763977, -0.079584,
		-0.734694, 0.639391, 0.226725,
		40.335690, 38.531174, 39.799015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040977, 38.409321, 40.254101>,  <40.849976, 38.083599, 39.640308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040977, 38.409321, 40.254101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.655178, 38.514896, 40.250690>,  <40.423698, 38.578243, 40.248642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.655178, 38.514896, 40.250690>,  <41.040977, 38.409321, 40.254101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655178, 38.514896, 40.250690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032268, 0.149845, 0.988183,
		0.262096, 0.952829, -0.153043,
		-0.964502, 0.263937, -0.008528,
		40.365826, 38.594078, 40.248131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994125, 38.997971, 40.714550>,  <41.040977, 38.409321, 40.254101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994125, 38.997971, 40.714550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.637592, 38.817108, 40.701427>,  <40.423672, 38.708591, 40.693554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.637592, 38.817108, 40.701427>,  <40.994125, 38.997971, 40.714550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637592, 38.817108, 40.701427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063073, 0.052019, 0.996652,
		-0.448937, 0.890420, -0.074886,
		-0.891335, -0.452157, -0.032808,
		40.370193, 38.681461, 40.691586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682091, 39.321011, 41.234688>,  <40.994125, 38.997971, 40.714550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682091, 39.321011, 41.234688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.415493, 39.026192, 41.189877>,  <40.255535, 38.849300, 41.162991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.415493, 39.026192, 41.189877>,  <40.682091, 39.321011, 41.234688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415493, 39.026192, 41.189877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168866, 0.002883, 0.985635,
		-0.726137, 0.675834, -0.126384,
		-0.666490, -0.737048, -0.112032,
		40.215546, 38.805077, 41.156265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.954792, 39.583874, 41.651390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.959301, 39.191746, 41.572552>,  <39.962006, 38.956470, 41.525249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.959301, 39.191746, 41.572552>,  <39.954792, 39.583874, 41.651390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959301, 39.191746, 41.572552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176164, -0.195975, 0.964655,
		-0.984296, 0.023846, -0.174906,
		0.011274, -0.980319, -0.197098,
		39.962685, 38.897652, 41.513424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208439, 39.277782, 41.577873>,  <39.954792, 39.583874, 41.651390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208439, 39.277782, 41.577873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.518677, 39.062294, 41.709469>,  <39.704819, 38.933002, 41.788425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.518677, 39.062294, 41.709469>,  <39.208439, 39.277782, 41.577873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518677, 39.062294, 41.709469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445884, -0.098646, 0.889638,
		-0.446810, -0.836692, -0.316715,
		0.775595, -0.538717, 0.328992,
		39.751354, 38.900681, 41.808167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888039, 39.172024, 42.127762>,  <39.208439, 39.277782, 41.577873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888039, 39.172024, 42.127762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.225903, 38.964684, 42.181232>,  <39.428619, 38.840279, 42.213314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.225903, 38.964684, 42.181232>,  <38.888039, 39.172024, 42.127762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225903, 38.964684, 42.181232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319546, -0.287884, 0.902781,
		-0.429473, -0.805256, -0.408799,
		0.844656, -0.518350, 0.133678,
		39.479301, 38.809177, 42.221336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647804, 38.589249, 42.426926>,  <38.888039, 39.172024, 42.127762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647804, 38.589249, 42.426926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.038189, 38.639454, 42.498192>,  <39.272419, 38.669579, 42.540951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.038189, 38.639454, 42.498192>,  <38.647804, 38.589249, 42.426926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038189, 38.639454, 42.498192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158053, -0.155257, 0.975149,
		0.150058, -0.979868, -0.131687,
		0.975962, 0.125516, 0.178168,
		39.330978, 38.677109, 42.551643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909981, 37.990696, 42.674278>,  <38.647804, 38.589249, 42.426926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909981, 37.990696, 42.674278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.159725, 38.270199, 42.813938>,  <39.309574, 38.437901, 42.897736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.159725, 38.270199, 42.813938>,  <38.909981, 37.990696, 42.674278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159725, 38.270199, 42.813938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077782, -0.389141, 0.917888,
		0.777252, -0.600253, -0.188614,
		0.624363, 0.698760, 0.349150,
		39.347034, 38.479828, 42.918682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389568, 37.676052, 43.156826>,  <38.909981, 37.990696, 42.674278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389568, 37.676052, 43.156826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.406200, 38.062588, 43.258377>,  <39.416180, 38.294510, 43.319305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.406200, 38.062588, 43.258377>,  <39.389568, 37.676052, 43.156826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406200, 38.062588, 43.258377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063282, -0.251037, 0.965907,
		0.997129, -0.056232, 0.050712,
		0.041584, 0.966343, 0.253875,
		39.418674, 38.352489, 43.334541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946522, 37.726723, 43.681957>,  <39.389568, 37.676052, 43.156826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946522, 37.726723, 43.681957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.723156, 38.057026, 43.713688>,  <39.589138, 38.255207, 43.732727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.723156, 38.057026, 43.713688>,  <39.946522, 37.726723, 43.681957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723156, 38.057026, 43.713688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192821, 0.036195, 0.980566,
		0.806843, 0.562856, -0.179436,
		-0.558413, 0.825762, 0.079327,
		39.555634, 38.304756, 43.737488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230606, 38.072254, 44.206547>,  <39.946522, 37.726723, 43.681957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230606, 38.072254, 44.206547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.887405, 38.276600, 44.185188>,  <39.681484, 38.399208, 44.172375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.887405, 38.276600, 44.185188>,  <40.230606, 38.072254, 44.206547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887405, 38.276600, 44.185188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021956, 0.140336, 0.989860,
		0.513175, 0.848131, -0.131626,
		-0.858003, 0.510862, -0.053395,
		39.630005, 38.429859, 44.169170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250626, 38.802521, 44.563370>,  <40.230606, 38.072254, 44.206547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250626, 38.802521, 44.563370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.865963, 38.693081, 44.570873>,  <39.635166, 38.627419, 44.575375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.865963, 38.693081, 44.570873>,  <40.250626, 38.802521, 44.563370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865963, 38.693081, 44.570873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005187, 0.050229, 0.998724,
		-0.274191, 0.960532, -0.046884,
		-0.961661, -0.273598, 0.018754,
		39.577465, 38.611000, 44.576500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033070, 39.204460, 45.037300>,  <40.250626, 38.802521, 44.563370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033070, 39.204460, 45.037300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.743717, 38.929878, 45.007626>,  <39.570107, 38.765129, 44.989822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.743717, 38.929878, 45.007626>,  <40.033070, 39.204460, 45.037300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743717, 38.929878, 45.007626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183342, 0.087386, 0.979158,
		-0.665661, 0.721906, -0.189069,
		-0.723382, -0.686451, -0.074186,
		39.526703, 38.723942, 44.985371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569324, 39.511303, 45.403919>,  <40.033070, 39.204460, 45.037300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569324, 39.511303, 45.403919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.471603, 39.123470, 45.409908>,  <39.412971, 38.890770, 45.413502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.471603, 39.123470, 45.409908>,  <39.569324, 39.511303, 45.403919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471603, 39.123470, 45.409908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290226, 0.087839, 0.952918,
		-0.925248, 0.228460, -0.302857,
		-0.244306, -0.969583, 0.014968,
		39.398312, 38.832596, 45.414398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010128, 39.470196, 45.859020>,  <39.569324, 39.511303, 45.403919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010128, 39.470196, 45.859020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135845, 39.091518, 45.830769>,  <39.211277, 38.864311, 45.813820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135845, 39.091518, 45.830769>,  <39.010128, 39.470196, 45.859020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135845, 39.091518, 45.830769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206067, -0.140655, 0.968376,
		-0.926690, -0.289802, -0.239289,
		0.314295, -0.946695, -0.070625,
		39.230133, 38.807510, 45.809582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579895, 39.006065, 46.371273>,  <39.010128, 39.470196, 45.859020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579895, 39.006065, 46.371273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909210, 38.798149, 46.280048>,  <39.106800, 38.673397, 46.225315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909210, 38.798149, 46.280048>,  <38.579895, 39.006065, 46.371273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909210, 38.798149, 46.280048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150942, -0.186838, 0.970726,
		-0.547189, -0.833610, -0.075362,
		0.823287, -0.519795, -0.228062,
		39.156197, 38.642212, 46.211628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531391, 38.274349, 46.685932>,  <38.579895, 39.006065, 46.371273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531391, 38.274349, 46.685932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.923901, 38.331547, 46.634296>,  <39.159405, 38.365864, 46.603313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.923901, 38.331547, 46.634296>,  <38.531391, 38.274349, 46.685932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923901, 38.331547, 46.634296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177326, -0.408629, 0.895309,
		0.075271, -0.901430, -0.426331,
		0.981270, 0.142991, -0.129089,
		39.218281, 38.374443, 46.595570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688457, 37.717888, 47.033356>,  <38.531391, 38.274349, 46.685932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688457, 37.717888, 47.033356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026302, 37.931992, 47.028759>,  <39.229008, 38.060455, 47.026001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026302, 37.931992, 47.028759>,  <38.688457, 37.717888, 47.033356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026302, 37.931992, 47.028759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322368, -0.491311, 0.809131,
		0.427449, -0.687104, -0.587517,
		0.844610, 0.535259, -0.011490,
		39.279686, 38.092567, 47.025311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274311, 37.267849, 46.971691>,  <38.688457, 37.717888, 47.033356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274311, 37.267849, 46.971691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398087, 37.593460, 47.168304>,  <39.472351, 37.788826, 47.286270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398087, 37.593460, 47.168304>,  <39.274311, 37.267849, 46.971691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398087, 37.593460, 47.168304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525775, -0.577164, 0.624854,
		0.792344, 0.065081, -0.606594,
		0.309438, 0.814031, 0.491530,
		39.490917, 37.837669, 47.315765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923893, 37.078629, 47.163361>,  <39.274311, 37.267849, 46.971691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923893, 37.078629, 47.163361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.839680, 37.412743, 47.366528>,  <39.789150, 37.613209, 47.488426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.839680, 37.412743, 47.366528>,  <39.923893, 37.078629, 47.163361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839680, 37.412743, 47.366528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411899, -0.395397, 0.820976,
		0.886574, 0.382055, -0.260806,
		-0.210536, 0.835281, 0.507917,
		39.776520, 37.663326, 47.518902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511482, 37.238716, 47.523861>,  <39.923893, 37.078629, 47.163361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511482, 37.238716, 47.523861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.209278, 37.427185, 47.705940>,  <40.027958, 37.540268, 47.815189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.209278, 37.427185, 47.705940>,  <40.511482, 37.238716, 47.523861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209278, 37.427185, 47.705940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168079, -0.532154, 0.829796,
		0.633212, 0.703427, 0.322852,
		-0.755508, 0.471172, 0.455198,
		39.982624, 37.568539, 47.842499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791351, 37.369308, 48.189816>,  <40.511482, 37.238716, 47.523861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791351, 37.369308, 48.189816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.398247, 37.424873, 48.238602>,  <40.162384, 37.458214, 48.267872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.398247, 37.424873, 48.238602>,  <40.791351, 37.369308, 48.189816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398247, 37.424873, 48.238602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033776, -0.513739, 0.857281,
		0.181748, 0.846626, 0.500193,
		-0.982765, 0.138915, 0.121967,
		40.103416, 37.466549, 48.275192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677402, 37.774994, 48.860306>,  <40.791351, 37.369308, 48.189816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677402, 37.774994, 48.860306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.339870, 37.579144, 48.772476>,  <40.137352, 37.461636, 48.719776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.339870, 37.579144, 48.772476>,  <40.677402, 37.774994, 48.860306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339870, 37.579144, 48.772476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057699, -0.324036, 0.944284,
		-0.533492, 0.809489, 0.245182,
		-0.843835, -0.489621, -0.219578,
		40.086720, 37.432259, 48.706604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271927, 37.917397, 49.334949>,  <40.677402, 37.774994, 48.860306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271927, 37.917397, 49.334949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.148315, 37.571331, 49.176968>,  <40.074146, 37.363689, 49.082180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.148315, 37.571331, 49.176968>,  <40.271927, 37.917397, 49.334949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148315, 37.571331, 49.176968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063037, -0.433000, 0.899187,
		-0.948960, 0.252981, 0.188349,
		-0.309033, -0.865165, -0.394953,
		40.055607, 37.311783, 49.058483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782917, 37.588478, 49.773277>,  <40.271927, 37.917397, 49.334949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782917, 37.588478, 49.773277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.029034, 37.355572, 49.560719>,  <40.176704, 37.215828, 49.433182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.029034, 37.355572, 49.560719>,  <39.782917, 37.588478, 49.773277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029034, 37.355572, 49.560719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141721, -0.581422, 0.801164,
		-0.775455, -0.568260, -0.275225,
		0.615292, -0.582262, -0.531401,
		40.213623, 37.180893, 49.401299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363457, 37.025230, 49.945946>,  <39.782917, 37.588478, 49.773277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363457, 37.025230, 49.945946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.186157, 36.793331, 50.219418>,  <39.079777, 36.654190, 50.383503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.186157, 36.793331, 50.219418>,  <39.363457, 37.025230, 49.945946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186157, 36.793331, 50.219418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884815, 0.160746, -0.437337,
		0.143641, -0.798789, -0.584212,
		-0.443250, -0.579739, 0.683691,
		39.053185, 36.619404, 50.424522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977898, 36.386749, 49.653923>,  <39.363457, 37.025230, 49.945946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977898, 36.386749, 49.653923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.813858, 36.512608, 49.996342>,  <38.715435, 36.588123, 50.201794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.813858, 36.512608, 49.996342>,  <38.977898, 36.386749, 49.653923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813858, 36.512608, 49.996342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897648, 0.026840, -0.439896,
		-0.161388, -0.948829, 0.271435,
		-0.410100, 0.314647, 0.856046,
		38.690826, 36.607002, 50.253155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552967, 35.847511, 50.037445>,  <38.977898, 36.386749, 49.653923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552967, 35.847511, 50.037445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.446213, 36.230736, 50.079193>,  <38.382160, 36.460670, 50.104244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.446213, 36.230736, 50.079193>,  <38.552967, 35.847511, 50.037445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446213, 36.230736, 50.079193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807131, -0.163025, -0.567418,
		-0.526604, -0.235679, 0.816788,
		-0.266885, 0.958060, 0.104374,
		38.366146, 36.518154, 50.110504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895332, 35.734695, 50.144913>,  <38.552967, 35.847511, 50.037445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895332, 35.734695, 50.144913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.931545, 36.113663, 50.022141>,  <37.953274, 36.341042, 49.948479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.931545, 36.113663, 50.022141>,  <37.895332, 35.734695, 50.144913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931545, 36.113663, 50.022141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580518, -0.200212, -0.789249,
		-0.809198, 0.249632, 0.531867,
		0.090535, 0.947417, -0.306927,
		37.958706, 36.397888, 49.930061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182560, 35.999859, 50.172356>,  <37.895332, 35.734695, 50.144913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182560, 35.999859, 50.172356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.380737, 36.237034, 49.918442>,  <37.499645, 36.379341, 49.766094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.380737, 36.237034, 49.918442>,  <37.182560, 35.999859, 50.172356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380737, 36.237034, 49.918442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711714, -0.141861, -0.687996,
		-0.497992, 0.792653, 0.351718,
		0.495447, 0.592939, -0.634788,
		37.529373, 36.414917, 49.728004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725357, 36.398499, 49.806206>,  <37.182560, 35.999859, 50.172356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725357, 36.398499, 49.806206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.024719, 36.485771, 49.555676>,  <37.204338, 36.538136, 49.405357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.024719, 36.485771, 49.555676>,  <36.725357, 36.398499, 49.806206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024719, 36.485771, 49.555676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658152, 0.127600, -0.741993,
		-0.081974, 0.967529, 0.239097,
		0.748409, 0.218186, -0.626322,
		37.249241, 36.551228, 49.367779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528774, 37.021252, 49.421135>,  <36.725357, 36.398499, 49.806206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528774, 37.021252, 49.421135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.819103, 36.863346, 49.195801>,  <36.993301, 36.768600, 49.060600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.819103, 36.863346, 49.195801>,  <36.528774, 37.021252, 49.421135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819103, 36.863346, 49.195801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550767, 0.157126, -0.819736,
		0.412119, 0.905246, -0.103380,
		0.725820, -0.394767, -0.563334,
		37.036850, 36.744915, 49.026802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599380, 37.429790, 48.815624>,  <36.528774, 37.021252, 49.421135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599380, 37.429790, 48.815624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779400, 37.100838, 48.676395>,  <36.887409, 36.903465, 48.592857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779400, 37.100838, 48.676395>,  <36.599380, 37.429790, 48.815624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779400, 37.100838, 48.676395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572897, 0.033103, -0.818959,
		0.685017, 0.567976, -0.456240,
		0.450046, -0.822379, -0.348068,
		36.914413, 36.854122, 48.571976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884769, 37.566631, 48.054268>,  <36.599380, 37.429790, 48.815624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884769, 37.566631, 48.054268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.903103, 37.167187, 48.064663>,  <36.914104, 36.927521, 48.070900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.903103, 37.167187, 48.064663>,  <36.884769, 37.566631, 48.054268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903103, 37.167187, 48.064663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401458, -0.042240, -0.914903,
		0.914730, 0.031500, -0.402836,
		0.045836, -0.998611, 0.025992,
		36.916855, 36.867603, 48.072460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313740, 37.225918, 47.548309>,  <36.884769, 37.566631, 48.054268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313740, 37.225918, 47.548309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.011696, 36.987762, 47.658089>,  <36.830471, 36.844868, 47.723957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.011696, 36.987762, 47.658089>,  <37.313740, 37.225918, 47.548309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011696, 36.987762, 47.658089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242154, -0.135727, -0.960697,
		0.609241, -0.791889, -0.041687,
		-0.755107, -0.595391, 0.274450,
		36.785164, 36.809147, 47.740425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933121, 37.709682, 47.223259>,  <37.313740, 37.225918, 47.548309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933121, 37.709682, 47.223259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.892548, 37.352997, 47.046822>,  <36.868202, 37.138985, 46.940960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.892548, 37.352997, 47.046822>,  <36.933121, 37.709682, 47.223259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892548, 37.352997, 47.046822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510548, 0.333884, -0.792377,
		0.853845, -0.305573, 0.421394,
		-0.101432, -0.891710, -0.441095,
		36.862118, 37.085484, 46.914494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565659, 37.514454, 46.778389>,  <36.933121, 37.709682, 47.223259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565659, 37.514454, 46.778389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.241249, 37.343178, 46.618946>,  <37.046604, 37.240414, 46.523281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.241249, 37.343178, 46.618946>,  <37.565659, 37.514454, 46.778389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241249, 37.343178, 46.618946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287647, 0.301434, -0.909064,
		0.509408, -0.851932, -0.121303,
		-0.811026, -0.428192, -0.398608,
		36.997940, 37.214722, 46.499363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820889, 37.307655, 46.182415>,  <37.565659, 37.514454, 46.778389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820889, 37.307655, 46.182415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.424839, 37.324940, 46.129070>,  <37.187210, 37.335312, 46.097065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.424839, 37.324940, 46.129070>,  <37.820889, 37.307655, 46.182415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424839, 37.324940, 46.129070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139630, 0.388812, -0.910675,
		0.012502, -0.920303, -0.391006,
		-0.990125, 0.043211, -0.133362,
		37.127800, 37.337902, 46.089062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818329, 37.109112, 45.561428>,  <37.820889, 37.307655, 46.182415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818329, 37.109112, 45.561428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463070, 37.282326, 45.622982>,  <37.249916, 37.386253, 45.659912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463070, 37.282326, 45.622982>,  <37.818329, 37.109112, 45.561428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463070, 37.282326, 45.622982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050358, 0.424528, -0.904013,
		-0.456799, -0.795144, -0.398849,
		-0.888143, 0.433038, 0.153882,
		37.196629, 37.412235, 45.669147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528625, 37.075779, 44.963196>,  <37.818329, 37.109112, 45.561428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528625, 37.075779, 44.963196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.295643, 37.362576, 45.116379>,  <37.155853, 37.534653, 45.208290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.295643, 37.362576, 45.116379>,  <37.528625, 37.075779, 44.963196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295643, 37.362576, 45.116379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092325, 0.409726, -0.907524,
		-0.807601, -0.563951, -0.172451,
		-0.582457, 0.716996, 0.382962,
		37.120907, 37.577675, 45.231266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962284, 37.086990, 44.657009>,  <37.528625, 37.075779, 44.963196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962284, 37.086990, 44.657009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.967155, 37.462219, 44.795506>,  <36.970078, 37.687355, 44.878601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.967155, 37.462219, 44.795506>,  <36.962284, 37.086990, 44.657009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967155, 37.462219, 44.795506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137026, 0.344561, -0.928710,
		-0.990492, -0.036136, 0.132735,
		0.012176, 0.938068, 0.346237,
		36.970810, 37.743641, 44.899376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407303, 37.392910, 44.402023>,  <36.962284, 37.086990, 44.657009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407303, 37.392910, 44.402023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.643829, 37.705067, 44.483337>,  <36.785748, 37.892361, 44.532127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.643829, 37.705067, 44.483337>,  <36.407303, 37.392910, 44.402023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643829, 37.705067, 44.483337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063758, 0.296530, -0.952893,
		-0.803913, 0.550502, 0.225100,
		0.591319, 0.780396, 0.203285,
		36.821224, 37.939186, 44.544323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041962, 38.056973, 44.133999>,  <36.407303, 37.392910, 44.402023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041962, 38.056973, 44.133999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.400524, 38.226707, 44.185215>,  <36.615662, 38.328548, 44.215942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.400524, 38.226707, 44.185215>,  <36.041962, 38.056973, 44.133999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400524, 38.226707, 44.185215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134783, 0.536154, -0.833290,
		-0.422246, 0.729708, 0.537805,
		0.896405, 0.424340, 0.128037,
		36.669445, 38.354008, 44.223625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906338, 38.844250, 44.042366>,  <36.041962, 38.056973, 44.133999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906338, 38.844250, 44.042366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.283718, 38.726471, 43.981441>,  <36.510147, 38.655804, 43.944889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.283718, 38.726471, 43.981441>,  <35.906338, 38.844250, 44.042366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283718, 38.726471, 43.981441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048055, 0.576063, -0.815992,
		0.328003, 0.762531, 0.557638,
		0.943454, -0.294445, -0.152307,
		36.566753, 38.638138, 43.935749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093678, 39.420555, 43.749390>,  <35.906338, 38.844250, 44.042366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093678, 39.420555, 43.749390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.401470, 39.177570, 43.670517>,  <36.586147, 39.031780, 43.623192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.401470, 39.177570, 43.670517>,  <36.093678, 39.420555, 43.749390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401470, 39.177570, 43.670517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037757, 0.351471, -0.935437,
		0.637548, 0.712359, 0.293387,
		0.769485, -0.607464, -0.197183,
		36.632317, 38.995331, 43.611362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608864, 39.756123, 43.482380>,  <36.093678, 39.420555, 43.749390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608864, 39.756123, 43.482380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.655350, 39.387356, 43.334564>,  <36.683243, 39.166096, 43.245876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.655350, 39.387356, 43.334564>,  <36.608864, 39.756123, 43.482380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655350, 39.387356, 43.334564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113627, 0.357276, -0.927061,
		0.986703, 0.149729, -0.063234,
		0.116216, -0.921919, -0.369539,
		36.690216, 39.110779, 43.223701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976151, 39.807060, 42.886246>,  <36.608864, 39.756123, 43.482380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976151, 39.807060, 42.886246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.823879, 39.445084, 42.810173>,  <36.732517, 39.227898, 42.764530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.823879, 39.445084, 42.810173>,  <36.976151, 39.807060, 42.886246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823879, 39.445084, 42.810173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194161, 0.279309, -0.940366,
		0.904092, -0.321054, -0.282032,
		-0.380682, -0.904937, -0.190185,
		36.709675, 39.173603, 42.753117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.393845, 43.213539, 32.448872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007954, 43.128960, 32.511589>,  <43.776417, 43.078213, 32.549221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007954, 43.128960, 32.511589>,  <44.393845, 43.213539, 32.448872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007954, 43.128960, 32.511589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197677, -0.975262, -0.098936,
		0.173834, -0.064452, 0.982663,
		-0.964731, -0.211449, 0.156793,
		43.718533, 43.065525, 32.558628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335930, 42.619514, 33.048294>,  <44.393845, 43.213539, 32.448872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335930, 42.619514, 33.048294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.026722, 42.652493, 32.796692>,  <43.841198, 42.672279, 32.645729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.026722, 42.652493, 32.796692>,  <44.335930, 42.619514, 33.048294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.026722, 42.652493, 32.796692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020342, -0.987788, -0.154471,
		-0.634060, -0.132204, 0.761899,
		-0.773016, 0.082445, -0.629006,
		43.794815, 42.677227, 32.607990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898682, 42.240673, 33.357662>,  <44.335930, 42.619514, 33.048294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898682, 42.240673, 33.357662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.810429, 42.243118, 32.967525>,  <43.757477, 42.244587, 32.733444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.810429, 42.243118, 32.967525>,  <43.898682, 42.240673, 33.357662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810429, 42.243118, 32.967525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105423, -0.994271, 0.017616,
		-0.969643, 0.106710, 0.220013,
		-0.220633, 0.006113, -0.975338,
		43.744240, 42.244953, 32.674923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256561, 41.940136, 33.263645>,  <43.898682, 42.240673, 33.357662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256561, 41.940136, 33.263645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.461922, 41.888771, 32.924252>,  <43.585140, 41.857952, 32.720615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.461922, 41.888771, 32.924252>,  <43.256561, 41.940136, 33.263645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461922, 41.888771, 32.924252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126412, -0.989271, 0.073227,
		-0.848785, 0.069664, -0.524129,
		0.513404, -0.128410, -0.848485,
		43.615944, 41.850246, 32.669704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973625, 41.262791, 32.940788>,  <43.256561, 41.940136, 33.263645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973625, 41.262791, 32.940788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309776, 41.317272, 32.730946>,  <43.511467, 41.349960, 32.605042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309776, 41.317272, 32.730946>,  <42.973625, 41.262791, 32.940788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309776, 41.317272, 32.730946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006294, -0.965391, -0.260732,
		-0.541964, 0.222415, -0.810436,
		0.840378, 0.136207, -0.524607,
		43.561890, 41.358135, 32.573563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819023, 40.914192, 32.301270>,  <42.973625, 41.262791, 32.940788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819023, 40.914192, 32.301270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.217064, 40.942585, 32.328815>,  <43.455887, 40.959621, 32.345341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.217064, 40.942585, 32.328815>,  <42.819023, 40.914192, 32.301270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217064, 40.942585, 32.328815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087229, -0.958088, -0.272872,
		0.046606, 0.277541, -0.959583,
		0.995097, 0.070986, 0.068862,
		43.515594, 40.963882, 32.349476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110710, 40.602627, 31.674570>,  <42.819023, 40.914192, 32.301270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110710, 40.602627, 31.674570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.337574, 40.592175, 32.003849>,  <43.473690, 40.585903, 32.201416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.337574, 40.592175, 32.003849>,  <43.110710, 40.602627, 31.674570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337574, 40.592175, 32.003849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175061, -0.972833, -0.151492,
		0.804790, 0.230029, -0.547174,
		0.567156, -0.026131, 0.823196,
		43.507721, 40.584335, 32.250809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458832, 39.915821, 31.562763>,  <43.110710, 40.602627, 31.674570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458832, 39.915821, 31.562763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.575874, 40.041775, 31.923923>,  <43.646099, 40.117348, 32.140621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.575874, 40.041775, 31.923923>,  <43.458832, 39.915821, 31.562763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.575874, 40.041775, 31.923923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196985, -0.943823, 0.265320,
		0.935724, 0.100224, -0.338194,
		0.292604, 0.314885, 0.902901,
		43.663654, 40.136242, 32.194794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050713, 39.536285, 31.833675>,  <43.458832, 39.915821, 31.562763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050713, 39.536285, 31.833675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.906773, 39.669411, 32.182327>,  <43.820408, 39.749287, 32.391518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.906773, 39.669411, 32.182327>,  <44.050713, 39.536285, 31.833675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906773, 39.669411, 32.182327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074897, -0.920895, 0.382547,
		0.930000, 0.202942, 0.306456,
		-0.359849, 0.332816, 0.871632,
		43.798817, 39.769257, 32.443817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.458046, 39.129940, 32.245121>,  <44.050713, 39.536285, 31.833675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.458046, 39.129940, 32.245121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.151386, 39.267841, 32.461784>,  <43.967388, 39.350582, 32.591782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.151386, 39.267841, 32.461784>,  <44.458046, 39.129940, 32.245121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.151386, 39.267841, 32.461784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060456, -0.878627, 0.473666,
		0.639211, 0.330390, 0.694443,
		-0.766651, 0.344756, 0.541654,
		43.921391, 39.371269, 32.624279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725021, 39.119404, 32.948631>,  <44.458046, 39.129940, 32.245121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725021, 39.119404, 32.948631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.326351, 39.086807, 32.948425>,  <44.087151, 39.067249, 32.948303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.326351, 39.086807, 32.948425>,  <44.725021, 39.119404, 32.948631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.326351, 39.086807, 32.948425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064980, -0.798519, 0.598453,
		-0.049175, 0.596429, 0.801158,
		-0.996674, -0.081488, -0.000511,
		44.027348, 39.062363, 32.948273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690891, 38.974110, 33.637127>,  <44.725021, 39.119404, 32.948631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690891, 38.974110, 33.637127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.358204, 38.860352, 33.446400>,  <44.158592, 38.792095, 33.331963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.358204, 38.860352, 33.446400>,  <44.690891, 38.974110, 33.637127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.358204, 38.860352, 33.446400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180595, -0.950717, 0.252036,
		-0.525000, 0.123512, 0.842093,
		-0.831722, -0.284396, -0.476820,
		44.108688, 38.775032, 33.303352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354309, 38.599121, 34.104214>,  <44.690891, 38.974110, 33.637127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354309, 38.599121, 34.104214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.214878, 38.482403, 33.747932>,  <44.131218, 38.412373, 33.534164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.214878, 38.482403, 33.747932>,  <44.354309, 38.599121, 34.104214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.214878, 38.482403, 33.747932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031686, -0.953431, 0.299943,
		-0.936744, 0.076331, 0.341590,
		-0.348578, -0.291793, -0.890702,
		44.110306, 38.394863, 33.480721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857483, 38.120037, 34.285267>,  <44.354309, 38.599121, 34.104214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857483, 38.120037, 34.285267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.959740, 38.050957, 33.904778>,  <44.021095, 38.009510, 33.676483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.959740, 38.050957, 33.904778>,  <43.857483, 38.120037, 34.285267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959740, 38.050957, 33.904778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059910, -0.979194, 0.193880,
		-0.964913, -0.106552, -0.239979,
		0.255644, -0.172700, -0.951221,
		44.036434, 37.999146, 33.619411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.469734, 37.645847, 34.068268>,  <43.857483, 38.120037, 34.285267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.469734, 37.645847, 34.068268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.783466, 37.628925, 33.820709>,  <43.971706, 37.618771, 33.672173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.783466, 37.628925, 33.820709>,  <43.469734, 37.645847, 34.068268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783466, 37.628925, 33.820709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012962, -0.996336, 0.084534,
		-0.620206, -0.074325, -0.780909,
		0.784331, -0.042306, -0.618897,
		44.018764, 37.616234, 33.635040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402672, 37.018024, 33.675785>,  <43.469734, 37.645847, 34.068268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402672, 37.018024, 33.675785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.789597, 37.113903, 33.642654>,  <44.021751, 37.171432, 33.622776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.789597, 37.113903, 33.642654>,  <43.402672, 37.018024, 33.675785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.789597, 37.113903, 33.642654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248499, -0.961070, 0.120805,
		-0.050648, -0.137438, -0.989215,
		0.967307, 0.239700, -0.082829,
		44.079788, 37.185814, 33.617805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661469, 36.455341, 33.329231>,  <43.402672, 37.018024, 33.675785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661469, 36.455341, 33.329231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.992229, 36.617046, 33.485592>,  <44.190685, 36.714069, 33.579407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.992229, 36.617046, 33.485592>,  <43.661469, 36.455341, 33.329231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992229, 36.617046, 33.485592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385018, -0.913646, 0.130428,
		0.409870, 0.042651, -0.911146,
		0.826903, 0.404267, 0.390897,
		44.240299, 36.738327, 33.602859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286987, 36.259705, 32.919365>,  <43.661469, 36.455341, 33.329231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286987, 36.259705, 32.919365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.428223, 36.350426, 33.282440>,  <44.512962, 36.404858, 33.500286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.428223, 36.350426, 33.282440>,  <44.286987, 36.259705, 32.919365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428223, 36.350426, 33.282440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548214, -0.836327, -0.004282,
		0.758151, 0.499118, -0.419628,
		0.353084, 0.226800, 0.907686,
		44.534149, 36.418465, 33.554745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967422, 35.960327, 32.915199>,  <44.286987, 36.259705, 32.919365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967422, 35.960327, 32.915199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.886967, 36.027390, 33.301243>,  <44.838696, 36.067627, 33.532867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.886967, 36.027390, 33.301243>,  <44.967422, 35.960327, 32.915199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.886967, 36.027390, 33.301243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343373, -0.910662, 0.229759,
		0.917409, 0.377605, 0.125598,
		-0.201136, 0.167656, 0.965109,
		44.826626, 36.077686, 33.590775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.559250, 35.751408, 33.250229>,  <44.967422, 35.960327, 32.915199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.559250, 35.751408, 33.250229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.305000, 35.764103, 33.558765>,  <45.152451, 35.771721, 33.743889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.305000, 35.764103, 33.558765>,  <45.559250, 35.751408, 33.250229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305000, 35.764103, 33.558765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336003, -0.888181, 0.313426,
		0.695042, 0.458395, 0.553887,
		-0.635625, 0.031737, 0.771345,
		45.114311, 35.773624, 33.790169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.977577, 35.652458, 33.779758>,  <45.559250, 35.751408, 33.250229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.977577, 35.652458, 33.779758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.613945, 35.565971, 33.922207>,  <45.395767, 35.514080, 34.007675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.613945, 35.565971, 33.922207>,  <45.977577, 35.652458, 33.779758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.613945, 35.565971, 33.922207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352693, -0.854396, 0.381595,
		0.221765, 0.472503, 0.852972,
		-0.909081, -0.216213, 0.356124,
		45.341221, 35.501106, 34.029045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.680733, 35.963028, 34.178215>,  <45.977577, 35.652458, 33.779758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.680733, 35.963028, 34.178215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.820171, 35.967075, 33.803326>,  <46.903835, 35.969505, 33.578392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.820171, 35.967075, 33.803326>,  <46.680733, 35.963028, 34.178215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.820171, 35.967075, 33.803326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059879, 0.998140, -0.011495,
		0.935359, 0.060127, 0.348551,
		0.348594, 0.010119, -0.937219,
		46.924751, 35.970112, 33.522160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.173084, 36.546329, 34.094700>,  <46.680733, 35.963028, 34.178215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.173084, 36.546329, 34.094700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.101089, 36.468933, 33.708920>,  <47.057892, 36.422497, 33.477451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.101089, 36.468933, 33.708920>,  <47.173084, 36.546329, 34.094700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.101089, 36.468933, 33.708920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078181, 0.980175, -0.182055,
		0.980563, 0.042640, -0.191513,
		-0.179954, -0.193490, -0.964458,
		47.047092, 36.410885, 33.419582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.593624, 37.069019, 33.771210>,  <47.173084, 36.546329, 34.094700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.593624, 37.069019, 33.771210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.316730, 36.940624, 33.512665>,  <47.150593, 36.863586, 33.357540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.316730, 36.940624, 33.512665>,  <47.593624, 37.069019, 33.771210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.316730, 36.940624, 33.512665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059430, 0.917952, -0.392214,
		0.719222, -0.233091, -0.654514,
		-0.692235, -0.320987, -0.646358,
		47.109058, 36.844330, 33.318756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.919888, 37.269112, 33.191872>,  <47.593624, 37.069019, 33.771210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.919888, 37.269112, 33.191872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.535976, 37.201355, 33.102306>,  <47.305630, 37.160702, 33.048565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.535976, 37.201355, 33.102306>,  <47.919888, 37.269112, 33.191872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.535976, 37.201355, 33.102306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065397, 0.910441, -0.408437,
		0.273049, -0.377364, -0.884896,
		-0.959775, -0.169393, -0.223917,
		47.248043, 37.150536, 33.035130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.910217, 37.374969, 32.519115>,  <47.919888, 37.269112, 33.191872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.910217, 37.374969, 32.519115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.533092, 37.432384, 32.639446>,  <47.306816, 37.466835, 32.711643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.533092, 37.432384, 32.639446>,  <47.910217, 37.374969, 32.519115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.533092, 37.432384, 32.639446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053177, 0.826183, -0.560887,
		-0.329047, -0.544809, -0.771304,
		-0.942815, 0.143542, 0.300825,
		47.250248, 37.475449, 32.729694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.622952, 37.605801, 31.988794>,  <47.910217, 37.374969, 32.519115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.622952, 37.605801, 31.988794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.355618, 37.739647, 32.254536>,  <47.195217, 37.819954, 32.413979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.355618, 37.739647, 32.254536>,  <47.622952, 37.605801, 31.988794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.355618, 37.739647, 32.254536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020076, 0.884672, -0.465781,
		-0.743591, -0.324634, -0.584538,
		-0.668333, 0.334615, 0.664352,
		47.155117, 37.840031, 32.453842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.077450, 37.896175, 31.565538>,  <47.622952, 37.605801, 31.988794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.077450, 37.896175, 31.565538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.026985, 38.055721, 31.928854>,  <46.996704, 38.151447, 32.146843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.026985, 38.055721, 31.928854>,  <47.077450, 37.896175, 31.565538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.026985, 38.055721, 31.928854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084613, 0.907944, -0.410461,
		-0.988394, -0.128639, -0.080802,
		-0.126165, 0.398861, 0.908291,
		46.989136, 38.175381, 32.201340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.687885, 38.564064, 31.431824>,  <47.077450, 37.896175, 31.565538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.687885, 38.564064, 31.431824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.817383, 38.630089, 31.804478>,  <46.895081, 38.669704, 32.028069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.817383, 38.630089, 31.804478>,  <46.687885, 38.564064, 31.431824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.817383, 38.630089, 31.804478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136647, 0.982498, -0.126589,
		-0.936225, -0.086323, 0.340632,
		0.323743, 0.165063, 0.931635,
		46.914505, 38.679607, 32.083969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.225403, 39.083992, 31.778360>,  <46.687885, 38.564064, 31.431824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.225403, 39.083992, 31.778360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.559948, 39.084560, 31.997627>,  <46.760677, 39.084900, 32.129189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.559948, 39.084560, 31.997627>,  <46.225403, 39.083992, 31.778360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.559948, 39.084560, 31.997627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000425, 0.999998, -0.001945,
		-0.548169, 0.001394, 0.836366,
		0.836367, 0.001421, 0.548168,
		46.810860, 39.084988, 32.162079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.102211, 39.544933, 32.331348>,  <46.225403, 39.083992, 31.778360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.102211, 39.544933, 32.331348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.499214, 39.541618, 32.282574>,  <46.737415, 39.539631, 32.253307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.499214, 39.541618, 32.282574>,  <46.102211, 39.544933, 32.331348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.499214, 39.541618, 32.282574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022624, 0.992915, 0.116649,
		0.120106, -0.118534, 0.985659,
		0.992503, -0.008289, -0.121936,
		46.796967, 39.539131, 32.245995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.320534, 40.031212, 32.804939>,  <46.102211, 39.544933, 32.331348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.320534, 40.031212, 32.804939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.602566, 39.997471, 32.523300>,  <46.771786, 39.977226, 32.354317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.602566, 39.997471, 32.523300>,  <46.320534, 40.031212, 32.804939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.602566, 39.997471, 32.523300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020672, 0.990032, -0.139316,
		0.708830, 0.112784, 0.696305,
		0.705077, -0.084357, -0.704096,
		46.814087, 39.972164, 32.312073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.780392, 40.563023, 32.842583>,  <46.320534, 40.031212, 32.804939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.780392, 40.563023, 32.842583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.879803, 40.453884, 32.470821>,  <46.939449, 40.388401, 32.247765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.879803, 40.453884, 32.470821>,  <46.780392, 40.563023, 32.842583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.879803, 40.453884, 32.470821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010312, 0.958709, -0.284202,
		0.968570, 0.080217, 0.235453,
		0.248529, -0.272842, -0.929404,
		46.954361, 40.372032, 32.192001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.288189, 40.974335, 32.682789>,  <46.780392, 40.563023, 32.842583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.288189, 40.974335, 32.682789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.134960, 40.843498, 32.337242>,  <47.043022, 40.764996, 32.129913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.134960, 40.843498, 32.337242>,  <47.288189, 40.974335, 32.682789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.134960, 40.843498, 32.337242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044366, 0.940641, -0.336491,
		0.922651, -0.090575, -0.374849,
		-0.383076, -0.327094, -0.863864,
		47.020039, 40.745369, 32.078083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.653187, 41.370300, 32.144859>,  <47.288189, 40.974335, 32.682789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.653187, 41.370300, 32.144859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.326126, 41.237389, 31.956802>,  <47.129890, 41.157642, 31.843967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.326126, 41.237389, 31.956802>,  <47.653187, 41.370300, 32.144859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.326126, 41.237389, 31.956802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051117, 0.855307, -0.515593,
		0.573436, -0.397545, -0.716331,
		-0.817654, -0.332277, -0.470142,
		47.080830, 41.137707, 31.815760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.737251, 41.396221, 31.425480>,  <47.653187, 41.370300, 32.144859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.737251, 41.396221, 31.425480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.343811, 41.424156, 31.491999>,  <47.107746, 41.440918, 31.531910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.343811, 41.424156, 31.491999>,  <47.737251, 41.396221, 31.425480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.343811, 41.424156, 31.491999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022706, 0.866723, -0.498273,
		-0.178928, -0.493877, -0.850923,
		-0.983600, 0.069834, 0.166295,
		47.048733, 41.445107, 31.541887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.526730, 41.680504, 30.788671>,  <47.737251, 41.396221, 31.425480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.526730, 41.680504, 30.788671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.219139, 41.756760, 31.032747>,  <47.034584, 41.802513, 31.179193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.219139, 41.756760, 31.032747>,  <47.526730, 41.680504, 30.788671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.219139, 41.756760, 31.032747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018635, 0.947411, -0.319477,
		-0.639006, -0.257041, -0.724983,
		-0.768976, 0.190638, 0.610192,
		46.988445, 41.813950, 31.215805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.004917, 41.931755, 30.322258>,  <47.526730, 41.680504, 30.788671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.004917, 41.931755, 30.322258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.864117, 42.034878, 30.682177>,  <46.779636, 42.096752, 30.898127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.864117, 42.034878, 30.682177>,  <47.004917, 41.931755, 30.322258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.864117, 42.034878, 30.682177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515643, 0.748879, -0.416286,
		-0.781157, -0.610507, -0.130674,
		-0.352004, 0.257803, 0.899795,
		46.758514, 42.112217, 30.952114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282204, 42.012653, 30.267302>,  <47.004917, 41.931755, 30.322258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.282204, 42.012653, 30.267302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.353447, 42.185001, 30.621166>,  <46.396194, 42.288410, 30.833485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.353447, 42.185001, 30.621166>,  <46.282204, 42.012653, 30.267302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.353447, 42.185001, 30.621166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530106, 0.799441, -0.282634,
		-0.829014, -0.418625, 0.370795,
		0.178111, 0.430869, 0.884663,
		46.406879, 42.314262, 30.886564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.615944, 42.230103, 30.507217>,  <46.282204, 42.012653, 30.267302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.615944, 42.230103, 30.507217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.897930, 42.468426, 30.661121>,  <46.067120, 42.611420, 30.753464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.897930, 42.468426, 30.661121>,  <45.615944, 42.230103, 30.507217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.897930, 42.468426, 30.661121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557095, 0.800913, -0.219509,
		-0.438945, -0.059602, 0.896535,
		0.704963, 0.595807, 0.384761,
		46.109421, 42.647167, 30.776550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.260345, 42.767235, 30.770628>,  <45.615944, 42.230103, 30.507217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.260345, 42.767235, 30.770628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.612743, 42.956417, 30.765568>,  <45.824181, 43.069927, 30.762531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.612743, 42.956417, 30.765568>,  <45.260345, 42.767235, 30.770628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612743, 42.956417, 30.765568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467289, 0.865635, -0.179768,
		-0.074071, 0.164287, 0.983628,
		0.880996, 0.472954, -0.012651,
		45.877041, 43.098305, 30.761772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262897, 43.383327, 31.250105>,  <45.260345, 42.767235, 30.770628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262897, 43.383327, 31.250105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.532658, 43.469028, 30.967466>,  <45.694515, 43.520447, 30.797884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.532658, 43.469028, 30.967466>,  <45.262897, 43.383327, 31.250105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.532658, 43.469028, 30.967466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423214, 0.896341, -0.132149,
		0.605038, 0.388163, 0.695168,
		0.674402, 0.214249, -0.706596,
		45.734978, 43.533302, 30.755487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.729717, 39.540733, 38.571831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433849, 39.279812, 38.638031>,  <40.256329, 39.123260, 38.677750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433849, 39.279812, 38.638031>,  <40.729717, 39.540733, 38.571831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433849, 39.279812, 38.638031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133089, -0.099283, -0.986119,
		0.659679, -0.751428, -0.013378,
		-0.739669, -0.652302, 0.165501,
		40.211948, 39.084122, 38.687683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958366, 38.869713, 38.202221>,  <40.729717, 39.540733, 38.571831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958366, 38.869713, 38.202221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561817, 38.876904, 38.254154>,  <40.323887, 38.881218, 38.285313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561817, 38.876904, 38.254154>,  <40.958366, 38.869713, 38.202221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561817, 38.876904, 38.254154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130312, -0.241445, -0.961625,
		0.014061, -0.970248, 0.241705,
		-0.991373, 0.017975, 0.129830,
		40.264404, 38.882298, 38.293102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667019, 38.167850, 37.948723>,  <40.958366, 38.869713, 38.202221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667019, 38.167850, 37.948723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384243, 38.450760, 37.949207>,  <40.214577, 38.620506, 37.949497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384243, 38.450760, 37.949207>,  <40.667019, 38.167850, 37.948723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384243, 38.450760, 37.949207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380480, -0.378855, -0.843625,
		-0.596219, -0.596848, 0.536931,
		-0.706935, 0.707277, 0.001208,
		40.172161, 38.662945, 37.949570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064873, 37.837887, 37.862865>,  <40.667019, 38.167850, 37.948723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064873, 37.837887, 37.862865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031712, 38.212059, 37.725399>,  <40.011814, 38.436562, 37.642921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031712, 38.212059, 37.725399>,  <40.064873, 37.837887, 37.862865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031712, 38.212059, 37.725399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372007, -0.348970, -0.860134,
		-0.924521, 0.056538, 0.376915,
		-0.082902, 0.935427, -0.343663,
		40.006840, 38.492687, 37.622299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445415, 37.896763, 37.500122>,  <40.064873, 37.837887, 37.862865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445415, 37.896763, 37.500122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645927, 38.223534, 37.386032>,  <39.766235, 38.419598, 37.317577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645927, 38.223534, 37.386032>,  <39.445415, 37.896763, 37.500122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645927, 38.223534, 37.386032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294430, -0.148924, -0.943998,
		-0.813654, 0.557182, 0.165876,
		0.501276, 0.816927, -0.285224,
		39.796310, 38.468613, 37.300465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895416, 38.236946, 37.165871>,  <39.445415, 37.896763, 37.500122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895416, 38.236946, 37.165871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217857, 38.437489, 37.040115>,  <39.411324, 38.557816, 36.964661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217857, 38.437489, 37.040115>,  <38.895416, 38.236946, 37.165871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217857, 38.437489, 37.040115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370292, 0.012924, -0.928826,
		-0.461609, 0.865145, 0.196066,
		0.806102, 0.501356, -0.314390,
		39.459686, 38.587894, 36.945797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615101, 38.781551, 36.687958>,  <38.895416, 38.236946, 37.165871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615101, 38.781551, 36.687958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997887, 38.756969, 36.574512>,  <39.227558, 38.742222, 36.506447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997887, 38.756969, 36.574512>,  <38.615101, 38.781551, 36.687958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997887, 38.756969, 36.574512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287314, -0.063319, -0.955741,
		0.040777, 0.996100, -0.078251,
		0.956968, -0.061455, -0.283611,
		39.284977, 38.738533, 36.489429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730461, 39.195816, 36.135387>,  <38.615101, 38.781551, 36.687958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730461, 39.195816, 36.135387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032673, 38.940365, 36.076958>,  <39.214001, 38.787094, 36.041901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032673, 38.940365, 36.076958>,  <38.730461, 39.195816, 36.135387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032673, 38.940365, 36.076958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150976, 0.047244, -0.987408,
		0.637483, 0.768067, -0.060723,
		0.755527, -0.638624, -0.146077,
		39.259331, 38.748779, 36.033134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104355, 39.509056, 35.554054>,  <38.730461, 39.195816, 36.135387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104355, 39.509056, 35.554054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224834, 39.130585, 35.601440>,  <39.297123, 38.903503, 35.629871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224834, 39.130585, 35.601440>,  <39.104355, 39.509056, 35.554054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224834, 39.130585, 35.601440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060531, -0.142956, -0.987876,
		0.951639, 0.290375, -0.100331,
		0.301198, -0.946174, 0.118466,
		39.315193, 38.846733, 35.636982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495251, 39.396175, 35.034996>,  <39.104355, 39.509056, 35.554054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495251, 39.396175, 35.034996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436623, 39.013798, 35.136726>,  <39.401447, 38.784370, 35.197765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436623, 39.013798, 35.136726>,  <39.495251, 39.396175, 35.034996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436623, 39.013798, 35.136726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107203, -0.240235, -0.964777,
		0.983374, -0.168671, -0.067270,
		-0.146569, -0.955949, 0.254323,
		39.392651, 38.727013, 35.213024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099964, 38.857746, 34.805698>,  <39.495251, 39.396175, 35.034996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099964, 38.857746, 34.805698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751148, 38.665470, 34.842537>,  <39.541859, 38.550106, 34.864639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751148, 38.665470, 34.842537>,  <40.099964, 38.857746, 34.805698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751148, 38.665470, 34.842537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066012, -0.301962, -0.951032,
		0.484958, -0.823261, 0.295054,
		-0.872042, -0.480688, 0.092094,
		39.489536, 38.521263, 34.870167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106472, 38.191616, 34.581135>,  <40.099964, 38.857746, 34.805698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106472, 38.191616, 34.581135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715504, 38.265041, 34.539280>,  <39.480923, 38.309097, 34.514168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715504, 38.265041, 34.539280>,  <40.106472, 38.191616, 34.581135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715504, 38.265041, 34.539280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070570, -0.183186, -0.980542,
		-0.199171, -0.965786, 0.166095,
		-0.977421, 0.183574, -0.104641,
		39.422276, 38.320110, 34.507889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796387, 37.606228, 34.338840>,  <40.106472, 38.191616, 34.581135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796387, 37.606228, 34.338840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579628, 37.927788, 34.240780>,  <39.449574, 38.120724, 34.181946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579628, 37.927788, 34.240780>,  <39.796387, 37.606228, 34.338840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579628, 37.927788, 34.240780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193307, -0.164650, -0.967224,
		-0.817911, -0.571526, -0.066175,
		-0.541898, 0.803896, -0.245149,
		39.417057, 38.168957, 34.167236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089344, 36.899364, 34.019096>,  <39.796387, 37.606228, 34.338840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089344, 36.899364, 34.019096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744911, 36.905338, 33.815800>,  <39.538250, 36.908924, 33.693821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744911, 36.905338, 33.815800>,  <40.089344, 36.899364, 34.019096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744911, 36.905338, 33.815800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497779, 0.179082, 0.848614,
		0.103691, 0.983721, -0.146770,
		-0.861083, 0.014935, -0.508244,
		39.486588, 36.909821, 33.663326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679363, 36.300541, 33.872684>,  <40.089344, 36.899364, 34.019096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679363, 36.300541, 33.872684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046700, 36.195747, 33.754013>,  <40.267101, 36.132874, 33.682812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046700, 36.195747, 33.754013>,  <39.679363, 36.300541, 33.872684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046700, 36.195747, 33.754013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072244, -0.847941, 0.525144,
		-0.389144, -0.460827, -0.797625,
		0.918340, -0.261980, -0.296679,
		40.322201, 36.117153, 33.665009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699169, 35.594151, 33.531395>,  <39.679363, 36.300541, 33.872684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699169, 35.594151, 33.531395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039120, 35.714550, 33.704418>,  <40.243092, 35.786789, 33.808231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039120, 35.714550, 33.704418>,  <39.699169, 35.594151, 33.531395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039120, 35.714550, 33.704418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114193, -0.696134, 0.708771,
		0.514462, -0.651763, -0.557255,
		0.849876, 0.301001, 0.432562,
		40.294083, 35.804852, 33.834187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869518, 35.000648, 33.856018>,  <39.699169, 35.594151, 33.531395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869518, 35.000648, 33.856018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105293, 35.278896, 34.020302>,  <40.246758, 35.445847, 34.118874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105293, 35.278896, 34.020302>,  <39.869518, 35.000648, 33.856018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105293, 35.278896, 34.020302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027113, -0.525168, 0.850567,
		0.807360, -0.490219, -0.328413,
		0.589436, 0.695618, 0.410708,
		40.282124, 35.487583, 34.143513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373035, 34.645691, 34.185883>,  <39.869518, 35.000648, 33.856018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373035, 34.645691, 34.185883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406555, 34.999504, 34.369438>,  <40.426666, 35.211792, 34.479572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406555, 34.999504, 34.369438>,  <40.373035, 34.645691, 34.185883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406555, 34.999504, 34.369438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114824, -0.466010, 0.877297,
		0.989845, -0.020822, -0.140615,
		0.083795, 0.884534, 0.458887,
		40.431694, 35.264866, 34.507103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090542, 34.757732, 34.634426>,  <40.373035, 34.645691, 34.185883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090542, 34.757732, 34.634426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801296, 34.989201, 34.785290>,  <40.627750, 35.128082, 34.875809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801296, 34.989201, 34.785290>,  <41.090542, 34.757732, 34.634426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801296, 34.989201, 34.785290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155569, -0.395566, 0.905166,
		0.672983, 0.713212, 0.196016,
		-0.723113, 0.578668, 0.377163,
		40.584362, 35.162800, 34.898438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180309, 34.676277, 35.376007>,  <41.090542, 34.757732, 34.634426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180309, 34.676277, 35.376007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821449, 34.852741, 35.367085>,  <40.606133, 34.958618, 35.361732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821449, 34.852741, 35.367085>,  <41.180309, 34.676277, 35.376007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821449, 34.852741, 35.367085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118139, -0.190975, 0.974460,
		0.425634, 0.876872, 0.223452,
		-0.897151, 0.441161, -0.022308,
		40.552303, 34.985088, 35.360394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149414, 34.995773, 36.035896>,  <41.180309, 34.676277, 35.376007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149414, 34.995773, 36.035896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769283, 34.982582, 35.912090>,  <40.541206, 34.974667, 35.837807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769283, 34.982582, 35.912090>,  <41.149414, 34.995773, 36.035896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769283, 34.982582, 35.912090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286725, -0.294238, 0.911709,
		-0.121138, 0.955163, 0.270165,
		-0.950323, -0.032979, -0.309513,
		40.484188, 34.972687, 35.819237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812206, 35.347458, 36.564251>,  <41.149414, 34.995773, 36.035896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812206, 35.347458, 36.564251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531921, 35.135838, 36.372791>,  <40.363750, 35.008865, 36.257915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531921, 35.135838, 36.372791>,  <40.812206, 35.347458, 36.564251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531921, 35.135838, 36.372791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368959, -0.305494, 0.877805,
		-0.610627, 0.791693, 0.018866,
		-0.700716, -0.529051, -0.478645,
		40.321705, 34.977123, 36.229198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104294, 35.601273, 36.758610>,  <40.812206, 35.347458, 36.564251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104294, 35.601273, 36.758610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015583, 35.237961, 36.616707>,  <39.962357, 35.019974, 36.531567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015583, 35.237961, 36.616707>,  <40.104294, 35.601273, 36.758610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015583, 35.237961, 36.616707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576529, -0.171271, 0.798925,
		-0.786403, 0.381709, -0.485663,
		-0.221776, -0.908276, -0.354755,
		39.949051, 34.965477, 36.510281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376373, 35.522228, 36.915894>,  <40.104294, 35.601273, 36.758610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376373, 35.522228, 36.915894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570744, 35.172668, 36.910561>,  <39.687366, 34.962933, 36.907360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570744, 35.172668, 36.910561>,  <39.376373, 35.522228, 36.915894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570744, 35.172668, 36.910561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449724, -0.263086, 0.853542,
		-0.749414, -0.408768, -0.520853,
		0.485930, -0.873896, -0.013328,
		39.716522, 34.910500, 36.906563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887096, 35.005127, 37.216946>,  <39.376373, 35.522228, 36.915894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887096, 35.005127, 37.216946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245907, 34.829113, 37.233559>,  <39.461193, 34.723507, 37.243526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245907, 34.829113, 37.233559>,  <38.887096, 35.005127, 37.216946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245907, 34.829113, 37.233559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294380, -0.524720, 0.798755,
		-0.329685, -0.728726, -0.600222,
		0.897022, -0.440031, 0.041530,
		39.515015, 34.697105, 37.246017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786514, 34.298676, 37.249401>,  <38.887096, 35.005127, 37.216946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786514, 34.298676, 37.249401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146030, 34.373371, 37.408047>,  <39.361740, 34.418190, 37.503235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146030, 34.373371, 37.408047>,  <38.786514, 34.298676, 37.249401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146030, 34.373371, 37.408047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326897, -0.317299, 0.890202,
		0.292082, -0.929758, -0.224141,
		0.898792, 0.186741, 0.396612,
		39.415668, 34.429394, 37.527031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899342, 33.683983, 37.684628>,  <38.786514, 34.298676, 37.249401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899342, 33.683983, 37.684628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146420, 33.975189, 37.803585>,  <39.294666, 34.149914, 37.874962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146420, 33.975189, 37.803585>,  <38.899342, 33.683983, 37.684628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146420, 33.975189, 37.803585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173480, -0.242708, 0.954462,
		0.767048, -0.641154, -0.023621,
		0.617691, 0.728021, 0.297396,
		39.331726, 34.193596, 37.892803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188747, 33.400257, 38.187527>,  <38.899342, 33.683983, 37.684628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188747, 33.400257, 38.187527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285084, 33.783398, 38.250153>,  <39.342884, 34.013283, 38.287727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285084, 33.783398, 38.250153>,  <39.188747, 33.400257, 38.187527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285084, 33.783398, 38.250153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097278, -0.136681, 0.985827,
		0.965678, -0.252655, 0.060260,
		0.240838, 0.957853, 0.156568,
		39.357334, 34.070755, 38.297123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304230, 32.829151, 38.677387>,  <39.188747, 33.400257, 38.187527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304230, 32.829151, 38.677387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929218, 32.775867, 38.805943>,  <38.704212, 32.743896, 38.883076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929218, 32.775867, 38.805943>,  <39.304230, 32.829151, 38.677387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929218, 32.775867, 38.805943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315229, -0.065592, -0.946746,
		0.147197, -0.988915, 0.019503,
		-0.937531, -0.133210, 0.321389,
		38.647961, 32.735905, 38.902359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044422, 32.523560, 38.081196>,  <39.304230, 32.829151, 38.677387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044422, 32.523560, 38.081196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707191, 32.606377, 38.279736>,  <38.504852, 32.656067, 38.398861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707191, 32.606377, 38.279736>,  <39.044422, 32.523560, 38.081196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707191, 32.606377, 38.279736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504558, 0.014936, -0.863249,
		-0.186145, -0.978217, 0.091874,
		-0.843072, 0.207044, 0.496348,
		38.454269, 32.668488, 38.428638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612026, 32.060596, 37.772839>,  <39.044422, 32.523560, 38.081196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612026, 32.060596, 37.772839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384468, 32.326416, 37.966637>,  <38.247932, 32.485909, 38.082916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384468, 32.326416, 37.966637>,  <38.612026, 32.060596, 37.772839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384468, 32.326416, 37.966637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523118, 0.162174, -0.836688,
		-0.634589, -0.729438, 0.255375,
		-0.568896, 0.664545, 0.484497,
		38.213799, 32.525780, 38.111984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979698, 31.832890, 37.755413>,  <38.612026, 32.060596, 37.772839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979698, 31.832890, 37.755413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940609, 32.228607, 37.798767>,  <37.917156, 32.466038, 37.824780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940609, 32.228607, 37.798767>,  <37.979698, 31.832890, 37.755413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940609, 32.228607, 37.798767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554876, 0.036249, -0.831143,
		-0.826174, -0.141360, 0.545393,
		-0.097721, 0.989295, 0.108386,
		37.911293, 32.525394, 37.831284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366261, 31.921427, 37.615746>,  <37.979698, 31.832890, 37.755413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366261, 31.921427, 37.615746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520546, 32.288406, 37.576736>,  <37.613117, 32.508595, 37.553333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520546, 32.288406, 37.576736>,  <37.366261, 31.921427, 37.615746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520546, 32.288406, 37.576736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496066, 0.117103, -0.860352,
		-0.777911, 0.380224, 0.500284,
		0.385711, 0.917451, -0.097520,
		37.636261, 32.563641, 37.547482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784214, 32.409107, 37.384853>,  <37.366261, 31.921427, 37.615746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784214, 32.409107, 37.384853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123619, 32.605213, 37.305180>,  <37.327263, 32.722878, 37.257378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123619, 32.605213, 37.305180>,  <36.784214, 32.409107, 37.384853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123619, 32.605213, 37.305180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357411, 0.253369, -0.898923,
		-0.390241, 0.833935, 0.390211,
		0.848510, 0.490262, -0.199182,
		37.378174, 32.752293, 37.245426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677486, 33.128544, 37.229492>,  <36.784214, 32.409107, 37.384853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677486, 33.128544, 37.229492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032536, 33.100071, 37.047478>,  <37.245564, 33.082985, 36.938267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032536, 33.100071, 37.047478>,  <36.677486, 33.128544, 37.229492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032536, 33.100071, 37.047478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400991, 0.366580, -0.839539,
		0.226573, 0.927659, 0.296839,
		0.887621, -0.071187, -0.455040,
		37.298820, 33.078716, 36.910965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754990, 33.706848, 36.836025>,  <36.677486, 33.128544, 37.229492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754990, 33.706848, 36.836025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997032, 33.444199, 36.655937>,  <37.142258, 33.286610, 36.547886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997032, 33.444199, 36.655937>,  <36.754990, 33.706848, 36.836025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997032, 33.444199, 36.655937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361698, 0.277038, -0.890182,
		0.709239, 0.701498, -0.069860,
		0.605108, -0.656620, -0.450216,
		37.178566, 33.247211, 36.520874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834000, 34.080509, 36.319683>,  <36.754990, 33.706848, 36.836025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834000, 34.080509, 36.319683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977596, 33.721447, 36.217434>,  <37.063755, 33.506008, 36.156086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977596, 33.721447, 36.217434>,  <36.834000, 34.080509, 36.319683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977596, 33.721447, 36.217434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371471, 0.113833, -0.921440,
		0.856232, 0.425746, -0.292587,
		0.358993, -0.897654, -0.255619,
		37.085293, 33.452152, 36.140747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998020, 34.203468, 35.658527>,  <36.834000, 34.080509, 36.319683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998020, 34.203468, 35.658527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016716, 33.805260, 35.691387>,  <37.027931, 33.566334, 35.711105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016716, 33.805260, 35.691387>,  <36.998020, 34.203468, 35.658527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016716, 33.805260, 35.691387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353022, -0.093396, -0.930942,
		0.934447, 0.014509, -0.355807,
		0.046738, -0.995524, 0.082152,
		37.030739, 33.506603, 35.716034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462902, 33.880680, 35.038883>,  <36.998020, 34.203468, 35.658527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462902, 33.880680, 35.038883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194321, 33.621407, 35.182556>,  <37.033173, 33.465843, 35.268761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194321, 33.621407, 35.182556>,  <37.462902, 33.880680, 35.038883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194321, 33.621407, 35.182556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347277, -0.152944, -0.925206,
		0.654638, -0.745967, -0.122404,
		-0.671452, -0.648183, 0.359180,
		36.992886, 33.426952, 35.290310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441895, 33.345783, 34.535290>,  <37.462902, 33.880680, 35.038883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441895, 33.345783, 34.535290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095448, 33.336040, 34.734985>,  <36.887577, 33.330196, 34.854805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095448, 33.336040, 34.734985>,  <37.441895, 33.345783, 34.535290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095448, 33.336040, 34.734985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499638, 0.014069, -0.866120,
		0.014069, -0.999604, -0.024353,
		0.866120, 0.024353, -0.499243,
		36.835613, 33.328735, 34.884758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.128471, 31.142248, 42.075134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.790264, 31.337179, 42.162407>,  <39.587337, 31.454138, 42.214771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.790264, 31.337179, 42.162407>,  <40.128471, 31.142248, 42.075134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790264, 31.337179, 42.162407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092117, 0.269362, -0.958623,
		-0.525933, -0.830636, -0.182861,
		-0.845523, 0.487327, 0.218182,
		39.536606, 31.483377, 42.227863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655220, 30.871561, 41.681019>,  <40.128471, 31.142248, 42.075134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655220, 30.871561, 41.681019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.484993, 31.219969, 41.779179>,  <39.382858, 31.429014, 41.838074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.484993, 31.219969, 41.779179>,  <39.655220, 30.871561, 41.681019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484993, 31.219969, 41.779179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001720, 0.271957, -0.962308,
		-0.904926, -0.409103, -0.117233,
		-0.425565, 0.871019, 0.245397,
		39.357323, 31.481274, 41.852798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138481, 30.878204, 41.144424>,  <39.655220, 30.871561, 41.681019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138481, 30.878204, 41.144424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.159164, 31.252699, 41.283443>,  <39.171574, 31.477396, 41.366856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.159164, 31.252699, 41.283443>,  <39.138481, 30.878204, 41.144424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159164, 31.252699, 41.283443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194081, 0.350798, -0.916119,
		-0.979622, -0.020082, 0.199844,
		0.051708, 0.936236, 0.347547,
		39.174675, 31.533569, 41.387707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500072, 31.175362, 41.102436>,  <39.138481, 30.878204, 41.144424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500072, 31.175362, 41.102436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.757435, 31.481176, 41.086887>,  <38.911854, 31.664665, 41.077557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.757435, 31.481176, 41.086887>,  <38.500072, 31.175362, 41.102436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757435, 31.481176, 41.086887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336829, 0.237133, -0.911216,
		-0.687442, 0.599374, 0.410092,
		0.643405, 0.764538, -0.038871,
		38.950455, 31.710537, 41.075226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076206, 31.792440, 40.858746>,  <38.500072, 31.175362, 41.102436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076206, 31.792440, 40.858746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.463009, 31.892195, 40.837944>,  <38.695091, 31.952047, 40.825462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.463009, 31.892195, 40.837944>,  <38.076206, 31.792440, 40.858746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463009, 31.892195, 40.837944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170040, 0.479869, -0.860704,
		-0.189692, 0.841150, 0.506442,
		0.967007, 0.249384, -0.052002,
		38.753113, 31.967010, 40.822342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050213, 32.462101, 40.856548>,  <38.076206, 31.792440, 40.858746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050213, 32.462101, 40.856548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.385239, 32.332497, 40.680595>,  <38.586254, 32.254734, 40.575024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.385239, 32.332497, 40.680595>,  <38.050213, 32.462101, 40.856548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385239, 32.332497, 40.680595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228574, 0.523473, -0.820811,
		0.496221, 0.788029, 0.364383,
		0.837567, -0.324015, -0.439881,
		38.636509, 32.235291, 40.548630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242535, 33.040005, 40.548992>,  <38.050213, 32.462101, 40.856548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242535, 33.040005, 40.548992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.450161, 32.760105, 40.352654>,  <38.574738, 32.592167, 40.234852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.450161, 32.760105, 40.352654>,  <38.242535, 33.040005, 40.548992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450161, 32.760105, 40.352654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092827, 0.524720, -0.846199,
		0.849681, 0.484793, 0.207406,
		0.519062, -0.699746, -0.490846,
		38.605881, 32.550182, 40.205399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694118, 33.407257, 39.990242>,  <38.242535, 33.040005, 40.548992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694118, 33.407257, 39.990242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651203, 33.026390, 39.875793>,  <38.625454, 32.797871, 39.807125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651203, 33.026390, 39.875793>,  <38.694118, 33.407257, 39.990242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651203, 33.026390, 39.875793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030169, 0.284536, -0.958191,
		0.993770, -0.111436, -0.001802,
		-0.107290, -0.952167, -0.286125,
		38.619015, 32.740742, 39.789955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164360, 33.286484, 39.430355>,  <38.694118, 33.407257, 39.990242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164360, 33.286484, 39.430355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.873581, 33.012051, 39.418812>,  <38.699112, 32.847389, 39.411884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.873581, 33.012051, 39.418812>,  <39.164360, 33.286484, 39.430355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873581, 33.012051, 39.418812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038646, 0.082838, -0.995813,
		0.685604, -0.722789, -0.086734,
		-0.726948, -0.686085, -0.028861,
		38.655495, 32.806225, 39.410152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707680, 33.472626, 38.963680>,  <39.164360, 33.286484, 39.430355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707680, 33.472626, 38.963680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.600960, 33.847279, 38.872875>,  <39.536926, 34.072071, 38.818390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.600960, 33.847279, 38.872875>,  <39.707680, 33.472626, 38.963680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600960, 33.847279, 38.872875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067189, 0.253057, 0.965115,
		0.961407, 0.242240, -0.130448,
		-0.266801, 0.936633, -0.227015,
		39.520920, 34.128269, 38.804771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176857, 33.907280, 39.331329>,  <39.707680, 33.472626, 38.963680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176857, 33.907280, 39.331329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.867798, 34.155441, 39.277489>,  <39.682362, 34.304337, 39.245182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.867798, 34.155441, 39.277489>,  <40.176857, 33.907280, 39.331329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867798, 34.155441, 39.277489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025158, 0.241787, 0.970003,
		0.634334, 0.746086, -0.202425,
		-0.772650, 0.620399, -0.134603,
		39.636002, 34.341560, 39.237106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376526, 34.477398, 39.712479>,  <40.176857, 33.907280, 39.331329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376526, 34.477398, 39.712479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.984184, 34.545998, 39.675575>,  <39.748779, 34.587158, 39.653435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.984184, 34.545998, 39.675575>,  <40.376526, 34.477398, 39.712479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984184, 34.545998, 39.675575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008517, 0.435521, 0.900138,
		0.194552, 0.883691, -0.425722,
		-0.980855, 0.171498, -0.092258,
		39.689926, 34.597446, 39.647900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198711, 35.244919, 39.867279>,  <40.376526, 34.477398, 39.712479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198711, 35.244919, 39.867279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893589, 35.004047, 39.961514>,  <39.710514, 34.859524, 40.018055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893589, 35.004047, 39.961514>,  <40.198711, 35.244919, 39.867279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893589, 35.004047, 39.961514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068142, 0.287440, 0.955372,
		-0.643022, 0.744821, -0.178228,
		-0.762810, -0.602180, 0.235584,
		39.664745, 34.823395, 40.032188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909405, 35.588467, 40.397495>,  <40.198711, 35.244919, 39.867279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909405, 35.588467, 40.397495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.734451, 35.229691, 40.423424>,  <39.629478, 35.014427, 40.438980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.734451, 35.229691, 40.423424>,  <39.909405, 35.588467, 40.397495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734451, 35.229691, 40.423424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169715, 0.153114, 0.973526,
		-0.883117, 0.414800, -0.219193,
		-0.437380, -0.896938, 0.064820,
		39.603237, 34.960609, 40.442871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308754, 35.732967, 40.744858>,  <39.909405, 35.588467, 40.397495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308754, 35.732967, 40.744858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.376740, 35.343082, 40.802898>,  <39.417530, 35.109154, 40.837723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.376740, 35.343082, 40.802898>,  <39.308754, 35.732967, 40.744858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376740, 35.343082, 40.802898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047632, 0.138944, 0.989154,
		-0.984298, -0.175032, -0.022812,
		0.169964, -0.974709, 0.145100,
		39.427727, 35.050671, 40.846428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008049, 35.648571, 41.250061>,  <39.308754, 35.732967, 40.744858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008049, 35.648571, 41.250061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.230671, 35.316383, 41.259571>,  <39.364243, 35.117069, 41.265278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.230671, 35.316383, 41.259571>,  <39.008049, 35.648571, 41.250061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230671, 35.316383, 41.259571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040173, 0.001682, 0.999191,
		-0.829839, -0.557061, -0.032427,
		0.556556, -0.830470, 0.023775,
		39.397636, 35.067242, 41.266705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612423, 35.120567, 41.654984>,  <39.008049, 35.648571, 41.250061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612423, 35.120567, 41.654984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.003418, 35.036449, 41.661846>,  <39.238014, 34.985977, 41.665962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.003418, 35.036449, 41.661846>,  <38.612423, 35.120567, 41.654984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003418, 35.036449, 41.661846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045359, -0.130037, 0.990471,
		-0.206067, -0.968950, -0.136649,
		0.977486, -0.210301, 0.017155,
		39.296665, 34.973362, 41.666992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667168, 34.517773, 42.050404>,  <38.612423, 35.120567, 41.654984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667168, 34.517773, 42.050404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.030956, 34.683304, 42.066456>,  <39.249229, 34.782623, 42.076088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.030956, 34.683304, 42.066456>,  <38.667168, 34.517773, 42.050404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030956, 34.683304, 42.066456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005245, -0.107931, 0.994144,
		0.415732, -0.903936, -0.100330,
		0.909472, 0.413824, 0.040129,
		39.303799, 34.807449, 42.078495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041931, 34.067238, 42.550507>,  <38.667168, 34.517773, 42.050404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041931, 34.067238, 42.550507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.243385, 34.411690, 42.522766>,  <39.364258, 34.618362, 42.506123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.243385, 34.411690, 42.522766>,  <39.041931, 34.067238, 42.550507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243385, 34.411690, 42.522766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134219, 0.001311, 0.990951,
		0.853428, -0.508384, -0.114920,
		0.503633, 0.861130, -0.069353,
		39.394474, 34.670029, 42.501961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631035, 34.066940, 43.082268>,  <39.041931, 34.067238, 42.550507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631035, 34.066940, 43.082268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.641743, 34.460690, 43.012638>,  <39.648167, 34.696938, 42.970860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.641743, 34.460690, 43.012638>,  <39.631035, 34.066940, 43.082268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641743, 34.460690, 43.012638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130697, 0.169192, 0.976879,
		0.991061, -0.048900, -0.124125,
		0.026768, 0.984369, -0.174071,
		39.649773, 34.756001, 42.960419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280811, 34.327286, 43.330017>,  <39.631035, 34.066940, 43.082268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280811, 34.327286, 43.330017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.005093, 34.616611, 43.313606>,  <39.839661, 34.790207, 43.303761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.005093, 34.616611, 43.313606>,  <40.280811, 34.327286, 43.330017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005093, 34.616611, 43.313606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159488, 0.206745, 0.965308,
		0.706707, 0.658839, -0.257868,
		-0.689296, 0.723317, -0.041031,
		39.798306, 34.833607, 43.301296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592335, 34.818089, 43.734402>,  <40.280811, 34.327286, 43.330017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592335, 34.818089, 43.734402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.212242, 34.938602, 43.702671>,  <39.984188, 35.010910, 43.683632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.212242, 34.938602, 43.702671>,  <40.592335, 34.818089, 43.734402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212242, 34.938602, 43.702671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000019, 0.254570, 0.967054,
		0.311554, 0.918924, -0.241894,
		-0.950229, 0.301285, -0.079330,
		39.927174, 35.028988, 43.678871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596146, 35.458786, 43.986210>,  <40.592335, 34.818089, 43.734402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596146, 35.458786, 43.986210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.222984, 35.321262, 44.029072>,  <39.999088, 35.238747, 44.054790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.222984, 35.321262, 44.029072>,  <40.596146, 35.458786, 43.986210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222984, 35.321262, 44.029072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046242, 0.180733, 0.982445,
		-0.357144, 0.921482, -0.152708,
		-0.932904, -0.343812, 0.107158,
		39.943111, 35.218117, 44.061218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.201607, 36.009815, 44.134533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.569664, 35.868111, 44.201275>,  <34.790497, 35.783089, 44.241322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.569664, 35.868111, 44.201275>,  <34.201607, 36.009815, 44.134533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569664, 35.868111, 44.201275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305462, 0.382734, -0.871899,
		0.245017, 0.853238, 0.460382,
		0.920141, -0.354259, 0.166856,
		34.845707, 35.761833, 44.251331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699749, 36.534676, 43.969734>,  <34.201607, 36.009815, 44.134533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699749, 36.534676, 43.969734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.912678, 36.196194, 43.960094>,  <35.040436, 35.993107, 43.954311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.912678, 36.196194, 43.960094>,  <34.699749, 36.534676, 43.969734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912678, 36.196194, 43.960094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278595, 0.201995, -0.938926,
		0.799388, 0.493095, 0.343273,
		0.532319, -0.846201, -0.024099,
		35.072372, 35.942333, 43.952866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474514, 36.742500, 43.727077>,  <34.699749, 36.534676, 43.969734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474514, 36.742500, 43.727077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.400913, 36.358883, 43.640942>,  <35.356754, 36.128712, 43.589260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.400913, 36.358883, 43.640942>,  <35.474514, 36.742500, 43.727077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400913, 36.358883, 43.640942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269953, 0.161351, -0.949258,
		0.945130, -0.232793, 0.229209,
		-0.183998, -0.959048, -0.215341,
		35.345715, 36.071167, 43.576340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997532, 36.524792, 43.325817>,  <35.474514, 36.742500, 43.727077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997532, 36.524792, 43.325817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.765896, 36.204422, 43.264935>,  <35.626915, 36.012199, 43.228405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.765896, 36.204422, 43.264935>,  <35.997532, 36.524792, 43.325817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765896, 36.204422, 43.264935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294162, -0.031158, -0.955248,
		0.760342, -0.597950, 0.253646,
		-0.579093, -0.800928, -0.152204,
		35.592167, 35.964142, 43.219273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400543, 36.060776, 42.862328>,  <35.997532, 36.524792, 43.325817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400543, 36.060776, 42.862328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.015530, 35.953308, 42.847618>,  <35.784523, 35.888828, 42.838791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.015530, 35.953308, 42.847618>,  <36.400543, 36.060776, 42.862328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015530, 35.953308, 42.847618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019748, 0.065815, -0.997636,
		0.270451, -0.960982, -0.058044,
		-0.962531, -0.268666, -0.036777,
		35.726768, 35.872707, 42.836586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298161, 35.533607, 42.349953>,  <36.400543, 36.060776, 42.862328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298161, 35.533607, 42.349953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.931107, 35.686214, 42.394489>,  <35.710876, 35.777779, 42.421211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.931107, 35.686214, 42.394489>,  <36.298161, 35.533607, 42.349953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931107, 35.686214, 42.394489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119394, 0.002578, -0.992844,
		-0.379076, -0.924357, 0.043185,
		-0.917631, 0.381519, 0.111340,
		35.655819, 35.800671, 42.427891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884884, 35.295986, 41.775402>,  <36.298161, 35.533607, 42.349953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884884, 35.295986, 41.775402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.717052, 35.629311, 41.919369>,  <35.616352, 35.829308, 42.005749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.717052, 35.629311, 41.919369>,  <35.884884, 35.295986, 41.775402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717052, 35.629311, 41.919369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298979, 0.247510, -0.921602,
		-0.857067, -0.494294, 0.145293,
		-0.419581, 0.833314, 0.359915,
		35.591179, 35.879303, 42.027344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183857, 35.112717, 41.701897>,  <35.884884, 35.295986, 41.775402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183857, 35.112717, 41.701897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237926, 35.508846, 41.714485>,  <35.270367, 35.746525, 41.722038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237926, 35.508846, 41.714485>,  <35.183857, 35.112717, 41.701897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237926, 35.508846, 41.714485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388823, 0.082235, -0.917635,
		-0.911343, 0.111800, 0.396176,
		0.135171, 0.990322, 0.031474,
		35.278477, 35.805943, 41.723927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556683, 35.318584, 41.342144>,  <35.183857, 35.112717, 41.701897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556683, 35.318584, 41.342144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793152, 35.640663, 41.360741>,  <34.935036, 35.833912, 41.371899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793152, 35.640663, 41.360741>,  <34.556683, 35.318584, 41.342144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793152, 35.640663, 41.360741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211128, 0.210131, -0.954605,
		-0.778418, 0.554524, 0.294225,
		0.591177, 0.805201, 0.046494,
		34.970505, 35.882225, 41.374687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211460, 35.850037, 41.186951>,  <34.556683, 35.318584, 41.342144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211460, 35.850037, 41.186951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.577187, 35.975918, 41.084972>,  <34.796623, 36.051445, 41.023785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.577187, 35.975918, 41.084972>,  <34.211460, 35.850037, 41.186951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577187, 35.975918, 41.084972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329485, 0.211892, -0.920077,
		-0.235526, 0.925239, 0.297423,
		0.914313, 0.314698, -0.254946,
		34.851479, 36.070328, 41.008488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090164, 36.449295, 40.759533>,  <34.211460, 35.850037, 41.186951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090164, 36.449295, 40.759533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.459389, 36.336544, 40.654839>,  <34.680923, 36.268894, 40.592022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.459389, 36.336544, 40.654839>,  <34.090164, 36.449295, 40.759533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459389, 36.336544, 40.654839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191093, 0.254504, -0.948004,
		0.333835, 0.925080, 0.181057,
		0.923059, -0.281878, -0.261739,
		34.736305, 36.251980, 40.576317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349625, 36.938797, 40.422321>,  <34.090164, 36.449295, 40.759533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349625, 36.938797, 40.422321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.600815, 36.653801, 40.297096>,  <34.751530, 36.482803, 40.221962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.600815, 36.653801, 40.297096>,  <34.349625, 36.938797, 40.422321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600815, 36.653801, 40.297096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226239, 0.217765, -0.949418,
		0.744623, 0.667038, -0.024442,
		0.627975, -0.712488, -0.313062,
		34.789207, 36.440056, 40.203178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640858, 37.246204, 39.845047>,  <34.349625, 36.938797, 40.422321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640858, 37.246204, 39.845047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.728622, 36.858154, 39.803650>,  <34.781281, 36.625324, 39.778812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.728622, 36.858154, 39.803650>,  <34.640858, 37.246204, 39.845047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728622, 36.858154, 39.803650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358316, 0.018535, -0.933416,
		0.907451, 0.241886, -0.343545,
		0.219412, -0.970128, -0.103491,
		34.794445, 36.567116, 39.772602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169716, 37.097450, 39.281830>,  <34.640858, 37.246204, 39.845047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169716, 37.097450, 39.281830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.945625, 36.768211, 39.319065>,  <34.811172, 36.570667, 39.341408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.945625, 36.768211, 39.319065>,  <35.169716, 37.097450, 39.281830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945625, 36.768211, 39.319065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298171, 0.095534, -0.949720,
		0.772816, -0.559812, -0.298943,
		-0.560223, -0.823094, 0.093090,
		34.777557, 36.521282, 39.346992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597176, 37.473480, 38.964222>,  <35.169716, 37.097450, 39.281830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597176, 37.473480, 38.964222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.617672, 37.861866, 38.870754>,  <35.629971, 38.094898, 38.814674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.617672, 37.861866, 38.870754>,  <35.597176, 37.473480, 38.964222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617672, 37.861866, 38.870754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086608, 0.228775, 0.969619,
		0.994924, -0.069923, -0.072371,
		0.051242, 0.970965, -0.233669,
		35.633045, 38.153156, 38.800652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166325, 37.689278, 39.438801>,  <35.597176, 37.473480, 38.964222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166325, 37.689278, 39.438801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.992752, 38.023136, 39.303116>,  <35.888611, 38.223454, 39.221706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.992752, 38.023136, 39.303116>,  <36.166325, 37.689278, 39.438801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992752, 38.023136, 39.303116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153882, 0.439636, 0.884896,
		0.887709, 0.331783, -0.319208,
		-0.433928, 0.834650, -0.339213,
		35.862572, 38.273533, 39.201351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715000, 38.299828, 39.459244>,  <36.166325, 37.689278, 39.438801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715000, 38.299828, 39.459244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.346691, 38.455521, 39.469635>,  <36.125706, 38.548935, 39.475868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.346691, 38.455521, 39.469635>,  <36.715000, 38.299828, 39.459244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346691, 38.455521, 39.469635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176820, 0.357073, 0.917188,
		0.347720, 0.849117, -0.397607,
		-0.920774, 0.389230, 0.025979,
		36.070457, 38.572289, 39.477428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772308, 39.055092, 39.597778>,  <36.715000, 38.299828, 39.459244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772308, 39.055092, 39.597778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.413219, 38.918610, 39.709255>,  <36.197765, 38.836720, 39.776142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.413219, 38.918610, 39.709255>,  <36.772308, 39.055092, 39.597778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413219, 38.918610, 39.709255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088707, 0.479644, 0.872968,
		-0.431533, 0.808407, -0.400321,
		-0.897725, -0.341203, 0.278694,
		36.143902, 38.816250, 39.792862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578880, 39.488457, 40.157673>,  <36.772308, 39.055092, 39.597778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578880, 39.488457, 40.157673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.322014, 39.192173, 40.236637>,  <36.167892, 39.014404, 40.284016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.322014, 39.192173, 40.236637>,  <36.578880, 39.488457, 40.157673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322014, 39.192173, 40.236637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111045, 0.344699, 0.932122,
		-0.758481, 0.576654, -0.303606,
		-0.642165, -0.740711, 0.197413,
		36.129364, 38.969959, 40.295860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177288, 39.820492, 40.649654>,  <36.578880, 39.488457, 40.157673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177288, 39.820492, 40.649654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.088947, 39.433357, 40.697834>,  <36.035942, 39.201077, 40.726742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.088947, 39.433357, 40.697834>,  <36.177288, 39.820492, 40.649654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088947, 39.433357, 40.697834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229646, 0.068424, 0.970866,
		-0.947885, 0.242080, 0.207149,
		-0.220853, -0.967841, 0.120451,
		36.022690, 39.143005, 40.733971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055702, 39.821545, 41.320076>,  <36.177288, 39.820492, 40.649654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055702, 39.821545, 41.320076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.068291, 39.429157, 41.243431>,  <36.075844, 39.193726, 41.197445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.068291, 39.429157, 41.243431>,  <36.055702, 39.821545, 41.320076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068291, 39.429157, 41.243431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183669, -0.182764, 0.965848,
		-0.982484, -0.065591, 0.174421,
		0.031473, -0.980966, -0.191610,
		36.077732, 39.134869, 41.185947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662033, 39.568893, 41.813633>,  <36.055702, 39.821545, 41.320076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662033, 39.568893, 41.813633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.918201, 39.290474, 41.683784>,  <36.071903, 39.123421, 41.605877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.918201, 39.290474, 41.683784>,  <35.662033, 39.568893, 41.813633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918201, 39.290474, 41.683784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299107, -0.163260, 0.940149,
		-0.707390, -0.699183, 0.103639,
		0.640416, -0.696052, -0.324620,
		36.110325, 39.081657, 41.586399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558933, 38.994053, 42.221424>,  <35.662033, 39.568893, 41.813633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558933, 38.994053, 42.221424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.929325, 38.955090, 42.075508>,  <36.151562, 38.931713, 41.987957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.929325, 38.955090, 42.075508>,  <35.558933, 38.994053, 42.221424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929325, 38.955090, 42.075508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329513, -0.263231, 0.906714,
		-0.184344, -0.959803, -0.211650,
		0.925980, -0.097406, -0.364792,
		36.207119, 38.925865, 41.966072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796413, 38.362511, 42.375721>,  <35.558933, 38.994053, 42.221424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796413, 38.362511, 42.375721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107124, 38.612381, 42.343742>,  <36.293552, 38.762302, 42.324554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107124, 38.612381, 42.343742>,  <35.796413, 38.362511, 42.375721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107124, 38.612381, 42.343742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343145, -0.313374, 0.885465,
		0.528078, -0.715243, -0.457778,
		0.776778, 0.624679, -0.079946,
		36.340157, 38.799786, 42.319759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389481, 37.955051, 42.566711>,  <35.796413, 38.362511, 42.375721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389481, 37.955051, 42.566711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.482216, 38.337219, 42.639847>,  <36.537857, 38.566521, 42.683727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.482216, 38.337219, 42.639847>,  <36.389481, 37.955051, 42.566711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482216, 38.337219, 42.639847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463649, -0.273767, 0.842663,
		0.855149, -0.110592, -0.506448,
		0.231841, 0.955417, 0.182835,
		36.551769, 38.623844, 42.694698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091976, 37.928146, 42.743511>,  <36.389481, 37.955051, 42.566711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091976, 37.928146, 42.743511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.979946, 38.283913, 42.888012>,  <36.912727, 38.497372, 42.974712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.979946, 38.283913, 42.888012>,  <37.091976, 37.928146, 42.743511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979946, 38.283913, 42.888012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441756, -0.214693, 0.871067,
		0.852298, 0.403546, -0.332775,
		-0.280071, 0.889414, 0.361251,
		36.895924, 38.550735, 42.996387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497204, 38.067085, 43.257549>,  <37.091976, 37.928146, 42.743511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497204, 38.067085, 43.257549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.231983, 38.347404, 43.362808>,  <37.072853, 38.515594, 43.425964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.231983, 38.347404, 43.362808>,  <37.497204, 38.067085, 43.257549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231983, 38.347404, 43.362808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137819, -0.231245, 0.963084,
		0.735780, 0.674840, 0.056744,
		-0.663049, 0.700797, 0.263152,
		37.033070, 38.557644, 43.441753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878708, 38.457825, 43.806980>,  <37.497204, 38.067085, 43.257549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878708, 38.457825, 43.806980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.481300, 38.499222, 43.825760>,  <37.242855, 38.524059, 43.837029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.481300, 38.499222, 43.825760>,  <37.878708, 38.457825, 43.806980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481300, 38.499222, 43.825760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000826, -0.419658, 0.907682,
		0.113641, 0.901763, 0.417025,
		-0.993522, 0.103495, 0.046946,
		37.183243, 38.530270, 43.839844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415897, 38.885891, 44.021702>,  <37.878708, 38.457825, 43.806980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415897, 38.885891, 44.021702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.800484, 38.791309, 44.077793>,  <39.031235, 38.734558, 44.111446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.800484, 38.791309, 44.077793>,  <38.415897, 38.885891, 44.021702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800484, 38.791309, 44.077793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161540, 0.073224, -0.984146,
		0.222439, 0.968879, 0.108600,
		0.961470, -0.236456, 0.140225,
		39.088924, 38.720371, 44.119862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807285, 39.410385, 43.808369>,  <38.415897, 38.885891, 44.021702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807285, 39.410385, 43.808369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.044582, 39.088917, 43.789730>,  <39.186962, 38.896034, 43.778545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.044582, 39.088917, 43.789730>,  <38.807285, 39.410385, 43.808369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044582, 39.088917, 43.789730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270447, 0.253486, -0.928764,
		0.758233, 0.538385, 0.367730,
		0.593247, -0.803671, -0.046597,
		39.222557, 38.847816, 43.775749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564514, 39.569508, 43.616070>,  <38.807285, 39.410385, 43.808369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564514, 39.569508, 43.616070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.530388, 39.183533, 43.516773>,  <39.509911, 38.951950, 43.457195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.530388, 39.183533, 43.516773>,  <39.564514, 39.569508, 43.616070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530388, 39.183533, 43.516773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344994, 0.205125, -0.915917,
		0.934719, -0.163787, 0.315395,
		-0.085320, -0.964934, -0.248239,
		39.504791, 38.894051, 43.442303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176868, 39.404346, 43.169827>,  <39.564514, 39.569508, 43.616070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176868, 39.404346, 43.169827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.899101, 39.123245, 43.107956>,  <39.732441, 38.954586, 43.070835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.899101, 39.123245, 43.107956>,  <40.176868, 39.404346, 43.169827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899101, 39.123245, 43.107956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285568, -0.071844, -0.955662,
		0.660478, -0.707801, 0.250573,
		-0.694421, -0.702749, -0.154674,
		39.690777, 38.912422, 43.061554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591629, 38.915684, 42.875526>,  <40.176868, 39.404346, 43.169827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591629, 38.915684, 42.875526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.217827, 38.813148, 42.776737>,  <39.993546, 38.751625, 42.717464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.217827, 38.813148, 42.776737>,  <40.591629, 38.915684, 42.875526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217827, 38.813148, 42.776737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287155, -0.132876, -0.948623,
		0.210355, -0.957410, 0.197782,
		-0.934501, -0.256342, -0.246974,
		39.937477, 38.736248, 42.702644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611458, 38.222012, 42.469727>,  <40.591629, 38.915684, 42.875526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611458, 38.222012, 42.469727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.258492, 38.383472, 42.373062>,  <40.046711, 38.480350, 42.315063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.258492, 38.383472, 42.373062>,  <40.611458, 38.222012, 42.469727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258492, 38.383472, 42.373062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116534, -0.310121, -0.943528,
		-0.455803, -0.860749, 0.226617,
		-0.882419, 0.403654, -0.241661,
		39.993767, 38.504570, 42.300564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278564, 37.669876, 42.075359>,  <40.611458, 38.222012, 42.469727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278564, 37.669876, 42.075359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.130859, 38.034431, 42.002682>,  <40.042236, 38.253166, 41.959076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.130859, 38.034431, 42.002682>,  <40.278564, 37.669876, 42.075359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130859, 38.034431, 42.002682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089121, -0.159883, -0.983105,
		-0.925044, -0.379212, -0.022186,
		-0.369258, 0.911392, -0.181695,
		40.020081, 38.307850, 41.948174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157715, 37.619347, 41.382057>,  <40.278564, 37.669876, 42.075359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157715, 37.619347, 41.382057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.088017, 38.008732, 41.441387>,  <40.046196, 38.242363, 41.476986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.088017, 38.008732, 41.441387>,  <40.157715, 37.619347, 41.382057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088017, 38.008732, 41.441387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074373, 0.137191, -0.987749,
		-0.981890, -0.183141, 0.048495,
		-0.174244, 0.973467, 0.148327,
		40.035744, 38.300774, 41.485886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558624, 37.697220, 40.998993>,  <40.157715, 37.619347, 41.382057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558624, 37.697220, 40.998993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.731602, 38.050667, 41.070789>,  <39.835388, 38.262733, 41.113869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.731602, 38.050667, 41.070789>,  <39.558624, 37.697220, 40.998993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731602, 38.050667, 41.070789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032831, 0.214370, -0.976201,
		-0.901063, 0.416259, 0.121712,
		0.432444, 0.883614, 0.179495,
		39.861336, 38.315750, 41.124638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211346, 38.129124, 40.645721>,  <39.558624, 37.697220, 40.998993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211346, 38.129124, 40.645721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.571533, 38.302673, 40.657799>,  <39.787647, 38.406803, 40.665047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.571533, 38.302673, 40.657799>,  <39.211346, 38.129124, 40.645721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571533, 38.302673, 40.657799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103998, 0.282203, -0.953701,
		-0.422307, 0.855637, 0.299237,
		0.900467, 0.433874, 0.030192,
		39.841675, 38.432835, 40.666855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119617, 38.887955, 40.422401>,  <39.211346, 38.129124, 40.645721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119617, 38.887955, 40.422401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.498753, 38.791466, 40.339062>,  <39.726234, 38.733574, 40.289059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.498753, 38.791466, 40.339062>,  <39.119617, 38.887955, 40.422401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498753, 38.791466, 40.339062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081076, 0.449697, -0.889494,
		0.308259, 0.859991, 0.406684,
		0.947841, -0.241222, -0.208348,
		39.783104, 38.719101, 40.276558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366684, 39.458141, 40.032291>,  <39.119617, 38.887955, 40.422401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366684, 39.458141, 40.032291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.649059, 39.181377, 39.971741>,  <39.818485, 39.015320, 39.935410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.649059, 39.181377, 39.971741>,  <39.366684, 39.458141, 40.032291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649059, 39.181377, 39.971741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061268, 0.272576, -0.960182,
		0.705618, 0.668555, 0.234813,
		0.705939, -0.691908, -0.151373,
		39.860840, 38.973804, 39.926331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792294, 39.795551, 39.601765>,  <39.366684, 39.458141, 40.032291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792294, 39.795551, 39.601765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.875546, 39.406029, 39.565132>,  <39.925495, 39.172314, 39.543152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.875546, 39.406029, 39.565132>,  <39.792294, 39.795551, 39.601765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875546, 39.406029, 39.565132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196744, 0.133397, -0.971338,
		0.958110, 0.184144, 0.219354,
		0.208127, -0.973805, -0.091580,
		39.937984, 39.113888, 39.537659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398300, 39.771854, 39.165768>,  <39.792294, 39.795551, 39.601765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398300, 39.771854, 39.165768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.213112, 39.419739, 39.124313>,  <40.101997, 39.208469, 39.099442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.213112, 39.419739, 39.124313>,  <40.398300, 39.771854, 39.165768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213112, 39.419739, 39.124313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055124, 0.088101, -0.994585,
		0.884656, -0.466180, 0.007737,
		-0.462974, -0.880292, -0.103636,
		40.074219, 39.155651, 39.093224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.929829, 27.208271, 35.918583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.713259, 27.043621, 36.211819>,  <29.583317, 26.944832, 36.387760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.713259, 27.043621, 36.211819>,  <29.929829, 27.208271, 35.918583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713259, 27.043621, 36.211819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806073, 0.501979, -0.313469,
		-0.238965, -0.760646, -0.603584,
		-0.541426, -0.411625, 0.733092,
		29.550831, 26.920134, 36.431747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321430, 26.779453, 35.640411>,  <29.929829, 27.208271, 35.918583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321430, 26.779453, 35.640411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.287498, 26.977463, 35.986301>,  <29.267139, 27.096268, 36.193836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.287498, 26.977463, 35.986301>,  <29.321430, 26.779453, 35.640411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287498, 26.977463, 35.986301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617376, 0.655077, -0.435570,
		-0.782081, -0.570813, 0.250044,
		-0.084831, 0.495022, 0.864729,
		29.262049, 27.125969, 36.245720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607685, 26.948357, 35.746323>,  <29.321430, 26.779453, 35.640411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607685, 26.948357, 35.746323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.767450, 27.215143, 35.997917>,  <28.863310, 27.375216, 36.148876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.767450, 27.215143, 35.997917>,  <28.607685, 26.948357, 35.746323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767450, 27.215143, 35.997917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649367, 0.690129, -0.319444,
		-0.647141, -0.280854, 0.708752,
		0.399414, 0.666965, 0.628988,
		28.887274, 27.415234, 36.186615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026054, 27.225483, 36.122353>,  <28.607685, 26.948357, 35.746323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026054, 27.225483, 36.122353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326164, 27.486961, 36.161892>,  <28.506229, 27.643848, 36.185616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326164, 27.486961, 36.161892>,  <28.026054, 27.225483, 36.122353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326164, 27.486961, 36.161892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637345, 0.754897, -0.154670,
		-0.175725, 0.053046, 0.983009,
		0.750275, 0.653695, 0.098845,
		28.551247, 27.683069, 36.191544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697002, 27.741013, 36.416073>,  <28.026054, 27.225483, 36.122353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697002, 27.741013, 36.416073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.033844, 27.909958, 36.281925>,  <28.235949, 28.011326, 36.201439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.033844, 27.909958, 36.281925>,  <27.697002, 27.741013, 36.416073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033844, 27.909958, 36.281925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469216, 0.880346, -0.069479,
		0.265894, 0.215867, 0.939522,
		0.842103, 0.422365, -0.335367,
		28.286474, 28.036667, 36.181316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894981, 28.311604, 36.876205>,  <27.697002, 27.741013, 36.416073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894981, 28.311604, 36.876205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.054562, 28.352659, 36.511723>,  <28.150311, 28.377293, 36.293034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.054562, 28.352659, 36.511723>,  <27.894981, 28.311604, 36.876205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054562, 28.352659, 36.511723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394812, 0.916117, -0.069668,
		0.827624, 0.387551, 0.406008,
		0.398950, 0.102638, -0.911210,
		28.174246, 28.383451, 36.238361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022200, 28.951988, 36.892120>,  <27.894981, 28.311604, 36.876205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022200, 28.951988, 36.892120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079449, 28.862534, 36.506477>,  <28.113798, 28.808861, 36.275093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079449, 28.862534, 36.506477>,  <28.022200, 28.951988, 36.892120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079449, 28.862534, 36.506477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446501, 0.854778, -0.264560,
		0.883263, 0.468339, 0.022484,
		0.143123, -0.223637, -0.964107,
		28.122385, 28.795443, 36.217247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299995, 29.484077, 36.656013>,  <28.022200, 28.951988, 36.892120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299995, 29.484077, 36.656013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.169844, 29.313013, 36.318676>,  <28.091753, 29.210375, 36.116272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.169844, 29.313013, 36.318676>,  <28.299995, 29.484077, 36.656013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169844, 29.313013, 36.318676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115626, 0.903181, -0.413394,
		0.938486, -0.036999, -0.343329,
		-0.325383, -0.427662, -0.843345,
		28.072229, 29.184715, 36.065674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664742, 29.773254, 36.004597>,  <28.299995, 29.484077, 36.656013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664742, 29.773254, 36.004597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.311026, 29.627316, 35.888035>,  <28.098795, 29.539751, 35.818100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.311026, 29.627316, 35.888035>,  <28.664742, 29.773254, 36.004597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311026, 29.627316, 35.888035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224387, 0.879330, -0.420036,
		0.409487, -0.306048, -0.859451,
		-0.884291, -0.364848, -0.291401,
		28.045738, 29.517860, 35.800613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510765, 30.169489, 35.383400>,  <28.664742, 29.773254, 36.004597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510765, 30.169489, 35.383400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.159815, 29.983200, 35.429562>,  <27.949245, 29.871428, 35.457256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.159815, 29.983200, 35.429562>,  <28.510765, 30.169489, 35.383400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159815, 29.983200, 35.429562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455111, 0.731619, -0.507551,
		0.151948, -0.497832, -0.853859,
		-0.877374, -0.465722, 0.115401,
		27.896603, 29.843483, 35.464184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155201, 30.321825, 34.788738>,  <28.510765, 30.169489, 35.383400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155201, 30.321825, 34.788738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903524, 30.257555, 35.092922>,  <27.752520, 30.218992, 35.275433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903524, 30.257555, 35.092922>,  <28.155201, 30.321825, 34.788738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903524, 30.257555, 35.092922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584461, 0.742777, -0.326630,
		-0.512372, -0.649973, -0.561257,
		-0.629190, -0.160677, 0.760462,
		27.714767, 30.209352, 35.321060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562477, 30.406128, 34.531059>,  <28.155201, 30.321825, 34.788738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562477, 30.406128, 34.531059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.518051, 30.456211, 34.925419>,  <27.491396, 30.486261, 35.162033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.518051, 30.456211, 34.925419>,  <27.562477, 30.406128, 34.531059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518051, 30.456211, 34.925419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586384, 0.792689, -0.166729,
		-0.802383, -0.596630, -0.014620,
		-0.111065, 0.125207, 0.985895,
		27.484732, 30.493773, 35.221188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858740, 30.432516, 34.662582>,  <27.562477, 30.406128, 34.531059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858740, 30.432516, 34.662582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.988647, 30.604210, 34.999695>,  <27.066591, 30.707226, 35.201962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.988647, 30.604210, 34.999695>,  <26.858740, 30.432516, 34.662582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988647, 30.604210, 34.999695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531352, 0.819973, -0.212861,
		-0.782426, -0.378684, 0.494376,
		0.324768, 0.429236, 0.842782,
		27.086079, 30.732981, 35.252529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.228897, 30.779985, 34.881855>,  <26.858740, 30.432516, 34.662582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.228897, 30.779985, 34.881855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.528425, 30.957870, 35.078423>,  <26.708143, 31.064602, 35.196365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.528425, 30.957870, 35.078423>,  <26.228897, 30.779985, 34.881855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528425, 30.957870, 35.078423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424980, 0.891152, -0.158871,
		-0.508583, -0.089878, 0.856309,
		0.748822, 0.444713, 0.491421,
		26.753073, 31.091284, 35.225849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024431, 31.257357, 35.387070>,  <26.228897, 30.779985, 34.881855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024431, 31.257357, 35.387070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.396366, 31.380564, 35.306545>,  <26.619528, 31.454489, 35.258232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.396366, 31.380564, 35.306545>,  <26.024431, 31.257357, 35.387070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.396366, 31.380564, 35.306545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342927, 0.923750, -0.170550,
		0.133429, 0.227619, 0.964565,
		0.929837, 0.308019, -0.201312,
		26.675318, 31.472969, 35.246151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978737, 31.918898, 35.703545>,  <26.024431, 31.257357, 35.387070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.978737, 31.918898, 35.703545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.299553, 31.908337, 35.464870>,  <26.492043, 31.902000, 35.321667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.299553, 31.908337, 35.464870>,  <25.978737, 31.918898, 35.703545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299553, 31.908337, 35.464870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213231, 0.920531, -0.327346,
		0.557910, 0.389777, 0.732673,
		0.802040, -0.026401, -0.596686,
		26.540165, 31.900415, 35.285866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.302597, 32.586990, 35.808933>,  <25.978737, 31.918898, 35.703545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.302597, 32.586990, 35.808933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.434069, 32.447899, 35.457695>,  <26.512951, 32.364445, 35.246952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.434069, 32.447899, 35.457695>,  <26.302597, 32.586990, 35.808933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434069, 32.447899, 35.457695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197634, 0.883847, -0.423976,
		0.923532, 0.312894, 0.221778,
		0.328677, -0.347725, -0.878099,
		26.532671, 32.343582, 35.194263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504408, 33.123863, 35.598541>,  <26.302597, 32.586990, 35.808933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504408, 33.123863, 35.598541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.541971, 32.895412, 35.272350>,  <26.564508, 32.758343, 35.076637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.541971, 32.895412, 35.272350>,  <26.504408, 33.123863, 35.598541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541971, 32.895412, 35.272350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069271, 0.813359, -0.577623,
		0.993168, 0.110732, 0.036819,
		0.093909, -0.571126, -0.815473,
		26.570145, 32.724075, 35.027710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017796, 33.387115, 35.225300>,  <26.504408, 33.123863, 35.598541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017796, 33.387115, 35.225300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.794277, 33.203278, 34.949177>,  <26.660166, 33.092976, 34.783504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.794277, 33.203278, 34.949177>,  <27.017796, 33.387115, 35.225300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794277, 33.203278, 34.949177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015956, 0.838192, -0.545142,
		0.829145, -0.293614, -0.475719,
		-0.558805, -0.459592, -0.690298,
		26.626638, 33.065399, 34.742085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281626, 33.550468, 34.501480>,  <27.017796, 33.387115, 35.225300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281626, 33.550468, 34.501480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.889111, 33.473595, 34.506226>,  <26.653601, 33.427471, 34.509071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.889111, 33.473595, 34.506226>,  <27.281626, 33.550468, 34.501480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889111, 33.473595, 34.506226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163825, 0.800945, -0.575889,
		0.101172, -0.567057, -0.817442,
		-0.981288, -0.192181, 0.011865,
		26.594725, 33.415939, 34.509785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716824, 32.981163, 34.227852>,  <27.281626, 33.550468, 34.501480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716824, 32.981163, 34.227852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.897472, 33.334644, 34.277023>,  <28.005861, 33.546734, 34.306526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.897472, 33.334644, 34.277023>,  <27.716824, 32.981163, 34.227852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897472, 33.334644, 34.277023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683133, -0.431119, 0.589462,
		0.573906, -0.182235, -0.798387,
		0.451620, 0.883701, 0.122932,
		28.032959, 33.599754, 34.313904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327660, 32.858398, 34.189808>,  <27.716824, 32.981163, 34.227852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327660, 32.858398, 34.189808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.341265, 33.205204, 34.388657>,  <28.349428, 33.413288, 34.507965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.341265, 33.205204, 34.388657>,  <28.327660, 32.858398, 34.189808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341265, 33.205204, 34.388657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818351, -0.309698, 0.484137,
		0.573711, 0.390355, -0.720054,
		0.034013, 0.867012, 0.497125,
		28.351469, 33.465309, 34.537792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073429, 33.155758, 34.125980>,  <28.327660, 32.858398, 34.189808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073429, 33.155758, 34.125980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.896666, 33.315834, 34.447121>,  <28.790607, 33.411880, 34.639805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.896666, 33.315834, 34.447121>,  <29.073429, 33.155758, 34.125980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896666, 33.315834, 34.447121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810853, -0.204625, 0.548313,
		0.383711, 0.893296, -0.234068,
		-0.441909, 0.400188, 0.802848,
		28.764093, 33.435890, 34.687977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614162, 33.559090, 34.536415>,  <29.073429, 33.155758, 34.125980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614162, 33.559090, 34.536415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.323591, 33.502865, 34.805500>,  <29.149248, 33.469131, 34.966953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.323591, 33.502865, 34.805500>,  <29.614162, 33.559090, 34.536415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323591, 33.502865, 34.805500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685980, -0.088951, 0.722162,
		-0.041669, 0.986068, 0.161038,
		-0.726426, -0.140561, 0.672717,
		29.105663, 33.460697, 35.007317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831442, 33.967552, 35.122032>,  <29.614162, 33.559090, 34.536415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831442, 33.967552, 35.122032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.550993, 33.733437, 35.284939>,  <29.382725, 33.592968, 35.382683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.550993, 33.733437, 35.284939>,  <29.831442, 33.967552, 35.122032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550993, 33.733437, 35.284939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663350, -0.325903, 0.673612,
		-0.261526, 0.742447, 0.616747,
		-0.701121, -0.585286, 0.407270,
		29.340656, 33.557850, 35.407120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929474, 34.035172, 35.843605>,  <29.831442, 33.967552, 35.122032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929474, 34.035172, 35.843605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.718424, 33.701622, 35.778778>,  <29.591793, 33.501492, 35.739883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.718424, 33.701622, 35.778778>,  <29.929474, 34.035172, 35.843605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718424, 33.701622, 35.778778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576253, -0.491523, 0.652946,
		-0.624133, 0.251121, 0.739862,
		-0.527627, -0.833873, -0.162067,
		29.560135, 33.451462, 35.730160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962727, 33.847645, 36.501865>,  <29.929474, 34.035172, 35.843605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962727, 33.847645, 36.501865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.876122, 33.530487, 36.274029>,  <29.824160, 33.340191, 36.137325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.876122, 33.530487, 36.274029>,  <29.962727, 33.847645, 36.501865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876122, 33.530487, 36.274029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401540, -0.604125, 0.688331,
		-0.889881, -0.079685, 0.449179,
		-0.216511, -0.792896, -0.569596,
		29.811169, 33.292618, 36.103149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620098, 33.411381, 36.949955>,  <29.962727, 33.847645, 36.501865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620098, 33.411381, 36.949955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.738941, 33.184601, 36.642632>,  <29.810247, 33.048534, 36.458237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.738941, 33.184601, 36.642632>,  <29.620098, 33.411381, 36.949955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738941, 33.184601, 36.642632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386348, -0.664457, 0.639713,
		-0.873192, -0.486897, 0.021624,
		0.297106, -0.566946, -0.768310,
		29.828074, 33.014519, 36.412140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346687, 32.705044, 37.118828>,  <29.620098, 33.411381, 36.949955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346687, 32.705044, 37.118828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.670368, 32.678856, 36.885281>,  <29.864576, 32.663143, 36.745152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.670368, 32.678856, 36.885281>,  <29.346687, 32.705044, 37.118828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670368, 32.678856, 36.885281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305702, -0.801732, 0.513588,
		-0.501732, -0.594087, -0.628749,
		0.809204, -0.065473, -0.583868,
		29.913130, 32.659214, 36.710121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261990, 32.049362, 36.783096>,  <29.346687, 32.705044, 37.118828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261990, 32.049362, 36.783096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.649561, 32.142338, 36.749279>,  <29.882105, 32.198124, 36.728989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.649561, 32.142338, 36.749279>,  <29.261990, 32.049362, 36.783096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649561, 32.142338, 36.749279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247244, -0.919606, 0.305278,
		-0.006791, -0.316696, -0.948503,
		0.968930, 0.232438, -0.084546,
		29.940239, 32.212070, 36.723915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526911, 31.454659, 36.465771>,  <29.261990, 32.049362, 36.783096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526911, 31.454659, 36.465771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.816345, 31.627094, 36.681396>,  <29.990005, 31.730556, 36.810772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.816345, 31.627094, 36.681396>,  <29.526911, 31.454659, 36.465771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816345, 31.627094, 36.681396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314102, -0.901084, 0.298978,
		0.614627, -0.047014, -0.787416,
		0.723584, 0.431089, 0.539063,
		30.033421, 31.756420, 36.843117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078760, 31.065868, 36.223953>,  <29.526911, 31.454659, 36.465771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078760, 31.065868, 36.223953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.182545, 31.268757, 36.552685>,  <30.244816, 31.390490, 36.749924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.182545, 31.268757, 36.552685>,  <30.078760, 31.065868, 36.223953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182545, 31.268757, 36.552685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627432, -0.735448, 0.255823,
		0.734173, 0.449267, -0.509067,
		0.259460, 0.507223, 0.821831,
		30.260384, 31.420923, 36.799232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689917, 30.770781, 36.412666>,  <30.078760, 31.065868, 36.223953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689917, 30.770781, 36.412666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.612410, 30.961594, 36.755569>,  <30.565905, 31.076082, 36.961311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.612410, 30.961594, 36.755569>,  <30.689917, 30.770781, 36.412666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612410, 30.961594, 36.755569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390762, -0.763983, 0.513453,
		0.899866, 0.434475, -0.038370,
		-0.193769, 0.477033, 0.857259,
		30.554279, 31.104704, 37.012749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334064, 30.656580, 36.819668>,  <30.689917, 30.770781, 36.412666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334064, 30.656580, 36.819668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.062777, 30.772608, 37.089741>,  <30.900003, 30.842224, 37.251785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.062777, 30.772608, 37.089741>,  <31.334064, 30.656580, 36.819668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062777, 30.772608, 37.089741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304277, -0.725485, 0.617322,
		0.668904, 0.624124, 0.403777,
		-0.678220, 0.290069, 0.675187,
		30.859310, 30.859629, 37.292297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682205, 30.872534, 37.486801>,  <31.334064, 30.656580, 36.819668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682205, 30.872534, 37.486801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.307476, 30.772512, 37.584652>,  <31.082640, 30.712500, 37.643360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.307476, 30.772512, 37.584652>,  <31.682205, 30.872534, 37.486801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307476, 30.772512, 37.584652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340943, -0.809134, 0.478603,
		0.078258, 0.531768, 0.843267,
		-0.936821, -0.250051, 0.244624,
		31.026430, 30.697496, 37.658039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697626, 30.704844, 38.185818>,  <31.682205, 30.872534, 37.486801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697626, 30.704844, 38.185818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.369499, 30.530046, 38.038242>,  <31.172623, 30.425167, 37.949696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.369499, 30.530046, 38.038242>,  <31.697626, 30.704844, 38.185818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369499, 30.530046, 38.038242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253363, -0.856024, 0.450588,
		-0.512728, 0.276149, 0.812928,
		-0.820316, -0.436995, -0.368942,
		31.123405, 30.398949, 37.927559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324547, 30.369942, 38.800591>,  <31.697626, 30.704844, 38.185818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324547, 30.369942, 38.800591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.189722, 30.178236, 38.476444>,  <31.108828, 30.063213, 38.281956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.189722, 30.178236, 38.476444>,  <31.324547, 30.369942, 38.800591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189722, 30.178236, 38.476444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327903, -0.866604, 0.376135,
		-0.882536, -0.138943, 0.449250,
		-0.337060, -0.479263, -0.810369,
		31.088604, 30.034456, 38.233334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919067, 29.789688, 39.061451>,  <31.324547, 30.369942, 38.800591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919067, 29.789688, 39.061451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.026312, 29.716309, 38.683147>,  <31.090658, 29.672281, 38.456165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.026312, 29.716309, 38.683147>,  <30.919067, 29.789688, 39.061451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026312, 29.716309, 38.683147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349839, -0.896149, 0.273001,
		-0.897630, -0.404055, -0.176067,
		0.268090, -0.183459, -0.945765,
		31.106745, 29.661274, 38.399418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791451, 29.051037, 38.968842>,  <30.919067, 29.789688, 39.061451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791451, 29.051037, 38.968842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.052654, 29.137405, 38.678474>,  <31.209375, 29.189226, 38.504253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.052654, 29.137405, 38.678474>,  <30.791451, 29.051037, 38.968842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052654, 29.137405, 38.678474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405260, -0.909348, 0.094076,
		-0.639801, -0.355619, -0.681315,
		0.653008, 0.215919, -0.725920,
		31.248556, 29.202181, 38.460697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805534, 28.435415, 38.491562>,  <30.791451, 29.051037, 38.968842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805534, 28.435415, 38.491562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.153221, 28.630119, 38.456856>,  <31.361834, 28.746941, 38.436031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.153221, 28.630119, 38.456856>,  <30.805534, 28.435415, 38.491562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153221, 28.630119, 38.456856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493529, -0.843574, 0.211687,
		0.029848, -0.226822, -0.973478,
		0.869217, 0.486759, -0.086765,
		31.413986, 28.776148, 38.430828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174280, 28.012691, 38.127663>,  <30.805534, 28.435415, 38.491562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174280, 28.012691, 38.127663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.442196, 28.259457, 38.292973>,  <31.602945, 28.407516, 38.392159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.442196, 28.259457, 38.292973>,  <31.174280, 28.012691, 38.127663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442196, 28.259457, 38.292973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606321, -0.775675, 0.175223,
		0.428668, 0.133218, -0.893587,
		0.669790, 0.616913, 0.413279,
		31.643133, 28.444530, 38.416958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829943, 27.740263, 37.934860>,  <31.174280, 28.012691, 38.127663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829943, 27.740263, 37.934860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.932419, 27.982559, 38.236176>,  <31.993904, 28.127937, 38.416965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.932419, 27.982559, 38.236176>,  <31.829943, 27.740263, 37.934860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932419, 27.982559, 38.236176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646663, -0.686631, 0.332210,
		0.718466, 0.402017, -0.567616,
		0.256189, 0.605739, 0.753291,
		32.009277, 28.164280, 38.462162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.086781, 35.985847, 44.400463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.861206, 35.657227, 44.433975>,  <39.725861, 35.460052, 44.454082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.861206, 35.657227, 44.433975>,  <40.086781, 35.985847, 44.400463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861206, 35.657227, 44.433975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028772, 0.081841, 0.996230,
		-0.825314, 0.564225, -0.022516,
		-0.563941, -0.821555, 0.083779,
		39.692024, 35.410759, 44.459110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746029, 36.124992, 45.027203>,  <40.086781, 35.985847, 44.400463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746029, 36.124992, 45.027203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.704746, 35.733696, 44.955204>,  <39.679977, 35.498920, 44.912006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.704746, 35.733696, 44.955204>,  <39.746029, 36.124992, 45.027203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704746, 35.733696, 44.955204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060429, -0.174461, 0.982808,
		-0.992822, 0.112312, -0.041108,
		-0.103209, -0.978238, -0.179995,
		39.673782, 35.440224, 44.901207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266541, 35.973122, 45.464848>,  <39.746029, 36.124992, 45.027203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266541, 35.973122, 45.464848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.433258, 35.620132, 45.377651>,  <39.533287, 35.408337, 45.325333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.433258, 35.620132, 45.377651>,  <39.266541, 35.973122, 45.464848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433258, 35.620132, 45.377651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016916, -0.247303, 0.968790,
		-0.908845, -0.400094, -0.118002,
		0.416790, -0.882477, -0.217992,
		39.558296, 35.355389, 45.312252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959103, 35.467312, 45.890278>,  <39.266541, 35.973122, 45.464848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959103, 35.467312, 45.890278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.305321, 35.298599, 45.782257>,  <39.513050, 35.197372, 45.717445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.305321, 35.298599, 45.782257>,  <38.959103, 35.467312, 45.890278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305321, 35.298599, 45.782257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165881, -0.267349, 0.949215,
		-0.472561, -0.866386, -0.161437,
		0.865546, -0.421783, -0.270055,
		39.564983, 35.172066, 45.701241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066475, 35.012932, 46.485779>,  <38.959103, 35.467312, 45.890278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066475, 35.012932, 46.485779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.422729, 35.043148, 46.306423>,  <39.636482, 35.061275, 46.198811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.422729, 35.043148, 46.306423>,  <39.066475, 35.012932, 46.485779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422729, 35.043148, 46.306423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450646, -0.015076, 0.892576,
		0.060663, -0.997029, -0.047468,
		0.890639, 0.075537, -0.448392,
		39.689922, 35.065807, 46.171906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404018, 34.495529, 46.828224>,  <39.066475, 35.012932, 46.485779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404018, 34.495529, 46.828224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.668434, 34.763451, 46.692932>,  <39.827084, 34.924202, 46.611755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.668434, 34.763451, 46.692932>,  <39.404018, 34.495529, 46.828224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668434, 34.763451, 46.692932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455659, -0.000192, 0.890154,
		0.596160, -0.742542, -0.305327,
		0.661036, 0.669799, -0.338232,
		39.866745, 34.964390, 46.591461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163731, 34.238407, 46.737083>,  <39.404018, 34.495529, 46.828224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163731, 34.238407, 46.737083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.200733, 34.636650, 46.742813>,  <40.222935, 34.875595, 46.746250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.200733, 34.636650, 46.742813>,  <40.163731, 34.238407, 46.737083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200733, 34.636650, 46.742813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524078, -0.060919, 0.849489,
		0.846631, -0.071074, -0.527412,
		0.092506, 0.995609, 0.014328,
		40.228485, 34.935333, 46.747112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773685, 34.385529, 46.930538>,  <40.163731, 34.238407, 46.737083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773685, 34.385529, 46.930538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.616608, 34.750561, 46.976131>,  <40.522362, 34.969578, 47.003487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.616608, 34.750561, 46.976131>,  <40.773685, 34.385529, 46.930538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616608, 34.750561, 46.976131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657186, 0.191754, 0.728929,
		0.643347, 0.361157, -0.675034,
		-0.392698, 0.912577, 0.113983,
		40.498798, 35.024334, 47.010326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315044, 35.016960, 46.892998>,  <40.773685, 34.385529, 46.930538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315044, 35.016960, 46.892998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.013821, 35.169495, 47.107468>,  <40.833088, 35.261013, 47.236149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.013821, 35.169495, 47.107468>,  <41.315044, 35.016960, 46.892998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013821, 35.169495, 47.107468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657122, 0.395002, 0.642000,
		0.033025, 0.835798, -0.548043,
		-0.753060, 0.381333, 0.536177,
		40.787903, 35.283894, 47.268322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443844, 35.678013, 47.114109>,  <41.315044, 35.016960, 46.892998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443844, 35.678013, 47.114109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.157040, 35.574890, 47.373165>,  <40.984959, 35.513016, 47.528599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.157040, 35.574890, 47.373165>,  <41.443844, 35.678013, 47.114109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157040, 35.574890, 47.373165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650451, 0.086592, 0.754596,
		-0.250620, 0.962309, 0.105603,
		-0.717010, -0.257806, 0.647637,
		40.941936, 35.497547, 47.567455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628067, 36.221352, 47.517426>,  <41.443844, 35.678013, 47.114109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628067, 36.221352, 47.517426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.383648, 35.966949, 47.705940>,  <41.236996, 35.814308, 47.819050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.383648, 35.966949, 47.705940>,  <41.628067, 36.221352, 47.517426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383648, 35.966949, 47.705940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448712, 0.212175, 0.868124,
		-0.652129, 0.741939, 0.155735,
		-0.611052, -0.636009, 0.471283,
		41.200333, 35.776146, 47.847324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331944, 36.611420, 48.145580>,  <41.628067, 36.221352, 47.517426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331944, 36.611420, 48.145580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.285694, 36.220615, 48.217228>,  <41.257942, 35.986134, 48.260216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.285694, 36.220615, 48.217228>,  <41.331944, 36.611420, 48.145580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285694, 36.220615, 48.217228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472640, 0.104492, 0.875039,
		-0.873637, 0.185839, 0.449691,
		-0.115627, -0.977008, 0.179123,
		41.251007, 35.927513, 48.270966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003094, 36.651844, 48.748798>,  <41.331944, 36.611420, 48.145580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003094, 36.651844, 48.748798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.170921, 36.290455, 48.713718>,  <41.271618, 36.073620, 48.692669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.170921, 36.290455, 48.713718>,  <41.003094, 36.651844, 48.748798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170921, 36.290455, 48.713718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299455, 0.046560, 0.952974,
		-0.856907, -0.426100, 0.290086,
		0.419568, -0.903477, -0.087700,
		41.296791, 36.019413, 48.687408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772995, 36.548843, 49.406158>,  <41.003094, 36.651844, 48.748798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772995, 36.548843, 49.406158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.377941, 36.537178, 49.467762>,  <40.140907, 36.530178, 49.504726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.377941, 36.537178, 49.467762>,  <40.772995, 36.548843, 49.406158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377941, 36.537178, 49.467762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153570, 0.376838, -0.913460,
		-0.031402, -0.925820, -0.376658,
		-0.987639, -0.029159, 0.154012,
		40.081650, 36.528431, 49.513966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337791, 36.180679, 48.845112>,  <40.772995, 36.548843, 49.406158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337791, 36.180679, 48.845112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.117001, 36.457581, 49.031063>,  <39.984528, 36.623722, 49.142632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.117001, 36.457581, 49.031063>,  <40.337791, 36.180679, 48.845112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117001, 36.457581, 49.031063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206852, 0.426398, -0.880566,
		-0.807795, -0.582213, -0.092168,
		-0.551977, 0.692252, 0.464875,
		39.951408, 36.665257, 49.170525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564117, 36.267975, 48.576012>,  <40.337791, 36.180679, 48.845112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564117, 36.267975, 48.576012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.713440, 36.605484, 48.730247>,  <39.803036, 36.807991, 48.822788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.713440, 36.605484, 48.730247>,  <39.564117, 36.267975, 48.576012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713440, 36.605484, 48.730247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152037, 0.465664, -0.871804,
		-0.915163, 0.266830, 0.302122,
		0.373311, 0.843777, 0.385590,
		39.825432, 36.858616, 48.845924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989399, 36.793751, 48.465645>,  <39.564117, 36.267975, 48.576012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989399, 36.793751, 48.465645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.334305, 36.988064, 48.522926>,  <39.541248, 37.104652, 48.557297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.334305, 36.988064, 48.522926>,  <38.989399, 36.793751, 48.465645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334305, 36.988064, 48.522926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211286, 0.602022, -0.770018,
		-0.460277, 0.633703, 0.621744,
		0.862266, 0.485787, 0.143205,
		39.592983, 37.133801, 48.565887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798031, 37.453709, 48.440601>,  <38.989399, 36.793751, 48.465645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798031, 37.453709, 48.440601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.194088, 37.463142, 48.385376>,  <39.431721, 37.468803, 48.352242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.194088, 37.463142, 48.385376>,  <38.798031, 37.453709, 48.440601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194088, 37.463142, 48.385376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116224, 0.688439, -0.715922,
		0.078160, 0.724911, 0.684394,
		0.990143, 0.023586, -0.138060,
		39.491131, 37.470219, 48.343960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998085, 38.165791, 48.517239>,  <38.798031, 37.453709, 48.440601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998085, 38.165791, 48.517239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.271942, 37.980518, 48.292122>,  <39.436256, 37.869354, 48.157051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.271942, 37.980518, 48.292122>,  <38.998085, 38.165791, 48.517239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271942, 37.980518, 48.292122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017052, 0.782099, -0.622921,
		0.728681, 0.416881, 0.543355,
		0.684641, -0.463176, -0.562792,
		39.477333, 37.841564, 48.123283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401207, 38.733997, 48.134930>,  <38.998085, 38.165791, 48.517239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401207, 38.733997, 48.134930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.537350, 38.407352, 47.948471>,  <39.619038, 38.211365, 47.836594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.537350, 38.407352, 47.948471>,  <39.401207, 38.733997, 48.134930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537350, 38.407352, 47.948471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216188, 0.550429, -0.806406,
		0.915106, 0.173692, 0.363886,
		0.340359, -0.816615, -0.466150,
		39.639458, 38.162369, 47.808624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933727, 39.005978, 47.599144>,  <39.401207, 38.733997, 48.134930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933727, 39.005978, 47.599144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.852142, 38.633759, 47.477501>,  <39.803192, 38.410427, 47.404514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.852142, 38.633759, 47.477501>,  <39.933727, 39.005978, 47.599144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852142, 38.633759, 47.477501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117302, 0.285172, -0.951271,
		0.971926, -0.229695, 0.050991,
		-0.203961, -0.930547, -0.304110,
		39.790955, 38.354595, 47.386269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331524, 38.854748, 47.034748>,  <39.933727, 39.005978, 47.599144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331524, 38.854748, 47.034748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.024944, 38.600071, 47.000843>,  <39.840996, 38.447266, 46.980499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.024944, 38.600071, 47.000843>,  <40.331524, 38.854748, 47.034748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024944, 38.600071, 47.000843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008534, 0.142041, -0.989824,
		0.642252, -0.757923, -0.114301,
		-0.766446, -0.636692, -0.084758,
		39.795010, 38.409065, 46.975414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432926, 38.760368, 46.409351>,  <40.331524, 38.854748, 47.034748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432926, 38.760368, 46.409351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.072258, 38.604031, 46.483349>,  <39.855858, 38.510227, 46.527748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.072258, 38.604031, 46.483349>,  <40.432926, 38.760368, 46.409351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072258, 38.604031, 46.483349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153685, -0.110218, -0.981954,
		0.404185, -0.913832, 0.039314,
		-0.901674, -0.390849, 0.184991,
		39.801754, 38.486774, 46.538845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373726, 38.151318, 46.055054>,  <40.432926, 38.760368, 46.409351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373726, 38.151318, 46.055054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.000980, 38.288441, 46.102570>,  <39.777332, 38.370716, 46.131077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.000980, 38.288441, 46.102570>,  <40.373726, 38.151318, 46.055054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000980, 38.288441, 46.102570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158360, -0.089750, -0.983294,
		-0.326420, -0.935108, 0.137922,
		-0.931865, 0.342808, 0.118787,
		39.721420, 38.391281, 46.138206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898983, 37.734604, 45.557491>,  <40.373726, 38.151318, 46.055054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898983, 37.734604, 45.557491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.712479, 38.073204, 45.660294>,  <39.600578, 38.276363, 45.721973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.712479, 38.073204, 45.660294>,  <39.898983, 37.734604, 45.557491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712479, 38.073204, 45.660294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294474, 0.125436, -0.947392,
		-0.834200, -0.517408, 0.190786,
		-0.466256, 0.846496, 0.257002,
		39.572601, 38.327152, 45.737392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281170, 37.528687, 45.366695>,  <39.898983, 37.734604, 45.557491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281170, 37.528687, 45.366695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.307335, 37.927734, 45.375389>,  <39.323036, 38.167164, 45.380604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.307335, 37.927734, 45.375389>,  <39.281170, 37.528687, 45.366695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307335, 37.927734, 45.375389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427594, 0.047701, -0.902712,
		-0.901601, 0.049759, 0.429697,
		0.065415, 0.997621, 0.021731,
		39.326958, 38.227020, 45.381908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667385, 37.784428, 45.007233>,  <39.281170, 37.528687, 45.366695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667385, 37.784428, 45.007233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.939526, 38.077293, 45.020168>,  <39.102810, 38.253014, 45.027927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.939526, 38.077293, 45.020168>,  <38.667385, 37.784428, 45.007233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939526, 38.077293, 45.020168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187420, 0.216470, -0.958131,
		-0.708512, 0.645810, 0.284500,
		0.680356, 0.732168, 0.032334,
		39.143631, 38.296944, 45.029869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369587, 38.291313, 44.713509>,  <38.667385, 37.784428, 45.007233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369587, 38.291313, 44.713509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.756535, 38.366890, 44.645977>,  <38.988701, 38.412235, 44.605457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.756535, 38.366890, 44.645977>,  <38.369587, 38.291313, 44.713509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756535, 38.366890, 44.645977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204882, 0.191221, -0.959926,
		-0.149086, 0.963190, 0.223692,
		0.967366, 0.188942, -0.168832,
		39.046745, 38.423573, 44.595329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883053, 38.732346, 44.478516>,  <38.369587, 38.291313, 44.713509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883053, 38.732346, 44.478516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.510475, 38.617401, 44.389225>,  <37.286926, 38.548435, 44.335651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.510475, 38.617401, 44.389225>,  <37.883053, 38.732346, 44.478516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510475, 38.617401, 44.389225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083113, -0.429247, 0.899355,
		-0.354257, 0.856255, 0.375938,
		-0.931447, -0.287358, -0.223230,
		37.231041, 38.531193, 44.322258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509270, 38.924927, 45.016861>,  <37.883053, 38.732346, 44.478516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509270, 38.924927, 45.016861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.287064, 38.631729, 44.859825>,  <37.153740, 38.455811, 44.765606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.287064, 38.631729, 44.859825>,  <37.509270, 38.924927, 45.016861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287064, 38.631729, 44.859825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163480, -0.366645, 0.915885,
		-0.815274, 0.572972, 0.083849,
		-0.555520, -0.732990, -0.392586,
		37.120407, 38.411831, 44.742050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954235, 38.937176, 45.470390>,  <37.509270, 38.924927, 45.016861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954235, 38.937176, 45.470390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.951229, 38.582142, 45.286160>,  <36.949425, 38.369122, 45.175621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.951229, 38.582142, 45.286160>,  <36.954235, 38.937176, 45.470390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951229, 38.582142, 45.286160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247388, -0.444623, 0.860878,
		-0.968888, 0.120410, -0.216237,
		-0.007514, -0.887588, -0.460577,
		36.948975, 38.315865, 45.147987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416252, 38.550411, 45.706814>,  <36.954235, 38.937176, 45.470390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416252, 38.550411, 45.706814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.645466, 38.252228, 45.570621>,  <36.782993, 38.073318, 45.488907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.645466, 38.252228, 45.570621>,  <36.416252, 38.550411, 45.706814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645466, 38.252228, 45.570621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165507, -0.512166, 0.842789,
		-0.802646, -0.426594, -0.416866,
		0.573033, -0.745456, -0.340483,
		36.817375, 38.028591, 45.468475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039330, 37.970543, 45.876312>,  <36.416252, 38.550411, 45.706814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039330, 37.970543, 45.876312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.386250, 37.783001, 45.809425>,  <36.594402, 37.670475, 45.769295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.386250, 37.783001, 45.809425>,  <36.039330, 37.970543, 45.876312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386250, 37.783001, 45.809425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144320, -0.558337, 0.816965,
		-0.476398, -0.684425, -0.551913,
		0.867304, -0.468852, -0.167214,
		36.646442, 37.642345, 45.759262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827503, 37.276314, 45.935986>,  <36.039330, 37.970543, 45.876312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827503, 37.276314, 45.935986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224037, 37.308372, 45.977612>,  <36.461956, 37.327610, 46.002586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224037, 37.308372, 45.977612>,  <35.827503, 37.276314, 45.935986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224037, 37.308372, 45.977612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019452, -0.693955, 0.719755,
		0.129906, -0.715543, -0.686383,
		0.991335, 0.080149, 0.104067,
		36.521439, 37.332417, 46.008831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980137, 36.668606, 46.005451>,  <35.827503, 37.276314, 45.935986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980137, 36.668606, 46.005451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256794, 36.907036, 46.168583>,  <36.422791, 37.050095, 46.266460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256794, 36.907036, 46.168583>,  <35.980137, 36.668606, 46.005451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256794, 36.907036, 46.168583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047973, -0.525512, 0.849432,
		0.720641, -0.607072, -0.334874,
		0.691647, 0.596071, 0.407829,
		36.464287, 37.085857, 46.290932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259979, 36.120243, 46.511654>,  <35.980137, 36.668606, 46.005451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259979, 36.120243, 46.511654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356647, 36.497257, 46.603928>,  <36.414650, 36.723465, 46.659290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356647, 36.497257, 46.603928>,  <36.259979, 36.120243, 46.511654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356647, 36.497257, 46.603928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089921, -0.214953, 0.972476,
		0.966183, -0.255761, 0.032806,
		0.241669, 0.942540, 0.230682,
		36.429150, 36.780018, 46.673134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026356, 35.447880, 46.264889>,  <36.259979, 36.120243, 46.511654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026356, 35.447880, 46.264889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.668037, 35.359001, 46.418869>,  <35.453049, 35.305676, 46.511257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.668037, 35.359001, 46.418869>,  <36.026356, 35.447880, 46.264889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668037, 35.359001, 46.418869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315909, -0.290961, -0.903074,
		0.312663, -0.930576, 0.190448,
		-0.895792, -0.222194, 0.384950,
		35.399300, 35.292343, 46.534355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854511, 34.784729, 46.199963>,  <36.026356, 35.447880, 46.264889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854511, 34.784729, 46.199963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.530998, 35.019955, 46.197376>,  <35.336891, 35.161091, 46.195824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.530998, 35.019955, 46.197376>,  <35.854511, 34.784729, 46.199963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530998, 35.019955, 46.197376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118950, -0.174344, -0.977474,
		-0.575948, -0.789798, 0.210957,
		-0.808786, 0.588068, -0.006466,
		35.288361, 35.196377, 46.195435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397659, 34.573681, 45.628021>,  <35.854511, 34.784729, 46.199963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397659, 34.573681, 45.628021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.263672, 34.941521, 45.710121>,  <35.183281, 35.162224, 45.759380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.263672, 34.941521, 45.710121>,  <35.397659, 34.573681, 45.628021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263672, 34.941521, 45.710121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231929, 0.130661, -0.963917,
		-0.913238, -0.370486, 0.169515,
		-0.334969, 0.919602, 0.205252,
		35.163181, 35.217400, 45.771698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894623, 34.616688, 45.158615>,  <35.397659, 34.573681, 45.628021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894623, 34.616688, 45.158615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.952492, 34.996380, 45.270355>,  <34.987213, 35.224194, 45.337399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.952492, 34.996380, 45.270355>,  <34.894623, 34.616688, 45.158615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952492, 34.996380, 45.270355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221806, 0.306245, -0.925752,
		-0.964299, 0.071965, 0.254848,
		0.144668, 0.949229, 0.279349,
		34.995892, 35.281147, 45.354160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376671, 34.970486, 44.874699>,  <34.894623, 34.616688, 45.158615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376671, 34.970486, 44.874699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672001, 35.233673, 44.933960>,  <34.849201, 35.391586, 44.969517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672001, 35.233673, 44.933960>,  <34.376671, 34.970486, 44.874699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672001, 35.233673, 44.933960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186761, 0.410542, -0.892511,
		-0.648069, 0.631295, 0.425997,
		0.738328, 0.657968, 0.148158,
		34.893497, 35.431065, 44.978409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131611, 35.531021, 44.651814>,  <34.376671, 34.970486, 44.874699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131611, 35.531021, 44.651814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529346, 35.570305, 44.635628>,  <34.767990, 35.593876, 44.625916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529346, 35.570305, 44.635628>,  <34.131611, 35.531021, 44.651814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529346, 35.570305, 44.635628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074048, 0.367777, -0.926961,
		-0.076153, 0.924713, 0.372969,
		0.994343, 0.098208, -0.040466,
		34.827648, 35.599766, 44.623489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.377617, 33.718193, 48.863884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.220825, 33.793034, 49.224182>,  <39.126751, 33.837936, 49.440361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.220825, 33.793034, 49.224182>,  <39.377617, 33.718193, 48.863884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220825, 33.793034, 49.224182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039049, 0.981602, -0.186903,
		-0.919144, -0.038089, -0.392075,
		-0.391980, 0.187100, 0.900747,
		39.103230, 33.849163, 49.494408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312756, 32.975857, 48.630543>,  <39.377617, 33.718193, 48.863884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312756, 32.975857, 48.630543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.690655, 33.099373, 48.586536>,  <39.917393, 33.173481, 48.560135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.690655, 33.099373, 48.586536>,  <39.312756, 32.975857, 48.630543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690655, 33.099373, 48.586536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106912, -0.026996, -0.993902,
		-0.309877, 0.950747, 0.007509,
		0.944746, 0.308791, -0.110012,
		39.974079, 33.192009, 48.553532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297852, 33.435543, 48.099224>,  <39.312756, 32.975857, 48.630543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297852, 33.435543, 48.099224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.679558, 33.317532, 48.118599>,  <39.908581, 33.246727, 48.130222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.679558, 33.317532, 48.118599>,  <39.297852, 33.435543, 48.099224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679558, 33.317532, 48.118599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009446, -0.132169, -0.991182,
		0.298825, 0.946304, -0.123337,
		0.954261, -0.295025, 0.048435,
		39.965836, 33.229023, 48.133129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681843, 33.718319, 47.517010>,  <39.297852, 33.435543, 48.099224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681843, 33.718319, 47.517010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.866344, 33.392780, 47.658375>,  <39.977047, 33.197456, 47.743195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.866344, 33.392780, 47.658375>,  <39.681843, 33.718319, 47.517010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866344, 33.392780, 47.658375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062345, -0.367608, -0.927889,
		0.885075, 0.450026, -0.118822,
		0.461254, -0.813843, 0.353417,
		40.004719, 33.148628, 47.764400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338474, 33.648151, 47.098450>,  <39.681843, 33.718319, 47.517010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338474, 33.648151, 47.098450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.231491, 33.294239, 47.251091>,  <40.167301, 33.081890, 47.342674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.231491, 33.294239, 47.251091>,  <40.338474, 33.648151, 47.098450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231491, 33.294239, 47.251091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044867, -0.407038, -0.912309,
		0.962523, -0.226887, 0.148565,
		-0.267463, -0.884784, 0.381604,
		40.151253, 33.028805, 47.365574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737553, 33.160816, 46.794380>,  <40.338474, 33.648151, 47.098450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737553, 33.160816, 46.794380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.431213, 32.931744, 46.911350>,  <40.247410, 32.794300, 46.981533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.431213, 32.931744, 46.911350>,  <40.737553, 33.160816, 46.794380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431213, 32.931744, 46.911350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097310, -0.346305, -0.933061,
		0.635616, -0.743038, 0.209489,
		-0.765848, -0.572684, 0.292422,
		40.201458, 32.759937, 46.999077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836418, 32.536674, 46.435848>,  <40.737553, 33.160816, 46.794380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836418, 32.536674, 46.435848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.450451, 32.528347, 46.540535>,  <40.218868, 32.523350, 46.603348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.450451, 32.528347, 46.540535>,  <40.836418, 32.536674, 46.435848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450451, 32.528347, 46.540535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229286, -0.418775, -0.878667,
		0.127898, -0.907851, 0.399310,
		-0.964920, -0.020824, 0.261718,
		40.160976, 32.522099, 46.619049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546768, 31.948252, 46.134480>,  <40.836418, 32.536674, 46.435848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546768, 31.948252, 46.134480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.201607, 32.130062, 46.222839>,  <39.994511, 32.239147, 46.275856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.201607, 32.130062, 46.222839>,  <40.546768, 31.948252, 46.134480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201607, 32.130062, 46.222839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432362, -0.437694, -0.788344,
		-0.261637, -0.775776, 0.574210,
		-0.862907, 0.454527, 0.220900,
		39.942734, 32.266422, 46.289108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043358, 31.434973, 46.202374>,  <40.546768, 31.948252, 46.134480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043358, 31.434973, 46.202374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.831268, 31.765078, 46.124599>,  <39.704014, 31.963140, 46.077934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.831268, 31.765078, 46.124599>,  <40.043358, 31.434973, 46.202374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831268, 31.765078, 46.124599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396889, -0.444233, -0.803203,
		-0.749230, -0.348706, 0.563080,
		-0.530221, 0.825264, -0.194435,
		39.672203, 32.012657, 46.066269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481514, 31.117416, 45.955639>,  <40.043358, 31.434973, 46.202374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481514, 31.117416, 45.955639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.452820, 31.496265, 45.830540>,  <39.435604, 31.723576, 45.755482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.452820, 31.496265, 45.830540>,  <39.481514, 31.117416, 45.955639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452820, 31.496265, 45.830540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377006, -0.316040, -0.870624,
		-0.923429, 0.055455, 0.379742,
		-0.071734, 0.947124, -0.312747,
		39.431301, 31.780403, 45.736717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755356, 31.325626, 45.601768>,  <39.481514, 31.117416, 45.955639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755356, 31.325626, 45.601768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.036816, 31.575102, 45.465595>,  <39.205692, 31.724787, 45.383892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.036816, 31.575102, 45.465595>,  <38.755356, 31.325626, 45.601768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036816, 31.575102, 45.465595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298461, -0.175364, -0.938173,
		-0.644829, 0.761746, 0.062753,
		0.703645, 0.623691, -0.340431,
		39.247910, 31.762209, 45.363464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391766, 31.738083, 44.968578>,  <38.755356, 31.325626, 45.601768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391766, 31.738083, 44.968578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.788303, 31.768776, 44.925953>,  <39.026226, 31.787191, 44.900375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.788303, 31.768776, 44.925953>,  <38.391766, 31.738083, 44.968578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788303, 31.768776, 44.925953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103125, -0.047496, -0.993534,
		-0.081299, 0.995920, -0.039171,
		0.991340, 0.076734, -0.106566,
		39.085705, 31.791796, 44.893982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075226, 32.268909, 45.259651>,  <38.391766, 31.738083, 44.968578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075226, 32.268909, 45.259651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.698242, 32.400085, 45.285671>,  <37.472054, 32.478790, 45.301281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.698242, 32.400085, 45.285671>,  <38.075226, 32.268909, 45.259651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698242, 32.400085, 45.285671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093868, 0.072814, 0.992918,
		0.320880, 0.941889, -0.099407,
		-0.942457, 0.327939, 0.065048,
		37.415504, 32.498466, 45.305187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082615, 32.711182, 45.855473>,  <38.075226, 32.268909, 45.259651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082615, 32.711182, 45.855473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.699951, 32.608936, 45.799675>,  <37.470352, 32.547588, 45.766197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.699951, 32.608936, 45.799675>,  <38.082615, 32.711182, 45.855473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699951, 32.608936, 45.799675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134716, -0.036190, 0.990223,
		-0.258161, 0.966102, 0.000186,
		-0.956663, -0.255612, -0.139492,
		37.412952, 32.532253, 45.757828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618980, 33.135010, 46.361893>,  <38.082615, 32.711182, 45.855473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618980, 33.135010, 46.361893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.395489, 32.821747, 46.252728>,  <37.261395, 32.633789, 46.187229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.395489, 32.821747, 46.252728>,  <37.618980, 33.135010, 46.361893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395489, 32.821747, 46.252728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146659, -0.230580, 0.961938,
		-0.816280, 0.577487, 0.013974,
		-0.558729, -0.783161, -0.272911,
		37.227871, 32.586800, 46.170853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021755, 33.156715, 46.839462>,  <37.618980, 33.135010, 46.361893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021755, 33.156715, 46.839462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.022331, 32.792820, 46.673386>,  <37.022678, 32.574482, 46.573742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.022331, 32.792820, 46.673386>,  <37.021755, 33.156715, 46.839462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022331, 32.792820, 46.673386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077099, -0.414054, 0.906981,
		-0.997022, 0.030704, -0.070736,
		0.001441, -0.909735, -0.415188,
		37.022762, 32.519901, 46.548828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308628, 32.890812, 46.788303>,  <37.021755, 33.156715, 46.839462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308628, 32.890812, 46.788303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.578316, 32.595531, 46.797085>,  <36.740128, 32.418362, 46.802353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.578316, 32.595531, 46.797085>,  <36.308628, 32.890812, 46.788303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578316, 32.595531, 46.797085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234147, -0.185471, 0.954345,
		-0.700431, -0.648578, -0.297897,
		0.674219, -0.738205, 0.021953,
		36.780582, 32.374069, 46.803669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024632, 32.328590, 47.198586>,  <36.308628, 32.890812, 46.788303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024632, 32.328590, 47.198586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.401554, 32.194897, 47.206005>,  <36.627708, 32.114681, 47.210457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.401554, 32.194897, 47.206005>,  <36.024632, 32.328590, 47.198586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401554, 32.194897, 47.206005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051100, -0.088876, 0.994731,
		-0.330821, -0.938292, -0.100828,
		0.942309, -0.334231, 0.018545,
		36.684246, 32.094627, 47.211567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944195, 31.680775, 47.516636>,  <36.024632, 32.328590, 47.198586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944195, 31.680775, 47.516636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.318115, 31.819286, 47.548218>,  <36.542469, 31.902393, 47.567169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.318115, 31.819286, 47.548218>,  <35.944195, 31.680775, 47.516636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318115, 31.819286, 47.548218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095500, 0.030944, 0.994948,
		0.342086, -0.937621, 0.061996,
		0.934803, 0.346279, 0.078958,
		36.598557, 31.923170, 47.571903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311756, 31.229887, 47.960934>,  <35.944195, 31.680775, 47.516636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311756, 31.229887, 47.960934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.516361, 31.573595, 47.961910>,  <36.639126, 31.779819, 47.962498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.516361, 31.573595, 47.961910>,  <36.311756, 31.229887, 47.960934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516361, 31.573595, 47.961910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196277, 0.114073, 0.973891,
		0.836558, -0.498638, 0.227005,
		0.511514, 0.859272, 0.002442,
		36.669815, 31.831377, 47.962643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824966, 31.157051, 48.522667>,  <36.311756, 31.229887, 47.960934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824966, 31.157051, 48.522667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.773796, 31.546820, 48.448761>,  <36.743092, 31.780680, 48.404415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.773796, 31.546820, 48.448761>,  <36.824966, 31.157051, 48.522667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773796, 31.546820, 48.448761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128135, 0.200977, 0.971179,
		0.983471, 0.100566, -0.150568,
		-0.127928, 0.974420, -0.184769,
		36.735416, 31.839146, 48.393330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278534, 31.477905, 48.969597>,  <36.824966, 31.157051, 48.522667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278534, 31.477905, 48.969597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.057617, 31.799068, 48.879875>,  <36.925068, 31.991766, 48.826042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.057617, 31.799068, 48.879875>,  <37.278534, 31.477905, 48.969597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057617, 31.799068, 48.879875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068628, 0.311939, 0.947620,
		0.830821, 0.507969, -0.227384,
		-0.552292, 0.802908, -0.224305,
		36.891930, 32.039940, 48.812584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487755, 31.901899, 49.367744>,  <37.278534, 31.477905, 48.969597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487755, 31.901899, 49.367744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.132549, 32.064194, 49.281204>,  <36.919426, 32.161572, 49.229279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.132549, 32.064194, 49.281204>,  <37.487755, 31.901899, 49.367744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132549, 32.064194, 49.281204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055429, 0.372627, 0.926325,
		0.456459, 0.834583, -0.308409,
		-0.888016, 0.405735, -0.216349,
		36.866146, 32.185913, 49.216301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544037, 32.386177, 49.759132>,  <37.487755, 31.901899, 49.367744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544037, 32.386177, 49.759132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.152531, 32.369511, 49.678848>,  <36.917625, 32.359509, 49.630680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.152531, 32.369511, 49.678848>,  <37.544037, 32.386177, 49.759132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152531, 32.369511, 49.678848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198309, 0.440347, 0.875653,
		0.051892, 0.896860, -0.439260,
		-0.978765, -0.041670, -0.200706,
		36.858902, 32.357010, 49.618637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260597, 33.095810, 49.852573>,  <37.544037, 32.386177, 49.759132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260597, 33.095810, 49.852573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.933392, 32.866596, 49.872478>,  <36.737068, 32.729069, 49.884422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.933392, 32.866596, 49.872478>,  <37.260597, 33.095810, 49.852573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933392, 32.866596, 49.872478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290590, 0.486381, 0.824009,
		-0.496392, 0.659593, -0.564387,
		-0.818017, -0.573036, 0.049765,
		36.687984, 32.694687, 49.887409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701763, 33.552822, 50.050968>,  <37.260597, 33.095810, 49.852573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701763, 33.552822, 50.050968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.611706, 33.179966, 50.164406>,  <36.557671, 32.956253, 50.232468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.611706, 33.179966, 50.164406>,  <36.701763, 33.552822, 50.050968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611706, 33.179966, 50.164406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300461, 0.343301, 0.889869,
		-0.926841, 0.115139, -0.357364,
		-0.225143, -0.932141, 0.283591,
		36.544163, 32.900322, 50.249481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162529, 33.568806, 49.495487>,  <36.701763, 33.552822, 50.050968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162529, 33.568806, 49.495487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.871487, 33.834599, 49.563667>,  <35.696861, 33.994072, 49.604576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.871487, 33.834599, 49.563667>,  <36.162529, 33.568806, 49.495487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871487, 33.834599, 49.563667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031661, 0.215679, -0.975951,
		-0.685262, -0.715507, -0.135892,
		-0.727609, 0.664479, 0.170451,
		35.653206, 34.033943, 49.614803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467670, 33.540318, 49.014881>,  <36.162529, 33.568806, 49.495487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467670, 33.540318, 49.014881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.460434, 33.918957, 49.143646>,  <35.456093, 34.146141, 49.220905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.460434, 33.918957, 49.143646>,  <35.467670, 33.540318, 49.014881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460434, 33.918957, 49.143646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240802, 0.308365, -0.920285,
		-0.970406, -0.094162, 0.222365,
		-0.018087, 0.946596, 0.321913,
		35.455009, 34.202934, 49.240219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779068, 33.759930, 48.934711>,  <35.467670, 33.540318, 49.014881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779068, 33.759930, 48.934711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.001812, 34.091839, 48.949589>,  <35.135456, 34.290985, 48.958515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.001812, 34.091839, 48.949589>,  <34.779068, 33.759930, 48.934711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001812, 34.091839, 48.949589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414345, 0.316317, -0.853383,
		-0.719881, 0.459801, 0.519956,
		0.556857, 0.829775, 0.037194,
		35.168869, 34.340771, 48.960747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386147, 34.202061, 48.567123>,  <34.779068, 33.759930, 48.934711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386147, 34.202061, 48.567123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.737186, 34.391136, 48.599079>,  <34.947811, 34.504581, 48.618252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.737186, 34.391136, 48.599079>,  <34.386147, 34.202061, 48.567123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737186, 34.391136, 48.599079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195184, 0.504533, -0.841041,
		-0.437856, 0.722505, 0.535040,
		0.877602, 0.472686, 0.079892,
		35.000465, 34.532944, 48.623047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253361, 34.874676, 48.419933>,  <34.386147, 34.202061, 48.567123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253361, 34.874676, 48.419933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.648769, 34.837578, 48.372227>,  <34.886013, 34.815319, 48.343601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.648769, 34.837578, 48.372227>,  <34.253361, 34.874676, 48.419933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648769, 34.837578, 48.372227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056120, 0.507542, -0.859797,
		0.140277, 0.856621, 0.496511,
		0.988521, -0.092745, -0.119270,
		34.945324, 34.809753, 48.336445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589115, 35.524635, 48.430859>,  <34.253361, 34.874676, 48.419933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589115, 35.524635, 48.430859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.812805, 35.276848, 48.210487>,  <34.947021, 35.128178, 48.078262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.812805, 35.276848, 48.210487>,  <34.589115, 35.524635, 48.430859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812805, 35.276848, 48.210487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028792, 0.678675, -0.733874,
		0.828513, 0.394541, 0.397370,
		0.559228, -0.619466, -0.550931,
		34.980576, 35.091007, 48.045208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176022, 35.852039, 48.289005>,  <34.589115, 35.524635, 48.430859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176022, 35.852039, 48.289005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.149128, 35.580326, 47.996689>,  <35.132992, 35.417297, 47.821301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.149128, 35.580326, 47.996689>,  <35.176022, 35.852039, 48.289005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149128, 35.580326, 47.996689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046266, 0.729536, -0.682375,
		0.996664, -0.079690, -0.017622,
		-0.067234, -0.679284, -0.730789,
		35.128956, 35.376541, 47.777451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639675, 36.055130, 47.732159>,  <35.176022, 35.852039, 48.289005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639675, 36.055130, 47.732159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.359982, 35.809086, 47.586437>,  <35.192165, 35.661461, 47.499004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.359982, 35.809086, 47.586437>,  <35.639675, 36.055130, 47.732159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359982, 35.809086, 47.586437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016656, 0.495430, -0.868488,
		0.714699, -0.613343, -0.336177,
		-0.699234, -0.615108, -0.364299,
		35.150211, 35.624554, 47.477146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176136, 35.606583, 47.934868>,  <35.639675, 36.055130, 47.732159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176136, 35.606583, 47.934868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.328461, 35.975174, 47.904224>,  <36.419853, 36.196327, 47.885838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.328461, 35.975174, 47.904224>,  <36.176136, 35.606583, 47.934868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328461, 35.975174, 47.904224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641853, -0.203790, 0.739253,
		0.665590, -0.330687, -0.669056,
		0.380808, 0.921475, -0.076612,
		36.442703, 36.251617, 47.881241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787708, 35.523483, 48.267998>,  <36.176136, 35.606583, 47.934868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787708, 35.523483, 48.267998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.849400, 35.913647, 48.205021>,  <36.886414, 36.147747, 48.167236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.849400, 35.913647, 48.205021>,  <36.787708, 35.523483, 48.267998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849400, 35.913647, 48.205021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651741, 0.019328, 0.758195,
		0.742595, -0.219543, -0.632735,
		0.154227, 0.975411, -0.157438,
		36.895668, 36.206268, 48.157791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442520, 35.682526, 48.374405>,  <36.787708, 35.523483, 48.267998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442520, 35.682526, 48.374405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.286301, 36.048790, 48.412422>,  <37.192570, 36.268547, 48.435234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.286301, 36.048790, 48.412422>,  <37.442520, 35.682526, 48.374405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286301, 36.048790, 48.412422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597063, 0.173359, 0.783238,
		0.700704, 0.362643, -0.614414,
		-0.390550, 0.915662, 0.095047,
		37.169136, 36.323490, 48.440937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980011, 36.124153, 48.404781>,  <37.442520, 35.682526, 48.374405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980011, 36.124153, 48.404781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.678699, 36.320873, 48.579460>,  <37.497913, 36.438904, 48.684269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.678699, 36.320873, 48.579460>,  <37.980011, 36.124153, 48.404781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678699, 36.320873, 48.579460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582671, 0.191031, 0.789938,
		0.305066, 0.849496, -0.430455,
		-0.753279, 0.491797, 0.436699,
		37.452717, 36.468410, 48.710468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236691, 36.797222, 48.552490>,  <37.980011, 36.124153, 48.404781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236691, 36.797222, 48.552490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.930412, 36.730865, 48.801067>,  <37.746647, 36.691051, 48.950214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.930412, 36.730865, 48.801067>,  <38.236691, 36.797222, 48.552490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930412, 36.730865, 48.801067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569022, 0.275745, 0.774712,
		-0.299880, 0.946807, -0.116739,
		-0.765693, -0.165893, 0.621445,
		37.700703, 36.681099, 48.987499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145527, 37.322742, 48.951290>,  <38.236691, 36.797222, 48.552490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145527, 37.322742, 48.951290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.962452, 37.058544, 49.189373>,  <37.852608, 36.900024, 49.332222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.962452, 37.058544, 49.189373>,  <38.145527, 37.322742, 48.951290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962452, 37.058544, 49.189373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609768, 0.254023, 0.750769,
		-0.647074, 0.706556, 0.286484,
		-0.457687, -0.660492, 0.595208,
		37.825146, 36.860397, 49.367935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036118, 37.680145, 49.608166>,  <38.145527, 37.322742, 48.951290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036118, 37.680145, 49.608166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.003803, 37.291576, 49.697445>,  <37.984413, 37.058437, 49.751011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.003803, 37.291576, 49.697445>,  <38.036118, 37.680145, 49.608166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003803, 37.291576, 49.697445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529886, 0.147803, 0.835090,
		-0.844212, 0.185735, 0.502801,
		-0.080790, -0.971420, 0.223195,
		37.979565, 37.000149, 49.764404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845524, 37.703197, 50.337627>,  <38.036118, 37.680145, 49.608166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845524, 37.703197, 50.337627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.018124, 37.351696, 50.256046>,  <38.121685, 37.140797, 50.207096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.018124, 37.351696, 50.256046>,  <37.845524, 37.703197, 50.337627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018124, 37.351696, 50.256046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726019, 0.204087, 0.656692,
		-0.535446, -0.431439, 0.726056,
		0.431501, -0.878754, -0.203956,
		38.147575, 37.088070, 50.194859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.573524, 37.967117, 33.728123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807770, 38.162689, 33.986736>,  <36.948315, 38.280033, 34.141903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807770, 38.162689, 33.986736>,  <36.573524, 37.967117, 33.728123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807770, 38.162689, 33.986736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610149, -0.259214, 0.748683,
		0.533647, -0.832917, 0.146525,
		0.585610, 0.488935, 0.646532,
		36.983452, 38.309368, 34.180695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526276, 37.694241, 34.408382>,  <36.573524, 37.967117, 33.728123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526276, 37.694241, 34.408382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755909, 38.000622, 34.524132>,  <36.893688, 38.184452, 34.593582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755909, 38.000622, 34.524132>,  <36.526276, 37.694241, 34.408382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755909, 38.000622, 34.524132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261057, -0.163743, 0.951335,
		0.776062, -0.621692, 0.105955,
		0.574088, 0.765955, 0.289372,
		36.928135, 38.230408, 34.610943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974640, 37.396706, 34.921047>,  <36.526276, 37.694241, 34.408382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974640, 37.396706, 34.921047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927704, 37.792675, 34.952732>,  <36.899544, 38.030258, 34.971745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927704, 37.792675, 34.952732>,  <36.974640, 37.396706, 34.921047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927704, 37.792675, 34.952732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263623, -0.107952, 0.958566,
		0.957462, 0.091597, 0.273635,
		-0.117341, 0.989928, 0.079213,
		36.892502, 38.089653, 34.976498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366077, 37.617924, 35.483124>,  <36.974640, 37.396706, 34.921047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366077, 37.617924, 35.483124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067509, 37.875473, 35.415844>,  <36.888367, 38.030003, 35.375477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067509, 37.875473, 35.415844>,  <37.366077, 37.617924, 35.483124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067509, 37.875473, 35.415844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232906, -0.015990, 0.972368,
		0.623390, 0.764968, 0.161896,
		-0.746419, 0.643871, -0.168197,
		36.843582, 38.068634, 35.365383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347263, 38.118721, 36.035625>,  <37.366077, 37.617924, 35.483124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347263, 38.118721, 36.035625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974888, 38.160038, 35.895523>,  <36.751461, 38.184830, 35.811462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974888, 38.160038, 35.895523>,  <37.347263, 38.118721, 36.035625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974888, 38.160038, 35.895523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324697, 0.204737, 0.923393,
		0.167093, 0.973351, -0.157058,
		-0.930942, 0.103296, -0.350254,
		36.695606, 38.191029, 35.790447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117527, 38.788830, 36.194786>,  <37.347263, 38.118721, 36.035625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117527, 38.788830, 36.194786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788567, 38.561844, 36.178612>,  <36.591190, 38.425652, 36.168907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788567, 38.561844, 36.178612>,  <37.117527, 38.788830, 36.194786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788567, 38.561844, 36.178612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287389, 0.353059, 0.890369,
		-0.490978, 0.743864, -0.453440,
		-0.822404, -0.567465, -0.040434,
		36.541847, 38.391605, 36.166481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624413, 39.147297, 36.529835>,  <37.117527, 38.788830, 36.194786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624413, 39.147297, 36.529835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421101, 38.804798, 36.492966>,  <36.299114, 38.599300, 36.470844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421101, 38.804798, 36.492966>,  <36.624413, 39.147297, 36.529835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421101, 38.804798, 36.492966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342186, 0.102579, 0.934016,
		-0.790291, 0.506284, -0.345133,
		-0.508281, -0.856244, -0.092176,
		36.268616, 38.547924, 36.465313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895973, 39.296314, 36.852249>,  <36.624413, 39.147297, 36.529835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895973, 39.296314, 36.852249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916691, 38.897278, 36.833771>,  <35.929123, 38.657856, 36.822685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916691, 38.897278, 36.833771>,  <35.895973, 39.296314, 36.852249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916691, 38.897278, 36.833771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381666, -0.062522, 0.922183,
		-0.922848, -0.030136, -0.383984,
		0.051799, -0.997589, -0.046196,
		35.932232, 38.598000, 36.819912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162888, 39.039677, 36.985630>,  <35.895973, 39.296314, 36.852249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162888, 39.039677, 36.985630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429523, 38.752304, 37.065136>,  <35.589504, 38.579880, 37.112839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429523, 38.752304, 37.065136>,  <35.162888, 39.039677, 36.985630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429523, 38.752304, 37.065136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401440, -0.121317, 0.907815,
		-0.628093, -0.684933, -0.369278,
		0.666592, -0.718435, 0.198760,
		35.629501, 38.536774, 37.124763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766979, 38.429211, 37.216503>,  <35.162888, 39.039677, 36.985630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766979, 38.429211, 37.216503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142174, 38.395321, 37.350967>,  <35.367290, 38.374989, 37.431644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142174, 38.395321, 37.350967>,  <34.766979, 38.429211, 37.216503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142174, 38.395321, 37.350967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331775, 0.061815, 0.941331,
		-0.100533, -0.994485, 0.029872,
		0.937987, -0.084724, 0.336159,
		35.423569, 38.369904, 37.451817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749245, 38.008793, 37.825588>,  <34.766979, 38.429211, 37.216503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749245, 38.008793, 37.825588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104599, 38.183140, 37.883278>,  <35.317810, 38.287746, 37.917892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104599, 38.183140, 37.883278>,  <34.749245, 38.008793, 37.825588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104599, 38.183140, 37.883278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184155, 0.050535, 0.981597,
		0.420554, -0.898593, 0.125161,
		0.888381, 0.435863, 0.144228,
		35.371113, 38.313900, 37.926548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020344, 37.633217, 38.464481>,  <34.749245, 38.008793, 37.825588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020344, 37.633217, 38.464481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267452, 37.945179, 38.424267>,  <35.415718, 38.132355, 38.400139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267452, 37.945179, 38.424267>,  <35.020344, 37.633217, 38.464481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267452, 37.945179, 38.424267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011833, 0.118612, 0.992870,
		0.786268, -0.614557, 0.064046,
		0.617772, 0.779904, -0.100533,
		35.452785, 38.179150, 38.394108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125816, 36.798241, 38.554756>,  <35.020344, 37.633217, 38.464481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125816, 36.798241, 38.554756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833775, 36.616367, 38.758801>,  <34.658550, 36.507244, 38.881229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833775, 36.616367, 38.758801>,  <35.125816, 36.798241, 38.554756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833775, 36.616367, 38.758801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611116, 0.100432, -0.785144,
		0.305759, -0.884974, -0.351189,
		-0.730102, -0.454682, 0.510114,
		34.614742, 36.479961, 38.911835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946724, 36.355392, 38.047546>,  <35.125816, 36.798241, 38.554756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946724, 36.355392, 38.047546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645111, 36.361542, 38.310211>,  <34.464146, 36.365231, 38.467812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645111, 36.361542, 38.310211>,  <34.946724, 36.355392, 38.047546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645111, 36.361542, 38.310211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648832, 0.138231, -0.748271,
		-0.102274, -0.990281, -0.094256,
		-0.754027, 0.015373, 0.656663,
		34.418903, 36.366154, 38.507210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396492, 35.927006, 37.753288>,  <34.946724, 36.355392, 38.047546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396492, 35.927006, 37.753288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207146, 36.165642, 38.012520>,  <34.093540, 36.308823, 38.168060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207146, 36.165642, 38.012520>,  <34.396492, 35.927006, 37.753288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207146, 36.165642, 38.012520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691588, 0.203959, -0.692897,
		-0.545559, -0.776194, 0.316051,
		-0.473361, 0.596593, 0.648078,
		34.065136, 36.344620, 38.206944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787567, 35.610703, 37.715431>,  <34.396492, 35.927006, 37.753288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787567, 35.610703, 37.715431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720810, 35.962429, 37.893848>,  <33.680756, 36.173466, 38.000900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720810, 35.962429, 37.893848>,  <33.787567, 35.610703, 37.715431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720810, 35.962429, 37.893848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805548, 0.139261, -0.575933,
		-0.568542, -0.455427, 0.685089,
		-0.166889, 0.879314, 0.446044,
		33.670742, 36.226223, 38.027660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176514, 35.526112, 37.855148>,  <33.787567, 35.610703, 37.715431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176514, 35.526112, 37.855148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240738, 35.920898, 37.850868>,  <33.279270, 36.157772, 37.848301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240738, 35.920898, 37.850868>,  <33.176514, 35.526112, 37.855148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240738, 35.920898, 37.850868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794698, 0.122833, -0.594447,
		-0.585386, 0.103947, 0.804064,
		0.160557, 0.986968, -0.010702,
		33.288906, 36.216988, 37.847656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519386, 35.796005, 37.869164>,  <33.176514, 35.526112, 37.855148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519386, 35.796005, 37.869164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747990, 36.089252, 37.721695>,  <32.885151, 36.265202, 37.633213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747990, 36.089252, 37.721695>,  <32.519386, 35.796005, 37.869164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747990, 36.089252, 37.721695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753837, 0.291539, -0.588843,
		-0.324212, 0.614441, 0.719270,
		0.571504, 0.733122, -0.368668,
		32.919441, 36.309189, 37.611095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046333, 36.360962, 37.775803>,  <32.519386, 35.796005, 37.869164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046333, 36.360962, 37.775803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365463, 36.421593, 37.542389>,  <32.556942, 36.457970, 37.402340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365463, 36.421593, 37.542389>,  <32.046333, 36.360962, 37.775803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365463, 36.421593, 37.542389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601662, 0.138296, -0.786687,
		-0.038544, 0.978723, 0.201534,
		0.797820, 0.151578, -0.583530,
		32.604809, 36.467068, 37.367329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785700, 36.850647, 37.384125>,  <32.046333, 36.360962, 37.775803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785700, 36.850647, 37.384125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090588, 36.694221, 37.177788>,  <32.273521, 36.600368, 37.053986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090588, 36.694221, 37.177788>,  <31.785700, 36.850647, 37.384125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090588, 36.694221, 37.177788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541759, 0.050767, -0.838999,
		0.354287, 0.918964, -0.173164,
		0.762219, -0.391060, -0.515843,
		32.319252, 36.576904, 37.023033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850758, 37.241074, 36.721863>,  <31.785700, 36.850647, 37.384125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850758, 37.241074, 36.721863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028164, 36.887589, 36.662064>,  <32.134609, 36.675499, 36.626186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028164, 36.887589, 36.662064>,  <31.850758, 37.241074, 36.721863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028164, 36.887589, 36.662064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423842, -0.059833, -0.903757,
		0.789716, 0.464192, -0.401091,
		0.443515, -0.883712, -0.149493,
		32.161217, 36.622475, 36.617214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095520, 37.236702, 36.085293>,  <31.850758, 37.241074, 36.721863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095520, 37.236702, 36.085293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020031, 36.854897, 36.177628>,  <31.974737, 36.625813, 36.233028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020031, 36.854897, 36.177628>,  <32.095520, 37.236702, 36.085293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020031, 36.854897, 36.177628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375512, -0.147058, -0.915076,
		0.907399, -0.259382, -0.330678,
		-0.188725, -0.954513, 0.230841,
		31.963413, 36.568542, 36.246880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069992, 37.003162, 35.432522>,  <32.095520, 37.236702, 36.085293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069992, 37.003162, 35.432522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948914, 36.681419, 35.637028>,  <31.876268, 36.488373, 35.759731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948914, 36.681419, 35.637028>,  <32.069992, 37.003162, 35.432522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948914, 36.681419, 35.637028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451779, -0.351243, -0.820076,
		0.839210, -0.479208, -0.257073,
		-0.302691, -0.804356, 0.511262,
		31.858107, 36.440113, 35.790405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401524, 36.390293, 35.076088>,  <32.069992, 37.003162, 35.432522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401524, 36.390293, 35.076088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101097, 36.266434, 35.309334>,  <31.920841, 36.192120, 35.449280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101097, 36.266434, 35.309334>,  <32.401524, 36.390293, 35.076088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101097, 36.266434, 35.309334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348483, -0.564228, -0.748469,
		0.560771, -0.765353, 0.315864,
		-0.751063, -0.309646, 0.583115,
		31.875778, 36.173538, 35.484268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367332, 35.622826, 34.986530>,  <32.401524, 36.390293, 35.076088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367332, 35.622826, 34.986530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997326, 35.728031, 35.096195>,  <31.775322, 35.791153, 35.161995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997326, 35.728031, 35.096195>,  <32.367332, 35.622826, 34.986530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997326, 35.728031, 35.096195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379227, -0.595645, -0.708092,
		-0.022933, -0.758968, 0.650724,
		-0.925020, 0.263011, 0.274161,
		31.719820, 35.806934, 35.178444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883526, 34.931343, 35.062553>,  <32.367332, 35.622826, 34.986530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883526, 34.931343, 35.062553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639093, 35.241291, 34.997856>,  <31.492434, 35.427258, 34.959038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639093, 35.241291, 34.997856>,  <31.883526, 34.931343, 35.062553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639093, 35.241291, 34.997856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492329, -0.532058, -0.688860,
		-0.619831, -0.341318, 0.706620,
		-0.611083, 0.774866, -0.161745,
		31.455769, 35.473751, 34.949333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782799, 34.862328, 35.151653>,  <31.883526, 34.931343, 35.062553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782799, 34.862328, 35.151653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127129, 34.826954, 35.352116>,  <33.333729, 34.805729, 35.472393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127129, 34.826954, 35.352116>,  <32.782799, 34.862328, 35.151653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127129, 34.826954, 35.352116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501994, -0.309198, 0.807712,
		0.083529, -0.946877, -0.310558,
		0.860828, -0.088431, 0.501154,
		33.385376, 34.800426, 35.502460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860077, 34.217823, 35.515190>,  <32.782799, 34.862328, 35.151653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860077, 34.217823, 35.515190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036293, 34.526077, 35.699387>,  <33.142021, 34.711029, 35.809902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036293, 34.526077, 35.699387>,  <32.860077, 34.217823, 35.515190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036293, 34.526077, 35.699387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213425, -0.408334, 0.887532,
		0.871997, -0.489269, -0.015413,
		0.440536, 0.770636, 0.460488,
		33.168453, 34.757267, 35.837532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461670, 33.741940, 35.479343>,  <32.860077, 34.217823, 35.515190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461670, 33.741940, 35.479343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839661, 33.633102, 35.406700>,  <34.066456, 33.567799, 35.363113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839661, 33.633102, 35.406700>,  <33.461670, 33.741940, 35.479343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839661, 33.633102, 35.406700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225271, 0.138695, 0.964374,
		-0.237214, -0.952222, 0.192359,
		0.944977, -0.272095, -0.181608,
		34.123154, 33.551476, 35.352219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628014, 33.322834, 35.963871>,  <33.461670, 33.741940, 35.479343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628014, 33.322834, 35.963871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978943, 33.467300, 35.837463>,  <34.189499, 33.553982, 35.761620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978943, 33.467300, 35.837463>,  <33.628014, 33.322834, 35.963871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978943, 33.467300, 35.837463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305106, 0.088534, 0.948194,
		0.370433, -0.928290, -0.032521,
		0.877319, 0.361165, -0.316023,
		34.242138, 33.575649, 35.742657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051979, 32.858341, 36.328308>,  <33.628014, 33.322834, 35.963871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051979, 32.858341, 36.328308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246761, 33.197311, 36.243698>,  <34.363632, 33.400692, 36.192932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246761, 33.197311, 36.243698>,  <34.051979, 32.858341, 36.328308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246761, 33.197311, 36.243698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253488, 0.094639, 0.962698,
		0.835834, -0.522411, -0.168727,
		0.486956, 0.847426, -0.211527,
		34.392849, 33.451538, 36.180241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666309, 32.858009, 36.688255>,  <34.051979, 32.858341, 36.328308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666309, 32.858009, 36.688255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649071, 33.250538, 36.613262>,  <34.638729, 33.486053, 36.568268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649071, 33.250538, 36.613262>,  <34.666309, 32.858009, 36.688255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649071, 33.250538, 36.613262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201449, 0.192339, 0.960429,
		0.978550, 0.003622, -0.205976,
		-0.043096, 0.981322, -0.187483,
		34.636143, 33.544933, 36.557018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318802, 33.176445, 36.870071>,  <34.666309, 32.858009, 36.688255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318802, 33.176445, 36.870071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040428, 33.461182, 36.907909>,  <34.873402, 33.632023, 36.930611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040428, 33.461182, 36.907909>,  <35.318802, 33.176445, 36.870071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040428, 33.461182, 36.907909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379003, 0.252214, 0.890362,
		0.609941, 0.655488, -0.445316,
		-0.695937, 0.711845, 0.094596,
		34.831646, 33.674736, 36.936287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768738, 33.708530, 37.134834>,  <35.318802, 33.176445, 36.870071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768738, 33.708530, 37.134834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384529, 33.800781, 37.197075>,  <35.154003, 33.856133, 37.234417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384529, 33.800781, 37.197075>,  <35.768738, 33.708530, 37.134834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384529, 33.800781, 37.197075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226522, 0.323613, 0.918674,
		0.161518, 0.917652, -0.363079,
		-0.960520, 0.230628, 0.155599,
		35.096375, 33.869968, 37.243755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826427, 34.313057, 37.465210>,  <35.768738, 33.708530, 37.134834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826427, 34.313057, 37.465210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455742, 34.179554, 37.534271>,  <35.233330, 34.099453, 37.575706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455742, 34.179554, 37.534271>,  <35.826427, 34.313057, 37.465210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455742, 34.179554, 37.534271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072436, 0.292168, 0.953620,
		-0.368723, 0.896238, -0.246579,
		-0.926713, -0.333760, 0.172649,
		35.177727, 34.079426, 37.586067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598232, 34.728783, 38.027935>,  <35.826427, 34.313057, 37.465210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598232, 34.728783, 38.027935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320240, 34.441616, 38.043915>,  <35.153446, 34.269318, 38.053501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320240, 34.441616, 38.043915>,  <35.598232, 34.728783, 38.027935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320240, 34.441616, 38.043915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132308, 0.182293, 0.974302,
		-0.706750, 0.671836, -0.221677,
		-0.694981, -0.717917, 0.039946,
		35.111744, 34.226242, 38.055897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086582, 34.934414, 38.472683>,  <35.598232, 34.728783, 38.027935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086582, 34.934414, 38.472683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057140, 34.535610, 38.463203>,  <35.039474, 34.296329, 38.457516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057140, 34.535610, 38.463203>,  <35.086582, 34.934414, 38.472683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057140, 34.535610, 38.463203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042791, -0.026901, 0.998722,
		-0.996369, 0.072498, 0.044642,
		-0.073607, -0.997006, -0.023701,
		35.035057, 34.236507, 38.456093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548306, 34.605824, 38.996399>,  <35.086582, 34.934414, 38.472683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548306, 34.605824, 38.996399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810425, 34.316517, 38.909256>,  <34.967697, 34.142933, 38.856968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810425, 34.316517, 38.909256>,  <34.548306, 34.605824, 38.996399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810425, 34.316517, 38.909256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055551, -0.241490, 0.968812,
		-0.753322, -0.646966, -0.118070,
		0.655301, -0.723268, -0.217859,
		35.007015, 34.099537, 38.843899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428898, 34.204723, 39.525162>,  <34.548306, 34.605824, 38.996399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428898, 34.204723, 39.525162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765778, 34.041077, 39.384686>,  <34.967903, 33.942890, 39.300400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765778, 34.041077, 39.384686>,  <34.428898, 34.204723, 39.525162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765778, 34.041077, 39.384686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201047, -0.366084, 0.908605,
		-0.500288, -0.835828, -0.226063,
		0.842195, -0.409115, -0.351188,
		35.018436, 33.918343, 39.279327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572186, 33.574772, 39.939754>,  <34.428898, 34.204723, 39.525162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572186, 33.574772, 39.939754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930889, 33.619854, 39.768585>,  <35.146111, 33.646904, 39.665886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930889, 33.619854, 39.768585>,  <34.572186, 33.574772, 39.939754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930889, 33.619854, 39.768585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434724, -0.405054, 0.804330,
		-0.082675, -0.907319, -0.412234,
		0.896761, 0.112710, -0.427921,
		35.199917, 33.653667, 39.640209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984070, 32.913078, 40.007084>,  <34.572186, 33.574772, 39.939754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984070, 32.913078, 40.007084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255638, 33.203007, 39.960278>,  <35.418579, 33.376965, 39.932194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255638, 33.203007, 39.960278>,  <34.984070, 32.913078, 40.007084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255638, 33.203007, 39.960278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464739, -0.300867, 0.832764,
		0.568403, -0.619764, -0.541120,
		0.678922, 0.724825, -0.117015,
		35.459316, 33.420456, 39.925175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550331, 32.552864, 40.227730>,  <34.984070, 32.913078, 40.007084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550331, 32.552864, 40.227730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690228, 32.926388, 40.257896>,  <35.774166, 33.150501, 40.275997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690228, 32.926388, 40.257896>,  <35.550331, 32.552864, 40.227730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690228, 32.926388, 40.257896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488763, -0.250546, 0.835666,
		0.799245, -0.255407, -0.544036,
		0.349741, 0.933806, 0.075414,
		35.795151, 33.206532, 40.280521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254654, 32.403866, 40.498158>,  <35.550331, 32.552864, 40.227730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254654, 32.403866, 40.498158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196598, 32.793640, 40.566765>,  <36.161766, 33.027504, 40.607929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196598, 32.793640, 40.566765>,  <36.254654, 32.403866, 40.498158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196598, 32.793640, 40.566765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455612, -0.088057, 0.885812,
		0.878266, 0.206712, -0.431182,
		-0.145139, 0.974431, 0.171518,
		36.153057, 33.085968, 40.618221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886692, 32.603355, 40.674694>,  <36.254654, 32.403866, 40.498158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886692, 32.603355, 40.674694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613430, 32.857784, 40.818195>,  <36.449471, 33.010441, 40.904297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613430, 32.857784, 40.818195>,  <36.886692, 32.603355, 40.674694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613430, 32.857784, 40.818195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318363, -0.182710, 0.930194,
		0.657220, 0.749685, -0.077682,
		-0.683160, 0.636073, 0.358753,
		36.408482, 33.048607, 40.925819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322647, 33.010693, 41.152649>,  <36.886692, 32.603355, 40.674694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322647, 33.010693, 41.152649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941235, 33.068745, 41.258259>,  <36.712387, 33.103577, 41.321625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941235, 33.068745, 41.258259>,  <37.322647, 33.010693, 41.152649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941235, 33.068745, 41.258259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269002, 0.015475, 0.963015,
		0.135681, 0.989291, -0.053798,
		-0.953535, 0.145134, 0.264022,
		36.655174, 33.112286, 41.337467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319214, 33.561729, 41.659286>,  <37.322647, 33.010693, 41.152649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319214, 33.561729, 41.659286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980022, 33.354897, 41.705864>,  <36.776508, 33.230797, 41.733810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980022, 33.354897, 41.705864>,  <37.319214, 33.561729, 41.659286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980022, 33.354897, 41.705864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205475, -0.118186, 0.971500,
		-0.488579, 0.847740, 0.206465,
		-0.847981, -0.517078, 0.116446,
		36.725628, 33.199772, 41.740799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986549, 33.850224, 42.147861>,  <37.319214, 33.561729, 41.659286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986549, 33.850224, 42.147861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805077, 33.493885, 42.157349>,  <36.696194, 33.280083, 42.163040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805077, 33.493885, 42.157349>,  <36.986549, 33.850224, 42.147861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805077, 33.493885, 42.157349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071123, -0.009671, 0.997421,
		-0.888321, 0.454198, 0.067747,
		-0.453682, -0.890848, 0.023713,
		36.668972, 33.226631, 42.164463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453457, 33.899651, 42.570103>,  <36.986549, 33.850224, 42.147861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453457, 33.899651, 42.570103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545208, 33.510387, 42.562710>,  <36.600258, 33.276829, 42.558273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545208, 33.510387, 42.562710>,  <36.453457, 33.899651, 42.570103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545208, 33.510387, 42.562710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054672, -0.031840, 0.997997,
		-0.971801, -0.227907, -0.060508,
		0.229377, -0.973162, -0.018482,
		36.614021, 33.218437, 42.557167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042988, 33.563210, 43.077122>,  <36.453457, 33.899651, 42.570103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042988, 33.563210, 43.077122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355923, 33.321518, 43.016647>,  <36.543682, 33.176502, 42.980362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355923, 33.321518, 43.016647>,  <36.042988, 33.563210, 43.077122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355923, 33.321518, 43.016647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005474, -0.249385, 0.968389,
		-0.622834, -0.756776, -0.198410,
		0.782334, -0.604232, -0.151183,
		36.590622, 33.140247, 42.971294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908833, 33.055607, 43.507530>,  <36.042988, 33.563210, 43.077122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908833, 33.055607, 43.507530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295094, 33.000206, 43.419586>,  <36.526848, 32.966965, 43.366821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295094, 33.000206, 43.419586>,  <35.908833, 33.055607, 43.507530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295094, 33.000206, 43.419586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149795, -0.394657, 0.906536,
		-0.212320, -0.908331, -0.360355,
		0.965651, -0.138496, -0.219857,
		36.584789, 32.958656, 43.353630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995808, 32.468216, 43.965183>,  <35.908833, 33.055607, 43.507530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995808, 32.468216, 43.965183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349060, 32.624962, 43.862007>,  <36.561012, 32.719009, 43.800102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349060, 32.624962, 43.862007>,  <35.995808, 32.468216, 43.965183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349060, 32.624962, 43.862007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380758, -0.277503, 0.882052,
		0.274064, -0.877175, -0.394275,
		0.883126, 0.391862, -0.257938,
		36.613998, 32.742519, 43.784626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490891, 31.936989, 44.071796>,  <35.995808, 32.468216, 43.965183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490891, 31.936989, 44.071796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717468, 32.266457, 44.082409>,  <36.853416, 32.464138, 44.088776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717468, 32.266457, 44.082409>,  <36.490891, 31.936989, 44.071796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717468, 32.266457, 44.082409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388399, -0.295226, 0.872919,
		0.726832, -0.484155, -0.487143,
		0.566446, 0.823672, 0.026535,
		36.887402, 32.513557, 44.090370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242039, 31.747919, 44.195847>,  <36.490891, 31.936989, 44.071796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242039, 31.747919, 44.195847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215591, 32.132793, 44.301544>,  <37.199722, 32.363720, 44.364964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215591, 32.132793, 44.301544>,  <37.242039, 31.747919, 44.195847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215591, 32.132793, 44.301544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369079, -0.222458, 0.902382,
		0.927043, 0.157189, -0.340415,
		-0.066116, 0.962187, 0.264243,
		37.195755, 32.421448, 44.380817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717258, 31.864244, 44.660561>,  <37.242039, 31.747919, 44.195847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717258, 31.864244, 44.660561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494408, 32.184185, 44.749870>,  <37.360699, 32.376148, 44.803455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494408, 32.184185, 44.749870>,  <37.717258, 31.864244, 44.660561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494408, 32.184185, 44.749870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361621, -0.008357, 0.932288,
		0.747559, 0.600137, -0.284587,
		-0.557122, 0.799853, 0.223270,
		37.327271, 32.424141, 44.816853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431770, 32.184605, 44.342789>,  <37.717258, 31.864244, 44.660561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431770, 32.184605, 44.342789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802799, 32.036736, 44.364536>,  <39.025417, 31.948015, 44.377583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802799, 32.036736, 44.364536>,  <38.431770, 32.184605, 44.342789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802799, 32.036736, 44.364536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036346, -0.055539, -0.997795,
		0.371875, 0.927501, -0.038080,
		0.927571, -0.369671, 0.054365,
		39.081070, 31.925835, 44.380844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784843, 32.589184, 43.882366>,  <38.431770, 32.184605, 44.342789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784843, 32.589184, 43.882366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001083, 32.254147, 43.913834>,  <39.130825, 32.053123, 43.932713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001083, 32.254147, 43.913834>,  <38.784843, 32.589184, 43.882366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001083, 32.254147, 43.913834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132690, -0.007444, -0.991130,
		0.830751, 0.546241, 0.107117,
		0.540598, -0.837595, 0.078664,
		39.163261, 32.002869, 43.937431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420151, 32.710442, 43.477787>,  <38.784843, 32.589184, 43.882366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420151, 32.710442, 43.477787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389935, 32.315834, 43.535843>,  <39.371807, 32.079067, 43.570675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389935, 32.315834, 43.535843>,  <39.420151, 32.710442, 43.477787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389935, 32.315834, 43.535843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297863, -0.161234, -0.940894,
		0.951615, -0.027840, 0.306028,
		-0.075536, -0.986523, 0.145140,
		39.367275, 32.019878, 43.579384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013233, 32.525360, 43.226318>,  <39.420151, 32.710442, 43.477787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013233, 32.525360, 43.226318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764706, 32.212208, 43.213276>,  <39.615589, 32.024315, 43.205452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764706, 32.212208, 43.213276>,  <40.013233, 32.525360, 43.226318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764706, 32.212208, 43.213276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310802, -0.208035, -0.927428,
		0.719281, -0.586363, 0.372577,
		-0.621318, -0.782879, -0.032607,
		39.578312, 31.977345, 43.203495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358440, 31.954559, 42.878689>,  <40.013233, 32.525360, 43.226318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358440, 31.954559, 42.878689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967106, 31.890211, 42.826576>,  <39.732304, 31.851603, 42.795311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967106, 31.890211, 42.826576>,  <40.358440, 31.954559, 42.878689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967106, 31.890211, 42.826576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140857, -0.056155, -0.988436,
		0.151695, -0.985377, 0.077599,
		-0.978339, -0.160871, -0.130279,
		39.673603, 31.841949, 42.787491>
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
