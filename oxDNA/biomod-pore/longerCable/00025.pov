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
	<24.395096, 34.780006, 34.764267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.374743, 34.755909, 35.163021>,  <24.362530, 34.741451, 35.402275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.374743, 34.755909, 35.163021>,  <24.395096, 34.780006, 34.764267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.374743, 34.755909, 35.163021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660236, 0.750967, 0.011679,
		-0.749332, -0.657586, -0.077987,
		-0.050886, -0.060241, 0.996886,
		24.359476, 34.737835, 35.462086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.086765, 34.553707, 34.715054>,  <24.395096, 34.780006, 34.764267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.086765, 34.553707, 34.715054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485186, 34.518196, 34.714420>,  <25.724237, 34.496891, 34.714043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485186, 34.518196, 34.714420>,  <25.086765, 34.553707, 34.715054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485186, 34.518196, 34.714420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025775, 0.272072, 0.961932,
		-0.084968, -0.958173, 0.273286,
		0.996050, -0.088777, -0.001579,
		25.784000, 34.491562, 34.713947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.341658, 34.224464, 35.330750>,  <25.086765, 34.553707, 34.715054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.341658, 34.224464, 35.330750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626719, 34.450138, 35.163982>,  <25.797754, 34.585541, 35.063923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626719, 34.450138, 35.163982>,  <25.341658, 34.224464, 35.330750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.626719, 34.450138, 35.163982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255794, 0.344412, 0.903299,
		0.653220, -0.750384, 0.101130,
		0.712652, 0.564185, -0.416921,
		25.840513, 34.619392, 35.038906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025003, 34.033222, 35.534069>,  <25.341658, 34.224464, 35.330750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025003, 34.033222, 35.534069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.047939, 34.418175, 35.427834>,  <26.061701, 34.649147, 35.364090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.047939, 34.418175, 35.427834>,  <26.025003, 34.033222, 35.534069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.047939, 34.418175, 35.427834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363459, 0.227652, 0.903368,
		0.929844, -0.148333, -0.336731,
		0.057342, 0.962379, -0.265593,
		26.065142, 34.706890, 35.348156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572723, 34.189976, 35.914749>,  <26.025003, 34.033222, 35.534069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572723, 34.189976, 35.914749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398155, 34.535118, 35.812759>,  <26.293415, 34.742203, 35.751568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398155, 34.535118, 35.812759>,  <26.572723, 34.189976, 35.914749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398155, 34.535118, 35.812759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361792, 0.427755, 0.828331,
		0.823798, 0.269254, -0.498857,
		-0.436420, 0.862860, -0.254970,
		26.267229, 34.793976, 35.736267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968079, 34.682339, 36.125729>,  <26.572723, 34.189976, 35.914749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968079, 34.682339, 36.125729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626652, 34.886204, 36.082527>,  <26.421797, 35.008522, 36.056606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626652, 34.886204, 36.082527>,  <26.968079, 34.682339, 36.125729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.626652, 34.886204, 36.082527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239380, 0.567804, 0.787588,
		0.462734, 0.646404, -0.606663,
		-0.853566, 0.509667, -0.108006,
		26.370583, 35.039104, 36.050125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088469, 35.432220, 36.328854>,  <26.968079, 34.682339, 36.125729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088469, 35.432220, 36.328854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694466, 35.365509, 36.346493>,  <26.458063, 35.325481, 36.357075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694466, 35.365509, 36.346493>,  <27.088469, 35.432220, 36.328854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694466, 35.365509, 36.346493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040963, 0.474427, 0.879341,
		-0.167579, 0.864351, -0.474146,
		-0.985007, -0.166781, 0.044098,
		26.398964, 35.315475, 36.359722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690548, 36.071693, 36.334808>,  <27.088469, 35.432220, 36.328854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690548, 36.071693, 36.334808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.477135, 35.787964, 36.519073>,  <26.349087, 35.617725, 36.629631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.477135, 35.787964, 36.519073>,  <26.690548, 36.071693, 36.334808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.477135, 35.787964, 36.519073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056639, 0.573398, 0.817317,
		-0.843880, 0.409975, -0.346102,
		-0.533533, -0.709321, 0.460659,
		26.317074, 35.575169, 36.657272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.993847, 36.230820, 36.561882>,  <26.690548, 36.071693, 36.334808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.993847, 36.230820, 36.561882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154520, 35.954945, 36.802872>,  <26.250925, 35.789417, 36.947464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154520, 35.954945, 36.802872>,  <25.993847, 36.230820, 36.561882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154520, 35.954945, 36.802872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183148, 0.584092, 0.790754,
		-0.897277, -0.427976, 0.108306,
		0.401685, -0.689690, 0.602476,
		26.275026, 35.748039, 36.983616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567432, 36.156654, 37.119129>,  <25.993847, 36.230820, 36.561882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567432, 36.156654, 37.119129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893036, 36.000153, 37.290852>,  <26.088398, 35.906250, 37.393887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893036, 36.000153, 37.290852>,  <25.567432, 36.156654, 37.119129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.893036, 36.000153, 37.290852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172378, 0.543086, 0.821793,
		-0.554684, -0.742950, 0.374634,
		0.814010, -0.391257, 0.429309,
		26.137239, 35.882774, 37.419643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.407700, 35.903389, 37.735695>,  <25.567432, 36.156654, 37.119129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.407700, 35.903389, 37.735695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800602, 35.971657, 37.766788>,  <26.036343, 36.012619, 37.785446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800602, 35.971657, 37.766788>,  <25.407700, 35.903389, 37.735695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.800602, 35.971657, 37.766788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167152, 0.608761, 0.775545,
		0.085041, -0.774778, 0.626488,
		0.982257, 0.170672, 0.077736,
		26.095280, 36.022858, 37.790108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.537836, 35.876431, 38.485725>,  <25.407700, 35.903389, 37.735695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.537836, 35.876431, 38.485725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809217, 36.084835, 38.278557>,  <25.972046, 36.209877, 38.154255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809217, 36.084835, 38.278557>,  <25.537836, 35.876431, 38.485725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809217, 36.084835, 38.278557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182462, 0.802418, 0.568184,
		0.711620, -0.290987, 0.639471,
		0.678457, 0.521010, -0.517923,
		26.012754, 36.241138, 38.123180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035381, 36.242386, 38.967381>,  <25.537836, 35.876431, 38.485725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035381, 36.242386, 38.967381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012907, 36.441944, 38.621445>,  <25.999422, 36.561680, 38.413883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012907, 36.441944, 38.621445>,  <26.035381, 36.242386, 38.967381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012907, 36.441944, 38.621445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052064, 0.863563, 0.501546,
		0.997062, 0.073208, -0.022547,
		-0.056188, 0.498898, -0.864837,
		25.996050, 36.591614, 38.361992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569792, 36.883926, 38.867004>,  <26.035381, 36.242386, 38.967381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569792, 36.883926, 38.867004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222925, 36.933750, 38.674129>,  <26.014805, 36.963646, 38.558403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222925, 36.933750, 38.674129>,  <26.569792, 36.883926, 38.867004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222925, 36.933750, 38.674129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146895, 0.861164, 0.486640,
		0.475859, 0.492829, -0.728476,
		-0.867168, 0.124562, -0.482187,
		25.962774, 36.971119, 38.529472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879337, 37.129803, 38.148411>,  <26.569792, 36.883926, 38.867004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879337, 37.129803, 38.148411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115599, 36.966259, 38.426682>,  <27.257355, 36.868134, 38.593643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115599, 36.966259, 38.426682>,  <26.879337, 37.129803, 38.148411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115599, 36.966259, 38.426682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557057, 0.830338, 0.015045,
		-0.583795, 0.378643, 0.718202,
		0.590653, -0.408862, 0.695673,
		27.292795, 36.843601, 38.635384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049109, 36.717583, 37.510735>,  <26.879337, 37.129803, 38.148411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049109, 36.717583, 37.510735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796160, 36.556580, 37.775486>,  <26.644390, 36.459976, 37.934338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796160, 36.556580, 37.775486>,  <27.049109, 36.717583, 37.510735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796160, 36.556580, 37.775486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049076, -0.831880, -0.552781,
		0.773107, -0.382047, 0.506306,
		-0.632374, -0.402511, 0.661882,
		26.606447, 36.435825, 37.974052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380587, 36.189369, 37.767967>,  <27.049109, 36.717583, 37.510735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380587, 36.189369, 37.767967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986176, 36.129963, 37.798161>,  <26.749529, 36.094318, 37.816277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986176, 36.129963, 37.798161>,  <27.380587, 36.189369, 37.767967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986176, 36.129963, 37.798161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060221, -0.740203, -0.669681,
		0.155329, -0.655776, 0.738803,
		-0.986025, -0.148513, 0.075484,
		26.690369, 36.085407, 37.820805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298607, 35.424858, 37.733685>,  <27.380587, 36.189369, 37.767967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298607, 35.424858, 37.733685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941416, 35.571098, 37.628670>,  <26.727100, 35.658844, 37.565659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941416, 35.571098, 37.628670>,  <27.298607, 35.424858, 37.733685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941416, 35.571098, 37.628670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088575, -0.714619, -0.693884,
		-0.441300, -0.596368, 0.670521,
		-0.892977, 0.365602, -0.262538,
		26.673523, 35.680779, 37.549908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846876, 34.875996, 37.728058>,  <27.298607, 35.424858, 37.733685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.846876, 34.875996, 37.728058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667156, 35.142651, 37.490158>,  <26.559324, 35.302643, 37.347420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667156, 35.142651, 37.490158>,  <26.846876, 34.875996, 37.728058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667156, 35.142651, 37.490158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135198, -0.708796, -0.692336,
		-0.883092, -0.230658, 0.408590,
		-0.449300, 0.666637, -0.594747,
		26.532366, 35.342640, 37.311733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142254, 35.016079, 37.480698>,  <26.846876, 34.875996, 37.728058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142254, 35.016079, 37.480698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048582, 35.347713, 37.277611>,  <25.992378, 35.546696, 37.155758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048582, 35.347713, 37.277611>,  <26.142254, 35.016079, 37.480698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048582, 35.347713, 37.277611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038891, -0.529808, -0.847225,
		-0.971415, -0.178657, 0.156314,
		-0.234179, 0.829087, -0.507716,
		25.978329, 35.596439, 37.125298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449997, 34.948635, 37.040688>,  <26.142254, 35.016079, 37.480698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449997, 34.948635, 37.040688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.670149, 35.253391, 36.904095>,  <25.802240, 35.436245, 36.822140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.670149, 35.253391, 36.904095>,  <25.449997, 34.948635, 37.040688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.670149, 35.253391, 36.904095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067168, -0.367272, -0.927685,
		-0.832208, 0.533516, -0.150964,
		0.550380, 0.761887, -0.341482,
		25.835262, 35.481956, 36.801651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.122919, 35.142200, 36.423332>,  <25.449997, 34.948635, 37.040688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.122919, 35.142200, 36.423332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513447, 35.225651, 36.400417>,  <25.747763, 35.275719, 36.386669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513447, 35.225651, 36.400417>,  <25.122919, 35.142200, 36.423332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513447, 35.225651, 36.400417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001759, -0.272438, -0.962172,
		-0.216337, 0.939284, -0.266353,
		0.976317, 0.208622, -0.057286,
		25.806341, 35.288239, 36.383232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.227406, 35.681156, 35.866867>,  <25.122919, 35.142200, 36.423332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.227406, 35.681156, 35.866867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564034, 35.474556, 35.930088>,  <25.766010, 35.350594, 35.968021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564034, 35.474556, 35.930088>,  <25.227406, 35.681156, 35.866867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.564034, 35.474556, 35.930088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108187, -0.125495, -0.986178,
		0.529200, 0.847038, -0.049734,
		0.841572, -0.516505, 0.158050,
		25.816505, 35.319603, 35.977505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704651, 35.817749, 35.189430>,  <25.227406, 35.681156, 35.866867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704651, 35.817749, 35.189430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932266, 35.541035, 35.367252>,  <26.068834, 35.375008, 35.473946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932266, 35.541035, 35.367252>,  <25.704651, 35.817749, 35.189430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932266, 35.541035, 35.367252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286137, -0.340257, -0.895740,
		0.770923, 0.636913, 0.004327,
		0.569037, -0.691785, 0.444556,
		26.102978, 35.333500, 35.500618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444563, 35.790703, 34.851753>,  <25.704651, 35.817749, 35.189430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444563, 35.790703, 34.851753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376547, 35.430473, 35.011780>,  <26.335737, 35.214336, 35.107796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376547, 35.430473, 35.011780>,  <26.444563, 35.790703, 34.851753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376547, 35.430473, 35.011780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029882, -0.401084, -0.915554,
		0.984984, -0.167634, 0.041289,
		-0.170039, -0.900572, 0.400071,
		26.325535, 35.160301, 35.131802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891550, 35.277290, 34.581425>,  <26.444563, 35.790703, 34.851753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891550, 35.277290, 34.581425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569904, 35.081165, 34.715885>,  <26.376917, 34.963490, 34.796562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569904, 35.081165, 34.715885>,  <26.891550, 35.277290, 34.581425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569904, 35.081165, 34.715885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171654, -0.349864, -0.920940,
		0.569150, -0.798244, 0.197167,
		-0.804116, -0.490309, 0.336147,
		26.328669, 34.934074, 34.816730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838867, 34.462166, 34.413994>,  <26.891550, 35.277290, 34.581425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838867, 34.462166, 34.413994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482367, 34.643547, 34.416714>,  <26.268465, 34.752377, 34.418346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482367, 34.643547, 34.416714>,  <26.838867, 34.462166, 34.413994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482367, 34.643547, 34.416714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079190, -0.140855, -0.986858,
		-0.446539, -0.880078, 0.161447,
		-0.891253, 0.453456, 0.006796,
		26.214991, 34.779583, 34.418751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.287922, 34.060829, 33.994076>,  <26.838867, 34.462166, 34.413994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.287922, 34.060829, 33.994076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239052, 34.457802, 33.998947>,  <26.209730, 34.695988, 34.001869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239052, 34.457802, 33.998947>,  <26.287922, 34.060829, 33.994076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239052, 34.457802, 33.998947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148940, -0.006200, -0.988827,
		-0.981270, -0.122625, 0.148571,
		-0.122175, 0.992434, 0.012180,
		26.202398, 34.755531, 34.002602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706289, 34.347321, 33.449181>,  <26.287922, 34.060829, 33.994076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706289, 34.347321, 33.449181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007616, 34.607887, 33.485329>,  <26.188412, 34.764229, 33.507019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007616, 34.607887, 33.485329>,  <25.706289, 34.347321, 33.449181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007616, 34.607887, 33.485329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074981, 0.051445, -0.995857,
		-0.653370, 0.756971, -0.010090,
		0.753316, 0.651420, 0.090371,
		26.233610, 34.803314, 33.512440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.653339, 35.006042, 33.163555>,  <25.706289, 34.347321, 33.449181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.653339, 35.006042, 33.163555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041622, 34.910137, 33.157299>,  <26.274591, 34.852596, 33.153545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041622, 34.910137, 33.157299>,  <25.653339, 35.006042, 33.163555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041622, 34.910137, 33.157299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016655, 0.132088, -0.991098,
		0.239692, 0.961804, 0.132212,
		0.970706, -0.239761, -0.015641,
		26.332834, 34.838207, 33.152607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988167, 35.539959, 33.036697>,  <25.653339, 35.006042, 33.163555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988167, 35.539959, 33.036697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140108, 35.202358, 32.885242>,  <26.231274, 34.999798, 32.794369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140108, 35.202358, 32.885242>,  <25.988167, 35.539959, 33.036697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140108, 35.202358, 32.885242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081185, 0.377326, -0.922515,
		0.921477, 0.381162, 0.074809,
		0.379855, -0.844003, -0.378641,
		26.254065, 34.949158, 32.771648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522928, 35.779713, 32.564163>,  <25.988167, 35.539959, 33.036697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522928, 35.779713, 32.564163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393538, 35.423698, 32.435669>,  <26.315903, 35.210091, 32.358574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393538, 35.423698, 32.435669>,  <26.522928, 35.779713, 32.564163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393538, 35.423698, 32.435669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284985, 0.415363, -0.863862,
		0.902300, -0.187893, -0.388009,
		-0.323478, -0.890039, -0.321235,
		26.296494, 35.156685, 32.339298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923859, 35.581619, 31.986423>,  <26.522928, 35.779713, 32.564163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923859, 35.581619, 31.986423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545979, 35.450577, 31.980606>,  <26.319250, 35.371952, 31.977116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545979, 35.450577, 31.980606>,  <26.923859, 35.581619, 31.986423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545979, 35.450577, 31.980606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168177, 0.522088, -0.836146,
		0.281521, -0.787463, -0.548314,
		-0.944702, -0.327606, -0.014545,
		26.262568, 35.352295, 31.976242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956087, 35.354908, 31.275045>,  <26.923859, 35.581619, 31.986423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956087, 35.354908, 31.275045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616585, 35.492847, 31.435390>,  <26.412884, 35.575611, 31.531597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616585, 35.492847, 31.435390>,  <26.956087, 35.354908, 31.275045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616585, 35.492847, 31.435390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096061, 0.644919, -0.758190,
		-0.519985, -0.682026, -0.514253,
		-0.848757, 0.344848, 0.400864,
		26.361958, 35.596302, 31.555649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859550, 35.905449, 30.754238>,  <26.956087, 35.354908, 31.275045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859550, 35.905449, 30.754238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498678, 36.009216, 30.616385>,  <26.282154, 36.071476, 30.533672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498678, 36.009216, 30.616385>,  <26.859550, 35.905449, 30.754238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498678, 36.009216, 30.616385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310122, 0.165245, 0.936226,
		0.299818, 0.951524, -0.068631,
		-0.902183, 0.259414, -0.344632,
		26.228024, 36.087040, 30.512995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655264, 36.619053, 30.960953>,  <26.859550, 35.905449, 30.754238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655264, 36.619053, 30.960953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334301, 36.383785, 30.920567>,  <26.141724, 36.242622, 30.896336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334301, 36.383785, 30.920567>,  <26.655264, 36.619053, 30.960953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334301, 36.383785, 30.920567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355888, 0.335813, 0.872109,
		-0.479046, 0.735719, -0.478782,
		-0.802408, -0.588173, -0.100964,
		26.093578, 36.207333, 30.890278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464548, 36.669579, 31.637707>,  <26.655264, 36.619053, 30.960953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464548, 36.669579, 31.637707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773943, 36.856544, 31.808931>,  <26.959579, 36.968723, 31.911665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773943, 36.856544, 31.808931>,  <26.464548, 36.669579, 31.637707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773943, 36.856544, 31.808931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499983, 0.865058, -0.041143,
		-0.389527, -0.182199, 0.902813,
		0.773490, 0.467417, 0.428060,
		27.005989, 36.996769, 31.937349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277306, 37.082672, 32.265343>,  <26.464548, 36.669579, 31.637707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277306, 37.082672, 32.265343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.607414, 37.266724, 32.134373>,  <26.805481, 37.377155, 32.055790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.607414, 37.266724, 32.134373>,  <26.277306, 37.082672, 32.265343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.607414, 37.266724, 32.134373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456703, 0.884817, 0.092310,
		0.332183, 0.073353, 0.940358,
		0.825274, 0.460128, -0.327422,
		26.854996, 37.404762, 32.036144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559610, 37.458870, 32.800243>,  <26.277306, 37.082672, 32.265343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559610, 37.458870, 32.800243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622408, 37.578976, 32.423904>,  <26.660086, 37.651039, 32.198101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622408, 37.578976, 32.423904>,  <26.559610, 37.458870, 32.800243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622408, 37.578976, 32.423904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570122, 0.805445, 0.161921,
		0.806421, 0.510978, 0.297633,
		0.156989, 0.300264, -0.940848,
		26.669506, 37.669056, 32.141651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119965, 37.371208, 33.350800>,  <26.559610, 37.458870, 32.800243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119965, 37.371208, 33.350800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985453, 37.124489, 33.635468>,  <26.904745, 36.976456, 33.806267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985453, 37.124489, 33.635468>,  <27.119965, 37.371208, 33.350800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985453, 37.124489, 33.635468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887186, 0.046029, 0.459109,
		-0.315937, 0.785771, 0.531740,
		-0.336279, -0.616802, 0.711668,
		26.884569, 36.939449, 33.848969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112103, 37.651642, 34.073586>,  <27.119965, 37.371208, 33.350800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112103, 37.651642, 34.073586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184225, 37.259163, 34.101101>,  <27.227499, 37.023674, 34.117611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184225, 37.259163, 34.101101>,  <27.112103, 37.651642, 34.073586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184225, 37.259163, 34.101101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902462, 0.192843, 0.385193,
		-0.391219, -0.007370, 0.920268,
		0.180306, -0.981202, 0.068792,
		27.238317, 36.964802, 34.121738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489698, 37.503254, 34.605976>,  <27.112103, 37.651642, 34.073586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489698, 37.503254, 34.605976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566191, 37.165901, 34.405121>,  <27.612085, 36.963490, 34.284607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566191, 37.165901, 34.405121>,  <27.489698, 37.503254, 34.605976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566191, 37.165901, 34.405121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977360, 0.116418, 0.176675,
		-0.090546, -0.524554, 0.846548,
		0.191229, -0.843380, -0.502137,
		27.623560, 36.912888, 34.254478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991621, 36.981220, 35.023468>,  <27.489698, 37.503254, 34.605976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991621, 36.981220, 35.023468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024794, 36.976128, 34.624878>,  <28.044697, 36.973072, 34.385723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024794, 36.976128, 34.624878>,  <27.991621, 36.981220, 35.023468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024794, 36.976128, 34.624878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991479, 0.101852, 0.081215,
		0.100458, -0.994718, 0.021069,
		0.082932, -0.012731, -0.996474,
		28.049673, 36.972309, 34.325935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347748, 36.421768, 34.742531>,  <27.991621, 36.981220, 35.023468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347748, 36.421768, 34.742531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408073, 36.742908, 34.511814>,  <28.444269, 36.935593, 34.373383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408073, 36.742908, 34.511814>,  <28.347748, 36.421768, 34.742531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408073, 36.742908, 34.511814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979161, -0.041042, 0.198896,
		0.136010, -0.594771, -0.792306,
		0.150816, 0.802846, -0.576795,
		28.453318, 36.983761, 34.338776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032576, 36.347195, 34.572933>,  <28.347748, 36.421768, 34.742531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032576, 36.347195, 34.572933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017580, 36.702110, 34.389057>,  <29.008583, 36.915058, 34.278732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017580, 36.702110, 34.389057>,  <29.032576, 36.347195, 34.572933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017580, 36.702110, 34.389057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999201, 0.039662, -0.004937,
		0.013852, -0.459511, -0.888064,
		-0.037491, 0.887286, -0.459694,
		29.006332, 36.968296, 34.251148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312752, 36.279770, 33.946529>,  <29.032576, 36.347195, 34.572933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312752, 36.279770, 33.946529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370552, 36.648323, 34.090851>,  <29.405231, 36.869453, 34.177444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370552, 36.648323, 34.090851>,  <29.312752, 36.279770, 33.946529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370552, 36.648323, 34.090851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989104, -0.124113, -0.079185,
		-0.028179, 0.368317, -0.929273,
		0.144500, 0.921379, 0.360806,
		29.413902, 36.924736, 34.199093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827324, 36.605537, 33.521091>,  <29.312752, 36.279770, 33.946529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827324, 36.605537, 33.521091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832579, 36.773857, 33.883915>,  <29.835732, 36.874851, 34.101608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832579, 36.773857, 33.883915>,  <29.827324, 36.605537, 33.521091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832579, 36.773857, 33.883915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988837, 0.129180, -0.074253,
		-0.148420, 0.897907, -0.414408,
		0.013139, 0.420803, 0.907057,
		29.836521, 36.900097, 34.156033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427107, 36.931850, 33.441025>,  <29.827324, 36.605537, 33.521091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427107, 36.931850, 33.441025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337908, 36.953545, 33.830349>,  <30.284388, 36.966560, 34.063942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337908, 36.953545, 33.830349>,  <30.427107, 36.931850, 33.441025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337908, 36.953545, 33.830349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967492, 0.134500, 0.214172,
		-0.119295, 0.989428, -0.082462,
		-0.222999, 0.054232, 0.973309,
		30.271008, 36.969814, 34.122341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724874, 37.471699, 33.781631>,  <30.427107, 36.931850, 33.441025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724874, 37.471699, 33.781631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660660, 37.212620, 34.079548>,  <30.622131, 37.057175, 34.258297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660660, 37.212620, 34.079548>,  <30.724874, 37.471699, 33.781631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660660, 37.212620, 34.079548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985954, -0.070013, 0.151634,
		-0.046068, 0.758675, 0.649838,
		-0.160538, -0.647696, 0.744794,
		30.612499, 37.018311, 34.302986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076143, 37.783676, 34.334698>,  <30.724874, 37.471699, 33.781631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076143, 37.783676, 34.334698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066912, 37.384560, 34.309811>,  <31.061373, 37.145088, 34.294880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066912, 37.384560, 34.309811>,  <31.076143, 37.783676, 34.334698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066912, 37.384560, 34.309811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999432, -0.024557, 0.023080,
		-0.024557, -0.061647, 0.997796,
		-0.023080, -0.997796, -0.062215,
		31.059988, 37.085220, 34.291145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392212, 37.453583, 34.984291>,  <31.076143, 37.783676, 34.334698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392212, 37.453583, 34.984291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403105, 37.234509, 34.649796>,  <31.409641, 37.103062, 34.449097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403105, 37.234509, 34.649796>,  <31.392212, 37.453583, 34.984291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403105, 37.234509, 34.649796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967912, 0.223500, -0.114860,
		0.249807, -0.806278, 0.536202,
		0.027232, -0.547690, -0.836238,
		31.411274, 37.070202, 34.398926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059710, 36.850323, 35.435596>,  <31.392212, 37.453583, 34.984291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059710, 36.850323, 35.435596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157091, 36.626442, 35.752445>,  <31.215521, 36.492111, 35.942554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157091, 36.626442, 35.752445>,  <31.059710, 36.850323, 35.435596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157091, 36.626442, 35.752445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451452, 0.788226, 0.418200,
		-0.858441, 0.255792, 0.444578,
		0.243456, -0.559705, 0.792123,
		31.230127, 36.458530, 35.990082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061964, 37.039177, 36.091351>,  <31.059710, 36.850323, 35.435596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061964, 37.039177, 36.091351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456766, 37.008377, 36.147766>,  <31.693647, 36.989899, 36.181614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456766, 37.008377, 36.147766>,  <31.061964, 37.039177, 36.091351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456766, 37.008377, 36.147766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078763, -0.533211, -0.842308,
		0.140059, 0.842471, -0.520218,
		0.987005, -0.076999, 0.141037,
		31.752869, 36.985279, 36.190079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563957, 37.666019, 36.148972>,  <31.061964, 37.039177, 36.091351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563957, 37.666019, 36.148972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385569, 37.604904, 36.501736>,  <30.278536, 37.568233, 36.713394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385569, 37.604904, 36.501736>,  <30.563957, 37.666019, 36.148972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385569, 37.604904, 36.501736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827247, -0.305824, -0.471310,
		0.341720, -0.939749, 0.009994,
		-0.445970, -0.152789, 0.881911,
		30.251778, 37.559067, 36.766308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583578, 38.056988, 36.707073>,  <30.563957, 37.666019, 36.148972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583578, 38.056988, 36.707073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938385, 37.939732, 36.564377>,  <31.151270, 37.869377, 36.478760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938385, 37.939732, 36.564377>,  <30.583578, 38.056988, 36.707073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938385, 37.939732, 36.564377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411081, 0.853195, 0.321045,
		0.210260, -0.431424, 0.877306,
		0.887019, -0.293141, -0.356743,
		31.204491, 37.851788, 36.457355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109615, 38.246311, 37.200668>,  <30.583578, 38.056988, 36.707073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109615, 38.246311, 37.200668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340076, 38.185986, 36.879345>,  <31.478354, 38.149788, 36.686550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340076, 38.185986, 36.879345>,  <31.109615, 38.246311, 37.200668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340076, 38.185986, 36.879345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550081, 0.798479, 0.244625,
		0.604530, -0.582825, 0.543009,
		0.576155, -0.150816, -0.803306,
		31.512922, 38.140739, 36.638351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814342, 38.190052, 37.387676>,  <31.109615, 38.246311, 37.200668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814342, 38.190052, 37.387676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830807, 38.343117, 37.018486>,  <31.840685, 38.434956, 36.796974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830807, 38.343117, 37.018486>,  <31.814342, 38.190052, 37.387676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830807, 38.343117, 37.018486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546890, 0.764463, 0.341332,
		0.836192, -0.518813, -0.177808,
		0.041160, 0.382660, -0.922972,
		31.843155, 38.457916, 36.741596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065121, 38.787479, 37.845230>,  <31.814342, 38.190052, 37.387676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065121, 38.787479, 37.845230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165512, 38.734379, 37.461693>,  <32.225746, 38.702518, 37.231571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165512, 38.734379, 37.461693>,  <32.065121, 38.787479, 37.845230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165512, 38.734379, 37.461693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816516, 0.561064, 0.136046,
		0.519912, -0.817058, 0.249215,
		0.250982, -0.132756, -0.958845,
		32.240807, 38.694553, 37.174038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823654, 38.587654, 37.812202>,  <32.065121, 38.787479, 37.845230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823654, 38.587654, 37.812202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684566, 38.771751, 37.485455>,  <32.601112, 38.882210, 37.289406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684566, 38.771751, 37.485455>,  <32.823654, 38.587654, 37.812202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684566, 38.771751, 37.485455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800905, 0.598781, -0.003557,
		0.487487, -0.655468, -0.576817,
		-0.347718, 0.460242, -0.816866,
		32.580250, 38.909824, 37.240395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602585, 38.612804, 37.662910>,  <32.823654, 38.587654, 37.812202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602585, 38.612804, 37.662910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957100, 38.564854, 37.841850>,  <34.169807, 38.536083, 37.949215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957100, 38.564854, 37.841850>,  <33.602585, 38.612804, 37.662910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957100, 38.564854, 37.841850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445927, 0.481723, -0.754382,
		-0.125063, 0.868085, 0.480403,
		0.886289, -0.119880, 0.447348,
		34.222988, 38.528889, 37.976055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992615, 39.292919, 38.003159>,  <33.602585, 38.612804, 37.662910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992615, 39.292919, 38.003159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184536, 39.003025, 37.805351>,  <34.299690, 38.829090, 37.686668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184536, 39.003025, 37.805351>,  <33.992615, 39.292919, 38.003159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184536, 39.003025, 37.805351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402419, 0.682633, -0.609977,
		0.779646, 0.093665, 0.619176,
		0.479803, -0.724734, -0.494519,
		34.328476, 38.785606, 37.656994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567318, 39.513992, 37.648800>,  <33.992615, 39.292919, 38.003159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567318, 39.513992, 37.648800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910789, 39.679237, 37.527470>,  <35.116871, 39.778385, 37.454670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910789, 39.679237, 37.527470>,  <34.567318, 39.513992, 37.648800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910789, 39.679237, 37.527470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123824, -0.407089, -0.904956,
		-0.497330, 0.814627, -0.298406,
		0.858679, 0.413112, -0.303328,
		35.168392, 39.803169, 37.436470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669880, 40.095669, 36.987686>,  <34.567318, 39.513992, 37.648800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669880, 40.095669, 36.987686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955631, 39.817272, 37.016682>,  <35.127083, 39.650234, 37.034081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955631, 39.817272, 37.016682>,  <34.669880, 40.095669, 36.987686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955631, 39.817272, 37.016682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409417, -0.499738, -0.763309,
		0.567483, 0.515614, -0.641954,
		0.714382, -0.695991, 0.072491,
		35.169945, 39.608475, 37.038429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071949, 39.934452, 36.353645>,  <34.669880, 40.095669, 36.987686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071949, 39.934452, 36.353645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050732, 39.595581, 36.565105>,  <35.038002, 39.392258, 36.691982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050732, 39.595581, 36.565105>,  <35.071949, 39.934452, 36.353645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050732, 39.595581, 36.565105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421114, -0.461048, -0.781088,
		0.905455, -0.264052, -0.332305,
		-0.053039, -0.847178, 0.528654,
		35.034821, 39.341427, 36.723701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452667, 39.326454, 36.016899>,  <35.071949, 39.934452, 36.353645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452667, 39.326454, 36.016899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137169, 39.210995, 36.233990>,  <34.947868, 39.141720, 36.364246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137169, 39.210995, 36.233990>,  <35.452667, 39.326454, 36.016899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137169, 39.210995, 36.233990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245329, -0.661728, -0.708470,
		0.563638, -0.691953, 0.451124,
		-0.788750, -0.288647, 0.542731,
		34.900543, 39.124401, 36.396809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388927, 38.548420, 36.341873>,  <35.452667, 39.326454, 36.016899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388927, 38.548420, 36.341873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068348, 38.735424, 36.192684>,  <34.875999, 38.847626, 36.103172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068348, 38.735424, 36.192684>,  <35.388927, 38.548420, 36.341873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068348, 38.735424, 36.192684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002034, -0.621501, -0.783410,
		-0.598053, -0.628626, 0.497154,
		-0.801454, 0.467510, -0.372970,
		34.827911, 38.875679, 36.080791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746555, 38.132393, 36.357174>,  <35.388927, 38.548420, 36.341873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746555, 38.132393, 36.357174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809032, 38.400936, 36.067379>,  <34.846519, 38.562061, 35.893501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809032, 38.400936, 36.067379>,  <34.746555, 38.132393, 36.357174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809032, 38.400936, 36.067379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115475, -0.740873, -0.661644,
		-0.980953, 0.019684, -0.193243,
		0.156192, 0.671357, -0.724489,
		34.855888, 38.602345, 35.850033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308022, 37.970325, 35.770821>,  <34.746555, 38.132393, 36.357174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308022, 37.970325, 35.770821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633873, 38.180618, 35.672859>,  <34.829384, 38.306793, 35.614082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633873, 38.180618, 35.672859>,  <34.308022, 37.970325, 35.770821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633873, 38.180618, 35.672859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234646, -0.684922, -0.689800,
		-0.530393, 0.504466, -0.681320,
		0.814632, 0.525734, -0.244907,
		34.878262, 38.338337, 35.599388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352917, 37.819691, 35.061417>,  <34.308022, 37.970325, 35.770821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352917, 37.819691, 35.061417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717281, 37.938515, 35.175949>,  <34.935902, 38.009811, 35.244671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717281, 37.938515, 35.175949>,  <34.352917, 37.819691, 35.061417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717281, 37.938515, 35.175949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402345, -0.793276, -0.456980,
		0.091391, 0.531476, -0.842129,
		0.910915, 0.297063, 0.286335,
		34.990555, 38.027634, 35.261848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832058, 37.929825, 34.574406>,  <34.352917, 37.819691, 35.061417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832058, 37.929825, 34.574406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066994, 37.798275, 34.870209>,  <35.207954, 37.719345, 35.047691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066994, 37.798275, 34.870209>,  <34.832058, 37.929825, 34.574406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066994, 37.798275, 34.870209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369475, -0.703994, -0.606532,
		0.720083, 0.629470, -0.291971,
		0.587340, -0.328877, 0.739508,
		35.243195, 37.699612, 35.092060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501621, 37.744244, 34.254662>,  <34.832058, 37.929825, 34.574406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501621, 37.744244, 34.254662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537590, 37.556049, 34.605785>,  <35.559170, 37.443134, 34.816460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537590, 37.556049, 34.605785>,  <35.501621, 37.744244, 34.254662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537590, 37.556049, 34.605785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610047, -0.670671, -0.421952,
		0.787247, 0.573449, 0.226714,
		0.089918, -0.470486, 0.877814,
		35.564564, 37.414902, 34.869129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287739, 37.593689, 34.394474>,  <35.501621, 37.744244, 34.254662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287739, 37.593689, 34.394474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088249, 37.342686, 34.633644>,  <35.968555, 37.192085, 34.777145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088249, 37.342686, 34.633644>,  <36.287739, 37.593689, 34.394474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088249, 37.342686, 34.633644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647090, -0.728510, -0.224828,
		0.576674, 0.274784, 0.769377,
		-0.498720, -0.627509, 0.597923,
		35.938633, 37.154434, 34.813023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788143, 37.153397, 34.629906>,  <36.287739, 37.593689, 34.394474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788143, 37.153397, 34.629906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447632, 36.951809, 34.688339>,  <36.243324, 36.830856, 34.723400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447632, 36.951809, 34.688339>,  <36.788143, 37.153397, 34.629906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447632, 36.951809, 34.688339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383168, -0.787268, -0.483106,
		0.358479, -0.355282, 0.863289,
		-0.851279, -0.503968, 0.146086,
		36.192249, 36.800617, 34.732166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101341, 36.594364, 34.905315>,  <36.788143, 37.153397, 34.629906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101341, 36.594364, 34.905315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726246, 36.513218, 34.792538>,  <36.501190, 36.464531, 34.724873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726246, 36.513218, 34.792538>,  <37.101341, 36.594364, 34.905315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726246, 36.513218, 34.792538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335486, -0.739289, -0.583867,
		-0.089989, -0.642102, 0.761319,
		-0.937737, -0.202870, -0.281944,
		36.444923, 36.452358, 34.707954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986179, 35.896305, 34.966187>,  <37.101341, 36.594364, 34.905315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986179, 35.896305, 34.966187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712589, 36.010109, 34.697491>,  <36.548435, 36.078392, 34.536274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712589, 36.010109, 34.697491>,  <36.986179, 35.896305, 34.966187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712589, 36.010109, 34.697491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408575, -0.613450, -0.675830,
		-0.604357, -0.736706, 0.303342,
		-0.683973, 0.284504, -0.671742,
		36.507397, 36.095459, 34.495968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922680, 35.231777, 34.552914>,  <36.986179, 35.896305, 34.966187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922680, 35.231777, 34.552914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761139, 35.516903, 34.323547>,  <36.664215, 35.687977, 34.185928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761139, 35.516903, 34.323547>,  <36.922680, 35.231777, 34.552914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761139, 35.516903, 34.323547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353692, -0.456398, -0.816458,
		-0.843685, -0.532541, -0.067798,
		-0.403854, 0.712812, -0.573411,
		36.639984, 35.730747, 34.151524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777294, 34.872147, 33.991299>,  <36.922680, 35.231777, 34.552914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777294, 34.872147, 33.991299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731541, 35.243931, 33.850998>,  <36.704090, 35.466999, 33.766819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731541, 35.243931, 33.850998>,  <36.777294, 34.872147, 33.991299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731541, 35.243931, 33.850998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299578, -0.304360, -0.904222,
		-0.947190, -0.208506, -0.243631,
		-0.114384, 0.929457, -0.350750,
		36.697224, 35.522766, 33.745773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347813, 34.685001, 33.330624>,  <36.777294, 34.872147, 33.991299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347813, 34.685001, 33.330624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563900, 35.021576, 33.335449>,  <36.693554, 35.223522, 33.338345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563900, 35.021576, 33.335449>,  <36.347813, 34.685001, 33.330624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563900, 35.021576, 33.335449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188723, -0.107164, -0.976166,
		-0.820090, 0.529620, -0.216690,
		0.540219, 0.841438, 0.012067,
		36.725967, 35.274006, 33.339069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162624, 35.045643, 32.723652>,  <36.347813, 34.685001, 33.330624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162624, 35.045643, 32.723652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512779, 35.212914, 32.820667>,  <36.722874, 35.313274, 32.878876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512779, 35.212914, 32.820667>,  <36.162624, 35.045643, 32.723652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512779, 35.212914, 32.820667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202808, 0.137736, -0.969483,
		-0.438822, 0.897862, 0.035763,
		0.875388, 0.418178, 0.242535,
		36.775394, 35.338367, 32.893429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194031, 35.543808, 32.244110>,  <36.162624, 35.045643, 32.723652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194031, 35.543808, 32.244110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563030, 35.454784, 32.370266>,  <36.784428, 35.401371, 32.445961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563030, 35.454784, 32.370266>,  <36.194031, 35.543808, 32.244110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563030, 35.454784, 32.370266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315041, -0.038031, -0.948316,
		0.223048, 0.974178, 0.035031,
		0.922496, -0.222556, 0.315389,
		36.839779, 35.388016, 32.464882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604908, 35.914631, 31.762306>,  <36.194031, 35.543808, 32.244110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604908, 35.914631, 31.762306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838299, 35.655380, 31.958055>,  <36.978333, 35.499828, 32.075504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838299, 35.655380, 31.958055>,  <36.604908, 35.914631, 31.762306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838299, 35.655380, 31.958055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578830, -0.090786, -0.810378,
		0.569656, 0.756101, 0.322184,
		0.583478, -0.648127, 0.489371,
		37.013344, 35.460941, 32.104866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295067, 36.053566, 31.628180>,  <36.604908, 35.914631, 31.762306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295067, 36.053566, 31.628180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315678, 35.668499, 31.734468>,  <37.328045, 35.437458, 31.798241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315678, 35.668499, 31.734468>,  <37.295067, 36.053566, 31.628180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315678, 35.668499, 31.734468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707323, -0.152657, -0.690210,
		0.705010, 0.223514, 0.673055,
		0.051525, -0.962672, 0.265721,
		37.331135, 35.379696, 31.814184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987568, 36.042046, 31.509317>,  <37.295067, 36.053566, 31.628180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987568, 36.042046, 31.509317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800995, 35.688343, 31.500097>,  <37.689049, 35.476120, 31.494566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800995, 35.688343, 31.500097>,  <37.987568, 36.042046, 31.509317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800995, 35.688343, 31.500097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557303, -0.273537, -0.783958,
		0.686915, -0.378511, 0.620385,
		-0.466435, -0.884255, -0.023048,
		37.661064, 35.423065, 31.493183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494545, 35.574123, 31.279211>,  <37.987568, 36.042046, 31.509317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494545, 35.574123, 31.279211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152462, 35.384003, 31.196545>,  <37.947212, 35.269932, 31.146946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152462, 35.384003, 31.196545>,  <38.494545, 35.574123, 31.279211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152462, 35.384003, 31.196545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340798, -0.215279, -0.915157,
		0.390485, -0.853079, 0.346089,
		-0.855207, -0.475301, -0.206664,
		37.895901, 35.241413, 31.134544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707306, 35.018898, 31.030842>,  <38.494545, 35.574123, 31.279211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707306, 35.018898, 31.030842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328384, 35.038643, 30.904232>,  <38.101032, 35.050488, 30.828266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328384, 35.038643, 30.904232>,  <38.707306, 35.018898, 31.030842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328384, 35.038643, 30.904232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282406, -0.337774, -0.897862,
		-0.151229, -0.939933, 0.306034,
		-0.947300, 0.049357, -0.316523,
		38.044193, 35.053452, 30.809275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520535, 34.312439, 30.801687>,  <38.707306, 35.018898, 31.030842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520535, 34.312439, 30.801687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289730, 34.585655, 30.622568>,  <38.151249, 34.749584, 30.515097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289730, 34.585655, 30.622568>,  <38.520535, 34.312439, 30.801687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289730, 34.585655, 30.622568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136166, -0.460153, -0.877336,
		-0.805309, -0.567203, 0.172505,
		-0.577006, 0.683037, -0.447799,
		38.116627, 34.790565, 30.488228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248302, 33.965603, 30.251795>,  <38.520535, 34.312439, 30.801687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248302, 33.965603, 30.251795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152924, 34.340397, 30.149656>,  <38.095695, 34.565273, 30.088373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152924, 34.340397, 30.149656>,  <38.248302, 33.965603, 30.251795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152924, 34.340397, 30.149656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159560, -0.221558, -0.962004,
		-0.957959, -0.270125, -0.096676,
		-0.238442, 0.936987, -0.255345,
		38.081390, 34.621494, 30.073053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755409, 33.964439, 29.650211>,  <38.248302, 33.965603, 30.251795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755409, 33.964439, 29.650211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897118, 34.337864, 29.628448>,  <37.982143, 34.561916, 29.615391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897118, 34.337864, 29.628448>,  <37.755409, 33.964439, 29.650211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897118, 34.337864, 29.628448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177228, -0.124153, -0.976307,
		-0.918194, 0.336237, -0.209437,
		0.354273, 0.933558, -0.054405,
		38.003399, 34.617931, 29.612127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301216, 34.222443, 29.194286>,  <37.755409, 33.964439, 29.650211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301216, 34.222443, 29.194286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611107, 34.475357, 29.193499>,  <37.797043, 34.627106, 29.193026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611107, 34.475357, 29.193499>,  <37.301216, 34.222443, 29.194286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611107, 34.475357, 29.193499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100282, -0.125948, -0.986955,
		-0.624289, 0.764426, -0.160983,
		0.774730, 0.632289, -0.001970,
		37.843525, 34.665043, 29.192907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205791, 34.767086, 28.640100>,  <37.301216, 34.222443, 29.194286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205791, 34.767086, 28.640100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589657, 34.679161, 28.710213>,  <37.819977, 34.626404, 28.752279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589657, 34.679161, 28.710213>,  <37.205791, 34.767086, 28.640100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589657, 34.679161, 28.710213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114008, -0.265618, -0.957314,
		0.256989, 0.938684, -0.229844,
		0.959666, -0.219815, 0.175279,
		37.877556, 34.613216, 28.762796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535835, 35.052490, 28.172739>,  <37.205791, 34.767086, 28.640100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535835, 35.052490, 28.172739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835903, 34.815632, 28.290462>,  <38.015942, 34.673519, 28.361097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835903, 34.815632, 28.290462>,  <37.535835, 35.052490, 28.172739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835903, 34.815632, 28.290462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299793, -0.092147, -0.949543,
		0.589386, 0.800547, 0.108395,
		0.750166, -0.592143, 0.294309,
		38.060951, 34.637989, 28.378756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167004, 35.271637, 27.726509>,  <37.535835, 35.052490, 28.172739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167004, 35.271637, 27.726509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242695, 34.909203, 27.877874>,  <38.288109, 34.691742, 27.968693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242695, 34.909203, 27.877874>,  <38.167004, 35.271637, 27.726509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242695, 34.909203, 27.877874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391610, -0.283764, -0.875283,
		0.900464, 0.313815, 0.301139,
		0.189225, -0.906090, 0.378412,
		38.299461, 34.637375, 27.991398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877937, 35.086693, 27.592470>,  <38.167004, 35.271637, 27.726509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877937, 35.086693, 27.592470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701717, 34.733158, 27.655390>,  <38.595985, 34.521038, 27.693142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701717, 34.733158, 27.655390>,  <38.877937, 35.086693, 27.592470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701717, 34.733158, 27.655390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564564, -0.409002, -0.716927,
		0.697985, -0.227036, 0.679170,
		-0.440550, -0.883839, 0.157301,
		38.569553, 34.468006, 27.702579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398262, 34.591625, 27.578886>,  <38.877937, 35.086693, 27.592470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398262, 34.591625, 27.578886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081165, 34.352711, 27.530207>,  <38.890907, 34.209362, 27.500999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081165, 34.352711, 27.530207>,  <39.398262, 34.591625, 27.578886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081165, 34.352711, 27.530207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505735, -0.533013, -0.678328,
		0.340292, -0.599284, 0.724610,
		-0.792738, -0.597290, -0.121699,
		38.843346, 34.173523, 27.493696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698769, 33.958946, 27.538801>,  <39.398262, 34.591625, 27.578886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698769, 33.958946, 27.538801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332771, 33.959629, 27.377413>,  <39.113174, 33.960041, 27.280581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332771, 33.959629, 27.377413>,  <39.698769, 33.958946, 27.538801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332771, 33.959629, 27.377413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311833, -0.631559, -0.709855,
		-0.256029, -0.775326, 0.577338,
		-0.914991, 0.001710, -0.403469,
		39.058273, 33.960144, 27.256372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571877, 33.347366, 27.253143>,  <39.698769, 33.958946, 27.538801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571877, 33.347366, 27.253143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279926, 33.514866, 27.037024>,  <39.104755, 33.615364, 26.907351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279926, 33.514866, 27.037024>,  <39.571877, 33.347366, 27.253143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279926, 33.514866, 27.037024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198085, -0.626927, -0.753475,
		-0.654249, -0.656970, 0.374631,
		-0.729877, 0.418751, -0.540303,
		39.060963, 33.640491, 26.874933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180771, 32.724178, 26.882305>,  <39.571877, 33.347366, 27.253143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180771, 32.724178, 26.882305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137058, 33.072598, 26.690752>,  <39.110832, 33.281651, 26.575821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137058, 33.072598, 26.690752>,  <39.180771, 32.724178, 26.882305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137058, 33.072598, 26.690752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000930, -0.481678, -0.876348,
		-0.994010, -0.096215, 0.051829,
		-0.109283, 0.871051, -0.478882,
		39.104275, 33.333912, 26.547087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719772, 32.532707, 26.296041>,  <39.180771, 32.724178, 26.882305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719772, 32.532707, 26.296041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907696, 32.877754, 26.221024>,  <39.020451, 33.084782, 26.176012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907696, 32.877754, 26.221024>,  <38.719772, 32.532707, 26.296041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907696, 32.877754, 26.221024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259619, -0.338074, -0.904602,
		-0.843727, 0.376302, -0.382782,
		0.469812, 0.862614, -0.187547,
		39.048637, 33.136539, 26.164759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469421, 32.633198, 25.581177>,  <38.719772, 32.532707, 26.296041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469421, 32.633198, 25.581177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794121, 32.857365, 25.646900>,  <38.988941, 32.991863, 25.686335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794121, 32.857365, 25.646900>,  <38.469421, 32.633198, 25.581177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794121, 32.857365, 25.646900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386719, -0.304991, -0.870304,
		-0.437621, 0.770009, -0.464300,
		0.811749, 0.560417, 0.164307,
		39.037647, 33.025490, 25.696192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837349, 32.729919, 24.912767>,  <38.469421, 32.633198, 25.581177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837349, 32.729919, 24.912767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135761, 32.862995, 25.143509>,  <39.314808, 32.942841, 25.281954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135761, 32.862995, 25.143509>,  <38.837349, 32.729919, 24.912767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135761, 32.862995, 25.143509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651235, -0.183615, -0.736328,
		-0.139049, 0.924989, -0.353641,
		0.746028, 0.332689, 0.576854,
		39.359570, 32.962803, 25.316565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256451, 33.014080, 24.386465>,  <38.837349, 32.729919, 24.912767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256451, 33.014080, 24.386465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480404, 32.961430, 24.713686>,  <39.614777, 32.929840, 24.910019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480404, 32.961430, 24.713686>,  <39.256451, 33.014080, 24.386465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480404, 32.961430, 24.713686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724657, -0.400929, -0.560472,
		0.401754, 0.906603, -0.129088,
		0.559881, -0.131628, 0.818051,
		39.648369, 32.921940, 24.959101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949524, 33.333183, 24.299873>,  <39.256451, 33.014080, 24.386465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949524, 33.333183, 24.299873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028198, 33.046589, 24.567591>,  <40.075401, 32.874630, 24.728222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028198, 33.046589, 24.567591>,  <39.949524, 33.333183, 24.299873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028198, 33.046589, 24.567591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871085, -0.185625, -0.454703,
		0.450028, 0.672447, 0.587614,
		0.196687, -0.716491, 0.669295,
		40.087204, 32.831642, 24.768379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696060, 33.315693, 24.436308>,  <39.949524, 33.333183, 24.299873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696060, 33.315693, 24.436308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572849, 32.975803, 24.607464>,  <40.498924, 32.771870, 24.710157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572849, 32.975803, 24.607464>,  <40.696060, 33.315693, 24.436308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572849, 32.975803, 24.607464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797547, -0.475835, -0.370811,
		0.518692, 0.227042, 0.824264,
		-0.308024, -0.849725, 0.427888,
		40.480442, 32.720886, 24.735830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322647, 33.052799, 24.685902>,  <40.696060, 33.315693, 24.436308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322647, 33.052799, 24.685902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063900, 32.749741, 24.651192>,  <40.908653, 32.567905, 24.630365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063900, 32.749741, 24.651192>,  <41.322647, 33.052799, 24.685902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063900, 32.749741, 24.651192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709776, -0.556537, -0.431839,
		0.278889, -0.340933, 0.897767,
		-0.646869, -0.757649, -0.086774,
		40.869839, 32.522446, 24.625160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707684, 32.470352, 24.847662>,  <41.322647, 33.052799, 24.685902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707684, 32.470352, 24.847662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390503, 32.356991, 24.631922>,  <41.200195, 32.288975, 24.502478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390503, 32.356991, 24.631922>,  <41.707684, 32.470352, 24.847662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390503, 32.356991, 24.631922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609274, -0.372562, -0.699987,
		-0.002561, -0.883673, 0.468098,
		-0.792956, -0.283408, -0.539353,
		41.152615, 32.271969, 24.470116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905964, 31.759069, 24.614819>,  <41.707684, 32.470352, 24.847662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905964, 31.759069, 24.614819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564789, 31.825916, 24.417000>,  <41.360085, 31.866024, 24.298309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564789, 31.825916, 24.417000>,  <41.905964, 31.759069, 24.614819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564789, 31.825916, 24.417000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371836, -0.470437, -0.800267,
		-0.366390, -0.866465, 0.339112,
		-0.852934, 0.167116, -0.494546,
		41.308910, 31.876051, 24.268637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692345, 31.117924, 24.254438>,  <41.905964, 31.759069, 24.614819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692345, 31.117924, 24.254438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556835, 31.446413, 24.070774>,  <41.475529, 31.643507, 23.960575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556835, 31.446413, 24.070774>,  <41.692345, 31.117924, 24.254438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556835, 31.446413, 24.070774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507832, -0.251227, -0.824009,
		-0.792048, -0.512327, -0.331935,
		-0.338771, 0.821223, -0.459160,
		41.455204, 31.692780, 23.933025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438168, 30.942602, 23.634016>,  <41.692345, 31.117924, 24.254438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438168, 30.942602, 23.634016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521362, 31.327259, 23.562483>,  <41.571281, 31.558054, 23.519564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521362, 31.327259, 23.562483>,  <41.438168, 30.942602, 23.634016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521362, 31.327259, 23.562483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599415, -0.269787, -0.753602,
		-0.772943, 0.049547, -0.632537,
		0.207989, 0.961644, -0.178831,
		41.583759, 31.615753, 23.508833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371727, 30.974508, 22.969189>,  <41.438168, 30.942602, 23.634016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371727, 30.974508, 22.969189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562828, 31.317842, 23.044039>,  <41.677486, 31.523844, 23.088949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562828, 31.317842, 23.044039>,  <41.371727, 30.974508, 22.969189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562828, 31.317842, 23.044039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570975, -0.141504, -0.808680,
		-0.667641, 0.493189, -0.557692,
		0.477748, 0.858336, 0.187125,
		41.706154, 31.575344, 23.100176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450527, 31.435057, 22.378220>,  <41.371727, 30.974508, 22.969189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450527, 31.435057, 22.378220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761902, 31.520309, 22.614393>,  <41.948727, 31.571461, 22.756098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761902, 31.520309, 22.614393>,  <41.450527, 31.435057, 22.378220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761902, 31.520309, 22.614393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617181, -0.088189, -0.781863,
		-0.114569, 0.973036, -0.200189,
		0.778435, 0.213130, 0.590435,
		41.995434, 31.584248, 22.791523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877785, 31.848244, 22.006062>,  <41.450527, 31.435057, 22.378220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877785, 31.848244, 22.006062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123287, 31.667955, 22.265339>,  <42.270588, 31.559782, 22.420906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123287, 31.667955, 22.265339>,  <41.877785, 31.848244, 22.006062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123287, 31.667955, 22.265339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761467, 0.121121, -0.636788,
		0.208505, 0.884408, 0.417549,
		0.613754, -0.450723, 0.648193,
		42.307415, 31.532738, 22.459797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570698, 32.249126, 22.083298>,  <41.877785, 31.848244, 22.006062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570698, 32.249126, 22.083298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.561405, 31.852234, 22.132175>,  <42.555828, 31.614098, 22.161503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.561405, 31.852234, 22.132175>,  <42.570698, 32.249126, 22.083298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561405, 31.852234, 22.132175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554414, -0.114498, -0.824327,
		0.831916, 0.048596, 0.552769,
		-0.023231, -0.992234, 0.122195,
		42.554436, 31.554564, 22.168835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236706, 32.063919, 22.436417>,  <42.570698, 32.249126, 22.083298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236706, 32.063919, 22.436417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576973, 32.274002, 22.445633>,  <43.781132, 32.400051, 22.451162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576973, 32.274002, 22.445633>,  <43.236706, 32.063919, 22.436417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576973, 32.274002, 22.445633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073026, -0.074651, -0.994532,
		-0.520613, 0.847696, -0.101856,
		0.850664, 0.525204, 0.023040,
		43.832172, 32.431564, 22.452545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180904, 32.703808, 21.947254>,  <43.236706, 32.063919, 22.436417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180904, 32.703808, 21.947254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.561481, 32.587448, 21.987516>,  <43.789829, 32.517632, 22.011675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.561481, 32.587448, 21.987516>,  <43.180904, 32.703808, 21.947254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.561481, 32.587448, 21.987516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103222, -0.006556, -0.994637,
		0.290003, 0.956730, 0.023790,
		0.951443, -0.290904, 0.100657,
		43.846916, 32.500175, 22.017714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621426, 33.199989, 21.720257>,  <43.180904, 32.703808, 21.947254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621426, 33.199989, 21.720257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771763, 32.832150, 21.674519>,  <43.861965, 32.611446, 21.647076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771763, 32.832150, 21.674519>,  <43.621426, 33.199989, 21.720257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771763, 32.832150, 21.674519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302671, 0.238443, -0.922787,
		0.875863, 0.312210, 0.367953,
		0.375839, -0.919603, -0.114346,
		43.884514, 32.556267, 21.640215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287067, 33.275673, 21.370047>,  <43.621426, 33.199989, 21.720257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287067, 33.275673, 21.370047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118359, 32.918976, 21.304436>,  <44.017132, 32.704960, 21.265070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118359, 32.918976, 21.304436>,  <44.287067, 33.275673, 21.370047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118359, 32.918976, 21.304436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350244, 0.006624, -0.936635,
		0.836322, -0.452499, 0.309533,
		-0.421776, -0.891740, -0.164025,
		43.991825, 32.651455, 21.255228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788834, 32.678448, 21.198370>,  <44.287067, 33.275673, 21.370047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.788834, 32.678448, 21.198370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429153, 32.694714, 21.024117>,  <44.213345, 32.704472, 20.919565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429153, 32.694714, 21.024117>,  <44.788834, 32.678448, 21.198370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429153, 32.694714, 21.024117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437458, 0.065831, -0.896826,
		-0.007789, -0.997002, -0.076984,
		-0.899205, 0.040663, -0.435634,
		44.159393, 32.706913, 20.893427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.900036, 33.105106, 21.706230>,  <44.788834, 32.678448, 21.198370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.900036, 33.105106, 21.706230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.237019, 33.085011, 21.491663>,  <45.439209, 33.072952, 21.362923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.237019, 33.085011, 21.491663>,  <44.900036, 33.105106, 21.706230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.237019, 33.085011, 21.491663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418851, 0.565153, -0.710751,
		0.338869, 0.823455, 0.455071,
		0.842456, -0.050244, -0.536417,
		45.489754, 33.069939, 21.330738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.117546, 32.434868, 22.165415>,  <44.900036, 33.105106, 21.706230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.117546, 32.434868, 22.165415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.722218, 32.471382, 22.116621>,  <44.485020, 32.493290, 22.087345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.722218, 32.471382, 22.116621>,  <45.117546, 32.434868, 22.165415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.722218, 32.471382, 22.116621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090469, 0.292590, 0.951949,
		0.122589, 0.951871, -0.280916,
		-0.988325, 0.091284, -0.121983,
		44.425720, 32.498768, 22.080027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.992374, 33.044910, 22.474524>,  <45.117546, 32.434868, 22.165415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.992374, 33.044910, 22.474524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.632942, 32.869625, 22.465435>,  <44.417282, 32.764454, 22.459982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.632942, 32.869625, 22.465435>,  <44.992374, 33.044910, 22.474524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632942, 32.869625, 22.465435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165449, 0.290393, 0.942496,
		-0.406418, 0.850670, -0.333445,
		-0.898583, -0.438216, -0.022721,
		44.363369, 32.738159, 22.458618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600430, 33.456047, 22.737803>,  <44.992374, 33.044910, 22.474524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600430, 33.456047, 22.737803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387440, 33.120277, 22.781332>,  <44.259647, 32.918816, 22.807449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387440, 33.120277, 22.781332>,  <44.600430, 33.456047, 22.737803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.387440, 33.120277, 22.781332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193157, 0.245670, 0.949914,
		-0.824115, 0.484782, -0.292953,
		-0.532471, -0.839424, 0.108821,
		44.227699, 32.868450, 22.813978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967281, 33.640511, 23.008762>,  <44.600430, 33.456047, 22.737803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967281, 33.640511, 23.008762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022701, 33.255749, 23.103041>,  <44.055954, 33.024891, 23.159607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022701, 33.255749, 23.103041>,  <43.967281, 33.640511, 23.008762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022701, 33.255749, 23.103041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066015, 0.228492, 0.971305,
		-0.988153, -0.150133, -0.031842,
		0.138549, -0.961900, 0.235696,
		44.064266, 32.967178, 23.173750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430149, 33.458752, 23.496990>,  <43.967281, 33.640511, 23.008762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430149, 33.458752, 23.496990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698349, 33.172085, 23.573738>,  <43.859268, 33.000084, 23.619787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698349, 33.172085, 23.573738>,  <43.430149, 33.458752, 23.496990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698349, 33.172085, 23.573738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151170, 0.121221, 0.981047,
		-0.726344, -0.686799, -0.027060,
		0.670502, -0.716668, 0.191872,
		43.899498, 32.957085, 23.631300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033863, 32.953445, 23.816952>,  <43.430149, 33.458752, 23.496990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033863, 32.953445, 23.816952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417896, 32.892666, 23.910896>,  <43.648315, 32.856197, 23.967262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417896, 32.892666, 23.910896>,  <43.033863, 32.953445, 23.816952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417896, 32.892666, 23.910896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189673, 0.263490, 0.945831,
		-0.205603, -0.952620, 0.224150,
		0.960079, -0.151950, 0.234861,
		43.705921, 32.847080, 23.981354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937057, 32.409756, 24.314991>,  <43.033863, 32.953445, 23.816952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937057, 32.409756, 24.314991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277344, 32.619041, 24.335091>,  <43.481514, 32.744614, 24.347151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277344, 32.619041, 24.335091>,  <42.937057, 32.409756, 24.314991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277344, 32.619041, 24.335091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294908, 0.395982, 0.869613,
		0.435103, -0.754611, 0.491170,
		0.850714, 0.523221, 0.050247,
		43.532558, 32.776005, 24.350166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103523, 32.388134, 25.023758>,  <42.937057, 32.409756, 24.314991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103523, 32.388134, 25.023758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338394, 32.679386, 24.882309>,  <43.479317, 32.854137, 24.797440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338394, 32.679386, 24.882309>,  <43.103523, 32.388134, 25.023758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338394, 32.679386, 24.882309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171755, 0.538986, 0.824618,
		0.791028, -0.423458, 0.441540,
		0.587175, 0.728133, -0.353622,
		43.514545, 32.897827, 24.776222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609676, 32.573868, 25.614540>,  <43.103523, 32.388134, 25.023758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609676, 32.573868, 25.614540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629124, 32.870827, 25.347261>,  <43.640793, 33.049000, 25.186895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629124, 32.870827, 25.347261>,  <43.609676, 32.573868, 25.614540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629124, 32.870827, 25.347261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020087, 0.668124, 0.743778,
		0.998615, -0.049585, 0.017573,
		0.048621, 0.742395, -0.668195,
		43.643711, 33.093544, 25.146803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286396, 32.970795, 25.745045>,  <43.609676, 32.573868, 25.614540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286396, 32.970795, 25.745045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995220, 33.183277, 25.571648>,  <43.820515, 33.310768, 25.467609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995220, 33.183277, 25.571648>,  <44.286396, 32.970795, 25.745045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995220, 33.183277, 25.571648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088041, 0.554597, 0.827449,
		0.679961, 0.640501, -0.356947,
		-0.727944, 0.531207, -0.433495,
		43.776836, 33.342640, 25.441599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.308968, 33.616688, 26.112223>,  <44.286396, 32.970795, 25.745045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.308968, 33.616688, 26.112223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952965, 33.652916, 25.933477>,  <43.739365, 33.674652, 25.826229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952965, 33.652916, 25.933477>,  <44.308968, 33.616688, 26.112223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952965, 33.652916, 25.933477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288780, 0.646470, 0.706174,
		0.352841, 0.757545, -0.549208,
		-0.890005, 0.090567, -0.446865,
		43.685963, 33.680084, 25.799417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051102, 34.306808, 26.310143>,  <44.308968, 33.616688, 26.112223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051102, 34.306808, 26.310143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717136, 34.131516, 26.176956>,  <43.516758, 34.026340, 26.097044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717136, 34.131516, 26.176956>,  <44.051102, 34.306808, 26.310143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717136, 34.131516, 26.176956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489871, 0.315944, 0.812530,
		-0.250877, 0.841506, -0.478465,
		-0.834917, -0.438232, -0.332967,
		43.466660, 34.000046, 26.077066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605515, 34.759220, 26.312983>,  <44.051102, 34.306808, 26.310143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605515, 34.759220, 26.312983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401169, 34.416126, 26.335991>,  <43.278561, 34.210270, 26.349796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401169, 34.416126, 26.335991>,  <43.605515, 34.759220, 26.312983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401169, 34.416126, 26.335991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526213, 0.364919, 0.768072,
		-0.679792, 0.362113, -0.637775,
		-0.510865, -0.857734, 0.057521,
		43.247910, 34.158806, 26.353247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890629, 34.905544, 26.379030>,  <43.605515, 34.759220, 26.312983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890629, 34.905544, 26.379030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898876, 34.526516, 26.506582>,  <42.903824, 34.299099, 26.583113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898876, 34.526516, 26.506582>,  <42.890629, 34.905544, 26.379030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898876, 34.526516, 26.506582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497816, 0.266870, 0.825203,
		-0.867037, -0.175755, -0.466215,
		0.020615, -0.947571, 0.318880,
		42.905060, 34.242245, 26.602245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180065, 34.711311, 26.651646>,  <42.890629, 34.905544, 26.379030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180065, 34.711311, 26.651646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414417, 34.441105, 26.830725>,  <42.555027, 34.278980, 26.938171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414417, 34.441105, 26.830725>,  <42.180065, 34.711311, 26.651646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414417, 34.441105, 26.830725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445821, 0.192673, 0.874140,
		-0.676752, -0.711730, -0.188275,
		0.585876, -0.675513, 0.447696,
		42.590179, 34.238453, 26.965034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778057, 34.267784, 26.919704>,  <42.180065, 34.711311, 26.651646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778057, 34.267784, 26.919704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115429, 34.230518, 27.131344>,  <42.317852, 34.208160, 27.258327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115429, 34.230518, 27.131344>,  <41.778057, 34.267784, 26.919704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115429, 34.230518, 27.131344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511263, 0.163342, 0.843759,
		-0.165030, -0.982161, 0.090137,
		0.843430, -0.093162, 0.529099,
		42.368458, 34.202572, 27.290073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598789, 33.820244, 27.412359>,  <41.778057, 34.267784, 26.919704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598789, 33.820244, 27.412359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912071, 34.034275, 27.539034>,  <42.100040, 34.162693, 27.615038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912071, 34.034275, 27.539034>,  <41.598789, 33.820244, 27.412359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912071, 34.034275, 27.539034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514913, 0.272678, 0.812718,
		0.348515, -0.799587, 0.489080,
		0.783200, 0.535078, 0.316686,
		42.147030, 34.194798, 27.634041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569164, 33.689758, 28.144403>,  <41.598789, 33.820244, 27.412359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569164, 33.689758, 28.144403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809700, 34.005413, 28.094337>,  <41.954021, 34.194805, 28.064297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809700, 34.005413, 28.094337>,  <41.569164, 33.689758, 28.144403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809700, 34.005413, 28.094337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328691, 0.387107, 0.861459,
		0.728258, -0.476884, 0.492161,
		0.601335, 0.789133, -0.125166,
		41.990101, 34.242153, 28.056787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808315, 33.830929, 28.777121>,  <41.569164, 33.689758, 28.144403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808315, 33.830929, 28.777121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871052, 34.179890, 28.591942>,  <41.908695, 34.389267, 28.480835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871052, 34.179890, 28.591942>,  <41.808315, 33.830929, 28.777121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871052, 34.179890, 28.591942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311324, 0.488523, 0.815121,
		0.937271, 0.016280, 0.348220,
		0.156843, 0.872399, -0.462947,
		41.918106, 34.441608, 28.453058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203701, 34.299149, 29.124508>,  <41.808315, 33.830929, 28.777121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203701, 34.299149, 29.124508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987770, 34.537800, 28.886978>,  <41.858212, 34.680988, 28.744459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987770, 34.537800, 28.886978>,  <42.203701, 34.299149, 29.124508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987770, 34.537800, 28.886978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276694, 0.540479, 0.794559,
		0.795003, 0.593230, -0.126681,
		-0.539824, 0.596625, -0.593826,
		41.825825, 34.716785, 28.708830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432838, 34.994915, 29.190372>,  <42.203701, 34.299149, 29.124508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432838, 34.994915, 29.190372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063881, 35.026997, 29.039240>,  <41.842506, 35.046246, 28.948561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063881, 35.026997, 29.039240>,  <42.432838, 34.994915, 29.190372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063881, 35.026997, 29.039240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233260, 0.664005, 0.710413,
		0.307863, 0.743413, -0.593765,
		-0.922394, 0.080208, -0.377831,
		41.787163, 35.051060, 28.925890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364929, 35.678764, 29.282429>,  <42.432838, 34.994915, 29.190372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364929, 35.678764, 29.282429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009270, 35.517765, 29.195337>,  <41.795872, 35.421165, 29.143082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009270, 35.517765, 29.195337>,  <42.364929, 35.678764, 29.282429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009270, 35.517765, 29.195337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440568, 0.624296, 0.645100,
		-0.123723, 0.669516, -0.732421,
		-0.889153, -0.402495, -0.217728,
		41.742523, 35.397018, 29.130018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949306, 36.263050, 29.302280>,  <42.364929, 35.678764, 29.282429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949306, 36.263050, 29.302280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687023, 35.961548, 29.319704>,  <41.529652, 35.780647, 29.330158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687023, 35.961548, 29.319704>,  <41.949306, 36.263050, 29.302280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687023, 35.961548, 29.319704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497086, 0.474413, 0.726524,
		-0.568288, 0.454735, -0.685759,
		-0.655709, -0.753756, 0.043561,
		41.490311, 35.735420, 29.332773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345444, 36.556831, 29.400898>,  <41.949306, 36.263050, 29.302280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345444, 36.556831, 29.400898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243851, 36.189964, 29.523733>,  <41.182896, 35.969845, 29.597435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243851, 36.189964, 29.523733>,  <41.345444, 36.556831, 29.400898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243851, 36.189964, 29.523733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692614, 0.394078, 0.604143,
		-0.675116, -0.059254, -0.735328,
		-0.253978, -0.917165, 0.307088,
		41.167656, 35.914814, 29.615860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586342, 36.557468, 29.443237>,  <41.345444, 36.556831, 29.400898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586342, 36.557468, 29.443237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732529, 36.281048, 29.692678>,  <40.820240, 36.115196, 29.842342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732529, 36.281048, 29.692678>,  <40.586342, 36.557468, 29.443237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732529, 36.281048, 29.692678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577892, 0.356746, 0.734012,
		-0.729710, -0.628630, -0.268976,
		0.365466, -0.691055, 0.623601,
		40.842167, 36.073730, 29.879759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156139, 36.416046, 29.942928>,  <40.586342, 36.557468, 29.443237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156139, 36.416046, 29.942928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442722, 36.227779, 30.148907>,  <40.614670, 36.114819, 30.272493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442722, 36.227779, 30.148907>,  <40.156139, 36.416046, 29.942928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442722, 36.227779, 30.148907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438074, 0.270935, 0.857138,
		-0.542941, -0.839684, -0.012073,
		0.716454, -0.470664, 0.514945,
		40.657658, 36.086578, 30.303391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788471, 35.975235, 30.427509>,  <40.156139, 36.416046, 29.942928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788471, 35.975235, 30.427509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164761, 36.039619, 30.546925>,  <40.390533, 36.078251, 30.618574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164761, 36.039619, 30.546925>,  <39.788471, 35.975235, 30.427509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164761, 36.039619, 30.546925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320125, 0.130628, 0.938326,
		0.112016, -0.978281, 0.174406,
		0.940730, 0.160939, 0.298540,
		40.446980, 36.087906, 30.636486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902813, 35.601593, 31.129776>,  <39.788471, 35.975235, 30.427509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902813, 35.601593, 31.129776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226017, 35.837254, 31.130999>,  <40.419941, 35.978649, 31.131731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226017, 35.837254, 31.130999>,  <39.902813, 35.601593, 31.129776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226017, 35.837254, 31.130999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353260, 0.480324, 0.802805,
		0.471490, -0.649771, 0.596234,
		0.808025, 0.589140, 0.003070,
		40.468422, 36.014000, 31.131916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110886, 35.523628, 31.798603>,  <39.902813, 35.601593, 31.129776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110886, 35.523628, 31.798603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278175, 35.862564, 31.667696>,  <40.378548, 36.065926, 31.589151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278175, 35.862564, 31.667696>,  <40.110886, 35.523628, 31.798603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278175, 35.862564, 31.667696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362399, 0.486026, 0.795264,
		0.832920, -0.213996, 0.510343,
		0.418224, 0.847339, -0.327269,
		40.403641, 36.116764, 31.569515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662159, 35.761913, 32.258205>,  <40.110886, 35.523628, 31.798603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662159, 35.761913, 32.258205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502052, 36.063469, 32.049809>,  <40.405991, 36.244404, 31.924768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502052, 36.063469, 32.049809>,  <40.662159, 35.761913, 32.258205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502052, 36.063469, 32.049809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277358, 0.442200, 0.852955,
		0.873419, 0.485911, 0.032100,
		-0.400265, 0.753890, -0.520997,
		40.381973, 36.289635, 31.893509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019505, 36.306755, 32.646767>,  <40.662159, 35.761913, 32.258205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019505, 36.306755, 32.646767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694843, 36.439308, 32.454350>,  <40.500046, 36.518841, 32.338902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694843, 36.439308, 32.454350>,  <41.019505, 36.306755, 32.646767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694843, 36.439308, 32.454350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299100, 0.471586, 0.829546,
		0.501751, 0.817184, -0.283647,
		-0.811656, 0.331387, -0.481039,
		40.451347, 36.538723, 32.310040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908962, 36.965130, 32.980820>,  <41.019505, 36.306755, 32.646767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908962, 36.965130, 32.980820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574673, 36.927696, 32.764374>,  <40.374100, 36.905235, 32.634506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574673, 36.927696, 32.764374>,  <40.908962, 36.965130, 32.980820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574673, 36.927696, 32.764374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524448, 0.428227, 0.735918,
		0.162849, 0.898812, -0.406961,
		-0.835724, -0.093586, -0.541117,
		40.323956, 36.899620, 32.602039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616344, 37.619827, 32.859547>,  <40.908962, 36.965130, 32.980820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616344, 37.619827, 32.859547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325676, 37.345783, 32.839241>,  <40.151276, 37.181358, 32.827057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325676, 37.345783, 32.839241>,  <40.616344, 37.619827, 32.859547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325676, 37.345783, 32.839241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551616, 0.537835, 0.637537,
		-0.409478, 0.491283, -0.768745,
		-0.726669, -0.685109, -0.050768,
		40.107674, 37.140251, 32.824009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958977, 38.000317, 33.032291>,  <40.616344, 37.619827, 32.859547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958977, 38.000317, 33.032291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814060, 37.631283, 33.085335>,  <39.727112, 37.409863, 33.117161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814060, 37.631283, 33.085335>,  <39.958977, 38.000317, 33.032291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814060, 37.631283, 33.085335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747313, 0.372547, 0.550211,
		-0.557017, 0.100240, -0.824430,
		-0.362292, -0.922584, 0.132604,
		39.705372, 37.354507, 33.125114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224777, 38.076767, 33.032734>,  <39.958977, 38.000317, 33.032291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224777, 38.076767, 33.032734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290203, 37.732502, 33.225609>,  <39.329460, 37.525944, 33.341335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290203, 37.732502, 33.225609>,  <39.224777, 38.076767, 33.032734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290203, 37.732502, 33.225609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696655, 0.245304, 0.674164,
		-0.698511, -0.446190, -0.559461,
		0.163567, -0.860663, 0.482188,
		39.339272, 37.474304, 33.370266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600235, 37.739651, 33.178764>,  <39.224777, 38.076767, 33.032734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600235, 37.739651, 33.178764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860603, 37.605309, 33.451088>,  <39.016823, 37.524704, 33.614483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860603, 37.605309, 33.451088>,  <38.600235, 37.739651, 33.178764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860603, 37.605309, 33.451088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671228, 0.164307, 0.722811,
		-0.354621, -0.927473, -0.118483,
		0.650920, -0.335853, 0.680812,
		39.055878, 37.504551, 33.655331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085037, 37.457119, 33.679573>,  <38.600235, 37.739651, 33.178764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085037, 37.457119, 33.679573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427349, 37.499596, 33.882103>,  <38.632736, 37.525082, 34.003620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427349, 37.499596, 33.882103>,  <38.085037, 37.457119, 33.679573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427349, 37.499596, 33.882103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515294, 0.087926, 0.852491,
		0.045998, -0.990452, 0.129959,
		0.855778, 0.106180, 0.506329,
		38.684082, 37.531452, 34.034000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980965, 37.094639, 34.289452>,  <38.085037, 37.457119, 33.679573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980965, 37.094639, 34.289452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297924, 37.333294, 34.340256>,  <38.488098, 37.476486, 34.370739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297924, 37.333294, 34.340256>,  <37.980965, 37.094639, 34.289452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297924, 37.333294, 34.340256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438397, 0.412219, 0.798676,
		0.424175, -0.688541, 0.588206,
		0.792391, 0.596647, 0.127001,
		38.535641, 37.512287, 34.378357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990181, 37.260269, 35.104546>,  <37.980965, 37.094639, 34.289452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990181, 37.260269, 35.104546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244274, 37.522865, 34.941818>,  <38.396732, 37.680424, 34.844181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244274, 37.522865, 34.941818>,  <37.990181, 37.260269, 35.104546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244274, 37.522865, 34.941818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330123, 0.707008, 0.625427,
		0.698199, -0.263003, 0.665844,
		0.635246, 0.656483, -0.406808,
		38.434845, 37.719810, 34.819771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447880, 37.563553, 35.615547>,  <37.990181, 37.260269, 35.104546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447880, 37.563553, 35.615547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427639, 37.844219, 35.331264>,  <38.415493, 38.012619, 35.160694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427639, 37.844219, 35.331264>,  <38.447880, 37.563553, 35.615547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427639, 37.844219, 35.331264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396373, 0.639064, 0.659155,
		0.916694, 0.315063, 0.245779,
		-0.050607, 0.701664, -0.710709,
		38.412457, 38.054718, 35.118053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836109, 38.053860, 35.946507>,  <38.447880, 37.563553, 35.615547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836109, 38.053860, 35.946507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990974, 37.973129, 36.306366>,  <39.083893, 37.924690, 36.522282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990974, 37.973129, 36.306366>,  <38.836109, 38.053860, 35.946507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990974, 37.973129, 36.306366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605114, -0.680584, -0.413089,
		0.695658, 0.704325, -0.141372,
		0.387165, -0.201823, 0.899651,
		39.107124, 37.912582, 36.576260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630550, 38.029648, 35.868046>,  <38.836109, 38.053860, 35.946507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630550, 38.029648, 35.868046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454880, 37.804943, 36.148487>,  <39.349480, 37.670120, 36.316753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454880, 37.804943, 36.148487>,  <39.630550, 38.029648, 35.868046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454880, 37.804943, 36.148487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446163, -0.813731, -0.372533,
		0.779786, 0.149200, 0.608008,
		-0.439173, -0.561767, 0.701103,
		39.323128, 37.636414, 36.358818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141502, 37.714554, 36.087666>,  <39.630550, 38.029648, 35.868046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141502, 37.714554, 36.087666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833527, 37.484501, 36.198242>,  <39.648743, 37.346470, 36.264587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833527, 37.484501, 36.198242>,  <40.141502, 37.714554, 36.087666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833527, 37.484501, 36.198242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562148, -0.816327, -0.132665,
		0.301963, 0.053254, 0.951831,
		-0.769940, -0.575130, 0.276437,
		39.602543, 37.311962, 36.281174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441109, 37.171764, 36.443237>,  <40.141502, 37.714554, 36.087666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441109, 37.171764, 36.443237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086300, 37.020489, 36.337284>,  <39.873413, 36.929722, 36.273712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086300, 37.020489, 36.337284>,  <40.441109, 37.171764, 36.443237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086300, 37.020489, 36.337284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431195, -0.883647, -0.182314,
		-0.165115, -0.275933, 0.946888,
		-0.887022, -0.378191, -0.264885,
		39.820194, 36.907032, 36.257820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445847, 36.464214, 36.754494>,  <40.441109, 37.171764, 36.443237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445847, 36.464214, 36.754494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149502, 36.420570, 36.489399>,  <39.971695, 36.394386, 36.330341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149502, 36.420570, 36.489399>,  <40.445847, 36.464214, 36.754494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149502, 36.420570, 36.489399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347352, -0.906761, -0.239023,
		-0.574862, -0.407286, 0.709685,
		-0.740865, -0.109106, -0.662733,
		39.927242, 36.387840, 36.290581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219051, 35.797256, 36.919422>,  <40.445847, 36.464214, 36.754494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219051, 35.797256, 36.919422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119205, 35.918560, 36.551567>,  <40.059299, 35.991341, 36.330856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119205, 35.918560, 36.551567>,  <40.219051, 35.797256, 36.919422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119205, 35.918560, 36.551567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459164, -0.799075, -0.388133,
		-0.852562, -0.519146, 0.060213,
		-0.249613, 0.303260, -0.919635,
		40.044323, 36.009537, 36.275677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135590, 35.194530, 36.606331>,  <40.219051, 35.797256, 36.919422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135590, 35.194530, 36.606331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134270, 35.434731, 36.286484>,  <40.133480, 35.578850, 36.094574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134270, 35.434731, 36.286484>,  <40.135590, 35.194530, 36.606331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134270, 35.434731, 36.286484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252301, -0.773256, -0.581738,
		-0.967643, -0.203662, -0.148958,
		-0.003296, 0.600497, -0.799620,
		40.133282, 35.614880, 36.046597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694859, 34.965366, 36.079174>,  <40.135590, 35.194530, 36.606331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694859, 34.965366, 36.079174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960892, 35.195934, 35.889263>,  <40.120510, 35.334274, 35.775318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960892, 35.195934, 35.889263>,  <39.694859, 34.965366, 36.079174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960892, 35.195934, 35.889263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121274, -0.710700, -0.692963,
		-0.736859, 0.403297, -0.542577,
		0.665080, 0.576417, -0.474776,
		40.160416, 35.368858, 35.746830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669704, 34.629143, 35.418236>,  <39.694859, 34.965366, 36.079174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669704, 34.629143, 35.418236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995441, 34.861233, 35.412708>,  <40.190884, 35.000484, 35.409389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995441, 34.861233, 35.412708>,  <39.669704, 34.629143, 35.418236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995441, 34.861233, 35.412708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395389, -0.572049, -0.718629,
		-0.424871, 0.579745, -0.695256,
		0.814342, 0.580221, -0.013823,
		40.239742, 35.035297, 35.408562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902702, 34.544704, 34.784683>,  <39.669704, 34.629143, 35.418236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902702, 34.544704, 34.784683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223785, 34.739471, 34.922417>,  <40.416435, 34.856331, 35.005054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223785, 34.739471, 34.922417>,  <39.902702, 34.544704, 34.784683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223785, 34.739471, 34.922417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553212, -0.392318, -0.734876,
		-0.222738, 0.780382, -0.584288,
		0.802711, 0.486920, 0.344332,
		40.464600, 34.885548, 35.025715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147160, 34.816139, 34.209286>,  <39.902702, 34.544704, 34.784683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147160, 34.816139, 34.209286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452080, 34.809883, 34.468098>,  <40.635033, 34.806129, 34.623386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452080, 34.809883, 34.468098>,  <40.147160, 34.816139, 34.209286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452080, 34.809883, 34.468098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628996, -0.217649, -0.746319,
		0.152498, 0.975902, -0.156078,
		0.762305, -0.015640, 0.647029,
		40.680771, 34.805191, 34.662205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675774, 35.325363, 34.027935>,  <40.147160, 34.816139, 34.209286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675774, 35.325363, 34.027935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871082, 35.044052, 34.234619>,  <40.988266, 34.875267, 34.358631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871082, 35.044052, 34.234619>,  <40.675774, 35.325363, 34.027935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871082, 35.044052, 34.234619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545270, -0.216436, -0.809837,
		0.681374, 0.677169, 0.277796,
		0.488272, -0.703276, 0.516714,
		41.017563, 34.833069, 34.389633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359325, 35.412979, 33.834343>,  <40.675774, 35.325363, 34.027935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359325, 35.412979, 33.834343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354301, 35.052101, 34.006802>,  <41.351288, 34.835575, 34.110275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354301, 35.052101, 34.006802>,  <41.359325, 35.412979, 33.834343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354301, 35.052101, 34.006802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570128, -0.360685, -0.738147,
		0.821460, 0.236536, 0.518897,
		-0.012560, -0.902196, 0.431144,
		41.350533, 34.781441, 34.136147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041435, 35.191971, 33.851639>,  <41.359325, 35.412979, 33.834343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041435, 35.191971, 33.851639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812050, 34.864281, 33.850658>,  <41.674419, 34.667664, 33.850071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812050, 34.864281, 33.850658>,  <42.041435, 35.191971, 33.851639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812050, 34.864281, 33.850658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538141, -0.374440, -0.755115,
		0.617696, -0.434346, 0.655588,
		-0.573460, -0.819230, -0.002449,
		41.640011, 34.618511, 33.849922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554874, 34.620296, 33.786804>,  <42.041435, 35.191971, 33.851639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554874, 34.620296, 33.786804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202412, 34.479164, 33.660900>,  <41.990932, 34.394485, 33.585358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202412, 34.479164, 33.660900>,  <42.554874, 34.620296, 33.786804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202412, 34.479164, 33.660900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464010, -0.517337, -0.719067,
		0.090873, -0.779662, 0.619572,
		-0.881156, -0.352831, -0.314760,
		41.938065, 34.373314, 33.566471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628677, 33.914536, 33.656521>,  <42.554874, 34.620296, 33.786804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628677, 33.914536, 33.656521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313923, 33.997231, 33.423943>,  <42.125072, 34.046848, 33.284397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313923, 33.997231, 33.423943>,  <42.628677, 33.914536, 33.656521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313923, 33.997231, 33.423943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435883, -0.480771, -0.760832,
		-0.436829, -0.852128, 0.288201,
		-0.786884, 0.206731, -0.581443,
		42.077858, 34.059250, 33.249508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646355, 33.315350, 33.161003>,  <42.628677, 33.914536, 33.656521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646355, 33.315350, 33.161003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388622, 33.572918, 32.995979>,  <42.233982, 33.727459, 32.896965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388622, 33.572918, 32.995979>,  <42.646355, 33.315350, 33.161003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388622, 33.572918, 32.995979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218037, -0.362395, -0.906162,
		-0.733003, -0.673823, 0.093105,
		-0.644333, 0.643920, -0.412555,
		42.195324, 33.766094, 32.872211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101696, 33.015907, 32.652481>,  <42.646355, 33.315350, 33.161003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101696, 33.015907, 32.652481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159367, 33.391064, 32.526257>,  <42.193970, 33.616158, 32.450523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159367, 33.391064, 32.526257>,  <42.101696, 33.015907, 32.652481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159367, 33.391064, 32.526257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072702, -0.328072, -0.941851,
		-0.986878, 0.112848, -0.115486,
		0.144174, 0.937888, -0.315563,
		42.202618, 33.672432, 32.431587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922428, 32.967613, 32.030109>,  <42.101696, 33.015907, 32.652481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922428, 32.967613, 32.030109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068684, 33.339714, 32.017830>,  <42.156437, 33.562973, 32.010460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068684, 33.339714, 32.017830>,  <41.922428, 32.967613, 32.030109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068684, 33.339714, 32.017830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343104, -0.165373, -0.924625,
		-0.865211, 0.327541, -0.379639,
		0.365635, 0.930252, -0.030702,
		42.178375, 33.618790, 32.008617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714745, 33.264393, 31.414118>,  <41.922428, 32.967613, 32.030109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714745, 33.264393, 31.414118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033855, 33.485409, 31.510656>,  <42.225323, 33.618019, 31.568581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033855, 33.485409, 31.510656>,  <41.714745, 33.264393, 31.414118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033855, 33.485409, 31.510656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353762, -0.104798, -0.929446,
		-0.488262, 0.826873, -0.279073,
		0.797780, 0.552539, 0.241347,
		42.273190, 33.651169, 31.583061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871685, 33.703609, 30.769360>,  <41.714745, 33.264393, 31.414118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871685, 33.703609, 30.769360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201122, 33.726009, 30.995123>,  <42.398785, 33.739449, 31.130581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201122, 33.726009, 30.995123>,  <41.871685, 33.703609, 30.769360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201122, 33.726009, 30.995123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564005, 0.024323, -0.825413,
		-0.059955, 0.998134, -0.011554,
		0.823592, 0.056004, 0.564411,
		42.448200, 33.742809, 31.164446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222176, 34.257858, 30.482037>,  <41.871685, 33.703609, 30.769360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222176, 34.257858, 30.482037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486794, 34.033051, 30.680628>,  <42.645565, 33.898167, 30.799782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486794, 34.033051, 30.680628>,  <42.222176, 34.257858, 30.482037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486794, 34.033051, 30.680628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654258, 0.109020, -0.748372,
		0.366475, 0.819907, 0.439829,
		0.661546, -0.562021, 0.496477,
		42.685257, 33.864445, 30.829571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909378, 34.595982, 30.353226>,  <42.222176, 34.257858, 30.482037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909378, 34.595982, 30.353226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929962, 34.208721, 30.451231>,  <42.942314, 33.976364, 30.510035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929962, 34.208721, 30.451231>,  <42.909378, 34.595982, 30.353226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929962, 34.208721, 30.451231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460623, -0.194672, -0.865985,
		0.886103, 0.157423, 0.435935,
		0.051462, -0.968153, 0.245012,
		42.945400, 33.918274, 30.524734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537193, 34.359707, 29.956987>,  <42.909378, 34.595982, 30.353226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537193, 34.359707, 29.956987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353420, 34.021389, 30.065468>,  <43.243156, 33.818398, 30.130556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353420, 34.021389, 30.065468>,  <43.537193, 34.359707, 29.956987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353420, 34.021389, 30.065468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424035, -0.477151, -0.769754,
		0.780462, -0.238647, 0.577865,
		-0.459428, -0.845798, 0.271203,
		43.215591, 33.767651, 30.146830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.077690, 33.805977, 29.990511>,  <43.537193, 34.359707, 29.956987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.077690, 33.805977, 29.990511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707581, 33.675198, 29.913599>,  <43.485516, 33.596729, 29.867453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707581, 33.675198, 29.913599>,  <44.077690, 33.805977, 29.990511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707581, 33.675198, 29.913599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349637, -0.538694, -0.766526,
		0.147035, -0.776475, 0.612754,
		-0.925275, -0.326948, -0.192278,
		43.429996, 33.577114, 29.855915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120129, 33.121708, 30.040459>,  <44.077690, 33.805977, 29.990511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120129, 33.121708, 30.040459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799942, 33.203957, 29.815260>,  <43.607830, 33.253304, 29.680140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799942, 33.203957, 29.815260>,  <44.120129, 33.121708, 30.040459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799942, 33.203957, 29.815260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267667, -0.717811, -0.642729,
		-0.536283, -0.665183, 0.519550,
		-0.800471, 0.205618, -0.562998,
		43.559799, 33.265644, 29.646360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.815376, 32.436726, 29.861317>,  <44.120129, 33.121708, 30.040459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.815376, 32.436726, 29.861317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.664932, 32.690228, 29.590939>,  <43.574665, 32.842327, 29.428711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.664932, 32.690228, 29.590939>,  <43.815376, 32.436726, 29.861317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.664932, 32.690228, 29.590939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043695, -0.716566, -0.696149,
		-0.925545, -0.291363, 0.241814,
		-0.376108, 0.633751, -0.675945,
		43.552101, 32.880352, 29.388155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251228, 32.133190, 29.610434>,  <43.815376, 32.436726, 29.861317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251228, 32.133190, 29.610434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.384853, 32.387897, 29.332462>,  <43.465027, 32.540722, 29.165680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.384853, 32.387897, 29.332462>,  <43.251228, 32.133190, 29.610434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384853, 32.387897, 29.332462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088644, -0.755242, -0.649425,
		-0.938375, 0.155344, -0.308741,
		0.334058, 0.636772, -0.694929,
		43.485069, 32.578930, 29.123983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787140, 32.002525, 28.992670>,  <43.251228, 32.133190, 29.610434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787140, 32.002525, 28.992670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108845, 32.190769, 28.847517>,  <43.301868, 32.303715, 28.760426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108845, 32.190769, 28.847517>,  <42.787140, 32.002525, 28.992670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108845, 32.190769, 28.847517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044510, -0.561213, -0.826474,
		-0.592604, 0.680854, -0.430416,
		0.804264, 0.470614, -0.362881,
		43.350124, 32.331955, 28.738653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582863, 32.249779, 28.331722>,  <42.787140, 32.002525, 28.992670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582863, 32.249779, 28.331722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981686, 32.223415, 28.316084>,  <43.220982, 32.207596, 28.306700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981686, 32.223415, 28.316084>,  <42.582863, 32.249779, 28.331722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.981686, 32.223415, 28.316084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062384, -0.401791, -0.913604,
		0.044506, 0.913356, -0.404721,
		0.997059, -0.065909, -0.039097,
		43.280804, 32.203644, 28.304356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723789, 32.364906, 27.634260>,  <42.582863, 32.249779, 28.331722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723789, 32.364906, 27.634260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070599, 32.200508, 27.746941>,  <43.278683, 32.101871, 27.814548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070599, 32.200508, 27.746941>,  <42.723789, 32.364906, 27.634260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070599, 32.200508, 27.746941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116461, -0.382547, -0.916567,
		0.484466, 0.827492, -0.283812,
		0.867023, -0.410993, 0.281701,
		43.330704, 32.077209, 27.831451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187172, 32.354259, 27.070471>,  <42.723789, 32.364906, 27.634260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187172, 32.354259, 27.070471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393063, 32.106567, 27.307657>,  <43.516598, 31.957952, 27.449968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393063, 32.106567, 27.307657>,  <43.187172, 32.354259, 27.070471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393063, 32.106567, 27.307657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230647, -0.566111, -0.791404,
		0.825745, 0.544125, -0.148572,
		0.514731, -0.619230, 0.592964,
		43.547482, 31.920799, 27.485546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.795097, 32.205959, 26.682463>,  <43.187172, 32.354259, 27.070471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.795097, 32.205959, 26.682463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754055, 31.908285, 26.946482>,  <43.729431, 31.729681, 27.104893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754055, 31.908285, 26.946482>,  <43.795097, 32.205959, 26.682463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754055, 31.908285, 26.946482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294757, -0.656496, -0.694357,
		0.950047, 0.123308, 0.286714,
		-0.102607, -0.744183, 0.660048,
		43.723274, 31.685030, 27.144497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409756, 31.867476, 26.660816>,  <43.795097, 32.205959, 26.682463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409756, 31.867476, 26.660816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119202, 31.623978, 26.788437>,  <43.944870, 31.477879, 26.865009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119202, 31.623978, 26.788437>,  <44.409756, 31.867476, 26.660816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119202, 31.623978, 26.788437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354646, -0.729631, -0.584692,
		0.588719, -0.311561, 0.745882,
		-0.726386, -0.608743, 0.319054,
		43.901287, 31.441355, 26.884153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.771152, 31.235304, 26.800018>,  <44.409756, 31.867476, 26.660816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.771152, 31.235304, 26.800018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380203, 31.164852, 26.753170>,  <44.145634, 31.122581, 26.725061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380203, 31.164852, 26.753170>,  <44.771152, 31.235304, 26.800018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380203, 31.164852, 26.753170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211401, -0.795227, -0.568264,
		0.006950, -0.580166, 0.814468,
		-0.977375, -0.176129, -0.117120,
		44.086990, 31.112013, 26.718035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707436, 30.465837, 26.841946>,  <44.771152, 31.235304, 26.800018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707436, 30.465837, 26.841946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381676, 30.586771, 26.643818>,  <44.186218, 30.659332, 26.524940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381676, 30.586771, 26.643818>,  <44.707436, 30.465837, 26.841946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381676, 30.586771, 26.643818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144986, -0.720478, -0.678152,
		-0.561897, -0.624103, 0.542924,
		-0.814402, 0.302335, -0.495321,
		44.137356, 30.677471, 26.495222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470100, 29.860239, 26.640270>,  <44.707436, 30.465837, 26.841946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470100, 29.860239, 26.640270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245941, 30.096174, 26.407703>,  <44.111446, 30.237736, 26.268164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245941, 30.096174, 26.407703>,  <44.470100, 29.860239, 26.640270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245941, 30.096174, 26.407703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044214, -0.722309, -0.690155,
		-0.827043, -0.361054, 0.430859,
		-0.560397, 0.589838, -0.581417,
		44.077824, 30.273127, 26.233278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851097, 29.398008, 26.279579>,  <44.470100, 29.860239, 26.640270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851097, 29.398008, 26.279579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876572, 29.731459, 26.060122>,  <43.891857, 29.931530, 25.928448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876572, 29.731459, 26.060122>,  <43.851097, 29.398008, 26.279579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876572, 29.731459, 26.060122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053777, -0.546093, -0.835997,
		-0.996520, 0.082750, 0.010049,
		0.063691, 0.833628, -0.548642,
		43.895679, 29.981546, 25.895529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231483, 29.468157, 25.822115>,  <43.851097, 29.398008, 26.279579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231483, 29.468157, 25.822115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527325, 29.669851, 25.643799>,  <43.704830, 29.790867, 25.536810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527325, 29.669851, 25.643799>,  <43.231483, 29.468157, 25.822115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527325, 29.669851, 25.643799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184880, -0.484663, -0.854939,
		-0.647148, 0.714737, -0.265237,
		0.739607, 0.504235, -0.445789,
		43.749207, 29.821121, 25.510061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542995, 29.334984, 25.405764>,  <43.231483, 29.468157, 25.822115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542995, 29.334984, 25.405764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391029, 28.969349, 25.462479>,  <42.299850, 28.749968, 25.496508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391029, 28.969349, 25.462479>,  <42.542995, 29.334984, 25.405764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391029, 28.969349, 25.462479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638000, 0.369927, 0.675359,
		-0.669789, 0.166122, -0.723731,
		-0.379919, -0.914089, 0.141787,
		42.277054, 28.695122, 25.505014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794014, 29.379515, 25.280386>,  <42.542995, 29.334984, 25.405764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794014, 29.379515, 25.280386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870491, 29.057959, 25.505671>,  <41.916378, 28.865025, 25.640842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870491, 29.057959, 25.505671>,  <41.794014, 29.379515, 25.280386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870491, 29.057959, 25.505671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590001, 0.364449, 0.720469,
		-0.784440, -0.470042, -0.404617,
		0.191189, -0.803889, 0.563213,
		41.927849, 28.816792, 25.674635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170677, 29.147171, 25.632664>,  <41.794014, 29.379515, 25.280386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170677, 29.147171, 25.632664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443626, 28.957014, 25.854786>,  <41.607395, 28.842920, 25.988058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443626, 28.957014, 25.854786>,  <41.170677, 29.147171, 25.632664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443626, 28.957014, 25.854786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519089, 0.219736, 0.825992,
		-0.514692, -0.851890, -0.096829,
		0.682377, -0.475394, 0.555303,
		41.648338, 28.814396, 26.021378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796288, 28.723282, 26.133411>,  <41.170677, 29.147171, 25.632664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796288, 28.723282, 26.133411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166588, 28.791927, 26.268190>,  <41.388767, 28.833115, 26.349058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166588, 28.791927, 26.268190>,  <40.796288, 28.723282, 26.133411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166588, 28.791927, 26.268190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360316, 0.130064, 0.923718,
		0.114668, -0.976546, 0.182232,
		0.925755, 0.171582, 0.336951,
		41.444313, 28.843412, 26.369274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834141, 28.258520, 26.752789>,  <40.796288, 28.723282, 26.133411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834141, 28.258520, 26.752789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126472, 28.528326, 26.794569>,  <41.301872, 28.690210, 26.819637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126472, 28.528326, 26.794569>,  <40.834141, 28.258520, 26.752789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126472, 28.528326, 26.794569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368900, 0.261588, 0.891900,
		0.574278, -0.690361, 0.440006,
		0.730833, 0.674517, 0.104450,
		41.345722, 28.730680, 26.825905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872162, 28.349482, 27.450151>,  <40.834141, 28.258520, 26.752789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872162, 28.349482, 27.450151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079315, 28.666241, 27.320726>,  <41.203609, 28.856297, 27.243071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079315, 28.666241, 27.320726>,  <40.872162, 28.349482, 27.450151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079315, 28.666241, 27.320726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327309, 0.532887, 0.780321,
		0.790357, -0.298211, 0.535169,
		0.517885, 0.791898, -0.323564,
		41.234680, 28.903811, 27.223658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254700, 28.632280, 27.952085>,  <40.872162, 28.349482, 27.450151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254700, 28.632280, 27.952085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225857, 28.947729, 27.707830>,  <41.208549, 29.136997, 27.561277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225857, 28.947729, 27.707830>,  <41.254700, 28.632280, 27.952085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225857, 28.947729, 27.707830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136224, 0.598707, 0.789299,
		0.988050, 0.140100, 0.064257,
		-0.072110, 0.788621, -0.610637,
		41.204224, 29.184315, 27.524639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620220, 29.004934, 28.250549>,  <41.254700, 28.632280, 27.952085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620220, 29.004934, 28.250549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381557, 29.229763, 28.021437>,  <41.238361, 29.364660, 27.883970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381557, 29.229763, 28.021437>,  <41.620220, 29.004934, 28.250549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381557, 29.229763, 28.021437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214343, 0.576198, 0.788703,
		0.773342, 0.593356, -0.223317,
		-0.596657, 0.562071, -0.572780,
		41.202560, 29.398384, 27.849604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831551, 29.754812, 28.255905>,  <41.620220, 29.004934, 28.250549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831551, 29.754812, 28.255905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440609, 29.743536, 28.172020>,  <41.206043, 29.736771, 28.121689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440609, 29.743536, 28.172020>,  <41.831551, 29.754812, 28.255905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440609, 29.743536, 28.172020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157855, 0.757142, 0.633891,
		0.140911, 0.652642, -0.744448,
		-0.977356, -0.028193, -0.209712,
		41.147404, 29.735079, 28.109106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738808, 30.431694, 28.253925>,  <41.831551, 29.754812, 28.255905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738808, 30.431694, 28.253925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392723, 30.238155, 28.306538>,  <41.185070, 30.122032, 28.338106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392723, 30.238155, 28.306538>,  <41.738808, 30.431694, 28.253925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392723, 30.238155, 28.306538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331527, 0.748842, 0.573869,
		-0.376160, 0.452912, -0.808315,
		-0.865213, -0.483845, 0.131532,
		41.133160, 30.093002, 28.345997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168777, 30.873550, 28.020803>,  <41.738808, 30.431694, 28.253925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168777, 30.873550, 28.020803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986740, 30.624691, 28.275620>,  <40.877518, 30.475376, 28.428509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986740, 30.624691, 28.275620>,  <41.168777, 30.873550, 28.020803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986740, 30.624691, 28.275620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180051, 0.764937, 0.618428,
		-0.872049, 0.166745, -0.460139,
		-0.455097, -0.622148, 0.637040,
		40.850212, 30.438047, 28.466732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622002, 31.266315, 28.243967>,  <41.168777, 30.873550, 28.020803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622002, 31.266315, 28.243967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666237, 30.971390, 28.510542>,  <40.692780, 30.794436, 28.670486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666237, 30.971390, 28.510542>,  <40.622002, 31.266315, 28.243967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666237, 30.971390, 28.510542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216445, 0.636590, 0.740206,
		-0.970011, -0.226105, -0.089189,
		0.110588, -0.737313, 0.666439,
		40.699413, 30.750196, 28.710474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086868, 31.325304, 28.711548>,  <40.622002, 31.266315, 28.243967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086868, 31.325304, 28.711548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332550, 31.084829, 28.916029>,  <40.479961, 30.940544, 29.038717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332550, 31.084829, 28.916029>,  <40.086868, 31.325304, 28.711548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332550, 31.084829, 28.916029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334944, 0.387946, 0.858668,
		-0.714537, -0.698623, 0.036916,
		0.614206, -0.601185, 0.511202,
		40.516811, 30.904474, 29.069389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655762, 31.057428, 29.373383>,  <40.086868, 31.325304, 28.711548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655762, 31.057428, 29.373383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043976, 31.019091, 29.461821>,  <40.276905, 30.996088, 29.514883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043976, 31.019091, 29.461821>,  <39.655762, 31.057428, 29.373383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043976, 31.019091, 29.461821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184298, 0.295907, 0.937269,
		-0.155255, -0.950396, 0.269524,
		0.970531, -0.095843, 0.221097,
		40.335136, 30.990337, 29.528151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606945, 30.824627, 30.095871>,  <39.655762, 31.057428, 29.373383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606945, 30.824627, 30.095871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968388, 30.985529, 30.036964>,  <40.185253, 31.082069, 30.001619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968388, 30.985529, 30.036964>,  <39.606945, 30.824627, 30.095871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968388, 30.985529, 30.036964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079220, 0.494784, 0.865397,
		0.420973, -0.770313, 0.478957,
		0.903607, 0.402252, -0.147266,
		40.239468, 31.106205, 29.992785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928577, 30.746492, 30.723690>,  <39.606945, 30.824627, 30.095871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928577, 30.746492, 30.723690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172821, 31.007320, 30.543930>,  <40.319366, 31.163816, 30.436073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172821, 31.007320, 30.543930>,  <39.928577, 30.746492, 30.723690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172821, 31.007320, 30.543930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069005, 0.609124, 0.790067,
		0.788920, -0.451411, 0.416932,
		0.610609, 0.652070, -0.449401,
		40.356003, 31.202942, 30.409109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490444, 30.795307, 31.137419>,  <39.928577, 30.746492, 30.723690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490444, 30.795307, 31.137419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477837, 31.136122, 30.928404>,  <40.470272, 31.340611, 30.802996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477837, 31.136122, 30.928404>,  <40.490444, 30.795307, 31.137419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477837, 31.136122, 30.928404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048762, 0.523485, 0.850639,
		0.998313, 0.001329, -0.058045,
		-0.031516, 0.852034, -0.522537,
		40.468380, 31.391731, 30.771643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101128, 31.206659, 31.333368>,  <40.490444, 30.795307, 31.137419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101128, 31.206659, 31.333368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818855, 31.436163, 31.167082>,  <40.649494, 31.573866, 31.067310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818855, 31.436163, 31.167082>,  <41.101128, 31.206659, 31.333368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818855, 31.436163, 31.167082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000655, 0.587254, 0.809402,
		0.708533, 0.570905, -0.414788,
		-0.705678, 0.573760, -0.415715,
		40.607151, 31.608292, 31.042368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390965, 31.834904, 31.380360>,  <41.101128, 31.206659, 31.333368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390965, 31.834904, 31.380360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993889, 31.879541, 31.361961>,  <40.755642, 31.906324, 31.350922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993889, 31.879541, 31.361961>,  <41.390965, 31.834904, 31.380360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993889, 31.879541, 31.361961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033549, 0.621149, 0.782974,
		0.115947, 0.775706, -0.620352,
		-0.992689, 0.111596, -0.045996,
		40.696083, 31.913019, 31.348162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279911, 32.495155, 31.637686>,  <41.390965, 31.834904, 31.380360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279911, 32.495155, 31.637686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909573, 32.345207, 31.656803>,  <40.687370, 32.255238, 31.668274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909573, 32.345207, 31.656803>,  <41.279911, 32.495155, 31.637686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909573, 32.345207, 31.656803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100922, 0.367140, 0.924674,
		-0.364182, 0.851281, -0.377747,
		-0.925844, -0.374872, 0.047793,
		40.631821, 32.232746, 31.671141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951004, 33.107906, 31.798933>,  <41.279911, 32.495155, 31.637686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951004, 33.107906, 31.798933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738857, 32.782001, 31.892626>,  <40.611568, 32.586456, 31.948841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738857, 32.782001, 31.892626>,  <40.951004, 33.107906, 31.798933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738857, 32.782001, 31.892626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014118, 0.267765, 0.963381,
		-0.847649, 0.514255, -0.130512,
		-0.530370, -0.814766, 0.234231,
		40.579746, 32.537571, 31.962894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589382, 33.371731, 32.306847>,  <40.951004, 33.107906, 31.798933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589382, 33.371731, 32.306847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573799, 32.973679, 32.343067>,  <40.564449, 32.734848, 32.364799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573799, 32.973679, 32.343067>,  <40.589382, 33.371731, 32.306847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573799, 32.973679, 32.343067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163905, 0.083025, 0.982976,
		-0.985707, 0.053138, 0.159872,
		-0.038960, -0.995130, 0.090548,
		40.562111, 32.675140, 32.370232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077881, 33.188721, 32.854198>,  <40.589382, 33.371731, 32.306847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077881, 33.188721, 32.854198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339859, 32.887474, 32.829334>,  <40.497047, 32.706726, 32.814415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339859, 32.887474, 32.829334>,  <40.077881, 33.188721, 32.854198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339859, 32.887474, 32.829334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091948, -0.002228, 0.995761,
		-0.750062, -0.657884, 0.067788,
		0.654944, -0.753116, -0.062162,
		40.536343, 32.661541, 32.810684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787849, 32.731270, 33.375175>,  <40.077881, 33.188721, 32.854198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787849, 32.731270, 33.375175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160603, 32.606003, 33.301929>,  <40.384254, 32.530842, 33.257984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160603, 32.606003, 33.301929>,  <39.787849, 32.731270, 33.375175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160603, 32.606003, 33.301929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079997, -0.314944, 0.945733,
		-0.353844, -0.895955, -0.268436,
		0.931877, -0.313168, -0.183115,
		40.440166, 32.512054, 33.246994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869987, 31.998846, 33.512848>,  <39.787849, 32.731270, 33.375175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869987, 31.998846, 33.512848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239037, 32.142361, 33.569462>,  <40.460468, 32.228470, 33.603432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239037, 32.142361, 33.569462>,  <39.869987, 31.998846, 33.512848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239037, 32.142361, 33.569462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081413, -0.539863, 0.837807,
		0.377003, -0.761460, -0.527302,
		0.922627, 0.358785, 0.141537,
		40.515823, 32.249996, 33.611923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084656, 31.708561, 34.153770>,  <39.869987, 31.998846, 33.512848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084656, 31.708561, 34.153770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401375, 31.947226, 34.101524>,  <40.591404, 32.090424, 34.070179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401375, 31.947226, 34.101524>,  <40.084656, 31.708561, 34.153770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401375, 31.947226, 34.101524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419341, -0.375558, 0.826504,
		0.444090, -0.709192, -0.547568,
		0.791794, 0.596660, -0.130612,
		40.638912, 32.126225, 34.062340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703625, 31.243221, 34.316093>,  <40.084656, 31.708561, 34.153770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703625, 31.243221, 34.316093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801823, 31.627119, 34.370686>,  <40.860741, 31.857458, 34.403442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801823, 31.627119, 34.370686>,  <40.703625, 31.243221, 34.316093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801823, 31.627119, 34.370686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617311, -0.263327, 0.741340,
		0.747435, -0.097742, -0.657105,
		0.245494, 0.959742, 0.136482,
		40.875469, 31.915041, 34.411629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482979, 31.314516, 34.416515>,  <40.703625, 31.243221, 34.316093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482979, 31.314516, 34.416515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287720, 31.628654, 34.568802>,  <41.170563, 31.817137, 34.660175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287720, 31.628654, 34.568802>,  <41.482979, 31.314516, 34.416515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287720, 31.628654, 34.568802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517149, -0.091120, 0.851031,
		0.703044, 0.612317, -0.361660,
		-0.488146, 0.785344, 0.380720,
		41.141277, 31.864258, 34.683018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983456, 31.655678, 34.761871>,  <41.482979, 31.314516, 34.416515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983456, 31.655678, 34.761871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651447, 31.816065, 34.916939>,  <41.452244, 31.912296, 35.009979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651447, 31.816065, 34.916939>,  <41.983456, 31.655678, 34.761871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651447, 31.816065, 34.916939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471295, 0.132558, 0.871957,
		0.298238, 0.906451, -0.299000,
		-0.830021, 0.400968, 0.387672,
		41.402439, 31.936356, 35.033241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256908, 32.238457, 35.110016>,  <41.983456, 31.655678, 34.761871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256908, 32.238457, 35.110016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891464, 32.156052, 35.250225>,  <41.672195, 32.106609, 35.334351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891464, 32.156052, 35.250225>,  <42.256908, 32.238457, 35.110016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891464, 32.156052, 35.250225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344891, 0.063876, 0.936467,
		-0.215311, 0.976463, 0.012692,
		-0.913614, -0.206009, 0.350527,
		41.617378, 32.094250, 35.355385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051296, 32.816410, 35.567421>,  <42.256908, 32.238457, 35.110016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051296, 32.816410, 35.567421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849194, 32.488541, 35.675385>,  <41.727932, 32.291821, 35.740162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849194, 32.488541, 35.675385>,  <42.051296, 32.816410, 35.567421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849194, 32.488541, 35.675385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262199, 0.152165, 0.952942,
		-0.822170, 0.552253, 0.138034,
		-0.505261, -0.819672, 0.269906,
		41.697617, 32.242638, 35.756355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876041, 33.006248, 36.266106>,  <42.051296, 32.816410, 35.567421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876041, 33.006248, 36.266106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779823, 32.618790, 36.241268>,  <41.722092, 32.386314, 36.226364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779823, 32.618790, 36.241268>,  <41.876041, 33.006248, 36.266106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779823, 32.618790, 36.241268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182743, -0.108023, 0.977208,
		-0.953280, 0.223714, 0.202998,
		-0.240544, -0.968650, -0.062094,
		41.707661, 32.328194, 36.222641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317326, 32.923992, 36.666374>,  <41.876041, 33.006248, 36.266106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317326, 32.923992, 36.666374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492672, 32.565319, 36.641754>,  <41.597881, 32.350113, 36.626984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492672, 32.565319, 36.641754>,  <41.317326, 32.923992, 36.666374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492672, 32.565319, 36.641754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081740, -0.107972, 0.990788,
		-0.895070, -0.429301, -0.120627,
		0.438370, -0.896685, -0.061551,
		41.624184, 32.296314, 36.623287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928574, 32.500969, 37.109554>,  <41.317326, 32.923992, 36.666374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928574, 32.500969, 37.109554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279938, 32.314041, 37.069550>,  <41.490757, 32.201885, 37.045547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279938, 32.314041, 37.069550>,  <40.928574, 32.500969, 37.109554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279938, 32.314041, 37.069550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023604, -0.166598, 0.985742,
		-0.477316, -0.868251, -0.135312,
		0.878415, -0.467317, -0.100014,
		41.543461, 32.173847, 37.039547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882786, 31.958628, 37.585846>,  <40.928574, 32.500969, 37.109554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882786, 31.958628, 37.585846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276287, 31.966171, 37.514431>,  <41.512386, 31.970697, 37.471584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276287, 31.966171, 37.514431>,  <40.882786, 31.958628, 37.585846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276287, 31.966171, 37.514431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173806, -0.349138, 0.920812,
		-0.044968, -0.936881, -0.346744,
		0.983753, 0.018859, -0.178535,
		41.571411, 31.971828, 37.460869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270939, 31.223238, 37.617752>,  <40.882786, 31.958628, 37.585846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270939, 31.223238, 37.617752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518593, 31.520323, 37.719776>,  <41.667183, 31.698574, 37.780991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518593, 31.520323, 37.719776>,  <41.270939, 31.223238, 37.617752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518593, 31.520323, 37.719776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175371, -0.447360, 0.876991,
		0.765455, -0.498244, -0.407225,
		0.619132, 0.742713, 0.255056,
		41.704334, 31.743137, 37.796291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791138, 30.879755, 38.044125>,  <41.270939, 31.223238, 37.617752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791138, 30.879755, 38.044125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861137, 31.268251, 38.108707>,  <41.903137, 31.501348, 38.147457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861137, 31.268251, 38.108707>,  <41.791138, 30.879755, 38.044125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861137, 31.268251, 38.108707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236424, -0.200641, 0.950709,
		0.955760, -0.128205, -0.264737,
		0.175002, 0.971240, 0.161454,
		41.913639, 31.559624, 38.157143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448780, 30.908228, 38.301121>,  <41.791138, 30.879755, 38.044125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448780, 30.908228, 38.301121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281757, 31.250343, 38.423843>,  <42.181541, 31.455612, 38.497475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281757, 31.250343, 38.423843>,  <42.448780, 30.908228, 38.301121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281757, 31.250343, 38.423843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062710, -0.309716, 0.948759,
		0.906483, 0.415402, 0.075689,
		-0.417559, 0.855288, 0.306802,
		42.156490, 31.506929, 38.515884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822762, 31.033049, 38.857349>,  <42.448780, 30.908228, 38.301121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822762, 31.033049, 38.857349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523457, 31.292423, 38.913391>,  <42.343872, 31.448048, 38.947014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523457, 31.292423, 38.913391>,  <42.822762, 31.033049, 38.857349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523457, 31.292423, 38.913391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059749, -0.276202, 0.959241,
		0.660703, 0.709396, 0.245416,
		-0.748266, 0.648437, 0.140102,
		42.298977, 31.486954, 38.955421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051640, 31.451311, 39.406010>,  <42.822762, 31.033049, 38.857349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051640, 31.451311, 39.406010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652809, 31.478338, 39.391693>,  <42.413513, 31.494555, 39.383102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652809, 31.478338, 39.391693>,  <43.051640, 31.451311, 39.406010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652809, 31.478338, 39.391693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048163, -0.191368, 0.980336,
		0.059389, 0.979190, 0.194062,
		-0.997072, 0.067568, -0.035795,
		42.353687, 31.498608, 39.380955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395493, 32.135300, 39.448681>,  <43.051640, 31.451311, 39.406010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395493, 32.135300, 39.448681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307972, 32.501488, 39.313595>,  <43.255459, 32.721199, 39.232544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307972, 32.501488, 39.313595>,  <43.395493, 32.135300, 39.448681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307972, 32.501488, 39.313595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329314, 0.395070, 0.857596,
		0.918520, 0.076430, -0.387918,
		-0.218801, 0.915466, -0.337710,
		43.242332, 32.776127, 39.212280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009113, 32.510002, 39.475845>,  <43.395493, 32.135300, 39.448681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009113, 32.510002, 39.475845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725254, 32.791786, 39.471157>,  <43.554939, 32.960857, 39.468346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725254, 32.791786, 39.471157>,  <44.009113, 32.510002, 39.475845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725254, 32.791786, 39.471157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428665, 0.444900, 0.786327,
		0.559154, 0.552988, -0.617699,
		-0.709644, 0.704463, -0.011721,
		43.512360, 33.003124, 39.467640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379551, 33.073795, 39.495205>,  <44.009113, 32.510002, 39.475845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379551, 33.073795, 39.495205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013725, 33.197094, 39.599937>,  <43.794231, 33.271072, 39.662777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013725, 33.197094, 39.599937>,  <44.379551, 33.073795, 39.495205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013725, 33.197094, 39.599937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399350, 0.585859, 0.705187,
		0.063979, 0.749500, -0.658905,
		-0.914563, 0.308251, 0.261830,
		43.739357, 33.289570, 39.678486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393742, 33.885071, 39.704552>,  <44.379551, 33.073795, 39.495205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393742, 33.885071, 39.704552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097385, 33.691086, 39.890408>,  <43.919571, 33.574696, 40.001923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097385, 33.691086, 39.890408>,  <44.393742, 33.885071, 39.704552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097385, 33.691086, 39.890408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244712, 0.449336, 0.859193,
		-0.625458, 0.750271, -0.214232,
		-0.740890, -0.484964, 0.464642,
		43.875118, 33.545597, 40.029800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103298, 34.270432, 40.131561>,  <44.393742, 33.885071, 39.704552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103298, 34.270432, 40.131561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.923115, 33.947697, 40.284458>,  <43.815006, 33.754055, 40.376198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.923115, 33.947697, 40.284458>,  <44.103298, 34.270432, 40.131561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.923115, 33.947697, 40.284458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119857, 0.369615, 0.921422,
		-0.884717, 0.460874, -0.069790,
		-0.450455, -0.806833, 0.382244,
		43.787979, 33.705647, 40.399132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670483, 34.505226, 40.659618>,  <44.103298, 34.270432, 40.131561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670483, 34.505226, 40.659618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718708, 34.123943, 40.770519>,  <43.747643, 33.895176, 40.837059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718708, 34.123943, 40.770519>,  <43.670483, 34.505226, 40.659618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.718708, 34.123943, 40.770519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310470, 0.301484, 0.901507,
		-0.942906, -0.022615, 0.332290,
		0.120568, -0.953203, 0.277250,
		43.754879, 33.837982, 40.853695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.336662, 34.383759, 41.350079>,  <43.670483, 34.505226, 40.659618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.336662, 34.383759, 41.350079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577213, 34.066513, 41.311481>,  <43.721546, 33.876167, 41.288322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577213, 34.066513, 41.311481>,  <43.336662, 34.383759, 41.350079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577213, 34.066513, 41.311481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144503, -0.010810, 0.989445,
		-0.785785, -0.608978, 0.108106,
		0.601382, -0.793113, -0.096494,
		43.757629, 33.828579, 41.282532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.116486, 33.897049, 41.966137>,  <43.336662, 34.383759, 41.350079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.116486, 33.897049, 41.966137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484291, 33.812290, 41.833714>,  <43.704975, 33.761436, 41.754261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484291, 33.812290, 41.833714>,  <43.116486, 33.897049, 41.966137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484291, 33.812290, 41.833714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355478, 0.088904, 0.930447,
		-0.167727, -0.973240, 0.157073,
		0.919512, -0.211897, -0.331054,
		43.760143, 33.748722, 41.734398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331024, 33.197552, 42.242168>,  <43.116486, 33.897049, 41.966137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331024, 33.197552, 42.242168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594048, 33.487465, 42.159885>,  <43.751862, 33.661411, 42.110516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594048, 33.487465, 42.159885>,  <43.331024, 33.197552, 42.242168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594048, 33.487465, 42.159885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172438, 0.121009, 0.977559,
		0.733408, -0.678271, -0.045409,
		0.657555, 0.724780, -0.205709,
		43.791313, 33.704899, 42.098171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603424, 33.306686, 42.905415>,  <43.331024, 33.197552, 42.242168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603424, 33.306686, 42.905415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767097, 33.578915, 42.662304>,  <43.865303, 33.742252, 42.516438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767097, 33.578915, 42.662304>,  <43.603424, 33.306686, 42.905415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767097, 33.578915, 42.662304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242397, 0.561082, 0.791474,
		0.879664, -0.471185, 0.064621,
		0.409188, 0.680567, -0.607777,
		43.889854, 33.783085, 42.479969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.100574, 33.527607, 43.349888>,  <43.603424, 33.306686, 42.905415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.100574, 33.527607, 43.349888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094501, 33.815144, 43.071884>,  <44.090858, 33.987667, 42.905083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094501, 33.815144, 43.071884>,  <44.100574, 33.527607, 43.349888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094501, 33.815144, 43.071884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353466, 0.654066, 0.668774,
		0.935324, -0.235509, -0.264017,
		-0.015182, 0.718842, -0.695008,
		44.089947, 34.030796, 42.863380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.757576, 33.869034, 43.456234>,  <44.100574, 33.527607, 43.349888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.757576, 33.869034, 43.456234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502754, 34.105148, 43.257954>,  <44.349861, 34.246819, 43.138985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502754, 34.105148, 43.257954>,  <44.757576, 33.869034, 43.456234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502754, 34.105148, 43.257954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352780, 0.795056, 0.493388,
		0.685351, 0.139443, -0.714737,
		-0.637056, 0.590289, -0.495700,
		44.311638, 34.282234, 43.109245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.236637, 34.467037, 43.323570>,  <44.757576, 33.869034, 43.456234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.236637, 34.467037, 43.323570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.849007, 34.553288, 43.275570>,  <44.616428, 34.605038, 43.246769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.849007, 34.553288, 43.275570>,  <45.236637, 34.467037, 43.323570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.849007, 34.553288, 43.275570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121635, 0.840492, 0.527993,
		0.214709, 0.497069, -0.840727,
		-0.969074, 0.215627, -0.120001,
		44.558285, 34.617977, 43.239571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.226738, 35.137566, 42.926136>,  <45.236637, 34.467037, 43.323570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.226738, 35.137566, 42.926136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.922962, 35.070030, 43.177452>,  <44.740696, 35.029510, 43.328239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.922962, 35.070030, 43.177452>,  <45.226738, 35.137566, 42.926136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922962, 35.070030, 43.177452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223406, 0.839331, 0.495593,
		-0.611016, 0.516736, -0.599703,
		-0.759440, -0.168838, 0.628287,
		44.695129, 35.019379, 43.365936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.830070, 35.749161, 42.964561>,  <45.226738, 35.137566, 42.926136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.830070, 35.749161, 42.964561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.763844, 35.540653, 43.299431>,  <44.724106, 35.415546, 43.500351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.763844, 35.540653, 43.299431>,  <44.830070, 35.749161, 42.964561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763844, 35.540653, 43.299431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027302, 0.850989, 0.524474,
		-0.985820, 0.063981, -0.155129,
		-0.165569, -0.521272, 0.837175,
		44.714172, 35.384270, 43.550583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.401344, 36.175205, 43.466106>,  <44.830070, 35.749161, 42.964561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.401344, 36.175205, 43.466106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618202, 35.925625, 43.691235>,  <44.748318, 35.775879, 43.826313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618202, 35.925625, 43.691235>,  <44.401344, 36.175205, 43.466106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.618202, 35.925625, 43.691235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106733, 0.715507, 0.690404,
		-0.833480, -0.314226, 0.454503,
		0.542143, -0.623949, 0.562822,
		44.780846, 35.738441, 43.860081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272663, 36.360882, 44.017929>,  <44.401344, 36.175205, 43.466106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272663, 36.360882, 44.017929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577702, 36.133106, 44.140690>,  <44.760723, 35.996441, 44.214344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577702, 36.133106, 44.140690>,  <44.272663, 36.360882, 44.017929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577702, 36.133106, 44.140690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039864, 0.514905, 0.856320,
		-0.645644, -0.640793, 0.415365,
		0.762598, -0.569436, 0.306900,
		44.806480, 35.962276, 44.232761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183262, 36.291023, 44.794720>,  <44.272663, 36.360882, 44.017929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.183262, 36.291023, 44.794720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562622, 36.186848, 44.722385>,  <44.790237, 36.124340, 44.678986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562622, 36.186848, 44.722385>,  <44.183262, 36.291023, 44.794720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562622, 36.186848, 44.722385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287340, 0.464889, 0.837445,
		-0.134038, -0.846197, 0.515738,
		0.948404, -0.260441, -0.180833,
		44.847145, 36.108715, 44.668137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.447021, 36.013218, 45.491383>,  <44.183262, 36.291023, 44.794720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.447021, 36.013218, 45.491383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.767647, 36.117767, 45.276283>,  <44.960022, 36.180496, 45.147224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.767647, 36.117767, 45.276283>,  <44.447021, 36.013218, 45.491383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767647, 36.117767, 45.276283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327625, 0.560340, 0.760711,
		0.500152, -0.785941, 0.363518,
		0.801567, 0.261373, -0.537749,
		45.008118, 36.196178, 45.114960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.054604, 35.776714, 45.852959>,  <44.447021, 36.013218, 45.491383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.054604, 35.776714, 45.852959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.150387, 36.098404, 45.635380>,  <45.207855, 36.291420, 45.504833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.150387, 36.098404, 45.635380>,  <45.054604, 35.776714, 45.852959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.150387, 36.098404, 45.635380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199398, 0.507571, 0.838220,
		0.950211, -0.309181, -0.038819,
		0.239458, 0.804226, -0.543949,
		45.222225, 36.339672, 45.472195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.818775, 35.963993, 45.957954>,  <45.054604, 35.776714, 45.852959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.818775, 35.963993, 45.957954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.555313, 36.252399, 45.871876>,  <45.397236, 36.425442, 45.820229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.555313, 36.252399, 45.871876>,  <45.818775, 35.963993, 45.957954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.555313, 36.252399, 45.871876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305383, 0.517542, 0.799307,
		0.687686, 0.460751, -0.561068,
		-0.658658, 0.721013, -0.215200,
		45.357716, 36.468704, 45.807316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.124191, 36.699425, 46.057106>,  <45.818775, 35.963993, 45.957954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.124191, 36.699425, 46.057106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731178, 36.706444, 46.131210>,  <45.495369, 36.710655, 46.175674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731178, 36.706444, 46.131210>,  <46.124191, 36.699425, 46.057106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.731178, 36.706444, 46.131210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157495, 0.608691, 0.777618,
		-0.099123, 0.793213, -0.600822,
		-0.982532, 0.017547, 0.185263,
		45.436420, 36.711708, 46.186790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.002625, 37.452091, 46.097820>,  <46.124191, 36.699425, 46.057106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.002625, 37.452091, 46.097820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.671322, 37.304882, 46.266842>,  <45.472542, 37.216557, 46.368256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.671322, 37.304882, 46.266842>,  <46.002625, 37.452091, 46.097820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.671322, 37.304882, 46.266842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049190, 0.798927, 0.599413,
		-0.558187, 0.475682, -0.679819,
		-0.828256, -0.368025, 0.422552,
		45.422844, 37.194473, 46.393608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844471, 38.001534, 45.682808>,  <46.002625, 37.452091, 46.097820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844471, 38.001534, 45.682808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703598, 37.634777, 45.757942>,  <45.619076, 37.414722, 45.803024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703598, 37.634777, 45.757942>,  <45.844471, 38.001534, 45.682808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.703598, 37.634777, 45.757942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935780, 0.341345, -0.088307,
		0.016850, -0.206876, -0.978222,
		-0.352180, -0.916889, 0.187838,
		45.597942, 37.359711, 45.814293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.449402, 37.744827, 45.183491>,  <45.844471, 38.001534, 45.682808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.449402, 37.744827, 45.183491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319469, 37.634232, 45.545273>,  <45.241512, 37.567875, 45.762344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319469, 37.634232, 45.545273>,  <45.449402, 37.744827, 45.183491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.319469, 37.634232, 45.545273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832876, 0.536731, -0.135043,
		-0.448112, -0.797166, -0.404625,
		-0.324826, -0.276488, 0.904457,
		45.222023, 37.551285, 45.816608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420147, 37.233765, 44.646454>,  <45.449402, 37.744827, 45.183491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.420147, 37.233765, 44.646454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.439487, 36.947845, 44.925518>,  <45.451092, 36.776295, 45.092957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.439487, 36.947845, 44.925518>,  <45.420147, 37.233765, 44.646454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.439487, 36.947845, 44.925518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000963, -0.698509, -0.715600,
		0.998830, 0.033930, -0.034464,
		0.048353, -0.714796, 0.697659,
		45.453995, 36.733406, 45.134815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.994648, 36.717480, 44.472900>,  <45.420147, 37.233765, 44.646454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.994648, 36.717480, 44.472900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700558, 36.526375, 44.665226>,  <45.524101, 36.411713, 44.780621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700558, 36.526375, 44.665226>,  <45.994648, 36.717480, 44.472900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.700558, 36.526375, 44.665226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100266, -0.624888, -0.774249,
		0.670361, -0.617460, 0.411532,
		-0.735230, -0.477764, 0.480811,
		45.479988, 36.383045, 44.809471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.092308, 35.931973, 44.535622>,  <45.994648, 36.717480, 44.472900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.092308, 35.931973, 44.535622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.697811, 35.985775, 44.574051>,  <45.461113, 36.018055, 44.597107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.697811, 35.985775, 44.574051>,  <46.092308, 35.931973, 44.535622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.697811, 35.985775, 44.574051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161592, -0.662301, -0.731605,
		-0.034777, -0.737066, 0.674926,
		-0.986245, 0.134506, 0.096071,
		45.401939, 36.026127, 44.602871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.831936, 35.245308, 44.603069>,  <46.092308, 35.931973, 44.535622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.831936, 35.245308, 44.603069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.508854, 35.464123, 44.515110>,  <45.315002, 35.595413, 44.462334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.508854, 35.464123, 44.515110>,  <45.831936, 35.245308, 44.603069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.508854, 35.464123, 44.515110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370554, -0.761118, -0.532342,
		-0.458583, -0.348491, 0.817469,
		-0.807707, 0.547040, -0.219901,
		45.266541, 35.628235, 44.449139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.139801, 34.835300, 44.755047>,  <45.831936, 35.245308, 44.603069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.139801, 34.835300, 44.755047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007805, 35.108868, 44.494781>,  <44.928608, 35.273006, 44.338623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007805, 35.108868, 44.494781>,  <45.139801, 34.835300, 44.755047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.007805, 35.108868, 44.494781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574319, -0.692483, -0.436606,
		-0.749177, 0.229616, 0.621297,
		-0.329986, 0.683918, -0.650665,
		44.908810, 35.314045, 44.299583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.431004, 34.779102, 44.672794>,  <45.139801, 34.835300, 44.755047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.431004, 34.779102, 44.672794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.533352, 34.954628, 44.328243>,  <44.594761, 35.059944, 44.121513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.533352, 34.954628, 44.328243>,  <44.431004, 34.779102, 44.672794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.533352, 34.954628, 44.328243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567975, -0.652792, -0.501265,
		-0.782262, 0.617502, 0.082202,
		0.255871, 0.438809, -0.861380,
		44.610115, 35.086269, 44.069828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.975899, 34.449074, 44.247044>,  <44.431004, 34.779102, 44.672794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.975899, 34.449074, 44.247044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196278, 34.634563, 43.969505>,  <44.328503, 34.745857, 43.802982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196278, 34.634563, 43.969505>,  <43.975899, 34.449074, 44.247044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196278, 34.634563, 43.969505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202758, -0.732114, -0.650307,
		-0.809537, 0.498964, -0.309329,
		0.550944, 0.463728, -0.693842,
		44.361561, 34.773682, 43.761353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513126, 34.988308, 43.959568>,  <43.975899, 34.449074, 44.247044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513126, 34.988308, 43.959568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850822, 35.018200, 43.747276>,  <44.053440, 35.036133, 43.619900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850822, 35.018200, 43.747276>,  <43.513126, 34.988308, 43.959568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850822, 35.018200, 43.747276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456426, -0.418835, -0.785017,
		-0.280949, 0.904983, -0.319491,
		0.844241, 0.074725, -0.530729,
		44.104095, 35.040619, 43.588058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325249, 34.968849, 43.290771>,  <43.513126, 34.988308, 43.959568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325249, 34.968849, 43.290771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714195, 34.879623, 43.263241>,  <43.947563, 34.826088, 43.246723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714195, 34.879623, 43.263241>,  <43.325249, 34.968849, 43.290771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714195, 34.879623, 43.263241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135731, -0.300351, -0.944122,
		0.189932, 0.927378, -0.322330,
		0.972370, -0.223069, -0.068828,
		44.005905, 34.812702, 43.242592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502502, 35.137913, 42.579983>,  <43.325249, 34.968849, 43.290771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502502, 35.137913, 42.579983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785629, 34.895897, 42.725815>,  <43.955505, 34.750687, 42.813313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785629, 34.895897, 42.725815>,  <43.502502, 35.137913, 42.579983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785629, 34.895897, 42.725815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076635, -0.578836, -0.811835,
		0.702226, 0.546692, -0.456078,
		0.707818, -0.605043, 0.364578,
		43.997974, 34.714386, 42.835190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015488, 35.051830, 42.029579>,  <43.502502, 35.137913, 42.579983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015488, 35.051830, 42.029579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049110, 34.731091, 42.266212>,  <44.069283, 34.538647, 42.408192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049110, 34.731091, 42.266212>,  <44.015488, 35.051830, 42.029579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049110, 34.731091, 42.266212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115322, -0.597521, -0.793517,
		0.989765, -0.001522, -0.142697,
		0.084056, -0.801852, 0.591581,
		44.074326, 34.490536, 42.443687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616104, 34.564556, 41.837547>,  <44.015488, 35.051830, 42.029579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616104, 34.564556, 41.837547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348686, 34.335690, 42.027569>,  <44.188236, 34.198372, 42.141582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348686, 34.335690, 42.027569>,  <44.616104, 34.564556, 41.837547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348686, 34.335690, 42.027569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058410, -0.596427, -0.800539,
		0.741377, -0.562943, 0.365317,
		-0.668543, -0.572163, 0.475058,
		44.148125, 34.164040, 42.170086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977135, 33.999031, 41.986408>,  <44.616104, 34.564556, 41.837547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977135, 33.999031, 41.986408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.590946, 33.899467, 41.955658>,  <44.359234, 33.839729, 41.937210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.590946, 33.899467, 41.955658>,  <44.977135, 33.999031, 41.986408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.590946, 33.899467, 41.955658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188083, -0.461842, -0.866791,
		0.180249, -0.851320, 0.492711,
		-0.965471, -0.248909, -0.076872,
		44.301304, 33.824795, 41.932594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.011391, 33.468895, 41.486656>,  <44.977135, 33.999031, 41.986408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.011391, 33.468895, 41.486656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623642, 33.542419, 41.551819>,  <44.390995, 33.586536, 41.590916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623642, 33.542419, 41.551819>,  <45.011391, 33.468895, 41.486656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.623642, 33.542419, 41.551819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228744, -0.434034, -0.871373,
		-0.089462, -0.881945, 0.462785,
		-0.969367, 0.183814, 0.162910,
		44.332832, 33.597565, 41.600693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.704357, 32.907909, 41.127052>,  <45.011391, 33.468895, 41.486656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.704357, 32.907909, 41.127052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409779, 33.173809, 41.177265>,  <44.233032, 33.333347, 41.207394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409779, 33.173809, 41.177265>,  <44.704357, 32.907909, 41.127052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409779, 33.173809, 41.177265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407164, -0.287367, -0.866970,
		-0.540243, -0.689588, 0.482292,
		-0.736447, 0.664747, 0.125527,
		44.188843, 33.373234, 41.214924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143772, 32.664513, 40.897915>,  <44.704357, 32.907909, 41.127052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143772, 32.664513, 40.897915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018780, 33.044231, 40.911758>,  <43.943783, 33.272060, 40.920063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018780, 33.044231, 40.911758>,  <44.143772, 32.664513, 40.897915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018780, 33.044231, 40.911758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658965, -0.190389, -0.727679,
		-0.684192, -0.250192, 0.685044,
		-0.312484, 0.949293, 0.034605,
		43.925034, 33.329018, 40.922138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400017, 32.702377, 41.021667>,  <44.143772, 32.664513, 40.897915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400017, 32.702377, 41.021667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538715, 33.005554, 40.800659>,  <43.621937, 33.187462, 40.668053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538715, 33.005554, 40.800659>,  <43.400017, 32.702377, 41.021667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538715, 33.005554, 40.800659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559394, -0.305732, -0.770458,
		-0.752890, 0.576236, 0.317977,
		0.346750, 0.757945, -0.552525,
		43.642742, 33.232937, 40.634903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869221, 33.182976, 40.722591>,  <43.400017, 32.702377, 41.021667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869221, 33.182976, 40.722591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167011, 33.273304, 40.471272>,  <43.345688, 33.327499, 40.320480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167011, 33.273304, 40.471272>,  <42.869221, 33.182976, 40.722591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167011, 33.273304, 40.471272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552546, -0.319835, -0.769675,
		-0.374759, 0.920169, -0.113335,
		0.744479, 0.225820, -0.628296,
		43.390354, 33.341049, 40.282784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469112, 33.479172, 40.096561>,  <42.869221, 33.182976, 40.722591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469112, 33.479172, 40.096561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850895, 33.459240, 39.978893>,  <43.079964, 33.447281, 39.908295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850895, 33.459240, 39.978893>,  <42.469112, 33.479172, 40.096561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850895, 33.459240, 39.978893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298218, -0.189475, -0.935503,
		-0.009119, 0.980620, -0.195706,
		0.954454, -0.049833, -0.294167,
		43.137230, 33.444290, 39.890644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524311, 33.738770, 39.392204>,  <42.469112, 33.479172, 40.096561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524311, 33.738770, 39.392204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.878094, 33.553822, 39.417339>,  <43.090363, 33.442852, 39.432419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.878094, 33.553822, 39.417339>,  <42.524311, 33.738770, 39.392204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878094, 33.553822, 39.417339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147703, -0.405145, -0.902242,
		0.442628, 0.788714, -0.426627,
		0.884457, -0.462372, 0.062833,
		43.143433, 33.415112, 39.436188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940197, 33.966221, 38.882893>,  <42.524311, 33.738770, 39.392204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940197, 33.966221, 38.882893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004681, 33.582012, 38.973591>,  <43.043369, 33.351486, 39.028008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004681, 33.582012, 38.973591>,  <42.940197, 33.966221, 38.882893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004681, 33.582012, 38.973591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074912, -0.240994, -0.967631,
		0.984074, 0.139001, -0.110804,
		0.161205, -0.960521, 0.226743,
		43.053043, 33.293858, 39.041615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102753, 33.731461, 38.267456>,  <42.940197, 33.966221, 38.882893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102753, 33.731461, 38.267456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.021194, 33.384289, 38.448616>,  <42.972260, 33.175983, 38.557312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.021194, 33.384289, 38.448616>,  <43.102753, 33.731461, 38.267456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.021194, 33.384289, 38.448616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191840, -0.418227, -0.887854,
		0.960012, -0.267915, -0.081229,
		-0.203897, -0.867933, 0.452900,
		42.960026, 33.123909, 38.584484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386009, 33.282715, 37.821789>,  <43.102753, 33.731461, 38.267456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386009, 33.282715, 37.821789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613724, 33.547878, 38.016296>,  <43.750351, 33.706978, 38.133003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613724, 33.547878, 38.016296>,  <43.386009, 33.282715, 37.821789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613724, 33.547878, 38.016296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801318, -0.315132, -0.508509,
		-0.183856, 0.679147, -0.710603,
		0.569286, 0.662911, 0.486273,
		43.784508, 33.746750, 38.162178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798168, 33.687607, 37.356255>,  <43.386009, 33.282715, 37.821789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798168, 33.687607, 37.356255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991905, 33.648590, 37.704021>,  <44.108147, 33.625179, 37.912682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991905, 33.648590, 37.704021>,  <43.798168, 33.687607, 37.356255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.991905, 33.648590, 37.704021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794166, -0.367883, -0.483697,
		0.367028, 0.924741, -0.100714,
		0.484346, -0.097546, 0.869422,
		44.137207, 33.619328, 37.964848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370945, 34.028221, 37.454208>,  <43.798168, 33.687607, 37.356255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370945, 34.028221, 37.454208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403694, 33.688686, 37.663120>,  <44.423344, 33.484966, 37.788467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403694, 33.688686, 37.663120>,  <44.370945, 34.028221, 37.454208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403694, 33.688686, 37.663120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706792, -0.320016, -0.630900,
		0.702668, 0.420794, 0.573751,
		0.081870, -0.848836, 0.522278,
		44.428253, 33.434036, 37.819805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.003643, 33.786362, 37.337303>,  <44.370945, 34.028221, 37.454208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.003643, 33.786362, 37.337303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808197, 33.446331, 37.415905>,  <44.690929, 33.242313, 37.463066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808197, 33.446331, 37.415905>,  <45.003643, 33.786362, 37.337303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.808197, 33.446331, 37.415905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686435, -0.513569, -0.514835,
		0.538571, -0.116667, 0.834464,
		-0.488619, -0.850080, 0.196509,
		44.661610, 33.191307, 37.474857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.453957, 33.421551, 37.805050>,  <45.003643, 33.786362, 37.337303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.453957, 33.421551, 37.805050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239388, 33.233398, 37.524769>,  <45.110645, 33.120506, 37.356598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239388, 33.233398, 37.524769>,  <45.453957, 33.421551, 37.805050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239388, 33.233398, 37.524769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839181, -0.385406, -0.383716,
		-0.089562, -0.793853, 0.601478,
		-0.536427, -0.470383, -0.700704,
		45.078461, 33.092285, 37.314556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.622818, 32.718525, 37.772427>,  <45.453957, 33.421551, 37.805050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.622818, 32.718525, 37.772427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512756, 32.813324, 37.399734>,  <45.446720, 32.870201, 37.176117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512756, 32.813324, 37.399734>,  <45.622818, 32.718525, 37.772427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.512756, 32.813324, 37.399734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831957, -0.426993, -0.354295,
		-0.481809, -0.872646, -0.079681,
		-0.275151, 0.236993, -0.931733,
		45.430210, 32.884422, 37.120216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.713345, 32.215649, 37.312786>,  <45.622818, 32.718525, 37.772427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.713345, 32.215649, 37.312786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709732, 32.515736, 37.048332>,  <45.707565, 32.695786, 36.889660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709732, 32.515736, 37.048332>,  <45.713345, 32.215649, 37.312786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709732, 32.515736, 37.048332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800360, -0.390930, -0.454530,
		-0.599452, -0.533248, -0.596912,
		-0.009027, 0.750214, -0.661134,
		45.707024, 32.740799, 36.849991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.694622, 32.064720, 36.540703>,  <45.713345, 32.215649, 37.312786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.694622, 32.064720, 36.540703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909130, 32.391903, 36.623985>,  <46.037834, 32.588215, 36.673954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909130, 32.391903, 36.623985>,  <45.694622, 32.064720, 36.540703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.909130, 32.391903, 36.623985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809302, -0.428266, -0.402018,
		-0.239668, 0.384093, -0.891646,
		0.536274, 0.817961, 0.208205,
		46.070011, 32.637291, 36.686447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.149391, 32.329853, 36.024517>,  <45.694622, 32.064720, 36.540703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.149391, 32.329853, 36.024517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217869, 32.701656, 36.155178>,  <45.258953, 32.924740, 36.233574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217869, 32.701656, 36.155178>,  <45.149391, 32.329853, 36.024517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217869, 32.701656, 36.155178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983647, -0.180078, -0.003079,
		0.055961, 0.321841, -0.945138,
		0.171190, 0.929511, 0.326656,
		45.269226, 32.980511, 36.253174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348083, 32.754040, 35.504906>,  <45.149391, 32.329853, 36.024517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348083, 32.754040, 35.504906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.516460, 32.829792, 35.859745>,  <45.617485, 32.875244, 36.072647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.516460, 32.829792, 35.859745>,  <45.348083, 32.754040, 35.504906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516460, 32.829792, 35.859745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891011, -0.269636, -0.365234,
		0.170024, 0.944156, -0.282244,
		0.420941, 0.189384, 0.887098,
		45.642742, 32.886608, 36.125874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.120251, 33.462360, 35.194607>,  <45.348083, 32.754040, 35.504906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.120251, 33.462360, 35.194607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113731, 33.741035, 35.481480>,  <45.109821, 33.908241, 35.653603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113731, 33.741035, 35.481480>,  <45.120251, 33.462360, 35.194607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.113731, 33.741035, 35.481480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973484, -0.152632, 0.170389,
		0.228174, 0.700945, -0.675731,
		-0.016295, 0.696692, 0.717186,
		45.108845, 33.950043, 35.696636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.586468, 34.004536, 35.038723>,  <45.120251, 33.462360, 35.194607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.586468, 34.004536, 35.038723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512295, 33.905998, 35.419235>,  <45.467793, 33.846878, 35.647541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512295, 33.905998, 35.419235>,  <45.586468, 34.004536, 35.038723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.512295, 33.905998, 35.419235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968011, -0.212306, 0.133717,
		0.169022, 0.945644, 0.277829,
		-0.185433, -0.246341, 0.951278,
		45.456665, 33.832096, 35.704620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.989552, 34.293854, 34.890175>,  <45.586468, 34.004536, 35.038723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.989552, 34.293854, 34.890175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.216816, 34.547657, 35.099781>,  <45.353176, 34.699940, 35.225544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.216816, 34.547657, 35.099781>,  <44.989552, 34.293854, 34.890175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.216816, 34.547657, 35.099781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655778, 0.035591, -0.754115,
		-0.497139, 0.772099, -0.395872,
		0.568162, 0.634504, 0.524019,
		45.387264, 34.738007, 35.256989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251373, 35.024521, 34.513233>,  <44.989552, 34.293854, 34.890175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.251373, 35.024521, 34.513233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.489670, 34.838497, 34.775166>,  <45.632648, 34.726883, 34.932327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.489670, 34.838497, 34.775166>,  <45.251373, 35.024521, 34.513233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.489670, 34.838497, 34.775166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658736, -0.183541, -0.729644,
		0.459519, 0.866042, 0.197011,
		0.595743, -0.465063, 0.654833,
		45.668392, 34.698978, 34.971615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844509, 35.161072, 34.062794>,  <45.251373, 35.024521, 34.513233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844509, 35.161072, 34.062794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.847729, 34.835133, 34.294640>,  <45.849663, 34.639568, 34.433746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.847729, 34.835133, 34.294640>,  <45.844509, 35.161072, 34.062794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.847729, 34.835133, 34.294640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539293, -0.484574, -0.688732,
		0.842080, 0.318127, 0.435542,
		0.008052, -0.814852, 0.579613,
		45.850143, 34.590675, 34.468525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.582306, 34.864235, 34.106934>,  <45.844509, 35.161072, 34.062794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.582306, 34.864235, 34.106934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350315, 34.552742, 34.202602>,  <46.211121, 34.365845, 34.260002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350315, 34.552742, 34.202602>,  <46.582306, 34.864235, 34.106934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.350315, 34.552742, 34.202602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535174, -0.585574, -0.608844,
		0.614177, -0.225120, 0.756378,
		-0.579979, -0.778732, 0.239168,
		46.176323, 34.319122, 34.274353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.805988, 34.243065, 33.917366>,  <46.582306, 34.864235, 34.106934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.805988, 34.243065, 33.917366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.057362, 34.554199, 33.914898>,  <47.208187, 34.740879, 33.913418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.057362, 34.554199, 33.914898>,  <46.805988, 34.243065, 33.917366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.057362, 34.554199, 33.914898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101003, -0.073739, 0.992150,
		0.771275, -0.624126, -0.124905,
		0.628437, 0.777836, -0.006166,
		47.245892, 34.787548, 33.913048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.610458, 34.183182, 34.044266>,  <46.805988, 34.243065, 33.917366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.610458, 34.183182, 34.044266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.423100, 34.501499, 34.197796>,  <47.310684, 34.692490, 34.289913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.423100, 34.501499, 34.197796>,  <47.610458, 34.183182, 34.044266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.423100, 34.501499, 34.197796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262018, -0.289769, 0.920533,
		0.843771, 0.531746, -0.072784,
		-0.468399, 0.795789, 0.383826,
		47.282581, 34.740234, 34.312943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.061020, 34.569275, 34.477970>,  <47.610458, 34.183182, 34.044266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.061020, 34.569275, 34.477970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.685356, 34.653313, 34.586670>,  <47.459957, 34.703735, 34.651890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.685356, 34.653313, 34.586670>,  <48.061020, 34.569275, 34.477970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.685356, 34.653313, 34.586670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259411, -0.084740, 0.962042,
		0.225149, 0.974001, 0.025083,
		-0.939156, 0.210096, 0.271746,
		47.403610, 34.716343, 34.668194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.012867, 35.231133, 34.837818>,  <48.061020, 34.569275, 34.477970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.012867, 35.231133, 34.837818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.745171, 34.962166, 34.964298>,  <47.584553, 34.800785, 35.040184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.745171, 34.962166, 34.964298>,  <48.012867, 35.231133, 34.837818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.745171, 34.962166, 34.964298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350982, 0.089008, 0.932142,
		-0.654928, 0.734805, 0.176437,
		-0.669239, -0.672413, 0.316197,
		47.544399, 34.760441, 35.059158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.275955, 30.468092, 30.380714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.174812, 30.805559, 30.191278>,  <37.114124, 31.008039, 30.077616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.174812, 30.805559, 30.191278>,  <37.275955, 30.468092, 30.380714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174812, 30.805559, 30.191278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096410, 0.465090, 0.879998,
		0.962687, 0.268174, -0.036264,
		-0.252859, 0.843667, -0.473591,
		37.098953, 31.058659, 30.049202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626762, 31.023979, 30.741091>,  <37.275955, 30.468092, 30.380714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626762, 31.023979, 30.741091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.344292, 31.199268, 30.518641>,  <37.174809, 31.304441, 30.385170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.344292, 31.199268, 30.518641>,  <37.626762, 31.023979, 30.741091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344292, 31.199268, 30.518641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180107, 0.648432, 0.739660,
		0.684746, 0.622492, -0.378981,
		-0.706176, 0.438222, -0.556127,
		37.132439, 31.330734, 30.351803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867218, 31.667336, 30.827007>,  <37.626762, 31.023979, 30.741091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867218, 31.667336, 30.827007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495358, 31.688408, 30.681143>,  <37.272243, 31.701052, 30.593624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495358, 31.688408, 30.681143>,  <37.867218, 31.667336, 30.827007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495358, 31.688408, 30.681143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259269, 0.609680, 0.749046,
		0.261785, 0.790895, -0.553131,
		-0.929650, 0.052679, -0.364660,
		37.216461, 31.704212, 30.571745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755505, 32.366024, 30.735626>,  <37.867218, 31.667336, 30.827007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755505, 32.366024, 30.735626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.380035, 32.229637, 30.756111>,  <37.154755, 32.147804, 30.768402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.380035, 32.229637, 30.756111>,  <37.755505, 32.366024, 30.735626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380035, 32.229637, 30.756111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138457, 0.508781, 0.849689,
		-0.315775, 0.790493, -0.524791,
		-0.938678, -0.340971, 0.051211,
		37.098431, 32.127346, 30.771475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286598, 32.908237, 30.723061>,  <37.755505, 32.366024, 30.735626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286598, 32.908237, 30.723061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098850, 32.614956, 30.919876>,  <36.986202, 32.438988, 31.037966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098850, 32.614956, 30.919876>,  <37.286598, 32.908237, 30.723061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098850, 32.614956, 30.919876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006961, 0.554145, 0.832391,
		-0.882976, 0.394121, -0.254993,
		-0.469365, -0.733207, 0.492041,
		36.958042, 32.394993, 31.067488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610626, 33.213364, 30.965693>,  <37.286598, 32.908237, 30.723061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610626, 33.213364, 30.965693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.705288, 32.903763, 31.200611>,  <36.762085, 32.718002, 31.341562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.705288, 32.903763, 31.200611>,  <36.610626, 33.213364, 30.965693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705288, 32.903763, 31.200611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105283, 0.580478, 0.807441,
		-0.965872, -0.252920, 0.055885,
		0.236658, -0.774001, 0.587295,
		36.776287, 32.671562, 31.376801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144073, 33.274372, 31.558889>,  <36.610626, 33.213364, 30.965693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144073, 33.274372, 31.558889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.445538, 33.046310, 31.689680>,  <36.626415, 32.909473, 31.768154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.445538, 33.046310, 31.689680>,  <36.144073, 33.274372, 31.558889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445538, 33.046310, 31.689680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028147, 0.525027, 0.850620,
		-0.656657, -0.631878, 0.411742,
		0.753664, -0.570155, 0.326977,
		36.671638, 32.875263, 31.787773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978806, 33.144825, 32.321026>,  <36.144073, 33.274372, 31.558889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978806, 33.144825, 32.321026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.364471, 33.049274, 32.274837>,  <36.595871, 32.991943, 32.247124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.364471, 33.049274, 32.274837>,  <35.978806, 33.144825, 32.321026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364471, 33.049274, 32.274837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173580, 0.238772, 0.955436,
		-0.200657, -0.941237, 0.271678,
		0.964161, -0.238873, -0.115468,
		36.653721, 32.977612, 32.240196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151283, 32.952785, 32.932816>,  <35.978806, 33.144825, 32.321026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151283, 32.952785, 32.932816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.517105, 32.985847, 32.774448>,  <36.736599, 33.005684, 32.679428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.517105, 32.985847, 32.774448>,  <36.151283, 32.952785, 32.932816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517105, 32.985847, 32.774448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369699, 0.226159, 0.901208,
		0.164030, -0.970577, 0.176278,
		0.914558, 0.082656, -0.395918,
		36.791473, 33.010647, 32.655674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518108, 32.479263, 33.319153>,  <36.151283, 32.952785, 32.932816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518108, 32.479263, 33.319153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.794243, 32.742455, 33.198818>,  <36.959923, 32.900368, 33.126617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.794243, 32.742455, 33.198818>,  <36.518108, 32.479263, 33.319153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794243, 32.742455, 33.198818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446025, -0.059655, 0.893030,
		0.569649, -0.750669, -0.334657,
		0.690334, 0.657979, -0.300835,
		37.001343, 32.939850, 33.108566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186207, 32.240177, 33.434929>,  <36.518108, 32.479263, 33.319153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186207, 32.240177, 33.434929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261852, 32.632950, 33.432117>,  <37.307240, 32.868614, 33.430431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261852, 32.632950, 33.432117>,  <37.186207, 32.240177, 33.434929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261852, 32.632950, 33.432117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585606, -0.107035, 0.803498,
		0.788226, -0.156069, -0.595266,
		0.189116, 0.981930, -0.007027,
		37.318588, 32.927528, 33.430008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891495, 32.250870, 33.695488>,  <37.186207, 32.240177, 33.434929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891495, 32.250870, 33.695488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775356, 32.632721, 33.721954>,  <37.705673, 32.861832, 33.737835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775356, 32.632721, 33.721954>,  <37.891495, 32.250870, 33.695488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775356, 32.632721, 33.721954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444618, 0.073353, 0.892712,
		0.847358, 0.288612, -0.445744,
		-0.290344, 0.954632, 0.066166,
		37.688251, 32.919109, 33.741802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510563, 32.643883, 33.868534>,  <37.891495, 32.250870, 33.695488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510563, 32.643883, 33.868534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.212322, 32.878902, 33.994305>,  <38.033379, 33.019913, 34.069767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.212322, 32.878902, 33.994305>,  <38.510563, 32.643883, 33.868534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212322, 32.878902, 33.994305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371051, -0.025891, 0.928251,
		0.553531, 0.808776, -0.198705,
		-0.745603, 0.587546, 0.314429,
		37.988640, 33.055164, 34.088634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813580, 33.173565, 34.193279>,  <38.510563, 32.643883, 33.868534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813580, 33.173565, 34.193279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.438515, 33.206318, 34.328381>,  <38.213474, 33.225971, 34.409443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.438515, 33.206318, 34.328381>,  <38.813580, 33.173565, 34.193279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438515, 33.206318, 34.328381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334133, -0.054943, 0.940923,
		0.095605, 0.995126, 0.024157,
		-0.937664, 0.081886, 0.337757,
		38.157215, 33.230885, 34.429707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781796, 33.763264, 34.576271>,  <38.813580, 33.173565, 34.193279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781796, 33.763264, 34.576271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.479385, 33.542393, 34.716854>,  <38.297939, 33.409870, 34.801205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.479385, 33.542393, 34.716854>,  <38.781796, 33.763264, 34.576271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479385, 33.542393, 34.716854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458366, -0.063328, 0.886505,
		-0.467251, 0.831318, 0.300977,
		-0.756027, -0.552178, 0.351458,
		38.252579, 33.376740, 34.822292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703659, 33.975929, 35.283100>,  <38.781796, 33.763264, 34.576271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703659, 33.975929, 35.283100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.485607, 33.641174, 35.263306>,  <38.354774, 33.440323, 35.251431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.485607, 33.641174, 35.263306>,  <38.703659, 33.975929, 35.283100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485607, 33.641174, 35.263306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052945, -0.024538, 0.998296,
		-0.836676, 0.546825, -0.030933,
		-0.545134, -0.836887, -0.049482,
		38.322067, 33.390106, 35.248463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076679, 33.988853, 35.766735>,  <38.703659, 33.975929, 35.283100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076679, 33.988853, 35.766735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120487, 33.596600, 35.701797>,  <38.146774, 33.361248, 35.662834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120487, 33.596600, 35.701797>,  <38.076679, 33.988853, 35.766735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120487, 33.596600, 35.701797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030729, -0.159908, 0.986654,
		-0.993509, -0.113049, 0.012620,
		0.109522, -0.980637, -0.162344,
		38.153343, 33.302410, 35.653095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535572, 33.672710, 36.078720>,  <38.076679, 33.988853, 35.766735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535572, 33.672710, 36.078720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.835117, 33.410328, 36.040916>,  <38.014843, 33.252899, 36.018234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.835117, 33.410328, 36.040916>,  <37.535572, 33.672710, 36.078720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835117, 33.410328, 36.040916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093355, -0.245599, 0.964866,
		-0.656119, -0.713727, -0.245156,
		0.748861, -0.655954, -0.094512,
		38.059776, 33.213543, 36.012562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411060, 33.109142, 36.511814>,  <37.535572, 33.672710, 36.078720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411060, 33.109142, 36.511814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.804806, 33.097843, 36.442268>,  <38.041054, 33.091064, 36.400543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.804806, 33.097843, 36.442268>,  <37.411060, 33.109142, 36.511814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804806, 33.097843, 36.442268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159169, -0.280062, 0.946694,
		-0.075436, -0.959566, -0.271187,
		0.984365, -0.028250, -0.173860,
		38.100117, 33.089367, 36.390110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616947, 32.493099, 36.879356>,  <37.411060, 33.109142, 36.511814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616947, 32.493099, 36.879356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.956104, 32.695469, 36.815956>,  <38.159599, 32.816891, 36.777916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.956104, 32.695469, 36.815956>,  <37.616947, 32.493099, 36.879356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956104, 32.695469, 36.815956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276651, -0.167180, 0.946317,
		0.452268, -0.846221, -0.281715,
		0.847890, 0.505926, -0.158498,
		38.210472, 32.847248, 36.768406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229439, 32.091488, 37.165123>,  <37.616947, 32.493099, 36.879356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229439, 32.091488, 37.165123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.360065, 32.469315, 37.151604>,  <38.438442, 32.696011, 37.143494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.360065, 32.469315, 37.151604>,  <38.229439, 32.091488, 37.165123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360065, 32.469315, 37.151604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406722, -0.108162, 0.907127,
		0.853189, -0.309983, -0.419499,
		0.326567, 0.944570, -0.033794,
		38.458035, 32.752686, 37.141464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899055, 32.025051, 37.112228>,  <38.229439, 32.091488, 37.165123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899055, 32.025051, 37.112228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.840054, 32.398361, 37.243221>,  <38.804653, 32.622345, 37.321815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.840054, 32.398361, 37.243221>,  <38.899055, 32.025051, 37.112228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840054, 32.398361, 37.243221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310856, -0.270581, 0.911128,
		0.938942, 0.236194, -0.250202,
		-0.147503, 0.933273, 0.327482,
		38.795803, 32.678345, 37.341465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152576, 31.912849, 37.785000>,  <38.899055, 32.025051, 37.112228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152576, 31.912849, 37.785000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.314018, 31.608299, 37.987942>,  <39.410885, 31.425570, 38.109707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.314018, 31.608299, 37.987942>,  <39.152576, 31.912849, 37.785000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314018, 31.608299, 37.987942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130148, -0.501112, -0.855540,
		0.905630, 0.411331, -0.103159,
		0.403605, -0.761376, 0.507356,
		39.435101, 31.379887, 38.140148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690853, 31.778429, 37.371738>,  <39.152576, 31.912849, 37.785000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690853, 31.778429, 37.371738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.599567, 31.446327, 37.575150>,  <39.544796, 31.247066, 37.697197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.599567, 31.446327, 37.575150>,  <39.690853, 31.778429, 37.371738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599567, 31.446327, 37.575150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031679, -0.515699, -0.856184,
		0.973095, -0.211505, 0.091390,
		-0.228217, -0.830253, 0.508524,
		39.531101, 31.197250, 37.727707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145512, 31.262226, 37.234993>,  <39.690853, 31.778429, 37.371738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145512, 31.262226, 37.234993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.862785, 31.022034, 37.384571>,  <39.693150, 30.877918, 37.474316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.862785, 31.022034, 37.384571>,  <40.145512, 31.262226, 37.234993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862785, 31.022034, 37.384571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110995, -0.616211, -0.779720,
		0.698634, -0.509614, 0.502199,
		-0.706817, -0.600481, 0.373942,
		39.650742, 30.841890, 37.496754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479473, 30.733877, 37.248684>,  <40.145512, 31.262226, 37.234993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479473, 30.733877, 37.248684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.096546, 30.618259, 37.248238>,  <39.866791, 30.548889, 37.247971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.096546, 30.618259, 37.248238>,  <40.479473, 30.733877, 37.248684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096546, 30.618259, 37.248238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169882, -0.559516, -0.811222,
		0.233855, -0.776785, 0.584737,
		-0.957315, -0.289044, -0.001116,
		39.809353, 30.531546, 37.247902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480347, 30.001356, 37.090393>,  <40.479473, 30.733877, 37.248684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480347, 30.001356, 37.090393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.111332, 30.139948, 37.022419>,  <39.889923, 30.223103, 36.981636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.111332, 30.139948, 37.022419>,  <40.480347, 30.001356, 37.090393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111332, 30.139948, 37.022419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029158, -0.376507, -0.925955,
		-0.384821, -0.859177, 0.337237,
		-0.922531, 0.346494, -0.169939,
		39.834572, 30.243891, 36.971439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174450, 29.418230, 36.726189>,  <40.480347, 30.001356, 37.090393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174450, 29.418230, 36.726189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.982632, 29.758152, 36.638676>,  <39.867542, 29.962105, 36.586170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.982632, 29.758152, 36.638676>,  <40.174450, 29.418230, 36.726189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982632, 29.758152, 36.638676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006085, -0.252530, -0.967570,
		-0.877495, -0.462664, 0.126271,
		-0.479547, 0.849806, -0.218778,
		39.838768, 30.013094, 36.573044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480770, 29.256962, 36.337452>,  <40.174450, 29.418230, 36.726189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480770, 29.256962, 36.337452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.549721, 29.641201, 36.250237>,  <39.591091, 29.871744, 36.197906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.549721, 29.641201, 36.250237>,  <39.480770, 29.256962, 36.337452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549721, 29.641201, 36.250237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216331, -0.179031, -0.959765,
		-0.960982, 0.212613, 0.176946,
		0.172379, 0.960596, -0.218040,
		39.601433, 29.929380, 36.184826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864403, 29.455963, 36.050407>,  <39.480770, 29.256962, 36.337452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864403, 29.455963, 36.050407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.144943, 29.713074, 35.927158>,  <39.313267, 29.867340, 35.853210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.144943, 29.713074, 35.927158>,  <38.864403, 29.455963, 36.050407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144943, 29.713074, 35.927158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288766, -0.138995, -0.947256,
		-0.651702, 0.753338, 0.088127,
		0.701355, 0.642777, -0.308122,
		39.355350, 29.905907, 35.834721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528038, 30.004122, 35.645992>,  <38.864403, 29.455963, 36.050407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528038, 30.004122, 35.645992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.900280, 29.962864, 35.505512>,  <39.123623, 29.938110, 35.421223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.900280, 29.962864, 35.505512>,  <38.528038, 30.004122, 35.645992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900280, 29.962864, 35.505512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363037, -0.137501, -0.921573,
		0.046763, 0.985117, -0.165403,
		0.930600, -0.103143, -0.351204,
		39.179459, 29.931921, 35.400150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492191, 30.350849, 35.074631>,  <38.528038, 30.004122, 35.645992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492191, 30.350849, 35.074631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.847610, 30.172108, 35.033058>,  <39.060863, 30.064863, 35.008114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.847610, 30.172108, 35.033058>,  <38.492191, 30.350849, 35.074631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847610, 30.172108, 35.033058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158004, -0.085378, -0.983740,
		0.430714, 0.890524, -0.146467,
		0.888549, -0.446854, -0.103933,
		39.114174, 30.038052, 35.001877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819855, 30.764210, 34.499649>,  <38.492191, 30.350849, 35.074631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819855, 30.764210, 34.499649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.007004, 30.412491, 34.535278>,  <39.119293, 30.201460, 34.556656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.007004, 30.412491, 34.535278>,  <38.819855, 30.764210, 34.499649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007004, 30.412491, 34.535278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028939, -0.115976, -0.992830,
		0.883324, 0.461936, -0.079707,
		0.467869, -0.879298, 0.089077,
		39.147366, 30.148701, 34.562000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117344, 30.683764, 33.821903>,  <38.819855, 30.764210, 34.499649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117344, 30.683764, 33.821903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.147610, 30.320644, 33.986916>,  <39.165768, 30.102774, 34.085922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.147610, 30.320644, 33.986916>,  <39.117344, 30.683764, 33.821903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147610, 30.320644, 33.986916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125951, -0.419102, -0.899161,
		0.989147, 0.016075, -0.146049,
		0.075663, -0.907797, 0.412529,
		39.170307, 30.048306, 34.110676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502048, 30.317736, 33.444088>,  <39.117344, 30.683764, 33.821903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502048, 30.317736, 33.444088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.267120, 30.043940, 33.616848>,  <39.126163, 29.879662, 33.720505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.267120, 30.043940, 33.616848>,  <39.502048, 30.317736, 33.444088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267120, 30.043940, 33.616848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156787, -0.427301, -0.890411,
		0.794027, -0.590668, 0.143641,
		-0.587316, -0.684489, 0.431897,
		39.090927, 29.838593, 33.746418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769569, 29.776148, 33.218964>,  <39.502048, 30.317736, 33.444088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769569, 29.776148, 33.218964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.401463, 29.666378, 33.330532>,  <39.180599, 29.600515, 33.397472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.401463, 29.666378, 33.330532>,  <39.769569, 29.776148, 33.218964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401463, 29.666378, 33.330532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161696, -0.382404, -0.909737,
		0.356316, -0.882302, 0.307541,
		-0.920268, -0.274426, 0.278921,
		39.125381, 29.584051, 33.414207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742977, 29.080841, 33.107090>,  <39.769569, 29.776148, 33.218964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742977, 29.080841, 33.107090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.357471, 29.185726, 33.126732>,  <39.126167, 29.248657, 33.138519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.357471, 29.185726, 33.126732>,  <39.742977, 29.080841, 33.107090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357471, 29.185726, 33.126732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179898, -0.502880, -0.845428,
		-0.196985, -0.823624, 0.531827,
		-0.963760, 0.262211, 0.049108,
		39.068344, 29.264389, 33.141464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521626, 28.576498, 32.787018>,  <39.742977, 29.080841, 33.107090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521626, 28.576498, 32.787018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.227242, 28.847105, 32.776478>,  <39.050613, 29.009468, 32.770153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.227242, 28.847105, 32.776478>,  <39.521626, 28.576498, 32.787018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227242, 28.847105, 32.776478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390847, -0.456318, -0.799382,
		-0.552818, -0.578012, 0.600245,
		-0.735955, 0.676517, -0.026347,
		39.006454, 29.050060, 32.768574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834217, 28.187946, 32.683884>,  <39.521626, 28.576498, 32.787018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834217, 28.187946, 32.683884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.760963, 28.562449, 32.563961>,  <38.717010, 28.787149, 32.492008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.760963, 28.562449, 32.563961>,  <38.834217, 28.187946, 32.683884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760963, 28.562449, 32.563961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374969, -0.348435, -0.859064,
		-0.908768, -0.044905, 0.414878,
		-0.183134, 0.936256, -0.299809,
		38.706024, 28.843325, 32.474018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082359, 28.219971, 32.257706>,  <38.834217, 28.187946, 32.683884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082359, 28.219971, 32.257706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278503, 28.552496, 32.153042>,  <38.396191, 28.752010, 32.090244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278503, 28.552496, 32.153042>,  <38.082359, 28.219971, 32.257706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278503, 28.552496, 32.153042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304222, -0.118074, -0.945255,
		-0.816696, 0.543121, 0.195004,
		0.490363, 0.831311, -0.261660,
		38.425613, 28.801889, 32.074543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.472458, 28.873390, 31.592022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.864674, 28.947340, 31.618464>,  <38.100002, 28.991711, 31.634329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.864674, 28.947340, 31.618464>,  <37.472458, 28.873390, 31.592022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864674, 28.947340, 31.618464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014333, 0.268385, -0.963205,
		-0.195813, 0.945405, 0.260511,
		0.980536, 0.184874, 0.066104,
		38.158836, 29.002802, 31.638294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636879, 29.531458, 31.240635>,  <37.472458, 28.873390, 31.592022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636879, 29.531458, 31.240635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.986416, 29.337955, 31.260174>,  <38.196136, 29.221855, 31.271896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.986416, 29.337955, 31.260174>,  <37.636879, 29.531458, 31.240635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986416, 29.337955, 31.260174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116704, 0.111154, -0.986927,
		0.472000, 0.868117, 0.153587,
		0.873840, -0.483754, 0.048848,
		38.248569, 29.192829, 31.274828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073917, 29.809868, 30.690510>,  <37.636879, 29.531458, 31.240635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073917, 29.809868, 30.690510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258488, 29.462694, 30.764023>,  <38.369228, 29.254389, 30.808130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258488, 29.462694, 30.764023>,  <38.073917, 29.809868, 30.690510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258488, 29.462694, 30.764023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313770, -0.034112, -0.948886,
		0.829841, 0.495505, 0.256592,
		0.461425, -0.867935, 0.183782,
		38.396915, 29.202314, 30.819157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676743, 29.903936, 30.305315>,  <38.073917, 29.809868, 30.690510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676743, 29.903936, 30.305315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.664440, 29.506458, 30.348444>,  <38.657059, 29.267971, 30.374321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.664440, 29.506458, 30.348444>,  <38.676743, 29.903936, 30.305315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664440, 29.506458, 30.348444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099242, -0.110374, -0.988923,
		0.994588, -0.019712, 0.102011,
		-0.030753, -0.993694, 0.107821,
		38.655212, 29.208349, 30.380791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187599, 29.611439, 29.907402>,  <38.676743, 29.903936, 30.305315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187599, 29.611439, 29.907402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.971523, 29.281031, 29.971758>,  <38.841877, 29.082787, 30.010370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.971523, 29.281031, 29.971758>,  <39.187599, 29.611439, 29.907402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971523, 29.281031, 29.971758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084662, -0.243556, -0.966185,
		0.837272, -0.508304, 0.201500,
		-0.540192, -0.826019, 0.160888,
		38.809467, 29.033224, 30.020025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532532, 29.073267, 29.564789>,  <39.187599, 29.611439, 29.907402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532532, 29.073267, 29.564789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.154926, 28.953873, 29.620985>,  <38.928364, 28.882236, 29.654703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.154926, 28.953873, 29.620985>,  <39.532532, 29.073267, 29.564789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154926, 28.953873, 29.620985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013628, -0.390223, -0.920620,
		0.329613, -0.870996, 0.364309,
		-0.944018, -0.298484, 0.140492,
		38.871719, 28.864328, 29.663132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500950, 28.456192, 29.311888>,  <39.532532, 29.073267, 29.564789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500950, 28.456192, 29.311888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.117657, 28.570477, 29.316931>,  <38.887680, 28.639048, 29.319956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.117657, 28.570477, 29.316931>,  <39.500950, 28.456192, 29.311888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117657, 28.570477, 29.316931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154001, -0.478352, -0.864560,
		-0.240982, -0.830392, 0.502372,
		-0.958234, 0.285709, 0.012607,
		38.830185, 28.656189, 29.320713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991371, 27.772800, 29.143703>,  <39.500950, 28.456192, 29.311888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991371, 27.772800, 29.143703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.812988, 28.118010, 29.048784>,  <38.705959, 28.325134, 28.991833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.812988, 28.118010, 29.048784>,  <38.991371, 27.772800, 29.143703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812988, 28.118010, 29.048784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169043, -0.341563, -0.924532,
		-0.878944, -0.372192, 0.298212,
		-0.445961, 0.863023, -0.237298,
		38.679199, 28.376917, 28.977594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648140, 27.471737, 28.720945>,  <38.991371, 27.772800, 29.143703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648140, 27.471737, 28.720945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.587616, 27.858543, 28.638981>,  <38.551300, 28.090628, 28.589802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.587616, 27.858543, 28.638981>,  <38.648140, 27.471737, 28.720945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587616, 27.858543, 28.638981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103490, -0.221656, -0.969618,
		-0.983054, -0.125506, 0.133615,
		-0.151309, 0.967015, -0.204911,
		38.542225, 28.148647, 28.577507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236198, 27.430820, 28.190775>,  <38.648140, 27.471737, 28.720945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236198, 27.430820, 28.190775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.371075, 27.806425, 28.163742>,  <38.452000, 28.031788, 28.147522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.371075, 27.806425, 28.163742>,  <38.236198, 27.430820, 28.190775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371075, 27.806425, 28.163742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077388, -0.099189, -0.992055,
		-0.938252, 0.329277, -0.106113,
		0.337186, 0.939009, -0.067582,
		38.472229, 28.088127, 28.143467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903316, 27.656015, 27.605207>,  <38.236198, 27.430820, 28.190775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903316, 27.656015, 27.605207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.229996, 27.879381, 27.663424>,  <38.426003, 28.013401, 27.698353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.229996, 27.879381, 27.663424>,  <37.903316, 27.656015, 27.605207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229996, 27.879381, 27.663424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246540, -0.109605, -0.962915,
		-0.521753, 0.822290, -0.227185,
		0.816696, 0.558414, 0.145541,
		38.475006, 28.046906, 27.707087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939121, 27.845245, 26.986488>,  <37.903316, 27.656015, 27.605207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939121, 27.845245, 26.986488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291607, 27.961239, 27.135815>,  <38.503098, 28.030834, 27.225410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291607, 27.961239, 27.135815>,  <37.939121, 27.845245, 26.986488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291607, 27.961239, 27.135815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356084, 0.112189, -0.927695,
		-0.310898, 0.950433, -0.004396,
		0.881219, 0.289984, 0.373314,
		38.555973, 28.048233, 27.247808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076221, 28.385180, 26.609539>,  <37.939121, 27.845245, 26.986488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076221, 28.385180, 26.609539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414127, 28.224792, 26.751297>,  <38.616871, 28.128561, 26.836351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414127, 28.224792, 26.751297>,  <38.076221, 28.385180, 26.609539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414127, 28.224792, 26.751297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355344, -0.074860, -0.931733,
		0.400123, 0.913029, 0.079241,
		0.844767, -0.400966, 0.354393,
		38.667557, 28.104502, 26.857615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631947, 28.738232, 26.269960>,  <38.076221, 28.385180, 26.609539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631947, 28.738232, 26.269960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.801594, 28.388857, 26.365658>,  <38.903381, 28.179232, 26.423077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.801594, 28.388857, 26.365658>,  <38.631947, 28.738232, 26.269960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801594, 28.388857, 26.365658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491002, -0.000205, -0.871158,
		0.760949, 0.486941, 0.428771,
		0.424115, -0.873435, 0.239245,
		38.928829, 28.126827, 26.437431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298634, 28.836870, 25.952045>,  <38.631947, 28.738232, 26.269960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298634, 28.836870, 25.952045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.271233, 28.444538, 26.025011>,  <39.254791, 28.209139, 26.068790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.271233, 28.444538, 26.025011>,  <39.298634, 28.836870, 25.952045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271233, 28.444538, 26.025011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619812, -0.185120, -0.762604,
		0.781755, 0.060820, 0.620613,
		-0.068506, -0.980832, 0.182415,
		39.250679, 28.150288, 26.079735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974266, 28.557783, 25.968058>,  <39.298634, 28.836870, 25.952045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974266, 28.557783, 25.968058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.720737, 28.261600, 25.878624>,  <39.568619, 28.083891, 25.824965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.720737, 28.261600, 25.878624>,  <39.974266, 28.557783, 25.968058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720737, 28.261600, 25.878624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510738, -0.183571, -0.839909,
		0.580874, -0.646547, 0.494532,
		-0.633823, -0.740458, -0.223585,
		39.530590, 28.039463, 25.811548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391464, 28.173826, 25.682106>,  <39.974266, 28.557783, 25.968058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391464, 28.173826, 25.682106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.030731, 28.027100, 25.590773>,  <39.814289, 27.939064, 25.535973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.030731, 28.027100, 25.590773>,  <40.391464, 28.173826, 25.682106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030731, 28.027100, 25.590773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366260, -0.368637, -0.854377,
		0.229227, -0.854138, 0.466801,
		-0.901836, -0.366817, -0.228335,
		39.760181, 27.917055, 25.522272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429157, 27.461678, 25.475704>,  <40.391464, 28.173826, 25.682106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429157, 27.461678, 25.475704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.070312, 27.552809, 25.324297>,  <39.855003, 27.607487, 25.233452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.070312, 27.552809, 25.324297>,  <40.429157, 27.461678, 25.475704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070312, 27.552809, 25.324297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319565, -0.256971, -0.912055,
		-0.305061, -0.939180, 0.157726,
		-0.897116, 0.227829, -0.378521,
		39.801178, 27.621157, 25.210741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179764, 26.795435, 25.144855>,  <40.429157, 27.461678, 25.475704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179764, 26.795435, 25.144855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.025890, 27.120157, 24.969135>,  <39.933567, 27.314991, 24.863703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.025890, 27.120157, 24.969135>,  <40.179764, 26.795435, 25.144855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025890, 27.120157, 24.969135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421143, -0.269139, -0.866142,
		-0.821374, -0.518201, -0.238353,
		-0.384685, 0.811808, -0.439301,
		39.910484, 27.363699, 24.837345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072517, 26.571474, 24.500786>,  <40.179764, 26.795435, 25.144855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072517, 26.571474, 24.500786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.014683, 26.964025, 24.450205>,  <39.979980, 27.199556, 24.419857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.014683, 26.964025, 24.450205>,  <40.072517, 26.571474, 24.500786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014683, 26.964025, 24.450205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424408, -0.053934, -0.903863,
		-0.893852, -0.184357, -0.408706,
		-0.144590, 0.981378, -0.126451,
		39.971306, 27.258438, 24.412270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844433, 26.602198, 23.856356>,  <40.072517, 26.571474, 24.500786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844433, 26.602198, 23.856356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.014027, 26.955654, 23.935766>,  <40.115784, 27.167728, 23.983412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.014027, 26.955654, 23.935766>,  <39.844433, 26.602198, 23.856356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014027, 26.955654, 23.935766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264251, 0.088966, -0.960342,
		-0.866260, 0.459633, -0.195782,
		0.423987, 0.883642, 0.198526,
		40.141224, 27.220747, 23.995323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583393, 27.151636, 23.391939>,  <39.844433, 26.602198, 23.856356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583393, 27.151636, 23.391939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.930244, 27.301800, 23.522875>,  <40.138355, 27.391899, 23.601437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.930244, 27.301800, 23.522875>,  <39.583393, 27.151636, 23.391939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930244, 27.301800, 23.522875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240434, 0.260064, -0.935178,
		-0.436204, 0.889626, 0.135248,
		0.867132, 0.375410, 0.327338,
		40.190384, 27.414423, 23.621077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697174, 27.939089, 23.292276>,  <39.583393, 27.151636, 23.391939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697174, 27.939089, 23.292276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.053829, 27.758648, 23.307714>,  <40.267822, 27.650383, 23.316977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.053829, 27.758648, 23.307714>,  <39.697174, 27.939089, 23.292276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053829, 27.758648, 23.307714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256125, 0.432281, -0.864600,
		0.373338, 0.780795, 0.500977,
		0.891638, -0.451101, 0.038594,
		40.321320, 27.623318, 23.319292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220058, 28.468351, 23.288322>,  <39.697174, 27.939089, 23.292276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220058, 28.468351, 23.288322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.311272, 28.114845, 23.124882>,  <40.366001, 27.902740, 23.026817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.311272, 28.114845, 23.124882>,  <40.220058, 28.468351, 23.288322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311272, 28.114845, 23.124882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081681, 0.435542, -0.896455,
		0.970220, 0.171049, 0.171507,
		0.228036, -0.883767, -0.408601,
		40.379681, 27.849714, 23.002302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508953, 28.923203, 22.856541>,  <40.220058, 28.468351, 23.288322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508953, 28.923203, 22.856541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.358639, 29.285984, 22.780411>,  <40.268452, 29.503653, 22.734734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.358639, 29.285984, 22.780411>,  <40.508953, 28.923203, 22.856541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358639, 29.285984, 22.780411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182217, 0.129054, 0.974752,
		0.908617, 0.400974, 0.116766,
		-0.375782, 0.906953, -0.190325,
		40.245903, 29.558069, 22.723312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908306, 29.385578, 23.342844>,  <40.508953, 28.923203, 22.856541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908306, 29.385578, 23.342844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.554779, 29.534962, 23.230131>,  <40.342663, 29.624592, 23.162504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.554779, 29.534962, 23.230131>,  <40.908306, 29.385578, 23.342844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554779, 29.534962, 23.230131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091737, 0.452271, 0.887150,
		0.458756, 0.809926, -0.365463,
		-0.883814, 0.373459, -0.281782,
		40.289635, 29.646999, 23.145597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931343, 29.991282, 23.776751>,  <40.908306, 29.385578, 23.342844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931343, 29.991282, 23.776751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.549549, 29.970066, 23.659351>,  <40.320473, 29.957336, 23.588911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.549549, 29.970066, 23.659351>,  <40.931343, 29.991282, 23.776751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549549, 29.970066, 23.659351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266451, 0.593801, 0.759213,
		0.134011, 0.802862, -0.580908,
		-0.954487, -0.053041, -0.293499,
		40.263203, 29.954153, 23.571302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666805, 30.716976, 23.753202>,  <40.931343, 29.991282, 23.776751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666805, 30.716976, 23.753202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.358929, 30.464300, 23.790186>,  <40.174202, 30.312695, 23.812376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.358929, 30.464300, 23.790186>,  <40.666805, 30.716976, 23.753202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358929, 30.464300, 23.790186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366451, 0.555728, 0.746244,
		-0.522777, 0.540494, -0.659220,
		-0.769687, -0.631691, 0.092457,
		40.128021, 30.274794, 23.817923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068298, 31.137386, 23.784176>,  <40.666805, 30.716976, 23.753202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068298, 31.137386, 23.784176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.973618, 30.790998, 23.960388>,  <39.916809, 30.583166, 24.066116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.973618, 30.790998, 23.960388>,  <40.068298, 31.137386, 23.784176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973618, 30.790998, 23.960388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271747, 0.494325, 0.825709,
		-0.932806, 0.075730, -0.352331,
		-0.236698, -0.865972, 0.440530,
		39.902607, 30.531206, 24.092546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378525, 31.270401, 24.146534>,  <40.068298, 31.137386, 23.784176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378525, 31.270401, 24.146534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.512638, 30.929886, 24.307972>,  <39.593105, 30.725576, 24.404835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.512638, 30.929886, 24.307972>,  <39.378525, 31.270401, 24.146534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512638, 30.929886, 24.307972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304941, 0.307270, 0.901441,
		-0.891400, -0.425314, -0.156569,
		0.335287, -0.851289, 0.403596,
		39.613224, 30.674500, 24.429050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820797, 30.979252, 24.519344>,  <39.378525, 31.270401, 24.146534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820797, 30.979252, 24.519344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135719, 30.795982, 24.684376>,  <39.324673, 30.686020, 24.783396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135719, 30.795982, 24.684376>,  <38.820797, 30.979252, 24.519344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135719, 30.795982, 24.684376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413295, 0.104388, 0.904594,
		-0.457530, -0.882712, -0.107176,
		0.787308, -0.458174, 0.412580,
		39.371910, 30.658529, 24.808149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511452, 30.470310, 24.974031>,  <38.820797, 30.979252, 24.519344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511452, 30.470310, 24.974031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.895641, 30.477520, 25.085142>,  <39.126156, 30.481846, 25.151808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.895641, 30.477520, 25.085142>,  <38.511452, 30.470310, 24.974031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895641, 30.477520, 25.085142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278029, 0.013547, 0.960477,
		0.013547, -0.999746, 0.018023,
		-0.960477, -0.018023, -0.277775,
		39.183784, 30.482927, 25.168474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587013, 29.963995, 25.528099>,  <38.511452, 30.470310, 24.974031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587013, 29.963995, 25.528099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.901424, 30.208469, 25.565210>,  <39.090073, 30.355154, 25.587477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.901424, 30.208469, 25.565210>,  <38.587013, 29.963995, 25.528099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901424, 30.208469, 25.565210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011382, -0.164367, 0.986334,
		0.618085, -0.774231, -0.136153,
		0.786029, 0.611187, 0.092780,
		39.137234, 30.391825, 25.593044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092289, 29.620373, 25.926151>,  <38.587013, 29.963995, 25.528099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092289, 29.620373, 25.926151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.156162, 30.013441, 25.963791>,  <39.194489, 30.249283, 25.986374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.156162, 30.013441, 25.963791>,  <39.092289, 29.620373, 25.926151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156162, 30.013441, 25.963791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032849, -0.089980, 0.995402,
		0.986621, -0.162042, 0.017911,
		0.159686, 0.982673, 0.094099,
		39.204067, 30.308243, 25.992022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436016, 29.731762, 26.529148>,  <39.092289, 29.620373, 25.926151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436016, 29.731762, 26.529148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.321739, 30.110003, 26.466900>,  <39.253174, 30.336946, 26.429550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.321739, 30.110003, 26.466900>,  <39.436016, 29.731762, 26.529148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321739, 30.110003, 26.466900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358842, 0.045021, 0.932312,
		0.888602, 0.322196, 0.326459,
		-0.285689, 0.945602, -0.155623,
		39.236031, 30.393682, 26.420214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512165, 29.961800, 27.143875>,  <39.436016, 29.731762, 26.529148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512165, 29.961800, 27.143875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.276909, 30.232916, 26.967379>,  <39.135754, 30.395586, 26.861481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.276909, 30.232916, 26.967379>,  <39.512165, 29.961800, 27.143875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276909, 30.232916, 26.967379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473932, 0.153248, 0.867124,
		0.655346, 0.719109, 0.231094,
		-0.588142, 0.677789, -0.441239,
		39.100468, 30.436253, 26.835007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541382, 30.538656, 27.657927>,  <39.512165, 29.961800, 27.143875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541382, 30.538656, 27.657927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.219055, 30.608776, 27.431677>,  <39.025658, 30.650848, 27.295927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.219055, 30.608776, 27.431677>,  <39.541382, 30.538656, 27.657927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219055, 30.608776, 27.431677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475864, 0.376798, 0.794718,
		0.352442, 0.909556, -0.220210,
		-0.805815, 0.175302, -0.565625,
		38.977310, 30.661367, 27.261990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263832, 31.221630, 27.849468>,  <39.541382, 30.538656, 27.657927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263832, 31.221630, 27.849468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949715, 31.031389, 27.690922>,  <38.761242, 30.917244, 27.595793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949715, 31.031389, 27.690922>,  <39.263832, 31.221630, 27.849468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949715, 31.031389, 27.690922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590831, 0.384394, 0.709338,
		-0.185002, 0.791229, -0.582865,
		-0.785298, -0.475604, -0.396368,
		38.714127, 30.888708, 27.572012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604889, 31.667542, 27.934446>,  <39.263832, 31.221630, 27.849468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604889, 31.667542, 27.934446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.431652, 31.325535, 27.820343>,  <38.327709, 31.120331, 27.751881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.431652, 31.325535, 27.820343>,  <38.604889, 31.667542, 27.934446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431652, 31.325535, 27.820343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695780, 0.115950, 0.708834,
		-0.572990, 0.505471, -0.645122,
		-0.433097, -0.855018, -0.285258,
		38.301723, 31.069029, 27.734766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922539, 31.823389, 27.920298>,  <38.604889, 31.667542, 27.934446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922539, 31.823389, 27.920298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.886524, 31.425396, 27.937729>,  <37.864918, 31.186600, 27.948189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.886524, 31.425396, 27.937729>,  <37.922539, 31.823389, 27.920298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886524, 31.425396, 27.937729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803686, 0.098426, 0.586857,
		-0.588203, 0.017811, -0.808517,
		-0.090032, -0.994985, 0.043580,
		37.859516, 31.126900, 27.950804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205910, 31.609293, 27.999796>,  <37.922539, 31.823389, 27.920298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205910, 31.609293, 27.999796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.400078, 31.289711, 28.141802>,  <37.516579, 31.097961, 28.227005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.400078, 31.289711, 28.141802>,  <37.205910, 31.609293, 27.999796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400078, 31.289711, 28.141802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690653, -0.101445, 0.716036,
		-0.536067, -0.592771, -0.601045,
		0.485418, -0.798957, 0.355017,
		37.545704, 31.050024, 28.248306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711578, 31.067587, 28.242420>,  <37.205910, 31.609293, 27.999796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711578, 31.067587, 28.242420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.041687, 31.010975, 28.461105>,  <37.239754, 30.977009, 28.592316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.041687, 31.010975, 28.461105>,  <36.711578, 31.067587, 28.242420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041687, 31.010975, 28.461105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547286, 0.038352, 0.836067,
		-0.139296, -0.989191, -0.045806,
		0.825273, -0.141530, 0.546712,
		37.289268, 30.968517, 28.625118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485229, 30.649355, 28.711601>,  <36.711578, 31.067587, 28.242420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485229, 30.649355, 28.711601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.827244, 30.812206, 28.840080>,  <37.032452, 30.909918, 28.917168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.827244, 30.812206, 28.840080>,  <36.485229, 30.649355, 28.711601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827244, 30.812206, 28.840080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422652, 0.188222, 0.886531,
		0.300480, -0.893765, 0.333011,
		0.855030, 0.407133, 0.321195,
		37.083752, 30.934345, 28.936440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443314, 30.483019, 29.343266>,  <36.485229, 30.649355, 28.711601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443314, 30.483019, 29.343266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.671341, 30.810669, 29.317820>,  <36.808159, 31.007259, 29.302551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.671341, 30.810669, 29.317820>,  <36.443314, 30.483019, 29.343266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671341, 30.810669, 29.317820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521582, 0.420643, 0.742302,
		0.634799, -0.389986, 0.667039,
		0.570073, 0.819128, -0.063615,
		36.842361, 31.056408, 29.298735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.072468, 28.878359, 34.564236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.120422, 29.246410, 34.415108>,  <39.149193, 29.467241, 34.325630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.120422, 29.246410, 34.415108>,  <39.072468, 28.878359, 34.564236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120422, 29.246410, 34.415108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493711, 0.270547, 0.826470,
		0.861323, -0.283145, -0.421843,
		0.119883, 0.920127, -0.372820,
		39.156387, 29.522448, 34.303261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736622, 29.002497, 34.613953>,  <39.072468, 28.878359, 34.564236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736622, 29.002497, 34.613953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.551132, 29.356312, 34.593754>,  <39.439838, 29.568602, 34.581635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.551132, 29.356312, 34.593754>,  <39.736622, 29.002497, 34.613953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551132, 29.356312, 34.593754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405806, 0.262720, 0.875385,
		0.787579, 0.385447, -0.480781,
		-0.463725, 0.884539, -0.050496,
		39.412014, 29.621674, 34.578606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268459, 29.613913, 34.734543>,  <39.736622, 29.002497, 34.613953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268459, 29.613913, 34.734543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.895191, 29.716717, 34.835049>,  <39.671230, 29.778399, 34.895351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.895191, 29.716717, 34.835049>,  <40.268459, 29.613913, 34.734543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895191, 29.716717, 34.835049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329563, 0.332822, 0.883526,
		0.143446, 0.907291, -0.395281,
		-0.933173, 0.257009, 0.251267,
		39.615238, 29.793819, 34.910427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398163, 30.124874, 35.064159>,  <40.268459, 29.613913, 34.734543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398163, 30.124874, 35.064159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.017803, 30.065363, 35.172714>,  <39.789585, 30.029655, 35.237846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.017803, 30.065363, 35.172714>,  <40.398163, 30.124874, 35.064159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017803, 30.065363, 35.172714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225021, 0.269696, 0.936285,
		-0.212493, 0.951383, -0.222976,
		-0.950901, -0.148780, 0.271390,
		39.732533, 30.020729, 35.254131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321121, 30.750504, 35.508171>,  <40.398163, 30.124874, 35.064159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321121, 30.750504, 35.508171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.016117, 30.506088, 35.593224>,  <39.833115, 30.359440, 35.644253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.016117, 30.506088, 35.593224>,  <40.321121, 30.750504, 35.508171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016117, 30.506088, 35.593224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000483, 0.328109, 0.944640,
		-0.646976, 0.720400, -0.249891,
		-0.762510, -0.611039, 0.212627,
		39.787365, 30.322777, 35.657013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699669, 31.136618, 35.769920>,  <40.321121, 30.750504, 35.508171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699669, 31.136618, 35.769920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.673336, 30.762878, 35.910011>,  <39.657536, 30.538635, 35.994064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.673336, 30.762878, 35.910011>,  <39.699669, 31.136618, 35.769920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673336, 30.762878, 35.910011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020704, 0.352192, 0.935699,
		-0.997616, 0.054344, -0.042529,
		-0.065828, -0.934349, 0.350227,
		39.653587, 30.482574, 36.015079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201984, 31.125124, 36.310780>,  <39.699669, 31.136618, 35.769920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201984, 31.125124, 36.310780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.394436, 30.784199, 36.392826>,  <39.509907, 30.579643, 36.442055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.394436, 30.784199, 36.392826>,  <39.201984, 31.125124, 36.310780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394436, 30.784199, 36.392826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103295, 0.177228, 0.978734,
		-0.870541, -0.492088, -0.002770,
		0.481133, -0.852314, 0.205114,
		39.538776, 30.528505, 36.454361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683712, 30.721760, 36.728355>,  <39.201984, 31.125124, 36.310780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683712, 30.721760, 36.728355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.049488, 30.581993, 36.810043>,  <39.268955, 30.498133, 36.859055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.049488, 30.581993, 36.810043>,  <38.683712, 30.721760, 36.728355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049488, 30.581993, 36.810043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215515, 0.006692, 0.976478,
		-0.342565, -0.936943, -0.069185,
		0.914441, -0.349418, 0.204218,
		39.323822, 30.477167, 36.871307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606155, 30.094061, 37.208405>,  <38.683712, 30.721760, 36.728355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606155, 30.094061, 37.208405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.967064, 30.264919, 37.231895>,  <39.183609, 30.367435, 37.245991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.967064, 30.264919, 37.231895>,  <38.606155, 30.094061, 37.208405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967064, 30.264919, 37.231895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137757, 0.156515, 0.978022,
		0.408568, -0.890532, 0.200062,
		0.902272, 0.427148, 0.058731,
		39.237747, 30.393064, 37.249516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959698, 29.809425, 37.791470>,  <38.606155, 30.094061, 37.208405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959698, 29.809425, 37.791470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.153248, 30.152382, 37.721329>,  <39.269379, 30.358156, 37.679245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.153248, 30.152382, 37.721329>,  <38.959698, 29.809425, 37.791470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153248, 30.152382, 37.721329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085331, 0.245635, 0.965599,
		0.870969, -0.452264, 0.192018,
		0.483872, 0.857392, -0.175348,
		39.298409, 30.409599, 37.668724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182446, 30.105497, 38.394844>,  <38.959698, 29.809425, 37.791470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182446, 30.105497, 38.394844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.296494, 30.438171, 38.204266>,  <39.364922, 30.637775, 38.089916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.296494, 30.438171, 38.204266>,  <39.182446, 30.105497, 38.394844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296494, 30.438171, 38.204266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255921, 0.412980, 0.874044,
		0.923694, -0.371143, -0.095096,
		0.285122, 0.831685, -0.476450,
		39.382030, 30.687677, 38.061329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753246, 30.286863, 38.708614>,  <39.182446, 30.105497, 38.394844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753246, 30.286863, 38.708614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.659595, 30.631924, 38.529274>,  <39.603405, 30.838961, 38.421669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.659595, 30.631924, 38.529274>,  <39.753246, 30.286863, 38.708614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659595, 30.631924, 38.529274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285493, 0.501841, 0.816486,
		0.929342, 0.063164, -0.363777,
		-0.234131, 0.862650, -0.448349,
		39.589355, 30.890718, 38.394768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284794, 30.732557, 38.620018>,  <39.753246, 30.286863, 38.708614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284794, 30.732557, 38.620018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.933708, 30.913319, 38.683769>,  <39.723057, 31.021776, 38.722019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.933708, 30.913319, 38.683769>,  <40.284794, 30.732557, 38.620018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933708, 30.913319, 38.683769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245857, 0.139205, 0.959258,
		0.411306, 0.881139, -0.233286,
		-0.877714, 0.451903, 0.159378,
		39.670395, 31.048889, 38.731583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369785, 31.410360, 38.955364>,  <40.284794, 30.732557, 38.620018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369785, 31.410360, 38.955364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.024822, 31.235155, 39.056870>,  <39.817844, 31.130032, 39.117771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.024822, 31.235155, 39.056870>,  <40.369785, 31.410360, 38.955364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024822, 31.235155, 39.056870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210212, 0.146151, 0.966670,
		-0.460500, 0.887010, -0.033967,
		-0.862410, -0.438011, 0.253763,
		39.766098, 31.103752, 39.132999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031773, 31.460815, 39.336361>,  <40.369785, 31.410360, 38.955364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031773, 31.460815, 39.336361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.425838, 31.523071, 39.365257>,  <41.662277, 31.560425, 39.382595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.425838, 31.523071, 39.365257>,  <41.031773, 31.460815, 39.336361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425838, 31.523071, 39.365257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010968, 0.477253, -0.878697,
		-0.171237, 0.864873, 0.471882,
		0.985169, 0.155641, 0.072237,
		41.721390, 31.569763, 39.386929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191540, 32.168007, 39.143452>,  <41.031773, 31.460815, 39.336361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191540, 32.168007, 39.143452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.528496, 31.958134, 39.094330>,  <41.730671, 31.832211, 39.064857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.528496, 31.958134, 39.094330>,  <41.191540, 32.168007, 39.143452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528496, 31.958134, 39.094330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141754, 0.435643, -0.888888,
		0.519883, 0.731385, 0.441358,
		0.842394, -0.524682, -0.122807,
		41.781216, 31.800730, 39.057487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618019, 32.630943, 38.837265>,  <41.191540, 32.168007, 39.143452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618019, 32.630943, 38.837265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.784988, 32.275078, 38.763237>,  <41.885170, 32.061558, 38.718819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.784988, 32.275078, 38.763237>,  <41.618019, 32.630943, 38.837265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784988, 32.275078, 38.763237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167173, 0.275372, -0.946691,
		0.893205, 0.364227, 0.263674,
		0.417419, -0.889668, -0.185075,
		41.910213, 32.008179, 38.707714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113293, 32.812691, 38.509674>,  <41.618019, 32.630943, 38.837265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113293, 32.812691, 38.509674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.058620, 32.432159, 38.399185>,  <42.025818, 32.203842, 38.332893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.058620, 32.432159, 38.399185>,  <42.113293, 32.812691, 38.509674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058620, 32.432159, 38.399185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025131, 0.275416, -0.960997,
		0.990297, -0.138289, -0.013735,
		-0.136678, -0.951326, -0.276219,
		42.017616, 32.146763, 38.316319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628929, 32.636379, 37.922089>,  <42.113293, 32.812691, 38.509674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628929, 32.636379, 37.922089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347820, 32.354881, 37.880428>,  <42.179153, 32.185982, 37.855431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347820, 32.354881, 37.880428>,  <42.628929, 32.636379, 37.922089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347820, 32.354881, 37.880428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059944, 0.087306, -0.994376,
		0.708884, -0.705065, -0.019171,
		-0.702773, -0.703748, -0.104154,
		42.136990, 32.143757, 37.849182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846638, 32.087891, 37.436302>,  <42.628929, 32.636379, 37.922089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846638, 32.087891, 37.436302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.446838, 32.087017, 37.423622>,  <42.206959, 32.086494, 37.416016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.446838, 32.087017, 37.423622>,  <42.846638, 32.087891, 37.436302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446838, 32.087017, 37.423622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031509, -0.196750, -0.979947,
		-0.004101, -0.980451, 0.196719,
		-0.999495, -0.002180, -0.031700,
		42.146992, 32.086365, 37.414112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701672, 31.524246, 37.064770>,  <42.846638, 32.087891, 37.436302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701672, 31.524246, 37.064770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.366814, 31.742596, 37.050880>,  <42.165897, 31.873606, 37.042549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.366814, 31.742596, 37.050880>,  <42.701672, 31.524246, 37.064770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366814, 31.742596, 37.050880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150405, -0.290763, -0.944900,
		-0.525891, -0.785799, 0.325514,
		-0.837148, 0.545873, -0.034721,
		42.115669, 31.906359, 37.040462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313160, 31.167694, 36.570518>,  <42.701672, 31.524246, 37.064770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313160, 31.167694, 36.570518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.112339, 31.512514, 36.598274>,  <41.991848, 31.719406, 36.614929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.112339, 31.512514, 36.598274>,  <42.313160, 31.167694, 36.570518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112339, 31.512514, 36.598274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218400, -0.048738, -0.974642,
		-0.836809, -0.504473, 0.212741,
		-0.502049, 0.862051, 0.069392,
		41.961723, 31.771130, 36.619091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626900, 31.056673, 36.271202>,  <42.313160, 31.167694, 36.570518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626900, 31.056673, 36.271202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.646019, 31.455482, 36.247009>,  <41.657490, 31.694769, 36.232494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.646019, 31.455482, 36.247009>,  <41.626900, 31.056673, 36.271202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646019, 31.455482, 36.247009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389427, -0.037160, -0.920308,
		-0.919816, 0.067540, 0.386492,
		0.047795, 0.997024, -0.060483,
		41.660358, 31.754589, 36.228863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957073, 31.262440, 36.072186>,  <41.626900, 31.056673, 36.271202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957073, 31.262440, 36.072186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.200336, 31.563242, 35.970493>,  <41.346294, 31.743723, 35.909477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.200336, 31.563242, 35.970493>,  <40.957073, 31.262440, 36.072186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200336, 31.563242, 35.970493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463728, 0.076625, -0.882658,
		-0.644282, 0.654690, 0.395325,
		0.608159, 0.752004, -0.254230,
		41.382786, 31.788843, 35.894226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509743, 31.795706, 35.934578>,  <40.957073, 31.262440, 36.072186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509743, 31.795706, 35.934578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.845280, 31.913172, 35.751232>,  <41.046600, 31.983652, 35.641224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.845280, 31.913172, 35.751232>,  <40.509743, 31.795706, 35.934578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845280, 31.913172, 35.751232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515046, 0.155503, -0.842939,
		-0.176264, 0.943176, 0.281693,
		0.838844, 0.293665, -0.458369,
		41.096931, 32.001270, 35.613720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401157, 32.527210, 35.588428>,  <40.509743, 31.795706, 35.934578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401157, 32.527210, 35.588428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.700981, 32.334656, 35.406693>,  <40.880875, 32.219124, 35.297653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.700981, 32.334656, 35.406693>,  <40.401157, 32.527210, 35.588428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700981, 32.334656, 35.406693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332955, 0.319030, -0.887334,
		0.572098, 0.816386, 0.078853,
		0.749563, -0.481387, -0.454336,
		40.925850, 32.190239, 35.270393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734787, 33.031670, 35.217834>,  <40.401157, 32.527210, 35.588428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734787, 33.031670, 35.217834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.825001, 32.682991, 35.043812>,  <40.879128, 32.473782, 34.939400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.825001, 32.682991, 35.043812>,  <40.734787, 33.031670, 35.217834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825001, 32.682991, 35.043812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234719, 0.384789, -0.892661,
		0.945538, 0.303439, -0.117823,
		0.225531, -0.871701, -0.435055,
		40.892658, 32.421482, 34.913296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414131, 33.041191, 34.801674>,  <40.734787, 33.031670, 35.217834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414131, 33.041191, 34.801674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.221119, 32.724339, 34.652168>,  <41.105312, 32.534229, 34.562466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.221119, 32.724339, 34.652168>,  <41.414131, 33.041191, 34.801674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221119, 32.724339, 34.652168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142950, 0.492232, -0.858646,
		0.864138, -0.360888, -0.350750,
		-0.482525, -0.792128, -0.373768,
		41.076363, 32.486702, 34.540039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205551, 33.583164, 34.578186>,  <41.414131, 33.041191, 34.801674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205551, 33.583164, 34.578186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.244892, 33.959316, 34.447945>,  <41.268497, 34.185005, 34.369801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.244892, 33.959316, 34.447945>,  <41.205551, 33.583164, 34.578186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244892, 33.959316, 34.447945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353925, 0.338851, 0.871732,
		0.930088, 0.029502, 0.366150,
		0.098353, 0.940377, -0.325603,
		41.274399, 34.241428, 34.350266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498131, 33.921623, 35.119846>,  <41.205551, 33.583164, 34.578186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498131, 33.921623, 35.119846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.370113, 34.227077, 34.895550>,  <41.293304, 34.410351, 34.760971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.370113, 34.227077, 34.895550>,  <41.498131, 33.921623, 35.119846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370113, 34.227077, 34.895550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511349, 0.359025, 0.780784,
		0.797556, 0.536617, 0.275583,
		-0.320041, 0.763638, -0.560741,
		41.274101, 34.456169, 34.727329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591282, 34.501797, 35.545658>,  <41.498131, 33.921623, 35.119846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591282, 34.501797, 35.545658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.310509, 34.602764, 35.279251>,  <41.142044, 34.663345, 35.119408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.310509, 34.602764, 35.279251>,  <41.591282, 34.501797, 35.545658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310509, 34.602764, 35.279251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449187, 0.568798, 0.688985,
		0.552740, 0.782786, -0.285875,
		-0.701932, 0.252418, -0.666015,
		41.099930, 34.678490, 35.079445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553322, 35.237366, 35.618454>,  <41.591282, 34.501797, 35.545658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553322, 35.237366, 35.618454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.212994, 35.130859, 35.437256>,  <41.008797, 35.066956, 35.328537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.212994, 35.130859, 35.437256>,  <41.553322, 35.237366, 35.618454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212994, 35.130859, 35.437256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495454, 0.693660, 0.522839,
		0.175012, 0.669281, -0.722103,
		-0.850821, -0.266265, -0.452997,
		40.957748, 35.050980, 35.301357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353138, 35.804871, 35.338146>,  <41.553322, 35.237366, 35.618454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353138, 35.804871, 35.338146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.023884, 35.583359, 35.388378>,  <40.826332, 35.450451, 35.418518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.023884, 35.583359, 35.388378>,  <41.353138, 35.804871, 35.338146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023884, 35.583359, 35.388378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426429, 0.748875, 0.507291,
		-0.374972, 0.364020, -0.852576,
		-0.823137, -0.553784, 0.125579,
		40.776943, 35.417225, 35.426052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835964, 36.125725, 34.940273>,  <41.353138, 35.804871, 35.338146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835964, 36.125725, 34.940273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.650387, 35.893600, 35.208004>,  <40.539040, 35.754326, 35.368641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.650387, 35.893600, 35.208004>,  <40.835964, 36.125725, 34.940273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650387, 35.893600, 35.208004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604748, 0.759590, 0.239381,
		-0.647329, -0.293714, -0.703348,
		-0.463946, -0.580306, 0.669327,
		40.511204, 35.719509, 35.408802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265141, 36.387344, 35.013813>,  <40.835964, 36.125725, 34.940273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265141, 36.387344, 35.013813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.188370, 36.147991, 35.324966>,  <40.142307, 36.004379, 35.511658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.188370, 36.147991, 35.324966>,  <40.265141, 36.387344, 35.013813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188370, 36.147991, 35.324966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715404, 0.627896, 0.306502,
		-0.671835, -0.497673, -0.548597,
		-0.191924, -0.598387, 0.777880,
		40.130791, 35.968475, 35.558331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607807, 36.328613, 35.051868>,  <40.265141, 36.387344, 35.013813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607807, 36.328613, 35.051868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.756355, 36.258102, 35.416508>,  <39.845482, 36.215794, 35.635292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.756355, 36.258102, 35.416508>,  <39.607807, 36.328613, 35.051868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756355, 36.258102, 35.416508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716829, 0.569578, 0.402165,
		-0.590120, -0.802811, 0.085160,
		0.371368, -0.176281, 0.911598,
		39.867767, 36.205219, 35.689987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952808, 36.242229, 35.433659>,  <39.607807, 36.328613, 35.051868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952808, 36.242229, 35.433659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.258656, 36.298851, 35.685158>,  <39.442162, 36.332825, 35.836060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.258656, 36.298851, 35.685158>,  <38.952808, 36.242229, 35.433659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258656, 36.298851, 35.685158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574662, 0.591402, 0.565691,
		-0.291766, -0.793855, 0.533542,
		0.764615, 0.141557, 0.628750,
		39.488041, 36.341316, 35.873783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613407, 36.428932, 36.120159>,  <38.952808, 36.242229, 35.433659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613407, 36.428932, 36.120159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.985428, 36.572323, 36.152382>,  <39.208641, 36.658360, 36.171715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.985428, 36.572323, 36.152382>,  <38.613407, 36.428932, 36.120159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985428, 36.572323, 36.152382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338485, 0.750686, 0.567360,
		0.142918, -0.554942, 0.819520,
		0.930055, 0.358481, 0.080553,
		39.264442, 36.679867, 36.176548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576790, 36.675816, 36.708042>,  <38.613407, 36.428932, 36.120159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576790, 36.675816, 36.708042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.915794, 36.851654, 36.589062>,  <39.119198, 36.957157, 36.517673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.915794, 36.851654, 36.589062>,  <38.576790, 36.675816, 36.708042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915794, 36.851654, 36.589062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273765, 0.842157, 0.464570,
		0.454719, -0.312300, 0.834086,
		0.847516, 0.439592, -0.297448,
		39.170048, 36.983532, 36.499828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801838, 36.957684, 37.333256>,  <38.576790, 36.675816, 36.708042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801838, 36.957684, 37.333256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.942368, 37.162834, 37.019943>,  <39.026684, 37.285927, 36.831955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.942368, 37.162834, 37.019943>,  <38.801838, 36.957684, 37.333256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942368, 37.162834, 37.019943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346282, 0.848465, 0.400244,
		0.869864, 0.130622, 0.475684,
		0.351320, 0.512879, -0.783281,
		39.047764, 37.316696, 36.784958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.472469, 33.017895, 31.418926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238621, 33.281982, 31.230324>,  <43.098312, 33.440437, 31.117163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238621, 33.281982, 31.230324>,  <43.472469, 33.017895, 31.418926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238621, 33.281982, 31.230324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277329, 0.383535, 0.880903,
		0.762432, 0.645760, -0.041125,
		-0.584625, 0.660223, -0.471507,
		43.063232, 33.480049, 31.088871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573509, 33.658905, 31.814903>,  <43.472469, 33.017895, 31.418926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573509, 33.658905, 31.814903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223351, 33.676624, 31.622353>,  <43.013256, 33.687256, 31.506823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223351, 33.676624, 31.622353>,  <43.573509, 33.658905, 31.814903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223351, 33.676624, 31.622353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386599, 0.533671, 0.752155,
		0.290216, 0.844531, -0.450046,
		-0.875394, 0.044300, -0.481375,
		42.960732, 33.689915, 31.477940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342083, 34.313854, 31.986254>,  <43.573509, 33.658905, 31.814903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342083, 34.313854, 31.986254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015083, 34.124302, 31.855331>,  <42.818882, 34.010571, 31.776777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015083, 34.124302, 31.855331>,  <43.342083, 34.313854, 31.986254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015083, 34.124302, 31.855331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556693, 0.504519, 0.659965,
		-0.147614, 0.721730, -0.676252,
		-0.817498, -0.473885, -0.327308,
		42.769833, 33.982136, 31.757139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668182, 34.811890, 31.866957>,  <43.342083, 34.313854, 31.986254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668182, 34.811890, 31.866957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529587, 34.443859, 31.940065>,  <42.446430, 34.223042, 31.983931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529587, 34.443859, 31.940065>,  <42.668182, 34.811890, 31.866957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529587, 34.443859, 31.940065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651821, 0.376264, 0.658448,
		-0.674594, 0.109009, -0.730096,
		-0.346486, -0.920077, 0.182771,
		42.425640, 34.167835, 31.994896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215355, 34.947140, 32.291851>,  <42.668182, 34.811890, 31.866957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215355, 34.947140, 32.291851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191586, 34.548679, 32.317635>,  <42.177322, 34.309605, 32.333103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191586, 34.548679, 32.317635>,  <42.215355, 34.947140, 32.291851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191586, 34.548679, 32.317635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570574, 0.086883, 0.816637,
		-0.819093, 0.011752, -0.573540,
		-0.059428, -0.996149, 0.064460,
		42.173756, 34.249836, 32.336971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481667, 34.682449, 32.293293>,  <42.215355, 34.947140, 32.291851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481667, 34.682449, 32.293293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710827, 34.419666, 32.489330>,  <41.848324, 34.261997, 32.606953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710827, 34.419666, 32.489330>,  <41.481667, 34.682449, 32.293293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710827, 34.419666, 32.489330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552923, 0.131615, 0.822772,
		-0.605032, -0.742348, -0.287847,
		0.572898, -0.656961, 0.490092,
		41.882698, 34.222580, 32.636356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993698, 34.416164, 32.676655>,  <41.481667, 34.682449, 32.293293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993698, 34.416164, 32.676655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338673, 34.294544, 32.838524>,  <41.545658, 34.221573, 32.935646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338673, 34.294544, 32.838524>,  <40.993698, 34.416164, 32.676655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338673, 34.294544, 32.838524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409612, 0.050437, 0.910865,
		-0.297361, -0.951319, -0.081045,
		0.862435, -0.304053, 0.404670,
		41.597404, 34.203327, 32.959927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836193, 33.926155, 33.136650>,  <40.993698, 34.416164, 32.676655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836193, 33.926155, 33.136650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185333, 34.082314, 33.253765>,  <41.394817, 34.176010, 33.324036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185333, 34.082314, 33.253765>,  <40.836193, 33.926155, 33.136650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185333, 34.082314, 33.253765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358473, 0.105852, 0.927519,
		0.331110, -0.914540, 0.232340,
		0.872848, 0.390399, 0.292790,
		41.447189, 34.199432, 33.341602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954189, 33.542076, 33.763229>,  <40.836193, 33.926155, 33.136650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954189, 33.542076, 33.763229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163334, 33.882683, 33.778866>,  <41.288822, 34.087048, 33.788250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163334, 33.882683, 33.778866>,  <40.954189, 33.542076, 33.763229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163334, 33.882683, 33.778866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334343, 0.162678, 0.928305,
		0.784112, -0.498445, 0.369758,
		0.522861, 0.851521, 0.039094,
		41.320190, 34.138138, 33.790592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510014, 33.068607, 33.959507>,  <40.954189, 33.542076, 33.763229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510014, 33.068607, 33.959507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286160, 32.738419, 33.988914>,  <41.151848, 32.540306, 34.006557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286160, 32.738419, 33.988914>,  <41.510014, 33.068607, 33.959507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286160, 32.738419, 33.988914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170784, 0.028067, -0.984909,
		0.810949, -0.563748, -0.156685,
		-0.559638, -0.825470, 0.073518,
		41.118267, 32.490776, 34.010971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769466, 32.642632, 33.475082>,  <41.510014, 33.068607, 33.959507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769466, 32.642632, 33.475082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392773, 32.524864, 33.540138>,  <41.166756, 32.454205, 33.579170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392773, 32.524864, 33.540138>,  <41.769466, 32.642632, 33.475082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392773, 32.524864, 33.540138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206103, 0.122999, -0.970769,
		0.265812, -0.947727, -0.176513,
		-0.941735, -0.294422, 0.162635,
		41.110252, 32.436539, 33.588928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618568, 32.091782, 33.002434>,  <41.769466, 32.642632, 33.475082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618568, 32.091782, 33.002434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249714, 32.224621, 33.081810>,  <41.028400, 32.304325, 33.129436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249714, 32.224621, 33.081810>,  <41.618568, 32.091782, 33.002434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249714, 32.224621, 33.081810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186118, 0.068863, -0.980111,
		-0.339160, -0.940727, -0.001692,
		-0.922134, 0.332099, 0.198441,
		40.973072, 32.324249, 33.141342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239647, 31.618376, 32.675575>,  <41.618568, 32.091782, 33.002434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239647, 31.618376, 32.675575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032101, 31.956675, 32.725368>,  <40.907574, 32.159653, 32.755245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032101, 31.956675, 32.725368>,  <41.239647, 31.618376, 32.675575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032101, 31.956675, 32.725368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290528, -0.037509, -0.956131,
		-0.803975, -0.532266, 0.265175,
		-0.518862, 0.845746, 0.124482,
		40.876442, 32.210400, 32.762714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504135, 31.404556, 32.602280>,  <41.239647, 31.618376, 32.675575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504135, 31.404556, 32.602280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502792, 31.796480, 32.522324>,  <40.501987, 32.031635, 32.474350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502792, 31.796480, 32.522324>,  <40.504135, 31.404556, 32.602280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502792, 31.796480, 32.522324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549256, -0.168851, -0.818418,
		-0.835648, 0.107044, 0.538734,
		-0.003359, 0.979812, -0.199894,
		40.501785, 32.090424, 32.462357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795406, 31.539328, 32.338600>,  <40.504135, 31.404556, 32.602280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795406, 31.539328, 32.338600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042255, 31.829388, 32.216408>,  <40.190365, 32.003426, 32.143093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042255, 31.829388, 32.216408>,  <39.795406, 31.539328, 32.338600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042255, 31.829388, 32.216408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334203, -0.109917, -0.936070,
		-0.712369, 0.679761, 0.174515,
		0.617121, 0.725151, -0.305479,
		40.227390, 32.046932, 32.124763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395256, 31.885992, 31.697079>,  <39.795406, 31.539328, 32.338600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395256, 31.885992, 31.697079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785107, 31.974546, 31.683910>,  <40.019016, 32.027679, 31.676008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785107, 31.974546, 31.683910>,  <39.395256, 31.885992, 31.697079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785107, 31.974546, 31.683910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045130, 0.050308, -0.997713,
		-0.219225, 0.973887, 0.059023,
		0.974630, 0.221387, -0.032922,
		40.077496, 32.040962, 31.674034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475330, 32.216438, 31.037991>,  <39.395256, 31.885992, 31.697079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475330, 32.216438, 31.037991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843674, 32.107544, 31.149639>,  <40.064678, 32.042210, 31.216629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843674, 32.107544, 31.149639>,  <39.475330, 32.216438, 31.037991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843674, 32.107544, 31.149639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199230, -0.286833, -0.937035,
		0.335152, 0.918486, -0.209896,
		0.920859, -0.272231, 0.279123,
		40.119930, 32.025875, 31.233376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830635, 32.451424, 30.430536>,  <39.475330, 32.216438, 31.037991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830635, 32.451424, 30.430536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070652, 32.208405, 30.638706>,  <40.214661, 32.062595, 30.763609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070652, 32.208405, 30.638706>,  <39.830635, 32.451424, 30.430536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070652, 32.208405, 30.638706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205363, -0.511770, -0.834216,
		0.773162, 0.607439, -0.182315,
		0.600039, -0.607543, 0.520427,
		40.250664, 32.026142, 30.794834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502125, 32.447121, 30.050997>,  <39.830635, 32.451424, 30.430536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502125, 32.447121, 30.050997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472408, 32.113483, 30.269638>,  <40.454578, 31.913301, 30.400824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472408, 32.113483, 30.269638>,  <40.502125, 32.447121, 30.050997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472408, 32.113483, 30.269638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161153, -0.550955, -0.818827,
		0.984129, 0.027252, 0.175349,
		-0.074295, -0.834090, 0.546602,
		40.450119, 31.863256, 30.433619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962315, 32.155472, 29.750456>,  <40.502125, 32.447121, 30.050997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962315, 32.155472, 29.750456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796124, 31.864347, 29.968693>,  <40.696407, 31.689672, 30.099634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796124, 31.864347, 29.968693>,  <40.962315, 32.155472, 29.750456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796124, 31.864347, 29.968693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175954, -0.652792, -0.736820,
		0.892422, -0.210135, 0.399283,
		-0.415480, -0.727809, 0.545592,
		40.671478, 31.646006, 30.132370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445755, 31.617304, 29.828878>,  <40.962315, 32.155472, 29.750456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445755, 31.617304, 29.828878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093529, 31.440302, 29.896763>,  <40.882195, 31.334101, 29.937494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093529, 31.440302, 29.896763>,  <41.445755, 31.617304, 29.828878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093529, 31.440302, 29.896763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285447, -0.781042, -0.555422,
		0.378328, -0.440639, 0.814067,
		-0.880561, -0.442505, 0.169711,
		40.829361, 31.307550, 29.947676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536575, 30.952860, 29.945904>,  <41.445755, 31.617304, 29.828878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536575, 30.952860, 29.945904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164619, 30.938221, 29.799494>,  <40.941448, 30.929438, 29.711647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164619, 30.938221, 29.799494>,  <41.536575, 30.952860, 29.945904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164619, 30.938221, 29.799494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234033, -0.826538, -0.511922,
		-0.283798, -0.561691, 0.777150,
		-0.929886, -0.036596, -0.366024,
		40.885654, 30.927242, 29.689686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266747, 30.258017, 29.837679>,  <41.536575, 30.952860, 29.945904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266747, 30.258017, 29.837679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015347, 30.453943, 29.595995>,  <40.864506, 30.571499, 29.450985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015347, 30.453943, 29.595995>,  <41.266747, 30.258017, 29.837679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015347, 30.453943, 29.595995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090174, -0.725684, -0.682094,
		-0.772566, -0.483179, 0.411922,
		-0.628498, 0.489818, -0.604209,
		40.826797, 30.600889, 29.414732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.770813, 33.753407, 26.819403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.152966, 33.794968, 26.929998>,  <38.382259, 33.819904, 26.996355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.152966, 33.794968, 26.929998>,  <37.770813, 33.753407, 26.819403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152966, 33.794968, 26.929998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295192, 0.368198, 0.881642,
		-0.010199, -0.923923, 0.382441,
		0.955384, 0.103901, 0.276490,
		38.439579, 33.826138, 27.012945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815228, 33.361980, 27.359596>,  <37.770813, 33.753407, 26.819403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815228, 33.361980, 27.359596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.135151, 33.597908, 27.404182>,  <38.327106, 33.739464, 27.430935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.135151, 33.597908, 27.404182>,  <37.815228, 33.361980, 27.359596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135151, 33.597908, 27.404182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353333, 0.312490, 0.881763,
		0.485246, -0.744625, 0.458333,
		0.799807, 0.589816, 0.111466,
		38.375092, 33.774853, 27.437622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921692, 33.389671, 28.043520>,  <37.815228, 33.361980, 27.359596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921692, 33.389671, 28.043520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.145901, 33.705505, 27.943621>,  <38.280426, 33.895004, 27.883680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.145901, 33.705505, 27.943621>,  <37.921692, 33.389671, 28.043520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145901, 33.705505, 27.943621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195534, 0.419238, 0.886570,
		0.804723, -0.448110, 0.389383,
		0.560525, 0.789581, -0.249750,
		38.314056, 33.942379, 27.868696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594391, 33.466167, 28.437666>,  <37.921692, 33.389671, 28.043520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594391, 33.466167, 28.437666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488968, 33.826733, 28.300266>,  <38.425716, 34.043072, 28.217827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488968, 33.826733, 28.300266>,  <38.594391, 33.466167, 28.437666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488968, 33.826733, 28.300266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006554, 0.354409, 0.935067,
		0.964622, 0.248693, -0.087498,
		-0.263555, 0.901413, -0.343501,
		38.409901, 34.097157, 28.197216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945026, 33.821297, 28.883835>,  <38.594391, 33.466167, 28.437666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945026, 33.821297, 28.883835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.687580, 34.075390, 28.713074>,  <38.533112, 34.227844, 28.610617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.687580, 34.075390, 28.713074>,  <38.945026, 33.821297, 28.883835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687580, 34.075390, 28.713074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049217, 0.522280, 0.851352,
		0.763768, 0.568951, -0.304882,
		-0.643612, 0.635230, -0.426903,
		38.494495, 34.265961, 28.585003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142555, 34.618561, 28.939724>,  <38.945026, 33.821297, 28.883835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142555, 34.618561, 28.939724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.745636, 34.596024, 28.895586>,  <38.507484, 34.582500, 28.869102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.745636, 34.596024, 28.895586>,  <39.142555, 34.618561, 28.939724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745636, 34.596024, 28.895586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123347, 0.533121, 0.836999,
		0.011667, 0.844161, -0.535963,
		-0.992295, -0.056345, -0.110345,
		38.447948, 34.579121, 28.862482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933525, 35.303490, 29.103622>,  <39.142555, 34.618561, 28.939724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933525, 35.303490, 29.103622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.597107, 35.092953, 29.153595>,  <38.395256, 34.966629, 29.183578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.597107, 35.092953, 29.153595>,  <38.933525, 35.303490, 29.103622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597107, 35.092953, 29.153595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178360, 0.487825, 0.854526,
		-0.510720, 0.696410, -0.504160,
		-0.841043, -0.526346, 0.124930,
		38.344795, 34.935047, 29.191074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477680, 35.825939, 29.414968>,  <38.933525, 35.303490, 29.103622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477680, 35.825939, 29.414968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.315090, 35.466515, 29.481134>,  <38.217537, 35.250858, 29.520834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.315090, 35.466515, 29.481134>,  <38.477680, 35.825939, 29.414968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315090, 35.466515, 29.481134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354800, 0.322074, 0.877716,
		-0.841961, 0.298076, -0.449724,
		-0.406470, -0.898565, 0.165417,
		38.193150, 35.196945, 29.530760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875664, 35.850945, 29.743214>,  <38.477680, 35.825939, 29.414968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875664, 35.850945, 29.743214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.945274, 35.467213, 29.832111>,  <37.987041, 35.236973, 29.885450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.945274, 35.467213, 29.832111>,  <37.875664, 35.850945, 29.743214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945274, 35.467213, 29.832111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319491, 0.158473, 0.934244,
		-0.931472, -0.233589, -0.278920,
		0.174028, -0.959334, 0.222243,
		37.997482, 35.179413, 29.898785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259106, 35.623066, 29.939655>,  <37.875664, 35.850945, 29.743214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259106, 35.623066, 29.939655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.535210, 35.380878, 30.098127>,  <37.700871, 35.235565, 30.193211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.535210, 35.380878, 30.098127>,  <37.259106, 35.623066, 29.939655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535210, 35.380878, 30.098127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522287, -0.037979, 0.851924,
		-0.500763, -0.794966, -0.342441,
		0.690256, -0.605464, 0.396181,
		37.742287, 35.199238, 30.216982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852932, 35.075878, 30.285936>,  <37.259106, 35.623066, 29.939655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852932, 35.075878, 30.285936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.218548, 35.075844, 30.448189>,  <37.437916, 35.075825, 30.545540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.218548, 35.075844, 30.448189>,  <36.852932, 35.075878, 30.285936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218548, 35.075844, 30.448189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404308, -0.080912, 0.911037,
		0.032741, -0.996721, -0.073992,
		0.914037, -0.000087, 0.405631,
		37.492760, 35.075817, 30.569878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885391, 34.419067, 30.795797>,  <36.852932, 35.075878, 30.285936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885391, 34.419067, 30.795797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.181519, 34.662441, 30.910152>,  <37.359196, 34.808464, 30.978765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.181519, 34.662441, 30.910152>,  <36.885391, 34.419067, 30.795797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181519, 34.662441, 30.910152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428611, 0.099578, 0.897985,
		0.517895, -0.787333, 0.334501,
		0.740322, 0.608433, 0.285889,
		37.403614, 34.844971, 30.995918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206001, 34.157768, 31.456015>,  <36.885391, 34.419067, 30.795797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206001, 34.157768, 31.456015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.343990, 34.533215, 31.456078>,  <37.426785, 34.758480, 31.456116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.343990, 34.533215, 31.456078>,  <37.206001, 34.157768, 31.456015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343990, 34.533215, 31.456078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299429, 0.109890, 0.947769,
		0.889571, -0.327002, 0.318957,
		0.344972, 0.938613, 0.000159,
		37.447483, 34.814800, 31.456125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273346, 34.170948, 32.223141>,  <37.206001, 34.157768, 31.456015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273346, 34.170948, 32.223141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.320278, 34.551262, 32.108433>,  <37.348438, 34.779449, 32.039608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.320278, 34.551262, 32.108433>,  <37.273346, 34.170948, 32.223141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320278, 34.551262, 32.108433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346254, 0.309811, 0.885508,
		0.930775, -0.004599, 0.365563,
		0.117328, 0.950787, -0.286773,
		37.355476, 34.836498, 32.022400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833191, 33.834560, 32.614449>,  <37.273346, 34.170948, 32.223141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833191, 33.834560, 32.614449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.585876, 33.557552, 32.763115>,  <37.437489, 33.391346, 32.852314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.585876, 33.557552, 32.763115>,  <37.833191, 33.834560, 32.614449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585876, 33.557552, 32.763115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479448, -0.042368, -0.876547,
		0.622773, -0.720153, -0.305832,
		-0.618290, -0.692521, 0.371662,
		37.400391, 33.349796, 32.874615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925953, 33.261372, 32.169918>,  <37.833191, 33.834560, 32.614449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925953, 33.261372, 32.169918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.568943, 33.165352, 32.322639>,  <37.354736, 33.107742, 32.414272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.568943, 33.165352, 32.322639>,  <37.925953, 33.261372, 32.169918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568943, 33.165352, 32.322639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355130, -0.147770, -0.923064,
		0.277998, -0.959449, 0.046640,
		-0.892524, -0.240047, 0.381808,
		37.301186, 33.093338, 32.437183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931072, 32.607082, 32.028126>,  <37.925953, 33.261372, 32.169918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931072, 32.607082, 32.028126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.547935, 32.706718, 32.085384>,  <37.318054, 32.766499, 32.119740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.547935, 32.706718, 32.085384>,  <37.931072, 32.607082, 32.028126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547935, 32.706718, 32.085384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247268, -0.461116, -0.852191,
		-0.146262, -0.851662, 0.503269,
		-0.957844, 0.249086, 0.143145,
		37.260582, 32.781445, 32.128326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552307, 31.995317, 32.158768>,  <37.931072, 32.607082, 32.028126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552307, 31.995317, 32.158768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293709, 32.274105, 32.034657>,  <37.138550, 32.441380, 31.960190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293709, 32.274105, 32.034657>,  <37.552307, 31.995317, 32.158768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293709, 32.274105, 32.034657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180165, -0.534674, -0.825630,
		-0.741337, -0.477867, 0.471235,
		-0.646498, 0.696970, -0.310279,
		37.099758, 32.483196, 31.941572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829670, 31.581648, 32.078342>,  <37.552307, 31.995317, 32.158768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829670, 31.581648, 32.078342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.822262, 31.917133, 31.860638>,  <36.817818, 32.118423, 31.730015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.822262, 31.917133, 31.860638>,  <36.829670, 31.581648, 32.078342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822262, 31.917133, 31.860638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068312, -0.544142, -0.836208,
		-0.997492, 0.021692, 0.067372,
		-0.018521, 0.838713, -0.544259,
		36.816704, 32.168747, 31.697359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249863, 31.478073, 31.629848>,  <36.829670, 31.581648, 32.078342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249863, 31.478073, 31.629848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.469955, 31.761713, 31.453472>,  <36.602009, 31.931896, 31.347647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.469955, 31.761713, 31.453472>,  <36.249863, 31.478073, 31.629848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469955, 31.761713, 31.453472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029132, -0.511440, -0.858825,
		-0.834507, 0.485395, -0.260751,
		0.550227, 0.709099, -0.440941,
		36.635025, 31.974443, 31.321190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936279, 31.621655, 30.904963>,  <36.249863, 31.478073, 31.629848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936279, 31.621655, 30.904963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.319569, 31.734058, 30.883659>,  <36.549541, 31.801500, 30.870878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.319569, 31.734058, 30.883659>,  <35.936279, 31.621655, 30.904963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319569, 31.734058, 30.883659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086099, -0.460978, -0.883225,
		-0.272745, 0.841744, -0.465916,
		0.958226, 0.281011, -0.053256,
		36.607037, 31.818361, 30.867683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930698, 31.861988, 30.210733>,  <35.936279, 31.621655, 30.904963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930698, 31.861988, 30.210733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.305454, 31.783327, 30.326361>,  <36.530308, 31.736130, 30.395737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.305454, 31.783327, 30.326361>,  <35.930698, 31.861988, 30.210733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305454, 31.783327, 30.326361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206416, -0.356198, -0.911326,
		0.282182, 0.913482, -0.293126,
		0.936892, -0.196654, 0.289070,
		36.586521, 31.724331, 30.413082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300449, 31.899239, 29.554653>,  <35.930698, 31.861988, 30.210733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300449, 31.899239, 29.554653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.555164, 31.726765, 29.810335>,  <36.707993, 31.623280, 29.963745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.555164, 31.726765, 29.810335>,  <36.300449, 31.899239, 29.554653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555164, 31.726765, 29.810335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418366, -0.503145, -0.756184,
		0.647668, 0.748949, -0.140003,
		0.636785, -0.431184, 0.639206,
		36.746201, 31.597410, 30.002096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030659, 32.170494, 29.352983>,  <36.300449, 31.899239, 29.554653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030659, 32.170494, 29.352983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.024590, 31.812790, 29.531902>,  <37.020950, 31.598167, 29.639254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.024590, 31.812790, 29.531902>,  <37.030659, 32.170494, 29.352983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024590, 31.812790, 29.531902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503718, -0.393268, -0.769161,
		0.863735, 0.213643, 0.456419,
		-0.015169, -0.894258, 0.447295,
		37.020039, 31.544512, 29.666090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740974, 31.934340, 29.387850>,  <37.030659, 32.170494, 29.352983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740974, 31.934340, 29.387850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.480137, 31.631186, 29.379967>,  <37.323635, 31.449293, 29.375237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.480137, 31.631186, 29.379967>,  <37.740974, 31.934340, 29.387850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480137, 31.631186, 29.379967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514581, -0.423360, -0.745636,
		0.556760, -0.496366, 0.666062,
		-0.652093, -0.757883, -0.019710,
		37.284508, 31.403820, 29.374054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162216, 31.397379, 29.483507>,  <37.740974, 31.934340, 29.387850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162216, 31.397379, 29.483507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.828175, 31.256262, 29.314686>,  <37.627750, 31.171591, 29.213392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.828175, 31.256262, 29.314686>,  <38.162216, 31.397379, 29.483507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828175, 31.256262, 29.314686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531277, -0.318359, -0.785107,
		0.142617, -0.879876, 0.453296,
		-0.835108, -0.352796, -0.422054,
		37.577641, 31.150423, 29.188070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362736, 30.796968, 29.281366>,  <38.162216, 31.397379, 29.483507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362736, 30.796968, 29.281366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.025475, 30.840078, 29.070663>,  <37.823116, 30.865944, 28.944241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.025475, 30.840078, 29.070663>,  <38.362736, 30.796968, 29.281366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025475, 30.840078, 29.070663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465257, -0.344802, -0.815259,
		-0.269490, -0.932468, 0.240580,
		-0.843155, 0.107773, -0.526758,
		37.772530, 30.872412, 28.912636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290081, 30.122795, 28.897228>,  <38.362736, 30.796968, 29.281366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290081, 30.122795, 28.897228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080036, 30.406242, 28.708712>,  <37.954010, 30.576311, 28.595602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080036, 30.406242, 28.708712>,  <38.290081, 30.122795, 28.897228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080036, 30.406242, 28.708712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379049, -0.301076, -0.875029,
		-0.761957, -0.638130, -0.110504,
		-0.525112, 0.708621, -0.471289,
		37.922501, 30.618828, 28.567326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841415, 29.402548, 28.759069>,  <38.290081, 30.122795, 28.897228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841415, 29.402548, 28.759069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.062088, 29.076477, 28.829647>,  <38.194492, 28.880835, 28.871994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.062088, 29.076477, 28.829647>,  <37.841415, 29.402548, 28.759069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062088, 29.076477, 28.829647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008768, 0.205871, 0.978540,
		-0.834008, -0.541390, 0.106428,
		0.551682, -0.815177, 0.176445,
		38.227592, 28.831924, 28.882580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569199, 28.966293, 29.387791>,  <37.841415, 29.402548, 28.759069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569199, 28.966293, 29.387791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.950344, 28.845665, 29.374439>,  <38.179031, 28.773287, 29.366428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.950344, 28.845665, 29.374439>,  <37.569199, 28.966293, 29.387791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950344, 28.845665, 29.374439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062351, 0.086968, 0.994258,
		-0.296938, -0.949469, 0.101671,
		0.952859, -0.301573, -0.033376,
		38.236202, 28.755194, 29.364426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646477, 28.513819, 29.801886>,  <37.569199, 28.966293, 29.387791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646477, 28.513819, 29.801886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.031193, 28.614414, 29.758595>,  <38.262024, 28.674770, 29.732620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.031193, 28.614414, 29.758595>,  <37.646477, 28.513819, 29.801886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031193, 28.614414, 29.758595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106637, 0.019989, 0.994097,
		0.252166, -0.967654, -0.007593,
		0.961791, 0.251487, -0.108228,
		38.319729, 28.689859, 29.726126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988567, 28.076466, 30.202993>,  <37.646477, 28.513819, 29.801886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988567, 28.076466, 30.202993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.243702, 28.379686, 30.148546>,  <38.396782, 28.561619, 30.115877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.243702, 28.379686, 30.148546>,  <37.988567, 28.076466, 30.202993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243702, 28.379686, 30.148546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098793, 0.094750, 0.990587,
		0.763812, -0.645277, -0.014456,
		0.637834, 0.758050, -0.136120,
		38.435051, 28.607101, 30.107710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543247, 27.978628, 30.668921>,  <37.988567, 28.076466, 30.202993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543247, 27.978628, 30.668921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527222, 28.367231, 30.575483>,  <38.517605, 28.600393, 30.519421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527222, 28.367231, 30.575483>,  <38.543247, 27.978628, 30.668921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527222, 28.367231, 30.575483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090853, 0.236357, 0.967410,
		0.995058, 0.017538, -0.097734,
		-0.040066, 0.971508, -0.233595,
		38.515202, 28.658684, 30.505405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975445, 28.117922, 31.165445>,  <38.543247, 27.978628, 30.668921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975445, 28.117922, 31.165445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.810444, 28.458605, 31.036179>,  <38.711445, 28.663015, 30.958618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.810444, 28.458605, 31.036179>,  <38.975445, 28.117922, 31.165445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810444, 28.458605, 31.036179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032477, 0.368279, 0.929148,
		0.910379, 0.372777, -0.179575,
		-0.412499, 0.851709, -0.323167,
		38.686695, 28.714117, 30.939228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431118, 28.618690, 31.227644>,  <38.975445, 28.117922, 31.165445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431118, 28.618690, 31.227644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.060787, 28.763889, 31.269754>,  <38.838589, 28.851007, 31.295021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.060787, 28.763889, 31.269754>,  <39.431118, 28.618690, 31.227644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060787, 28.763889, 31.269754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166531, 0.141740, 0.975796,
		0.339287, 0.920947, -0.191676,
		-0.925825, 0.362995, 0.105276,
		38.783039, 28.872787, 31.301336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440544, 29.279329, 31.629267>,  <39.431118, 28.618690, 31.227644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440544, 29.279329, 31.629267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.058918, 29.161402, 31.650610>,  <38.829945, 29.090645, 31.663416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.058918, 29.161402, 31.650610>,  <39.440544, 29.279329, 31.629267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058918, 29.161402, 31.650610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028785, 0.267463, 0.963138,
		-0.298221, 0.917358, -0.263663,
		-0.954063, -0.294818, 0.053357,
		38.772697, 29.072956, 31.666616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085815, 29.867491, 31.860546>,  <39.440544, 29.279329, 31.629267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085815, 29.867491, 31.860546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.879227, 29.532141, 31.930264>,  <38.755272, 29.330931, 31.972094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.879227, 29.532141, 31.930264>,  <39.085815, 29.867491, 31.860546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879227, 29.532141, 31.930264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044308, 0.177105, 0.983194,
		-0.855155, 0.515519, -0.054324,
		-0.516476, -0.838376, 0.174294,
		38.724285, 29.280628, 31.982552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524899, 30.133209, 32.233234>,  <39.085815, 29.867491, 31.860546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524899, 30.133209, 32.233234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.571743, 29.743484, 32.310181>,  <38.599850, 29.509649, 32.356350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.571743, 29.743484, 32.310181>,  <38.524899, 30.133209, 32.233234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571743, 29.743484, 32.310181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023075, 0.190976, 0.981323,
		-0.992850, -0.119367, -0.000116,
		0.117115, -0.974310, 0.192365,
		38.606876, 29.451191, 32.367889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128822, 29.982044, 32.717957>,  <38.524899, 30.133209, 32.233234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128822, 29.982044, 32.717957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.383228, 29.673796, 32.734077>,  <38.535873, 29.488846, 32.743748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.383228, 29.673796, 32.734077>,  <38.128822, 29.982044, 32.717957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383228, 29.673796, 32.734077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011096, 0.043082, 0.999010,
		-0.771596, -0.635833, 0.018850,
		0.636016, -0.770623, 0.040298,
		38.574032, 29.442608, 32.746166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821114, 29.550684, 33.237385>,  <38.128822, 29.982044, 32.717957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821114, 29.550684, 33.237385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.209785, 29.465477, 33.196461>,  <38.442989, 29.414352, 33.171906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.209785, 29.465477, 33.196461>,  <37.821114, 29.550684, 33.237385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209785, 29.465477, 33.196461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131913, 0.129705, 0.982739,
		-0.196072, -0.968401, 0.154131,
		0.971676, -0.213019, -0.102313,
		38.501289, 29.401571, 33.165768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957077, 29.191666, 33.857761>,  <37.821114, 29.550684, 33.237385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957077, 29.191666, 33.857761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.301247, 29.336428, 33.714264>,  <38.507748, 29.423285, 33.628166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.301247, 29.336428, 33.714264>,  <37.957077, 29.191666, 33.857761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301247, 29.336428, 33.714264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307910, 0.191702, 0.931902,
		0.406032, -0.912291, 0.053510,
		0.860424, 0.361906, -0.358741,
		38.559376, 29.445000, 33.606640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378513, 28.917067, 34.376366>,  <37.957077, 29.191666, 33.857761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378513, 28.917067, 34.376366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.590046, 29.191353, 34.176315>,  <38.716965, 29.355925, 34.056286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.590046, 29.191353, 34.176315>,  <38.378513, 28.917067, 34.376366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590046, 29.191353, 34.176315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471385, 0.252721, 0.844943,
		0.705784, -0.682587, -0.189588,
		0.528834, 0.685716, -0.500127,
		38.748695, 29.397068, 34.026276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.644768, 29.726828, 29.594929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.644432, 30.032761, 29.337236>,  <40.644230, 30.216320, 29.182621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.644432, 30.032761, 29.337236>,  <40.644768, 29.726828, 29.594929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644432, 30.032761, 29.337236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026802, -0.644017, -0.764542,
		-0.999640, 0.016628, 0.021038,
		-0.000836, 0.764830, -0.644231,
		40.644180, 30.262209, 29.143967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181564, 29.575369, 29.173597>,  <40.644768, 29.726828, 29.594929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181564, 29.575369, 29.173597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.412590, 29.828388, 28.967178>,  <40.551205, 29.980200, 28.843327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.412590, 29.828388, 28.967178>,  <40.181564, 29.575369, 29.173597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412590, 29.828388, 28.967178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045700, -0.656205, -0.753197,
		-0.815068, 0.411434, -0.407905,
		0.577561, 0.632548, -0.516049,
		40.585857, 30.018152, 28.812363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901890, 29.654007, 28.488928>,  <40.181564, 29.575369, 29.173597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901890, 29.654007, 28.488928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.280113, 29.776491, 28.444832>,  <40.507046, 29.849981, 28.418375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.280113, 29.776491, 28.444832>,  <39.901890, 29.654007, 28.488928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280113, 29.776491, 28.444832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059583, -0.495882, -0.866343,
		-0.319948, 0.812611, -0.487131,
		0.945560, 0.306210, -0.110238,
		40.563782, 29.868355, 28.411760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959919, 29.986502, 27.776918>,  <39.901890, 29.654007, 28.488928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959919, 29.986502, 27.776918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.325249, 29.872128, 27.892910>,  <40.544445, 29.803503, 27.962505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.325249, 29.872128, 27.892910>,  <39.959919, 29.986502, 27.776918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325249, 29.872128, 27.892910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191757, -0.326221, -0.925640,
		0.359270, 0.901011, -0.243114,
		0.913320, -0.285936, 0.289977,
		40.599243, 29.786346, 27.979902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382305, 30.110847, 27.079306>,  <39.959919, 29.986502, 27.776918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382305, 30.110847, 27.079306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.659176, 29.957096, 27.323647>,  <40.825298, 29.864845, 27.470251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.659176, 29.957096, 27.323647>,  <40.382305, 30.110847, 27.079306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659176, 29.957096, 27.323647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459712, -0.417660, -0.783725,
		0.556375, 0.823295, -0.112393,
		0.692179, -0.384377, 0.610854,
		40.866829, 29.841784, 27.506903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000072, 30.234272, 26.825918>,  <40.382305, 30.110847, 27.079306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000072, 30.234272, 26.825918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.077137, 29.909060, 27.045687>,  <41.123375, 29.713932, 27.177547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.077137, 29.909060, 27.045687>,  <41.000072, 30.234272, 26.825918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077137, 29.909060, 27.045687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557875, -0.369867, -0.742950,
		0.807254, 0.449643, 0.382311,
		0.192658, -0.813031, 0.549421,
		41.134933, 29.665150, 27.210512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756939, 30.035799, 26.790628>,  <41.000072, 30.234272, 26.825918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756939, 30.035799, 26.790628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.606186, 29.693071, 26.931377>,  <41.515732, 29.487434, 27.015827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.606186, 29.693071, 26.931377>,  <41.756939, 30.035799, 26.790628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606186, 29.693071, 26.931377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521958, -0.510285, -0.683498,
		0.765190, -0.073939, 0.639544,
		-0.376887, -0.856821, 0.351872,
		41.493118, 29.436026, 27.036940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333454, 29.591656, 26.957785>,  <41.756939, 30.035799, 26.790628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333454, 29.591656, 26.957785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.024662, 29.346144, 26.891678>,  <41.839386, 29.198835, 26.852013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.024662, 29.346144, 26.891678>,  <42.333454, 29.591656, 26.957785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024662, 29.346144, 26.891678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424629, -0.304498, -0.852626,
		0.473002, -0.728391, 0.495697,
		-0.771984, -0.613781, -0.165268,
		41.793068, 29.162010, 26.842098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656284, 28.981493, 26.861883>,  <42.333454, 29.591656, 26.957785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656284, 28.981493, 26.861883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.292812, 28.923271, 26.705366>,  <42.074730, 28.888338, 26.611456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.292812, 28.923271, 26.705366>,  <42.656284, 28.981493, 26.861883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292812, 28.923271, 26.705366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385442, -0.652611, -0.652329,
		-0.160413, -0.743581, 0.649119,
		-0.908682, -0.145556, -0.391295,
		42.020206, 28.879604, 26.587978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625179, 28.242292, 26.731092>,  <42.656284, 28.981493, 26.861883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625179, 28.242292, 26.731092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.350346, 28.439737, 26.517828>,  <42.185444, 28.558205, 26.389870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.350346, 28.439737, 26.517828>,  <42.625179, 28.242292, 26.731092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350346, 28.439737, 26.517828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264058, -0.513980, -0.816148,
		-0.676897, -0.701548, 0.222804,
		-0.687084, 0.493615, -0.533161,
		42.144218, 28.587822, 26.357880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248859, 27.738861, 26.356121>,  <42.625179, 28.242292, 26.731092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248859, 27.738861, 26.356121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.139053, 28.064678, 26.151705>,  <42.073170, 28.260168, 26.029055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.139053, 28.064678, 26.151705>,  <42.248859, 27.738861, 26.356121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139053, 28.064678, 26.151705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107541, -0.502115, -0.858088,
		-0.955552, -0.290511, 0.050239,
		-0.274510, 0.814545, -0.511038,
		42.056702, 28.309042, 25.998394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811737, 27.466923, 25.851419>,  <42.248859, 27.738861, 26.356121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811737, 27.466923, 25.851419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.934071, 27.829126, 25.733767>,  <42.007473, 28.046450, 25.663176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.934071, 27.829126, 25.733767>,  <41.811737, 27.466923, 25.851419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934071, 27.829126, 25.733767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231705, -0.370435, -0.899494,
		-0.923459, 0.206948, -0.323104,
		0.305838, 0.905511, -0.294131,
		42.025822, 28.100780, 25.645527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522499, 27.631748, 25.224264>,  <41.811737, 27.466923, 25.851419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522499, 27.631748, 25.224264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.878189, 27.814020, 25.240446>,  <42.091602, 27.923384, 25.250154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.878189, 27.814020, 25.240446>,  <41.522499, 27.631748, 25.224264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878189, 27.814020, 25.240446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220974, -0.350412, -0.910155,
		-0.400562, 0.818272, -0.412288,
		0.889225, 0.455678, 0.040455,
		42.144958, 27.950724, 25.252583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719501, 28.177179, 24.663940>,  <41.522499, 27.631748, 25.224264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719501, 28.177179, 24.663940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.006126, 27.947571, 24.822451>,  <42.178101, 27.809805, 24.917557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.006126, 27.947571, 24.822451>,  <41.719501, 28.177179, 24.663940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006126, 27.947571, 24.822451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236832, -0.334151, -0.912280,
		0.656084, 0.747558, -0.103494,
		0.716564, -0.574022, 0.396277,
		42.221096, 27.775364, 24.941334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309662, 27.792471, 24.109451>,  <41.719501, 28.177179, 24.663940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309662, 27.792471, 24.109451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.953083, 27.724598, 23.941387>,  <40.739136, 27.683874, 23.840549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.953083, 27.724598, 23.941387>,  <41.309662, 27.792471, 24.109451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953083, 27.724598, 23.941387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436885, 0.075804, 0.896318,
		-0.120238, 0.982579, -0.141706,
		-0.891445, -0.169681, -0.420160,
		40.685650, 27.673695, 23.815340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700123, 28.357506, 24.224058>,  <41.309662, 27.792471, 24.109451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700123, 28.357506, 24.224058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.533325, 27.997753, 24.171555>,  <40.433247, 27.781902, 24.140053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.533325, 27.997753, 24.171555>,  <40.700123, 28.357506, 24.224058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533325, 27.997753, 24.171555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531264, 0.124006, 0.838082,
		-0.737478, 0.419208, -0.529519,
		-0.416994, -0.899381, -0.131259,
		40.408226, 27.727940, 24.132177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025524, 28.561922, 24.291138>,  <40.700123, 28.357506, 24.224058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025524, 28.561922, 24.291138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.028633, 28.165470, 24.344208>,  <40.030499, 27.927599, 24.376051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.028633, 28.165470, 24.344208>,  <40.025524, 28.561922, 24.291138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028633, 28.165470, 24.344208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720906, 0.086394, 0.687626,
		-0.692989, -0.100993, -0.713839,
		0.007774, -0.991129, 0.132676,
		40.030964, 27.868132, 24.384010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313953, 28.365524, 24.351828>,  <40.025524, 28.561922, 24.291138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313953, 28.365524, 24.351828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.528805, 28.070759, 24.516001>,  <39.657715, 27.893900, 24.614504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.528805, 28.070759, 24.516001>,  <39.313953, 28.365524, 24.351828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528805, 28.070759, 24.516001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708967, -0.130779, 0.693010,
		-0.457012, -0.663217, -0.592692,
		0.537127, -0.736913, 0.410432,
		39.689941, 27.849686, 24.639130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726006, 27.915260, 24.546661>,  <39.313953, 28.365524, 24.351828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726006, 27.915260, 24.546661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.047947, 27.806992, 24.757921>,  <39.241112, 27.742031, 24.884676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.047947, 27.806992, 24.757921>,  <38.726006, 27.915260, 24.546661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047947, 27.806992, 24.757921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520079, 0.106987, 0.847391,
		-0.285869, -0.956709, -0.054661,
		0.804858, -0.270670, 0.528149,
		39.289406, 27.725790, 24.916367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479305, 27.667713, 25.093586>,  <38.726006, 27.915260, 24.546661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479305, 27.667713, 25.093586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.857990, 27.698549, 25.218674>,  <39.085201, 27.717051, 25.293726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.857990, 27.698549, 25.218674>,  <38.479305, 27.667713, 25.093586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857990, 27.698549, 25.218674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305710, -0.090545, 0.947810,
		0.101381, -0.992904, -0.062153,
		0.946712, 0.077089, 0.312720,
		39.142002, 27.721676, 25.312490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630730, 27.048109, 25.578579>,  <38.479305, 27.667713, 25.093586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630730, 27.048109, 25.578579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.881374, 27.349350, 25.658775>,  <39.031761, 27.530094, 25.706894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.881374, 27.349350, 25.658775>,  <38.630730, 27.048109, 25.578579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881374, 27.349350, 25.658775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295046, -0.008867, 0.955442,
		0.721322, -0.657844, 0.216644,
		0.626611, 0.753101, 0.200490,
		39.069359, 27.575281, 25.718922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191170, 26.866116, 26.172983>,  <38.630730, 27.048109, 25.578579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191170, 26.866116, 26.172983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.193584, 27.266045, 26.165899>,  <39.195034, 27.506002, 26.161648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.193584, 27.266045, 26.165899>,  <39.191170, 26.866116, 26.172983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193584, 27.266045, 26.165899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026366, 0.017864, 0.999493,
		0.999634, -0.005564, 0.026469,
		0.006034, 0.999825, -0.017711,
		39.195396, 27.565992, 26.160585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436012, 26.976921, 26.775021>,  <39.191170, 26.866116, 26.172983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436012, 26.976921, 26.775021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.322571, 27.343058, 26.660673>,  <39.254505, 27.562738, 26.592064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.322571, 27.343058, 26.660673>,  <39.436012, 26.976921, 26.775021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322571, 27.343058, 26.660673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000497, 0.297970, 0.954575,
		0.958942, 0.270862, -0.084051,
		-0.283603, 0.915340, -0.285871,
		39.237492, 27.617661, 26.574911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740410, 27.507620, 27.163763>,  <39.436012, 26.976921, 26.775021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740410, 27.507620, 27.163763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.396683, 27.690224, 27.071531>,  <39.190445, 27.799786, 27.016191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.396683, 27.690224, 27.071531>,  <39.740410, 27.507620, 27.163763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396683, 27.690224, 27.071531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113986, 0.268555, 0.956497,
		0.498571, 0.848221, -0.178739,
		-0.859322, 0.456508, -0.230579,
		39.138885, 27.827177, 27.002357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790791, 28.059416, 27.662731>,  <39.740410, 27.507620, 27.163763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790791, 28.059416, 27.662731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.413071, 28.078917, 27.532545>,  <39.186440, 28.090616, 27.454433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.413071, 28.078917, 27.532545>,  <39.790791, 28.059416, 27.662731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413071, 28.078917, 27.532545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289579, 0.346789, 0.892122,
		0.156361, 0.936675, -0.313354,
		-0.944296, 0.048752, -0.325466,
		39.129784, 28.093542, 27.434906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567394, 28.718700, 27.721334>,  <39.790791, 28.059416, 27.662731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567394, 28.718700, 27.721334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.212936, 28.533394, 27.716730>,  <39.000263, 28.422209, 27.713966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.212936, 28.533394, 27.716730>,  <39.567394, 28.718700, 27.721334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212936, 28.533394, 27.716730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257487, 0.471565, 0.843402,
		-0.385292, 0.750339, -0.537160,
		-0.886144, -0.463268, -0.011513,
		38.947094, 28.394413, 27.713276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155102, 29.196236, 28.193497>,  <39.567394, 28.718700, 27.721334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155102, 29.196236, 28.193497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.945667, 28.860023, 28.137833>,  <38.820007, 28.658297, 28.104435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.945667, 28.860023, 28.137833>,  <39.155102, 29.196236, 28.193497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945667, 28.860023, 28.137833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501326, 0.171888, 0.848013,
		-0.688863, 0.513770, -0.511379,
		-0.523584, -0.840532, -0.139159,
		38.788593, 28.607864, 28.096085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596180, 29.487457, 28.406839>,  <39.155102, 29.196236, 28.193497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596180, 29.487457, 28.406839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.576256, 29.091003, 28.456100>,  <38.564301, 28.853130, 28.485657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.576256, 29.091003, 28.456100>,  <38.596180, 29.487457, 28.406839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576256, 29.091003, 28.456100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254726, 0.131838, 0.957984,
		-0.965729, 0.016351, -0.259036,
		-0.049815, -0.991136, 0.123155,
		38.561310, 28.793663, 28.493048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011326, 29.821709, 28.196041>,  <38.596180, 29.487457, 28.406839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011326, 29.821709, 28.196041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.948494, 30.208319, 28.114895>,  <37.910797, 30.440285, 28.066206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.948494, 30.208319, 28.114895>,  <38.011326, 29.821709, 28.196041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948494, 30.208319, 28.114895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456049, -0.111215, -0.882978,
		-0.875983, -0.231214, -0.423313,
		-0.157078, 0.966526, -0.202867,
		37.901371, 30.498276, 28.054035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729141, 29.928297, 27.566122>,  <38.011326, 29.821709, 28.196041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729141, 29.928297, 27.566122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.902004, 30.285999, 27.612684>,  <38.005722, 30.500620, 27.640621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.902004, 30.285999, 27.612684>,  <37.729141, 29.928297, 27.566122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902004, 30.285999, 27.612684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511050, -0.136500, -0.848643,
		-0.743015, 0.426232, -0.515998,
		0.432153, 0.894256, 0.116404,
		38.031651, 30.554276, 27.647606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668350, 30.269175, 26.968506>,  <37.729141, 29.928297, 27.566122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668350, 30.269175, 26.968506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.974781, 30.456873, 27.144203>,  <38.158638, 30.569492, 27.249622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.974781, 30.456873, 27.144203>,  <37.668350, 30.269175, 26.968506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974781, 30.456873, 27.144203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511020, -0.030162, -0.859039,
		-0.389853, 0.882552, -0.262901,
		0.766077, 0.469247, 0.439243,
		38.204605, 30.597647, 27.275976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892605, 30.838779, 26.494207>,  <37.668350, 30.269175, 26.968506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892605, 30.838779, 26.494207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.218269, 30.793741, 26.722054>,  <38.413670, 30.766718, 26.858761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.218269, 30.793741, 26.722054>,  <37.892605, 30.838779, 26.494207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218269, 30.793741, 26.722054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573488, 0.002467, -0.819210,
		0.090835, 0.993638, 0.066581,
		0.814162, -0.112597, 0.569616,
		38.462517, 30.759962, 26.892939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353680, 31.294239, 26.283808>,  <37.892605, 30.838779, 26.494207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353680, 31.294239, 26.283808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.582703, 31.016525, 26.458233>,  <38.720116, 30.849897, 26.562889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.582703, 31.016525, 26.458233>,  <38.353680, 31.294239, 26.283808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582703, 31.016525, 26.458233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612300, 0.008398, -0.790581,
		0.545224, 0.719654, 0.429918,
		0.572555, -0.694282, 0.436065,
		38.754471, 30.808241, 26.589052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929085, 31.645370, 26.350107>,  <38.353680, 31.294239, 26.283808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929085, 31.645370, 26.350107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.994598, 31.250780, 26.347683>,  <39.033905, 31.014025, 26.346230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.994598, 31.250780, 26.347683>,  <38.929085, 31.645370, 26.350107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994598, 31.250780, 26.347683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607574, 0.105711, -0.787197,
		0.777192, 0.125250, 0.616672,
		0.163785, -0.986477, -0.006059,
		39.043736, 30.954838, 26.345865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507915, 31.554432, 26.007212>,  <38.929085, 31.645370, 26.350107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507915, 31.554432, 26.007212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.389626, 31.172642, 25.991581>,  <39.318653, 30.943567, 25.982203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.389626, 31.172642, 25.991581>,  <39.507915, 31.554432, 26.007212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389626, 31.172642, 25.991581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577005, -0.145870, -0.803609,
		0.761324, -0.260191, 0.593874,
		-0.295720, -0.954475, -0.039077,
		39.300911, 30.886299, 25.979858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091934, 31.927959, 25.669106>,  <39.507915, 31.554432, 26.007212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091934, 31.927959, 25.669106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.126194, 32.206459, 25.384037>,  <40.146751, 32.373558, 25.212996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.126194, 32.206459, 25.384037>,  <40.091934, 31.927959, 25.669106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126194, 32.206459, 25.384037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662955, 0.573790, 0.480891,
		0.743743, 0.431279, 0.510729,
		0.085653, 0.696250, -0.712671,
		40.151890, 32.415333, 25.170237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358681, 32.553123, 25.998323>,  <40.091934, 31.927959, 25.669106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358681, 32.553123, 25.998323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.149014, 32.678024, 25.681402>,  <40.023212, 32.752964, 25.491249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.149014, 32.678024, 25.681402>,  <40.358681, 32.553123, 25.998323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149014, 32.678024, 25.681402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495175, 0.645169, 0.581858,
		0.692856, 0.697321, -0.183560,
		-0.524169, 0.312250, -0.792305,
		39.991764, 32.771698, 25.443710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371159, 33.169048, 26.048494>,  <40.358681, 32.553123, 25.998323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371159, 33.169048, 26.048494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.052509, 33.107819, 25.814583>,  <39.861320, 33.071083, 25.674236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.052509, 33.107819, 25.814583>,  <40.371159, 33.169048, 26.048494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052509, 33.107819, 25.814583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500844, 0.708800, 0.496747,
		0.338453, 0.688601, -0.641310,
		-0.796621, -0.153071, -0.584777,
		39.813522, 33.061897, 25.639149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126369, 33.773281, 25.913425>,  <40.371159, 33.169048, 26.048494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126369, 33.773281, 25.913425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.806118, 33.539577, 25.860310>,  <39.613968, 33.399357, 25.828440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.806118, 33.539577, 25.860310>,  <40.126369, 33.773281, 25.913425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806118, 33.539577, 25.860310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537035, 0.601505, 0.591426,
		-0.265672, 0.544827, -0.795351,
		-0.800632, -0.584257, -0.132788,
		39.565929, 33.364300, 25.820473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549496, 34.242374, 25.788559>,  <40.126369, 33.773281, 25.913425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549496, 34.242374, 25.788559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.407066, 33.890079, 25.913465>,  <39.321609, 33.678703, 25.988409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.407066, 33.890079, 25.913465>,  <39.549496, 34.242374, 25.788559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407066, 33.890079, 25.913465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596382, 0.471452, 0.649663,
		-0.719401, 0.045099, -0.693129,
		-0.356076, -0.880738, 0.312267,
		39.300243, 33.625858, 26.007145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835148, 34.415985, 25.878757>,  <39.549496, 34.242374, 25.788559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835148, 34.415985, 25.878757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.915089, 34.081982, 26.083818>,  <38.963051, 33.881577, 26.206856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.915089, 34.081982, 26.083818>,  <38.835148, 34.415985, 25.878757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915089, 34.081982, 26.083818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492894, 0.366515, 0.789128,
		-0.846827, -0.410390, -0.338325,
		0.199849, -0.835013, 0.512653,
		38.975044, 33.831478, 26.237614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156544, 34.181530, 26.228874>,  <38.835148, 34.415985, 25.878757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156544, 34.181530, 26.228874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.437313, 34.010017, 26.456364>,  <38.605774, 33.907108, 26.592857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.437313, 34.010017, 26.456364>,  <38.156544, 34.181530, 26.228874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437313, 34.010017, 26.456364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491091, 0.286982, 0.822478,
		-0.515879, -0.856613, -0.009133,
		0.701924, -0.428784, 0.568723,
		38.647892, 33.881382, 26.626980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.633270, 30.551331, 25.002230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.355289, 30.319313, 25.172215>,  <44.188503, 30.180101, 25.274206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.355289, 30.319313, 25.172215>,  <44.633270, 30.551331, 25.002230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.355289, 30.319313, 25.172215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120622, 0.676665, 0.726344,
		-0.708870, 0.453512, -0.540214,
		-0.694949, -0.580045, 0.424964,
		44.146805, 30.145300, 25.299704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031723, 30.978901, 25.104647>,  <44.633270, 30.551331, 25.002230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031723, 30.978901, 25.104647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.973164, 30.679663, 25.363544>,  <43.938030, 30.500120, 25.518883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.973164, 30.679663, 25.363544>,  <44.031723, 30.978901, 25.104647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973164, 30.679663, 25.363544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135763, 0.663295, 0.735940,
		-0.979865, 0.019868, -0.198668,
		-0.146397, -0.748094, 0.647243,
		43.929245, 30.455235, 25.557716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339569, 31.037144, 25.461081>,  <44.031723, 30.978901, 25.104647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339569, 31.037144, 25.461081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.562202, 30.809910, 25.703566>,  <43.695782, 30.673569, 25.849056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.562202, 30.809910, 25.703566>,  <43.339569, 31.037144, 25.461081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562202, 30.809910, 25.703566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342093, 0.508237, 0.790359,
		-0.757090, -0.647283, 0.088539,
		0.556585, -0.568084, 0.606213,
		43.729179, 30.639484, 25.885429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973610, 31.012968, 25.965525>,  <43.339569, 31.037144, 25.461081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973610, 31.012968, 25.965525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.322403, 30.903803, 26.128086>,  <43.531677, 30.838305, 26.225622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.322403, 30.903803, 26.128086>,  <42.973610, 31.012968, 25.965525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322403, 30.903803, 26.128086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213584, 0.534902, 0.817472,
		-0.440486, -0.799623, 0.408136,
		0.871983, -0.272914, 0.406404,
		43.584000, 30.821928, 26.250008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811554, 30.845451, 26.588160>,  <42.973610, 31.012968, 25.965525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811554, 30.845451, 26.588160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.203243, 30.911346, 26.635460>,  <43.438255, 30.950884, 26.663839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.203243, 30.911346, 26.635460>,  <42.811554, 30.845451, 26.588160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203243, 30.911346, 26.635460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182182, 0.458584, 0.869776,
		0.089058, -0.873248, 0.479069,
		0.979223, 0.164738, 0.118250,
		43.497009, 30.960768, 26.670935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932243, 30.733265, 27.424007>,  <42.811554, 30.845451, 26.588160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932243, 30.733265, 27.424007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.253414, 30.909273, 27.263166>,  <43.446117, 31.014877, 27.166662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.253414, 30.909273, 27.263166>,  <42.932243, 30.733265, 27.424007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253414, 30.909273, 27.263166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158106, 0.493203, 0.855426,
		0.574724, -0.750420, 0.326437,
		0.802929, 0.440023, -0.402102,
		43.494293, 31.041279, 27.142536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487114, 30.686827, 27.942314>,  <42.932243, 30.733265, 27.424007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487114, 30.686827, 27.942314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.537025, 31.001188, 27.700062>,  <43.566971, 31.189806, 27.554710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.537025, 31.001188, 27.700062>,  <43.487114, 30.686827, 27.942314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537025, 31.001188, 27.700062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050008, 0.614605, 0.787248,
		0.990924, -0.067942, 0.115989,
		0.124775, 0.785904, -0.605629,
		43.574459, 31.236959, 27.518373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.156391, 31.034883, 28.147512>,  <43.487114, 30.686827, 27.942314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.156391, 31.034883, 28.147512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.941170, 31.305883, 27.946917>,  <43.812038, 31.468483, 27.826559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.941170, 31.305883, 27.946917>,  <44.156391, 31.034883, 28.147512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.941170, 31.305883, 27.946917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270743, 0.702333, 0.658351,
		0.798247, 0.218452, -0.561320,
		-0.538052, 0.677500, -0.501491,
		43.779755, 31.509134, 27.796469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545120, 31.615931, 28.055916>,  <44.156391, 31.034883, 28.147512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545120, 31.615931, 28.055916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.174068, 31.755234, 28.001936>,  <43.951435, 31.838816, 27.969549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.174068, 31.755234, 28.001936>,  <44.545120, 31.615931, 28.055916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174068, 31.755234, 28.001936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195199, 0.760102, 0.619792,
		0.318423, 0.548598, -0.773076,
		-0.927634, 0.348260, -0.134948,
		43.895779, 31.859713, 27.961451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499210, 32.397266, 28.059313>,  <44.545120, 31.615931, 28.055916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499210, 32.397266, 28.059313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.126514, 32.315083, 28.179075>,  <43.902897, 32.265774, 28.250933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.126514, 32.315083, 28.179075>,  <44.499210, 32.397266, 28.059313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126514, 32.315083, 28.179075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065086, 0.716690, 0.694348,
		-0.357241, 0.666440, -0.654397,
		-0.931741, -0.205458, 0.299407,
		43.846992, 32.253445, 28.268898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385532, 33.090641, 28.327208>,  <44.499210, 32.397266, 28.059313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385532, 33.090641, 28.327208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.069973, 32.865360, 28.425550>,  <43.880638, 32.730190, 28.484556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.069973, 32.865360, 28.425550>,  <44.385532, 33.090641, 28.327208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069973, 32.865360, 28.425550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367936, 0.753328, 0.545087,
		-0.492206, 0.339557, -0.801520,
		-0.788896, -0.563203, 0.245857,
		43.833305, 32.696400, 28.499308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740044, 33.425797, 28.177099>,  <44.385532, 33.090641, 28.327208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740044, 33.425797, 28.177099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.696808, 33.168442, 28.480247>,  <43.670864, 33.014030, 28.662136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.696808, 33.168442, 28.480247>,  <43.740044, 33.425797, 28.177099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696808, 33.168442, 28.480247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434003, 0.716395, 0.546277,
		-0.894403, -0.269871, -0.356669,
		-0.108092, -0.643388, 0.757871,
		43.664379, 32.975426, 28.707609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446320, 33.460243, 27.500299>,  <43.740044, 33.425797, 28.177099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446320, 33.460243, 27.500299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.168941, 33.695301, 27.333536>,  <43.002514, 33.836334, 27.233479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.168941, 33.695301, 27.333536>,  <43.446320, 33.460243, 27.500299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168941, 33.695301, 27.333536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217366, -0.381047, -0.898641,
		-0.686941, -0.713778, 0.136501,
		-0.693443, 0.587643, -0.416908,
		42.960907, 33.871593, 27.208464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925419, 33.033344, 27.080355>,  <43.446320, 33.460243, 27.500299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925419, 33.033344, 27.080355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.923309, 33.399529, 26.919407>,  <42.922043, 33.619240, 26.822838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.923309, 33.399529, 26.919407>,  <42.925419, 33.033344, 27.080355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923309, 33.399529, 26.919407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161915, -0.396283, -0.903738,
		-0.986791, -0.069916, -0.146137,
		-0.005275, 0.915462, -0.402369,
		42.921726, 33.674168, 26.798697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729305, 32.961319, 26.465939>,  <42.925419, 33.033344, 27.080355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729305, 32.961319, 26.465939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.872547, 33.333134, 26.430790>,  <42.958492, 33.556221, 26.409700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.872547, 33.333134, 26.430790>,  <42.729305, 32.961319, 26.465939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872547, 33.333134, 26.430790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336956, -0.216432, -0.916307,
		-0.870760, 0.298523, -0.390719,
		0.358103, 0.929538, -0.087871,
		42.979977, 33.611996, 26.404428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461075, 33.262695, 25.854156>,  <42.729305, 32.961319, 26.465939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461075, 33.262695, 25.854156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.764973, 33.520046, 25.891798>,  <42.947311, 33.674458, 25.914383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.764973, 33.520046, 25.891798>,  <42.461075, 33.262695, 25.854156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764973, 33.520046, 25.891798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251783, -0.157661, -0.954855,
		-0.599498, 0.749137, -0.281773,
		0.759742, 0.643380, 0.094102,
		42.992897, 33.713058, 25.920029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545250, 33.572590, 25.201927>,  <42.461075, 33.262695, 25.854156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545250, 33.572590, 25.201927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.897812, 33.633362, 25.380831>,  <43.109348, 33.669827, 25.488173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.897812, 33.633362, 25.380831>,  <42.545250, 33.572590, 25.201927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897812, 33.633362, 25.380831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470181, -0.191356, -0.861576,
		-0.045312, 0.969691, -0.240096,
		0.881406, 0.151928, 0.447260,
		43.162235, 33.678940, 25.515009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914330, 34.072521, 24.791348>,  <42.545250, 33.572590, 25.201927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914330, 34.072521, 24.791348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.159351, 33.839367, 25.004896>,  <43.306366, 33.699474, 25.133026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.159351, 33.839367, 25.004896>,  <42.914330, 34.072521, 24.791348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159351, 33.839367, 25.004896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308635, -0.445427, -0.840440,
		0.727680, 0.679590, -0.092951,
		0.612557, -0.582883, 0.533874,
		43.343117, 33.664501, 25.165058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455444, 34.060356, 24.253954>,  <42.914330, 34.072521, 24.791348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455444, 34.060356, 24.253954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.538204, 33.784153, 24.531195>,  <43.587860, 33.618431, 24.697538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.538204, 33.784153, 24.531195>,  <43.455444, 34.060356, 24.253954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538204, 33.784153, 24.531195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504665, -0.531584, -0.680244,
		0.838156, 0.490528, 0.238489,
		0.206902, -0.690508, 0.693102,
		43.600273, 33.577000, 24.739126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.255836, 33.898136, 24.326660>,  <43.455444, 34.060356, 24.253954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.255836, 33.898136, 24.326660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.039181, 33.582237, 24.441853>,  <43.909187, 33.392700, 24.510969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.039181, 33.582237, 24.441853>,  <44.255836, 33.898136, 24.326660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.039181, 33.582237, 24.441853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493125, -0.575958, -0.651997,
		0.680776, -0.211136, 0.701403,
		-0.541638, -0.789743, 0.287982,
		43.876690, 33.345314, 24.528248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693993, 33.329071, 24.515848>,  <44.255836, 33.898136, 24.326660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693993, 33.329071, 24.515848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.339314, 33.164082, 24.432293>,  <44.126507, 33.065086, 24.382160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.339314, 33.164082, 24.432293>,  <44.693993, 33.329071, 24.515848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339314, 33.164082, 24.432293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460225, -0.744124, -0.484223,
		0.044288, -0.525495, 0.849643,
		-0.886697, -0.412473, -0.208890,
		44.073303, 33.040340, 24.369625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866360, 32.603115, 24.418974>,  <44.693993, 33.329071, 24.515848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866360, 32.603115, 24.418974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.501915, 32.688290, 24.277811>,  <44.283249, 32.739395, 24.193113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.501915, 32.688290, 24.277811>,  <44.866360, 32.603115, 24.418974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.501915, 32.688290, 24.277811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255192, -0.380941, -0.888685,
		-0.323665, -0.899747, 0.292740,
		-0.911108, 0.212931, -0.352906,
		44.228584, 32.752171, 24.171940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698994, 32.012669, 23.989349>,  <44.866360, 32.603115, 24.418974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698994, 32.012669, 23.989349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.452518, 32.304138, 23.869785>,  <44.304634, 32.479019, 23.798046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.452518, 32.304138, 23.869785>,  <44.698994, 32.012669, 23.989349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.452518, 32.304138, 23.869785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077674, -0.321450, -0.943735,
		-0.783759, -0.604737, 0.141475,
		-0.616189, 0.728672, -0.298912,
		44.267662, 32.522739, 23.780111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.148773, 31.707466, 23.592533>,  <44.698994, 32.012669, 23.989349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.148773, 31.707466, 23.592533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.122311, 32.077347, 23.442572>,  <44.106434, 32.299274, 23.352594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.122311, 32.077347, 23.442572>,  <44.148773, 31.707466, 23.592533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.122311, 32.077347, 23.442572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084090, -0.379559, -0.921338,
		-0.994260, -0.029426, 0.102868,
		-0.066156, 0.924699, -0.374905,
		44.102463, 32.354755, 23.330099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.535065, 31.836554, 23.110025>,  <44.148773, 31.707466, 23.592533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.535065, 31.836554, 23.110025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.783550, 32.133545, 23.009769>,  <43.932640, 32.311741, 22.949615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.783550, 32.133545, 23.009769>,  <43.535065, 31.836554, 23.110025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783550, 32.133545, 23.009769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152095, -0.199522, -0.968018,
		-0.768742, 0.639464, -0.011017,
		0.621211, 0.742480, -0.250640,
		43.969913, 32.356289, 22.934578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886280, 32.061028, 23.464220>,  <43.535065, 31.836554, 23.110025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886280, 32.061028, 23.464220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.565460, 31.982933, 23.238441>,  <42.372967, 31.936077, 23.102974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.565460, 31.982933, 23.238441>,  <42.886280, 32.061028, 23.464220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565460, 31.982933, 23.238441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596438, 0.212295, 0.774075,
		-0.031295, 0.957505, -0.286715,
		-0.802049, -0.195232, -0.564448,
		42.324844, 31.924364, 23.069107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378525, 32.601280, 23.540642>,  <42.886280, 32.061028, 23.464220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378525, 32.601280, 23.540642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.163174, 32.301418, 23.386673>,  <42.033962, 32.121502, 23.294292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.163174, 32.301418, 23.386673>,  <42.378525, 32.601280, 23.540642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163174, 32.301418, 23.386673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802370, 0.316394, 0.506059,
		-0.257583, 0.581303, -0.771841,
		-0.538379, -0.749654, -0.384923,
		42.001659, 32.076523, 23.271196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712727, 32.888165, 23.357624>,  <42.378525, 32.601280, 23.540642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712727, 32.888165, 23.357624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.664162, 32.492786, 23.393908>,  <41.635021, 32.255558, 23.415678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.664162, 32.492786, 23.393908>,  <41.712727, 32.888165, 23.357624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664162, 32.492786, 23.393908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782159, 0.151539, 0.604371,
		-0.611135, 0.002431, -0.791522,
		-0.121416, -0.988448, 0.090709,
		41.627735, 32.196251, 23.421120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057922, 32.681889, 23.215145>,  <41.712727, 32.888165, 23.357624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057922, 32.681889, 23.215145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.201286, 32.399094, 23.459015>,  <41.287304, 32.229416, 23.605337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.201286, 32.399094, 23.459015>,  <41.057922, 32.681889, 23.215145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201286, 32.399094, 23.459015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781328, 0.130263, 0.610375,
		-0.510948, -0.695122, -0.505705,
		0.358411, -0.706992, 0.609676,
		41.308811, 32.186996, 23.641918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557926, 32.296909, 23.345730>,  <41.057922, 32.681889, 23.215145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557926, 32.296909, 23.345730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.776482, 32.167213, 23.654619>,  <40.907616, 32.089397, 23.839952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.776482, 32.167213, 23.654619>,  <40.557926, 32.296909, 23.345730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776482, 32.167213, 23.654619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758665, 0.198990, 0.620347,
		-0.354803, -0.924810, -0.137260,
		0.546390, -0.324236, 0.772223,
		40.940399, 32.069942, 23.886286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084412, 31.873814, 23.738754>,  <40.557926, 32.296909, 23.345730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084412, 31.873814, 23.738754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.395390, 31.992064, 23.960810>,  <40.581978, 32.063015, 24.094042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.395390, 31.992064, 23.960810>,  <40.084412, 31.873814, 23.738754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395390, 31.992064, 23.960810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623266, 0.480482, 0.616990,
		-0.084335, -0.825677, 0.557804,
		0.777449, 0.295626, 0.555138,
		40.628624, 32.080753, 24.127352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942101, 31.620438, 24.393631>,  <40.084412, 31.873814, 23.738754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942101, 31.620438, 24.393631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.207924, 31.914865, 24.445105>,  <40.367420, 32.091522, 24.475988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.207924, 31.914865, 24.445105>,  <39.942101, 31.620438, 24.393631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207924, 31.914865, 24.445105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601753, 0.425085, 0.676163,
		0.443005, -0.526784, 0.725427,
		0.664560, 0.736072, 0.128679,
		40.407291, 32.135685, 24.483711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089207, 31.545891, 25.072050>,  <39.942101, 31.620438, 24.393631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089207, 31.545891, 25.072050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.223423, 31.914289, 24.992874>,  <40.303951, 32.135330, 24.945370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.223423, 31.914289, 24.992874>,  <40.089207, 31.545891, 25.072050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223423, 31.914289, 24.992874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565663, 0.365006, 0.739457,
		0.753286, -0.136150, 0.643447,
		0.335539, 0.920996, -0.197938,
		40.324085, 32.190590, 24.933493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133953, 31.208652, 25.759789>,  <40.089207, 31.545891, 25.072050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133953, 31.208652, 25.759789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.844307, 30.934883, 25.725805>,  <39.670517, 30.770622, 25.705416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.844307, 30.934883, 25.725805>,  <40.133953, 31.208652, 25.759789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844307, 30.934883, 25.725805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372513, -0.284464, -0.883354,
		0.580421, -0.671300, 0.460942,
		-0.724117, -0.684424, -0.084960,
		39.627071, 30.729555, 25.700317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422733, 30.556091, 25.633051>,  <40.133953, 31.208652, 25.759789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422733, 30.556091, 25.633051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.046078, 30.518208, 25.503839>,  <39.820084, 30.495478, 25.426313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.046078, 30.518208, 25.503839>,  <40.422733, 30.556091, 25.633051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046078, 30.518208, 25.503839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336430, -0.231975, -0.912690,
		0.011507, -0.968100, 0.250300,
		-0.941638, -0.094711, -0.323029,
		39.763588, 30.489794, 25.406931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321735, 29.925873, 25.336096>,  <40.422733, 30.556091, 25.633051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321735, 29.925873, 25.336096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.042660, 30.149185, 25.156517>,  <39.875214, 30.283173, 25.048769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.042660, 30.149185, 25.156517>,  <40.321735, 29.925873, 25.336096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042660, 30.149185, 25.156517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268527, -0.377190, -0.886352,
		-0.664171, -0.738953, 0.113249,
		-0.697689, 0.558279, -0.448948,
		39.833351, 30.316669, 25.021833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074730, 29.519512, 24.905996>,  <40.321735, 29.925873, 25.336096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074730, 29.519512, 24.905996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.936604, 29.867701, 24.765688>,  <39.853729, 30.076614, 24.681503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.936604, 29.867701, 24.765688>,  <40.074730, 29.519512, 24.905996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936604, 29.867701, 24.765688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087185, -0.342389, -0.935504,
		-0.934429, -0.353624, 0.042339,
		-0.345314, 0.870471, -0.350769,
		39.833008, 30.128841, 24.660458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565624, 29.310385, 24.433613>,  <40.074730, 29.519512, 24.905996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565624, 29.310385, 24.433613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.663506, 29.682329, 24.323719>,  <39.722233, 29.905495, 24.257782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.663506, 29.682329, 24.323719>,  <39.565624, 29.310385, 24.433613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663506, 29.682329, 24.323719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028654, -0.276292, -0.960647,
		-0.969174, 0.242946, -0.040965,
		0.244704, 0.929860, -0.274737,
		39.736916, 29.961287, 24.241299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226093, 29.307632, 23.802656>,  <39.565624, 29.310385, 24.433613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226093, 29.307632, 23.802656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.473259, 29.622129, 23.802416>,  <39.621559, 29.810827, 23.802271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.473259, 29.622129, 23.802416>,  <39.226093, 29.307632, 23.802656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473259, 29.622129, 23.802416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168269, -0.132992, -0.976729,
		-0.768027, 0.603435, -0.214478,
		0.617916, 0.786244, -0.000602,
		39.658634, 29.858004, 23.802235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014767, 29.765804, 23.218365>,  <39.226093, 29.307632, 23.802656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014767, 29.765804, 23.218365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.396919, 29.813908, 23.326281>,  <39.626209, 29.842770, 23.391029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.396919, 29.813908, 23.326281>,  <39.014767, 29.765804, 23.218365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396919, 29.813908, 23.326281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286405, -0.153717, -0.945697,
		-0.072255, 0.980770, -0.181300,
		0.955380, 0.120257, 0.269790,
		39.683533, 29.849985, 23.407217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255058, 30.371584, 22.858633>,  <39.014767, 29.765804, 23.218365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255058, 30.371584, 22.858633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.560204, 30.127865, 22.945158>,  <39.743290, 29.981634, 22.997072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.560204, 30.127865, 22.945158>,  <39.255058, 30.371584, 22.858633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560204, 30.127865, 22.945158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301420, 0.039168, -0.952687,
		0.571995, 0.791975, 0.213534,
		0.762868, -0.609296, 0.216313,
		39.789062, 29.945076, 23.010052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782856, 30.673573, 22.466122>,  <39.255058, 30.371584, 22.858633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782856, 30.673573, 22.466122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.913578, 30.303703, 22.544281>,  <39.992012, 30.081781, 22.591177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.913578, 30.303703, 22.544281>,  <39.782856, 30.673573, 22.466122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913578, 30.303703, 22.544281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231133, -0.122277, -0.965208,
		0.916394, 0.360596, 0.173762,
		0.326803, -0.924672, 0.195399,
		40.011620, 30.026302, 22.602901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.469273, 33.902691, 37.632603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.607616, 33.538765, 37.540855>,  <38.690620, 33.320408, 37.485806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.607616, 33.538765, 37.540855>,  <38.469273, 33.902691, 37.632603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607616, 33.538765, 37.540855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137292, 0.192757, -0.971594,
		0.928188, 0.367524, -0.058244,
		0.345857, -0.909819, -0.229373,
		38.711372, 33.265820, 37.472042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953743, 33.913563, 36.950531>,  <38.469273, 33.902691, 37.632603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953743, 33.913563, 36.950531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.799839, 33.552002, 37.025272>,  <38.707497, 33.335064, 37.070118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.799839, 33.552002, 37.025272>,  <38.953743, 33.913563, 36.950531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799839, 33.552002, 37.025272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182399, -0.123985, -0.975376,
		0.904815, -0.409366, -0.117167,
		-0.384759, -0.903907, 0.186852,
		38.684410, 33.280830, 37.081329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341656, 33.456966, 36.492638>,  <38.953743, 33.913563, 36.950531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341656, 33.456966, 36.492638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.015984, 33.246292, 36.590389>,  <38.820580, 33.119888, 36.649040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.015984, 33.246292, 36.590389>,  <39.341656, 33.456966, 36.492638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015984, 33.246292, 36.590389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161869, -0.198302, -0.966682,
		0.557596, -0.826608, 0.076199,
		-0.814178, -0.526683, 0.244375,
		38.771729, 33.088287, 36.663700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348759, 32.821194, 36.108604>,  <39.341656, 33.456966, 36.492638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348759, 32.821194, 36.108604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.968483, 32.904766, 36.200294>,  <38.740318, 32.954910, 36.255306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.968483, 32.904766, 36.200294>,  <39.348759, 32.821194, 36.108604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968483, 32.904766, 36.200294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227503, 0.032559, -0.973233,
		-0.210804, -0.977388, 0.016580,
		-0.950686, 0.208933, 0.229222,
		38.683277, 32.967445, 36.269062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988285, 32.307266, 35.774418>,  <39.348759, 32.821194, 36.108604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988285, 32.307266, 35.774418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.707283, 32.582806, 35.845951>,  <38.538681, 32.748127, 35.888870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.707283, 32.582806, 35.845951>,  <38.988285, 32.307266, 35.774418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707283, 32.582806, 35.845951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283017, -0.039849, -0.958287,
		-0.652986, -0.723811, 0.222949,
		-0.702503, 0.688847, 0.178830,
		38.496532, 32.789459, 35.899601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401276, 32.000248, 35.582573>,  <38.988285, 32.307266, 35.774418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401276, 32.000248, 35.582573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.343426, 32.395775, 35.568024>,  <38.308716, 32.633091, 35.559296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.343426, 32.395775, 35.568024>,  <38.401276, 32.000248, 35.582573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343426, 32.395775, 35.568024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245952, -0.071526, -0.966640,
		-0.958432, -0.130857, 0.253546,
		-0.144627, 0.988818, -0.036369,
		38.300037, 32.692421, 35.557114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653641, 32.260971, 35.405205>,  <38.401276, 32.000248, 35.582573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653641, 32.260971, 35.405205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.857437, 32.603580, 35.372242>,  <37.979713, 32.809147, 35.352463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.857437, 32.603580, 35.372242>,  <37.653641, 32.260971, 35.405205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857437, 32.603580, 35.372242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568426, 0.263119, -0.779525,
		-0.645995, 0.444005, 0.620926,
		0.509491, 0.856520, -0.082411,
		38.010284, 32.860538, 35.347519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213955, 32.770611, 35.300014>,  <37.653641, 32.260971, 35.405205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213955, 32.770611, 35.300014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.534767, 32.954510, 35.147503>,  <37.727257, 33.064850, 35.055996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.534767, 32.954510, 35.147503>,  <37.213955, 32.770611, 35.300014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534767, 32.954510, 35.147503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562161, 0.365404, -0.741927,
		-0.201781, 0.809389, 0.551520,
		0.802035, 0.459750, -0.381275,
		37.775379, 33.092434, 35.033119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956257, 33.285114, 34.994789>,  <37.213955, 32.770611, 35.300014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956257, 33.285114, 34.994789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.315388, 33.269054, 34.819382>,  <37.530865, 33.259418, 34.714138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.315388, 33.269054, 34.819382>,  <36.956257, 33.285114, 34.994789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315388, 33.269054, 34.819382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426980, 0.164179, -0.889232,
		0.107700, 0.985613, 0.130260,
		0.897825, -0.040152, -0.438519,
		37.584736, 33.257008, 34.687824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981510, 33.735569, 34.493694>,  <36.956257, 33.285114, 34.994789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981510, 33.735569, 34.493694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.296665, 33.523659, 34.368107>,  <37.485756, 33.396511, 34.292755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.296665, 33.523659, 34.368107>,  <36.981510, 33.735569, 34.493694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296665, 33.523659, 34.368107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273043, 0.156459, -0.949193,
		0.551984, 0.833580, -0.021381,
		0.787884, -0.529778, -0.313966,
		37.533031, 33.364727, 34.273918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377834, 34.137051, 34.013557>,  <36.981510, 33.735569, 34.493694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377834, 34.137051, 34.013557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.473137, 33.758472, 33.926407>,  <37.530319, 33.531326, 33.874115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.473137, 33.758472, 33.926407>,  <37.377834, 34.137051, 34.013557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473137, 33.758472, 33.926407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294753, 0.143290, -0.944769,
		0.925395, 0.289313, -0.244830,
		0.238253, -0.946449, -0.217876,
		37.544613, 33.474537, 33.861046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570393, 34.198147, 33.323399>,  <37.377834, 34.137051, 34.013557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570393, 34.198147, 33.323399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.488682, 33.808552, 33.362648>,  <37.439655, 33.574795, 33.386196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.488682, 33.808552, 33.362648>,  <37.570393, 34.198147, 33.323399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488682, 33.808552, 33.362648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396865, -0.009233, -0.917830,
		0.894858, -0.226431, -0.384654,
		-0.204274, -0.973984, 0.098124,
		37.427399, 33.516357, 33.392086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777916, 34.563965, 32.726177>,  <37.570393, 34.198147, 33.323399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777916, 34.563965, 32.726177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.539310, 34.819698, 32.532097>,  <37.396149, 34.973141, 32.415649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.539310, 34.819698, 32.532097>,  <37.777916, 34.563965, 32.726177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539310, 34.819698, 32.532097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267953, 0.411213, 0.871266,
		0.756554, 0.649733, -0.073982,
		-0.596513, 0.639336, -0.485203,
		37.360355, 35.011497, 32.386536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040115, 35.180645, 32.974358>,  <37.777916, 34.563965, 32.726177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040115, 35.180645, 32.974358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.670601, 35.243671, 32.834766>,  <37.448891, 35.281487, 32.751011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.670601, 35.243671, 32.834766>,  <38.040115, 35.180645, 32.974358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670601, 35.243671, 32.834766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275368, 0.359909, 0.891424,
		0.266057, 0.919586, -0.289093,
		-0.923789, 0.157563, -0.348981,
		37.393463, 35.290939, 32.730072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895695, 35.917221, 33.090866>,  <38.040115, 35.180645, 32.974358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895695, 35.917221, 33.090866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.544621, 35.729877, 33.050259>,  <37.333977, 35.617470, 33.025894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.544621, 35.729877, 33.050259>,  <37.895695, 35.917221, 33.090866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544621, 35.729877, 33.050259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300912, 0.373721, 0.877374,
		-0.372990, 0.800606, -0.468945,
		-0.877685, -0.468363, -0.101518,
		37.281315, 35.589367, 33.019802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363449, 36.436386, 33.234505>,  <37.895695, 35.917221, 33.090866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363449, 36.436386, 33.234505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.193539, 36.077900, 33.285675>,  <37.091595, 35.862808, 33.316376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.193539, 36.077900, 33.285675>,  <37.363449, 36.436386, 33.234505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193539, 36.077900, 33.285675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405682, 0.314765, 0.858106,
		-0.809314, 0.312603, -0.497282,
		-0.424774, -0.896215, 0.127926,
		37.066105, 35.809036, 33.324055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760807, 36.747467, 33.381493>,  <37.363449, 36.436386, 33.234505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760807, 36.747467, 33.381493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.710453, 36.364361, 33.484905>,  <36.680241, 36.134499, 33.546951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.710453, 36.364361, 33.484905>,  <36.760807, 36.747467, 33.381493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710453, 36.364361, 33.484905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597886, 0.281205, 0.750637,
		-0.791634, -0.060078, -0.608034,
		-0.125886, -0.957765, 0.258532,
		36.672688, 36.077030, 33.562466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059303, 36.564182, 33.386032>,  <36.760807, 36.747467, 33.381493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059303, 36.564182, 33.386032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229202, 36.296555, 33.629978>,  <36.331142, 36.135979, 33.776344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229202, 36.296555, 33.629978>,  <36.059303, 36.564182, 33.386032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229202, 36.296555, 33.629978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608751, 0.287539, 0.739421,
		-0.670086, -0.685321, -0.285167,
		0.424744, -0.669071, 0.609865,
		36.356625, 36.095833, 33.812939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528332, 36.337845, 33.678829>,  <36.059303, 36.564182, 33.386032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528332, 36.337845, 33.678829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840805, 36.278019, 33.921280>,  <36.028290, 36.242123, 34.066750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840805, 36.278019, 33.921280>,  <35.528332, 36.337845, 33.678829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840805, 36.278019, 33.921280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479971, 0.476972, 0.736292,
		-0.399230, -0.866099, 0.300813,
		0.781181, -0.149568, 0.606123,
		36.075161, 36.233147, 34.103115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211388, 36.163918, 34.341507>,  <35.528332, 36.337845, 33.678829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211388, 36.163918, 34.341507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.584179, 36.262440, 34.447903>,  <35.807854, 36.321552, 34.511738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.584179, 36.262440, 34.447903>,  <35.211388, 36.163918, 34.341507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584179, 36.262440, 34.447903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344801, 0.375745, 0.860190,
		0.111930, -0.893391, 0.435114,
		0.931979, 0.246309, 0.265985,
		35.863773, 36.336334, 34.527699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129147, 36.115833, 35.011436>,  <35.211388, 36.163918, 34.341507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129147, 36.115833, 35.011436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.455471, 36.337894, 34.946625>,  <35.651264, 36.471130, 34.907738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.455471, 36.337894, 34.946625>,  <35.129147, 36.115833, 35.011436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455471, 36.337894, 34.946625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233378, 0.572388, 0.786070,
		0.529130, -0.603475, 0.596523,
		0.815816, 0.555149, -0.162030,
		35.700214, 36.504440, 34.898014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408730, 36.389919, 35.645611>,  <35.129147, 36.115833, 35.011436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408730, 36.389919, 35.645611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.561451, 36.645229, 35.378231>,  <35.653084, 36.798416, 35.217804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.561451, 36.645229, 35.378231>,  <35.408730, 36.389919, 35.645611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561451, 36.645229, 35.378231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157879, 0.757656, 0.633270,
		0.910657, -0.136252, 0.390049,
		0.381808, 0.638273, -0.668454,
		35.675995, 36.836712, 35.177696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754002, 36.868042, 36.043865>,  <35.408730, 36.389919, 35.645611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754002, 36.868042, 36.043865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.687088, 37.046436, 35.692158>,  <35.646938, 37.153473, 35.481133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.687088, 37.046436, 35.692158>,  <35.754002, 36.868042, 36.043865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687088, 37.046436, 35.692158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065964, 0.884773, 0.461330,
		0.983699, 0.135175, -0.118593,
		-0.167289, 0.445987, -0.879267,
		35.636902, 37.180233, 35.428379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083778, 37.445835, 36.003628>,  <35.754002, 36.868042, 36.043865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083778, 37.445835, 36.003628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.811310, 37.513382, 35.718674>,  <35.647827, 37.553909, 35.547703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.811310, 37.513382, 35.718674>,  <36.083778, 37.445835, 36.003628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811310, 37.513382, 35.718674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127577, 0.930772, 0.342619,
		0.720921, 0.324267, -0.612474,
		-0.681174, 0.168863, -0.712381,
		35.606956, 37.564041, 35.504959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393250, 37.968315, 35.680325>,  <36.083778, 37.445835, 36.003628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393250, 37.968315, 35.680325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995716, 37.946365, 35.641796>,  <35.757195, 37.933193, 35.618679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995716, 37.946365, 35.641796>,  <36.393250, 37.968315, 35.680325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995716, 37.946365, 35.641796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101703, 0.797050, 0.595288,
		0.044101, 0.601414, -0.797719,
		-0.993837, -0.054877, -0.096316,
		35.697563, 37.929901, 35.612900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884731, 38.164341, 35.112282>,  <36.393250, 37.968315, 35.680325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884731, 38.164341, 35.112282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815109, 38.145668, 34.718830>,  <36.773338, 38.134464, 34.482758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815109, 38.145668, 34.718830>,  <36.884731, 38.164341, 35.112282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815109, 38.145668, 34.718830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946008, 0.285304, 0.153853,
		0.273451, 0.957299, -0.093823,
		-0.174051, -0.046686, -0.983629,
		36.762894, 38.131660, 34.423740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636585, 38.792664, 34.812721>,  <36.884731, 38.164341, 35.112282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636585, 38.792664, 34.812721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.473278, 38.568180, 34.524731>,  <36.375294, 38.433491, 34.351936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.473278, 38.568180, 34.524731>,  <36.636585, 38.792664, 34.812721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473278, 38.568180, 34.524731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883326, 0.441877, 0.156457,
		0.230335, 0.699847, -0.676136,
		-0.408265, -0.561211, -0.719973,
		36.350800, 38.399818, 34.308739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406178, 38.896935, 35.123398>,  <36.636585, 38.792664, 34.812721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406178, 38.896935, 35.123398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.798916, 38.936562, 35.188110>,  <38.034557, 38.960339, 35.226936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.798916, 38.936562, 35.188110>,  <37.406178, 38.896935, 35.123398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798916, 38.936562, 35.188110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187930, -0.624285, -0.758255,
		0.025881, 0.774890, -0.631566,
		0.981841, 0.099066, 0.161783,
		38.093468, 38.966282, 35.236645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737339, 38.975868, 34.491173>,  <37.406178, 38.896935, 35.123398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737339, 38.975868, 34.491173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.002220, 38.832493, 34.754387>,  <38.161148, 38.746468, 34.912315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.002220, 38.832493, 34.754387>,  <37.737339, 38.975868, 34.491173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002220, 38.832493, 34.754387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329880, -0.649038, -0.685514,
		0.672804, 0.671021, -0.311552,
		0.662203, -0.358442, 0.658032,
		38.200882, 38.724960, 34.951797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458538, 38.860516, 34.097694>,  <37.737339, 38.975868, 34.491173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458538, 38.860516, 34.097694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.452255, 38.636173, 34.428799>,  <38.448486, 38.501568, 34.627460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.452255, 38.636173, 34.428799>,  <38.458538, 38.860516, 34.097694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452255, 38.636173, 34.428799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562872, -0.689188, -0.456285,
		0.826395, 0.458758, 0.326516,
		-0.015707, -0.560858, 0.827763,
		38.447544, 38.467915, 34.677128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138500, 38.717319, 34.355476>,  <38.458538, 38.860516, 34.097694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138500, 38.717319, 34.355476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.900986, 38.418709, 34.475559>,  <38.758476, 38.239544, 34.547607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.900986, 38.418709, 34.475559>,  <39.138500, 38.717319, 34.355476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900986, 38.418709, 34.475559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585313, -0.656760, -0.475473,
		0.552116, -0.106613, 0.826923,
		-0.593781, -0.746525, 0.300206,
		38.722851, 38.194752, 34.565620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587017, 38.278667, 34.661003>,  <39.138500, 38.717319, 34.355476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587017, 38.278667, 34.661003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.270878, 38.054665, 34.561611>,  <39.081196, 37.920261, 34.501976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.270878, 38.054665, 34.561611>,  <39.587017, 38.278667, 34.661003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270878, 38.054665, 34.561611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582152, -0.560053, -0.589440,
		0.190931, -0.610514, 0.768647,
		-0.790344, -0.560012, -0.248481,
		39.033775, 37.886662, 34.487068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733231, 37.587448, 34.825741>,  <39.587017, 38.278667, 34.661003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733231, 37.587448, 34.825741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.446159, 37.588192, 34.547192>,  <39.273914, 37.588638, 34.380062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.446159, 37.588192, 34.547192>,  <39.733231, 37.587448, 34.825741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446159, 37.588192, 34.547192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580048, -0.551739, -0.599273,
		-0.385326, -0.834014, 0.394896,
		-0.717682, 0.001856, -0.696369,
		39.230854, 37.588749, 34.338280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718849, 36.915035, 34.579304>,  <39.733231, 37.587448, 34.825741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718849, 36.915035, 34.579304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.517113, 37.102089, 34.288937>,  <39.396069, 37.214321, 34.114716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.517113, 37.102089, 34.288937>,  <39.718849, 36.915035, 34.579304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517113, 37.102089, 34.288937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519129, -0.507579, -0.687654,
		-0.690029, -0.723661, 0.013235,
		-0.504346, 0.467631, -0.725918,
		39.365810, 37.242378, 34.071159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568523, 36.417019, 34.021858>,  <39.718849, 36.915035, 34.579304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568523, 36.417019, 34.021858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.514091, 36.762459, 33.827675>,  <39.481430, 36.969723, 33.711163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.514091, 36.762459, 33.827675>,  <39.568523, 36.417019, 34.021858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514091, 36.762459, 33.827675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404887, -0.398746, -0.822842,
		-0.904183, -0.308533, -0.295399,
		-0.136084, 0.863603, -0.485460,
		39.473267, 37.021538, 33.682037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455856, 36.131584, 33.262600>,  <39.568523, 36.417019, 34.021858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455856, 36.131584, 33.262600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.539440, 36.522129, 33.240501>,  <39.589592, 36.756454, 33.227242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.539440, 36.522129, 33.240501>,  <39.455856, 36.131584, 33.262600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539440, 36.522129, 33.240501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361832, -0.129671, -0.923181,
		-0.908523, 0.172919, -0.380375,
		0.208959, 0.976363, -0.055242,
		39.602127, 36.815037, 33.223930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149681, 36.285229, 32.701347>,  <39.455856, 36.131584, 33.262600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149681, 36.285229, 32.701347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.443386, 36.551155, 32.756310>,  <39.619610, 36.710709, 32.789288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.443386, 36.551155, 32.756310>,  <39.149681, 36.285229, 32.701347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443386, 36.551155, 32.756310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347899, -0.194699, -0.917093,
		-0.582941, 0.721192, -0.374248,
		0.734266, 0.664811, 0.137404,
		39.663666, 36.750599, 32.797531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130585, 36.715652, 32.127541>,  <39.149681, 36.285229, 32.701347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130585, 36.715652, 32.127541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.497787, 36.745018, 32.283421>,  <39.718109, 36.762638, 32.376949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.497787, 36.745018, 32.283421>,  <39.130585, 36.715652, 32.127541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497787, 36.745018, 32.283421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396227, -0.209723, -0.893879,
		0.016106, 0.975001, -0.221617,
		0.918011, 0.073414, 0.389699,
		39.773190, 36.767044, 32.400330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501190, 37.093559, 31.600315>,  <39.130585, 36.715652, 32.127541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501190, 37.093559, 31.600315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.793961, 36.947300, 31.830303>,  <39.969624, 36.859547, 31.968296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.793961, 36.947300, 31.830303>,  <39.501190, 37.093559, 31.600315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793961, 36.947300, 31.830303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551525, -0.177613, -0.815030,
		0.400134, 0.913651, 0.071663,
		0.731924, -0.365645, 0.574970,
		40.013538, 36.837608, 32.002792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182220, 37.435349, 31.403122>,  <39.501190, 37.093559, 31.600315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182220, 37.435349, 31.403122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.250156, 37.068615, 31.547663>,  <40.290916, 36.848576, 31.634386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.250156, 37.068615, 31.547663>,  <40.182220, 37.435349, 31.403122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250156, 37.068615, 31.547663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584658, -0.201431, -0.785876,
		0.793303, 0.344738, 0.501822,
		0.169839, -0.916832, 0.361350,
		40.301109, 36.793564, 31.656067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762543, 37.312092, 31.075825>,  <40.182220, 37.435349, 31.403122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762543, 37.312092, 31.075825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.683140, 36.957870, 31.243816>,  <40.635498, 36.745338, 31.344612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.683140, 36.957870, 31.243816>,  <40.762543, 37.312092, 31.075825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683140, 36.957870, 31.243816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434401, -0.463615, -0.772241,
		0.878573, 0.029145, 0.476718,
		-0.198507, -0.885557, 0.419981,
		40.623589, 36.692204, 31.369810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348392, 36.953953, 31.198793>,  <40.762543, 37.312092, 31.075825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348392, 36.953953, 31.198793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.077381, 36.660812, 31.173903>,  <40.914772, 36.484928, 31.158968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.077381, 36.660812, 31.173903>,  <41.348392, 36.953953, 31.198793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077381, 36.660812, 31.173903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392776, -0.288992, -0.873047,
		0.621834, -0.615960, 0.483650,
		-0.677533, -0.732856, -0.062229,
		40.874123, 36.440956, 31.155233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693314, 36.254944, 30.930529>,  <41.348392, 36.953953, 31.198793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693314, 36.254944, 30.930529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.305168, 36.196667, 30.853413>,  <41.072281, 36.161701, 30.807142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.305168, 36.196667, 30.853413>,  <41.693314, 36.254944, 30.930529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305168, 36.196667, 30.853413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238456, -0.447994, -0.861650,
		0.039169, -0.882085, 0.469459,
		-0.970363, -0.145695, -0.192791,
		41.014061, 36.152958, 30.795576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583889, 35.512299, 30.918009>,  <41.693314, 36.254944, 30.930529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583889, 35.512299, 30.918009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.279514, 35.667904, 30.710297>,  <41.096889, 35.761265, 30.585669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.279514, 35.667904, 30.710297>,  <41.583889, 35.512299, 30.918009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279514, 35.667904, 30.710297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324343, -0.465099, -0.823702,
		-0.561944, -0.795207, 0.227737,
		-0.760933, 0.389010, -0.519280,
		41.051235, 35.784607, 30.554512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350269, 35.014622, 30.516216>,  <41.583889, 35.512299, 30.918009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350269, 35.014622, 30.516216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.196400, 35.331512, 30.326735>,  <41.104076, 35.521648, 30.213045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.196400, 35.331512, 30.326735>,  <41.350269, 35.014622, 30.516216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196400, 35.331512, 30.326735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212325, -0.423490, -0.880667,
		-0.898301, -0.439349, -0.005305,
		-0.384673, 0.792230, -0.473706,
		41.080997, 35.569180, 30.184622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914780, 34.724403, 29.976515>,  <41.350269, 35.014622, 30.516216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914780, 34.724403, 29.976515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.978634, 35.096333, 29.843878>,  <41.016945, 35.319489, 29.764296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.978634, 35.096333, 29.843878>,  <40.914780, 34.724403, 29.976515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978634, 35.096333, 29.843878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013289, -0.333843, -0.942535,
		-0.987087, 0.154864, -0.040935,
		0.159631, 0.929820, -0.331590,
		41.026524, 35.375278, 29.744400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459621, 34.905396, 29.399931>,  <40.914780, 34.724403, 29.976515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459621, 34.905396, 29.399931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.788654, 35.131508, 29.375238>,  <40.986076, 35.267174, 29.360422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.788654, 35.131508, 29.375238>,  <40.459621, 34.905396, 29.399931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788654, 35.131508, 29.375238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199670, -0.388781, -0.899434,
		-0.532435, 0.727534, -0.432675,
		0.822585, 0.565282, -0.061734,
		41.035431, 35.301094, 29.356718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512032, 34.974133, 28.753662>,  <40.459621, 34.905396, 29.399931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512032, 34.974133, 28.753662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.870201, 35.114185, 28.863659>,  <41.085102, 35.198215, 28.929657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.870201, 35.114185, 28.863659>,  <40.512032, 34.974133, 28.753662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870201, 35.114185, 28.863659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395339, -0.341267, -0.852786,
		-0.204740, 0.872322, -0.444000,
		0.895427, 0.350130, 0.274992,
		41.138828, 35.219223, 28.946156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764896, 35.098598, 28.174791>,  <40.512032, 34.974133, 28.753662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764896, 35.098598, 28.174791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.093365, 35.123165, 28.401739>,  <41.290447, 35.137905, 28.537909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.093365, 35.123165, 28.401739>,  <40.764896, 35.098598, 28.174791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093365, 35.123165, 28.401739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555373, -0.314749, -0.769736,
		0.131304, 0.947186, -0.292572,
		0.821170, 0.061417, 0.567370,
		41.339714, 35.141590, 28.571951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314953, 35.468155, 27.820789>,  <40.764896, 35.098598, 28.174791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314953, 35.468155, 27.820789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.484940, 35.252251, 28.111460>,  <41.586933, 35.122707, 28.285862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.484940, 35.252251, 28.111460>,  <41.314953, 35.468155, 27.820789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484940, 35.252251, 28.111460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716392, -0.290177, -0.634492,
		0.553339, 0.790224, 0.263365,
		0.424968, -0.539762, 0.726677,
		41.612431, 35.090321, 28.329462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063904, 35.598812, 27.911293>,  <41.314953, 35.468155, 27.820789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063904, 35.598812, 27.911293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.992580, 35.224148, 28.031878>,  <41.949787, 34.999352, 28.104227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.992580, 35.224148, 28.031878>,  <42.063904, 35.598812, 27.911293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992580, 35.224148, 28.031878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642389, -0.342884, -0.685395,
		0.745346, 0.071441, 0.662839,
		-0.178312, -0.936657, 0.301460,
		41.939087, 34.943150, 28.122316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717876, 35.336140, 27.921967>,  <42.063904, 35.598812, 27.911293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717876, 35.336140, 27.921967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.490494, 35.007431, 27.937744>,  <42.354065, 34.810207, 27.947210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.490494, 35.007431, 27.937744>,  <42.717876, 35.336140, 27.921967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490494, 35.007431, 27.937744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714086, -0.516642, -0.472400,
		0.408583, -0.240370, 0.880501,
		-0.568454, -0.821769, 0.039446,
		42.319958, 34.760899, 27.949577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233234, 34.872555, 28.039064>,  <42.717876, 35.336140, 27.921967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233234, 34.872555, 28.039064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.922062, 34.644932, 27.932487>,  <42.735359, 34.508358, 27.868542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.922062, 34.644932, 27.932487>,  <43.233234, 34.872555, 28.039064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922062, 34.644932, 27.932487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601188, -0.550757, -0.578999,
		0.182741, -0.610603, 0.770565,
		-0.777932, -0.569061, -0.266441,
		42.688683, 34.474213, 27.852554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513027, 34.147377, 27.951328>,  <43.233234, 34.872555, 28.039064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513027, 34.147377, 27.951328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.163052, 34.160954, 27.758112>,  <42.953068, 34.169098, 27.642181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.163052, 34.160954, 27.758112>,  <43.513027, 34.147377, 27.951328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163052, 34.160954, 27.758112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386628, -0.551636, -0.739064,
		-0.291546, -0.833394, 0.469526,
		-0.874940, 0.033939, -0.483041,
		42.900570, 34.171135, 27.613199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990349, 33.709507, 28.549192>,  <43.513027, 34.147377, 27.951328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990349, 33.709507, 28.549192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.194637, 33.468807, 28.794815>,  <43.317211, 33.324387, 28.942188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.194637, 33.468807, 28.794815>,  <42.990349, 33.709507, 28.549192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194637, 33.468807, 28.794815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466175, 0.406294, 0.785879,
		-0.722388, -0.687623, -0.073016,
		0.510722, -0.601748, 0.614055,
		43.347855, 33.288284, 28.979031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433197, 33.479042, 29.056753>,  <42.990349, 33.709507, 28.549192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433197, 33.479042, 29.056753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.790718, 33.411438, 29.222914>,  <43.005230, 33.370876, 29.322609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.790718, 33.411438, 29.222914>,  <42.433197, 33.479042, 29.056753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790718, 33.411438, 29.222914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369109, 0.248860, 0.895448,
		-0.254715, -0.953680, 0.160049,
		0.893800, -0.169008, 0.415401,
		43.058857, 33.360737, 29.347534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264454, 33.102200, 29.665878>,  <42.433197, 33.479042, 29.056753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264454, 33.102200, 29.665878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.633877, 33.242455, 29.727961>,  <42.855530, 33.326607, 29.765209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.633877, 33.242455, 29.727961>,  <42.264454, 33.102200, 29.665878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.633877, 33.242455, 29.727961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214470, 0.136828, 0.967099,
		0.317865, -0.926461, 0.201571,
		0.923561, 0.350638, 0.155205,
		42.910946, 33.347645, 29.774523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387276, 32.737106, 30.284512>,  <42.264454, 33.102200, 29.665878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387276, 32.737106, 30.284512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.656822, 33.031590, 30.259523>,  <42.818550, 33.208279, 30.244532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.656822, 33.031590, 30.259523>,  <42.387276, 32.737106, 30.284512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656822, 33.031590, 30.259523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235929, 0.294531, 0.926061,
		0.700170, -0.609306, 0.372167,
		0.673869, 0.736205, -0.062469,
		42.858982, 33.252453, 30.240784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942886, 32.674397, 30.824202>,  <42.387276, 32.737106, 30.284512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942886, 32.674397, 30.824202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.923676, 33.061321, 30.724600>,  <42.912151, 33.293476, 30.664839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.923676, 33.061321, 30.724600>,  <42.942886, 32.674397, 30.824202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923676, 33.061321, 30.724600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223915, 0.232523, 0.946465,
		0.973425, 0.101209, 0.205429,
		-0.048024, 0.967311, -0.249006,
		42.909267, 33.351513, 30.649899>
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
