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
	<24.308033, 34.758904, 35.330734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.285738, 35.024879, 35.032810>,  <24.272362, 35.184467, 34.854057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.285738, 35.024879, 35.032810>,  <24.308033, 34.758904, 35.330734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.285738, 35.024879, 35.032810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892887, 0.367027, 0.260852,
		0.446818, -0.650492, -0.614177,
		-0.055737, 0.664944, -0.744810,
		24.269016, 35.224361, 34.809368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.983438, 34.641232, 35.212723>,  <24.308033, 34.758904, 35.330734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.983438, 34.641232, 35.212723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.869186, 34.997433, 35.071060>,  <24.800634, 35.211151, 34.986061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.869186, 34.997433, 35.071060>,  <24.983438, 34.641232, 35.212723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.869186, 34.997433, 35.071060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910426, 0.367531, 0.189861,
		0.299234, -0.268201, -0.915711,
		-0.285631, 0.890499, -0.354155,
		24.783497, 35.264584, 34.964813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449347, 34.940922, 34.713673>,  <24.983438, 34.641232, 35.212723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449347, 34.940922, 34.713673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255144, 35.190193, 34.958927>,  <25.138622, 35.339756, 35.106079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255144, 35.190193, 34.958927>,  <25.449347, 34.940922, 34.713673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.255144, 35.190193, 34.958927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853878, 0.187556, 0.485505,
		0.187556, 0.759260, -0.623174,
		-0.485505, 0.623174, 0.613138,
		25.109493, 35.377144, 35.142868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877668, 35.535851, 34.659489>,  <25.449347, 34.940922, 34.713673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877668, 35.535851, 34.659489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678131, 35.511459, 35.005306>,  <25.558409, 35.496822, 35.212795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678131, 35.511459, 35.005306>,  <25.877668, 35.535851, 34.659489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678131, 35.511459, 35.005306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815780, 0.303814, 0.492137,
		-0.292672, 0.950778, -0.101809,
		-0.498844, -0.060981, 0.864544,
		25.528479, 35.493164, 35.264668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377954, 35.882713, 35.002270>,  <25.877668, 35.535851, 34.659489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377954, 35.882713, 35.002270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380926, 36.243069, 35.175865>,  <26.382710, 36.459282, 35.280022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380926, 36.243069, 35.175865>,  <26.377954, 35.882713, 35.002270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380926, 36.243069, 35.175865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999101, 0.024803, -0.034384,
		-0.041740, -0.433344, 0.900262,
		0.007429, 0.900887, 0.433990,
		26.383154, 36.513336, 35.306061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131643, 35.661419, 35.021038>,  <26.377954, 35.882713, 35.002270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131643, 35.661419, 35.021038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507349, 35.629028, 35.154442>,  <27.732773, 35.609592, 35.234482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507349, 35.629028, 35.154442>,  <27.131643, 35.661419, 35.021038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507349, 35.629028, 35.154442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176879, 0.718541, 0.672616,
		-0.294105, -0.690754, 0.660577,
		0.939264, -0.080978, 0.333507,
		27.789127, 35.604736, 35.254494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194416, 35.890003, 35.743484>,  <27.131643, 35.661419, 35.021038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194416, 35.890003, 35.743484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583113, 35.850399, 35.657768>,  <27.816330, 35.826637, 35.606339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583113, 35.850399, 35.657768>,  <27.194416, 35.890003, 35.743484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583113, 35.850399, 35.657768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208017, 0.788283, 0.579085,
		0.111582, -0.607295, 0.786602,
		0.971740, -0.099011, -0.214286,
		27.874634, 35.820694, 35.593483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568108, 35.915810, 36.387081>,  <27.194416, 35.890003, 35.743484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568108, 35.915810, 36.387081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817854, 36.014961, 36.090778>,  <27.967701, 36.074451, 35.912998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817854, 36.014961, 36.090778>,  <27.568108, 35.915810, 36.387081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817854, 36.014961, 36.090778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423586, 0.689332, 0.587704,
		0.656311, -0.680716, 0.325395,
		0.624365, 0.247884, -0.740758,
		28.005163, 36.089325, 35.868549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107870, 36.068417, 36.772038>,  <27.568108, 35.915810, 36.387081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107870, 36.068417, 36.772038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175005, 36.274345, 36.435753>,  <28.215286, 36.397903, 36.233982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175005, 36.274345, 36.435753>,  <28.107870, 36.068417, 36.772038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175005, 36.274345, 36.435753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272631, 0.795305, 0.541446,
		0.947367, -0.320077, -0.006876,
		0.167836, 0.514822, -0.840708,
		28.225355, 36.428791, 36.183540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791632, 36.508591, 36.875443>,  <28.107870, 36.068417, 36.772038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791632, 36.508591, 36.875443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581879, 36.682854, 36.582806>,  <28.456026, 36.787411, 36.407223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581879, 36.682854, 36.582806>,  <28.791632, 36.508591, 36.875443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581879, 36.682854, 36.582806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354225, 0.892935, 0.277833,
		0.774303, -0.113457, -0.622561,
		-0.524385, 0.435654, -0.731591,
		28.424562, 36.813549, 36.363327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261238, 37.016174, 36.546932>,  <28.791632, 36.508591, 36.875443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261238, 37.016174, 36.546932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876509, 37.117901, 36.506496>,  <28.645672, 37.178936, 36.482235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876509, 37.117901, 36.506496>,  <29.261238, 37.016174, 36.546932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876509, 37.117901, 36.506496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190447, 0.887261, 0.420116,
		0.196532, 0.384825, -0.901823,
		-0.961824, 0.254316, -0.101087,
		28.587961, 37.194195, 36.476170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250492, 37.734581, 36.307205>,  <29.261238, 37.016174, 36.546932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250492, 37.734581, 36.307205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915306, 37.625439, 36.496250>,  <28.714193, 37.559952, 36.609676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915306, 37.625439, 36.496250>,  <29.250492, 37.734581, 36.307205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915306, 37.625439, 36.496250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071546, 0.803626, 0.590819,
		-0.541012, 0.528899, -0.653889,
		-0.837966, -0.272857, 0.472612,
		28.663916, 37.543583, 36.638035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069876, 38.373024, 36.520618>,  <29.250492, 37.734581, 36.307205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069876, 38.373024, 36.520618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909712, 38.094807, 36.759243>,  <28.813614, 37.927876, 36.902416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909712, 38.094807, 36.759243>,  <29.069876, 38.373024, 36.520618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909712, 38.094807, 36.759243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084446, 0.620251, 0.779845,
		-0.912437, 0.362635, -0.189619,
		-0.400410, -0.695546, 0.596563,
		28.789589, 37.886143, 36.938213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457020, 38.248398, 36.019665>,  <29.069876, 38.373024, 36.520618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457020, 38.248398, 36.019665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206102, 38.552296, 35.951202>,  <28.055552, 38.734634, 35.910126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206102, 38.552296, 35.951202>,  <28.457020, 38.248398, 36.019665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206102, 38.552296, 35.951202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039544, 0.250563, 0.967292,
		0.777779, 0.600007, -0.187220,
		-0.627292, 0.759743, -0.171156,
		28.017914, 38.780220, 35.899857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776718, 38.125618, 35.739727>,  <28.457020, 38.248398, 36.019665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776718, 38.125618, 35.739727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806616, 38.203995, 35.348621>,  <27.824554, 38.251022, 35.113956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806616, 38.203995, 35.348621>,  <27.776718, 38.125618, 35.739727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806616, 38.203995, 35.348621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382778, -0.899756, -0.209570,
		-0.920812, 0.389930, 0.007752,
		0.074743, 0.195942, -0.977763,
		27.829039, 38.262779, 35.055294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137978, 37.974380, 35.472095>,  <27.776718, 38.125618, 35.739727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137978, 37.974380, 35.472095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410263, 37.921032, 35.183971>,  <27.573635, 37.889023, 35.011097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410263, 37.921032, 35.183971>,  <27.137978, 37.974380, 35.472095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410263, 37.921032, 35.183971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256091, -0.964570, -0.063421,
		-0.686328, 0.227636, -0.690750,
		0.680714, -0.133367, -0.720306,
		27.614477, 37.881023, 34.967880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361591, 37.498653, 36.003819>,  <27.137978, 37.974380, 35.472095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361591, 37.498653, 36.003819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732353, 37.410122, 36.125053>,  <27.954811, 37.357002, 36.197792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732353, 37.410122, 36.125053>,  <27.361591, 37.498653, 36.003819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732353, 37.410122, 36.125053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021289, -0.837299, -0.546331,
		0.374692, 0.499945, -0.780808,
		0.926905, -0.221329, 0.303086,
		28.010426, 37.343723, 36.215981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785603, 37.343204, 35.369022>,  <27.361591, 37.498653, 36.003819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785603, 37.343204, 35.369022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969458, 37.186771, 35.687969>,  <28.079771, 37.092911, 35.879337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969458, 37.186771, 35.687969>,  <27.785603, 37.343204, 35.369022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969458, 37.186771, 35.687969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080726, -0.875710, -0.476042,
		0.884431, 0.283174, -0.370937,
		0.459636, -0.391082, 0.797364,
		28.107349, 37.069447, 35.927177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460838, 37.043468, 35.041981>,  <27.785603, 37.343204, 35.369022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460838, 37.043468, 35.041981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409767, 36.859032, 35.393227>,  <28.379124, 36.748367, 35.603973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409767, 36.859032, 35.393227>,  <28.460838, 37.043468, 35.041981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409767, 36.859032, 35.393227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005199, -0.885039, -0.465487,
		0.991802, -0.063998, 0.110602,
		-0.127677, -0.461096, 0.878116,
		28.371464, 36.720703, 35.656662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914831, 36.458076, 35.071220>,  <28.460838, 37.043468, 35.041981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914831, 36.458076, 35.071220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619684, 36.345497, 35.316608>,  <28.442596, 36.277950, 35.463840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619684, 36.345497, 35.316608>,  <28.914831, 36.458076, 35.071220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619684, 36.345497, 35.316608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002083, -0.909855, -0.414922,
		0.674945, -0.304878, 0.671936,
		-0.737865, -0.281449, 0.613467,
		28.398325, 36.261063, 35.500648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073778, 35.779907, 35.405125>,  <28.914831, 36.458076, 35.071220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073778, 35.779907, 35.405125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677948, 35.823353, 35.367302>,  <28.440449, 35.849422, 35.344608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677948, 35.823353, 35.367302>,  <29.073778, 35.779907, 35.405125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677948, 35.823353, 35.367302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075901, -0.951386, -0.298502,
		-0.122381, -0.288213, 0.949714,
		-0.989576, 0.108616, -0.094556,
		28.381075, 35.855938, 35.338936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655165, 35.449699, 35.941673>,  <29.073778, 35.779907, 35.405125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655165, 35.449699, 35.941673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527468, 35.487370, 35.564480>,  <28.450850, 35.509972, 35.338165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527468, 35.487370, 35.564480>,  <28.655165, 35.449699, 35.941673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527468, 35.487370, 35.564480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067073, -0.990309, -0.121608,
		-0.945297, -0.102071, 0.309831,
		-0.319241, 0.094174, -0.942982,
		28.431696, 35.515621, 35.281586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167654, 34.826172, 35.820774>,  <28.655165, 35.449699, 35.941673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167654, 34.826172, 35.820774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331720, 34.979374, 35.489697>,  <28.430161, 35.071297, 35.291050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331720, 34.979374, 35.489697>,  <28.167654, 34.826172, 35.820774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331720, 34.979374, 35.489697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109495, -0.880299, -0.461611,
		-0.905415, 0.279964, -0.319129,
		0.410164, 0.383006, -0.827691,
		28.454769, 35.094276, 35.241390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704271, 34.684715, 35.124226>,  <28.167654, 34.826172, 35.820774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704271, 34.684715, 35.124226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074183, 34.748478, 34.986019>,  <28.296129, 34.786736, 34.903095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074183, 34.748478, 34.986019>,  <27.704271, 34.684715, 35.124226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074183, 34.748478, 34.986019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130626, -0.719839, -0.681739,
		-0.357388, 0.675589, -0.644867,
		0.924776, 0.159409, -0.345512,
		28.351616, 34.796299, 34.882366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648050, 34.806507, 34.396198>,  <27.704271, 34.684715, 35.124226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648050, 34.806507, 34.396198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987896, 34.620651, 34.496006>,  <28.191803, 34.509136, 34.555889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987896, 34.620651, 34.496006>,  <27.648050, 34.806507, 34.396198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987896, 34.620651, 34.496006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206784, -0.728703, -0.652864,
		0.485173, 0.503088, -0.715199,
		0.849616, -0.464644, 0.249517,
		28.242781, 34.481258, 34.570862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686348, 34.336082, 34.026894>,  <27.648050, 34.806507, 34.396198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686348, 34.336082, 34.026894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017742, 34.202415, 34.206646>,  <28.216579, 34.122215, 34.314499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017742, 34.202415, 34.206646>,  <27.686348, 34.336082, 34.026894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017742, 34.202415, 34.206646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085395, -0.717689, -0.691109,
		0.553462, 0.610949, -0.566058,
		0.828485, -0.334163, 0.449385,
		28.266287, 34.102165, 34.341461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116926, 34.184929, 33.457935>,  <27.686348, 34.336082, 34.026894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116926, 34.184929, 33.457935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264101, 34.001736, 33.781631>,  <28.352406, 33.891819, 33.975849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264101, 34.001736, 33.781631>,  <28.116926, 34.184929, 33.457935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264101, 34.001736, 33.781631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192629, -0.813870, -0.548187,
		0.909678, 0.357583, -0.211233,
		0.367939, -0.457984, 0.809241,
		28.374483, 33.864342, 34.024403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722511, 33.931126, 33.205883>,  <28.116926, 34.184929, 33.457935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722511, 33.931126, 33.205883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571426, 33.710556, 33.503410>,  <28.480776, 33.578213, 33.681927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571426, 33.710556, 33.503410>,  <28.722511, 33.931126, 33.205883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571426, 33.710556, 33.503410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121172, -0.825854, -0.550711,
		0.917961, -0.117879, 0.378751,
		-0.377711, -0.551425, 0.743818,
		28.458113, 33.545128, 33.726555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271040, 33.455151, 33.264893>,  <28.722511, 33.931126, 33.205883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271040, 33.455151, 33.264893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941919, 33.288967, 33.420017>,  <28.744448, 33.189259, 33.513092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941919, 33.288967, 33.420017>,  <29.271040, 33.455151, 33.264893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941919, 33.288967, 33.420017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348609, -0.907859, -0.232946,
		0.448854, -0.056475, 0.891818,
		-0.822801, -0.415455, 0.387809,
		28.695080, 33.164330, 33.536362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349861, 34.092899, 32.695095>,  <29.271040, 33.455151, 33.264893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349861, 34.092899, 32.695095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701260, 33.911285, 32.635635>,  <29.912098, 33.802319, 32.599960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701260, 33.911285, 32.635635>,  <29.349861, 34.092899, 32.695095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701260, 33.911285, 32.635635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471694, 0.873687, 0.119063,
		0.075818, -0.174715, 0.981696,
		0.878497, -0.454033, -0.148653,
		29.964809, 33.775074, 32.591038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862965, 34.146824, 33.293118>,  <29.349861, 34.092899, 32.695095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862965, 34.146824, 33.293118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014364, 34.184437, 32.924793>,  <30.105204, 34.207005, 32.703796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014364, 34.184437, 32.924793>,  <29.862965, 34.146824, 33.293118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014364, 34.184437, 32.924793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317332, 0.921352, 0.224523,
		0.869504, -0.377185, 0.318895,
		0.378502, 0.094028, -0.920812,
		30.127914, 34.212646, 32.648548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633331, 34.212612, 33.346184>,  <29.862965, 34.146824, 33.293118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633331, 34.212612, 33.346184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441395, 34.376648, 33.035938>,  <30.326233, 34.475071, 32.849792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441395, 34.376648, 33.035938>,  <30.633331, 34.212612, 33.346184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441395, 34.376648, 33.035938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175930, 0.911055, 0.372864,
		0.859536, 0.042462, -0.509309,
		-0.479841, 0.410093, -0.775614,
		30.297443, 34.499676, 32.803253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115593, 34.801350, 32.917427>,  <30.633331, 34.212612, 33.346184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115593, 34.801350, 32.917427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716679, 34.829411, 32.908527>,  <30.477329, 34.846249, 32.903187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716679, 34.829411, 32.908527>,  <31.115593, 34.801350, 32.917427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716679, 34.829411, 32.908527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056088, 0.920174, 0.387472,
		0.047653, 0.385173, -0.921613,
		-0.997288, 0.070156, -0.022245,
		30.417492, 34.850456, 32.901855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901546, 35.313164, 32.457081>,  <31.115593, 34.801350, 32.917427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901546, 35.313164, 32.457081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607182, 35.282822, 32.726208>,  <30.430563, 35.264618, 32.887684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607182, 35.282822, 32.726208>,  <30.901546, 35.313164, 32.457081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607182, 35.282822, 32.726208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176885, 0.937657, 0.299185,
		-0.653564, 0.339184, -0.676615,
		-0.735911, -0.075854, 0.672815,
		30.386408, 35.260067, 32.928051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564877, 36.000950, 32.370083>,  <30.901546, 35.313164, 32.457081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564877, 36.000950, 32.370083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519020, 35.838902, 32.732903>,  <30.491507, 35.741673, 32.950592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519020, 35.838902, 32.732903>,  <30.564877, 36.000950, 32.370083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519020, 35.838902, 32.732903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468789, 0.782944, 0.408945,
		-0.875839, 0.472096, 0.100159,
		-0.114643, -0.405123, 0.907046,
		30.484627, 35.717365, 33.005016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836527, 36.568588, 32.675282>,  <30.564877, 36.000950, 32.370083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836527, 36.568588, 32.675282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698067, 36.322792, 32.958851>,  <30.614990, 36.175312, 33.128994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698067, 36.322792, 32.958851>,  <30.836527, 36.568588, 32.675282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698067, 36.322792, 32.958851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203848, 0.688326, 0.696170,
		-0.915765, 0.385494, -0.113002,
		-0.346152, -0.614493, 0.708927,
		30.594221, 36.138443, 33.171528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378706, 36.899174, 33.253017>,  <30.836527, 36.568588, 32.675282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378706, 36.899174, 33.253017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552725, 36.560150, 33.374596>,  <30.657135, 36.356735, 33.447544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552725, 36.560150, 33.374596>,  <30.378706, 36.899174, 33.253017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552725, 36.560150, 33.374596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085176, 0.374791, 0.923188,
		-0.896370, -0.375740, 0.235243,
		0.435046, -0.847556, 0.303947,
		30.683239, 36.305882, 33.465778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989836, 36.720333, 33.860653>,  <30.378706, 36.899174, 33.253017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989836, 36.720333, 33.860653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367052, 36.588253, 33.844429>,  <30.593382, 36.509007, 33.834694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367052, 36.588253, 33.844429>,  <29.989836, 36.720333, 33.860653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367052, 36.588253, 33.844429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192693, 0.442776, 0.875682,
		-0.271189, -0.833619, 0.481182,
		0.943041, -0.330196, -0.040556,
		30.649963, 36.489193, 33.832264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991982, 36.344421, 34.425476>,  <29.989836, 36.720333, 33.860653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991982, 36.344421, 34.425476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367779, 36.441051, 34.328323>,  <30.593258, 36.499031, 34.270031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367779, 36.441051, 34.328323>,  <29.991982, 36.344421, 34.425476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367779, 36.441051, 34.328323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081287, 0.531546, 0.843120,
		0.332780, -0.811850, 0.479747,
		0.939494, 0.241577, -0.242881,
		30.649628, 36.513523, 34.255459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444220, 36.450649, 35.060963>,  <29.991982, 36.344421, 34.425476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444220, 36.450649, 35.060963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686735, 36.591465, 34.775730>,  <30.832245, 36.675953, 34.604591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686735, 36.591465, 34.775730>,  <30.444220, 36.450649, 35.060963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686735, 36.591465, 34.775730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377033, 0.662250, 0.647511,
		0.700188, -0.661433, 0.268782,
		0.606286, 0.352040, -0.713081,
		30.868622, 36.697075, 34.561806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077703, 36.614639, 35.350975>,  <30.444220, 36.450649, 35.060963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077703, 36.614639, 35.350975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060776, 36.845760, 35.024944>,  <31.050619, 36.984432, 34.829327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060776, 36.845760, 35.024944>,  <31.077703, 36.614639, 35.350975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060776, 36.845760, 35.024944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338813, 0.775769, 0.532342,
		0.939901, -0.253631, -0.228597,
		-0.042321, 0.577800, -0.815080,
		31.048080, 37.019100, 34.780418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745686, 36.829479, 35.069447>,  <31.077703, 36.614639, 35.350975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745686, 36.829479, 35.069447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463655, 37.101116, 34.987762>,  <31.294437, 37.264099, 34.938751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463655, 37.101116, 34.987762>,  <31.745686, 36.829479, 35.069447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463655, 37.101116, 34.987762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463916, 0.659523, 0.591448,
		0.536328, 0.322280, -0.780056,
		-0.705077, 0.679091, -0.204210,
		31.252132, 37.304844, 34.926498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994612, 37.408943, 34.635273>,  <31.745686, 36.829479, 35.069447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994612, 37.408943, 34.635273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704865, 37.490681, 34.898647>,  <31.531015, 37.539722, 35.056671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704865, 37.490681, 34.898647>,  <31.994612, 37.408943, 34.635273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704865, 37.490681, 34.898647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594714, 0.668306, 0.446859,
		-0.348723, 0.715270, -0.605625,
		-0.724367, 0.204343, 0.658434,
		31.487555, 37.551983, 35.096176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348419, 37.259026, 34.120625>,  <31.994612, 37.408943, 34.635273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348419, 37.259026, 34.120625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013845, 37.110077, 34.281479>,  <30.813101, 37.020706, 34.377991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013845, 37.110077, 34.281479>,  <31.348419, 37.259026, 34.120625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013845, 37.110077, 34.281479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348716, -0.927647, -0.133672,
		0.422813, 0.028422, 0.905771,
		-0.836437, -0.372375, 0.402133,
		30.762915, 36.998363, 34.402119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926445, 36.741119, 33.923439>,  <31.348419, 37.259026, 34.120625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926445, 36.741119, 33.923439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569466, 36.627213, 34.063408>,  <31.355278, 36.558868, 34.147388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569466, 36.627213, 34.063408>,  <31.926445, 36.741119, 33.923439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569466, 36.627213, 34.063408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171372, -0.503497, -0.846830,
		0.417336, -0.815718, 0.400543,
		-0.892447, -0.284771, 0.349919,
		31.301731, 36.541782, 34.168385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869928, 36.012035, 33.792362>,  <31.926445, 36.741119, 33.923439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869928, 36.012035, 33.792362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498447, 36.158417, 33.816326>,  <31.275558, 36.246246, 33.830704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498447, 36.158417, 33.816326>,  <31.869928, 36.012035, 33.792362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498447, 36.158417, 33.816326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273698, -0.567462, -0.776580,
		-0.250195, -0.737610, 0.627164,
		-0.928704, 0.365950, 0.059906,
		31.219835, 36.268204, 33.834297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375715, 35.451645, 33.872780>,  <31.869928, 36.012035, 33.792362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375715, 35.451645, 33.872780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250866, 35.772121, 33.668556>,  <31.175957, 35.964409, 33.546021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250866, 35.772121, 33.668556>,  <31.375715, 35.451645, 33.872780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250866, 35.772121, 33.668556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350776, -0.596623, -0.721801,
		-0.882913, -0.046198, 0.467258,
		-0.312122, 0.801191, -0.510562,
		31.157228, 36.012478, 33.515388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603552, 34.637978, 33.642620>,  <31.375715, 35.451645, 33.872780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603552, 34.637978, 33.642620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938251, 34.576214, 33.852768>,  <32.139072, 34.539158, 33.978855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938251, 34.576214, 33.852768>,  <31.603552, 34.637978, 33.642620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938251, 34.576214, 33.852768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543186, -0.112665, 0.832019,
		-0.069280, -0.981562, -0.178145,
		0.836749, -0.154408, 0.525366,
		32.189278, 34.529892, 34.010376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595112, 34.100945, 34.014767>,  <31.603552, 34.637978, 33.642620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595112, 34.100945, 34.014767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871948, 34.322624, 34.199753>,  <32.038052, 34.455631, 34.310745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871948, 34.322624, 34.199753>,  <31.595112, 34.100945, 34.014767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871948, 34.322624, 34.199753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370966, -0.276516, 0.886523,
		0.619190, -0.785113, 0.014215,
		0.692090, 0.554199, 0.462466,
		32.079575, 34.488884, 34.338493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860205, 33.805222, 34.669502>,  <31.595112, 34.100945, 34.014767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860205, 33.805222, 34.669502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885210, 34.201897, 34.714500>,  <31.900213, 34.439899, 34.741501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885210, 34.201897, 34.714500>,  <31.860205, 33.805222, 34.669502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885210, 34.201897, 34.714500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268603, -0.091844, 0.958862,
		0.961221, -0.090158, 0.260628,
		0.062512, 0.991683, 0.112499,
		31.903963, 34.499401, 34.748249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329185, 33.972942, 35.243999>,  <31.860205, 33.805222, 34.669502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329185, 33.972942, 35.243999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124649, 34.314571, 35.205853>,  <32.001926, 34.519547, 35.182964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124649, 34.314571, 35.205853>,  <32.329185, 33.972942, 35.243999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124649, 34.314571, 35.205853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067375, 0.070795, 0.995213,
		0.856734, 0.515317, 0.021343,
		-0.511339, 0.854070, -0.095372,
		31.971247, 34.570793, 35.177242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626511, 34.436058, 35.658497>,  <32.329185, 33.972942, 35.243999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626511, 34.436058, 35.658497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263363, 34.595711, 35.607182>,  <32.045475, 34.691502, 35.576393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263363, 34.595711, 35.607182>,  <32.626511, 34.436058, 35.658497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263363, 34.595711, 35.607182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079771, 0.135946, 0.987500,
		0.411587, 0.906758, -0.091582,
		-0.907873, 0.399136, -0.128287,
		31.991001, 34.715450, 35.568695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010857, 35.059517, 35.723228>,  <32.626511, 34.436058, 35.658497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010857, 35.059517, 35.723228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191250, 35.244381, 36.028652>,  <33.299484, 35.355297, 36.211906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191250, 35.244381, 36.028652>,  <33.010857, 35.059517, 35.723228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191250, 35.244381, 36.028652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584441, -0.493667, 0.643989,
		0.674569, -0.736684, 0.047468,
		0.450984, 0.462157, 0.763560,
		33.326546, 35.383026, 36.257721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268299, 34.580856, 36.315914>,  <33.010857, 35.059517, 35.723228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268299, 34.580856, 36.315914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220524, 34.938725, 36.488098>,  <33.191856, 35.153446, 36.591408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220524, 34.938725, 36.488098>,  <33.268299, 34.580856, 36.315914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220524, 34.938725, 36.488098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511807, -0.427001, 0.745469,
		0.850757, -0.131273, 0.508901,
		-0.119441, 0.894672, 0.430461,
		33.184692, 35.207127, 36.617237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671585, 34.696651, 36.949299>,  <33.268299, 34.580856, 36.315914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671585, 34.696651, 36.949299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336979, 34.915417, 36.962723>,  <33.136215, 35.046677, 36.970779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336979, 34.915417, 36.962723>,  <33.671585, 34.696651, 36.949299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336979, 34.915417, 36.962723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336522, -0.561124, 0.756236,
		0.432428, 0.621309, 0.653438,
		-0.836516, 0.546914, 0.033561,
		33.086025, 35.079491, 36.972790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478935, 34.780487, 37.623108>,  <33.671585, 34.696651, 36.949299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478935, 34.780487, 37.623108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124645, 34.804234, 37.438950>,  <32.912071, 34.818481, 37.328457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124645, 34.804234, 37.438950>,  <33.478935, 34.780487, 37.623108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124645, 34.804234, 37.438950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418835, -0.529837, 0.737461,
		-0.200154, 0.846019, 0.494156,
		-0.885729, 0.059364, -0.460392,
		32.858925, 34.822044, 37.300831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989113, 34.914738, 38.128254>,  <33.478935, 34.780487, 37.623108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989113, 34.914738, 38.128254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797092, 34.770077, 37.808563>,  <32.681881, 34.683281, 37.616749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797092, 34.770077, 37.808563>,  <32.989113, 34.914738, 38.128254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797092, 34.770077, 37.808563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565797, -0.568601, 0.597132,
		-0.670394, 0.738852, 0.068335,
		-0.480047, -0.361650, -0.799227,
		32.653080, 34.661583, 37.568794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277927, 35.009037, 38.155041>,  <32.989113, 34.914738, 38.128254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277927, 35.009037, 38.155041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366196, 34.663082, 37.974693>,  <32.419159, 34.455509, 37.866486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366196, 34.663082, 37.974693>,  <32.277927, 35.009037, 38.155041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366196, 34.663082, 37.974693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673452, -0.469492, 0.570999,
		-0.705526, 0.177633, -0.686061,
		0.220672, -0.864883, -0.450866,
		32.432396, 34.403618, 37.839432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110111, 35.283199, 37.436554>,  <32.277927, 35.009037, 38.155041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110111, 35.283199, 37.436554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744165, 35.336643, 37.284149>,  <31.524599, 35.368710, 37.192707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744165, 35.336643, 37.284149>,  <32.110111, 35.283199, 37.436554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744165, 35.336643, 37.284149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364769, -0.131092, -0.921824,
		-0.173120, -0.982324, 0.071191,
		-0.914862, 0.133617, -0.381016,
		31.469706, 35.376728, 37.169846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058056, 34.807812, 36.891182>,  <32.110111, 35.283199, 37.436554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058056, 34.807812, 36.891182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797119, 35.104450, 36.828602>,  <31.640556, 35.282433, 36.791054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797119, 35.104450, 36.828602>,  <32.058056, 34.807812, 36.891182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797119, 35.104450, 36.828602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081361, -0.136712, -0.987264,
		-0.753543, -0.656765, 0.028846,
		-0.652345, 0.741599, -0.156454,
		31.601416, 35.326931, 36.781666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448467, 34.580681, 36.506241>,  <32.058056, 34.807812, 36.891182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448467, 34.580681, 36.506241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469837, 34.976765, 36.454655>,  <31.482660, 35.214417, 36.423702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469837, 34.976765, 36.454655>,  <31.448467, 34.580681, 36.506241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469837, 34.976765, 36.454655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017970, -0.128180, -0.991588,
		-0.998410, 0.055295, 0.010946,
		0.053427, 0.990208, -0.128970,
		31.485865, 35.273827, 36.415962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070524, 34.632107, 35.886013>,  <31.448467, 34.580681, 36.506241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070524, 34.632107, 35.886013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304287, 34.955589, 35.859314>,  <31.444546, 35.149681, 35.843292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304287, 34.955589, 35.859314>,  <31.070524, 34.632107, 35.886013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304287, 34.955589, 35.859314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283001, -0.280219, -0.917272,
		-0.760512, 0.517170, -0.392628,
		0.584408, 0.808710, -0.066750,
		31.479609, 35.198204, 35.839291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996880, 35.193691, 35.313190>,  <31.070524, 34.632107, 35.886013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996880, 35.193691, 35.313190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385008, 35.148056, 35.398472>,  <31.617886, 35.120674, 35.449642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385008, 35.148056, 35.398472>,  <30.996880, 35.193691, 35.313190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385008, 35.148056, 35.398472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205771, -0.073543, -0.975833,
		0.127012, 0.990745, -0.047884,
		0.970323, -0.114089, 0.213208,
		31.676105, 35.113831, 35.462433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301029, 35.639507, 34.895760>,  <30.996880, 35.193691, 35.313190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301029, 35.639507, 34.895760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527376, 35.328335, 35.005028>,  <31.663185, 35.141632, 35.070587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527376, 35.328335, 35.005028>,  <31.301029, 35.639507, 34.895760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527376, 35.328335, 35.005028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258720, -0.147049, -0.954694,
		0.782852, 0.610905, 0.118056,
		0.565867, -0.777928, 0.273171,
		31.697136, 35.094955, 35.086979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082699, 35.795444, 34.709229>,  <31.301029, 35.639507, 34.895760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082699, 35.795444, 34.709229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018723, 35.401089, 34.728992>,  <31.980337, 35.164474, 34.740849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018723, 35.401089, 34.728992>,  <32.082699, 35.795444, 34.709229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018723, 35.401089, 34.728992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433666, -0.115139, -0.893687,
		0.886766, -0.121508, 0.445962,
		-0.159938, -0.985890, 0.049408,
		31.970741, 35.105320, 34.743816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710155, 35.512524, 34.594898>,  <32.082699, 35.795444, 34.709229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710155, 35.512524, 34.594898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408199, 35.284279, 34.465572>,  <32.227024, 35.147331, 34.387978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408199, 35.284279, 34.465572>,  <32.710155, 35.512524, 34.594898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408199, 35.284279, 34.465572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315781, 0.115828, -0.941736,
		0.574819, -0.813007, 0.092752,
		-0.754894, -0.570617, -0.323312,
		32.181732, 35.113094, 34.368580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921261, 34.909134, 34.274460>,  <32.710155, 35.512524, 34.594898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921261, 34.909134, 34.274460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569675, 35.021687, 34.120445>,  <32.358727, 35.089218, 34.028038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569675, 35.021687, 34.120445>,  <32.921261, 34.909134, 34.274460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569675, 35.021687, 34.120445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374648, -0.092137, -0.922578,
		-0.295072, -0.955163, -0.024434,
		-0.878960, 0.281381, -0.385037,
		32.305988, 35.106102, 34.004932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674950, 34.553036, 33.700909>,  <32.921261, 34.909134, 34.274460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674950, 34.553036, 33.700909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540710, 34.928940, 33.674911>,  <32.460167, 35.154484, 33.659313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540710, 34.928940, 33.674911>,  <32.674950, 34.553036, 33.700909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540710, 34.928940, 33.674911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210881, 0.007703, -0.977481,
		-0.918096, -0.341750, -0.200763,
		-0.335601, 0.939759, -0.064996,
		32.440029, 35.210869, 33.655411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150593, 34.646873, 33.125206>,  <32.674950, 34.553036, 33.700909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150593, 34.646873, 33.125206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333866, 34.992146, 33.210049>,  <32.443829, 35.199310, 33.260956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333866, 34.992146, 33.210049>,  <32.150593, 34.646873, 33.125206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333866, 34.992146, 33.210049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312968, 0.066686, -0.947419,
		-0.831938, 0.500473, -0.239594,
		0.458180, 0.863180, 0.212111,
		32.471321, 35.251099, 33.273682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893524, 35.218163, 32.644650>,  <32.150593, 34.646873, 33.125206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893524, 35.218163, 32.644650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252926, 35.329018, 32.780815>,  <32.468567, 35.395531, 32.862514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252926, 35.329018, 32.780815>,  <31.893524, 35.218163, 32.644650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252926, 35.329018, 32.780815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276508, 0.244970, -0.929265,
		-0.340927, 0.929077, 0.143475,
		0.898505, 0.277139, 0.340414,
		32.522476, 35.412159, 32.882938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006580, 35.895531, 32.429703>,  <31.893524, 35.218163, 32.644650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006580, 35.895531, 32.429703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376087, 35.758492, 32.498138>,  <32.597794, 35.676270, 32.539200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376087, 35.758492, 32.498138>,  <32.006580, 35.895531, 32.429703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376087, 35.758492, 32.498138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327150, 0.473805, -0.817608,
		0.199047, 0.811255, 0.549768,
		0.923771, -0.342599, 0.171092,
		32.653217, 35.655712, 32.549465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418423, 36.386272, 32.021149>,  <32.006580, 35.895531, 32.429703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418423, 36.386272, 32.021149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647881, 36.069656, 32.105423>,  <32.785557, 35.879684, 32.155987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647881, 36.069656, 32.105423>,  <32.418423, 36.386272, 32.021149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647881, 36.069656, 32.105423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502738, 0.137169, -0.853486,
		0.646671, 0.595521, 0.476625,
		0.573647, -0.791543, 0.210688,
		32.819973, 35.832195, 32.168629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023468, 36.654270, 31.742558>,  <32.418423, 36.386272, 32.021149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023468, 36.654270, 31.742558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079517, 36.258698, 31.762098>,  <33.113148, 36.021355, 31.773823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079517, 36.258698, 31.762098>,  <33.023468, 36.654270, 31.742558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079517, 36.258698, 31.762098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357816, 0.004574, -0.933781,
		0.923218, 0.148328, 0.354495,
		0.140127, -0.988928, 0.048851,
		33.121555, 35.962021, 31.776754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700493, 36.508347, 31.621265>,  <33.023468, 36.654270, 31.742558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700493, 36.508347, 31.621265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493370, 36.180012, 31.524851>,  <33.369099, 35.983009, 31.467003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493370, 36.180012, 31.524851>,  <33.700493, 36.508347, 31.621265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493370, 36.180012, 31.524851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370647, 0.038682, -0.927968,
		0.771038, -0.569845, 0.284213,
		-0.517804, -0.820842, -0.241036,
		33.338028, 35.933758, 31.452539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102390, 36.171974, 31.202713>,  <33.700493, 36.508347, 31.621265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102390, 36.171974, 31.202713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761669, 35.977959, 31.123543>,  <33.557236, 35.861549, 31.076040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761669, 35.977959, 31.123543>,  <34.102390, 36.171974, 31.202713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761669, 35.977959, 31.123543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198724, 0.050406, -0.978758,
		0.484711, -0.873039, 0.053453,
		-0.851800, -0.485038, -0.197926,
		33.506130, 35.832447, 31.064165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303131, 35.612022, 30.880760>,  <34.102390, 36.171974, 31.202713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303131, 35.612022, 30.880760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926525, 35.694645, 30.774265>,  <33.700562, 35.744217, 30.710369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926525, 35.694645, 30.774265>,  <34.303131, 35.612022, 30.880760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926525, 35.694645, 30.774265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272558, 0.002245, -0.962137,
		-0.198137, -0.978432, -0.058412,
		-0.941517, 0.206556, -0.266235,
		33.644070, 35.756611, 30.694395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332218, 35.178070, 30.298655>,  <34.303131, 35.612022, 30.880760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332218, 35.178070, 30.298655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022572, 35.430153, 30.274729>,  <33.836784, 35.581402, 30.260374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022572, 35.430153, 30.274729>,  <34.332218, 35.178070, 30.298655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022572, 35.430153, 30.274729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098860, 0.027024, -0.994734,
		-0.625275, -0.775954, -0.083223,
		-0.774117, 0.630210, -0.059813,
		33.790337, 35.619217, 30.256784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045731, 35.033627, 29.662724>,  <34.332218, 35.178070, 30.298655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045731, 35.033627, 29.662724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885933, 35.391777, 29.741423>,  <33.790054, 35.606667, 29.788643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885933, 35.391777, 29.741423>,  <34.045731, 35.033627, 29.662724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885933, 35.391777, 29.741423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051996, 0.236404, -0.970263,
		-0.915262, -0.377380, -0.140997,
		-0.399490, 0.895376, 0.196749,
		33.766087, 35.660389, 29.800447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577740, 35.161873, 29.109045>,  <34.045731, 35.033627, 29.662724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577740, 35.161873, 29.109045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669647, 35.521019, 29.259274>,  <33.724792, 35.736507, 29.349411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669647, 35.521019, 29.259274>,  <33.577740, 35.161873, 29.109045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669647, 35.521019, 29.259274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030045, 0.379167, -0.924840,
		-0.972782, 0.223780, 0.060143,
		0.229765, 0.897861, 0.375571,
		33.738575, 35.790379, 29.371944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135956, 35.650246, 28.780920>,  <33.577740, 35.161873, 29.109045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135956, 35.650246, 28.780920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448109, 35.872402, 28.895836>,  <33.635403, 36.005695, 28.964785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448109, 35.872402, 28.895836>,  <33.135956, 35.650246, 28.780920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448109, 35.872402, 28.895836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013728, 0.474549, -0.880122,
		-0.625148, 0.682891, 0.377956,
		0.780386, 0.555395, 0.287289,
		33.682224, 36.039021, 28.982023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990208, 36.196991, 28.508062>,  <33.135956, 35.650246, 28.780920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990208, 36.196991, 28.508062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378460, 36.242413, 28.592894>,  <33.611412, 36.269665, 28.643793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378460, 36.242413, 28.592894>,  <32.990208, 36.196991, 28.508062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378460, 36.242413, 28.592894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118779, 0.540425, -0.832966,
		-0.209196, 0.833695, 0.511068,
		0.970633, 0.113550, 0.212080,
		33.669651, 36.276478, 28.656517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116421, 36.879333, 28.385792>,  <32.990208, 36.196991, 28.508062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116421, 36.879333, 28.385792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478817, 36.711372, 28.364384>,  <33.696255, 36.610596, 28.351540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478817, 36.711372, 28.364384>,  <33.116421, 36.879333, 28.385792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478817, 36.711372, 28.364384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239622, 0.612970, -0.752894,
		0.348949, 0.669289, 0.655962,
		0.905989, -0.419905, -0.053519,
		33.750614, 36.585400, 28.348328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608192, 37.410522, 28.398634>,  <33.116421, 36.879333, 28.385792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608192, 37.410522, 28.398634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787510, 37.094921, 28.230579>,  <33.895100, 36.905560, 28.129747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787510, 37.094921, 28.230579>,  <33.608192, 37.410522, 28.398634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787510, 37.094921, 28.230579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271334, 0.567943, -0.777057,
		0.851712, 0.234350, 0.468686,
		0.448291, -0.789000, -0.420137,
		33.921997, 36.858223, 28.104538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326900, 37.654228, 28.137253>,  <33.608192, 37.410522, 28.398634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326900, 37.654228, 28.137253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282707, 37.299973, 27.956841>,  <34.256191, 37.087418, 27.848593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282707, 37.299973, 27.956841>,  <34.326900, 37.654228, 28.137253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282707, 37.299973, 27.956841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500754, 0.342398, -0.794990,
		0.858510, -0.313688, 0.405661,
		-0.110481, -0.885643, -0.451032,
		34.249561, 37.034279, 27.821531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074318, 37.493958, 27.949272>,  <34.326900, 37.654228, 28.137253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074318, 37.493958, 27.949272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793480, 37.314438, 27.728132>,  <34.624977, 37.206726, 27.595448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793480, 37.314438, 27.728132>,  <35.074318, 37.493958, 27.949272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793480, 37.314438, 27.728132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464815, 0.299321, -0.833279,
		0.539457, -0.842012, -0.001542,
		-0.702092, -0.448802, -0.552851,
		34.582851, 37.179798, 27.562277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384533, 37.060356, 27.482738>,  <35.074318, 37.493958, 27.949272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384533, 37.060356, 27.482738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038940, 37.105370, 27.286425>,  <34.831585, 37.132378, 27.168636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038940, 37.105370, 27.286425>,  <35.384533, 37.060356, 27.482738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038940, 37.105370, 27.286425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503273, 0.162407, -0.848729,
		-0.015809, -0.980285, -0.196955,
		-0.863983, 0.112539, -0.490783,
		34.779747, 37.139130, 27.139189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440750, 36.813339, 26.869184>,  <35.384533, 37.060356, 27.482738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440750, 36.813339, 26.869184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116825, 37.038898, 26.804401>,  <34.922470, 37.174232, 26.765532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116825, 37.038898, 26.804401>,  <35.440750, 36.813339, 26.869184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116825, 37.038898, 26.804401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356660, 0.253986, -0.899047,
		-0.465833, -0.785821, -0.406799,
		-0.809811, 0.563895, -0.161956,
		34.873882, 37.208065, 26.755816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079754, 36.582996, 26.187691>,  <35.440750, 36.813339, 26.869184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079754, 36.582996, 26.187691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019836, 36.975510, 26.236086>,  <34.983887, 37.211018, 26.265123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019836, 36.975510, 26.236086>,  <35.079754, 36.582996, 26.187691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019836, 36.975510, 26.236086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394572, 0.171530, -0.902713,
		-0.906574, -0.087478, -0.412882,
		-0.149789, 0.981287, 0.120988,
		34.974899, 37.269897, 26.272383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056122, 36.852856, 25.584272>,  <35.079754, 36.582996, 26.187691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056122, 36.852856, 25.584272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086147, 37.211578, 25.758677>,  <35.104164, 37.426811, 25.863319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086147, 37.211578, 25.758677>,  <35.056122, 36.852856, 25.584272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086147, 37.211578, 25.758677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335180, 0.389110, -0.858048,
		-0.939159, 0.210550, -0.271384,
		0.075064, 0.896807, 0.436009,
		35.108665, 37.480621, 25.889479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091084, 37.366714, 25.104259>,  <35.056122, 36.852856, 25.584272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091084, 37.366714, 25.104259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230213, 37.607632, 25.391665>,  <35.313690, 37.752182, 25.564108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230213, 37.607632, 25.391665>,  <35.091084, 37.366714, 25.104259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230213, 37.607632, 25.391665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453675, 0.562547, -0.691173,
		-0.820484, 0.566382, -0.077574,
		0.347828, 0.602290, 0.718514,
		35.334560, 37.788319, 25.607220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974369, 38.146008, 24.902124>,  <35.091084, 37.366714, 25.104259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974369, 38.146008, 24.902124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253807, 38.146267, 25.188332>,  <35.421471, 38.146423, 25.360056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253807, 38.146267, 25.188332>,  <34.974369, 38.146008, 24.902124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253807, 38.146267, 25.188332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486667, 0.732635, -0.475817,
		-0.524521, 0.680622, 0.511500,
		0.698594, 0.000646, 0.715518,
		35.463387, 38.146461, 25.402987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123768, 38.776783, 25.088863>,  <34.974369, 38.146008, 24.902124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123768, 38.776783, 25.088863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457298, 38.599464, 25.220453>,  <35.657417, 38.493073, 25.299406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457298, 38.599464, 25.220453>,  <35.123768, 38.776783, 25.088863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457298, 38.599464, 25.220453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549480, 0.609296, -0.571690,
		0.052987, 0.657453, 0.751630,
		0.833825, -0.443298, 0.328973,
		35.707447, 38.466476, 25.319145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674038, 39.271900, 25.319315>,  <35.123768, 38.776783, 25.088863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674038, 39.271900, 25.319315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902809, 38.957340, 25.225946>,  <36.040070, 38.768604, 25.169926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902809, 38.957340, 25.225946>,  <35.674038, 39.271900, 25.319315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902809, 38.957340, 25.225946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605408, 0.596655, -0.526767,
		0.553519, 0.159955, 0.817331,
		0.571924, -0.786395, -0.233422,
		36.074387, 38.721420, 25.155920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335911, 39.454735, 25.499914>,  <35.674038, 39.271900, 25.319315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335911, 39.454735, 25.499914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380249, 39.167587, 25.224997>,  <36.406853, 38.995296, 25.060047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380249, 39.167587, 25.224997>,  <36.335911, 39.454735, 25.499914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380249, 39.167587, 25.224997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642500, 0.579369, -0.501523,
		0.758226, -0.385991, 0.525456,
		0.110850, -0.717873, -0.687292,
		36.413506, 38.952225, 25.018808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075615, 39.461918, 25.362156>,  <36.335911, 39.454735, 25.499914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075615, 39.461918, 25.362156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932011, 39.251545, 25.053738>,  <36.845848, 39.125320, 24.868687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932011, 39.251545, 25.053738>,  <37.075615, 39.461918, 25.362156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932011, 39.251545, 25.053738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652165, 0.449622, -0.610344,
		0.667677, -0.721967, 0.181576,
		-0.359008, -0.525930, -0.771045,
		36.824306, 39.093765, 24.822424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682632, 39.138214, 25.114325>,  <37.075615, 39.461918, 25.362156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682632, 39.138214, 25.114325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389225, 39.136063, 24.842464>,  <37.213181, 39.134773, 24.679348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389225, 39.136063, 24.842464>,  <37.682632, 39.138214, 25.114325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389225, 39.136063, 24.842464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648000, 0.296164, -0.701700,
		0.205060, -0.955122, -0.213757,
		-0.733516, -0.005376, -0.679650,
		37.169170, 39.134449, 24.638569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894676, 38.730728, 24.496822>,  <37.682632, 39.138214, 25.114325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894676, 38.730728, 24.496822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610912, 38.979588, 24.364353>,  <37.440655, 39.128902, 24.284872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610912, 38.979588, 24.364353>,  <37.894676, 38.730728, 24.496822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610912, 38.979588, 24.364353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577140, 0.243085, -0.779628,
		-0.404538, -0.744207, -0.531511,
		-0.709407, 0.622146, -0.331174,
		37.398090, 39.166233, 24.265001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880337, 38.697968, 23.772791>,  <37.894676, 38.730728, 24.496822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880337, 38.697968, 23.772791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674355, 39.038494, 23.812939>,  <37.550766, 39.242809, 23.837027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674355, 39.038494, 23.812939>,  <37.880337, 38.697968, 23.772791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674355, 39.038494, 23.812939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422408, 0.353895, -0.834464,
		-0.745914, -0.387318, -0.541845,
		-0.514959, 0.851318, 0.100369,
		37.519867, 39.293888, 23.843050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685780, 38.922977, 23.084620>,  <37.880337, 38.697968, 23.772791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685780, 38.922977, 23.084620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681320, 39.237354, 23.331902>,  <37.678646, 39.425980, 23.480270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681320, 39.237354, 23.331902>,  <37.685780, 38.922977, 23.084620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681320, 39.237354, 23.331902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427902, 0.562525, -0.707436,
		-0.903756, 0.256644, -0.342576,
		-0.011148, 0.785939, 0.618204,
		37.677975, 39.473137, 23.517363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366585, 39.551922, 22.671743>,  <37.685780, 38.922977, 23.084620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366585, 39.551922, 22.671743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584133, 39.688694, 22.978283>,  <37.714661, 39.770756, 23.162207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584133, 39.688694, 22.978283>,  <37.366585, 39.551922, 22.671743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584133, 39.688694, 22.978283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508274, 0.592431, -0.625046,
		-0.667729, 0.729460, 0.148414,
		0.543871, 0.341927, 0.766349,
		37.747295, 39.791271, 23.208187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245724, 40.315357, 22.699579>,  <37.366585, 39.551922, 22.671743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245724, 40.315357, 22.699579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593784, 40.243599, 22.883167>,  <37.802620, 40.200542, 22.993320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593784, 40.243599, 22.883167>,  <37.245724, 40.315357, 22.699579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593784, 40.243599, 22.883167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447300, 0.678365, -0.582875,
		-0.206784, 0.712487, 0.670524,
		0.870151, -0.179396, 0.458971,
		37.854828, 40.189781, 23.020859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642544, 40.955162, 22.579144>,  <37.245724, 40.315357, 22.699579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642544, 40.955162, 22.579144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929005, 40.714790, 22.721130>,  <38.100883, 40.570568, 22.806322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929005, 40.714790, 22.721130>,  <37.642544, 40.955162, 22.579144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929005, 40.714790, 22.721130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695974, 0.576716, -0.427808,
		0.052368, 0.553425, 0.831251,
		0.716155, -0.600932, 0.354968,
		38.143852, 40.534512, 22.827621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148209, 41.395691, 23.058073>,  <37.642544, 40.955162, 22.579144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148209, 41.395691, 23.058073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333015, 41.067356, 22.923756>,  <38.443901, 40.870354, 22.843164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333015, 41.067356, 22.923756>,  <38.148209, 41.395691, 23.058073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333015, 41.067356, 22.923756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786455, 0.554207, -0.272659,
		0.409910, -0.138114, 0.901609,
		0.462020, -0.820840, -0.335795,
		38.471622, 40.821102, 22.823017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880001, 41.441429, 23.260361>,  <38.148209, 41.395691, 23.058073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880001, 41.441429, 23.260361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891403, 41.196354, 22.944437>,  <38.898243, 41.049309, 22.754883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891403, 41.196354, 22.944437>,  <38.880001, 41.441429, 23.260361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891403, 41.196354, 22.944437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742225, 0.542214, -0.393834,
		0.669544, -0.574989, 0.470212,
		0.028505, -0.612693, -0.789807,
		38.899956, 41.012547, 22.707495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557755, 41.461708, 23.120962>,  <38.880001, 41.441429, 23.260361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557755, 41.461708, 23.120962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373234, 41.308292, 22.800938>,  <39.262524, 41.216244, 22.608923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373234, 41.308292, 22.800938>,  <39.557755, 41.461708, 23.120962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373234, 41.308292, 22.800938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764801, 0.285216, -0.577695,
		0.449760, -0.878379, 0.161762,
		-0.461298, -0.383540, -0.800063,
		39.234844, 41.193230, 22.560919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037868, 41.108765, 22.684469>,  <39.557755, 41.461708, 23.120962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037868, 41.108765, 22.684469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729164, 41.192822, 22.444397>,  <39.543941, 41.243256, 22.300354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729164, 41.192822, 22.444397>,  <40.037868, 41.108765, 22.684469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729164, 41.192822, 22.444397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630269, 0.378186, -0.678038,
		0.084495, -0.901562, -0.424319,
		-0.771765, 0.210145, -0.600182,
		39.497635, 41.255863, 22.264343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172676, 40.889324, 21.979286>,  <40.037868, 41.108765, 22.684469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172676, 40.889324, 21.979286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899963, 41.173149, 21.908070>,  <39.736336, 41.343445, 21.865339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899963, 41.173149, 21.908070>,  <40.172676, 40.889324, 21.979286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899963, 41.173149, 21.908070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549511, 0.336064, -0.764917,
		-0.482925, -0.619338, -0.619034,
		-0.681777, 0.709564, -0.178040,
		39.695431, 41.386017, 21.854658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014977, 40.798203, 21.288992>,  <40.172676, 40.889324, 21.979286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014977, 40.798203, 21.288992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902695, 41.175606, 21.359425>,  <39.835327, 41.402046, 21.401684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902695, 41.175606, 21.359425>,  <40.014977, 40.798203, 21.288992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902695, 41.175606, 21.359425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365459, 0.274710, -0.889367,
		-0.887493, -0.185298, -0.421924,
		-0.280705, 0.943504, 0.176084,
		39.818481, 41.458656, 21.412251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821430, 41.028603, 20.620104>,  <40.014977, 40.798203, 21.288992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821430, 41.028603, 20.620104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.836552, 41.365631, 20.835005>,  <39.845627, 41.567848, 20.963945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.836552, 41.365631, 20.835005>,  <39.821430, 41.028603, 20.620104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836552, 41.365631, 20.835005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330734, 0.496785, -0.802384,
		-0.942966, 0.208023, -0.259886,
		0.037807, 0.842574, 0.537252,
		39.847893, 41.618404, 20.996180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309418, 41.559212, 20.404448>,  <39.821430, 41.028603, 20.620104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309418, 41.559212, 20.404448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614365, 41.754841, 20.573965>,  <39.797333, 41.872219, 20.675674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614365, 41.754841, 20.573965>,  <39.309418, 41.559212, 20.404448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614365, 41.754841, 20.573965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349971, 0.239262, -0.905690,
		-0.544344, 0.838786, 0.011246,
		0.762371, 0.489071, 0.423792,
		39.843075, 41.901562, 20.701103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296761, 42.175571, 20.065128>,  <39.309418, 41.559212, 20.404448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296761, 42.175571, 20.065128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654861, 42.111073, 20.231272>,  <39.869720, 42.072372, 20.330957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654861, 42.111073, 20.231272>,  <39.296761, 42.175571, 20.065128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654861, 42.111073, 20.231272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442181, 0.436118, -0.783758,
		-0.054763, 0.885324, 0.461738,
		0.895253, -0.161251, 0.415357,
		39.923439, 42.062698, 20.355879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765614, 42.585949, 19.812469>,  <39.296761, 42.175571, 20.065128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765614, 42.585949, 19.812469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056923, 42.365429, 19.975285>,  <40.231709, 42.233116, 20.072973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056923, 42.365429, 19.975285>,  <39.765614, 42.585949, 19.812469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056923, 42.365429, 19.975285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677400, 0.489311, -0.549276,
		0.103647, 0.675754, 0.729804,
		0.728277, -0.551300, 0.407040,
		40.275406, 42.200039, 20.097397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271938, 43.171131, 20.172340>,  <39.765614, 42.585949, 19.812469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271938, 43.171131, 20.172340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405079, 42.849941, 19.974575>,  <40.484962, 42.657227, 19.855917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405079, 42.849941, 19.974575>,  <40.271938, 43.171131, 20.172340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405079, 42.849941, 19.974575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665693, 0.571434, -0.479912,
		0.667881, -0.169388, 0.724736,
		0.332847, -0.802976, -0.494411,
		40.504932, 42.609047, 19.826252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722481, 43.485100, 19.633724>,  <40.271938, 43.171131, 20.172340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722481, 43.485100, 19.633724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776237, 43.111813, 19.500437>,  <40.808491, 42.887840, 19.420464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776237, 43.111813, 19.500437>,  <40.722481, 43.485100, 19.633724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776237, 43.111813, 19.500437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436889, 0.357626, -0.825368,
		0.889419, -0.034654, 0.455777,
		0.134395, -0.933222, -0.333219,
		40.816555, 42.831844, 19.400471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223167, 43.446621, 20.136507>,  <40.722481, 43.485100, 19.633724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223167, 43.446621, 20.136507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606400, 43.551437, 20.090157>,  <41.836338, 43.614326, 20.062346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606400, 43.551437, 20.090157>,  <41.223167, 43.446621, 20.136507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606400, 43.551437, 20.090157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127571, -0.028008, 0.991434,
		0.256548, -0.964651, -0.060263,
		0.958076, 0.262038, -0.115876,
		41.893822, 43.630047, 20.055393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820900, 42.987450, 20.488585>,  <41.223167, 43.446621, 20.136507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820900, 42.987450, 20.488585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898308, 43.379845, 20.482716>,  <41.944752, 43.615280, 20.479195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898308, 43.379845, 20.482716>,  <41.820900, 42.987450, 20.488585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898308, 43.379845, 20.482716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129272, 0.040320, 0.990789,
		0.972542, -0.189845, 0.134616,
		0.193524, 0.980986, -0.014671,
		41.956364, 43.674141, 20.478313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310448, 43.076717, 20.975882>,  <41.820900, 42.987450, 20.488585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310448, 43.076717, 20.975882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133579, 43.432415, 20.928995>,  <42.027458, 43.645832, 20.900864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133579, 43.432415, 20.928995>,  <42.310448, 43.076717, 20.975882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133579, 43.432415, 20.928995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318549, -0.033526, 0.947313,
		0.838459, 0.456211, 0.298090,
		-0.442169, 0.889240, -0.117215,
		42.000927, 43.699188, 20.893831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530777, 43.562386, 21.434168>,  <42.310448, 43.076717, 20.975882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530777, 43.562386, 21.434168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156719, 43.669880, 21.341825>,  <41.932285, 43.734375, 21.286421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156719, 43.669880, 21.341825>,  <42.530777, 43.562386, 21.434168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156719, 43.669880, 21.341825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246167, -0.024264, 0.968924,
		0.254781, 0.962909, 0.088844,
		-0.935141, 0.268734, -0.230854,
		41.876179, 43.750500, 21.272570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348274, 43.945152, 21.950800>,  <42.530777, 43.562386, 21.434168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348274, 43.945152, 21.950800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006111, 43.826729, 21.780794>,  <41.800816, 43.755676, 21.678791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006111, 43.826729, 21.780794>,  <42.348274, 43.945152, 21.950800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006111, 43.826729, 21.780794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446813, 0.006712, 0.894602,
		-0.261999, 0.955147, -0.138022,
		-0.855403, -0.296055, -0.425013,
		41.749489, 43.737911, 21.653290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766228, 44.396240, 22.055971>,  <42.348274, 43.945152, 21.950800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766228, 44.396240, 22.055971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591774, 44.045109, 21.976767>,  <41.487103, 43.834431, 21.929243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591774, 44.045109, 21.976767>,  <41.766228, 44.396240, 22.055971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591774, 44.045109, 21.976767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402154, -0.006718, 0.915547,
		-0.805021, 0.478934, -0.350091,
		-0.436135, -0.877825, -0.198013,
		41.460934, 43.781761, 21.917362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133274, 44.384998, 22.329844>,  <41.766228, 44.396240, 22.055971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133274, 44.384998, 22.329844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162689, 43.991676, 22.263266>,  <41.180336, 43.755684, 22.223318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162689, 43.991676, 22.263266>,  <41.133274, 44.384998, 22.329844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162689, 43.991676, 22.263266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607232, -0.176541, 0.774663,
		-0.791114, 0.044107, -0.610076,
		0.073536, -0.983305, -0.166447,
		41.184750, 43.696686, 22.213331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512741, 44.269520, 22.413631>,  <41.133274, 44.384998, 22.329844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512741, 44.269520, 22.413631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671032, 43.904655, 22.456268>,  <40.766006, 43.685738, 22.481850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671032, 43.904655, 22.456268>,  <40.512741, 44.269520, 22.413631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671032, 43.904655, 22.456268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638783, -0.190005, 0.745557,
		-0.659814, -0.363129, -0.657863,
		0.395731, -0.912160, 0.106593,
		40.789753, 43.631008, 22.488247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874519, 43.669357, 22.451702>,  <40.512741, 44.269520, 22.413631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874519, 43.669357, 22.451702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208496, 43.528851, 22.621164>,  <40.408882, 43.444546, 22.722841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208496, 43.528851, 22.621164>,  <39.874519, 43.669357, 22.451702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208496, 43.528851, 22.621164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508162, -0.196518, 0.838542,
		-0.211313, -0.915412, -0.342590,
		0.834936, -0.351286, 0.423650,
		40.458977, 43.423470, 22.748260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708851, 42.926540, 22.708458>,  <39.874519, 43.669357, 22.451702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708851, 42.926540, 22.708458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048542, 43.005154, 22.904491>,  <40.252357, 43.052322, 23.022112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048542, 43.005154, 22.904491>,  <39.708851, 42.926540, 22.708458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048542, 43.005154, 22.904491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405497, -0.351743, 0.843712,
		0.338204, -0.915233, -0.219015,
		0.849229, 0.196536, 0.490085,
		40.303310, 43.064114, 23.051517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890163, 42.227478, 23.107098>,  <39.708851, 42.926540, 22.708458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890163, 42.227478, 23.107098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085766, 42.539341, 23.263561>,  <40.203125, 42.726460, 23.357439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085766, 42.539341, 23.263561>,  <39.890163, 42.227478, 23.107098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085766, 42.539341, 23.263561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291778, -0.276398, 0.915680,
		0.822036, -0.561900, 0.092329,
		0.489001, 0.779662, 0.391160,
		40.232468, 42.773239, 23.380909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316826, 41.940105, 23.600098>,  <39.890163, 42.227478, 23.107098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316826, 41.940105, 23.600098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274231, 42.326733, 23.693394>,  <40.248672, 42.558708, 23.749371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274231, 42.326733, 23.693394>,  <40.316826, 41.940105, 23.600098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274231, 42.326733, 23.693394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125361, -0.245753, 0.961192,
		0.986380, 0.073114, 0.147339,
		-0.106486, 0.966571, 0.233241,
		40.242287, 42.616703, 23.763367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740646, 41.999409, 24.237543>,  <40.316826, 41.940105, 23.600098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740646, 41.999409, 24.237543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490807, 42.311749, 24.232677>,  <40.340904, 42.499153, 24.229757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490807, 42.311749, 24.232677>,  <40.740646, 41.999409, 24.237543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490807, 42.311749, 24.232677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327190, -0.247510, 0.911968,
		0.709099, 0.573596, 0.410082,
		-0.624600, 0.780850, -0.012166,
		40.303425, 42.546005, 24.229027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880527, 42.428360, 24.856192>,  <40.740646, 41.999409, 24.237543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880527, 42.428360, 24.856192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508484, 42.520905, 24.742096>,  <40.285255, 42.576431, 24.673639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508484, 42.520905, 24.742096>,  <40.880527, 42.428360, 24.856192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508484, 42.520905, 24.742096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327872, -0.173110, 0.928726,
		0.165494, 0.957343, 0.236869,
		-0.930114, 0.231362, -0.285237,
		40.229450, 42.590313, 24.656525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549267, 42.584732, 25.467796>,  <40.880527, 42.428360, 24.856192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549267, 42.584732, 25.467796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231705, 42.536648, 25.229382>,  <40.041168, 42.507797, 25.086332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231705, 42.536648, 25.229382>,  <40.549267, 42.584732, 25.467796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231705, 42.536648, 25.229382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539548, -0.312696, 0.781735,
		-0.280351, 0.942216, 0.183392,
		-0.793909, -0.120211, -0.596036,
		39.993530, 42.500584, 25.050571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006996, 42.929482, 25.764959>,  <40.549267, 42.584732, 25.467796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006996, 42.929482, 25.764959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848820, 42.656860, 25.518673>,  <39.753914, 42.493286, 25.370901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848820, 42.656860, 25.518673>,  <40.006996, 42.929482, 25.764959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848820, 42.656860, 25.518673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463169, -0.430912, 0.774461,
		-0.793158, 0.591435, -0.145275,
		-0.395443, -0.681557, -0.615716,
		39.730186, 42.452393, 25.333958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214512, 42.885986, 25.849686>,  <40.006996, 42.929482, 25.764959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214512, 42.885986, 25.849686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358562, 42.538799, 25.712894>,  <39.444992, 42.330486, 25.630819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358562, 42.538799, 25.712894>,  <39.214512, 42.885986, 25.849686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358562, 42.538799, 25.712894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485765, -0.487423, 0.725570,
		-0.796457, -0.095174, -0.597159,
		0.360124, -0.867963, -0.341979,
		39.466599, 42.278412, 25.610300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658478, 42.449600, 25.928495>,  <39.214512, 42.885986, 25.849686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658478, 42.449600, 25.928495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947754, 42.184963, 25.849207>,  <39.121319, 42.026180, 25.801634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947754, 42.184963, 25.849207>,  <38.658478, 42.449600, 25.928495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947754, 42.184963, 25.849207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439670, -0.662356, 0.606609,
		-0.532619, -0.351543, -0.769892,
		0.723192, -0.661590, -0.198221,
		39.164711, 41.986485, 25.789742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323841, 41.959278, 25.629982>,  <38.658478, 42.449600, 25.928495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323841, 41.959278, 25.629982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663918, 41.797974, 25.765360>,  <38.867966, 41.701191, 25.846586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663918, 41.797974, 25.765360>,  <38.323841, 41.959278, 25.629982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663918, 41.797974, 25.765360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523188, -0.718823, 0.457785,
		0.058674, -0.566278, -0.822124,
		0.850195, -0.403265, 0.338446,
		38.918976, 41.676994, 25.866894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186485, 41.310162, 25.475506>,  <38.323841, 41.959278, 25.629982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186485, 41.310162, 25.475506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464813, 41.323132, 25.762499>,  <38.631809, 41.330914, 25.934694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464813, 41.323132, 25.762499>,  <38.186485, 41.310162, 25.475506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464813, 41.323132, 25.762499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498407, -0.697490, 0.514876,
		0.517130, -0.715861, -0.469169,
		0.695821, 0.032421, 0.717484,
		38.673561, 41.332859, 25.977743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211510, 40.624905, 25.738964>,  <38.186485, 41.310162, 25.475506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211510, 40.624905, 25.738964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410332, 40.825859, 26.021959>,  <38.529625, 40.946430, 26.191757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410332, 40.825859, 26.021959>,  <38.211510, 40.624905, 25.738964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410332, 40.825859, 26.021959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353087, -0.627688, 0.693785,
		0.792630, -0.594657, -0.134612,
		0.497058, 0.502385, 0.707490,
		38.559448, 40.976574, 26.234207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431454, 40.122105, 26.315557>,  <38.211510, 40.624905, 25.738964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431454, 40.122105, 26.315557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394886, 40.497726, 26.448111>,  <38.372944, 40.723099, 26.527643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394886, 40.497726, 26.448111>,  <38.431454, 40.122105, 26.315557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394886, 40.497726, 26.448111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532090, -0.327354, 0.780845,
		0.841737, -0.104938, 0.529591,
		-0.091424, 0.939057, 0.331382,
		38.367458, 40.779442, 26.547525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677788, 40.140026, 26.916334>,  <38.431454, 40.122105, 26.315557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677788, 40.140026, 26.916334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418686, 40.444607, 26.926167>,  <38.263226, 40.627357, 26.932066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418686, 40.444607, 26.926167>,  <38.677788, 40.140026, 26.916334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418686, 40.444607, 26.926167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463466, -0.419458, 0.780547,
		0.604663, 0.494207, 0.624613,
		-0.647751, 0.761455, 0.024582,
		38.224361, 40.673042, 26.933540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676800, 40.368103, 27.622309>,  <38.677788, 40.140026, 26.916334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676800, 40.368103, 27.622309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319241, 40.495716, 27.496349>,  <38.104706, 40.572285, 27.420774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319241, 40.495716, 27.496349>,  <38.676800, 40.368103, 27.622309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319241, 40.495716, 27.496349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429497, -0.408398, 0.805446,
		0.128363, 0.855235, 0.502091,
		-0.893899, 0.319036, -0.314898,
		38.051071, 40.591427, 27.401880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398430, 40.755852, 28.234270>,  <38.676800, 40.368103, 27.622309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398430, 40.755852, 28.234270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081921, 40.699657, 27.996227>,  <37.892017, 40.665943, 27.853401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081921, 40.699657, 27.996227>,  <38.398430, 40.755852, 28.234270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081921, 40.699657, 27.996227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561978, -0.216479, 0.798322,
		-0.240979, 0.966127, 0.092345,
		-0.791271, -0.140483, -0.595109,
		37.844540, 40.657513, 27.817696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884827, 41.170444, 28.559904>,  <38.398430, 40.755852, 28.234270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884827, 41.170444, 28.559904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711056, 40.902920, 28.318588>,  <37.606792, 40.742405, 28.173800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711056, 40.902920, 28.318588>,  <37.884827, 41.170444, 28.559904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711056, 40.902920, 28.318588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704846, -0.164569, 0.690007,
		-0.560770, 0.724985, -0.399918,
		-0.434431, -0.668816, -0.603288,
		37.580727, 40.702274, 28.137602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130260, 41.298512, 28.518940>,  <37.884827, 41.170444, 28.559904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130260, 41.298512, 28.518940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159748, 40.915375, 28.407875>,  <37.177441, 40.685493, 28.341236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159748, 40.915375, 28.407875>,  <37.130260, 41.298512, 28.518940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159748, 40.915375, 28.407875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705547, -0.246861, 0.664276,
		-0.704818, 0.146934, -0.694004,
		0.073718, -0.957846, -0.277661,
		37.181862, 40.628021, 28.324577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464237, 41.134815, 28.443544>,  <37.130260, 41.298512, 28.518940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464237, 41.134815, 28.443544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650681, 40.780956, 28.448271>,  <36.762547, 40.568642, 28.451107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650681, 40.780956, 28.448271>,  <36.464237, 41.134815, 28.443544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650681, 40.780956, 28.448271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542255, -0.275102, 0.793901,
		-0.699075, -0.376448, -0.607932,
		0.466106, -0.884650, 0.011814,
		36.790512, 40.515560, 28.451815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924610, 40.650856, 28.417900>,  <36.464237, 41.134815, 28.443544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924610, 40.650856, 28.417900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235821, 40.454460, 28.574667>,  <36.422546, 40.336624, 28.668726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235821, 40.454460, 28.574667>,  <35.924610, 40.650856, 28.417900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235821, 40.454460, 28.574667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603009, -0.408682, 0.685098,
		-0.176206, -0.769356, -0.614038,
		0.778030, -0.490989, 0.391917,
		36.469231, 40.307163, 28.692242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620560, 39.921898, 28.514339>,  <35.924610, 40.650856, 28.417900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620560, 39.921898, 28.514339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937332, 39.964294, 28.754877>,  <36.127396, 39.989731, 28.899200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937332, 39.964294, 28.754877>,  <35.620560, 39.921898, 28.514339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937332, 39.964294, 28.754877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519721, -0.399962, 0.754931,
		0.320530, -0.910383, -0.261657,
		0.791929, 0.105989, 0.601345,
		36.174911, 39.996090, 28.935280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597065, 39.325977, 28.983105>,  <35.620560, 39.921898, 28.514339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597065, 39.325977, 28.983105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847233, 39.591240, 29.147579>,  <35.997334, 39.750397, 29.246264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847233, 39.591240, 29.147579>,  <35.597065, 39.325977, 28.983105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847233, 39.591240, 29.147579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299526, -0.282558, 0.911288,
		0.720510, -0.693099, 0.021915,
		0.625420, 0.663156, 0.411187,
		36.034859, 39.790188, 29.270935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873791, 38.949696, 29.494411>,  <35.597065, 39.325977, 28.983105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873791, 38.949696, 29.494411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924423, 39.334297, 29.591974>,  <35.954803, 39.565056, 29.650513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924423, 39.334297, 29.591974>,  <35.873791, 38.949696, 29.494411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924423, 39.334297, 29.591974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344688, -0.187926, 0.919714,
		0.930143, -0.200494, 0.307630,
		0.126586, 0.961502, 0.243906,
		35.962399, 39.622749, 29.665146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127796, 38.988949, 30.155687>,  <35.873791, 38.949696, 29.494411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127796, 38.988949, 30.155687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958813, 39.349529, 30.117926>,  <35.857422, 39.565880, 30.095268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958813, 39.349529, 30.117926>,  <36.127796, 38.988949, 30.155687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958813, 39.349529, 30.117926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519632, -0.155538, 0.840113,
		0.742640, 0.403965, 0.534132,
		-0.422454, 0.901454, -0.094405,
		35.832077, 39.619965, 30.089603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125332, 39.402466, 30.832508>,  <36.127796, 38.988949, 30.155687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125332, 39.402466, 30.832508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829502, 39.558002, 30.612751>,  <35.652004, 39.651325, 30.480896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829502, 39.558002, 30.612751>,  <36.125332, 39.402466, 30.832508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829502, 39.558002, 30.612751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600536, -0.012611, 0.799498,
		0.303948, 0.921219, 0.242839,
		-0.739576, 0.388840, -0.549392,
		35.607628, 39.674656, 30.447933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752670, 39.568581, 31.288332>,  <36.125332, 39.402466, 30.832508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752670, 39.568581, 31.288332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505196, 39.635151, 30.981211>,  <35.356709, 39.675095, 30.796938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505196, 39.635151, 30.981211>,  <35.752670, 39.568581, 31.288332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505196, 39.635151, 30.981211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778079, 0.005411, 0.628143,
		0.108694, 0.986039, 0.126145,
		-0.618691, 0.166426, -0.767805,
		35.319588, 39.685078, 30.750870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494537, 40.252274, 31.309198>,  <35.752670, 39.568581, 31.288332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494537, 40.252274, 31.309198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237572, 40.033154, 31.094830>,  <35.083393, 39.901680, 30.966208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237572, 40.033154, 31.094830>,  <35.494537, 40.252274, 31.309198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237572, 40.033154, 31.094830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693601, 0.118213, 0.710594,
		-0.325911, 0.828215, -0.455898,
		-0.642417, -0.547801, -0.535924,
		35.044846, 39.868813, 30.934052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905659, 40.658276, 31.333832>,  <35.494537, 40.252274, 31.309198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905659, 40.658276, 31.333832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804626, 40.282959, 31.239338>,  <34.744007, 40.057770, 31.182642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804626, 40.282959, 31.239338>,  <34.905659, 40.658276, 31.333832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804626, 40.282959, 31.239338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671735, -0.005679, 0.740770,
		-0.696402, 0.345790, -0.628851,
		-0.252579, -0.938295, -0.236234,
		34.728851, 40.001469, 31.168468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215176, 40.652042, 31.349224>,  <34.905659, 40.658276, 31.333832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215176, 40.652042, 31.349224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289906, 40.261967, 31.396723>,  <34.334743, 40.027920, 31.425222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289906, 40.261967, 31.396723>,  <34.215176, 40.652042, 31.349224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289906, 40.261967, 31.396723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651483, -0.032516, 0.757966,
		-0.735300, -0.218968, -0.641395,
		0.186826, -0.975190, 0.118745,
		34.345955, 39.969410, 31.432346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591175, 40.304466, 31.352861>,  <34.215176, 40.652042, 31.349224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591175, 40.304466, 31.352861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839314, 40.036053, 31.515289>,  <33.988197, 39.875004, 31.612745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839314, 40.036053, 31.515289>,  <33.591175, 40.304466, 31.352861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839314, 40.036053, 31.515289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689825, -0.220405, 0.689610,
		-0.373251, -0.707911, -0.599622,
		0.620343, -0.671032, 0.406068,
		34.025417, 39.834743, 31.637110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173641, 39.588161, 31.580997>,  <33.591175, 40.304466, 31.352861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173641, 39.588161, 31.580997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511353, 39.596706, 31.795189>,  <33.713978, 39.601833, 31.923704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511353, 39.596706, 31.795189>,  <33.173641, 39.588161, 31.580997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511353, 39.596706, 31.795189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490261, -0.372732, 0.787855,
		0.216417, -0.927693, -0.304219,
		0.844280, 0.021358, 0.535477,
		33.764637, 39.603115, 31.955832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271862, 38.968754, 31.846972>,  <33.173641, 39.588161, 31.580997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271862, 38.968754, 31.846972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487476, 39.195511, 32.096153>,  <33.616844, 39.331566, 32.245663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487476, 39.195511, 32.096153>,  <33.271862, 38.968754, 31.846972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487476, 39.195511, 32.096153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219934, -0.619215, 0.753792,
		0.813061, -0.543331, -0.209101,
		0.539037, 0.566890, 0.622957,
		33.649189, 39.365578, 32.283039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713837, 38.517628, 32.164154>,  <33.271862, 38.968754, 31.846972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713837, 38.517628, 32.164154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669254, 38.826035, 32.414948>,  <33.642506, 39.011078, 32.565422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669254, 38.826035, 32.414948>,  <33.713837, 38.517628, 32.164154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669254, 38.826035, 32.414948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344669, -0.621741, 0.703307,
		0.932085, -0.137716, 0.335041,
		-0.111452, 0.771020, 0.626982,
		33.635818, 39.057339, 32.603043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784809, 38.262726, 32.819416>,  <33.713837, 38.517628, 32.164154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784809, 38.262726, 32.819416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673000, 38.634453, 32.915939>,  <33.605915, 38.857491, 32.973854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673000, 38.634453, 32.915939>,  <33.784809, 38.262726, 32.819416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673000, 38.634453, 32.915939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288939, -0.321096, 0.901893,
		0.915631, 0.182379, 0.358272,
		-0.279526, 0.929320, 0.241309,
		33.589142, 38.913250, 32.988331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009041, 38.311272, 33.442665>,  <33.784809, 38.262726, 32.819416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009041, 38.311272, 33.442665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710144, 38.572300, 33.392410>,  <33.530807, 38.728916, 33.362259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710144, 38.572300, 33.392410>,  <34.009041, 38.311272, 33.442665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710144, 38.572300, 33.392410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413162, -0.308120, 0.856948,
		0.520507, 0.692254, 0.499856,
		-0.747241, 0.652569, -0.125635,
		33.485973, 38.768070, 33.354721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103519, 38.807922, 34.016331>,  <34.009041, 38.311272, 33.442665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103519, 38.807922, 34.016331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733456, 38.757629, 33.873070>,  <33.511417, 38.727455, 33.787113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733456, 38.757629, 33.873070>,  <34.103519, 38.807922, 34.016331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733456, 38.757629, 33.873070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334724, -0.174730, 0.925975,
		-0.179004, 0.976556, 0.119568,
		-0.925158, -0.125731, -0.358154,
		33.455910, 38.719910, 33.765625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891972, 38.601215, 34.012978>,  <34.103519, 38.807922, 34.016331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891972, 38.601215, 34.012978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139755, 38.643642, 34.324112>,  <35.288425, 38.669098, 34.510792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139755, 38.643642, 34.324112>,  <34.891972, 38.601215, 34.012978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139755, 38.643642, 34.324112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745373, 0.231475, -0.625170,
		-0.246357, 0.967042, 0.064331,
		0.619457, 0.106064, 0.777833,
		35.325592, 38.675461, 34.557461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455891, 39.066479, 33.776951>,  <34.891972, 38.601215, 34.012978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455891, 39.066479, 33.776951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629612, 38.907558, 34.100315>,  <35.733845, 38.812206, 34.294334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629612, 38.907558, 34.100315>,  <35.455891, 39.066479, 33.776951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629612, 38.907558, 34.100315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900733, 0.183754, -0.393591,
		0.007824, 0.899104, 0.437666,
		0.434302, -0.397300, 0.808415,
		35.759903, 38.788368, 34.342838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918236, 39.587555, 34.050362>,  <35.455891, 39.066479, 33.776951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918236, 39.587555, 34.050362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052120, 39.235004, 34.183712>,  <36.132450, 39.023476, 34.263721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052120, 39.235004, 34.183712>,  <35.918236, 39.587555, 34.050362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052120, 39.235004, 34.183712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915979, 0.221248, -0.334712,
		0.221248, 0.417401, 0.881377,
		0.334712, -0.881377, 0.333380,
		36.152534, 38.970592, 34.283726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466469, 39.698704, 34.442184>,  <35.918236, 39.587555, 34.050362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466469, 39.698704, 34.442184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526123, 39.322651, 34.319607>,  <36.561916, 39.097019, 34.246059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526123, 39.322651, 34.319607>,  <36.466469, 39.698704, 34.442184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526123, 39.322651, 34.319607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937447, 0.233017, -0.258645,
		0.314567, -0.248702, 0.916076,
		0.149136, -0.940133, -0.306445,
		36.570866, 39.040611, 34.227673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139755, 39.640755, 34.512779>,  <36.466469, 39.698704, 34.442184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139755, 39.640755, 34.512779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051174, 39.330738, 34.276047>,  <36.998024, 39.144730, 34.134007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051174, 39.330738, 34.276047>,  <37.139755, 39.640755, 34.512779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051174, 39.330738, 34.276047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868577, 0.119137, -0.481021,
		0.443321, -0.620577, 0.646800,
		-0.221453, -0.775042, -0.591835,
		36.984737, 39.098225, 34.098495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681358, 39.305862, 34.431686>,  <37.139755, 39.640755, 34.512779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681358, 39.305862, 34.431686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484528, 39.133228, 34.129272>,  <37.366428, 39.029648, 33.947823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484528, 39.133228, 34.129272>,  <37.681358, 39.305862, 34.431686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484528, 39.133228, 34.129272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857281, -0.089181, -0.507066,
		0.151420, -0.897652, 0.413876,
		-0.492079, -0.431587, -0.756036,
		37.336903, 39.003754, 33.902462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079823, 38.727062, 34.222115>,  <37.681358, 39.305862, 34.431686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079823, 38.727062, 34.222115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837090, 38.812622, 33.915913>,  <37.691452, 38.863960, 33.732189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837090, 38.812622, 33.915913>,  <38.079823, 38.727062, 34.222115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837090, 38.812622, 33.915913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785534, 0.014508, -0.618649,
		-0.121226, -0.976747, -0.176833,
		-0.606828, 0.213905, -0.765509,
		37.655041, 38.876793, 33.686260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147556, 38.238804, 33.601864>,  <38.079823, 38.727062, 34.222115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147556, 38.238804, 33.601864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005333, 38.587929, 33.468136>,  <37.919998, 38.797405, 33.387897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005333, 38.587929, 33.468136>,  <38.147556, 38.238804, 33.601864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005333, 38.587929, 33.468136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623841, -0.044744, -0.780269,
		-0.695990, -0.485994, -0.528590,
		-0.355555, 0.872816, -0.334325,
		37.898666, 38.849773, 33.367840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326828, 38.248409, 32.860027>,  <38.147556, 38.238804, 33.601864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326828, 38.248409, 32.860027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219780, 38.633434, 32.877193>,  <38.155552, 38.864449, 32.887493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219780, 38.633434, 32.877193>,  <38.326828, 38.248409, 32.860027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219780, 38.633434, 32.877193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659831, 0.215547, -0.719836,
		-0.702141, -0.164328, -0.692817,
		-0.267624, 0.962567, 0.042915,
		38.139492, 38.922203, 32.890068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132851, 38.501659, 32.145416>,  <38.326828, 38.248409, 32.860027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132851, 38.501659, 32.145416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240818, 38.822857, 32.357964>,  <38.305599, 39.015575, 32.485493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240818, 38.822857, 32.357964>,  <38.132851, 38.501659, 32.145416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240818, 38.822857, 32.357964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639936, 0.262739, -0.722115,
		-0.719464, 0.534948, -0.442947,
		0.269915, 0.802993, 0.531364,
		38.321793, 39.063755, 32.517372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953007, 39.087368, 31.776386>,  <38.132851, 38.501659, 32.145416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953007, 39.087368, 31.776386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225113, 39.216976, 32.039371>,  <38.388374, 39.294739, 32.197163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225113, 39.216976, 32.039371>,  <37.953007, 39.087368, 31.776386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225113, 39.216976, 32.039371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497555, 0.454528, -0.738813,
		-0.538224, 0.829709, 0.147981,
		0.680261, 0.324018, 0.657463,
		38.429192, 39.314182, 32.236610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183506, 39.647423, 31.445635>,  <37.953007, 39.087368, 31.776386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183506, 39.647423, 31.445635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479877, 39.626049, 31.713415>,  <38.657700, 39.613224, 31.874083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479877, 39.626049, 31.713415>,  <38.183506, 39.647423, 31.445635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479877, 39.626049, 31.713415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608851, 0.474111, -0.636018,
		-0.283407, 0.878842, 0.383819,
		0.740932, -0.053437, 0.669450,
		38.702156, 39.610020, 31.914249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376808, 40.334946, 31.709654>,  <38.183506, 39.647423, 31.445635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376808, 40.334946, 31.709654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678589, 40.072563, 31.700594>,  <38.859657, 39.915134, 31.695158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678589, 40.072563, 31.700594>,  <38.376808, 40.334946, 31.709654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678589, 40.072563, 31.700594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520606, 0.619082, -0.587968,
		0.399706, 0.431804, 0.808567,
		0.754456, -0.655959, -0.022651,
		38.904926, 39.875774, 31.693798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876667, 40.716518, 31.818979>,  <38.376808, 40.334946, 31.709654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876667, 40.716518, 31.818979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069202, 40.413769, 31.642139>,  <39.184723, 40.232121, 31.536036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069202, 40.413769, 31.642139>,  <38.876667, 40.716518, 31.818979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069202, 40.413769, 31.642139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515368, 0.652357, -0.555722,
		0.709019, 0.039646, 0.704074,
		0.481340, -0.756874, -0.442101,
		39.213604, 40.186707, 31.509508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447369, 40.942295, 31.673252>,  <38.876667, 40.716518, 31.818979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447369, 40.942295, 31.673252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467640, 40.622505, 31.433828>,  <39.479805, 40.430630, 31.290174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467640, 40.622505, 31.433828>,  <39.447369, 40.942295, 31.673252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467640, 40.622505, 31.433828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525852, 0.530884, -0.664561,
		0.849065, -0.281071, 0.447312,
		0.050682, -0.799475, -0.598557,
		39.482845, 40.382664, 31.254261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062412, 40.982353, 31.385212>,  <39.447369, 40.942295, 31.673252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062412, 40.982353, 31.385212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860035, 40.767757, 31.115040>,  <39.738609, 40.639000, 30.952936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860035, 40.767757, 31.115040>,  <40.062412, 40.982353, 31.385212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860035, 40.767757, 31.115040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459556, 0.495007, -0.737412,
		0.729955, -0.683484, -0.003897,
		-0.505939, -0.536487, -0.675432,
		39.708252, 40.606812, 30.912411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516991, 40.643726, 31.012407>,  <40.062412, 40.982353, 31.385212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516991, 40.643726, 31.012407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208416, 40.619419, 30.759048>,  <40.023270, 40.604836, 30.607033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208416, 40.619419, 30.759048>,  <40.516991, 40.643726, 31.012407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208416, 40.619419, 30.759048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600108, 0.261473, -0.755978,
		0.211553, -0.963296, -0.165244,
		-0.771438, -0.060765, -0.633397,
		39.976986, 40.601189, 30.569029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762211, 40.470253, 30.436125>,  <40.516991, 40.643726, 31.012407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762211, 40.470253, 30.436125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399113, 40.566170, 30.298431>,  <40.181255, 40.623718, 30.215815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399113, 40.566170, 30.298431>,  <40.762211, 40.470253, 30.436125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399113, 40.566170, 30.298431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408465, 0.318042, -0.855573,
		-0.095680, -0.917250, -0.386648,
		-0.907746, 0.239794, -0.344234,
		40.126789, 40.638107, 30.195162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565945, 40.111469, 29.865191>,  <40.762211, 40.470253, 30.436125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565945, 40.111469, 29.865191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346260, 40.445400, 29.850105>,  <40.214447, 40.645760, 29.841053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346260, 40.445400, 29.850105>,  <40.565945, 40.111469, 29.865191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346260, 40.445400, 29.850105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390334, 0.216365, -0.894889,
		-0.738919, -0.506208, -0.444693,
		-0.549216, 0.834829, -0.037714,
		40.181496, 40.695850, 29.838791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351593, 40.220627, 29.137079>,  <40.565945, 40.111469, 29.865191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351593, 40.220627, 29.137079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322189, 40.573826, 29.322512>,  <40.304546, 40.785744, 29.433771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322189, 40.573826, 29.322512>,  <40.351593, 40.220627, 29.137079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322189, 40.573826, 29.322512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455994, 0.443165, -0.771799,
		-0.886942, 0.154654, -0.435221,
		-0.073513, 0.882999, 0.463583,
		40.300137, 40.838726, 29.461586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913872, 40.698917, 28.689608>,  <40.351593, 40.220627, 29.137079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913872, 40.698917, 28.689608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141338, 40.936272, 28.917469>,  <40.277821, 41.078686, 29.054186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141338, 40.936272, 28.917469>,  <39.913872, 40.698917, 28.689608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141338, 40.936272, 28.917469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449433, 0.355883, -0.819364,
		-0.688931, 0.721969, -0.064308,
		0.568669, 0.593387, 0.569655,
		40.311939, 41.114288, 29.088366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767929, 41.471748, 28.501453>,  <39.913872, 40.698917, 28.689608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767929, 41.471748, 28.501453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118488, 41.310444, 28.606754>,  <40.328823, 41.213661, 28.669935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118488, 41.310444, 28.606754>,  <39.767929, 41.471748, 28.501453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118488, 41.310444, 28.606754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358841, 0.182265, -0.915430,
		0.321175, 0.896750, 0.304444,
		0.876402, -0.403260, 0.263252,
		40.381409, 41.189465, 28.685730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253162, 41.886395, 28.120169>,  <39.767929, 41.471748, 28.501453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253162, 41.886395, 28.120169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457775, 41.564079, 28.239529>,  <40.580544, 41.370689, 28.311144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457775, 41.564079, 28.239529>,  <40.253162, 41.886395, 28.120169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457775, 41.564079, 28.239529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643874, 0.129491, -0.754095,
		0.568998, 0.577878, 0.585063,
		0.511535, -0.805785, 0.298400,
		40.611237, 41.322342, 28.329048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021267, 42.110111, 28.140533>,  <40.253162, 41.886395, 28.120169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021267, 42.110111, 28.140533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994095, 41.714554, 28.087645>,  <40.977791, 41.477219, 28.055912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994095, 41.714554, 28.087645>,  <41.021267, 42.110111, 28.140533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994095, 41.714554, 28.087645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612263, 0.063319, -0.788115,
		0.787731, -0.134489, 0.601159,
		-0.067928, -0.988890, -0.132220,
		40.973717, 41.417889, 28.047979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645546, 41.821014, 27.933371>,  <41.021267, 42.110111, 28.140533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645546, 41.821014, 27.933371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388268, 41.550835, 27.789108>,  <41.233902, 41.388725, 27.702551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388268, 41.550835, 27.789108>,  <41.645546, 41.821014, 27.933371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388268, 41.550835, 27.789108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459582, 0.036193, -0.887398,
		0.612445, -0.736518, 0.287144,
		-0.643192, -0.675449, -0.360657,
		41.195309, 41.348202, 27.680912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073761, 41.286293, 27.483500>,  <41.645546, 41.821014, 27.933371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073761, 41.286293, 27.483500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697124, 41.230961, 27.360689>,  <41.471142, 41.197762, 27.287003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697124, 41.230961, 27.360689>,  <42.073761, 41.286293, 27.483500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697124, 41.230961, 27.360689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280859, 0.180437, -0.942635,
		0.185829, -0.973805, -0.131036,
		-0.941587, -0.138366, -0.307033,
		41.414646, 41.189461, 27.268581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204365, 40.858387, 26.788883>,  <42.073761, 41.286293, 27.483500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204365, 40.858387, 26.788883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844395, 41.029800, 26.821138>,  <41.628414, 41.132648, 26.840490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844395, 41.029800, 26.821138>,  <42.204365, 40.858387, 26.788883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844395, 41.029800, 26.821138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003774, 0.177261, -0.984157,
		-0.436037, -0.885967, -0.157904,
		-0.899921, 0.428533, 0.080636,
		41.574417, 41.158360, 26.845329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779842, 40.390831, 26.472515>,  <42.204365, 40.858387, 26.788883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779842, 40.390831, 26.472515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617786, 40.755424, 26.444063>,  <41.520554, 40.974182, 26.426992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617786, 40.755424, 26.444063>,  <41.779842, 40.390831, 26.472515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617786, 40.755424, 26.444063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361641, 0.088319, -0.928125,
		-0.839687, -0.401746, -0.365411,
		-0.405143, 0.911482, -0.071128,
		41.496243, 41.028870, 26.422726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581520, 40.421818, 25.719376>,  <41.779842, 40.390831, 26.472515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581520, 40.421818, 25.719376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540226, 40.804695, 25.827541>,  <41.515450, 41.034420, 25.892441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540226, 40.804695, 25.827541>,  <41.581520, 40.421818, 25.719376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540226, 40.804695, 25.827541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245614, 0.287980, -0.925603,
		-0.963855, -0.029138, -0.264830,
		-0.103237, 0.957193, 0.270414,
		41.509254, 41.091854, 25.908665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433434, 40.637550, 25.075747>,  <41.581520, 40.421818, 25.719376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433434, 40.637550, 25.075747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540890, 40.942314, 25.311485>,  <41.605362, 41.125172, 25.452929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540890, 40.942314, 25.311485>,  <41.433434, 40.637550, 25.075747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540890, 40.942314, 25.311485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478103, 0.425682, -0.768253,
		-0.836212, 0.488152, -0.249915,
		0.268640, 0.761907, 0.589347,
		41.621483, 41.170887, 25.488289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285252, 41.208855, 24.741913>,  <41.433434, 40.637550, 25.075747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285252, 41.208855, 24.741913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566467, 41.326595, 25.000860>,  <41.735199, 41.397240, 25.156229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566467, 41.326595, 25.000860>,  <41.285252, 41.208855, 24.741913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566467, 41.326595, 25.000860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584887, 0.278475, -0.761812,
		-0.404520, 0.914224, 0.023615,
		0.703044, 0.294356, 0.647367,
		41.777382, 41.414902, 25.195070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465542, 41.951096, 24.590595>,  <41.285252, 41.208855, 24.741913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465542, 41.951096, 24.590595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776108, 41.765278, 24.760952>,  <41.962448, 41.653790, 24.863167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776108, 41.765278, 24.760952>,  <41.465542, 41.951096, 24.590595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776108, 41.765278, 24.760952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592205, 0.306606, -0.745176,
		0.215584, 0.830779, 0.513156,
		0.776413, -0.464541, 0.425892,
		42.009033, 41.625916, 24.888720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974667, 42.346642, 24.402163>,  <41.465542, 41.951096, 24.590595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974667, 42.346642, 24.402163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176029, 42.027996, 24.536016>,  <42.296848, 41.836807, 24.616329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176029, 42.027996, 24.536016>,  <41.974667, 42.346642, 24.402163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176029, 42.027996, 24.536016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633602, 0.077020, -0.769816,
		0.587475, 0.599558, 0.543510,
		0.503410, -0.796617, 0.334634,
		42.327053, 41.789013, 24.636406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727356, 42.537743, 24.467199>,  <41.974667, 42.346642, 24.402163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727356, 42.537743, 24.467199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682568, 42.145287, 24.404179>,  <42.655693, 41.909813, 24.366365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682568, 42.145287, 24.404179>,  <42.727356, 42.537743, 24.467199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682568, 42.145287, 24.404179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647434, 0.048248, -0.760593,
		0.753851, -0.187172, 0.629822,
		-0.111974, -0.981142, -0.157554,
		42.648975, 41.850945, 24.356913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284130, 42.423542, 23.988739>,  <42.727356, 42.537743, 24.467199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284130, 42.423542, 23.988739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081108, 42.079399, 24.007381>,  <42.959293, 41.872913, 24.018568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081108, 42.079399, 24.007381>,  <43.284130, 42.423542, 23.988739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081108, 42.079399, 24.007381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399364, -0.282842, -0.872072,
		0.763475, -0.424012, 0.487154,
		-0.507557, -0.860357, 0.046607,
		42.928841, 41.821293, 24.021364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746639, 41.927376, 23.709118>,  <43.284130, 42.423542, 23.988739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746639, 41.927376, 23.709118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379642, 41.772701, 23.671833>,  <43.159447, 41.679897, 23.649462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379642, 41.772701, 23.671833>,  <43.746639, 41.927376, 23.709118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379642, 41.772701, 23.671833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250551, -0.379828, -0.890480,
		0.308932, -0.840360, 0.445372,
		-0.917488, -0.386687, -0.093212,
		43.104397, 41.656696, 23.643869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830311, 41.174629, 23.568138>,  <43.746639, 41.927376, 23.709118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830311, 41.174629, 23.568138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477356, 41.291306, 23.420458>,  <43.265583, 41.361313, 23.331850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477356, 41.291306, 23.420458>,  <43.830311, 41.174629, 23.568138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477356, 41.291306, 23.420458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179510, -0.516617, -0.837188,
		-0.434935, -0.804999, 0.403495,
		-0.882388, 0.291691, -0.369200,
		43.212639, 41.378815, 23.309698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766243, 40.664333, 22.889341>,  <43.830311, 41.174629, 23.568138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.766243, 40.664333, 22.889341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719128, 40.286144, 22.767874>,  <43.690857, 40.059231, 22.694994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719128, 40.286144, 22.767874>,  <43.766243, 40.664333, 22.889341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719128, 40.286144, 22.767874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172608, -0.281649, 0.943864,
		-0.977922, 0.163595, -0.130020,
		-0.117792, -0.945468, -0.303669,
		43.683788, 40.002502, 22.676773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172688, 40.370403, 23.172276>,  <43.766243, 40.664333, 22.889341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172688, 40.370403, 23.172276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399803, 40.054546, 23.079252>,  <43.536072, 39.865032, 23.023439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399803, 40.054546, 23.079252>,  <43.172688, 40.370403, 23.172276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399803, 40.054546, 23.079252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205952, -0.409798, 0.888622,
		-0.796991, -0.456658, -0.395308,
		0.567793, -0.789639, -0.232557,
		43.570141, 39.817654, 23.009485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738583, 39.761776, 23.315289>,  <43.172688, 40.370403, 23.172276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738583, 39.761776, 23.315289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116562, 39.631470, 23.302998>,  <43.343349, 39.553288, 23.295622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116562, 39.631470, 23.302998>,  <42.738583, 39.761776, 23.315289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116562, 39.631470, 23.302998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177255, -0.588575, 0.788771,
		-0.275037, -0.739905, -0.613918,
		0.944952, -0.325761, -0.030728,
		43.400047, 39.533741, 23.293779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776642, 38.994236, 23.257475>,  <42.738583, 39.761776, 23.315289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776642, 38.994236, 23.257475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127014, 39.103500, 23.416536>,  <43.337238, 39.169060, 23.511974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127014, 39.103500, 23.416536>,  <42.776642, 38.994236, 23.257475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127014, 39.103500, 23.416536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267863, -0.410165, 0.871788,
		0.401245, -0.870142, -0.286105,
		0.875929, 0.273163, 0.397655,
		43.389793, 39.185448, 23.535833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049965, 38.378262, 23.482141>,  <42.776642, 38.994236, 23.257475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049965, 38.378262, 23.482141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.235413, 38.671532, 23.681143>,  <43.346680, 38.847496, 23.800543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.235413, 38.671532, 23.681143>,  <43.049965, 38.378262, 23.482141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235413, 38.671532, 23.681143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247390, -0.432048, 0.867256,
		0.850799, -0.525150, -0.018923,
		0.463615, 0.733179, 0.497503,
		43.374496, 38.891487, 23.830393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.257454, 38.039444, 24.108000>,  <43.049965, 38.378262, 23.482141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.257454, 38.039444, 24.108000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321075, 38.413776, 24.233807>,  <43.359249, 38.638374, 24.309290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321075, 38.413776, 24.233807>,  <43.257454, 38.039444, 24.108000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321075, 38.413776, 24.233807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180260, -0.340744, 0.922713,
		0.970674, -0.090067, -0.222890,
		0.159055, 0.935832, 0.314516,
		43.368793, 38.694527, 24.328161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853611, 38.125233, 24.575567>,  <43.257454, 38.039444, 24.108000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853611, 38.125233, 24.575567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641731, 38.455608, 24.652754>,  <43.514603, 38.653835, 24.699066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641731, 38.455608, 24.652754>,  <43.853611, 38.125233, 24.575567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641731, 38.455608, 24.652754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139973, -0.139262, 0.980313,
		0.836554, 0.546285, -0.041842,
		-0.529703, 0.825941, 0.192966,
		43.482819, 38.703392, 24.710644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251179, 38.521534, 25.014318>,  <43.853611, 38.125233, 24.575567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251179, 38.521534, 25.014318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879314, 38.658123, 25.069643>,  <43.656197, 38.740078, 25.102837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879314, 38.658123, 25.069643>,  <44.251179, 38.521534, 25.014318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879314, 38.658123, 25.069643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120818, -0.072082, 0.990054,
		0.348047, 0.937123, 0.025756,
		-0.929659, 0.341473, 0.138309,
		43.600418, 38.760567, 25.111135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350010, 38.986961, 25.548376>,  <44.251179, 38.521534, 25.014318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350010, 38.986961, 25.548376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959122, 38.903286, 25.534061>,  <43.724590, 38.853081, 25.525473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959122, 38.903286, 25.534061>,  <44.350010, 38.986961, 25.548376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959122, 38.903286, 25.534061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007329, -0.201778, 0.979404,
		-0.212098, 0.956832, 0.198715,
		-0.977221, -0.209186, -0.035784,
		43.665955, 38.840530, 25.523327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.276699, 39.055027, 26.226191>,  <44.350010, 38.986961, 25.548376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.276699, 39.055027, 26.226191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915649, 38.936123, 26.101675>,  <43.699020, 38.864780, 26.026966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915649, 38.936123, 26.101675>,  <44.276699, 39.055027, 26.226191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915649, 38.936123, 26.101675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275813, -0.155773, 0.948505,
		-0.330446, 0.942003, 0.058616,
		-0.902625, -0.297263, -0.311291,
		43.644863, 38.846943, 26.008287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797783, 39.326324, 26.768913>,  <44.276699, 39.055027, 26.226191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797783, 39.326324, 26.768913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629948, 39.015121, 26.581871>,  <43.529247, 38.828400, 26.469645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629948, 39.015121, 26.581871>,  <43.797783, 39.326324, 26.768913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629948, 39.015121, 26.581871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394735, -0.307497, 0.865812,
		-0.817392, 0.547866, -0.178083,
		-0.419589, -0.778003, -0.467607,
		43.504070, 38.781719, 26.441589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055035, 39.282524, 26.860996>,  <43.797783, 39.326324, 26.768913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055035, 39.282524, 26.860996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115871, 38.894890, 26.783283>,  <43.152374, 38.662312, 26.736656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115871, 38.894890, 26.783283>,  <43.055035, 39.282524, 26.860996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115871, 38.894890, 26.783283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476442, -0.244109, 0.844638,
		-0.865951, -0.035898, -0.498839,
		0.152091, -0.969083, -0.194283,
		43.161499, 38.604164, 26.724998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406563, 38.934254, 26.913055>,  <43.055035, 39.282524, 26.860996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406563, 38.934254, 26.913055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670204, 38.635967, 26.952030>,  <42.828388, 38.456997, 26.975414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670204, 38.635967, 26.952030>,  <42.406563, 38.934254, 26.913055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670204, 38.635967, 26.952030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415089, -0.252682, 0.873987,
		-0.627126, -0.616489, -0.476082,
		0.659101, -0.745716, 0.097434,
		42.867935, 38.412254, 26.981260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988716, 38.356232, 27.115206>,  <42.406563, 38.934254, 26.913055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988716, 38.356232, 27.115206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354790, 38.245152, 27.232048>,  <42.574432, 38.178505, 27.302153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354790, 38.245152, 27.232048>,  <41.988716, 38.356232, 27.115206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354790, 38.245152, 27.232048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383053, -0.373901, 0.844670,
		-0.125342, -0.884920, -0.448560,
		0.915183, -0.277695, 0.292106,
		42.629345, 38.161842, 27.319679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887344, 37.689911, 27.301029>,  <41.988716, 38.356232, 27.115206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887344, 37.689911, 27.301029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211418, 37.840511, 27.480740>,  <42.405861, 37.930870, 27.588566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211418, 37.840511, 27.480740>,  <41.887344, 37.689911, 27.301029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211418, 37.840511, 27.480740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404861, -0.194848, 0.893377,
		0.423897, -0.905694, -0.005432,
		0.810184, 0.376501, 0.449275,
		42.454475, 37.953461, 27.615522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139198, 37.169277, 27.835272>,  <41.887344, 37.689911, 27.301029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139198, 37.169277, 27.835272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291080, 37.518986, 27.956245>,  <42.382210, 37.728813, 28.028830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291080, 37.518986, 27.956245>,  <42.139198, 37.169277, 27.835272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291080, 37.518986, 27.956245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383543, -0.148724, 0.911469,
		0.841855, -0.462085, 0.278851,
		0.379704, 0.874276, 0.302433,
		42.404991, 37.781269, 28.046976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226208, 37.059917, 28.520723>,  <42.139198, 37.169277, 27.835272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226208, 37.059917, 28.520723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256443, 37.457478, 28.488625>,  <42.274586, 37.696014, 28.469366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256443, 37.457478, 28.488625>,  <42.226208, 37.059917, 28.520723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256443, 37.457478, 28.488625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338354, 0.101269, 0.935554,
		0.937978, -0.043566, 0.343946,
		0.075590, 0.993905, -0.080247,
		42.279121, 37.755650, 28.464550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703197, 37.290379, 29.064356>,  <42.226208, 37.059917, 28.520723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703197, 37.290379, 29.064356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472340, 37.601620, 28.965195>,  <42.333824, 37.788364, 28.905697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472340, 37.601620, 28.965195>,  <42.703197, 37.290379, 29.064356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472340, 37.601620, 28.965195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351852, 0.037013, 0.935323,
		0.736953, 0.627046, 0.252415,
		-0.577148, 0.778102, -0.247905,
		42.299194, 37.835049, 28.890823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772884, 37.760853, 29.512568>,  <42.703197, 37.290379, 29.064356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772884, 37.760853, 29.512568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426743, 37.907509, 29.375902>,  <42.219059, 37.995502, 29.293903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426743, 37.907509, 29.375902>,  <42.772884, 37.760853, 29.512568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426743, 37.907509, 29.375902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348610, 0.049404, 0.935965,
		0.360043, 0.929050, 0.085062,
		-0.865355, 0.366641, -0.341664,
		42.167137, 38.017502, 29.273403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641346, 38.454575, 29.953503>,  <42.772884, 37.760853, 29.512568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641346, 38.454575, 29.953503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285664, 38.353745, 29.800783>,  <42.072254, 38.293247, 29.709152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285664, 38.353745, 29.800783>,  <42.641346, 38.454575, 29.953503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285664, 38.353745, 29.800783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441049, 0.250504, 0.861814,
		-0.121599, 0.934722, -0.333927,
		-0.889207, -0.252074, -0.381797,
		42.018902, 38.278122, 29.686245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207485, 38.977200, 30.177753>,  <42.641346, 38.454575, 29.953503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207485, 38.977200, 30.177753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976269, 38.668560, 30.071545>,  <41.837540, 38.483376, 30.007820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976269, 38.668560, 30.071545>,  <42.207485, 38.977200, 30.177753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976269, 38.668560, 30.071545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526651, 0.104217, 0.843668,
		-0.623302, 0.627513, -0.466606,
		-0.578042, -0.771599, -0.265522,
		41.802856, 38.437080, 29.991888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495651, 39.175262, 30.361317>,  <42.207485, 38.977200, 30.177753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495651, 39.175262, 30.361317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481281, 38.777306, 30.323599>,  <41.472660, 38.538532, 30.300968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481281, 38.777306, 30.323599>,  <41.495651, 39.175262, 30.361317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481281, 38.777306, 30.323599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661229, -0.047081, 0.748705,
		-0.749323, 0.089248, -0.656163,
		-0.035928, -0.994896, -0.094292,
		41.470505, 38.478836, 30.295311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773960, 39.006359, 30.353399>,  <41.495651, 39.175262, 30.361317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773960, 39.006359, 30.353399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976009, 38.673916, 30.446442>,  <41.097240, 38.474449, 30.502268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976009, 38.673916, 30.446442>,  <40.773960, 39.006359, 30.353399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976009, 38.673916, 30.446442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688952, -0.225981, 0.688678,
		-0.519804, -0.508120, -0.686744,
		0.505122, -0.831111, 0.232605,
		41.127548, 38.424583, 30.516224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386097, 38.418694, 30.309555>,  <40.773960, 39.006359, 30.353399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386097, 38.418694, 30.309555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659466, 38.310711, 30.580866>,  <40.823486, 38.245922, 30.743652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659466, 38.310711, 30.580866>,  <40.386097, 38.418694, 30.309555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659466, 38.310711, 30.580866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725307, -0.356562, 0.588891,
		0.082870, -0.894419, -0.439486,
		0.683419, -0.269960, 0.678277,
		40.864491, 38.229721, 30.784349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082138, 37.788200, 30.630587>,  <40.386097, 38.418694, 30.309555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082138, 37.788200, 30.630587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374504, 37.915432, 30.872110>,  <40.549923, 37.991772, 31.017025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374504, 37.915432, 30.872110>,  <40.082138, 37.788200, 30.630587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374504, 37.915432, 30.872110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495626, -0.360828, 0.790037,
		0.469166, -0.876715, -0.106086,
		0.730915, 0.318080, 0.603811,
		40.593781, 38.010857, 31.053253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158421, 37.222885, 31.046394>,  <40.082138, 37.788200, 30.630587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158421, 37.222885, 31.046394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338173, 37.516968, 31.249386>,  <40.446022, 37.693417, 31.371180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338173, 37.516968, 31.249386>,  <40.158421, 37.222885, 31.046394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338173, 37.516968, 31.249386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399389, -0.342794, 0.850283,
		0.799093, -0.584778, 0.139589,
		0.449377, 0.735205, 0.507478,
		40.472984, 37.737530, 31.401628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344475, 36.881367, 31.658619>,  <40.158421, 37.222885, 31.046394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344475, 36.881367, 31.658619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371494, 37.262745, 31.776180>,  <40.387707, 37.491573, 31.846718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371494, 37.262745, 31.776180>,  <40.344475, 36.881367, 31.658619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371494, 37.262745, 31.776180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439990, -0.235919, 0.866459,
		0.895459, -0.187842, 0.403570,
		0.067548, 0.953445, 0.293905,
		40.391758, 37.548779, 31.864351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748642, 36.837399, 32.339764>,  <40.344475, 36.881367, 31.658619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748642, 36.837399, 32.339764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561142, 37.189346, 32.308517>,  <40.448643, 37.400517, 32.289768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561142, 37.189346, 32.308517>,  <40.748642, 36.837399, 32.339764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561142, 37.189346, 32.308517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372298, -0.116594, 0.920760,
		0.801042, 0.460688, 0.382228,
		-0.468749, 0.879871, -0.078117,
		40.420517, 37.453308, 32.285084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869606, 37.192711, 32.832935>,  <40.748642, 36.837399, 32.339764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869606, 37.192711, 32.832935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528763, 37.369354, 32.720589>,  <40.324257, 37.475342, 32.653179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528763, 37.369354, 32.720589>,  <40.869606, 37.192711, 32.832935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528763, 37.369354, 32.720589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410083, -0.229949, 0.882585,
		0.325173, 0.867240, 0.377039,
		-0.852112, 0.441609, -0.280867,
		40.273129, 37.501839, 32.636330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574860, 37.391411, 33.489525>,  <40.869606, 37.192711, 32.832935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574860, 37.391411, 33.489525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269409, 37.385059, 33.231339>,  <40.086140, 37.381248, 33.076427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269409, 37.385059, 33.231339>,  <40.574860, 37.391411, 33.489525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269409, 37.385059, 33.231339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602485, -0.341922, 0.721180,
		-0.232150, 0.939594, 0.251534,
		-0.763622, -0.015877, -0.645469,
		40.040321, 37.380295, 33.037697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050907, 37.815056, 33.649666>,  <40.574860, 37.391411, 33.489525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050907, 37.815056, 33.649666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865528, 37.534775, 33.432693>,  <39.754299, 37.366604, 33.302509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865528, 37.534775, 33.432693>,  <40.050907, 37.815056, 33.649666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865528, 37.534775, 33.432693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590818, -0.211874, 0.778488,
		-0.660418, 0.681263, -0.315798,
		-0.463446, -0.700706, -0.542428,
		39.726494, 37.324562, 33.269966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379425, 37.798748, 33.926056>,  <40.050907, 37.815056, 33.649666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379425, 37.798748, 33.926056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366642, 37.467083, 33.702816>,  <39.358971, 37.268085, 33.568874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366642, 37.467083, 33.702816>,  <39.379425, 37.798748, 33.926056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366642, 37.467083, 33.702816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674984, -0.393912, 0.623883,
		-0.737140, 0.396643, -0.547082,
		-0.031957, -0.829161, -0.558096,
		39.357056, 37.218334, 33.535389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623131, 37.594772, 33.783623>,  <39.379425, 37.798748, 33.926056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623131, 37.594772, 33.783623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835979, 37.259209, 33.737877>,  <38.963688, 37.057869, 33.710430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835979, 37.259209, 33.737877>,  <38.623131, 37.594772, 33.783623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835979, 37.259209, 33.737877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728416, -0.522460, 0.443222,
		-0.431573, -0.152544, -0.889087,
		0.532123, -0.838908, -0.114364,
		38.995617, 37.007538, 33.703568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155792, 37.055473, 33.641582>,  <38.623131, 37.594772, 33.783623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155792, 37.055473, 33.641582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482445, 36.891136, 33.803730>,  <38.678436, 36.792534, 33.901016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482445, 36.891136, 33.803730>,  <38.155792, 37.055473, 33.641582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482445, 36.891136, 33.803730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574118, -0.506245, 0.643510,
		-0.059165, -0.758239, -0.649287,
		0.816632, -0.410840, 0.405367,
		38.727436, 36.767883, 33.925339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003082, 36.443855, 33.889938>,  <38.155792, 37.055473, 33.641582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003082, 36.443855, 33.889938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354630, 36.456997, 34.080311>,  <38.565559, 36.464882, 34.194534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354630, 36.456997, 34.080311>,  <38.003082, 36.443855, 33.889938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354630, 36.456997, 34.080311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331307, -0.675772, 0.658459,
		0.343253, -0.736378, -0.583031,
		0.878870, 0.032856, 0.475927,
		38.618290, 36.466854, 34.223087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171074, 35.872795, 34.075447>,  <38.003082, 36.443855, 33.889938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171074, 35.872795, 34.075447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410191, 36.051998, 34.341358>,  <38.553661, 36.159519, 34.500904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410191, 36.051998, 34.341358>,  <38.171074, 35.872795, 34.075447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410191, 36.051998, 34.341358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351655, -0.598674, 0.719672,
		0.720403, -0.663990, -0.200341,
		0.597794, 0.448003, 0.664782,
		38.589527, 36.186398, 34.540794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596161, 35.335487, 34.395073>,  <38.171074, 35.872795, 34.075447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596161, 35.335487, 34.395073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572689, 35.637535, 34.656254>,  <38.558605, 35.818764, 34.812962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572689, 35.637535, 34.656254>,  <38.596161, 35.335487, 34.395073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572689, 35.637535, 34.656254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320012, -0.633794, 0.704200,
		0.945594, -0.167629, 0.278840,
		-0.058683, 0.755120, 0.652955,
		38.555084, 35.864071, 34.852139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782143, 35.001003, 35.107845>,  <38.596161, 35.335487, 34.395073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782143, 35.001003, 35.107845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604115, 35.351875, 35.179924>,  <38.497295, 35.562397, 35.223171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604115, 35.351875, 35.179924>,  <38.782143, 35.001003, 35.107845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604115, 35.351875, 35.179924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358122, -0.358786, 0.861987,
		0.820766, 0.319116, 0.473823,
		-0.445075, 0.877176, 0.180197,
		38.470592, 35.615028, 35.233982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997395, 35.260452, 35.778435>,  <38.782143, 35.001003, 35.107845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997395, 35.260452, 35.778435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651619, 35.444794, 35.698074>,  <38.444153, 35.555397, 35.649860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651619, 35.444794, 35.698074>,  <38.997395, 35.260452, 35.778435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651619, 35.444794, 35.698074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320029, -0.196253, 0.926858,
		0.387715, 0.865507, 0.317135,
		-0.864441, 0.460849, -0.200897,
		38.392288, 35.583050, 35.637806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849014, 35.522430, 36.390190>,  <38.997395, 35.260452, 35.778435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849014, 35.522430, 36.390190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504166, 35.526821, 36.187553>,  <38.297256, 35.529457, 36.065971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504166, 35.526821, 36.187553>,  <38.849014, 35.522430, 36.390190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504166, 35.526821, 36.187553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500441, -0.175180, 0.847862,
		-0.079435, 0.984475, 0.156520,
		-0.862119, 0.010979, -0.506588,
		38.245529, 35.530113, 36.035576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300770, 35.700249, 36.892178>,  <38.849014, 35.522430, 36.390190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300770, 35.700249, 36.892178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168427, 35.495628, 36.574978>,  <38.089020, 35.372856, 36.384659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168427, 35.495628, 36.574978>,  <38.300770, 35.700249, 36.892178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168427, 35.495628, 36.574978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557649, -0.571924, 0.601606,
		-0.761287, 0.641264, -0.096037,
		-0.330862, -0.511549, -0.792999,
		38.069168, 35.342163, 36.337078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597122, 35.712090, 36.961365>,  <38.300770, 35.700249, 36.892178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597122, 35.712090, 36.961365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725632, 35.399948, 36.746769>,  <37.802738, 35.212662, 36.618011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725632, 35.399948, 36.746769>,  <37.597122, 35.712090, 36.961365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725632, 35.399948, 36.746769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567971, -0.612104, 0.550216,
		-0.757756, 0.127945, -0.639871,
		0.321271, -0.780358, -0.536495,
		37.822014, 35.165840, 36.585819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951942, 35.285709, 36.699482>,  <37.597122, 35.712090, 36.961365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951942, 35.285709, 36.699482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282864, 35.061096, 36.693108>,  <37.481415, 34.926327, 36.689285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282864, 35.061096, 36.693108>,  <36.951942, 35.285709, 36.699482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282864, 35.061096, 36.693108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471290, -0.709224, 0.524297,
		-0.305711, -0.426242, -0.851386,
		0.827301, -0.561533, -0.015934,
		37.531055, 34.892635, 36.688328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688457, 34.668545, 36.603836>,  <36.951942, 35.285709, 36.699482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688457, 34.668545, 36.603836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051331, 34.604065, 36.759289>,  <37.269054, 34.565376, 36.852562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051331, 34.604065, 36.759289>,  <36.688457, 34.668545, 36.603836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051331, 34.604065, 36.759289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393775, -0.650673, 0.649281,
		0.148208, -0.742050, -0.653756,
		0.907180, -0.161204, 0.388635,
		37.323486, 34.555702, 36.875881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882496, 33.980091, 36.547955>,  <36.688457, 34.668545, 36.603836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882496, 33.980091, 36.547955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077457, 34.120647, 36.867695>,  <37.194435, 34.204979, 37.059540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077457, 34.120647, 36.867695>,  <36.882496, 33.980091, 36.547955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077457, 34.120647, 36.867695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342125, -0.765403, 0.545076,
		0.803358, -0.539153, -0.252845,
		0.487408, 0.351387, 0.799350,
		37.223679, 34.226063, 37.107498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921116, 33.374596, 36.910763>,  <36.882496, 33.980091, 36.547955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921116, 33.374596, 36.910763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042725, 33.664646, 37.157909>,  <37.115688, 33.838676, 37.306198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042725, 33.664646, 37.157909>,  <36.921116, 33.374596, 36.910763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042725, 33.664646, 37.157909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547820, -0.397544, 0.736106,
		0.779400, -0.562274, 0.276376,
		0.304022, 0.725125, 0.617870,
		37.133930, 33.882183, 37.343269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169655, 33.059063, 37.478462>,  <36.921116, 33.374596, 36.910763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169655, 33.059063, 37.478462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045448, 33.424873, 37.582172>,  <36.970924, 33.644360, 37.644398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045448, 33.424873, 37.582172>,  <37.169655, 33.059063, 37.478462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045448, 33.424873, 37.582172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609845, -0.400885, 0.683652,
		0.729155, 0.054171, 0.682201,
		-0.310518, 0.914526, 0.259271,
		36.952293, 33.699230, 37.659954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270477, 32.880535, 38.190037>,  <37.169655, 33.059063, 37.478462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270477, 32.880535, 38.190037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078812, 33.230408, 38.160812>,  <36.963814, 33.440331, 38.143276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078812, 33.230408, 38.160812>,  <37.270477, 32.880535, 38.190037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078812, 33.230408, 38.160812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561920, -0.241752, 0.791076,
		0.674276, 0.420109, 0.607339,
		-0.479163, 0.874680, -0.073060,
		36.935062, 33.492813, 38.138893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175915, 33.102776, 38.862736>,  <37.270477, 32.880535, 38.190037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175915, 33.102776, 38.862736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875046, 33.275814, 38.663898>,  <36.694527, 33.379639, 38.544598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875046, 33.275814, 38.663898>,  <37.175915, 33.102776, 38.862736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875046, 33.275814, 38.663898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602755, -0.146796, 0.784307,
		0.266320, 0.889555, 0.371168,
		-0.752170, 0.432600, -0.497089,
		36.649395, 33.405594, 38.514771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829521, 33.640541, 39.291924>,  <37.175915, 33.102776, 38.862736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829521, 33.640541, 39.291924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582531, 33.453751, 39.038731>,  <36.434338, 33.341679, 38.886814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582531, 33.453751, 39.038731>,  <36.829521, 33.640541, 39.291924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582531, 33.453751, 39.038731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681720, -0.083748, 0.726804,
		-0.392409, 0.880296, -0.266633,
		-0.617473, -0.466974, -0.632979,
		36.397289, 33.313660, 38.848835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199802, 33.987625, 39.136353>,  <36.829521, 33.640541, 39.291924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199802, 33.987625, 39.136353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080376, 33.616074, 39.048679>,  <36.008720, 33.393143, 38.996075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080376, 33.616074, 39.048679>,  <36.199802, 33.987625, 39.136353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080376, 33.616074, 39.048679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648882, 0.029161, 0.760330,
		-0.699863, 0.369235, -0.611439,
		-0.298571, -0.928878, -0.219181,
		35.990803, 33.337410, 38.982925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436398, 33.941360, 39.027210>,  <36.199802, 33.987625, 39.136353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436398, 33.941360, 39.027210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571167, 33.581009, 39.136681>,  <35.652027, 33.364799, 39.202362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571167, 33.581009, 39.136681>,  <35.436398, 33.941360, 39.027210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571167, 33.581009, 39.136681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823546, -0.141088, 0.549424,
		-0.456352, -0.410500, -0.789451,
		0.336920, -0.900880, 0.273680,
		35.672241, 33.310745, 39.218784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863873, 33.654198, 39.263977>,  <35.436398, 33.941360, 39.027210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863873, 33.654198, 39.263977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151440, 33.392075, 39.356693>,  <35.323982, 33.234802, 39.412323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151440, 33.392075, 39.356693>,  <34.863873, 33.654198, 39.263977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151440, 33.392075, 39.356693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583808, -0.388265, 0.713035,
		-0.377258, -0.647938, -0.661704,
		0.718919, -0.655306, 0.231795,
		35.367115, 33.195484, 39.426231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484604, 32.963863, 39.317924>,  <34.863873, 33.654198, 39.263977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484604, 32.963863, 39.317924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807915, 32.895325, 39.543251>,  <35.001900, 32.854202, 39.678448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807915, 32.895325, 39.543251>,  <34.484604, 32.963863, 39.317924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807915, 32.895325, 39.543251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583514, -0.361026, 0.727442,
		0.078726, -0.916679, -0.391794,
		0.808278, -0.171349, 0.563317,
		35.050400, 32.843922, 39.712246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434254, 32.267498, 39.672764>,  <34.484604, 32.963863, 39.317924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434254, 32.267498, 39.672764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678642, 32.487671, 39.900356>,  <34.825275, 32.619774, 40.036911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678642, 32.487671, 39.900356>,  <34.434254, 32.267498, 39.672764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678642, 32.487671, 39.900356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501372, -0.287169, 0.816187,
		0.612647, -0.783939, 0.100518,
		0.610974, 0.550431, 0.568978,
		34.861935, 32.652802, 40.071049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577965, 31.836718, 40.167683>,  <34.434254, 32.267498, 39.672764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577965, 31.836718, 40.167683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695171, 32.185978, 40.323505>,  <34.765495, 32.395535, 40.417000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695171, 32.185978, 40.323505>,  <34.577965, 31.836718, 40.167683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695171, 32.185978, 40.323505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370955, -0.271697, 0.888016,
		0.881211, -0.404710, 0.244288,
		0.293016, 0.873150, 0.389552,
		34.783077, 32.447922, 40.440372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987473, 31.595905, 40.624920>,  <34.577965, 31.836718, 40.167683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987473, 31.595905, 40.624920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899475, 31.968431, 40.741028>,  <34.846676, 32.191948, 40.810692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899475, 31.968431, 40.741028>,  <34.987473, 31.595905, 40.624920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899475, 31.968431, 40.741028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125602, -0.322124, 0.938328,
		0.967382, 0.169965, 0.187839,
		-0.219991, 0.931315, 0.290269,
		34.833477, 32.247826, 40.828110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264717, 31.699919, 41.277649>,  <34.987473, 31.595905, 40.624920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264717, 31.699919, 41.277649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003368, 32.002647, 41.270508>,  <34.846558, 32.184284, 41.266224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003368, 32.002647, 41.270508>,  <35.264717, 31.699919, 41.277649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003368, 32.002647, 41.270508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352207, -0.283024, 0.892103,
		0.670112, 0.589166, 0.451479,
		-0.653376, 0.756823, -0.017850,
		34.807354, 32.229694, 41.265152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315220, 32.050694, 41.936939>,  <35.264717, 31.699919, 41.277649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315220, 32.050694, 41.936939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946053, 32.076279, 41.785080>,  <34.724552, 32.091629, 41.693962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946053, 32.076279, 41.785080>,  <35.315220, 32.050694, 41.936939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946053, 32.076279, 41.785080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384207, -0.216296, 0.897553,
		-0.024707, 0.974230, 0.224198,
		-0.922916, 0.063963, -0.379650,
		34.669178, 32.095467, 41.671185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983215, 32.486835, 42.382591>,  <35.315220, 32.050694, 41.936939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983215, 32.486835, 42.382591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708672, 32.262611, 42.197254>,  <34.543945, 32.128075, 42.086052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708672, 32.262611, 42.197254>,  <34.983215, 32.486835, 42.382591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708672, 32.262611, 42.197254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415703, -0.220371, 0.882399,
		-0.596746, 0.798252, -0.081775,
		-0.686356, -0.560562, -0.463341,
		34.502766, 32.094444, 42.058250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391438, 32.358818, 42.828079>,  <34.983215, 32.486835, 42.382591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391438, 32.358818, 42.828079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243019, 32.110306, 42.552010>,  <34.153969, 31.961199, 42.386368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243019, 32.110306, 42.552010>,  <34.391438, 32.358818, 42.828079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243019, 32.110306, 42.552010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616470, -0.391030, 0.683418,
		-0.694471, 0.679050, -0.237910,
		-0.371045, -0.621278, -0.690173,
		34.131706, 31.923922, 42.344959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649803, 32.479496, 42.732449>,  <34.391438, 32.358818, 42.828079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649803, 32.479496, 42.732449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727032, 32.100849, 42.629192>,  <33.773369, 31.873661, 42.567238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727032, 32.100849, 42.629192>,  <33.649803, 32.479496, 42.732449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727032, 32.100849, 42.629192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713007, -0.316091, 0.625866,
		-0.674052, 0.063219, -0.735974,
		0.193069, -0.946620, -0.258137,
		33.784954, 31.816864, 42.551750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096119, 32.074947, 42.313465>,  <33.649803, 32.479496, 42.732449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096119, 32.074947, 42.313465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317272, 31.852627, 42.561790>,  <33.449963, 31.719234, 42.710785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317272, 31.852627, 42.561790>,  <33.096119, 32.074947, 42.313465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317272, 31.852627, 42.561790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802371, -0.154135, 0.576578,
		-0.224777, -0.816898, -0.531180,
		0.552879, -0.555805, 0.620810,
		33.483135, 31.685886, 42.748032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641895, 31.720999, 42.704464>,  <33.096119, 32.074947, 42.313465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641895, 31.720999, 42.704464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981392, 31.637159, 42.898663>,  <33.185089, 31.586855, 43.015182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981392, 31.637159, 42.898663>,  <32.641895, 31.720999, 42.704464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981392, 31.637159, 42.898663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506349, -0.057421, 0.860415,
		-0.152467, -0.976099, -0.154867,
		0.848743, -0.209601, 0.485492,
		33.236015, 31.574280, 43.044312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117596, 31.230062, 42.347660>,  <32.641895, 31.720999, 42.704464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117596, 31.230062, 42.347660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034702, 31.274549, 41.958881>,  <32.984966, 31.301243, 41.725613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034702, 31.274549, 41.958881>,  <33.117596, 31.230062, 42.347660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034702, 31.274549, 41.958881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728569, 0.680578, -0.077462,
		0.652872, -0.724185, -0.222069,
		-0.207232, 0.111220, -0.971949,
		32.972534, 31.307915, 41.667297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701466, 30.940855, 41.942268>,  <33.117596, 31.230062, 42.347660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701466, 30.940855, 41.942268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507229, 31.268318, 41.819626>,  <33.390686, 31.464796, 41.746040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507229, 31.268318, 41.819626>,  <33.701466, 30.940855, 41.942268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507229, 31.268318, 41.819626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849092, 0.525122, 0.057358,
		0.207960, -0.232482, -0.950108,
		-0.485588, 0.818657, -0.306603,
		33.361553, 31.513916, 41.727646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974350, 31.209820, 41.355824>,  <33.701466, 30.940855, 41.942268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974350, 31.209820, 41.355824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803833, 31.508751, 41.559696>,  <33.701523, 31.688108, 41.682022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803833, 31.508751, 41.559696>,  <33.974350, 31.209820, 41.355824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803833, 31.508751, 41.559696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816366, 0.560536, -0.139090,
		-0.389642, 0.356796, -0.849044,
		-0.426293, 0.747325, 0.509685,
		33.675945, 31.732948, 41.712601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825226, 31.806322, 41.015633>,  <33.974350, 31.209820, 41.355824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825226, 31.806322, 41.015633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884052, 31.930843, 41.391178>,  <33.919350, 32.005558, 41.616505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884052, 31.930843, 41.391178>,  <33.825226, 31.806322, 41.015633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884052, 31.930843, 41.391178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622202, 0.708751, -0.332470,
		-0.768918, 0.633057, -0.089459,
		0.147069, 0.311304, 0.938861,
		33.928173, 32.024235, 41.672836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589787, 32.537697, 41.115246>,  <33.825226, 31.806322, 41.015633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589787, 32.537697, 41.115246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914013, 32.416069, 41.315453>,  <34.108551, 32.343094, 41.435577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914013, 32.416069, 41.315453>,  <33.589787, 32.537697, 41.115246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914013, 32.416069, 41.315453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568325, 0.614709, -0.546937,
		-0.141367, 0.727788, 0.671074,
		0.810569, -0.304069, 0.500519,
		34.157185, 32.324848, 41.465607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921150, 33.168648, 41.343704>,  <33.589787, 32.537697, 41.115246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921150, 33.168648, 41.343704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160858, 32.852932, 41.290188>,  <34.304684, 32.663502, 41.258080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160858, 32.852932, 41.290188>,  <33.921150, 33.168648, 41.343704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160858, 32.852932, 41.290188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582610, 0.544617, -0.603289,
		0.549032, 0.283587, 0.786220,
		0.599274, -0.789285, -0.133791,
		34.340641, 32.616146, 41.250050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451904, 33.497581, 41.192402>,  <33.921150, 33.168648, 41.343704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451904, 33.497581, 41.192402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559753, 33.122536, 41.104599>,  <34.624462, 32.897507, 41.051918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559753, 33.122536, 41.104599>,  <34.451904, 33.497581, 41.192402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559753, 33.122536, 41.104599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498948, 0.330988, -0.800936,
		0.823622, 0.106433, 0.557063,
		0.269627, -0.937614, -0.219504,
		34.640640, 32.841251, 41.038746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091103, 33.546642, 40.999378>,  <34.451904, 33.497581, 41.192402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091103, 33.546642, 40.999378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010860, 33.190193, 40.836578>,  <34.962715, 32.976322, 40.738899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010860, 33.190193, 40.836578>,  <35.091103, 33.546642, 40.999378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010860, 33.190193, 40.836578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601061, 0.216108, -0.769431,
		0.773616, -0.398987, 0.492268,
		-0.200609, -0.891127, -0.407000,
		34.950676, 32.922855, 40.714478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715496, 33.131947, 40.876480>,  <35.091103, 33.546642, 40.999378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715496, 33.131947, 40.876480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459126, 32.979656, 40.609867>,  <35.305302, 32.888283, 40.449902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459126, 32.979656, 40.609867>,  <35.715496, 33.131947, 40.876480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459126, 32.979656, 40.609867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663397, 0.162090, -0.730500,
		0.386160, -0.910370, 0.148686,
		-0.640925, -0.380728, -0.666529,
		35.266850, 32.865437, 40.409908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054855, 32.617207, 40.474621>,  <35.715496, 33.131947, 40.876480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054855, 32.617207, 40.474621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745708, 32.696270, 40.233421>,  <35.560223, 32.743710, 40.088699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745708, 32.696270, 40.233421>,  <36.054855, 32.617207, 40.474621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745708, 32.696270, 40.233421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567730, -0.209132, -0.796207,
		-0.283489, -0.957702, 0.049411,
		-0.772862, 0.197664, -0.603003,
		35.513851, 32.755569, 40.052521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101147, 32.163811, 39.924892>,  <36.054855, 32.617207, 40.474621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101147, 32.163811, 39.924892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870880, 32.475018, 39.824257>,  <35.732719, 32.661743, 39.763878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870880, 32.475018, 39.824257>,  <36.101147, 32.163811, 39.924892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870880, 32.475018, 39.824257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424375, 0.021277, -0.905236,
		-0.698939, -0.627879, -0.342421,
		-0.575665, 0.778020, -0.251585,
		35.698181, 32.708424, 39.748783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799221, 32.008404, 39.285931>,  <36.101147, 32.163811, 39.924892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799221, 32.008404, 39.285931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811871, 32.407394, 39.311382>,  <35.819458, 32.646790, 39.326653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811871, 32.407394, 39.311382>,  <35.799221, 32.008404, 39.285931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811871, 32.407394, 39.311382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448138, 0.042755, -0.892942,
		-0.893405, 0.056749, -0.445654,
		0.031620, 0.997473, 0.063628,
		35.821358, 32.706635, 39.330471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595196, 32.181293, 38.666107>,  <35.799221, 32.008404, 39.285931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595196, 32.181293, 38.666107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730988, 32.542572, 38.771168>,  <35.812462, 32.759338, 38.834206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730988, 32.542572, 38.771168>,  <35.595196, 32.181293, 38.666107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730988, 32.542572, 38.771168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493535, 0.066673, -0.867167,
		-0.800734, 0.424018, -0.423124,
		0.339484, 0.903196, 0.262655,
		35.832832, 32.813530, 38.849964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595543, 32.601940, 38.066238>,  <35.595196, 32.181293, 38.666107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595543, 32.601940, 38.066238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835011, 32.797741, 38.319847>,  <35.978691, 32.915222, 38.472012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835011, 32.797741, 38.319847>,  <35.595543, 32.601940, 38.066238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835011, 32.797741, 38.319847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666105, 0.135367, -0.733471,
		-0.444860, 0.861432, -0.245018,
		0.598668, 0.489500, 0.634024,
		36.014610, 32.944592, 38.510056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676384, 33.243961, 37.730003>,  <35.595543, 32.601940, 38.066238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676384, 33.243961, 37.730003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839336, 33.363884, 38.075062>,  <35.937107, 33.435837, 38.282097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839336, 33.363884, 38.075062>,  <35.676384, 33.243961, 37.730003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839336, 33.363884, 38.075062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797230, 0.344030, -0.496051,
		-0.445495, 0.889809, -0.098864,
		0.407379, 0.299806, 0.862647,
		35.961552, 33.453827, 38.333855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773022, 33.960625, 37.767895>,  <35.676384, 33.243961, 37.730003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773022, 33.960625, 37.767895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042904, 33.805214, 38.018913>,  <36.204834, 33.711967, 38.169525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042904, 33.805214, 38.018913>,  <35.773022, 33.960625, 37.767895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042904, 33.805214, 38.018913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730795, 0.470853, -0.494203,
		-0.103472, 0.792052, 0.601620,
		0.674709, -0.388525, 0.627548,
		36.245316, 33.688656, 38.207176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170025, 34.523201, 38.093857>,  <35.773022, 33.960625, 37.767895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170025, 34.523201, 38.093857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398125, 34.194817, 38.082298>,  <36.534985, 33.997784, 38.075363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398125, 34.194817, 38.082298>,  <36.170025, 34.523201, 38.093857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398125, 34.194817, 38.082298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715964, 0.513945, -0.472500,
		0.402754, 0.248758, 0.880857,
		0.570250, -0.820963, -0.028892,
		36.569199, 33.948528, 38.073631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897537, 34.827133, 37.984627>,  <36.170025, 34.523201, 38.093857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897537, 34.827133, 37.984627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951237, 34.433144, 37.941154>,  <36.983456, 34.196751, 37.915070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951237, 34.433144, 37.941154>,  <36.897537, 34.827133, 37.984627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951237, 34.433144, 37.941154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851403, 0.170769, -0.495935,
		0.507040, -0.025953, 0.861532,
		0.134252, -0.984969, -0.108683,
		36.991512, 34.137653, 37.908550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588741, 34.793137, 38.198704>,  <36.897537, 34.827133, 37.984627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588741, 34.793137, 38.198704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455997, 34.516113, 37.942509>,  <37.376350, 34.349899, 37.788792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455997, 34.516113, 37.942509>,  <37.588741, 34.793137, 38.198704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455997, 34.516113, 37.942509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728249, 0.243480, -0.640602,
		0.599603, -0.679027, 0.423555,
		-0.331859, -0.692560, -0.640492,
		37.356441, 34.308346, 37.750362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187485, 34.656063, 37.805687>,  <37.588741, 34.793137, 38.198704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187485, 34.656063, 37.805687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908680, 34.480755, 37.578674>,  <37.741398, 34.375568, 37.442467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908680, 34.480755, 37.578674>,  <38.187485, 34.656063, 37.805687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908680, 34.480755, 37.578674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466837, 0.323392, -0.823092,
		0.544275, -0.838649, -0.020805,
		-0.697013, -0.438276, -0.567527,
		37.699577, 34.349274, 37.408417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528675, 34.248474, 37.299271>,  <38.187485, 34.656063, 37.805687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528675, 34.248474, 37.299271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166557, 34.358448, 37.169746>,  <37.949287, 34.424431, 37.092033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166557, 34.358448, 37.169746>,  <38.528675, 34.248474, 37.299271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166557, 34.358448, 37.169746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413187, 0.393069, -0.821446,
		-0.098563, -0.877445, -0.469442,
		-0.905297, 0.274931, -0.323807,
		37.894970, 34.440926, 37.072605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490520, 34.048244, 36.586521>,  <38.528675, 34.248474, 37.299271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490520, 34.048244, 36.586521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210186, 34.329865, 36.632385>,  <38.041985, 34.498837, 36.659904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210186, 34.329865, 36.632385>,  <38.490520, 34.048244, 36.586521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210186, 34.329865, 36.632385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299736, 0.436524, -0.848295,
		-0.647292, -0.560148, -0.516960,
		-0.700837, 0.704046, 0.114662,
		37.999935, 34.541077, 36.666782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410866, 34.202938, 35.908417>,  <38.490520, 34.048244, 36.586521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410866, 34.202938, 35.908417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231289, 34.495022, 36.114422>,  <38.123543, 34.670273, 36.238026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231289, 34.495022, 36.114422>,  <38.410866, 34.202938, 35.908417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231289, 34.495022, 36.114422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178604, 0.638062, -0.748984,
		-0.875529, -0.244267, -0.416872,
		-0.448942, 0.730212, 0.515015,
		38.096607, 34.714085, 36.268925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911083, 34.426617, 35.384453>,  <38.410866, 34.202938, 35.908417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911083, 34.426617, 35.384453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088032, 34.695019, 35.622467>,  <38.194199, 34.856060, 35.765274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088032, 34.695019, 35.622467>,  <37.911083, 34.426617, 35.384453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088032, 34.695019, 35.622467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298533, 0.515470, -0.803224,
		-0.845688, 0.532958, 0.027711,
		0.442368, 0.671004, 0.595033,
		38.220741, 34.896320, 35.800976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495274, 33.831730, 35.290791>,  <37.911083, 34.426617, 35.384453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495274, 33.831730, 35.290791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664886, 33.874004, 35.650574>,  <38.766655, 33.899368, 35.866444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664886, 33.874004, 35.650574>,  <38.495274, 33.831730, 35.290791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664886, 33.874004, 35.650574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131901, -0.989784, 0.054119,
		0.895991, 0.095692, -0.433640,
		0.424031, 0.105687, 0.899460,
		38.792095, 33.905712, 35.920410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147686, 33.402527, 35.254631>,  <38.495274, 33.831730, 35.290791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147686, 33.402527, 35.254631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973534, 33.436653, 35.613110>,  <38.869041, 33.457130, 35.828197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973534, 33.436653, 35.613110>,  <39.147686, 33.402527, 35.254631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973534, 33.436653, 35.613110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092378, -0.994478, 0.049796,
		0.895492, -0.061108, 0.440862,
		-0.435385, 0.085318, 0.896192,
		38.842918, 33.462250, 35.881966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527069, 33.073025, 35.936211>,  <39.147686, 33.402527, 35.254631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527069, 33.073025, 35.936211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128677, 33.085579, 35.969795>,  <38.889645, 33.093113, 35.989944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128677, 33.085579, 35.969795>,  <39.527069, 33.073025, 35.936211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128677, 33.085579, 35.969795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014239, -0.980190, 0.197550,
		0.088497, 0.195559, 0.976691,
		-0.995975, 0.031390, 0.083959,
		38.829884, 33.094997, 35.994984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194691, 33.333656, 36.055004>,  <39.527069, 33.073025, 35.936211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194691, 33.333656, 36.055004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484417, 33.397175, 36.323380>,  <40.658253, 33.435287, 36.484406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484417, 33.397175, 36.323380>,  <40.194691, 33.333656, 36.055004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484417, 33.397175, 36.323380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041269, -0.981356, 0.187715,
		0.688236, -0.108276, -0.717362,
		0.724312, 0.158797, 0.670936,
		40.701710, 33.444813, 36.524662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936039, 33.165714, 35.865456>,  <40.194691, 33.333656, 36.055004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936039, 33.165714, 35.865456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788437, 33.100624, 36.231483>,  <40.699875, 33.061569, 36.451099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788437, 33.100624, 36.231483>,  <40.936039, 33.165714, 35.865456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788437, 33.100624, 36.231483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089559, -0.986197, -0.139261,
		0.925103, 0.030565, 0.378485,
		-0.369004, -0.162728, 0.915071,
		40.677734, 33.051807, 36.506004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526955, 33.354977, 35.607136>,  <40.936039, 33.165714, 35.865456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526955, 33.354977, 35.607136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626060, 33.355328, 35.219608>,  <41.685524, 33.355537, 34.987091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626060, 33.355328, 35.219608>,  <41.526955, 33.354977, 35.607136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626060, 33.355328, 35.219608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963430, 0.105116, 0.246482,
		0.102055, -0.994459, 0.025197,
		0.247765, 0.000879, -0.968820,
		41.700390, 33.355591, 34.928963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159870, 32.870949, 35.442616>,  <41.526955, 33.354977, 35.607136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159870, 32.870949, 35.442616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148903, 33.139919, 35.146751>,  <42.142323, 33.301300, 34.969234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148903, 33.139919, 35.146751>,  <42.159870, 32.870949, 35.442616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148903, 33.139919, 35.146751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980650, 0.161578, 0.110533,
		0.193838, -0.722316, -0.663842,
		-0.027423, 0.672422, -0.739660,
		42.140675, 33.341644, 34.924854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.490265, 32.731869, 34.847958>,  <42.159870, 32.870949, 35.442616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.490265, 32.731869, 34.847958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504246, 33.131599, 34.852299>,  <42.512634, 33.371437, 34.854904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504246, 33.131599, 34.852299>,  <42.490265, 32.731869, 34.847958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504246, 33.131599, 34.852299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999385, -0.034921, -0.003204,
		-0.002823, 0.010953, -0.999936,
		0.034954, 0.999330, 0.010848,
		42.514732, 33.431400, 34.855553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982330, 32.988209, 34.296299>,  <42.490265, 32.731869, 34.847958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982330, 32.988209, 34.296299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954803, 33.243855, 34.602707>,  <42.938286, 33.397243, 34.786552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954803, 33.243855, 34.602707>,  <42.982330, 32.988209, 34.296299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954803, 33.243855, 34.602707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986453, 0.158207, -0.043372,
		-0.148910, 0.752660, -0.641349,
		-0.068821, 0.639119, 0.766023,
		42.934158, 33.435589, 34.832512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203117, 33.671589, 34.187408>,  <42.982330, 32.988209, 34.296299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203117, 33.671589, 34.187408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317650, 33.537632, 34.546490>,  <43.386368, 33.457256, 34.761936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317650, 33.537632, 34.546490>,  <43.203117, 33.671589, 34.187408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317650, 33.537632, 34.546490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957488, 0.134339, -0.255283,
		-0.035104, 0.932631, 0.359119,
		0.286328, -0.334891, 0.897699,
		43.403549, 33.437164, 34.815800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549488, 34.122055, 34.534855>,  <43.203117, 33.671589, 34.187408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549488, 34.122055, 34.534855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653168, 33.740826, 34.597427>,  <43.715378, 33.512089, 34.634972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653168, 33.740826, 34.597427>,  <43.549488, 34.122055, 34.534855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653168, 33.740826, 34.597427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885338, 0.169735, -0.432858,
		0.385994, 0.250690, 0.887786,
		0.259201, -0.953071, 0.156429,
		43.730927, 33.454903, 34.644356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219444, 34.070385, 34.924099>,  <43.549488, 34.122055, 34.534855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219444, 34.070385, 34.924099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.150555, 33.738838, 34.711185>,  <44.109222, 33.539909, 34.583439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.150555, 33.738838, 34.711185>,  <44.219444, 34.070385, 34.924099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150555, 33.738838, 34.711185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857139, 0.140193, -0.495640,
		0.485441, -0.541597, 0.686309,
		-0.172221, -0.828866, -0.532279,
		44.098888, 33.490177, 34.551502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731861, 33.666897, 35.192860>,  <44.219444, 34.070385, 34.924099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731861, 33.666897, 35.192860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589020, 33.575966, 34.830467>,  <44.503315, 33.521408, 34.613033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589020, 33.575966, 34.830467>,  <44.731861, 33.666897, 35.192860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589020, 33.575966, 34.830467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934021, -0.077529, -0.348702,
		0.009030, -0.970727, 0.240016,
		-0.357103, -0.227329, -0.905980,
		44.481888, 33.507767, 34.558674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.143166, 33.515659, 34.592335>,  <44.731861, 33.666897, 35.192860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.143166, 33.515659, 34.592335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.542503, 33.519516, 34.615044>,  <45.782104, 33.521828, 34.628670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.542503, 33.519516, 34.615044>,  <45.143166, 33.515659, 34.592335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542503, 33.519516, 34.615044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057565, -0.143786, -0.987933,
		-0.001360, 0.989562, -0.144103,
		0.998341, 0.009639, 0.056769,
		45.842007, 33.522408, 34.632072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508671, 33.956062, 34.078018>,  <45.143166, 33.515659, 34.592335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508671, 33.956062, 34.078018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.735157, 33.650005, 34.200626>,  <45.871048, 33.466370, 34.274189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.735157, 33.650005, 34.200626>,  <45.508671, 33.956062, 34.078018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.735157, 33.650005, 34.200626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204635, -0.229739, -0.951496,
		0.798450, 0.601477, 0.026493,
		0.566217, -0.765144, 0.306519,
		45.905022, 33.420464, 34.292583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.212143, 34.053368, 33.878452>,  <45.508671, 33.956062, 34.078018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.212143, 34.053368, 33.878452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.095257, 33.673218, 33.921154>,  <46.025127, 33.445126, 33.946774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.095257, 33.673218, 33.921154>,  <46.212143, 34.053368, 33.878452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.095257, 33.673218, 33.921154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155363, -0.157313, -0.975251,
		0.943650, -0.268394, 0.193622,
		-0.292211, -0.950377, 0.106750,
		46.007595, 33.388103, 33.953178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.921909, 34.493332, 33.699043>,  <46.212143, 34.053368, 33.878452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.921909, 34.493332, 33.699043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030842, 34.863125, 33.592339>,  <47.096199, 35.085003, 33.528316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030842, 34.863125, 33.592339>,  <46.921909, 34.493332, 33.699043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.030842, 34.863125, 33.592339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538560, 0.376200, 0.753941,
		0.797365, -0.061650, 0.600341,
		0.272329, 0.924485, -0.266766,
		47.112541, 35.140469, 33.512310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.232349, 34.902534, 34.306396>,  <46.921909, 34.493332, 33.699043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.232349, 34.902534, 34.306396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.047714, 35.142262, 34.044788>,  <46.936932, 35.286098, 33.887821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.047714, 35.142262, 34.044788>,  <47.232349, 34.902534, 34.306396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.047714, 35.142262, 34.044788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519367, 0.415116, 0.746952,
		0.719160, 0.684465, 0.119654,
		-0.461592, 0.599322, -0.654023,
		46.909237, 35.322060, 33.848583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051136, 34.711220, 34.987160>,  <47.232349, 34.902534, 34.306396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051136, 34.711220, 34.987160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.375103, 34.777763, 34.762177>,  <47.569485, 34.817688, 34.627186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.375103, 34.777763, 34.762177>,  <47.051136, 34.711220, 34.987160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.375103, 34.777763, 34.762177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343356, 0.642991, 0.684594,
		0.475542, -0.747588, 0.463650,
		0.809918, 0.166356, -0.562458,
		47.618080, 34.827671, 34.593437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.742840, 34.528183, 35.289959>,  <47.051136, 34.711220, 34.987160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.742840, 34.528183, 35.289959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.795692, 34.833469, 35.036964>,  <47.827404, 35.016644, 34.885166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.795692, 34.833469, 35.036964>,  <47.742840, 34.528183, 35.289959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.795692, 34.833469, 35.036964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512617, 0.493519, 0.702612,
		0.848390, -0.417059, -0.326031,
		0.132128, 0.763218, -0.632488,
		47.835331, 35.062435, 34.847218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.844765, 35.771545, 25.899929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.502209, 35.947472, 25.791740>,  <38.296677, 36.053028, 25.726828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.502209, 35.947472, 25.791740>,  <38.844765, 35.771545, 25.899929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502209, 35.947472, 25.791740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409699, -0.260034, 0.874374,
		0.314234, 0.859617, 0.402884,
		-0.856390, 0.439819, -0.270472,
		38.245293, 36.079418, 25.710598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595425, 36.237167, 26.494453>,  <38.844765, 35.771545, 25.899929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595425, 36.237167, 26.494453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.270741, 36.155293, 26.275646>,  <38.075932, 36.106167, 26.144361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.270741, 36.155293, 26.275646>,  <38.595425, 36.237167, 26.494453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270741, 36.155293, 26.275646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521834, -0.166501, 0.836640,
		-0.262325, 0.964563, 0.028340,
		-0.811711, -0.204683, -0.547019,
		38.027225, 36.093887, 26.111540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042847, 36.679783, 26.784056>,  <38.595425, 36.237167, 26.494453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042847, 36.679783, 26.784056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.866367, 36.385616, 26.578335>,  <37.760479, 36.209114, 26.454903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.866367, 36.385616, 26.578335>,  <38.042847, 36.679783, 26.784056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866367, 36.385616, 26.578335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570590, -0.212455, 0.793278,
		-0.692657, 0.643446, -0.325889,
		-0.441195, -0.735419, -0.514302,
		37.734009, 36.164989, 26.424044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426754, 36.743298, 26.964191>,  <38.042847, 36.679783, 26.784056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426754, 36.743298, 26.964191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.388020, 36.380577, 26.800077>,  <37.364780, 36.162945, 26.701609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.388020, 36.380577, 26.800077>,  <37.426754, 36.743298, 26.964191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388020, 36.380577, 26.800077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562134, -0.290352, 0.774403,
		-0.821357, 0.305626, -0.481627,
		-0.096836, -0.906801, -0.410286,
		37.358971, 36.108536, 26.676992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587563, 36.527874, 26.890951>,  <37.426754, 36.743298, 26.964191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587563, 36.527874, 26.890951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.813961, 36.198978, 26.914879>,  <36.949799, 36.001640, 26.929235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.813961, 36.198978, 26.914879>,  <36.587563, 36.527874, 26.890951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813961, 36.198978, 26.914879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606984, -0.366523, 0.705146,
		-0.557871, -0.435418, -0.706534,
		0.565995, -0.822236, 0.059819,
		36.983761, 35.952309, 26.932825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085785, 35.997456, 26.960648>,  <36.587563, 36.527874, 26.890951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085785, 35.997456, 26.960648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.438789, 35.839699, 27.063126>,  <36.650593, 35.745045, 27.124613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.438789, 35.839699, 27.063126>,  <36.085785, 35.997456, 26.960648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438789, 35.839699, 27.063126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452015, -0.560881, 0.693610,
		-0.129857, -0.727921, -0.673252,
		0.882507, -0.394390, 0.256197,
		36.703541, 35.721382, 27.139984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809025, 35.364735, 26.959114>,  <36.085785, 35.997456, 26.960648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809025, 35.364735, 26.959114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.148670, 35.409603, 27.165577>,  <36.352459, 35.436523, 27.289455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.148670, 35.409603, 27.165577>,  <35.809025, 35.364735, 26.959114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148670, 35.409603, 27.165577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408168, -0.480897, 0.775975,
		0.335262, -0.869572, -0.362552,
		0.849116, 0.112173, 0.516158,
		36.403404, 35.443256, 27.320425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930325, 34.735237, 27.291389>,  <35.809025, 35.364735, 26.959114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930325, 34.735237, 27.291389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.125683, 35.019806, 27.493517>,  <36.242897, 35.190548, 27.614794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.125683, 35.019806, 27.493517>,  <35.930325, 34.735237, 27.291389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125683, 35.019806, 27.493517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343399, -0.375663, 0.860787,
		0.802216, -0.593927, 0.060833,
		0.488392, 0.711427, 0.505317,
		36.272202, 35.233234, 27.645111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155434, 34.368462, 27.892292>,  <35.930325, 34.735237, 27.291389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155434, 34.368462, 27.892292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.194611, 34.752720, 27.996262>,  <36.218117, 34.983276, 28.058643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.194611, 34.752720, 27.996262>,  <36.155434, 34.368462, 27.892292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194611, 34.752720, 27.996262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223350, -0.233300, 0.946407,
		0.969806, -0.150744, 0.191712,
		0.097939, 0.960650, 0.259924,
		36.223991, 35.040916, 28.074238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443508, 34.242699, 28.486208>,  <36.155434, 34.368462, 27.892292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443508, 34.242699, 28.486208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344097, 34.629143, 28.514118>,  <36.284451, 34.861008, 28.530865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344097, 34.629143, 28.514118>,  <36.443508, 34.242699, 28.486208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344097, 34.629143, 28.514118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225514, -0.127766, 0.965826,
		0.942007, 0.224300, 0.249625,
		-0.248528, 0.966109, 0.069773,
		36.269539, 34.918976, 28.535049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789631, 34.583767, 29.046085>,  <36.443508, 34.242699, 28.486208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789631, 34.583767, 29.046085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.464363, 34.808552, 28.985476>,  <36.269203, 34.943424, 28.949110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.464363, 34.808552, 28.985476>,  <36.789631, 34.583767, 29.046085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464363, 34.808552, 28.985476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123707, 0.087516, 0.988452,
		0.568735, 0.822519, -0.001646,
		-0.813165, 0.561963, -0.151525,
		36.220413, 34.977142, 28.940018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716522, 35.169922, 29.548939>,  <36.789631, 34.583767, 29.046085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716522, 35.169922, 29.548939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.339218, 35.094521, 29.439596>,  <36.112835, 35.049278, 29.373991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.339218, 35.094521, 29.439596>,  <36.716522, 35.169922, 29.548939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339218, 35.094521, 29.439596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236882, -0.194884, 0.951792,
		-0.232689, 0.962542, 0.139173,
		-0.943262, -0.188504, -0.273356,
		36.056240, 35.037968, 29.357590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305168, 35.431488, 30.075191>,  <36.716522, 35.169922, 29.548939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305168, 35.431488, 30.075191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.057384, 35.160316, 29.916859>,  <35.908714, 34.997612, 29.821859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.057384, 35.160316, 29.916859>,  <36.305168, 35.431488, 30.075191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057384, 35.160316, 29.916859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317442, -0.244845, 0.916123,
		-0.717984, 0.693154, -0.063531,
		-0.619459, -0.677929, -0.395831,
		35.871548, 34.956936, 29.798109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707493, 35.566208, 30.351761>,  <36.305168, 35.431488, 30.075191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707493, 35.566208, 30.351761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.658363, 35.194462, 30.212507>,  <35.628883, 34.971416, 30.128954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.658363, 35.194462, 30.212507>,  <35.707493, 35.566208, 30.351761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658363, 35.194462, 30.212507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249002, -0.310711, 0.917310,
		-0.960683, 0.199358, -0.193249,
		-0.122828, -0.929363, -0.348135,
		35.621513, 34.915653, 30.108067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172676, 35.352680, 30.670563>,  <35.707493, 35.566208, 30.351761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172676, 35.352680, 30.670563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.315125, 34.994911, 30.562353>,  <35.400593, 34.780251, 30.497427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.315125, 34.994911, 30.562353>,  <35.172676, 35.352680, 30.670563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315125, 34.994911, 30.562353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241643, -0.367805, 0.897958,
		-0.902655, -0.254411, -0.347114,
		0.356121, -0.894424, -0.270524,
		35.421959, 34.726585, 30.481195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883236, 34.938221, 31.178135>,  <35.172676, 35.352680, 30.670563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883236, 34.938221, 31.178135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.137817, 34.685562, 31.001074>,  <35.290565, 34.533966, 30.894838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.137817, 34.685562, 31.001074>,  <34.883236, 34.938221, 31.178135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137817, 34.685562, 31.001074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052329, -0.607933, 0.792262,
		-0.769535, -0.481076, -0.419977,
		0.636457, -0.631651, -0.442652,
		35.328754, 34.496067, 30.868279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523540, 34.349525, 31.102968>,  <34.883236, 34.938221, 31.178135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523540, 34.349525, 31.102968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.916786, 34.286964, 31.140953>,  <35.152733, 34.249428, 31.163744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.916786, 34.286964, 31.140953>,  <34.523540, 34.349525, 31.102968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916786, 34.286964, 31.140953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173795, -0.635834, 0.752005,
		-0.057236, -0.755813, -0.652281,
		0.983117, -0.156405, 0.094964,
		35.211720, 34.240044, 31.169443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613041, 33.678478, 31.202126>,  <34.523540, 34.349525, 31.102968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613041, 33.678478, 31.202126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.964046, 33.814289, 31.337589>,  <35.174648, 33.895775, 31.418869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.964046, 33.814289, 31.337589>,  <34.613041, 33.678478, 31.202126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964046, 33.814289, 31.337589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065563, -0.614631, 0.786085,
		0.475051, -0.712003, -0.517086,
		0.877513, 0.339529, 0.338662,
		35.227299, 33.916149, 31.439188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953075, 33.127979, 31.621729>,  <34.613041, 33.678478, 31.202126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953075, 33.127979, 31.621729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.161880, 33.445835, 31.745695>,  <35.287163, 33.636551, 31.820076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.161880, 33.445835, 31.745695>,  <34.953075, 33.127979, 31.621729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161880, 33.445835, 31.745695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049359, -0.390887, 0.919115,
		0.851511, -0.464488, -0.243269,
		0.522009, 0.794644, 0.309917,
		35.318481, 33.684227, 31.838671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311874, 32.859032, 32.120834>,  <34.953075, 33.127979, 31.621729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311874, 32.859032, 32.120834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.371635, 33.245266, 32.205990>,  <35.407494, 33.477009, 32.257084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.371635, 33.245266, 32.205990>,  <35.311874, 32.859032, 32.120834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371635, 33.245266, 32.205990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122556, -0.231725, 0.965030,
		0.981152, -0.118086, -0.152958,
		0.149401, 0.965587, 0.212885,
		35.416454, 33.534943, 32.269855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101086, 33.047337, 32.368191>,  <35.311874, 32.859032, 32.120834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101086, 33.047337, 32.368191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868977, 33.348812, 32.491631>,  <35.729710, 33.529697, 32.565693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868977, 33.348812, 32.491631>,  <36.101086, 33.047337, 32.368191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868977, 33.348812, 32.491631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346602, -0.114350, 0.931016,
		0.736987, 0.647205, -0.194876,
		-0.580274, 0.753691, 0.308597,
		35.694893, 33.574921, 32.584209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474663, 33.491337, 32.727425>,  <36.101086, 33.047337, 32.368191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474663, 33.491337, 32.727425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.110596, 33.561127, 32.877705>,  <35.892155, 33.603001, 32.967873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.110596, 33.561127, 32.877705>,  <36.474663, 33.491337, 32.727425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110596, 33.561127, 32.877705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331931, -0.235423, 0.913454,
		0.247823, 0.956104, 0.156361,
		-0.910168, 0.174474, 0.375704,
		35.837543, 33.613468, 32.990417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622437, 34.011913, 33.312981>,  <36.474663, 33.491337, 32.727425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622437, 34.011913, 33.312981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.953629, 34.073761, 33.528587>,  <37.152344, 34.110870, 33.657951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.953629, 34.073761, 33.528587>,  <36.622437, 34.011913, 33.312981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953629, 34.073761, 33.528587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506924, 0.204562, -0.837367,
		-0.239736, 0.966564, 0.090993,
		0.827982, 0.154621, 0.539015,
		37.202023, 34.120148, 33.690292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112892, 34.614891, 33.016655>,  <36.622437, 34.011913, 33.312981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112892, 34.614891, 33.016655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.363796, 34.417980, 33.258057>,  <37.514339, 34.299835, 33.402897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.363796, 34.417980, 33.258057>,  <37.112892, 34.614891, 33.016655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363796, 34.417980, 33.258057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776777, 0.339459, -0.530457,
		0.056267, 0.801519, 0.595316,
		0.627257, -0.492275, 0.603501,
		37.551971, 34.270298, 33.439106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678394, 35.094036, 33.305080>,  <37.112892, 34.614891, 33.016655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678394, 35.094036, 33.305080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.805279, 34.714790, 33.313568>,  <37.881409, 34.487244, 33.318661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.805279, 34.714790, 33.313568>,  <37.678394, 35.094036, 33.305080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805279, 34.714790, 33.313568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817480, 0.262027, -0.512902,
		0.480730, 0.180049, 0.858185,
		0.317215, -0.948116, 0.021222,
		37.900444, 34.430355, 33.319935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447598, 35.190311, 33.465347>,  <37.678394, 35.094036, 33.305080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447598, 35.190311, 33.465347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.411785, 34.814938, 33.331886>,  <38.390297, 34.589714, 33.251812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.411785, 34.814938, 33.331886>,  <38.447598, 35.190311, 33.465347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411785, 34.814938, 33.331886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777663, 0.143434, -0.612101,
		0.622274, -0.314266, 0.716946,
		-0.089529, -0.938437, -0.333648,
		38.384926, 34.533405, 33.231792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097710, 34.960533, 33.445488>,  <38.447598, 35.190311, 33.465347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097710, 34.960533, 33.445488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890789, 34.730991, 33.191528>,  <38.766636, 34.593266, 33.039154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890789, 34.730991, 33.191528>,  <39.097710, 34.960533, 33.445488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890789, 34.730991, 33.191528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692407, 0.155359, -0.704582,
		0.502963, -0.804088, 0.316972,
		-0.517301, -0.573853, -0.634896,
		38.735600, 34.558834, 33.001060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654545, 34.538239, 33.177677>,  <39.097710, 34.960533, 33.445488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654545, 34.538239, 33.177677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.338219, 34.533298, 32.932907>,  <39.148422, 34.530334, 32.786045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.338219, 34.533298, 32.932907>,  <39.654545, 34.538239, 33.177677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338219, 34.533298, 32.932907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610578, 0.053385, -0.790155,
		0.042419, -0.998498, -0.034682,
		-0.790819, -0.012342, -0.611925,
		39.100971, 34.529594, 32.749329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849049, 34.132668, 32.655075>,  <39.654545, 34.538239, 33.177677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849049, 34.132668, 32.655075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555832, 34.348690, 32.489674>,  <39.379902, 34.478302, 32.390430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555832, 34.348690, 32.489674>,  <39.849049, 34.132668, 32.655075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555832, 34.348690, 32.489674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569669, 0.155288, -0.807071,
		-0.371650, -0.827180, -0.421485,
		-0.733044, 0.540055, -0.413506,
		39.335918, 34.510708, 32.365623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729012, 33.861176, 31.939056>,  <39.849049, 34.132668, 32.655075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729012, 33.861176, 31.939056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.595230, 34.238060, 31.946896>,  <39.514961, 34.464191, 31.951599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.595230, 34.238060, 31.946896>,  <39.729012, 33.861176, 31.939056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595230, 34.238060, 31.946896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436965, 0.173469, -0.882593,
		-0.834985, -0.286626, -0.469730,
		-0.334457, 0.942207, 0.019599,
		39.494892, 34.520721, 31.952776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389618, 33.980553, 31.266714>,  <39.729012, 33.861176, 31.939056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389618, 33.980553, 31.266714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.461994, 34.344296, 31.416561>,  <39.505421, 34.562542, 31.506470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.461994, 34.344296, 31.416561>,  <39.389618, 33.980553, 31.266714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461994, 34.344296, 31.416561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226020, 0.332263, -0.915705,
		-0.957171, 0.250356, -0.145413,
		0.180937, 0.909353, 0.374618,
		39.516273, 34.617100, 31.528946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246964, 34.416992, 30.697187>,  <39.389618, 33.980553, 31.266714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246964, 34.416992, 30.697187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.427597, 34.681564, 30.936712>,  <39.535976, 34.840309, 31.080427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.427597, 34.681564, 30.936712>,  <39.246964, 34.416992, 30.697187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427597, 34.681564, 30.936712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397836, 0.451461, -0.798693,
		-0.798624, 0.598905, -0.059270,
		0.451583, 0.661435, 0.598813,
		39.563072, 34.879993, 31.116356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013844, 35.096073, 30.450691>,  <39.246964, 34.416992, 30.697187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013844, 35.096073, 30.450691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.371811, 35.115391, 30.628134>,  <39.586594, 35.126980, 30.734598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.371811, 35.115391, 30.628134>,  <39.013844, 35.096073, 30.450691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371811, 35.115391, 30.628134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382184, 0.430199, -0.817841,
		-0.230332, 0.901442, 0.366538,
		0.894921, 0.048290, 0.443605,
		39.640285, 35.129879, 30.761215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227978, 35.701439, 30.327612>,  <39.013844, 35.096073, 30.450691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227978, 35.701439, 30.327612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.560051, 35.494469, 30.410616>,  <39.759296, 35.370285, 30.460419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.560051, 35.494469, 30.410616>,  <39.227978, 35.701439, 30.327612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560051, 35.494469, 30.410616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410118, 0.314721, -0.856011,
		0.377616, 0.795751, 0.473483,
		0.830186, -0.517427, 0.207508,
		39.809109, 35.339241, 30.472868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703983, 36.128685, 30.159620>,  <39.227978, 35.701439, 30.327612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703983, 36.128685, 30.159620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.889191, 35.775379, 30.130060>,  <40.000317, 35.563396, 30.112324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.889191, 35.775379, 30.130060>,  <39.703983, 36.128685, 30.159620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889191, 35.775379, 30.130060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508151, 0.332845, -0.794353,
		0.726219, 0.330249, 0.602944,
		0.463021, -0.883261, -0.073902,
		40.028095, 35.510403, 30.107889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330612, 36.306793, 29.915159>,  <39.703983, 36.128685, 30.159620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330612, 36.306793, 29.915159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.292423, 35.918503, 29.826992>,  <40.269512, 35.685528, 29.774092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.292423, 35.918503, 29.826992>,  <40.330612, 36.306793, 29.915159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292423, 35.918503, 29.826992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340551, 0.176218, -0.923565,
		0.935367, -0.163235, 0.313757,
		-0.095468, -0.970722, -0.220418,
		40.263783, 35.627285, 29.760866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928272, 36.064125, 29.579679>,  <40.330612, 36.306793, 29.915159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928272, 36.064125, 29.579679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.661469, 35.795971, 29.449646>,  <40.501385, 35.635078, 29.371626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.661469, 35.795971, 29.449646>,  <40.928272, 36.064125, 29.579679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661469, 35.795971, 29.449646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346213, 0.107466, -0.931980,
		0.659722, -0.734190, 0.160415,
		-0.667011, -0.670385, -0.325084,
		40.461365, 35.594856, 29.352121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306702, 35.507397, 29.160814>,  <40.928272, 36.064125, 29.579679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306702, 35.507397, 29.160814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.920231, 35.528023, 29.059740>,  <40.688351, 35.540398, 28.999096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.920231, 35.528023, 29.059740>,  <41.306702, 35.507397, 29.160814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920231, 35.528023, 29.059740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257216, 0.263656, -0.929691,
		0.018686, -0.963238, -0.268000,
		-0.966173, 0.051561, -0.252687,
		40.630379, 35.543491, 28.983934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283066, 35.308788, 28.550627>,  <41.306702, 35.507397, 29.160814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283066, 35.308788, 28.550627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.904404, 35.437660, 28.548029>,  <40.677204, 35.514984, 28.546471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.904404, 35.437660, 28.548029>,  <41.283066, 35.308788, 28.550627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904404, 35.437660, 28.548029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046110, 0.115481, -0.992239,
		-0.318928, -0.939609, -0.124176,
		-0.946657, 0.322178, -0.006495,
		40.620407, 35.534313, 28.546080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979000, 34.927387, 28.007849>,  <41.283066, 35.308788, 28.550627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979000, 34.927387, 28.007849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.719780, 35.226536, 28.065413>,  <40.564247, 35.406025, 28.099951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.719780, 35.226536, 28.065413>,  <40.979000, 34.927387, 28.007849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719780, 35.226536, 28.065413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010267, 0.197518, -0.980246,
		-0.761527, -0.633773, -0.135680,
		-0.648052, 0.747877, 0.143909,
		40.525364, 35.450897, 28.108585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.301041, 34.884453, 27.417734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.330524, 35.252182, 27.572353>,  <40.348213, 35.472820, 27.665125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.330524, 35.252182, 27.572353>,  <40.301041, 34.884453, 27.417734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330524, 35.252182, 27.572353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059750, 0.390978, -0.918459,
		-0.995489, 0.044599, 0.083746,
		0.073706, 0.919319, 0.386549,
		40.352634, 35.527977, 27.688318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860851, 35.196457, 26.936005>,  <40.301041, 34.884453, 27.417734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860851, 35.196457, 26.936005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.100620, 35.460670, 27.116842>,  <40.244480, 35.619198, 27.225344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.100620, 35.460670, 27.116842>,  <39.860851, 35.196457, 26.936005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100620, 35.460670, 27.116842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245641, 0.385755, -0.889300,
		-0.761808, 0.644120, 0.068977,
		0.599424, 0.660533, 0.452093,
		40.280449, 35.658829, 27.252470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563107, 35.760033, 26.750288>,  <39.860851, 35.196457, 26.936005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563107, 35.760033, 26.750288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.943893, 35.823719, 26.854902>,  <40.172367, 35.861931, 26.917671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.943893, 35.823719, 26.854902>,  <39.563107, 35.760033, 26.750288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943893, 35.823719, 26.854902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125009, 0.577630, -0.806670,
		-0.279506, 0.800621, 0.529983,
		0.951971, 0.159217, 0.261536,
		40.229485, 35.871483, 26.933363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631855, 36.455788, 26.559872>,  <39.563107, 35.760033, 26.750288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631855, 36.455788, 26.559872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.988983, 36.275658, 26.556562>,  <40.203262, 36.167580, 26.554577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.988983, 36.275658, 26.556562>,  <39.631855, 36.455788, 26.559872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988983, 36.275658, 26.556562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266261, 0.542527, -0.796724,
		0.363277, 0.709132, 0.604287,
		0.892824, -0.450330, -0.008273,
		40.256832, 36.140560, 26.554081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044052, 37.032925, 26.496326>,  <39.631855, 36.455788, 26.559872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044052, 37.032925, 26.496326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.234116, 36.699966, 26.382246>,  <40.348152, 36.500191, 26.313797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.234116, 36.699966, 26.382246>,  <40.044052, 37.032925, 26.496326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234116, 36.699966, 26.382246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413495, 0.497350, -0.762670,
		0.776689, 0.244460, 0.580512,
		0.475160, -0.832396, -0.285203,
		40.376663, 36.450249, 26.296684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713619, 37.150234, 26.154556>,  <40.044052, 37.032925, 26.496326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713619, 37.150234, 26.154556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.677807, 36.778255, 26.011909>,  <40.656319, 36.555069, 25.926321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.677807, 36.778255, 26.011909>,  <40.713619, 37.150234, 26.154556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677807, 36.778255, 26.011909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599306, 0.235676, -0.765042,
		0.795497, -0.282219, 0.536225,
		-0.089535, -0.929951, -0.356615,
		40.650948, 36.499271, 25.904924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327923, 37.144794, 25.772293>,  <40.713619, 37.150234, 26.154556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327923, 37.144794, 25.772293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.114647, 36.832870, 25.641083>,  <40.986683, 36.645714, 25.562357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.114647, 36.832870, 25.641083>,  <41.327923, 37.144794, 25.772293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114647, 36.832870, 25.641083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379063, 0.126427, -0.916694,
		0.756323, -0.613111, 0.228190,
		-0.533186, -0.779815, -0.328027,
		40.954693, 36.598927, 25.542675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851543, 36.604439, 25.464512>,  <41.327923, 37.144794, 25.772293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851543, 36.604439, 25.464512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.488392, 36.521317, 25.318869>,  <41.270500, 36.471443, 25.231483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.488392, 36.521317, 25.318869>,  <41.851543, 36.604439, 25.464512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488392, 36.521317, 25.318869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368028, 0.020896, -0.929580,
		0.200779, -0.977947, 0.057507,
		-0.907878, -0.207804, -0.364107,
		41.216030, 36.458977, 25.209637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899078, 36.031029, 24.927458>,  <41.851543, 36.604439, 25.464512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899078, 36.031029, 24.927458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.565559, 36.244949, 24.872669>,  <41.365448, 36.373302, 24.839796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.565559, 36.244949, 24.872669>,  <41.899078, 36.031029, 24.927458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565559, 36.244949, 24.872669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226533, 0.105183, -0.968308,
		-0.503448, -0.838404, -0.208852,
		-0.833800, 0.534805, -0.136972,
		41.315418, 36.405392, 24.831577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597408, 35.692116, 24.381897>,  <41.899078, 36.031029, 24.927458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597408, 35.692116, 24.381897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.436806, 36.058029, 24.399599>,  <41.340443, 36.277576, 24.410219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.436806, 36.058029, 24.399599>,  <41.597408, 35.692116, 24.381897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436806, 36.058029, 24.399599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213517, 0.140484, -0.966786,
		-0.890618, -0.378725, -0.251728,
		-0.401510, 0.914785, 0.044254,
		41.316353, 36.332466, 24.412874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055573, 35.761997, 23.797899>,  <41.597408, 35.692116, 24.381897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055573, 35.761997, 23.797899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.161469, 36.130672, 23.911318>,  <41.225006, 36.351879, 23.979368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.161469, 36.130672, 23.911318>,  <41.055573, 35.761997, 23.797899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161469, 36.130672, 23.911318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159720, 0.248064, -0.955486,
		-0.951002, 0.298240, -0.081542,
		0.264737, 0.921693, 0.283544,
		41.240891, 36.407181, 23.996382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812328, 36.242764, 23.289062>,  <41.055573, 35.761997, 23.797899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812328, 36.242764, 23.289062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.077274, 36.488010, 23.461275>,  <41.236240, 36.635159, 23.564604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.077274, 36.488010, 23.461275>,  <40.812328, 36.242764, 23.289062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077274, 36.488010, 23.461275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192641, 0.415964, -0.888743,
		-0.723991, 0.671610, 0.157408,
		0.662365, 0.613118, 0.430533,
		41.275982, 36.671947, 23.590435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748417, 36.912354, 23.047144>,  <40.812328, 36.242764, 23.289062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748417, 36.912354, 23.047144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.109421, 36.942314, 23.216789>,  <41.326023, 36.960289, 23.318577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.109421, 36.942314, 23.216789>,  <40.748417, 36.912354, 23.047144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109421, 36.942314, 23.216789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351355, 0.441438, -0.825640,
		-0.249063, 0.894160, 0.372083,
		0.902506, 0.074903, 0.424114,
		41.380173, 36.964787, 23.344023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995613, 37.602097, 22.941671>,  <40.748417, 36.912354, 23.047144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995613, 37.602097, 22.941671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.334679, 37.418114, 23.047428>,  <41.538120, 37.307724, 23.110882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.334679, 37.418114, 23.047428>,  <40.995613, 37.602097, 22.941671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334679, 37.418114, 23.047428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490884, 0.490965, -0.719713,
		0.201226, 0.739863, 0.641959,
		0.847668, -0.459952, 0.264392,
		41.588978, 37.280128, 23.126745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517483, 38.114021, 22.903517>,  <40.995613, 37.602097, 22.941671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517483, 38.114021, 22.903517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.721592, 37.770584, 22.883717>,  <41.844055, 37.564522, 22.871836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.721592, 37.770584, 22.883717>,  <41.517483, 38.114021, 22.903517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721592, 37.770584, 22.883717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659383, 0.427533, -0.618409,
		0.552122, 0.282917, 0.784295,
		0.510270, -0.858588, -0.049500,
		41.874672, 37.513008, 22.868866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256092, 38.168621, 22.939255>,  <41.517483, 38.114021, 22.903517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256092, 38.168621, 22.939255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.201405, 37.832195, 22.729902>,  <42.168591, 37.630341, 22.604292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.201405, 37.832195, 22.729902>,  <42.256092, 38.168621, 22.939255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201405, 37.832195, 22.729902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490093, 0.401721, -0.773581,
		0.860881, -0.362267, 0.357276,
		-0.136718, -0.841060, -0.523379,
		42.160389, 37.579876, 22.572889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979549, 37.912277, 22.607111>,  <42.256092, 38.168621, 22.939255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979549, 37.912277, 22.607111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.711899, 37.718754, 22.381474>,  <42.551308, 37.602642, 22.246092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.711899, 37.718754, 22.381474>,  <42.979549, 37.912277, 22.607111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711899, 37.718754, 22.381474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411720, 0.390575, -0.823370,
		0.618670, -0.783188, -0.062152,
		-0.669128, -0.483805, -0.564092,
		42.511162, 37.573612, 22.212246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.372368, 37.747520, 22.014297>,  <42.979549, 37.912277, 22.607111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.372368, 37.747520, 22.014297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.995186, 37.681595, 21.898588>,  <42.768879, 37.642040, 21.829163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.995186, 37.681595, 21.898588>,  <43.372368, 37.747520, 22.014297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995186, 37.681595, 21.898588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241567, 0.259203, -0.935125,
		0.229099, -0.951657, -0.204603,
		-0.942952, -0.164811, -0.289272,
		42.712299, 37.632153, 21.811806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446781, 37.430180, 21.398050>,  <43.372368, 37.747520, 22.014297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446781, 37.430180, 21.398050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.074207, 37.575550, 21.405487>,  <42.850662, 37.662773, 21.409950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.074207, 37.575550, 21.405487>,  <43.446781, 37.430180, 21.398050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074207, 37.575550, 21.405487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098939, 0.302076, -0.948135,
		-0.350198, -0.881288, -0.317322,
		-0.931436, 0.363430, 0.018593,
		42.794777, 37.684578, 21.411064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256241, 37.373356, 20.681520>,  <43.446781, 37.430180, 21.398050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256241, 37.373356, 20.681520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.988579, 37.613876, 20.856180>,  <42.827980, 37.758190, 20.960976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.988579, 37.613876, 20.856180>,  <43.256241, 37.373356, 20.681520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.988579, 37.613876, 20.856180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081030, 0.525048, -0.847206,
		-0.738688, -0.602298, -0.302617,
		-0.669159, 0.601300, 0.436651,
		42.787830, 37.794266, 20.987175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676701, 37.369095, 20.174202>,  <43.256241, 37.373356, 20.681520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676701, 37.369095, 20.174202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.671040, 37.687103, 20.416767>,  <42.667645, 37.877911, 20.562305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.671040, 37.687103, 20.416767>,  <42.676701, 37.369095, 20.174202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671040, 37.687103, 20.416767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197423, 0.596755, -0.777758,
		-0.980216, 0.108714, -0.165400,
		-0.014150, 0.795025, 0.606412,
		42.666794, 37.925610, 20.598690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303452, 37.819206, 19.854183>,  <42.676701, 37.369095, 20.174202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303452, 37.819206, 19.854183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.493954, 38.054226, 20.115862>,  <42.608253, 38.195236, 20.272869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.493954, 38.054226, 20.115862>,  <42.303452, 37.819206, 19.854183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493954, 38.054226, 20.115862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071927, 0.715467, -0.694934,
		-0.876362, 0.378018, 0.298482,
		0.476251, 0.587545, 0.654199,
		42.636829, 38.230488, 20.312122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087811, 38.445786, 19.995432>,  <42.303452, 37.819206, 19.854183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087811, 38.445786, 19.995432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.484787, 38.470142, 20.038065>,  <42.722973, 38.484756, 20.063644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.484787, 38.470142, 20.038065>,  <42.087811, 38.445786, 19.995432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484787, 38.470142, 20.038065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047080, 0.613063, -0.788630,
		-0.113364, 0.787684, 0.605560,
		0.992437, 0.060892, 0.106584,
		42.782516, 38.488411, 20.070040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698616, 38.238934, 19.356754>,  <42.087811, 38.445786, 19.995432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698616, 38.238934, 19.356754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.617668, 37.912235, 19.572893>,  <41.569099, 37.716217, 19.702578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.617668, 37.912235, 19.572893>,  <41.698616, 38.238934, 19.356754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617668, 37.912235, 19.572893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845834, 0.132312, 0.516777,
		-0.493568, 0.561627, 0.664052,
		-0.202374, -0.816743, 0.540348,
		41.556957, 37.667213, 19.734997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794281, 38.969566, 19.457401>,  <41.698616, 38.238934, 19.356754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794281, 38.969566, 19.457401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.483932, 39.219273, 19.420948>,  <41.297722, 39.369099, 19.399076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.483932, 39.219273, 19.420948>,  <41.794281, 38.969566, 19.457401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483932, 39.219273, 19.420948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443558, -0.437053, 0.782458,
		0.448636, 0.647512, 0.615999,
		-0.775875, 0.624270, -0.091131,
		41.251171, 39.406555, 19.393608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722523, 39.260975, 20.086121>,  <41.794281, 38.969566, 19.457401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722523, 39.260975, 20.086121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.372494, 39.364769, 19.922695>,  <41.162476, 39.427044, 19.824640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.372494, 39.364769, 19.922695>,  <41.722523, 39.260975, 20.086121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372494, 39.364769, 19.922695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454661, -0.151284, 0.877722,
		0.165945, 0.953825, 0.250361,
		-0.875069, 0.259483, -0.408562,
		41.109974, 39.442616, 19.800127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405392, 39.712532, 20.587122>,  <41.722523, 39.260975, 20.086121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405392, 39.712532, 20.587122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.102692, 39.583630, 20.359621>,  <40.921070, 39.506287, 20.223120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.102692, 39.583630, 20.359621>,  <41.405392, 39.712532, 20.587122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102692, 39.583630, 20.359621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563278, -0.120070, 0.817497,
		-0.331733, 0.939007, -0.090656,
		-0.756750, -0.322255, -0.568754,
		40.875668, 39.486954, 20.188995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757195, 40.057232, 20.774374>,  <41.405392, 39.712532, 20.587122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757195, 40.057232, 20.774374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.650402, 39.721302, 20.585306>,  <40.586327, 39.519745, 20.471865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.650402, 39.721302, 20.585306>,  <40.757195, 40.057232, 20.774374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650402, 39.721302, 20.585306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699076, -0.168825, 0.694831,
		-0.663334, 0.515941, -0.542027,
		-0.266984, -0.839823, -0.472670,
		40.570309, 39.469357, 20.443504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018787, 40.108658, 20.757734>,  <40.757195, 40.057232, 20.774374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018787, 40.108658, 20.757734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.101898, 39.720127, 20.711502>,  <40.151764, 39.487011, 20.683764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.101898, 39.720127, 20.711502>,  <40.018787, 40.108658, 20.757734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101898, 39.720127, 20.711502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688224, -0.229126, 0.688366,
		-0.695109, -0.063480, -0.716096,
		0.207774, -0.971324, -0.115580,
		40.164230, 39.428730, 20.676828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330425, 39.797050, 20.792933>,  <40.018787, 40.108658, 20.757734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330425, 39.797050, 20.792933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.586090, 39.497971, 20.864943>,  <39.739491, 39.318523, 20.908150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.586090, 39.497971, 20.864943>,  <39.330425, 39.797050, 20.792933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586090, 39.497971, 20.864943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658014, -0.410501, 0.631274,
		-0.398093, -0.521961, -0.754373,
		0.639171, -0.747693, 0.180040,
		39.777840, 39.273659, 20.918951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977016, 39.162170, 20.839243>,  <39.330425, 39.797050, 20.792933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977016, 39.162170, 20.839243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.313007, 39.035786, 21.015701>,  <39.514603, 38.959957, 21.121576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.313007, 39.035786, 21.015701>,  <38.977016, 39.162170, 20.839243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313007, 39.035786, 21.015701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531457, -0.643125, 0.551311,
		0.109522, -0.697539, -0.708127,
		0.839975, -0.315958, 0.441149,
		39.564999, 38.940998, 21.148046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867344, 38.372250, 20.962164>,  <38.977016, 39.162170, 20.839243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867344, 38.372250, 20.962164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.174873, 38.456432, 21.203699>,  <39.359390, 38.506943, 21.348621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.174873, 38.456432, 21.203699>,  <38.867344, 38.372250, 20.962164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174873, 38.456432, 21.203699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356928, -0.642272, 0.678298,
		0.530580, -0.737018, -0.418676,
		0.768822, 0.210454, 0.603839,
		39.405521, 38.519569, 21.384851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244354, 37.770927, 21.155146>,  <38.867344, 38.372250, 20.962164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244354, 37.770927, 21.155146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.321083, 38.044052, 21.437132>,  <39.367119, 38.207928, 21.606323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.321083, 38.044052, 21.437132>,  <39.244354, 37.770927, 21.155146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321083, 38.044052, 21.437132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148232, -0.689909, 0.708557,
		0.970171, -0.240416, -0.031125,
		0.191822, 0.682808, 0.704967,
		39.378628, 38.248894, 21.648623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676674, 37.462185, 21.714111>,  <39.244354, 37.770927, 21.155146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676674, 37.462185, 21.714111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.506855, 37.771362, 21.902712>,  <39.404964, 37.956867, 22.015873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.506855, 37.771362, 21.902712>,  <39.676674, 37.462185, 21.714111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506855, 37.771362, 21.902712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104212, -0.559019, 0.822580,
		0.899387, 0.300090, 0.317882,
		-0.424550, 0.772945, 0.471502,
		39.379490, 38.003246, 22.044163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067341, 37.679192, 22.340551>,  <39.676674, 37.462185, 21.714111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067341, 37.679192, 22.340551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.693665, 37.817120, 22.377188>,  <39.469460, 37.899876, 22.399170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.693665, 37.817120, 22.377188>,  <40.067341, 37.679192, 22.340551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693665, 37.817120, 22.377188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064517, -0.415758, 0.907184,
		0.350896, 0.841573, 0.410643,
		-0.934189, 0.344820, 0.091592,
		39.413406, 37.920567, 22.404665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033089, 38.138309, 23.067511>,  <40.067341, 37.679192, 22.340551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033089, 38.138309, 23.067511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.657379, 38.033253, 22.979160>,  <39.431953, 37.970219, 22.926149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.657379, 38.033253, 22.979160>,  <40.033089, 38.138309, 23.067511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657379, 38.033253, 22.979160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093661, -0.422999, 0.901277,
		-0.330146, 0.867231, 0.372712,
		-0.939272, -0.262644, -0.220877,
		39.375599, 37.954460, 22.912897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668545, 38.190548, 23.736629>,  <40.033089, 38.138309, 23.067511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668545, 38.190548, 23.736629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.396816, 37.996552, 23.516338>,  <39.233780, 37.880154, 23.384163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.396816, 37.996552, 23.516338>,  <39.668545, 38.190548, 23.736629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396816, 37.996552, 23.516338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287080, -0.515027, 0.807670,
		-0.675355, 0.706772, 0.210638,
		-0.679323, -0.484994, -0.550727,
		39.193020, 37.851051, 23.351120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031494, 38.127808, 24.101774>,  <39.668545, 38.190548, 23.736629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031494, 38.127808, 24.101774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.021336, 37.837742, 23.826532>,  <39.015240, 37.663700, 23.661386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.021336, 37.837742, 23.826532>,  <39.031494, 38.127808, 24.101774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021336, 37.837742, 23.826532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429752, -0.613558, 0.662465,
		-0.902590, 0.312539, -0.296060,
		-0.025396, -0.725166, -0.688106,
		39.013718, 37.620193, 23.620100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276329, 37.883499, 24.052794>,  <39.031494, 38.127808, 24.101774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276329, 37.883499, 24.052794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.516369, 37.589085, 23.927496>,  <38.660393, 37.412434, 23.852318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.516369, 37.589085, 23.927496>,  <38.276329, 37.883499, 24.052794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516369, 37.589085, 23.927496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487207, -0.646894, 0.586649,
		-0.634431, -0.199438, -0.746808,
		0.600106, -0.736038, -0.313242,
		38.696400, 37.368275, 23.833523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878357, 37.197300, 23.882614>,  <38.276329, 37.883499, 24.052794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878357, 37.197300, 23.882614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.248959, 37.051727, 23.920856>,  <38.471321, 36.964386, 23.943802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.248959, 37.051727, 23.920856>,  <37.878357, 37.197300, 23.882614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248959, 37.051727, 23.920856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334963, -0.681958, 0.650179,
		-0.171420, -0.634420, -0.753742,
		0.926507, -0.363929, 0.095606,
		38.526909, 36.942547, 23.949537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835533, 36.418514, 23.878746>,  <37.878357, 37.197300, 23.882614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835533, 36.418514, 23.878746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.184479, 36.507763, 24.052734>,  <38.393845, 36.561314, 24.157127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.184479, 36.507763, 24.052734>,  <37.835533, 36.418514, 23.878746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184479, 36.507763, 24.052734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282349, -0.496386, 0.820902,
		0.399077, -0.838937, -0.370029,
		0.872362, 0.223126, 0.434969,
		38.446186, 36.574699, 24.183226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054573, 35.810322, 24.100391>,  <37.835533, 36.418514, 23.878746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054573, 35.810322, 24.100391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.228378, 36.110924, 24.298962>,  <38.332661, 36.291283, 24.418104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.228378, 36.110924, 24.298962>,  <38.054573, 35.810322, 24.100391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228378, 36.110924, 24.298962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328644, -0.380881, 0.864247,
		0.838563, -0.538677, 0.081478,
		0.434517, 0.751503, 0.496426,
		38.358734, 36.336376, 24.447889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508526, 35.465519, 24.546465>,  <38.054573, 35.810322, 24.100391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508526, 35.465519, 24.546465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.447289, 35.832104, 24.694332>,  <38.410545, 36.052055, 24.783052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.447289, 35.832104, 24.694332>,  <38.508526, 35.465519, 24.546465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447289, 35.832104, 24.694332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240757, -0.397400, 0.885500,
		0.958435, 0.046567, 0.281486,
		-0.153097, 0.916463, 0.369670,
		38.401360, 36.107044, 24.805233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794716, 35.432552, 25.189081>,  <38.508526, 35.465519, 24.546465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794716, 35.432552, 25.189081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.551735, 35.750286, 25.191542>,  <38.405945, 35.940926, 25.193018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.551735, 35.750286, 25.191542>,  <38.794716, 35.432552, 25.189081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551735, 35.750286, 25.191542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316991, -0.249499, 0.915023,
		0.728366, 0.553884, 0.403355,
		-0.607453, 0.794332, 0.006151,
		38.369499, 35.988586, 25.193386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.879410, 34.606876, 30.711723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.574574, 34.854763, 30.636707>,  <40.391670, 35.003494, 30.591698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.574574, 34.854763, 30.636707>,  <40.879410, 34.606876, 30.711723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574574, 34.854763, 30.636707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300591, -0.082096, 0.950213,
		0.573466, 0.780521, 0.248846,
		-0.762091, 0.619716, -0.187538,
		40.345947, 35.040676, 30.580446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823376, 35.160446, 31.341434>,  <40.879410, 34.606876, 30.711723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823376, 35.160446, 31.341434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.463863, 35.161694, 31.166079>,  <40.248158, 35.162441, 31.060865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.463863, 35.161694, 31.166079>,  <40.823376, 35.160446, 31.341434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463863, 35.161694, 31.166079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433120, -0.161083, 0.886825,
		-0.067851, 0.986936, 0.146129,
		-0.898779, 0.003120, -0.438392,
		40.194229, 35.162628, 31.034561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370403, 35.700874, 31.674288>,  <40.823376, 35.160446, 31.341434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370403, 35.700874, 31.674288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.107864, 35.440186, 31.522255>,  <39.950340, 35.283772, 31.431036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.107864, 35.440186, 31.522255>,  <40.370403, 35.700874, 31.674288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107864, 35.440186, 31.522255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386141, -0.142610, 0.911349,
		-0.648152, 0.744927, -0.158056,
		-0.656349, -0.651725, -0.380080,
		39.910961, 35.244667, 31.408232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783871, 35.763645, 32.102531>,  <40.370403, 35.700874, 31.674288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783871, 35.763645, 32.102531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.690727, 35.424980, 31.911137>,  <39.634842, 35.221783, 31.796301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.690727, 35.424980, 31.911137>,  <39.783871, 35.763645, 32.102531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690727, 35.424980, 31.911137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625522, -0.246340, 0.740296,
		-0.744648, 0.471685, -0.472242,
		-0.232854, -0.846658, -0.478486,
		39.620872, 35.170982, 31.767591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977623, 35.721748, 31.996304>,  <39.783871, 35.763645, 32.102531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977623, 35.721748, 31.996304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.143990, 35.358002, 31.993002>,  <39.243809, 35.139755, 31.991020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.143990, 35.358002, 31.993002>,  <38.977623, 35.721748, 31.996304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143990, 35.358002, 31.993002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753482, -0.349669, 0.556773,
		-0.509198, -0.225350, -0.830623,
		0.415912, -0.909367, -0.008254,
		39.268764, 35.085190, 31.990526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389038, 35.239159, 31.923412>,  <38.977623, 35.721748, 31.996304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389038, 35.239159, 31.923412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688202, 35.012215, 32.061245>,  <38.867702, 34.876049, 32.143944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688202, 35.012215, 32.061245>,  <38.389038, 35.239159, 31.923412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688202, 35.012215, 32.061245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626098, -0.430488, 0.650139,
		-0.220521, -0.701989, -0.677187,
		0.747911, -0.567355, 0.344582,
		38.912575, 34.842007, 32.164619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154774, 34.556549, 31.877779>,  <38.389038, 35.239159, 31.923412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154774, 34.556549, 31.877779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.447124, 34.551044, 32.150726>,  <38.622536, 34.547741, 32.314495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.447124, 34.551044, 32.150726>,  <38.154774, 34.556549, 31.877779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447124, 34.551044, 32.150726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592244, -0.509694, 0.624067,
		0.339209, -0.860246, -0.380676,
		0.730879, -0.013764, 0.682368,
		38.666389, 34.546917, 32.355438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079823, 33.892273, 32.136974>,  <38.154774, 34.556549, 31.877779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079823, 33.892273, 32.136974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.295609, 34.085224, 32.413029>,  <38.425079, 34.200993, 32.578663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.295609, 34.085224, 32.413029>,  <38.079823, 33.892273, 32.136974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295609, 34.085224, 32.413029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550796, -0.417781, 0.722553,
		0.636868, -0.769918, 0.040312,
		0.539465, 0.482375, 0.690139,
		38.457447, 34.229939, 32.620071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186188, 33.399529, 32.715118>,  <38.079823, 33.892273, 32.136974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186188, 33.399529, 32.715118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.240768, 33.760578, 32.878410>,  <38.273518, 33.977207, 32.976387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.240768, 33.760578, 32.878410>,  <38.186188, 33.399529, 32.715118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240768, 33.760578, 32.878410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387283, -0.330688, 0.860614,
		0.911807, -0.275537, 0.304446,
		0.136455, 0.902621, 0.408234,
		38.281704, 34.031364, 33.000881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346630, 33.230122, 33.418995>,  <38.186188, 33.399529, 32.715118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346630, 33.230122, 33.418995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.230671, 33.612354, 33.397778>,  <38.161095, 33.841694, 33.385048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.230671, 33.612354, 33.397778>,  <38.346630, 33.230122, 33.418995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230671, 33.612354, 33.397778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635183, -0.150651, 0.757526,
		0.715890, 0.253300, 0.650646,
		-0.289902, 0.955585, -0.053042,
		38.143700, 33.899029, 33.381866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333527, 33.520069, 34.088760>,  <38.346630, 33.230122, 33.418995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333527, 33.520069, 34.088760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.093124, 33.742916, 33.859531>,  <37.948883, 33.876625, 33.721996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.093124, 33.742916, 33.859531>,  <38.333527, 33.520069, 34.088760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093124, 33.742916, 33.859531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639720, 0.094502, 0.762777,
		0.479114, 0.825038, 0.299604,
		-0.601006, 0.557119, -0.573070,
		37.912823, 33.910053, 33.687611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341499, 34.177853, 34.320740>,  <38.333527, 33.520069, 34.088760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341499, 34.177853, 34.320740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.989853, 34.161003, 34.130844>,  <37.778866, 34.150894, 34.016907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.989853, 34.161003, 34.130844>,  <38.341499, 34.177853, 34.320740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989853, 34.161003, 34.130844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464125, 0.302101, 0.832660,
		0.108345, 0.952345, -0.285133,
		-0.879119, -0.042122, -0.474738,
		37.726116, 34.148365, 33.988422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005909, 34.784706, 34.531399>,  <38.341499, 34.177853, 34.320740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005909, 34.784706, 34.531399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.759506, 34.484909, 34.434406>,  <37.611664, 34.305031, 34.376209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.759506, 34.484909, 34.434406>,  <38.005909, 34.784706, 34.531399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759506, 34.484909, 34.434406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433838, 0.065855, 0.898581,
		-0.657510, 0.658730, -0.365725,
		-0.616007, -0.749492, -0.242482,
		37.574703, 34.260063, 34.361660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400688, 34.973122, 34.866688>,  <38.005909, 34.784706, 34.531399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400688, 34.973122, 34.866688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.414207, 34.578362, 34.803585>,  <37.422321, 34.341507, 34.765724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.414207, 34.578362, 34.803585>,  <37.400688, 34.973122, 34.866688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414207, 34.578362, 34.803585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427956, -0.156936, 0.890070,
		-0.903167, 0.037428, -0.427654,
		0.033801, -0.986899, -0.157757,
		37.424347, 34.282291, 34.756256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358425, 34.780415, 35.684322>,  <37.400688, 34.973122, 34.866688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358425, 34.780415, 35.684322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.483875, 35.078667, 35.919498>,  <37.559147, 35.257618, 36.060604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.483875, 35.078667, 35.919498>,  <37.358425, 34.780415, 35.684322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483875, 35.078667, 35.919498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377920, 0.470007, -0.797665,
		-0.871100, 0.472363, -0.134383,
		0.313626, 0.745632, 0.587939,
		37.577965, 35.302357, 36.095879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138248, 35.463310, 35.414688>,  <37.358425, 34.780415, 35.684322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138248, 35.463310, 35.414688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.475418, 35.526257, 35.620491>,  <37.677719, 35.564026, 35.743973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.475418, 35.526257, 35.620491>,  <37.138248, 35.463310, 35.414688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475418, 35.526257, 35.620491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379275, 0.504462, -0.775673,
		-0.381615, 0.848971, 0.365537,
		0.842924, 0.157369, 0.514504,
		37.728294, 35.573467, 35.774841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255318, 36.236801, 35.372730>,  <37.138248, 35.463310, 35.414688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255318, 36.236801, 35.372730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.600830, 36.059910, 35.469318>,  <37.808140, 35.953773, 35.527271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.600830, 36.059910, 35.469318>,  <37.255318, 36.236801, 35.372730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600830, 36.059910, 35.469318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490593, 0.628893, -0.603169,
		0.114880, 0.639472, 0.760183,
		0.863783, -0.442233, 0.241473,
		37.859966, 35.927238, 35.541759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806568, 36.749222, 35.489334>,  <37.255318, 36.236801, 35.372730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806568, 36.749222, 35.489334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.004299, 36.410805, 35.409477>,  <38.122940, 36.207756, 35.361565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.004299, 36.410805, 35.409477>,  <37.806568, 36.749222, 35.489334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004299, 36.410805, 35.409477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677912, 0.518962, -0.520686,
		0.544125, 0.122055, 0.830079,
		0.494331, -0.846039, -0.199638,
		38.152599, 36.156994, 35.349586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495968, 36.935268, 35.619347>,  <37.806568, 36.749222, 35.489334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495968, 36.935268, 35.619347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.507549, 36.609409, 35.387653>,  <38.514500, 36.413895, 35.248638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.507549, 36.609409, 35.387653>,  <38.495968, 36.935268, 35.619347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507549, 36.609409, 35.387653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820017, 0.350729, -0.452286,
		0.571607, -0.461886, 0.678179,
		0.028953, -0.814648, -0.579233,
		38.516235, 36.365017, 35.213882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232414, 36.746239, 35.482224>,  <38.495968, 36.935268, 35.619347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232414, 36.746239, 35.482224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.052444, 36.565727, 35.173958>,  <38.944462, 36.457420, 34.988998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.052444, 36.565727, 35.173958>,  <39.232414, 36.746239, 35.482224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052444, 36.565727, 35.173958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660213, 0.413040, -0.627309,
		0.601404, -0.791041, 0.112102,
		-0.449925, -0.451278, -0.770660,
		38.917465, 36.430344, 34.942760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705597, 36.613518, 34.846275>,  <39.232414, 36.746239, 35.482224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705597, 36.613518, 34.846275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.367096, 36.550068, 34.642830>,  <39.163994, 36.511997, 34.520763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.367096, 36.550068, 34.642830>,  <39.705597, 36.613518, 34.846275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367096, 36.550068, 34.642830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351285, 0.551618, -0.756516,
		0.400568, -0.818874, -0.411085,
		-0.846253, -0.158628, -0.508618,
		39.113220, 36.502480, 34.490246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904205, 36.274624, 34.230446>,  <39.705597, 36.613518, 34.846275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904205, 36.274624, 34.230446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.544819, 36.438335, 34.166897>,  <39.329185, 36.536564, 34.128769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.544819, 36.438335, 34.166897>,  <39.904205, 36.274624, 34.230446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544819, 36.438335, 34.166897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287937, 0.276155, -0.916968,
		-0.331426, -0.869613, -0.365964,
		-0.898471, 0.409281, -0.158869,
		39.275276, 36.561119, 34.119236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761307, 35.949471, 33.576138>,  <39.904205, 36.274624, 34.230446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761307, 35.949471, 33.576138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.548164, 36.283134, 33.633053>,  <39.420280, 36.483334, 33.667202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.548164, 36.283134, 33.633053>,  <39.761307, 35.949471, 33.576138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548164, 36.283134, 33.633053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489285, 0.440908, -0.752463,
		-0.690412, -0.331330, -0.643080,
		-0.532852, 0.834159, 0.142293,
		39.388309, 36.533382, 33.675739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418602, 36.086163, 32.931759>,  <39.761307, 35.949471, 33.576138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418602, 36.086163, 32.931759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.402676, 36.440109, 33.117416>,  <39.393120, 36.652477, 33.228809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.402676, 36.440109, 33.117416>,  <39.418602, 36.086163, 32.931759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402676, 36.440109, 33.117416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255306, 0.458099, -0.851448,
		-0.966040, 0.084594, -0.244153,
		-0.039819, 0.884867, 0.464139,
		39.390732, 36.705570, 33.256657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117290, 36.596081, 32.455978>,  <39.418602, 36.086163, 32.931759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117290, 36.596081, 32.455978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303555, 36.833153, 32.718853>,  <39.415314, 36.975395, 32.876579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303555, 36.833153, 32.718853>,  <39.117290, 36.596081, 32.455978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303555, 36.833153, 32.718853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107563, 0.699200, -0.706788,
		-0.878405, 0.399808, 0.261836,
		0.465655, 0.592682, 0.657186,
		39.443253, 37.010956, 32.916008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007565, 37.264961, 32.266674>,  <39.117290, 36.596081, 32.455978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007565, 37.264961, 32.266674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.322468, 37.311695, 32.508854>,  <39.511410, 37.339737, 32.654163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.322468, 37.311695, 32.508854>,  <39.007565, 37.264961, 32.266674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322468, 37.311695, 32.508854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449575, 0.563258, -0.693269,
		-0.422025, 0.817979, 0.390904,
		0.787259, 0.116836, 0.605452,
		39.558647, 37.346745, 32.690491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100971, 37.991291, 32.292648>,  <39.007565, 37.264961, 32.266674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100971, 37.991291, 32.292648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.450733, 37.818680, 32.381374>,  <39.660591, 37.715115, 32.434608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.450733, 37.818680, 32.381374>,  <39.100971, 37.991291, 32.292648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450733, 37.818680, 32.381374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415096, 0.428610, -0.802489,
		0.251225, 0.793774, 0.553903,
		0.874404, -0.431528, 0.221815,
		39.713055, 37.689220, 32.447918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581203, 38.528267, 32.379539>,  <39.100971, 37.991291, 32.292648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581203, 38.528267, 32.379539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.774757, 38.192276, 32.281326>,  <39.890888, 37.990681, 32.222397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.774757, 38.192276, 32.281326>,  <39.581203, 38.528267, 32.379539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774757, 38.192276, 32.281326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376194, 0.452975, -0.808265,
		0.790148, 0.298738, 0.535184,
		0.483885, -0.839981, -0.245534,
		39.919922, 37.940281, 32.207664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604431, 39.204113, 32.714993>,  <39.581203, 38.528267, 32.379539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604431, 39.204113, 32.714993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.343018, 39.351349, 32.450447>,  <39.186169, 39.439690, 32.291721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.343018, 39.351349, 32.450447>,  <39.604431, 39.204113, 32.714993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343018, 39.351349, 32.450447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749445, -0.192369, 0.633503,
		0.105962, 0.909671, 0.401585,
		-0.653532, 0.368093, -0.661365,
		39.146957, 39.461777, 32.252037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260708, 39.790947, 33.037148>,  <39.604431, 39.204113, 32.714993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260708, 39.790947, 33.037148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.008038, 39.637615, 32.767620>,  <38.856434, 39.545616, 32.605904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.008038, 39.637615, 32.767620>,  <39.260708, 39.790947, 33.037148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008038, 39.637615, 32.767620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638039, -0.236622, 0.732746,
		-0.440328, 0.892785, -0.095113,
		-0.631679, -0.383334, -0.673822,
		38.818535, 39.522614, 32.565472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609177, 40.056572, 33.224331>,  <39.260708, 39.790947, 33.037148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609177, 40.056572, 33.224331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.502647, 39.752941, 32.986717>,  <38.438728, 39.570763, 32.844151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.502647, 39.752941, 32.986717>,  <38.609177, 40.056572, 33.224331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502647, 39.752941, 32.986717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705573, -0.266343, 0.656680,
		-0.656686, 0.594024, -0.464649,
		-0.266327, -0.759076, -0.594031,
		38.422749, 39.525219, 32.808506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921085, 40.126652, 33.043762>,  <38.609177, 40.056572, 33.224331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921085, 40.126652, 33.043762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.005749, 39.736462, 33.019592>,  <38.056545, 39.502346, 33.005089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.005749, 39.736462, 33.019592>,  <37.921085, 40.126652, 33.043762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005749, 39.736462, 33.019592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773228, -0.204949, 0.600096,
		-0.597763, -0.080290, -0.797642,
		0.211658, -0.975474, -0.060429,
		38.069244, 39.443821, 33.001465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201626, 39.899399, 32.928513>,  <37.921085, 40.126652, 33.043762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201626, 39.899399, 32.928513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.419174, 39.583755, 33.042717>,  <37.549702, 39.394371, 33.111240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.419174, 39.583755, 33.042717>,  <37.201626, 39.899399, 32.928513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419174, 39.583755, 33.042717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790464, -0.367512, 0.490002,
		-0.281731, -0.492189, -0.823637,
		0.543870, -0.789104, 0.285518,
		37.582336, 39.347023, 33.128372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886566, 39.235897, 32.662167>,  <37.201626, 39.899399, 32.928513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886566, 39.235897, 32.662167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.120579, 39.134541, 32.970329>,  <37.260986, 39.073727, 33.155228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.120579, 39.134541, 32.970329>,  <36.886566, 39.235897, 32.662167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120579, 39.134541, 32.970329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767593, -0.479641, 0.425141,
		0.261793, -0.840082, -0.475107,
		0.585034, -0.253390, 0.770408,
		37.296089, 39.058525, 33.201450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724251, 38.606018, 32.864094>,  <36.886566, 39.235897, 32.662167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724251, 38.606018, 32.864094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.900177, 38.733372, 33.199997>,  <37.005733, 38.809784, 33.401539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.900177, 38.733372, 33.199997>,  <36.724251, 38.606018, 32.864094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900177, 38.733372, 33.199997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813887, -0.254002, 0.522561,
		0.379675, -0.913300, 0.147413,
		0.439812, 0.318381, 0.839761,
		37.032120, 38.828884, 33.451927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748177, 38.087852, 33.293530>,  <36.724251, 38.606018, 32.864094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748177, 38.087852, 33.293530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.807533, 38.368027, 33.572777>,  <36.843147, 38.536133, 33.740326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.807533, 38.368027, 33.572777>,  <36.748177, 38.087852, 33.293530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807533, 38.368027, 33.572777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755831, -0.374904, 0.536811,
		0.637729, -0.607317, 0.473780,
		0.148392, 0.700438, 0.698117,
		36.852051, 38.578159, 33.782211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683216, 37.796844, 33.948021>,  <36.748177, 38.087852, 33.293530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683216, 37.796844, 33.948021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.643654, 38.189342, 34.014210>,  <36.619915, 38.424839, 34.053925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.643654, 38.189342, 34.014210>,  <36.683216, 37.796844, 33.948021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643654, 38.189342, 34.014210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708772, -0.186186, 0.680424,
		0.698469, -0.049982, 0.713892,
		-0.098907, 0.981242, 0.165471,
		36.613983, 38.483715, 34.063850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617954, 37.861862, 34.724094>,  <36.683216, 37.796844, 33.948021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617954, 37.861862, 34.724094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.472622, 38.207607, 34.585033>,  <36.385422, 38.415054, 34.501598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.472622, 38.207607, 34.585033>,  <36.617954, 37.861862, 34.724094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472622, 38.207607, 34.585033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822018, -0.121791, 0.556285,
		0.438494, 0.487890, 0.754776,
		-0.363331, 0.864367, -0.347650,
		36.363625, 38.466919, 34.480740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398560, 38.179413, 35.293991>,  <36.617954, 37.861862, 34.724094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398560, 38.179413, 35.293991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.199429, 38.375767, 35.007999>,  <36.079948, 38.493580, 34.836403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.199429, 38.375767, 35.007999>,  <36.398560, 38.179413, 35.293991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199429, 38.375767, 35.007999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851422, -0.119719, 0.510635,
		0.165068, 0.862958, 0.477553,
		-0.497829, 0.490888, -0.714980,
		36.050079, 38.523033, 34.793507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073944, 38.841629, 35.552570>,  <36.398560, 38.179413, 35.293991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073944, 38.841629, 35.552570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.860931, 38.720562, 35.236393>,  <35.733124, 38.647923, 35.046684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.860931, 38.720562, 35.236393>,  <36.073944, 38.841629, 35.552570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860931, 38.720562, 35.236393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844401, 0.125641, 0.520770,
		-0.058309, 0.944779, -0.322481,
		-0.532529, -0.302668, -0.790446,
		35.701172, 38.629761, 34.999260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.818497, 41.941158, 29.955210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653824, 41.712418, 29.671377>,  <40.555019, 41.575172, 29.501078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653824, 41.712418, 29.671377>,  <40.818497, 41.941158, 29.955210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653824, 41.712418, 29.671377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793182, -0.158578, 0.587977,
		-0.448758, 0.804886, -0.388298,
		-0.411678, -0.571850, -0.709584,
		40.530319, 41.540863, 29.458502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044350, 42.037594, 29.876980>,  <40.818497, 41.941158, 29.955210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044350, 42.037594, 29.876980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122761, 41.663200, 29.760010>,  <40.169807, 41.438564, 29.689827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122761, 41.663200, 29.760010>,  <40.044350, 42.037594, 29.876980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122761, 41.663200, 29.760010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836429, -0.315248, 0.448336,
		-0.511821, 0.156707, -0.844679,
		0.196026, -0.935981, -0.292425,
		40.181568, 41.382404, 29.672283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399792, 41.702374, 29.937979>,  <40.044350, 42.037594, 29.876980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399792, 41.702374, 29.937979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635448, 41.386242, 29.870693>,  <39.776840, 41.196564, 29.830322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635448, 41.386242, 29.870693>,  <39.399792, 41.702374, 29.937979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635448, 41.386242, 29.870693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591624, -0.563698, 0.576390,
		-0.550356, -0.240059, -0.799675,
		0.589143, -0.790327, -0.168210,
		39.812191, 41.149143, 29.820229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964725, 41.078827, 29.899574>,  <39.399792, 41.702374, 29.937979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964725, 41.078827, 29.899574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331520, 40.938625, 29.975767>,  <39.551598, 40.854504, 30.021482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331520, 40.938625, 29.975767>,  <38.964725, 41.078827, 29.899574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331520, 40.938625, 29.975767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366474, -0.551525, 0.749345,
		-0.157594, -0.756945, -0.634191,
		0.916985, -0.350506, 0.190484,
		39.606617, 40.833473, 30.032911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889870, 40.465611, 29.897581>,  <38.964725, 41.078827, 29.899574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889870, 40.465611, 29.897581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229523, 40.511681, 30.103767>,  <39.433315, 40.539322, 30.227480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229523, 40.511681, 30.103767>,  <38.889870, 40.465611, 29.897581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229523, 40.511681, 30.103767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331442, -0.643666, 0.689812,
		0.411240, -0.756590, -0.508383,
		0.849134, 0.115179, 0.515467,
		39.484264, 40.546234, 30.258408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111248, 39.876419, 30.024939>,  <38.889870, 40.465611, 29.897581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111248, 39.876419, 30.024939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282982, 40.106232, 30.303675>,  <39.386021, 40.244122, 30.470917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282982, 40.106232, 30.303675>,  <39.111248, 39.876419, 30.024939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282982, 40.106232, 30.303675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218236, -0.682708, 0.697340,
		0.876383, -0.451465, -0.167724,
		0.429331, 0.574534, 0.696840,
		39.411781, 40.278591, 30.512726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505119, 39.334194, 30.469627>,  <39.111248, 39.876419, 30.024939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505119, 39.334194, 30.469627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497639, 39.656734, 30.706085>,  <39.493149, 39.850258, 30.847960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497639, 39.656734, 30.706085>,  <39.505119, 39.334194, 30.469627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497639, 39.656734, 30.706085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208585, -0.581387, 0.786436,
		0.977825, -0.108595, 0.179067,
		-0.018705, 0.806347, 0.591146,
		39.492027, 39.898640, 30.883429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959663, 39.279415, 31.004791>,  <39.505119, 39.334194, 30.469627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959663, 39.279415, 31.004791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689377, 39.534069, 31.153442>,  <39.527206, 39.686863, 31.242634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689377, 39.534069, 31.153442>,  <39.959663, 39.279415, 31.004791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689377, 39.534069, 31.153442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093952, -0.574397, 0.813167,
		0.731154, 0.514552, 0.447940,
		-0.675712, 0.636635, 0.371630,
		39.486664, 39.725060, 31.264931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942680, 39.115330, 31.717308>,  <39.959663, 39.279415, 31.004791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942680, 39.115330, 31.717308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621975, 39.354355, 31.721073>,  <39.429550, 39.497768, 31.723333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621975, 39.354355, 31.721073>,  <39.942680, 39.115330, 31.717308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621975, 39.354355, 31.721073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391818, -0.537478, 0.746724,
		0.451274, 0.595010, 0.665068,
		-0.801767, 0.597562, 0.009414,
		39.381443, 39.533623, 31.723898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407619, 38.804394, 32.240639>,  <39.942680, 39.115330, 31.717308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407619, 38.804394, 32.240639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426205, 38.419113, 32.134747>,  <40.437355, 38.187946, 32.071213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426205, 38.419113, 32.134747>,  <40.407619, 38.804394, 32.240639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426205, 38.419113, 32.134747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713725, 0.217425, -0.665825,
		0.698883, -0.158009, 0.697564,
		0.046462, -0.963203, -0.264729,
		40.440144, 38.130154, 32.055328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114300, 38.712032, 32.153954>,  <40.407619, 38.804394, 32.240639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114300, 38.712032, 32.153954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933933, 38.428658, 31.936777>,  <40.825714, 38.258633, 31.806471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933933, 38.428658, 31.936777>,  <41.114300, 38.712032, 32.153954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933933, 38.428658, 31.936777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657117, 0.148174, -0.739082,
		0.604044, -0.690043, 0.398713,
		-0.450919, -0.708439, -0.542942,
		40.798656, 38.216125, 31.773895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643761, 38.300575, 31.876446>,  <41.114300, 38.712032, 32.153954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643761, 38.300575, 31.876446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326950, 38.184719, 31.661484>,  <41.136864, 38.115204, 31.532507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326950, 38.184719, 31.661484>,  <41.643761, 38.300575, 31.876446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326950, 38.184719, 31.661484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572208, -0.045389, -0.818851,
		0.212781, -0.956058, 0.201685,
		-0.792024, -0.289642, -0.537407,
		41.089344, 38.097828, 31.500261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889492, 37.791794, 31.468653>,  <41.643761, 38.300575, 31.876446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889492, 37.791794, 31.468653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563633, 37.924522, 31.278391>,  <41.368118, 38.004158, 31.164234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563633, 37.924522, 31.278391>,  <41.889492, 37.791794, 31.468653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563633, 37.924522, 31.278391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476937, -0.083331, -0.874978,
		-0.329971, -0.939655, -0.090372,
		-0.814647, 0.331819, -0.475654,
		41.319241, 38.024067, 31.135695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724293, 37.350128, 30.773413>,  <41.889492, 37.791794, 31.468653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724293, 37.350128, 30.773413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531853, 37.693203, 30.700846>,  <41.416389, 37.899048, 30.657305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531853, 37.693203, 30.700846>,  <41.724293, 37.350128, 30.773413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531853, 37.693203, 30.700846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496041, 0.095694, -0.863010,
		-0.722835, -0.505181, -0.471488,
		-0.481095, 0.857691, -0.181420,
		41.387524, 37.950512, 30.646420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442715, 37.163754, 30.120813>,  <41.724293, 37.350128, 30.773413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442715, 37.163754, 30.120813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452732, 37.559437, 30.178562>,  <41.458744, 37.796844, 30.213211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452732, 37.559437, 30.178562>,  <41.442715, 37.163754, 30.120813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452732, 37.559437, 30.178562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387613, 0.123512, -0.913510,
		-0.921482, 0.078842, -0.380336,
		0.025047, 0.989206, 0.144374,
		41.460247, 37.856197, 30.221874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083286, 37.434879, 29.593437>,  <41.442715, 37.163754, 30.120813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083286, 37.434879, 29.593437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306828, 37.737919, 29.728334>,  <41.440952, 37.919743, 29.809273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306828, 37.737919, 29.728334>,  <41.083286, 37.434879, 29.593437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306828, 37.737919, 29.728334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285258, 0.206236, -0.935999,
		-0.778663, 0.619284, -0.100856,
		0.558849, 0.757598, 0.337245,
		41.474483, 37.965199, 29.829508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856640, 37.992077, 29.223267>,  <41.083286, 37.434879, 29.593437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856640, 37.992077, 29.223267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223969, 38.070053, 29.361071>,  <41.444366, 38.116837, 29.443752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223969, 38.070053, 29.361071>,  <40.856640, 37.992077, 29.223267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223969, 38.070053, 29.361071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309069, 0.190658, -0.931733,
		-0.247314, 0.962106, 0.114835,
		0.918320, 0.194939, 0.344510,
		41.499466, 38.128536, 29.464424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092747, 38.603588, 28.921154>,  <40.856640, 37.992077, 29.223267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092747, 38.603588, 28.921154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429569, 38.417793, 29.030842>,  <41.631664, 38.306316, 29.096655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429569, 38.417793, 29.030842>,  <41.092747, 38.603588, 28.921154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429569, 38.417793, 29.030842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397424, 0.190541, -0.897635,
		0.364688, 0.864840, 0.345043,
		0.842055, -0.464485, 0.274220,
		41.682186, 38.278446, 29.113108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583035, 38.902332, 28.592852>,  <41.092747, 38.603588, 28.921154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583035, 38.902332, 28.592852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793430, 38.572033, 28.674314>,  <41.919670, 38.373856, 28.723192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793430, 38.572033, 28.674314>,  <41.583035, 38.902332, 28.592852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793430, 38.572033, 28.674314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599306, 0.189953, -0.777657,
		0.603461, 0.531096, 0.594788,
		0.525992, -0.825745, 0.203659,
		41.951229, 38.324310, 28.735413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341850, 39.037674, 28.393728>,  <41.583035, 38.902332, 28.592852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341850, 39.037674, 28.393728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327953, 38.639011, 28.423317>,  <42.319614, 38.399815, 28.441071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327953, 38.639011, 28.423317>,  <42.341850, 39.037674, 28.393728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327953, 38.639011, 28.423317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580973, -0.080366, -0.809946,
		0.813181, 0.014833, 0.581822,
		-0.034744, -0.996655, 0.073970,
		42.317532, 38.340015, 28.445507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083897, 38.866226, 28.382133>,  <42.341850, 39.037674, 28.393728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083897, 38.866226, 28.382133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870148, 38.539986, 28.293373>,  <42.741898, 38.344242, 28.240116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870148, 38.539986, 28.293373>,  <43.083897, 38.866226, 28.382133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870148, 38.539986, 28.293373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546786, -0.133357, -0.826584,
		0.644570, -0.563037, 0.517222,
		-0.534372, -0.815601, -0.221902,
		42.709835, 38.295307, 28.226803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576717, 38.438614, 28.071150>,  <43.083897, 38.866226, 28.382133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576717, 38.438614, 28.071150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229057, 38.287518, 27.943474>,  <43.020462, 38.196857, 27.866869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229057, 38.287518, 27.943474>,  <43.576717, 38.438614, 28.071150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229057, 38.287518, 27.943474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373550, -0.078494, -0.924283,
		0.324087, -0.922577, 0.209330,
		-0.869153, -0.377744, -0.319190,
		42.968311, 38.174194, 27.847717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829395, 37.874611, 27.641352>,  <43.576717, 38.438614, 28.071150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829395, 37.874611, 27.641352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446255, 37.946568, 27.551758>,  <43.216370, 37.989742, 27.498001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446255, 37.946568, 27.551758>,  <43.829395, 37.874611, 27.641352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446255, 37.946568, 27.551758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236414, 0.050637, -0.970332,
		-0.163208, -0.982383, -0.091031,
		-0.957848, 0.179886, -0.223984,
		43.158901, 38.000534, 27.484562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.390472, 38.470821, 23.836863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.558731, 38.646484, 24.154404>,  <36.659687, 38.751881, 24.344929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.558731, 38.646484, 24.154404>,  <36.390472, 38.470821, 23.836863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558731, 38.646484, 24.154404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526670, -0.594280, 0.607825,
		0.738699, -0.673776, -0.018691,
		0.420646, 0.439156, 0.793851,
		36.684925, 38.778233, 24.392559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579952, 37.883286, 24.226967>,  <36.390472, 38.470821, 23.836863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579952, 37.883286, 24.226967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.556286, 38.197746, 24.473045>,  <36.542088, 38.386421, 24.620693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.556286, 38.197746, 24.473045>,  <36.579952, 37.883286, 24.226967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556286, 38.197746, 24.473045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535055, -0.545247, 0.645308,
		0.842743, -0.290984, 0.452893,
		-0.059164, 0.786151, 0.615195,
		36.538536, 38.433590, 24.657604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763817, 37.640797, 24.859791>,  <36.579952, 37.883286, 24.226967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763817, 37.640797, 24.859791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.553246, 37.970631, 24.942671>,  <36.426903, 38.168530, 24.992399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.553246, 37.970631, 24.942671>,  <36.763817, 37.640797, 24.859791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553246, 37.970631, 24.942671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427160, -0.467222, 0.774104,
		0.735125, 0.319001, 0.598189,
		-0.526427, 0.824586, 0.207202,
		36.395317, 38.218006, 25.004831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615719, 37.625885, 25.522875>,  <36.763817, 37.640797, 24.859791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615719, 37.625885, 25.522875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.340748, 37.909462, 25.459829>,  <36.175766, 38.079609, 25.422003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.340748, 37.909462, 25.459829>,  <36.615719, 37.625885, 25.522875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340748, 37.909462, 25.459829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434913, -0.228048, 0.871117,
		0.581627, 0.667380, 0.465095,
		-0.687430, 0.708941, -0.157614,
		36.134518, 38.122143, 25.412546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464222, 38.102455, 26.253151>,  <36.615719, 37.625885, 25.522875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464222, 38.102455, 26.253151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.164299, 38.112190, 25.988668>,  <35.984344, 38.118031, 25.829979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.164299, 38.112190, 25.988668>,  <36.464222, 38.102455, 26.253151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164299, 38.112190, 25.988668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648001, -0.228987, 0.726402,
		-0.133729, 0.973125, 0.187468,
		-0.749808, 0.024339, -0.661208,
		35.939358, 38.119492, 25.790306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958515, 38.511303, 26.463675>,  <36.464222, 38.102455, 26.253151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958515, 38.511303, 26.463675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.756084, 38.270153, 26.216959>,  <35.634624, 38.125465, 26.068930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.756084, 38.270153, 26.216959>,  <35.958515, 38.511303, 26.463675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756084, 38.270153, 26.216959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685341, -0.153083, 0.711950,
		-0.523636, 0.783014, -0.335702,
		-0.506077, -0.602872, -0.616791,
		35.604263, 38.089291, 26.031921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139652, 38.699425, 26.442894>,  <35.958515, 38.511303, 26.463675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139652, 38.699425, 26.442894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.152485, 38.323997, 26.305456>,  <35.160183, 38.098740, 26.222994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.152485, 38.323997, 26.305456>,  <35.139652, 38.699425, 26.442894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152485, 38.323997, 26.305456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767836, -0.243216, 0.592684,
		-0.639843, 0.244810, -0.728470,
		0.032080, -0.938570, -0.343594,
		35.162109, 38.042427, 26.202377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491051, 38.490784, 26.388628>,  <35.139652, 38.699425, 26.442894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491051, 38.490784, 26.388628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.665352, 38.130775, 26.392334>,  <34.769932, 37.914772, 26.394558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.665352, 38.130775, 26.392334>,  <34.491051, 38.490784, 26.388628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665352, 38.130775, 26.392334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664398, -0.314694, 0.677896,
		-0.607205, -0.301546, -0.735100,
		0.435748, -0.900021, 0.009263,
		34.796078, 37.860767, 26.395113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912659, 37.923847, 26.341393>,  <34.491051, 38.490784, 26.388628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912659, 37.923847, 26.341393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.217663, 37.711548, 26.489384>,  <34.400665, 37.584167, 26.578178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.217663, 37.711548, 26.489384>,  <33.912659, 37.923847, 26.341393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217663, 37.711548, 26.489384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632623, -0.491889, 0.598191,
		-0.135498, -0.690186, -0.710833,
		0.762514, -0.530743, 0.369977,
		34.446419, 37.552326, 26.600376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626118, 37.321495, 26.645533>,  <33.912659, 37.923847, 26.341393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626118, 37.321495, 26.645533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.994026, 37.289528, 26.799223>,  <34.214771, 37.270348, 26.891438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.994026, 37.289528, 26.799223>,  <33.626118, 37.321495, 26.645533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994026, 37.289528, 26.799223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354513, -0.589154, 0.726098,
		0.168336, -0.804058, -0.570222,
		0.919774, -0.079922, 0.384225,
		34.269958, 37.265553, 26.914490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700485, 36.556995, 26.712992>,  <33.626118, 37.321495, 26.645533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700485, 36.556995, 26.712992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.938583, 36.746620, 26.972513>,  <34.081444, 36.860397, 27.128225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.938583, 36.746620, 26.972513>,  <33.700485, 36.556995, 26.712992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938583, 36.746620, 26.972513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261307, -0.649341, 0.714195,
		0.759868, -0.594659, -0.262642,
		0.595247, 0.474064, 0.648802,
		34.117157, 36.888840, 27.167154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014889, 36.039883, 27.029295>,  <33.700485, 36.556995, 26.712992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014889, 36.039883, 27.029295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.077663, 36.347794, 27.276785>,  <34.115330, 36.532539, 27.425280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.077663, 36.347794, 27.276785>,  <34.014889, 36.039883, 27.029295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077663, 36.347794, 27.276785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168540, -0.596423, 0.784776,
		0.973121, -0.227440, 0.036137,
		0.156937, 0.769773, 0.618725,
		34.124744, 36.578724, 27.462402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456459, 35.792534, 27.544626>,  <34.014889, 36.039883, 27.029295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456459, 35.792534, 27.544626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.317665, 36.117458, 27.732138>,  <34.234386, 36.312412, 27.844645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.317665, 36.117458, 27.732138>,  <34.456459, 35.792534, 27.544626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317665, 36.117458, 27.732138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170205, -0.546072, 0.820266,
		0.922296, 0.204833, 0.327740,
		-0.346987, 0.812311, 0.468776,
		34.213570, 36.361153, 27.872770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890259, 35.976276, 28.201942>,  <34.456459, 35.792534, 27.544626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890259, 35.976276, 28.201942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.539013, 36.164532, 28.236395>,  <34.328266, 36.277485, 28.257067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.539013, 36.164532, 28.236395>,  <34.890259, 35.976276, 28.201942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539013, 36.164532, 28.236395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107756, -0.369932, 0.922789,
		0.466164, 0.801030, 0.375555,
		-0.878112, 0.470639, 0.086133,
		34.275578, 36.305725, 28.262236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607407, 36.096081, 28.550228>,  <34.890259, 35.976276, 28.201942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607407, 36.096081, 28.550228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.828709, 35.763599, 28.572147>,  <35.961491, 35.564110, 28.585299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.828709, 35.763599, 28.572147>,  <35.607407, 36.096081, 28.550228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828709, 35.763599, 28.572147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493603, 0.274132, -0.825353,
		0.671018, 0.483678, 0.561952,
		0.553254, -0.831208, 0.054797,
		35.994686, 35.514236, 28.588587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344223, 36.322289, 28.391788>,  <35.607407, 36.096081, 28.550228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344223, 36.322289, 28.391788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.323292, 35.935352, 28.292578>,  <36.310734, 35.703190, 28.233051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.323292, 35.935352, 28.292578>,  <36.344223, 36.322289, 28.391788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323292, 35.935352, 28.292578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629951, 0.160738, -0.759819,
		0.774869, -0.196006, 0.600965,
		-0.052331, -0.967339, -0.248025,
		36.307594, 35.645149, 28.218170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007889, 36.105495, 28.317135>,  <36.344223, 36.322289, 28.391788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007889, 36.105495, 28.317135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.787552, 35.840424, 28.114183>,  <36.655350, 35.681381, 27.992413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.787552, 35.840424, 28.114183>,  <37.007889, 36.105495, 28.317135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787552, 35.840424, 28.114183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629345, 0.069484, -0.774014,
		0.548174, -0.745677, 0.378776,
		-0.550845, -0.662675, -0.507377,
		36.622299, 35.641621, 27.961969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490395, 35.666962, 28.030359>,  <37.007889, 36.105495, 28.317135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490395, 35.666962, 28.030359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173103, 35.584240, 27.801268>,  <36.982727, 35.534607, 27.663813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173103, 35.584240, 27.801268>,  <37.490395, 35.666962, 28.030359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173103, 35.584240, 27.801268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515515, 0.272518, -0.812390,
		0.324085, -0.939663, -0.109558,
		-0.793230, -0.206804, -0.572729,
		36.935135, 35.522198, 27.629450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823036, 35.231228, 27.559238>,  <37.490395, 35.666962, 28.030359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823036, 35.231228, 27.559238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.473782, 35.363712, 27.416164>,  <37.264229, 35.443203, 27.330320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.473782, 35.363712, 27.416164>,  <37.823036, 35.231228, 27.559238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473782, 35.363712, 27.416164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452034, 0.275412, -0.848419,
		-0.182491, -0.902469, -0.390188,
		-0.873134, 0.331207, -0.357686,
		37.211842, 35.463074, 27.308859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744183, 34.890564, 26.886234>,  <37.823036, 35.231228, 27.559238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744183, 34.890564, 26.886234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.509605, 35.214367, 26.897448>,  <37.368858, 35.408649, 26.904177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.509605, 35.214367, 26.897448>,  <37.744183, 34.890564, 26.886234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509605, 35.214367, 26.897448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303262, 0.251525, -0.919112,
		-0.751080, -0.530502, -0.392997,
		-0.586439, 0.809508, 0.028034,
		37.333675, 35.457218, 26.905857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427883, 34.941803, 26.209282>,  <37.744183, 34.890564, 26.886234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427883, 34.941803, 26.209282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.408833, 35.305672, 26.374317>,  <37.397400, 35.523994, 26.473339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.408833, 35.305672, 26.374317>,  <37.427883, 34.941803, 26.209282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408833, 35.305672, 26.374317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246378, 0.410995, -0.877714,
		-0.968003, 0.059848, -0.243698,
		-0.047629, 0.909671, 0.412590,
		37.394543, 35.578571, 26.498095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102566, 35.328651, 25.693605>,  <37.427883, 34.941803, 26.209282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102566, 35.328651, 25.693605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.296177, 35.585827, 25.931042>,  <37.412346, 35.740131, 26.073503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.296177, 35.585827, 25.931042>,  <37.102566, 35.328651, 25.693605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296177, 35.585827, 25.931042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384850, 0.452813, -0.804271,
		-0.785879, 0.617734, -0.028258,
		0.484030, 0.642935, 0.593591,
		37.441387, 35.778706, 26.109119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939362, 35.981243, 25.451773>,  <37.102566, 35.328651, 25.693605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939362, 35.981243, 25.451773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.275280, 36.013290, 25.666555>,  <37.476830, 36.032516, 25.795425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.275280, 36.013290, 25.666555>,  <36.939362, 35.981243, 25.451773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275280, 36.013290, 25.666555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402700, 0.571408, -0.715070,
		-0.364110, 0.816746, 0.447604,
		0.839796, 0.080114, 0.536959,
		37.527218, 36.037323, 25.827642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153740, 36.516376, 25.222826>,  <36.939362, 35.981243, 25.451773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153740, 36.516376, 25.222826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.489071, 36.352932, 25.367178>,  <37.690269, 36.254864, 25.453789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.489071, 36.352932, 25.367178>,  <37.153740, 36.516376, 25.222826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489071, 36.352932, 25.367178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522312, 0.412387, -0.746410,
		0.156171, 0.814231, 0.559141,
		0.838332, -0.408614, 0.360880,
		37.740570, 36.230347, 25.475443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561497, 36.987144, 25.024809>,  <37.153740, 36.516376, 25.222826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561497, 36.987144, 25.024809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.818493, 36.690105, 25.100452>,  <37.972691, 36.511883, 25.145840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.818493, 36.690105, 25.100452>,  <37.561497, 36.987144, 25.024809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818493, 36.690105, 25.100452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639965, 0.384233, -0.665439,
		0.421488, 0.548562, 0.722100,
		0.642489, -0.742593, 0.189111,
		38.011238, 36.467327, 25.157187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181316, 37.279579, 25.352034>,  <37.561497, 36.987144, 25.024809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181316, 37.279579, 25.352034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.257256, 36.928970, 25.175095>,  <38.302818, 36.718605, 25.068932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.257256, 36.928970, 25.175095>,  <38.181316, 37.279579, 25.352034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257256, 36.928970, 25.175095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499587, 0.474096, -0.725014,
		0.845204, -0.083348, 0.527904,
		0.189849, -0.876519, -0.442348,
		38.314209, 36.666016, 25.042391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935539, 37.203308, 25.258848>,  <38.181316, 37.279579, 25.352034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935539, 37.203308, 25.258848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.768421, 36.952023, 24.996309>,  <38.668148, 36.801250, 24.838785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.768421, 36.952023, 24.996309>,  <38.935539, 37.203308, 25.258848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768421, 36.952023, 24.996309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526526, 0.421318, -0.738418,
		0.740416, -0.654094, 0.154746,
		-0.417798, -0.628214, -0.656348,
		38.643082, 36.763557, 24.799404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484432, 36.976070, 24.820305>,  <38.935539, 37.203308, 25.258848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484432, 36.976070, 24.820305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.164421, 36.841743, 24.621435>,  <38.972416, 36.761147, 24.502113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.164421, 36.841743, 24.621435>,  <39.484432, 36.976070, 24.820305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164421, 36.841743, 24.621435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429047, 0.259011, -0.865351,
		0.419374, -0.905616, -0.063134,
		-0.800028, -0.335818, -0.497174,
		38.924412, 36.740997, 24.472282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005394, 36.319740, 24.762754>,  <39.484432, 36.976070, 24.820305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005394, 36.319740, 24.762754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.385220, 36.343815, 24.885851>,  <40.613113, 36.358257, 24.959709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.385220, 36.343815, 24.885851>,  <40.005394, 36.319740, 24.762754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385220, 36.343815, 24.885851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251690, -0.439069, 0.862479,
		0.187026, -0.896435, -0.401777,
		0.949565, 0.060183, 0.307742,
		40.670090, 36.361870, 24.978174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199814, 35.685875, 25.045851>,  <40.005394, 36.319740, 24.762754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199814, 35.685875, 25.045851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.425594, 35.981289, 25.193342>,  <40.561062, 36.158539, 25.281837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.425594, 35.981289, 25.193342>,  <40.199814, 35.685875, 25.045851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425594, 35.981289, 25.193342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170776, -0.332551, 0.927494,
		0.807609, -0.586493, -0.061584,
		0.564449, 0.738536, 0.368730,
		40.594929, 36.202850, 25.303961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613293, 35.251442, 25.517414>,  <40.199814, 35.685875, 25.045851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613293, 35.251442, 25.517414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.616276, 35.634842, 25.631414>,  <40.618065, 35.864880, 25.699816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.616276, 35.634842, 25.631414>,  <40.613293, 35.251442, 25.517414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616276, 35.634842, 25.631414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012585, -0.284898, 0.958475,
		0.999893, -0.010734, 0.009938,
		0.007457, 0.958498, 0.285003,
		40.618511, 35.922390, 25.716915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094688, 35.424015, 26.052019>,  <40.613293, 35.251442, 25.517414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094688, 35.424015, 26.052019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.857285, 35.735596, 26.132994>,  <40.714844, 35.922546, 26.181578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.857285, 35.735596, 26.132994>,  <41.094688, 35.424015, 26.052019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857285, 35.735596, 26.132994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112539, -0.329375, 0.937469,
		0.796923, 0.533611, 0.283148,
		-0.593505, 0.778956, 0.202434,
		40.679234, 35.969284, 26.193724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466698, 35.655960, 26.658003>,  <41.094688, 35.424015, 26.052019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466698, 35.655960, 26.658003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.093166, 35.794724, 26.623068>,  <40.869049, 35.877983, 26.602108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.093166, 35.794724, 26.623068>,  <41.466698, 35.655960, 26.658003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093166, 35.794724, 26.623068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108118, -0.040971, 0.993294,
		0.341003, 0.937004, 0.075767,
		-0.933824, 0.346908, -0.087335,
		40.813019, 35.898796, 26.596867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438232, 35.990292, 27.309765>,  <41.466698, 35.655960, 26.658003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438232, 35.990292, 27.309765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.058708, 35.961250, 27.186810>,  <40.830994, 35.943825, 27.113037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.058708, 35.961250, 27.186810>,  <41.438232, 35.990292, 27.309765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058708, 35.961250, 27.186810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305661, -0.034088, 0.951530,
		-0.079562, 0.996778, 0.010151,
		-0.948811, -0.072603, -0.307388,
		40.774067, 35.939468, 27.094593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100918, 36.505104, 27.741919>,  <41.438232, 35.990292, 27.309765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100918, 36.505104, 27.741919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.839134, 36.238949, 27.598286>,  <40.682064, 36.079254, 27.512106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.839134, 36.238949, 27.598286>,  <41.100918, 36.505104, 27.741919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839134, 36.238949, 27.598286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483577, 0.003271, 0.875296,
		-0.581241, 0.746487, -0.323909,
		-0.654456, -0.665392, -0.359083,
		40.642796, 36.039330, 27.490561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523911, 36.763889, 28.000475>,  <41.100918, 36.505104, 27.741919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523911, 36.763889, 28.000475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.484848, 36.380371, 27.893766>,  <40.461411, 36.150261, 27.829742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.484848, 36.380371, 27.893766>,  <40.523911, 36.763889, 28.000475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484848, 36.380371, 27.893766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392543, -0.209209, 0.895623,
		-0.914534, 0.192184, -0.355939,
		-0.097658, -0.958799, -0.266770,
		40.455551, 36.092731, 27.813736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018333, 36.644760, 28.340317>,  <40.523911, 36.763889, 28.000475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018333, 36.644760, 28.340317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.148003, 36.275814, 28.256262>,  <40.225803, 36.054447, 28.205830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.148003, 36.275814, 28.256262>,  <40.018333, 36.644760, 28.340317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148003, 36.275814, 28.256262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369243, -0.327881, 0.869571,
		-0.870961, -0.204298, -0.446866,
		0.324170, -0.922364, -0.210136,
		40.245255, 35.999104, 28.193222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507298, 36.101669, 28.503195>,  <40.018333, 36.644760, 28.340317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507298, 36.101669, 28.503195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.857277, 35.908119, 28.510382>,  <40.067265, 35.791988, 28.514694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.857277, 35.908119, 28.510382>,  <39.507298, 36.101669, 28.503195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857277, 35.908119, 28.510382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263387, -0.444471, 0.856197,
		-0.406310, -0.753862, -0.516337,
		0.874951, -0.483877, 0.017964,
		40.119762, 35.762955, 28.515772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364090, 35.408455, 28.733015>,  <39.507298, 36.101669, 28.503195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364090, 35.408455, 28.733015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.760406, 35.437126, 28.778950>,  <39.998196, 35.454330, 28.806511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.760406, 35.437126, 28.778950>,  <39.364090, 35.408455, 28.733015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760406, 35.437126, 28.778950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058104, -0.541017, 0.839002,
		0.122270, -0.837951, -0.531871,
		0.990794, 0.071681, 0.114839,
		40.057644, 35.458630, 28.813402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655361, 34.675713, 28.906261>,  <39.364090, 35.408455, 28.733015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655361, 34.675713, 28.906261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.930649, 34.930889, 29.044474>,  <40.095821, 35.083996, 29.127401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.930649, 34.930889, 29.044474>,  <39.655361, 34.675713, 28.906261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930649, 34.930889, 29.044474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049876, -0.516738, 0.854689,
		0.723790, -0.570977, -0.387445,
		0.688215, 0.637940, 0.345532,
		40.137112, 35.122272, 29.148132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191929, 34.346226, 29.440897>,  <39.655361, 34.675713, 28.906261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191929, 34.346226, 29.440897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.196419, 34.734104, 29.538519>,  <40.199112, 34.966831, 29.597092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.196419, 34.734104, 29.538519>,  <40.191929, 34.346226, 29.440897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196419, 34.734104, 29.538519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118703, -0.241052, 0.963225,
		0.992866, -0.039782, 0.112400,
		0.011224, 0.969696, 0.244055,
		40.199787, 35.025013, 29.611736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607601, 34.363918, 30.035723>,  <40.191929, 34.346226, 29.440897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607601, 34.363918, 30.035723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.424686, 34.719505, 30.045717>,  <40.314938, 34.932858, 30.051714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.424686, 34.719505, 30.045717>,  <40.607601, 34.363918, 30.035723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424686, 34.719505, 30.045717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148082, -0.103816, 0.983511,
		0.876901, 0.446052, 0.179114,
		-0.457292, 0.888966, 0.024985,
		40.287498, 34.986195, 30.053213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.777630, 37.489346, 26.969742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.471283, 37.746502, 26.965002>,  <43.287476, 37.900795, 26.962158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.471283, 37.746502, 26.965002>,  <43.777630, 37.489346, 26.969742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471283, 37.746502, 26.965002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238570, 0.266993, -0.933702,
		-0.597103, -0.717919, -0.357855,
		-0.765867, 0.642890, -0.011851,
		43.241524, 37.939369, 26.961447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389015, 37.391350, 26.414751>,  <43.777630, 37.489346, 26.969742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389015, 37.391350, 26.414751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.319843, 37.771004, 26.520010>,  <43.278339, 37.998795, 26.583164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.319843, 37.771004, 26.520010>,  <43.389015, 37.391350, 26.414751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319843, 37.771004, 26.520010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227981, 0.298489, -0.926784,
		-0.958186, -0.100276, -0.268001,
		-0.172930, 0.949131, 0.263147,
		43.267963, 38.055744, 26.598953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068695, 37.693531, 25.801813>,  <43.389015, 37.391350, 26.414751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068695, 37.693531, 25.801813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.198574, 38.015339, 26.000740>,  <43.276501, 38.208424, 26.120096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.198574, 38.015339, 26.000740>,  <43.068695, 37.693531, 25.801813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198574, 38.015339, 26.000740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152638, 0.474342, -0.867007,
		-0.933420, 0.357424, 0.031218,
		0.324697, 0.804517, 0.497317,
		43.295982, 38.256695, 26.149935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573467, 38.190865, 25.781723>,  <43.068695, 37.693531, 25.801813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573467, 38.190865, 25.781723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.911270, 38.399632, 25.829727>,  <43.113953, 38.524891, 25.858530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.911270, 38.399632, 25.829727>,  <42.573467, 38.190865, 25.781723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911270, 38.399632, 25.829727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048773, 0.298120, -0.953282,
		-0.533315, 0.799202, 0.277221,
		0.844510, 0.521920, 0.120012,
		43.164623, 38.556206, 25.865730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360107, 38.777172, 25.517847>,  <42.573467, 38.190865, 25.781723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360107, 38.777172, 25.517847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.760086, 38.778515, 25.513857>,  <43.000072, 38.779320, 25.511463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.760086, 38.778515, 25.513857>,  <42.360107, 38.777172, 25.517847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760086, 38.778515, 25.513857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010495, 0.387845, -0.921665,
		0.000777, 0.921719, 0.387859,
		0.999945, 0.003355, -0.009975,
		43.060070, 38.779522, 25.510864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435169, 39.297672, 25.142630>,  <42.360107, 38.777172, 25.517847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435169, 39.297672, 25.142630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.801819, 39.138004, 25.151321>,  <43.021809, 39.042206, 25.156536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.801819, 39.138004, 25.151321>,  <42.435169, 39.297672, 25.142630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801819, 39.138004, 25.151321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145582, 0.282690, -0.948099,
		0.372307, 0.872211, 0.317231,
		0.916621, -0.399167, 0.021731,
		43.076805, 39.018253, 25.157841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939430, 39.822788, 25.024019>,  <42.435169, 39.297672, 25.142630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939430, 39.822788, 25.024019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.101631, 39.471737, 24.921776>,  <43.198952, 39.261105, 24.860430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.101631, 39.471737, 24.921776>,  <42.939430, 39.822788, 25.024019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101631, 39.471737, 24.921776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208674, 0.361121, -0.908871,
		0.889958, 0.315209, 0.329573,
		0.405500, -0.877631, -0.255607,
		43.223282, 39.208447, 24.845095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478779, 39.996109, 24.581753>,  <42.939430, 39.822788, 25.024019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478779, 39.996109, 24.581753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.469025, 39.602871, 24.509161>,  <43.463173, 39.366928, 24.465607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.469025, 39.602871, 24.509161>,  <43.478779, 39.996109, 24.581753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469025, 39.602871, 24.509161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374947, 0.159286, -0.913260,
		0.926726, -0.090315, 0.364723,
		-0.024385, -0.983093, -0.181478,
		43.461708, 39.307941, 24.454718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085899, 39.848454, 24.373259>,  <43.478779, 39.996109, 24.581753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085899, 39.848454, 24.373259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.877071, 39.544415, 24.218496>,  <43.751774, 39.361992, 24.125639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.877071, 39.544415, 24.218496>,  <44.085899, 39.848454, 24.373259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877071, 39.544415, 24.218496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369289, 0.207458, -0.905863,
		0.768812, -0.615800, 0.172390,
		-0.522066, -0.760100, -0.386904,
		43.720451, 39.316383, 24.102425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537659, 39.574715, 23.986414>,  <44.085899, 39.848454, 24.373259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537659, 39.574715, 23.986414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.172802, 39.473156, 23.857704>,  <43.953888, 39.412220, 23.780478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.172802, 39.473156, 23.857704>,  <44.537659, 39.574715, 23.986414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172802, 39.473156, 23.857704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240960, 0.302908, -0.922055,
		0.331570, -0.918578, -0.215117,
		-0.912140, -0.253891, -0.321775,
		43.899158, 39.396988, 23.761171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.653091, 39.176723, 23.424049>,  <44.537659, 39.574715, 23.986414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.653091, 39.176723, 23.424049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.269882, 39.278824, 23.371843>,  <44.039955, 39.340084, 23.340521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.269882, 39.278824, 23.371843>,  <44.653091, 39.176723, 23.424049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269882, 39.278824, 23.371843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170312, 0.140532, -0.975318,
		-0.230607, -0.956608, -0.178105,
		-0.958026, 0.255248, -0.130514,
		43.982475, 39.355400, 23.332689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433064, 38.869530, 22.787729>,  <44.653091, 39.176723, 23.424049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.433064, 38.869530, 22.787729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.162033, 39.154648, 22.860176>,  <43.999413, 39.325718, 22.903645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.162033, 39.154648, 22.860176>,  <44.433064, 38.869530, 22.787729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162033, 39.154648, 22.860176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085547, 0.168207, -0.982033,
		-0.730457, -0.680899, -0.052995,
		-0.677580, 0.712799, 0.181117,
		43.958759, 39.368488, 22.914511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799732, 38.732594, 22.328424>,  <44.433064, 38.869530, 22.787729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799732, 38.732594, 22.328424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.803108, 39.121811, 22.420612>,  <43.805134, 39.355343, 22.475925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.803108, 39.121811, 22.420612>,  <43.799732, 38.732594, 22.328424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803108, 39.121811, 22.420612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162207, 0.228758, -0.959874,
		-0.986721, -0.029282, 0.159766,
		0.008441, 0.973043, 0.230470,
		43.805641, 39.413723, 22.489754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298473, 39.024590, 21.871822>,  <43.799732, 38.732594, 22.328424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298473, 39.024590, 21.871822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.505791, 39.343346, 21.995977>,  <43.630180, 39.534599, 22.070469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.505791, 39.343346, 21.995977>,  <43.298473, 39.024590, 21.871822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.505791, 39.343346, 21.995977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148100, 0.441091, -0.885158,
		-0.842279, 0.412807, 0.346635,
		0.518297, 0.796887, 0.310385,
		43.661282, 39.582413, 22.089092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.334446, 38.982956, 21.090300>,  <43.298473, 39.024590, 21.871822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.334446, 38.982956, 21.090300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.101139, 38.764904, 20.849426>,  <42.961155, 38.634071, 20.704903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.101139, 38.764904, 20.849426>,  <43.334446, 38.982956, 21.090300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101139, 38.764904, 20.849426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430758, -0.420935, 0.798286,
		-0.688653, 0.725012, 0.010699,
		-0.583271, -0.545134, -0.602183,
		42.926159, 38.601364, 20.668772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621105, 39.079533, 21.288559>,  <43.334446, 38.982956, 21.090300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621105, 39.079533, 21.288559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.666359, 38.723530, 21.111881>,  <42.693512, 38.509930, 21.005875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.666359, 38.723530, 21.111881>,  <42.621105, 39.079533, 21.288559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.666359, 38.723530, 21.111881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485118, -0.437436, 0.757172,
		-0.867100, 0.128614, -0.481245,
		0.113131, -0.890005, -0.441693,
		42.700298, 38.456528, 20.979374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020473, 38.809540, 21.529747>,  <42.621105, 39.079533, 21.288559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020473, 38.809540, 21.529747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.244812, 38.517532, 21.373533>,  <42.379414, 38.342327, 21.279804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.244812, 38.517532, 21.373533>,  <42.020473, 38.809540, 21.529747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244812, 38.517532, 21.373533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414700, -0.655973, 0.630653,
		-0.716572, -0.191744, -0.670640,
		0.560846, -0.730023, -0.390536,
		42.413067, 38.298527, 21.256372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584129, 38.204700, 21.394295>,  <42.020473, 38.809540, 21.529747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584129, 38.204700, 21.394295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.955364, 38.056961, 21.413158>,  <42.178104, 37.968315, 21.424477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.955364, 38.056961, 21.413158>,  <41.584129, 38.204700, 21.394295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955364, 38.056961, 21.413158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306825, -0.686853, 0.658856,
		-0.210960, -0.625948, -0.750790,
		0.928092, -0.369353, 0.047158,
		42.233791, 37.946156, 21.427305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389832, 37.489143, 21.510147>,  <41.584129, 38.204700, 21.394295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389832, 37.489143, 21.510147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.778458, 37.515377, 21.601152>,  <42.011635, 37.531116, 21.655756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.778458, 37.515377, 21.601152>,  <41.389832, 37.489143, 21.510147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778458, 37.515377, 21.601152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151802, -0.564903, 0.811074,
		0.181715, -0.822547, -0.538883,
		0.971564, 0.065581, 0.227516,
		42.069927, 37.535049, 21.669407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509785, 36.967316, 21.747297>,  <41.389832, 37.489143, 21.510147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509785, 36.967316, 21.747297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.848396, 37.137627, 21.875116>,  <42.051563, 37.239811, 21.951807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.848396, 37.137627, 21.875116>,  <41.509785, 36.967316, 21.747297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848396, 37.137627, 21.875116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103849, -0.456647, 0.883566,
		0.522120, -0.781146, -0.342347,
		0.846526, 0.425775, 0.319546,
		42.102356, 37.265358, 21.970980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948662, 36.408810, 22.096094>,  <41.509785, 36.967316, 21.747297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948662, 36.408810, 22.096094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.027645, 36.772346, 22.243073>,  <42.075035, 36.990467, 22.331261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.027645, 36.772346, 22.243073>,  <41.948662, 36.408810, 22.096094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027645, 36.772346, 22.243073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327440, -0.292155, 0.898570,
		0.924010, -0.297745, 0.239903,
		0.197456, 0.908842, 0.367448,
		42.086884, 37.044998, 22.353308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271839, 36.305424, 22.663765>,  <41.948662, 36.408810, 22.096094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271839, 36.305424, 22.663765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.153908, 36.680817, 22.735678>,  <42.083149, 36.906052, 22.778826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.153908, 36.680817, 22.735678>,  <42.271839, 36.305424, 22.663765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153908, 36.680817, 22.735678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192101, -0.242518, 0.950937,
		0.936041, 0.245828, 0.251785,
		-0.294830, 0.938485, 0.179783,
		42.065460, 36.962360, 22.789612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609604, 36.527828, 23.290081>,  <42.271839, 36.305424, 22.663765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609604, 36.527828, 23.290081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.292038, 36.767223, 23.247147>,  <42.101498, 36.910858, 23.221386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.292038, 36.767223, 23.247147>,  <42.609604, 36.527828, 23.290081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292038, 36.767223, 23.247147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302339, -0.235406, 0.923675,
		0.527537, 0.765768, 0.367837,
		-0.793911, 0.598484, -0.107336,
		42.053864, 36.946770, 23.214945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548267, 36.949627, 23.935596>,  <42.609604, 36.527828, 23.290081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548267, 36.949627, 23.935596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.196331, 36.987877, 23.749376>,  <41.985168, 37.010826, 23.637644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.196331, 36.987877, 23.749376>,  <42.548267, 36.949627, 23.935596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196331, 36.987877, 23.749376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473476, -0.091327, 0.876059,
		0.041256, 0.991219, 0.125630,
		-0.879840, 0.095626, -0.465550,
		41.932381, 37.016563, 23.609711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091389, 37.391609, 24.250814>,  <42.548267, 36.949627, 23.935596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091389, 37.391609, 24.250814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.825680, 37.178322, 24.041273>,  <41.666252, 37.050350, 23.915548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.825680, 37.178322, 24.041273>,  <42.091389, 37.391609, 24.250814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825680, 37.178322, 24.041273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601080, -0.035555, 0.798398,
		-0.444342, 0.845233, -0.296886,
		-0.664276, -0.533214, -0.523851,
		41.626396, 37.018356, 23.884117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409351, 37.653320, 24.369482>,  <42.091389, 37.391609, 24.250814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409351, 37.653320, 24.369482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.365547, 37.273342, 24.252439>,  <41.339264, 37.045357, 24.182215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.365547, 37.273342, 24.252439>,  <41.409351, 37.653320, 24.369482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365547, 37.273342, 24.252439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483262, -0.206359, 0.850808,
		-0.868600, 0.234576, -0.436473,
		-0.109509, -0.949942, -0.292605,
		41.332695, 36.988361, 24.164658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702740, 37.495354, 24.410511>,  <41.409351, 37.653320, 24.369482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702740, 37.495354, 24.410511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.891941, 37.142948, 24.406841>,  <41.005463, 36.931503, 24.404640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.891941, 37.142948, 24.406841>,  <40.702740, 37.495354, 24.410511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891941, 37.142948, 24.406841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417784, -0.233445, 0.878043,
		-0.775708, -0.411486, -0.478494,
		0.473004, -0.881012, -0.009172,
		41.033844, 36.878643, 24.404089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221947, 36.984516, 24.553368>,  <40.702740, 37.495354, 24.410511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221947, 36.984516, 24.553368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.558979, 36.790264, 24.646509>,  <40.761200, 36.673714, 24.702394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.558979, 36.790264, 24.646509>,  <40.221947, 36.984516, 24.553368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558979, 36.790264, 24.646509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401179, -0.277487, 0.872958,
		-0.359321, -0.828954, -0.428630,
		0.842582, -0.485629, 0.232852,
		40.811752, 36.644577, 24.716366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740074, 36.570816, 24.146452>,  <40.221947, 36.984516, 24.553368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740074, 36.570816, 24.146452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.366291, 36.696606, 24.079649>,  <39.142021, 36.772079, 24.039568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.366291, 36.696606, 24.079649>,  <39.740074, 36.570816, 24.146452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366291, 36.696606, 24.079649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304350, 0.461970, -0.833039,
		-0.184819, -0.829270, -0.527403,
		-0.934459, 0.314477, -0.167007,
		39.085953, 36.790947, 24.029547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539227, 36.569145, 23.454098>,  <39.740074, 36.570816, 24.146452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539227, 36.569145, 23.454098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.229263, 36.801712, 23.553274>,  <39.043285, 36.941254, 23.612780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.229263, 36.801712, 23.553274>,  <39.539227, 36.569145, 23.454098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229263, 36.801712, 23.553274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081464, 0.480861, -0.873004,
		-0.626804, -0.656299, -0.419987,
		-0.774907, 0.581416, 0.247940,
		38.996792, 36.976135, 23.627657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178879, 36.618980, 22.849987>,  <39.539227, 36.569145, 23.454098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178879, 36.618980, 22.849987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.125584, 36.925842, 23.100977>,  <39.093605, 37.109959, 23.251570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.125584, 36.925842, 23.100977>,  <39.178879, 36.618980, 22.849987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125584, 36.925842, 23.100977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093323, 0.640016, -0.762673,
		-0.986680, -0.043060, -0.156868,
		-0.133238, 0.767154, 0.627473,
		39.085613, 37.155987, 23.289219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660568, 37.082520, 22.485600>,  <39.178879, 36.618980, 22.849987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660568, 37.082520, 22.485600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.846413, 37.295326, 22.768753>,  <38.957920, 37.423008, 22.938644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.846413, 37.295326, 22.768753>,  <38.660568, 37.082520, 22.485600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846413, 37.295326, 22.768753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146833, 0.742052, -0.654063,
		-0.873257, 0.407824, 0.266647,
		0.464609, 0.532013, 0.707884,
		38.985794, 37.454929, 22.981119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171120, 37.681183, 22.677807>,  <38.660568, 37.082520, 22.485600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171120, 37.681183, 22.677807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.556789, 37.763981, 22.744164>,  <38.788193, 37.813660, 22.783978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.556789, 37.763981, 22.744164>,  <38.171120, 37.681183, 22.677807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556789, 37.763981, 22.744164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057738, 0.774152, -0.630361,
		-0.258906, 0.598200, 0.758370,
		0.964175, 0.206991, 0.165894,
		38.846043, 37.826077, 22.793932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318817, 38.508698, 22.705267>,  <38.171120, 37.681183, 22.677807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318817, 38.508698, 22.705267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.654049, 38.312145, 22.610472>,  <38.855190, 38.194214, 22.553595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.654049, 38.312145, 22.610472>,  <38.318817, 38.508698, 22.705267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654049, 38.312145, 22.610472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202086, 0.683137, -0.701773,
		0.506732, 0.540252, 0.671826,
		0.838084, -0.491377, -0.236990,
		38.905476, 38.164734, 22.539375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880444, 39.072937, 22.486517>,  <38.318817, 38.508698, 22.705267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880444, 39.072937, 22.486517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.023594, 38.718010, 22.370182>,  <39.109486, 38.505054, 22.300381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.023594, 38.718010, 22.370182>,  <38.880444, 39.072937, 22.486517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023594, 38.718010, 22.370182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553344, 0.452414, -0.699380,
		0.752152, 0.089361, 0.652903,
		0.357879, -0.887320, -0.290837,
		39.130959, 38.451813, 22.282930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022148, 39.598755, 23.015425>,  <38.880444, 39.072937, 22.486517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022148, 39.598755, 23.015425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.759396, 39.895416, 22.961067>,  <38.601746, 40.073414, 22.928453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.759396, 39.895416, 22.961067>,  <39.022148, 39.598755, 23.015425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759396, 39.895416, 22.961067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433584, -0.224100, 0.872802,
		0.616861, 0.632245, 0.468774,
		-0.656877, 0.741650, -0.135893,
		38.562332, 40.117912, 22.920300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024006, 39.936016, 23.638771>,  <39.022148, 39.598755, 23.015425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024006, 39.936016, 23.638771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.672581, 39.998005, 23.458059>,  <38.461723, 40.035198, 23.349632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.672581, 39.998005, 23.458059>,  <39.024006, 39.936016, 23.638771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672581, 39.998005, 23.458059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470605, -0.442420, 0.763410,
		-0.081567, 0.883316, 0.461627,
		-0.878566, 0.154975, -0.451779,
		38.409012, 40.044498, 23.322525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396553, 40.230938, 24.219320>,  <39.024006, 39.936016, 23.638771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396553, 40.230938, 24.219320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.206356, 40.076084, 23.903337>,  <38.092239, 39.983170, 23.713747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.206356, 40.076084, 23.903337>,  <38.396553, 40.230938, 24.219320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206356, 40.076084, 23.903337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639547, -0.464464, 0.612578,
		-0.604059, 0.796491, -0.026745,
		-0.475491, -0.387138, -0.789957,
		38.063709, 39.959942, 23.666349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634987, 40.538334, 24.290459>,  <38.396553, 40.230938, 24.219320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634987, 40.538334, 24.290459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.658489, 40.201874, 24.075418>,  <37.672588, 39.999996, 23.946394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.658489, 40.201874, 24.075418>,  <37.634987, 40.538334, 24.290459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658489, 40.201874, 24.075418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782630, -0.373120, 0.498268,
		-0.619708, 0.391466, -0.680233,
		0.058754, -0.841152, -0.537599,
		37.676117, 39.949528, 23.914139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961372, 40.416237, 24.031677>,  <37.634987, 40.538334, 24.290459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961372, 40.416237, 24.031677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.143147, 40.062225, 23.991238>,  <37.252209, 39.849819, 23.966974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.143147, 40.062225, 23.991238>,  <36.961372, 40.416237, 24.031677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143147, 40.062225, 23.991238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723576, -0.432943, 0.537586,
		-0.519547, -0.171145, -0.837126,
		0.454433, -0.885025, -0.101098,
		37.279476, 39.796719, 23.960909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463066, 39.852863, 23.718376>,  <36.961372, 40.416237, 24.031677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463066, 39.852863, 23.718376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.754372, 39.668953, 23.921644>,  <36.929157, 39.558605, 24.043604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.754372, 39.668953, 23.921644>,  <36.463066, 39.852863, 23.718376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754372, 39.668953, 23.921644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676716, -0.599457, 0.427443,
		0.108097, -0.655177, -0.747702,
		0.728266, -0.459776, 0.508169,
		36.972851, 39.531021, 24.074095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343502, 39.157951, 23.612879>,  <36.463066, 39.852863, 23.718376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343502, 39.157951, 23.612879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.583706, 39.162884, 23.932686>,  <36.727829, 39.165844, 24.124571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.583706, 39.162884, 23.932686>,  <36.343502, 39.157951, 23.612879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583706, 39.162884, 23.932686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638907, -0.593833, 0.489040,
		0.480814, -0.804494, -0.348723,
		0.600513, 0.012336, 0.799520,
		36.763859, 39.166584, 24.172543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.285339, 41.762035, 22.472069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.582493, 42.021904, 22.407509>,  <41.760784, 42.177826, 22.368773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.582493, 42.021904, 22.407509>,  <41.285339, 41.762035, 22.472069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582493, 42.021904, 22.407509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605728, -0.549721, 0.575239,
		0.284994, -0.525098, -0.801904,
		0.742880, 0.649676, -0.161399,
		41.805359, 42.216808, 22.359089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049137, 41.715454, 22.819315>,  <41.285339, 41.762035, 22.472069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049137, 41.715454, 22.819315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.386177, 41.585278, 22.990950>,  <42.588402, 41.507172, 23.093931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.386177, 41.585278, 22.990950>,  <42.049137, 41.715454, 22.819315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386177, 41.585278, 22.990950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186264, 0.571473, 0.799202,
		-0.505307, -0.753329, 0.420903,
		0.842597, -0.325444, 0.429087,
		42.638958, 41.487644, 23.119677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913464, 41.228310, 23.450491>,  <42.049137, 41.715454, 22.819315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913464, 41.228310, 23.450491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.287434, 41.354862, 23.514761>,  <42.511814, 41.430794, 23.553324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.287434, 41.354862, 23.514761>,  <41.913464, 41.228310, 23.450491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287434, 41.354862, 23.514761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175284, 0.018067, 0.984352,
		0.308529, -0.948460, 0.072348,
		0.934925, 0.316382, 0.160675,
		42.567913, 41.449776, 23.562963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271351, 40.691261, 23.839975>,  <41.913464, 41.228310, 23.450491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271351, 40.691261, 23.839975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.472401, 41.028419, 23.916813>,  <42.593029, 41.230713, 23.962915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.472401, 41.028419, 23.916813>,  <42.271351, 40.691261, 23.839975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472401, 41.028419, 23.916813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127605, -0.147434, 0.980806,
		0.855037, -0.517487, 0.033454,
		0.502622, 0.842894, 0.192095,
		42.623188, 41.281288, 23.974442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584770, 40.561192, 24.498302>,  <42.271351, 40.691261, 23.839975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584770, 40.561192, 24.498302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.596207, 40.957684, 24.446690>,  <42.603069, 41.195580, 24.415722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.596207, 40.957684, 24.446690>,  <42.584770, 40.561192, 24.498302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596207, 40.957684, 24.446690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174518, 0.132050, 0.975759,
		0.984239, -0.005376, 0.176762,
		0.028587, 0.991228, -0.129030,
		42.604782, 41.255051, 24.407980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945972, 40.735287, 25.040941>,  <42.584770, 40.561192, 24.498302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945972, 40.735287, 25.040941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.751709, 41.058743, 24.908131>,  <42.635151, 41.252815, 24.828445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.751709, 41.058743, 24.908131>,  <42.945972, 40.735287, 25.040941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751709, 41.058743, 24.908131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423094, 0.114928, 0.898767,
		0.764938, 0.576969, 0.286315,
		-0.485656, 0.808640, -0.332025,
		42.606010, 41.301334, 24.808523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090603, 41.221169, 25.528008>,  <42.945972, 40.735287, 25.040941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090603, 41.221169, 25.528008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.749947, 41.315899, 25.340977>,  <42.545555, 41.372738, 25.228758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.749947, 41.315899, 25.340977>,  <43.090603, 41.221169, 25.528008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749947, 41.315899, 25.340977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474399, 0.031002, 0.879764,
		0.222850, 0.971057, 0.085948,
		-0.851636, 0.236829, -0.467577,
		42.494457, 41.386948, 25.200705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664646, 41.650028, 26.089882>,  <43.090603, 41.221169, 25.528008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664646, 41.650028, 26.089882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.384808, 41.597893, 25.808861>,  <42.216904, 41.566612, 25.640247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.384808, 41.597893, 25.808861>,  <42.664646, 41.650028, 26.089882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384808, 41.597893, 25.808861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714533, 0.132238, 0.686991,
		0.003365, 0.982612, -0.185643,
		-0.699594, -0.130336, -0.702553,
		42.174931, 41.558792, 25.598095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165951, 42.173504, 26.223726>,  <42.664646, 41.650028, 26.089882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165951, 42.173504, 26.223726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.001160, 41.875721, 26.013563>,  <41.902283, 41.697052, 25.887465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.001160, 41.875721, 26.013563>,  <42.165951, 42.173504, 26.223726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001160, 41.875721, 26.013563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686511, -0.125550, 0.716198,
		-0.599144, 0.655760, -0.459354,
		-0.411982, -0.744457, -0.525409,
		41.877563, 41.652386, 25.855940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515999, 42.277382, 26.373009>,  <42.165951, 42.173504, 26.223726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515999, 42.277382, 26.373009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.496178, 41.902283, 26.235502>,  <41.484283, 41.677223, 26.152998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.496178, 41.902283, 26.235502>,  <41.515999, 42.277382, 26.373009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496178, 41.902283, 26.235502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678109, -0.221111, 0.700913,
		-0.733289, 0.267845, -0.624937,
		-0.049556, -0.937747, -0.343766,
		41.481312, 41.620960, 26.132372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881329, 42.152050, 26.395697>,  <41.515999, 42.277382, 26.373009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881329, 42.152050, 26.395697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.077637, 41.803547, 26.392691>,  <41.195423, 41.594444, 26.390886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.077637, 41.803547, 26.392691>,  <40.881329, 42.152050, 26.395697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077637, 41.803547, 26.392691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492061, -0.284274, 0.822839,
		-0.719039, -0.400129, -0.568225,
		0.490773, -0.871255, -0.007516,
		41.224869, 41.542171, 26.390436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331425, 41.665081, 26.649630>,  <40.881329, 42.152050, 26.395697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331425, 41.665081, 26.649630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.690475, 41.500961, 26.714025>,  <40.905907, 41.402489, 26.752663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.690475, 41.500961, 26.714025>,  <40.331425, 41.665081, 26.649630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690475, 41.500961, 26.714025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256024, -0.188070, 0.948199,
		-0.358764, -0.892350, -0.273863,
		0.897630, -0.410295, 0.160990,
		40.959766, 41.377872, 26.762323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960056, 41.099884, 26.331326>,  <40.331425, 41.665081, 26.649630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960056, 41.099884, 26.331326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.639259, 41.296364, 26.195364>,  <39.446781, 41.414253, 26.113787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.639259, 41.296364, 26.195364>,  <39.960056, 41.099884, 26.331326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639259, 41.296364, 26.195364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575080, 0.481028, -0.661736,
		-0.161542, -0.726178, -0.668259,
		-0.801989, 0.491200, -0.339904,
		39.398663, 41.443726, 26.093393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137779, 41.139107, 25.629210>,  <39.960056, 41.099884, 26.331326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137779, 41.139107, 25.629210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.842091, 41.402943, 25.683599>,  <39.664677, 41.561245, 25.716234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.842091, 41.402943, 25.683599>,  <40.137779, 41.139107, 25.629210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842091, 41.402943, 25.683599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397137, 0.590002, -0.702978,
		-0.543904, -0.465656, -0.698091,
		-0.739222, 0.659591, 0.135976,
		39.620323, 41.600819, 25.724392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737164, 41.158714, 25.053095>,  <40.137779, 41.139107, 25.629210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737164, 41.158714, 25.053095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.639347, 41.509754, 25.218025>,  <39.580658, 41.720379, 25.316982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.639347, 41.509754, 25.218025>,  <39.737164, 41.158714, 25.053095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639347, 41.509754, 25.218025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205769, 0.462518, -0.862401,
		-0.947554, -0.126049, -0.293688,
		-0.244541, 0.877604, 0.412324,
		39.565987, 41.773037, 25.341722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254654, 41.566086, 24.527086>,  <39.737164, 41.158714, 25.053095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254654, 41.566086, 24.527086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.425495, 41.827782, 24.776745>,  <39.528000, 41.984798, 24.926540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.425495, 41.827782, 24.776745>,  <39.254654, 41.566086, 24.527086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425495, 41.827782, 24.776745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235313, 0.586063, -0.775344,
		-0.873048, 0.478019, 0.096357,
		0.427100, 0.654238, 0.624145,
		39.553627, 42.024052, 24.963989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035728, 42.208069, 24.267712>,  <39.254654, 41.566086, 24.527086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035728, 42.208069, 24.267712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.333355, 42.302727, 24.517630>,  <39.511929, 42.359520, 24.667580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.333355, 42.302727, 24.517630>,  <39.035728, 42.208069, 24.267712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333355, 42.302727, 24.517630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395627, 0.597519, -0.697460,
		-0.538375, 0.766141, 0.350971,
		0.744064, 0.236641, 0.624795,
		39.556576, 42.373718, 24.705069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098347, 42.916229, 24.180077>,  <39.035728, 42.208069, 24.267712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098347, 42.916229, 24.180077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.452652, 42.810272, 24.332529>,  <39.665234, 42.746696, 24.424000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.452652, 42.810272, 24.332529>,  <39.098347, 42.916229, 24.180077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452652, 42.810272, 24.332529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463365, 0.552180, -0.693102,
		-0.026857, 0.790525, 0.611841,
		0.885760, -0.264891, 0.381131,
		39.718380, 42.730804, 24.446869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465351, 43.567177, 24.324093>,  <39.098347, 42.916229, 24.180077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465351, 43.567177, 24.324093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.714233, 43.257122, 24.280231>,  <39.863564, 43.071091, 24.253916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.714233, 43.257122, 24.280231>,  <39.465351, 43.567177, 24.324093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714233, 43.257122, 24.280231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428013, 0.454105, -0.781405,
		0.655490, 0.439261, 0.614315,
		0.622204, -0.775137, -0.109652,
		39.900894, 43.024582, 24.247335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128647, 43.873192, 24.098909>,  <39.465351, 43.567177, 24.324093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128647, 43.873192, 24.098909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.213402, 43.493378, 24.006395>,  <40.264256, 43.265491, 23.950886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.213402, 43.493378, 24.006395>,  <40.128647, 43.873192, 24.098909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213402, 43.493378, 24.006395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501715, 0.308779, -0.808045,
		0.838682, 0.055171, 0.541820,
		0.211883, -0.949532, -0.231287,
		40.276966, 43.208519, 23.937010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811516, 43.785175, 23.939447>,  <40.128647, 43.873192, 24.098909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811516, 43.785175, 23.939447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.642586, 43.462360, 23.774361>,  <40.541229, 43.268673, 23.675308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.642586, 43.462360, 23.774361>,  <40.811516, 43.785175, 23.939447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642586, 43.462360, 23.774361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620183, 0.074798, -0.780883,
		0.661071, -0.585746, 0.468921,
		-0.422325, -0.807036, -0.412716,
		40.515888, 43.220249, 23.650545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335835, 43.475353, 23.696789>,  <40.811516, 43.785175, 23.939447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335835, 43.475353, 23.696789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.028671, 43.327209, 23.487732>,  <40.844372, 43.238323, 23.362297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.028671, 43.327209, 23.487732>,  <41.335835, 43.475353, 23.696789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028671, 43.327209, 23.487732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531887, 0.086008, -0.842436,
		0.356953, -0.924900, 0.130941,
		-0.767907, -0.370356, -0.522643,
		40.798298, 43.216103, 23.330938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529560, 42.873390, 23.266899>,  <41.335835, 43.475353, 23.696789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529560, 42.873390, 23.266899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.211456, 43.063873, 23.116816>,  <41.020592, 43.178162, 23.026766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.211456, 43.063873, 23.116816>,  <41.529560, 42.873390, 23.266899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211456, 43.063873, 23.116816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476179, 0.107566, -0.872744,
		-0.375249, -0.872728, -0.312304,
		-0.795262, 0.476209, -0.375211,
		40.972878, 43.206738, 23.004251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395931, 42.473988, 22.650337>,  <41.529560, 42.873390, 23.266899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395931, 42.473988, 22.650337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.229668, 42.834969, 22.605066>,  <41.129910, 43.051556, 22.577904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.229668, 42.834969, 22.605066>,  <41.395931, 42.473988, 22.650337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229668, 42.834969, 22.605066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425458, 0.082948, -0.901169,
		-0.803872, -0.422735, -0.418432,
		-0.415664, 0.902449, -0.113177,
		41.104969, 43.105705, 22.571114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129074, 42.462383, 21.979397>,  <41.395931, 42.473988, 22.650337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129074, 42.462383, 21.979397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.160103, 42.850025, 22.073050>,  <41.178719, 43.082611, 22.129242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.160103, 42.850025, 22.073050>,  <41.129074, 42.462383, 21.979397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160103, 42.850025, 22.073050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393101, 0.186087, -0.900469,
		-0.916218, 0.161886, -0.366521,
		0.077568, 0.969105, 0.234134,
		41.183372, 43.140759, 22.143290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622658, 42.614162, 21.405437>,  <41.129074, 42.462383, 21.979397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622658, 42.614162, 21.405437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.385391, 42.393757, 21.170647>,  <40.243031, 42.261513, 21.029772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.385391, 42.393757, 21.170647>,  <40.622658, 42.614162, 21.405437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385391, 42.393757, 21.170647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349598, -0.480474, 0.804317,
		-0.725217, 0.682297, 0.092365,
		-0.593162, -0.551014, -0.586978,
		40.207443, 42.228455, 20.994553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938721, 42.762283, 21.708363>,  <40.622658, 42.614162, 21.405437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938721, 42.762283, 21.708363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.917679, 42.422318, 21.498646>,  <39.905056, 42.218338, 21.372816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.917679, 42.422318, 21.498646>,  <39.938721, 42.762283, 21.708363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917679, 42.422318, 21.498646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516253, -0.426275, 0.742814,
		-0.854819, 0.309742, -0.416346,
		-0.052603, -0.849912, -0.524293,
		39.901897, 42.167343, 21.341358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253242, 42.607792, 21.685225>,  <39.938721, 42.762283, 21.708363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253242, 42.607792, 21.685225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.434525, 42.259041, 21.611002>,  <39.543293, 42.049789, 21.566467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.434525, 42.259041, 21.611002>,  <39.253242, 42.607792, 21.685225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434525, 42.259041, 21.611002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523909, -0.428945, 0.735883,
		-0.721195, -0.236291, -0.651186,
		0.453206, -0.871879, -0.185558,
		39.570488, 41.997478, 21.555334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687424, 42.116390, 21.621485>,  <39.253242, 42.607792, 21.685225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687424, 42.116390, 21.621485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.016834, 41.903107, 21.698935>,  <39.214481, 41.775135, 21.745405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.016834, 41.903107, 21.698935>,  <38.687424, 42.116390, 21.621485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016834, 41.903107, 21.698935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544963, -0.648833, 0.531066,
		-0.157539, -0.542866, -0.824911,
		0.823527, -0.533209, 0.193626,
		39.263893, 41.743145, 21.757023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468166, 41.412125, 21.459509>,  <38.687424, 42.116390, 21.621485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468166, 41.412125, 21.459509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.788784, 41.352451, 21.691122>,  <38.981155, 41.316647, 21.830090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.788784, 41.352451, 21.691122>,  <38.468166, 41.412125, 21.459509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788784, 41.352451, 21.691122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493900, -0.711024, 0.500507,
		0.337041, -0.687161, -0.643594,
		0.801540, -0.149179, 0.579034,
		39.029247, 41.307697, 21.864832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659420, 40.648029, 21.396330>,  <38.468166, 41.412125, 21.459509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659420, 40.648029, 21.396330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.837517, 40.791397, 21.724550>,  <38.944374, 40.877419, 21.921482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.837517, 40.791397, 21.724550>,  <38.659420, 40.648029, 21.396330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837517, 40.791397, 21.724550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460752, -0.694053, 0.553171,
		0.767769, -0.624363, -0.143879,
		0.445239, 0.358415, 0.820549,
		38.971088, 40.898922, 21.970715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839828, 40.101929, 21.683681>,  <38.659420, 40.648029, 21.396330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839828, 40.101929, 21.683681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.857750, 40.372459, 21.977777>,  <38.868504, 40.534779, 22.154234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.857750, 40.372459, 21.977777>,  <38.839828, 40.101929, 21.683681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857750, 40.372459, 21.977777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376594, -0.670245, 0.639491,
		0.925294, -0.305540, 0.224668,
		0.044808, 0.676326, 0.735238,
		38.871193, 40.575356, 22.198349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155655, 39.788616, 22.331898>,  <38.839828, 40.101929, 21.683681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155655, 39.788616, 22.331898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.922604, 40.090923, 22.451473>,  <38.782772, 40.272308, 22.523218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.922604, 40.090923, 22.451473>,  <39.155655, 39.788616, 22.331898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922604, 40.090923, 22.451473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431458, -0.599323, 0.674281,
		0.688760, 0.263875, 0.675263,
		-0.582626, 0.755766, 0.298939,
		38.747814, 40.317654, 22.541155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568207, 39.269253, 22.445290>,  <39.155655, 39.788616, 22.331898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568207, 39.269253, 22.445290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.530537, 38.923592, 22.247553>,  <39.507935, 38.716194, 22.128912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.530537, 38.923592, 22.247553>,  <39.568207, 39.269253, 22.445290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530537, 38.923592, 22.247553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641132, 0.327230, -0.694169,
		0.761631, -0.382310, 0.523218,
		-0.094175, -0.864152, -0.494340,
		39.502285, 38.664345, 22.099251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318375, 38.876888, 22.327211>,  <39.568207, 39.269253, 22.445290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318375, 38.876888, 22.327211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.066402, 38.773933, 22.034107>,  <39.915218, 38.712158, 21.858244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.066402, 38.773933, 22.034107>,  <40.318375, 38.876888, 22.327211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066402, 38.773933, 22.034107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669044, 0.299312, -0.680289,
		0.394426, -0.918783, -0.016338,
		-0.629928, -0.257393, -0.732762,
		39.877422, 38.696716, 21.814278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694401, 38.731586, 21.688381>,  <40.318375, 38.876888, 22.327211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694401, 38.731586, 21.688381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.338791, 38.760590, 21.507549>,  <40.125423, 38.777992, 21.399050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.338791, 38.760590, 21.507549>,  <40.694401, 38.731586, 21.688381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338791, 38.760590, 21.507549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443647, 0.380483, -0.811425,
		0.113175, -0.921941, -0.370426,
		-0.889027, 0.072505, -0.452077,
		40.072083, 38.782341, 21.371925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583633, 38.210453, 21.143555>,  <40.694401, 38.731586, 21.688381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583633, 38.210453, 21.143555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.375351, 38.543819, 21.069485>,  <40.250381, 38.743839, 21.025042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.375351, 38.543819, 21.069485>,  <40.583633, 38.210453, 21.143555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375351, 38.543819, 21.069485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503846, 0.124885, -0.854718,
		-0.689208, -0.538355, -0.484940,
		-0.520703, 0.833413, -0.185176,
		40.219139, 38.793842, 21.013931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238056, 38.151840, 20.469931>,  <40.583633, 38.210453, 21.143555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238056, 38.151840, 20.469931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.251274, 38.545643, 20.538820>,  <40.259205, 38.781925, 20.580154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.251274, 38.545643, 20.538820>,  <40.238056, 38.151840, 20.469931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251274, 38.545643, 20.538820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542699, 0.127026, -0.830266,
		-0.839277, 0.120901, -0.530092,
		0.033044, 0.984504, 0.172223,
		40.261189, 38.840996, 20.590487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071438, 38.428501, 19.823900>,  <40.238056, 38.151840, 20.469931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071438, 38.428501, 19.823900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.225899, 38.747883, 20.008661>,  <40.318573, 38.939514, 20.119518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.225899, 38.747883, 20.008661>,  <40.071438, 38.428501, 19.823900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225899, 38.747883, 20.008661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374663, 0.321817, -0.869518,
		-0.842922, 0.508821, -0.174883,
		0.386148, 0.798458, 0.461903,
		40.341743, 38.987419, 20.147232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965466, 38.959297, 19.380566>,  <40.071438, 38.428501, 19.823900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965466, 38.959297, 19.380566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.242863, 39.097279, 19.633572>,  <40.409302, 39.180065, 19.785376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.242863, 39.097279, 19.633572>,  <39.965466, 38.959297, 19.380566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242863, 39.097279, 19.633572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484835, 0.425952, -0.763872,
		-0.532919, 0.836406, 0.128152,
		0.693493, 0.344949, 0.632517,
		40.450912, 39.200764, 19.823326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832947, 39.603317, 19.343721>,  <39.965466, 38.959297, 19.380566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832947, 39.603317, 19.343721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.212509, 39.575073, 19.466743>,  <40.440247, 39.558128, 19.540556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.212509, 39.575073, 19.466743>,  <39.832947, 39.603317, 19.343721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212509, 39.575073, 19.466743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298937, 0.513268, -0.804483,
		-0.101057, 0.855319, 0.508150,
		0.948907, -0.070607, 0.307556,
		40.497181, 39.553890, 19.559010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137245, 40.197811, 19.165470>,  <39.832947, 39.603317, 19.343721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137245, 40.197811, 19.165470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.461349, 39.970909, 19.224398>,  <40.655811, 39.834766, 19.259754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.461349, 39.970909, 19.224398>,  <40.137245, 40.197811, 19.165470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461349, 39.970909, 19.224398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437525, 0.418219, -0.796031,
		0.389940, 0.709447, 0.587054,
		0.810258, -0.567255, 0.147320,
		40.704426, 39.800732, 19.268593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.624123, 33.915012, 33.230232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015697, 33.851578, 33.178810>,  <35.250645, 33.813515, 33.147957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015697, 33.851578, 33.178810>,  <34.624123, 33.915012, 33.230232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015697, 33.851578, 33.178810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025482, 0.529863, -0.847701,
		0.202553, 0.833124, 0.514663,
		0.978940, -0.158590, -0.128555,
		35.309380, 33.804001, 33.140244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002106, 34.566833, 33.097740>,  <34.624123, 33.915012, 33.230232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002106, 34.566833, 33.097740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.205757, 34.267372, 32.927887>,  <35.327946, 34.087696, 32.825974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.205757, 34.267372, 32.927887>,  <35.002106, 34.566833, 33.097740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205757, 34.267372, 32.927887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019239, 0.503140, -0.863991,
		0.860478, 0.431710, 0.270564,
		0.509125, -0.748651, -0.424635,
		35.358494, 34.042778, 32.800495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552979, 34.777145, 32.596565>,  <35.002106, 34.566833, 33.097740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552979, 34.777145, 32.596565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496052, 34.397018, 32.485825>,  <35.461895, 34.168941, 32.419380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496052, 34.397018, 32.485825>,  <35.552979, 34.777145, 32.596565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496052, 34.397018, 32.485825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039706, 0.273990, -0.960912,
		0.989024, -0.147749, -0.001261,
		-0.142319, -0.950316, -0.276849,
		35.453358, 34.111923, 32.402771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122505, 34.681946, 32.191059>,  <35.552979, 34.777145, 32.596565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122505, 34.681946, 32.191059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.876553, 34.378246, 32.105762>,  <35.728981, 34.196026, 32.054585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.876553, 34.378246, 32.105762>,  <36.122505, 34.681946, 32.191059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876553, 34.378246, 32.105762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085487, 0.204638, -0.975098,
		0.783975, -0.617795, -0.060922,
		-0.614877, -0.759244, -0.213244,
		35.692089, 34.150475, 32.041790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438637, 34.327454, 31.719469>,  <36.122505, 34.681946, 32.191059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438637, 34.327454, 31.719469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.060684, 34.214775, 31.652721>,  <35.833912, 34.147167, 31.612673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.060684, 34.214775, 31.652721>,  <36.438637, 34.327454, 31.719469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060684, 34.214775, 31.652721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142704, 0.104373, -0.984247,
		0.294674, -0.953810, -0.058421,
		-0.944882, -0.281695, -0.166869,
		35.777218, 34.130268, 31.602661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469494, 33.886871, 31.204376>,  <36.438637, 34.327454, 31.719469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469494, 33.886871, 31.204376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089497, 34.011105, 31.191355>,  <35.861500, 34.085644, 31.183542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089497, 34.011105, 31.191355>,  <36.469494, 33.886871, 31.204376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089497, 34.011105, 31.191355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085338, 0.157914, -0.983758,
		-0.300396, -0.937338, -0.176521,
		-0.949989, 0.310581, -0.032554,
		35.804501, 34.104279, 31.181589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284019, 33.662163, 30.584887>,  <36.469494, 33.886871, 31.204376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284019, 33.662163, 30.584887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985821, 33.917080, 30.662960>,  <35.806904, 34.070030, 30.709805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985821, 33.917080, 30.662960>,  <36.284019, 33.662163, 30.584887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985821, 33.917080, 30.662960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020209, 0.314319, -0.949102,
		-0.666205, -0.703606, -0.247202,
		-0.745495, 0.637293, 0.195181,
		35.762173, 34.108269, 30.721514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823708, 33.571072, 30.107975>,  <36.284019, 33.662163, 30.584887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823708, 33.571072, 30.107975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.689426, 33.927666, 30.229671>,  <35.608856, 34.141621, 30.302691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.689426, 33.927666, 30.229671>,  <35.823708, 33.571072, 30.107975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689426, 33.927666, 30.229671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110861, 0.283349, -0.952588,
		-0.935421, -0.353516, 0.003709,
		-0.335704, 0.891482, 0.304242,
		35.588715, 34.195110, 30.320944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365776, 33.759609, 29.538525>,  <35.823708, 33.571072, 30.107975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365776, 33.759609, 29.538525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424129, 34.111408, 29.719723>,  <35.459141, 34.322487, 29.828442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424129, 34.111408, 29.719723>,  <35.365776, 33.759609, 29.538525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424129, 34.111408, 29.719723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019719, 0.455217, -0.890162,
		-0.989105, 0.138793, 0.049066,
		0.145884, 0.879497, 0.452994,
		35.467896, 34.375256, 29.855621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988163, 34.245171, 29.189465>,  <35.365776, 33.759609, 29.538525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988163, 34.245171, 29.189465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271938, 34.460495, 29.371418>,  <35.442204, 34.589691, 29.480591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271938, 34.460495, 29.371418>,  <34.988163, 34.245171, 29.189465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271938, 34.460495, 29.371418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144883, 0.520254, -0.841632,
		-0.689715, 0.662991, 0.291096,
		0.709438, 0.538311, 0.454883,
		35.484768, 34.621990, 29.507883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873238, 34.871845, 28.955523>,  <34.988163, 34.245171, 29.189465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873238, 34.871845, 28.955523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.246849, 34.916496, 29.091248>,  <35.471016, 34.943287, 29.172684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.246849, 34.916496, 29.091248>,  <34.873238, 34.871845, 28.955523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246849, 34.916496, 29.091248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268454, 0.407276, -0.872960,
		-0.235643, 0.906457, 0.350439,
		0.934026, 0.111630, 0.339314,
		35.527058, 34.949986, 29.193041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069283, 35.624664, 28.927155>,  <34.873238, 34.871845, 28.955523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069283, 35.624664, 28.927155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387917, 35.386913, 28.883039>,  <35.579098, 35.244263, 28.856571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387917, 35.386913, 28.883039>,  <35.069283, 35.624664, 28.927155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387917, 35.386913, 28.883039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189283, 0.418499, -0.888274,
		0.574123, 0.686715, 0.445877,
		0.796590, -0.594375, -0.110286,
		35.626892, 35.208599, 28.849955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949509, 36.420944, 28.844555>,  <35.069283, 35.624664, 28.927155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949509, 36.420944, 28.844555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556717, 36.375813, 28.783899>,  <34.321041, 36.348732, 28.747507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556717, 36.375813, 28.783899>,  <34.949509, 36.420944, 28.844555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556717, 36.375813, 28.783899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150128, -0.021812, 0.988426,
		-0.114834, 0.993375, 0.004480,
		-0.981975, -0.112832, -0.151638,
		34.262123, 36.341965, 28.738407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629959, 36.779228, 29.440424>,  <34.949509, 36.420944, 28.844555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629959, 36.779228, 29.440424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.343601, 36.535149, 29.304688>,  <34.171787, 36.388699, 29.223246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.343601, 36.535149, 29.304688>,  <34.629959, 36.779228, 29.440424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343601, 36.535149, 29.304688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247938, -0.232168, 0.940545,
		-0.652706, 0.757464, 0.014916,
		-0.715892, -0.610201, -0.339342,
		34.128834, 36.352089, 29.202885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022526, 36.951626, 29.781437>,  <34.629959, 36.779228, 29.440424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022526, 36.951626, 29.781437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.955437, 36.576996, 29.658350>,  <33.915184, 36.352219, 29.584497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.955437, 36.576996, 29.658350>,  <34.022526, 36.951626, 29.781437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955437, 36.576996, 29.658350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353250, -0.234313, 0.905710,
		-0.920371, 0.260608, -0.291548,
		-0.167722, -0.936579, -0.307715,
		33.905121, 36.296021, 29.566036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287704, 36.837891, 29.887194>,  <34.022526, 36.951626, 29.781437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287704, 36.837891, 29.887194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.444717, 36.470116, 29.877758>,  <33.538925, 36.249451, 29.872097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.444717, 36.470116, 29.877758>,  <33.287704, 36.837891, 29.887194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444717, 36.470116, 29.877758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303576, -0.153731, 0.940324,
		-0.868194, -0.361946, -0.339462,
		0.392532, -0.919436, -0.023590,
		33.562477, 36.194286, 29.870682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742016, 36.410229, 30.090405>,  <33.287704, 36.837891, 29.887194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742016, 36.410229, 30.090405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.050217, 36.160160, 30.140175>,  <33.235138, 36.010120, 30.170036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.050217, 36.160160, 30.140175>,  <32.742016, 36.410229, 30.090405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050217, 36.160160, 30.140175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325227, -0.217684, 0.920240,
		-0.548223, -0.749516, -0.371049,
		0.770505, -0.625172, 0.124424,
		33.281368, 35.972607, 30.177502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427887, 35.842560, 30.330582>,  <32.742016, 36.410229, 30.090405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427887, 35.842560, 30.330582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.811069, 35.798973, 30.436752>,  <33.040977, 35.772820, 30.500454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.811069, 35.798973, 30.436752>,  <32.427887, 35.842560, 30.330582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811069, 35.798973, 30.436752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286681, -0.325480, 0.901042,
		-0.011794, -0.939249, -0.343033,
		0.957953, -0.108968, 0.265426,
		33.098457, 35.766281, 30.516380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510307, 35.105663, 30.707788>,  <32.427887, 35.842560, 30.330582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510307, 35.105663, 30.707788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.832260, 35.313419, 30.822605>,  <33.025433, 35.438072, 30.891495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.832260, 35.313419, 30.822605>,  <32.510307, 35.105663, 30.707788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832260, 35.313419, 30.822605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127016, -0.321706, 0.938282,
		0.579677, -0.791669, -0.192966,
		0.804886, 0.519390, 0.287040,
		33.073727, 35.469234, 30.908718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824650, 34.734074, 31.260359>,  <32.510307, 35.105663, 30.707788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824650, 34.734074, 31.260359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.964142, 35.105072, 31.314236>,  <33.047836, 35.327671, 31.346561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.964142, 35.105072, 31.314236>,  <32.824650, 34.734074, 31.260359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964142, 35.105072, 31.314236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085637, -0.111579, 0.990059,
		0.933302, -0.356801, 0.040516,
		0.348733, 0.927493, 0.134692,
		33.068760, 35.383320, 31.354643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340260, 34.673122, 31.726475>,  <32.824650, 34.734074, 31.260359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340260, 34.673122, 31.726475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257610, 35.063908, 31.747818>,  <33.208019, 35.298378, 31.760624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257610, 35.063908, 31.747818>,  <33.340260, 34.673122, 31.726475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257610, 35.063908, 31.747818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095763, -0.074467, 0.992615,
		0.973723, 0.199989, 0.108943,
		-0.206625, 0.976964, 0.053358,
		33.195621, 35.356998, 31.763826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695251, 34.909000, 32.403133>,  <33.340260, 34.673122, 31.726475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695251, 34.909000, 32.403133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.427757, 35.194599, 32.320194>,  <33.267262, 35.365959, 32.270432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.427757, 35.194599, 32.320194>,  <33.695251, 34.909000, 32.403133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427757, 35.194599, 32.320194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213505, 0.082711, 0.973434,
		0.712183, 0.695242, 0.097131,
		-0.668738, 0.714001, -0.207343,
		33.227135, 35.408798, 32.257992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807487, 35.349514, 32.930302>,  <33.695251, 34.909000, 32.403133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807487, 35.349514, 32.930302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.443871, 35.458755, 32.804409>,  <33.225700, 35.524300, 32.728874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.443871, 35.458755, 32.804409>,  <33.807487, 35.349514, 32.930302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443871, 35.458755, 32.804409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317013, 0.036970, 0.947700,
		0.270453, 0.961275, 0.052969,
		-0.909042, 0.273100, -0.314736,
		33.171158, 35.540684, 32.709988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566143, 36.038277, 33.306171>,  <33.807487, 35.349514, 32.930302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566143, 36.038277, 33.306171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.256836, 35.817677, 33.181011>,  <33.071251, 35.685314, 33.105915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.256836, 35.817677, 33.181011>,  <33.566143, 36.038277, 33.306171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256836, 35.817677, 33.181011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378908, 0.006221, 0.925413,
		-0.508421, 0.834150, -0.213780,
		-0.773263, -0.551503, -0.312903,
		33.024857, 35.652225, 33.087139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984318, 36.481995, 33.609886>,  <33.566143, 36.038277, 33.306171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984318, 36.481995, 33.609886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.872402, 36.104401, 33.539894>,  <32.805252, 35.877846, 33.497898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.872402, 36.104401, 33.539894>,  <32.984318, 36.481995, 33.609886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872402, 36.104401, 33.539894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395043, -0.052914, 0.917137,
		-0.875019, 0.325729, -0.358109,
		-0.279789, -0.943981, -0.174977,
		32.788464, 35.821205, 33.487400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844166, 37.198441, 33.559120>,  <32.984318, 36.481995, 33.609886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844166, 37.198441, 33.559120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.165680, 37.426914, 33.492580>,  <33.358589, 37.563999, 33.452656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.165680, 37.426914, 33.492580>,  <32.844166, 37.198441, 33.559120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165680, 37.426914, 33.492580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495861, -0.488738, 0.717814,
		0.328702, -0.659458, -0.676070,
		0.803789, 0.571184, -0.166350,
		33.406818, 37.598270, 33.442677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749271, 37.900181, 33.670219>,  <32.844166, 37.198441, 33.559120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749271, 37.900181, 33.670219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.662781, 38.181499, 33.941105>,  <32.610886, 38.350288, 34.103638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.662781, 38.181499, 33.941105>,  <32.749271, 37.900181, 33.670219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662781, 38.181499, 33.941105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396149, 0.697161, -0.597521,
		-0.892363, 0.139080, -0.429354,
		-0.216226, 0.703295, 0.677217,
		32.597912, 38.392487, 34.144272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334286, 38.381191, 33.320831>,  <32.749271, 37.900181, 33.670219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334286, 38.381191, 33.320831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.516853, 38.541199, 33.638741>,  <32.626396, 38.637203, 33.829487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.516853, 38.541199, 33.638741>,  <32.334286, 38.381191, 33.320831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516853, 38.541199, 33.638741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585658, 0.537395, -0.606805,
		-0.669839, 0.742425, 0.011006,
		0.456421, 0.400016, 0.794775,
		32.653778, 38.661205, 33.877174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227074, 39.061520, 33.202503>,  <32.334286, 38.381191, 33.320831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227074, 39.061520, 33.202503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.571102, 38.963589, 33.381535>,  <32.777519, 38.904831, 33.488953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.571102, 38.963589, 33.381535>,  <32.227074, 39.061520, 33.202503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571102, 38.963589, 33.381535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508647, 0.479179, -0.715308,
		-0.039341, 0.842879, 0.536663,
		0.860076, -0.244831, 0.447579,
		32.829124, 38.890141, 33.515808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597786, 39.576077, 32.990082>,  <32.227074, 39.061520, 33.202503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597786, 39.576077, 32.990082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.890438, 39.356140, 33.151272>,  <33.066029, 39.224178, 33.247986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.890438, 39.356140, 33.151272>,  <32.597786, 39.576077, 32.990082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890438, 39.356140, 33.151272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664415, 0.442854, -0.602024,
		0.152559, 0.708202, 0.689329,
		0.731627, -0.549845, 0.402979,
		33.109924, 39.191185, 33.272167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117096, 40.061619, 33.320812>,  <32.597786, 39.576077, 32.990082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117096, 40.061619, 33.320812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.274227, 39.703831, 33.235390>,  <33.368504, 39.489159, 33.184135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.274227, 39.703831, 33.235390>,  <33.117096, 40.061619, 33.320812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274227, 39.703831, 33.235390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671785, 0.437701, -0.597598,
		0.628008, 0.091289, 0.772834,
		0.392824, -0.894474, -0.213553,
		33.392075, 39.435490, 33.171322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786446, 40.151569, 33.364517>,  <33.117096, 40.061619, 33.320812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786446, 40.151569, 33.364517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721340, 39.833382, 33.131027>,  <33.682278, 39.642467, 32.990932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721340, 39.833382, 33.131027>,  <33.786446, 40.151569, 33.364517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721340, 39.833382, 33.131027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572698, 0.405584, -0.712403,
		0.803446, -0.450248, 0.389552,
		-0.162762, -0.795474, -0.583721,
		33.672512, 39.594738, 32.955910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490784, 40.040737, 33.058086>,  <33.786446, 40.151569, 33.364517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490784, 40.040737, 33.058086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.235256, 39.852974, 32.814262>,  <34.081940, 39.740314, 32.667969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.235256, 39.852974, 32.814262>,  <34.490784, 40.040737, 33.058086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235256, 39.852974, 32.814262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704533, -0.038606, -0.708620,
		0.309098, -0.882137, 0.355376,
		-0.638820, -0.469407, -0.609562,
		34.043610, 39.712151, 32.631393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844677, 39.473721, 32.651260>,  <34.490784, 40.040737, 33.058086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844677, 39.473721, 32.651260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510994, 39.534603, 32.439251>,  <34.310783, 39.571133, 32.312046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510994, 39.534603, 32.439251>,  <34.844677, 39.473721, 32.651260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510994, 39.534603, 32.439251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529319, -0.048540, -0.847034,
		-0.154655, -0.987155, -0.040075,
		-0.834208, 0.152211, -0.530027,
		34.260731, 39.580265, 32.280243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847694, 38.947880, 32.195595>,  <34.844677, 39.473721, 32.651260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847694, 38.947880, 32.195595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.613468, 39.231190, 32.037884>,  <34.472931, 39.401176, 31.943258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.613468, 39.231190, 32.037884>,  <34.847694, 38.947880, 32.195595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613468, 39.231190, 32.037884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553847, -0.005589, -0.832600,
		-0.591916, -0.705911, -0.389006,
		-0.585567, 0.708278, -0.394275,
		34.437798, 39.443672, 31.919601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651360, 38.730099, 31.558792>,  <34.847694, 38.947880, 32.195595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651360, 38.730099, 31.558792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541660, 39.112270, 31.515070>,  <34.475842, 39.341572, 31.488836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541660, 39.112270, 31.515070>,  <34.651360, 38.730099, 31.558792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541660, 39.112270, 31.515070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304482, -0.021545, -0.952275,
		-0.912184, -0.294438, -0.285002,
		-0.274245, 0.955428, -0.109304,
		34.459385, 39.398899, 31.482279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378956, 38.781509, 30.882481>,  <34.651360, 38.730099, 31.558792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378956, 38.781509, 30.882481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.502983, 39.149311, 30.979120>,  <34.577400, 39.369991, 31.037104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.502983, 39.149311, 30.979120>,  <34.378956, 38.781509, 30.882481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502983, 39.149311, 30.979120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327482, 0.135272, -0.935124,
		-0.892533, 0.369068, -0.259178,
		0.310065, 0.919505, 0.241598,
		34.596001, 39.425163, 31.051600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183846, 39.137341, 30.274973>,  <34.378956, 38.781509, 30.882481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183846, 39.137341, 30.274973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.462357, 39.343548, 30.474752>,  <34.629463, 39.467270, 30.594620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.462357, 39.343548, 30.474752>,  <34.183846, 39.137341, 30.274973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462357, 39.343548, 30.474752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494936, 0.159130, -0.854234,
		-0.519848, 0.841974, -0.144349,
		0.696273, 0.515516, 0.499447,
		34.671238, 39.498203, 30.624586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349331, 39.756714, 29.901667>,  <34.183846, 39.137341, 30.274973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349331, 39.756714, 29.901667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.658016, 39.756245, 30.156054>,  <34.843227, 39.755962, 30.308685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.658016, 39.756245, 30.156054>,  <34.349331, 39.756714, 29.901667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658016, 39.756245, 30.156054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600065, 0.332594, -0.727532,
		-0.210665, 0.943069, 0.257373,
		0.771714, -0.001175, 0.635969,
		34.889530, 39.755894, 30.346844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779312, 40.428211, 29.831011>,  <34.349331, 39.756714, 29.901667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779312, 40.428211, 29.831011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.027962, 40.163010, 29.997869>,  <35.177151, 40.003891, 30.097984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.027962, 40.163010, 29.997869>,  <34.779312, 40.428211, 29.831011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027962, 40.163010, 29.997869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745373, 0.336934, -0.575234,
		0.240830, 0.668510, 0.703630,
		0.621627, -0.663000, 0.417146,
		35.214451, 39.964111, 30.123013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342014, 40.832897, 29.883448>,  <34.779312, 40.428211, 29.831011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342014, 40.832897, 29.883448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.474415, 40.458546, 29.931713>,  <35.553856, 40.233932, 29.960672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.474415, 40.458546, 29.931713>,  <35.342014, 40.832897, 29.883448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474415, 40.458546, 29.931713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820668, 0.222393, -0.526351,
		0.465768, 0.273248, 0.841662,
		0.331004, -0.935883, 0.120663,
		35.573715, 40.177780, 29.967913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105923, 40.893925, 29.976673>,  <35.342014, 40.832897, 29.883448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105923, 40.893925, 29.976673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.060730, 40.507751, 29.882725>,  <36.033615, 40.276047, 29.826355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.060730, 40.507751, 29.882725>,  <36.105923, 40.893925, 29.976673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060730, 40.507751, 29.882725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707644, 0.087751, -0.701099,
		0.697478, -0.245417, 0.673272,
		-0.112982, -0.965438, -0.234872,
		36.026836, 40.218121, 29.812263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742680, 40.567215, 29.975529>,  <36.105923, 40.893925, 29.976673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742680, 40.567215, 29.975529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525955, 40.315960, 29.752140>,  <36.395920, 40.165207, 29.618107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525955, 40.315960, 29.752140>,  <36.742680, 40.567215, 29.975529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525955, 40.315960, 29.752140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701357, 0.028289, -0.712248,
		0.463188, -0.777589, 0.425220,
		-0.541807, -0.628136, -0.558471,
		36.363415, 40.127518, 29.584599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246414, 40.098747, 29.720476>,  <36.742680, 40.567215, 29.975529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246414, 40.098747, 29.720476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924107, 40.065235, 29.485966>,  <36.730724, 40.045128, 29.345259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924107, 40.065235, 29.485966>,  <37.246414, 40.098747, 29.720476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924107, 40.065235, 29.485966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571732, 0.148176, -0.806949,
		0.154511, -0.985403, -0.071472,
		-0.805760, -0.083820, -0.586280,
		36.682377, 40.040100, 29.310083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504284, 39.706638, 29.149130>,  <37.246414, 40.098747, 29.720476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504284, 39.706638, 29.149130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.178581, 39.871906, 28.986021>,  <36.983162, 39.971069, 28.888155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.178581, 39.871906, 28.986021>,  <37.504284, 39.706638, 29.149130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178581, 39.871906, 28.986021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512963, 0.183251, -0.838623,
		-0.271771, -0.892025, -0.361155,
		-0.814254, 0.413172, -0.407773,
		36.934303, 39.995857, 28.863689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440899, 39.386829, 28.529142>,  <37.504284, 39.706638, 29.149130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440899, 39.386829, 28.529142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.238304, 39.730648, 28.501854>,  <37.116745, 39.936939, 28.485481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.238304, 39.730648, 28.501854>,  <37.440899, 39.386829, 28.529142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238304, 39.730648, 28.501854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433534, 0.185474, -0.881843,
		-0.745329, -0.476221, -0.466582,
		-0.506491, 0.859542, -0.068219,
		37.086357, 39.988510, 28.481388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191410, 39.445572, 27.853636>,  <37.440899, 39.386829, 28.529142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191410, 39.445572, 27.853636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.171009, 39.825199, 27.977999>,  <37.158768, 40.052975, 28.052616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.171009, 39.825199, 27.977999>,  <37.191410, 39.445572, 27.853636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171009, 39.825199, 27.977999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505217, 0.293062, -0.811708,
		-0.861484, 0.115675, -0.494434,
		-0.051005, 0.949070, 0.310909,
		37.155708, 40.109921, 28.071272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037247, 39.818310, 27.320311>,  <37.191410, 39.445572, 27.853636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037247, 39.818310, 27.320311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.192936, 40.093086, 27.565784>,  <37.286350, 40.257954, 27.713070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.192936, 40.093086, 27.565784>,  <37.037247, 39.818310, 27.320311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192936, 40.093086, 27.565784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470511, 0.424489, -0.773581,
		-0.791911, 0.589844, -0.157993,
		0.389226, 0.686945, 0.613686,
		37.309704, 40.299171, 27.749889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807800, 40.449745, 27.042461>,  <37.037247, 39.818310, 27.320311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807800, 40.449745, 27.042461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113922, 40.552319, 27.278616>,  <37.297596, 40.613861, 27.420309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113922, 40.552319, 27.278616>,  <36.807800, 40.449745, 27.042461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113922, 40.552319, 27.278616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381328, 0.558310, -0.736803,
		-0.518557, 0.789008, 0.329492,
		0.765302, 0.256430, 0.590386,
		37.343513, 40.629246, 27.455732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990665, 41.203205, 26.926271>,  <36.807800, 40.449745, 27.042461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990665, 41.203205, 26.926271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.301876, 40.995361, 27.067518>,  <37.488602, 40.870655, 27.152266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.301876, 40.995361, 27.067518>,  <36.990665, 41.203205, 26.926271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301876, 40.995361, 27.067518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622723, 0.563553, -0.542793,
		0.083039, 0.642198, 0.762027,
		0.778023, -0.519605, 0.353115,
		37.535282, 40.839481, 27.173452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428043, 41.698040, 26.917713>,  <36.990665, 41.203205, 26.926271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428043, 41.698040, 26.917713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.675655, 41.384232, 26.932308>,  <37.824223, 41.195946, 26.941065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.675655, 41.384232, 26.932308>,  <37.428043, 41.698040, 26.917713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675655, 41.384232, 26.932308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697273, 0.527621, -0.485208,
		0.361402, 0.325802, 0.873637,
		0.619031, -0.784518, 0.036489,
		37.861366, 41.148876, 26.943254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191231, 41.951950, 27.116953>,  <37.428043, 41.698040, 26.917713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191231, 41.951950, 27.116953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.261124, 41.589016, 26.964005>,  <38.303059, 41.371254, 26.872234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.261124, 41.589016, 26.964005>,  <38.191231, 41.951950, 27.116953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261124, 41.589016, 26.964005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716543, 0.383531, -0.582640,
		0.675302, -0.172177, 0.717163,
		0.174737, -0.907336, -0.382372,
		38.313545, 41.316814, 26.849293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963760, 41.755024, 27.167252>,  <38.191231, 41.951950, 27.116953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963760, 41.755024, 27.167252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.843872, 41.496578, 26.886478>,  <38.771938, 41.341511, 26.718016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.843872, 41.496578, 26.886478>,  <38.963760, 41.755024, 27.167252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843872, 41.496578, 26.886478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772203, 0.267766, -0.576198,
		0.560242, -0.714731, 0.418675,
		-0.299719, -0.646113, -0.701931,
		38.753956, 41.302746, 26.675900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537525, 41.275360, 26.967207>,  <38.963760, 41.755024, 27.167252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537525, 41.275360, 26.967207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.287727, 41.287819, 26.655045>,  <39.137848, 41.295292, 26.467747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.287727, 41.287819, 26.655045>,  <39.537525, 41.275360, 26.967207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287727, 41.287819, 26.655045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772970, 0.167807, -0.611848,
		0.111901, -0.985328, -0.128869,
		-0.624496, 0.031145, -0.780407,
		39.100380, 41.297161, 26.420923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183971, 41.044296, 27.009344>,  <39.537525, 41.275360, 26.967207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183971, 41.044296, 27.009344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.572369, 41.100655, 27.086613>,  <40.805408, 41.134472, 27.132975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.572369, 41.100655, 27.086613>,  <40.183971, 41.044296, 27.009344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572369, 41.100655, 27.086613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129103, -0.371060, 0.919591,
		0.201248, -0.917857, -0.342107,
		0.970995, 0.140899, 0.193173,
		40.863667, 41.142925, 27.144566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354736, 40.419312, 27.433258>,  <40.183971, 41.044296, 27.009344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354736, 40.419312, 27.433258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.604370, 40.723381, 27.505535>,  <40.754150, 40.905823, 27.548903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.604370, 40.723381, 27.505535>,  <40.354736, 40.419312, 27.433258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604370, 40.723381, 27.505535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038045, -0.201420, 0.978766,
		0.780431, -0.617706, -0.096781,
		0.624083, 0.760177, 0.180695,
		40.791595, 40.951435, 27.559744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689758, 40.120209, 27.959919>,  <40.354736, 40.419312, 27.433258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689758, 40.120209, 27.959919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.771782, 40.511200, 27.979841>,  <40.820995, 40.745796, 27.991795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.771782, 40.511200, 27.979841>,  <40.689758, 40.120209, 27.959919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771782, 40.511200, 27.979841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150242, -0.018846, 0.988470,
		0.967149, -0.210182, 0.142994,
		0.205064, 0.977481, 0.049805,
		40.833302, 40.804443, 27.994783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146374, 40.144382, 28.470570>,  <40.689758, 40.120209, 27.959919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146374, 40.144382, 28.470570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.007336, 40.516029, 28.420095>,  <40.923912, 40.739017, 28.389811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.007336, 40.516029, 28.420095>,  <41.146374, 40.144382, 28.470570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007336, 40.516029, 28.420095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250657, 0.037601, 0.967345,
		0.903520, 0.367874, 0.219819,
		-0.347596, 0.929115, -0.126184,
		40.903057, 40.794765, 28.382240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438416, 40.570126, 29.030029>,  <41.146374, 40.144382, 28.470570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438416, 40.570126, 29.030029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.100380, 40.739326, 28.899246>,  <40.897560, 40.840847, 28.820776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.100380, 40.739326, 28.899246>,  <41.438416, 40.570126, 29.030029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100380, 40.739326, 28.899246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307208, 0.116303, 0.944509,
		0.437553, 0.898635, 0.031663,
		-0.845086, 0.423000, -0.326956,
		40.846855, 40.866226, 28.801159>
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
