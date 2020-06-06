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
	<24.566334, 34.972992, 34.470856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.572126, 34.942265, 34.869633>,  <24.575602, 34.923828, 35.108898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.572126, 34.942265, 34.869633>,  <24.566334, 34.972992, 34.470856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.572126, 34.942265, 34.869633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695562, 0.717047, 0.045145,
		-0.718321, 0.692780, 0.063813,
		0.014481, -0.076814, 0.996940,
		24.576471, 34.919220, 35.168716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.368008, 35.587177, 34.841057>,  <24.566334, 34.972992, 34.470856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.368008, 35.587177, 34.841057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607821, 35.367870, 35.074280>,  <24.751707, 35.236286, 35.214214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607821, 35.367870, 35.074280>,  <24.368008, 35.587177, 34.841057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.607821, 35.367870, 35.074280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652757, 0.756502, 0.040168,
		-0.463111, 0.356516, 0.811434,
		0.599530, -0.548271, 0.583062,
		24.787680, 35.203388, 35.249199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.248411, 35.818470, 35.530357>,  <24.368008, 35.587177, 34.841057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.248411, 35.818470, 35.530357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.589857, 35.660549, 35.394432>,  <24.794725, 35.565796, 35.312878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.589857, 35.660549, 35.394432>,  <24.248411, 35.818470, 35.530357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.589857, 35.660549, 35.394432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467157, 0.868813, 0.164097,
		0.230446, -0.298821, 0.926067,
		0.853615, -0.394803, -0.339811,
		24.845942, 35.542107, 35.292488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.695621, 35.978237, 36.072571>,  <24.248411, 35.818470, 35.530357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.695621, 35.978237, 36.072571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947269, 35.904987, 35.770401>,  <25.098259, 35.861038, 35.589100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947269, 35.904987, 35.770401>,  <24.695621, 35.978237, 36.072571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.947269, 35.904987, 35.770401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423821, 0.895496, 0.135876,
		0.651601, -0.405648, 0.640988,
		0.629120, -0.183127, -0.755429,
		25.136005, 35.850048, 35.543774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429602, 36.005108, 36.316746>,  <24.695621, 35.978237, 36.072571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429602, 36.005108, 36.316746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444876, 36.102524, 35.929089>,  <25.454041, 36.160973, 35.696495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444876, 36.102524, 35.929089>,  <25.429602, 36.005108, 36.316746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444876, 36.102524, 35.929089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661230, 0.720993, 0.207231,
		0.749211, -0.648737, -0.133503,
		0.038184, 0.243536, -0.969140,
		25.456331, 36.175583, 35.638348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137882, 36.182583, 36.071064>,  <25.429602, 36.005108, 36.316746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137882, 36.182583, 36.071064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881855, 36.353722, 35.815796>,  <25.728239, 36.456406, 35.662636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881855, 36.353722, 35.815796>,  <26.137882, 36.182583, 36.071064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.881855, 36.353722, 35.815796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604796, 0.792836, -0.075057,
		0.473849, -0.434003, -0.766230,
		-0.640070, 0.427847, -0.638168,
		25.689835, 36.482075, 35.624344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554449, 36.446697, 35.446690>,  <26.137882, 36.182583, 36.071064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554449, 36.446697, 35.446690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223261, 36.647030, 35.547596>,  <26.024548, 36.767227, 35.608139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223261, 36.647030, 35.547596>,  <26.554449, 36.446697, 35.446690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223261, 36.647030, 35.547596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544020, 0.826509, 0.144654,
		-0.136055, 0.257008, -0.956784,
		-0.827968, 0.500829, 0.252268,
		25.974871, 36.797279, 35.623276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.392109, 37.055733, 34.987518>,  <26.554449, 36.446697, 35.446690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.392109, 37.055733, 34.987518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288237, 37.130516, 35.366489>,  <26.225914, 37.175388, 35.593872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288237, 37.130516, 35.366489>,  <26.392109, 37.055733, 34.987518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288237, 37.130516, 35.366489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470095, 0.881463, -0.045096,
		-0.843550, 0.433668, -0.316789,
		-0.259681, 0.186962, 0.947423,
		26.210333, 37.186604, 35.650715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201494, 37.795074, 35.031185>,  <26.392109, 37.055733, 34.987518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201494, 37.795074, 35.031185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264795, 37.681713, 35.409527>,  <26.302776, 37.613697, 35.636532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264795, 37.681713, 35.409527>,  <26.201494, 37.795074, 35.031185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264795, 37.681713, 35.409527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656205, 0.745964, 0.113723,
		-0.737802, 0.602677, 0.304021,
		0.158251, -0.283405, 0.945853,
		26.312271, 37.596691, 35.693283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216585, 38.404354, 35.513042>,  <26.201494, 37.795074, 35.031185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216585, 38.404354, 35.513042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405462, 38.133999, 35.739391>,  <26.518787, 37.971786, 35.875202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405462, 38.133999, 35.739391>,  <26.216585, 38.404354, 35.513042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405462, 38.133999, 35.739391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686439, 0.684675, 0.244992,
		-0.553025, 0.272753, 0.787254,
		0.472191, -0.675889, 0.565871,
		26.547119, 37.931232, 35.909153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451324, 38.827366, 36.041306>,  <26.216585, 38.404354, 35.513042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451324, 38.827366, 36.041306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663568, 38.490681, 36.081253>,  <26.790915, 38.288670, 36.105221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663568, 38.490681, 36.081253>,  <26.451324, 38.827366, 36.041306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663568, 38.490681, 36.081253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821816, 0.539722, 0.182534,
		-0.207544, -0.014779, 0.978114,
		0.530608, -0.841713, 0.099870,
		26.822750, 38.238167, 36.111214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633648, 38.706596, 36.775913>,  <26.451324, 38.827366, 36.041306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633648, 38.706596, 36.775913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888941, 38.573662, 36.498146>,  <27.042116, 38.493900, 36.331486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888941, 38.573662, 36.498146>,  <26.633648, 38.706596, 36.775913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888941, 38.573662, 36.498146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765494, 0.369716, 0.526620,
		0.081722, -0.867677, 0.490365,
		0.638232, -0.332336, -0.694416,
		27.080410, 38.473961, 36.289822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173595, 38.589615, 37.266281>,  <26.633648, 38.706596, 36.775913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173595, 38.589615, 37.266281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337946, 38.641842, 36.905365>,  <27.436556, 38.673180, 36.688816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337946, 38.641842, 36.905365>,  <27.173595, 38.589615, 37.266281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337946, 38.641842, 36.905365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716176, 0.566201, 0.408054,
		0.564147, -0.813864, 0.139152,
		0.410889, 0.130545, -0.902290,
		27.461208, 38.681011, 36.634678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261034, 37.813953, 37.340874>,  <27.173595, 38.589615, 37.266281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261034, 37.813953, 37.340874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.377398, 37.490459, 37.545353>,  <27.447216, 37.296364, 37.668041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.377398, 37.490459, 37.545353>,  <27.261034, 37.813953, 37.340874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377398, 37.490459, 37.545353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690417, 0.192436, 0.697347,
		-0.662340, -0.555803, -0.502383,
		0.290911, -0.808735, 0.511194,
		27.464670, 37.247841, 37.698711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849670, 38.164665, 37.330410>,  <27.261034, 37.813953, 37.340874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849670, 38.164665, 37.330410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190790, 38.083103, 37.138096>,  <28.395462, 38.034164, 37.022709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190790, 38.083103, 37.138096>,  <27.849670, 38.164665, 37.330410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190790, 38.083103, 37.138096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002434, -0.919061, 0.394108,
		-0.522232, -0.337266, -0.783279,
		0.852800, -0.203909, -0.480784,
		28.446630, 38.021931, 36.993862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781021, 37.453613, 36.979107>,  <27.849670, 38.164665, 37.330410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781021, 37.453613, 36.979107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171806, 37.538975, 36.978870>,  <28.406277, 37.590191, 36.978729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171806, 37.538975, 36.978870>,  <27.781021, 37.453613, 36.979107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171806, 37.538975, 36.978870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207884, -0.951062, 0.228618,
		0.048229, -0.223473, -0.973516,
		0.976964, 0.213404, -0.000588,
		28.464895, 37.602997, 36.978695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703720, 37.239262, 36.196178>,  <27.781021, 37.453613, 36.979107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703720, 37.239262, 36.196178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428066, 37.527016, 36.161362>,  <27.262674, 37.699669, 36.140472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428066, 37.527016, 36.161362>,  <27.703720, 37.239262, 36.196178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428066, 37.527016, 36.161362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708380, -0.694100, -0.128154,
		-0.152607, -0.026658, 0.987927,
		-0.689137, 0.719385, -0.087041,
		27.221325, 37.742832, 36.135250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.171698, 37.047157, 36.616768>,  <27.703720, 37.239262, 36.196178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.171698, 37.047157, 36.616768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981339, 37.331905, 36.410172>,  <26.867123, 37.502754, 36.286213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981339, 37.331905, 36.410172>,  <27.171698, 37.047157, 36.616768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981339, 37.331905, 36.410172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790381, -0.603746, -0.103871,
		-0.385772, 0.358793, 0.849969,
		-0.475897, 0.711870, -0.516491,
		26.838570, 37.545467, 36.255226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574331, 37.111839, 36.899483>,  <27.171698, 37.047157, 36.616768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574331, 37.111839, 36.899483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499195, 37.256920, 36.534370>,  <26.454113, 37.343967, 36.315304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499195, 37.256920, 36.534370>,  <26.574331, 37.111839, 36.899483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499195, 37.256920, 36.534370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803190, -0.591619, -0.069799,
		-0.565333, 0.720023, 0.402449,
		-0.187840, 0.362703, -0.912778,
		26.442842, 37.365730, 36.260536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906803, 37.463520, 36.903358>,  <26.574331, 37.111839, 36.899483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.906803, 37.463520, 36.903358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996658, 37.366165, 36.525936>,  <26.050571, 37.307751, 36.299480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996658, 37.366165, 36.525936>,  <25.906803, 37.463520, 36.903358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996658, 37.366165, 36.525936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933497, -0.331493, -0.136737,
		-0.279503, 0.911524, -0.301666,
		0.224639, -0.243386, -0.943557,
		26.064051, 37.293148, 36.242870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398981, 37.629169, 36.302750>,  <25.906803, 37.463520, 36.903358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398981, 37.629169, 36.302750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610922, 37.308628, 36.191692>,  <25.738087, 37.116302, 36.125057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610922, 37.308628, 36.191692>,  <25.398981, 37.629169, 36.302750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.610922, 37.308628, 36.191692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845811, -0.475335, -0.242198,
		0.062111, 0.363167, -0.929651,
		0.529854, -0.801353, -0.277647,
		25.769878, 37.068222, 36.108398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262836, 37.449589, 35.579994>,  <25.398981, 37.629169, 36.302750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262836, 37.449589, 35.579994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346540, 37.122555, 35.794567>,  <25.396763, 36.926334, 35.923309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346540, 37.122555, 35.794567>,  <25.262836, 37.449589, 35.579994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.346540, 37.122555, 35.794567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893447, -0.382825, -0.234940,
		0.397444, -0.430111, -0.810582,
		0.209261, -0.817588, 0.536433,
		25.409319, 36.877277, 35.955498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.688950, 37.010033, 35.339066>,  <25.262836, 37.449589, 35.579994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.688950, 37.010033, 35.339066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883583, 36.804623, 35.621777>,  <25.000362, 36.681377, 35.791401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883583, 36.804623, 35.621777>,  <24.688950, 37.010033, 35.339066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.883583, 36.804623, 35.621777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771649, -0.631950, 0.072084,
		0.409629, -0.580456, -0.703758,
		0.486581, -0.513526, 0.706774,
		25.029558, 36.650566, 35.833809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.274090, 36.819878, 34.881962>,  <24.688950, 37.010033, 35.339066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.274090, 36.819878, 34.881962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574633, 36.613293, 35.046268>,  <25.754959, 36.489342, 35.144852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574633, 36.613293, 35.046268>,  <25.274090, 36.819878, 34.881962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574633, 36.613293, 35.046268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548810, -0.834701, -0.045618,
		0.366426, -0.191157, -0.910599,
		0.751358, -0.516462, 0.410765,
		25.800039, 36.458355, 35.169498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.462425, 36.182663, 34.348766>,  <25.274090, 36.819878, 34.881962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.462425, 36.182663, 34.348766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532806, 36.168789, 34.742283>,  <25.575035, 36.160465, 34.978394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532806, 36.168789, 34.742283>,  <25.462425, 36.182663, 34.348766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.532806, 36.168789, 34.742283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351069, -0.935876, 0.029790,
		0.919669, -0.350619, -0.176846,
		0.175951, -0.034688, 0.983787,
		25.585592, 36.158382, 35.037418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893721, 35.627769, 34.531067>,  <25.462425, 36.182663, 34.348766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893721, 35.627769, 34.531067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.671631, 35.696011, 34.856670>,  <25.538376, 35.736958, 35.052032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.671631, 35.696011, 34.856670>,  <25.893721, 35.627769, 34.531067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.671631, 35.696011, 34.856670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170105, -0.981339, 0.089650,
		0.814118, -0.088691, 0.573887,
		-0.555226, 0.170607, 0.814013,
		25.505062, 35.747192, 35.100876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.945713, 35.020454, 34.764748>,  <25.893721, 35.627769, 34.531067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.945713, 35.020454, 34.764748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616173, 35.192207, 34.912746>,  <25.418447, 35.295258, 35.001545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616173, 35.192207, 34.912746>,  <25.945713, 35.020454, 34.764748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616173, 35.192207, 34.912746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434515, -0.897606, 0.074160,
		0.363955, -0.099673, 0.926068,
		-0.823852, 0.429382, 0.369998,
		25.369017, 35.321022, 35.023746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671017, 34.894817, 35.479828>,  <25.945713, 35.020454, 34.764748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671017, 34.894817, 35.479828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374660, 34.974102, 35.223145>,  <25.196846, 35.021671, 35.069134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374660, 34.974102, 35.223145>,  <25.671017, 34.894817, 35.479828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.374660, 34.974102, 35.223145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235570, -0.971451, -0.028084,
		-0.628957, 0.130361, 0.766432,
		-0.740891, 0.198213, -0.641710,
		25.152393, 35.033566, 35.030632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294048, 35.310268, 35.364902>,  <25.671017, 34.894817, 35.479828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294048, 35.310268, 35.364902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240229, 34.913910, 35.366425>,  <26.207937, 34.676094, 35.367336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240229, 34.913910, 35.366425>,  <26.294048, 35.310268, 35.364902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240229, 34.913910, 35.366425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899779, -0.120565, 0.419359,
		-0.415084, 0.059847, 0.907812,
		-0.134548, -0.990900, 0.003804,
		26.199863, 34.616638, 35.367565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.297585, 35.046280, 36.017811>,  <26.294048, 35.310268, 35.364902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.297585, 35.046280, 36.017811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438919, 34.748947, 35.790615>,  <26.523720, 34.570549, 35.654297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438919, 34.748947, 35.790615>,  <26.297585, 35.046280, 36.017811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438919, 34.748947, 35.790615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845853, -0.005501, 0.533387,
		-0.399606, -0.668905, 0.626802,
		0.353337, -0.743328, -0.567993,
		26.544920, 34.525948, 35.620216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427589, 34.507706, 36.494125>,  <26.297585, 35.046280, 36.017811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427589, 34.507706, 36.494125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650949, 34.489853, 36.162777>,  <26.784966, 34.479141, 35.963970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650949, 34.489853, 36.162777>,  <26.427589, 34.507706, 36.494125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650949, 34.489853, 36.162777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829039, -0.005708, 0.559161,
		-0.029683, -0.998987, 0.033812,
		0.558402, -0.044629, -0.828369,
		26.818470, 34.476463, 35.914265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910263, 33.922859, 36.558601>,  <26.427589, 34.507706, 36.494125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910263, 33.922859, 36.558601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061857, 34.164360, 36.278072>,  <27.152815, 34.309261, 36.109756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061857, 34.164360, 36.278072>,  <26.910263, 33.922859, 36.558601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061857, 34.164360, 36.278072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877337, 0.006651, 0.479829,
		0.294362, -0.797145, -0.527173,
		0.378988, 0.603751, -0.701322,
		27.175554, 34.345486, 36.067677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618612, 33.829803, 36.668179>,  <26.910263, 33.922859, 36.558601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618612, 33.829803, 36.668179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625141, 34.140816, 36.416725>,  <27.629059, 34.327423, 36.265854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625141, 34.140816, 36.416725>,  <27.618612, 33.829803, 36.668179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625141, 34.140816, 36.416725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884876, 0.281497, 0.371151,
		0.465540, -0.562321, -0.683424,
		0.016324, 0.777531, -0.628632,
		27.630039, 34.374077, 36.228134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328728, 33.957184, 36.456547>,  <27.618612, 33.829803, 36.668179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328728, 33.957184, 36.456547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165211, 34.315090, 36.384678>,  <28.067101, 34.529835, 36.341557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165211, 34.315090, 36.384678>,  <28.328728, 33.957184, 36.456547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165211, 34.315090, 36.384678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866443, 0.442345, 0.231532,
		0.286644, -0.061029, -0.956091,
		-0.408792, 0.894766, -0.179674,
		28.042574, 34.583519, 36.330776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798859, 34.281998, 36.072620>,  <28.328728, 33.957184, 36.456547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798859, 34.281998, 36.072620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584595, 34.556717, 36.269142>,  <28.456038, 34.721550, 36.387054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584595, 34.556717, 36.269142>,  <28.798859, 34.281998, 36.072620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584595, 34.556717, 36.269142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828637, 0.315501, 0.462406,
		0.162575, 0.654802, -0.738108,
		-0.535658, 0.686800, 0.491301,
		28.423897, 34.762756, 36.416531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535315, 34.547310, 35.504005>,  <28.798859, 34.281998, 36.072620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535315, 34.547310, 35.504005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421482, 34.911339, 35.624523>,  <28.353184, 35.129757, 35.696835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421482, 34.911339, 35.624523>,  <28.535315, 34.547310, 35.504005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421482, 34.911339, 35.624523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849781, 0.094008, 0.518685,
		0.443719, 0.403640, -0.800118,
		-0.284579, 0.910076, 0.301293,
		28.336109, 35.184361, 35.714912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883797, 35.144993, 35.392414>,  <28.535315, 34.547310, 35.504005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883797, 35.144993, 35.392414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748392, 35.251961, 35.753277>,  <28.667149, 35.316143, 35.969795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748392, 35.251961, 35.753277>,  <28.883797, 35.144993, 35.392414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748392, 35.251961, 35.753277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927796, 0.254680, 0.272639,
		-0.156852, 0.929313, -0.334327,
		-0.338513, 0.267424, 0.902160,
		28.646837, 35.332188, 36.023926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037973, 35.864391, 35.484642>,  <28.883797, 35.144993, 35.392414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037973, 35.864391, 35.484642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974672, 35.728840, 35.855614>,  <28.936691, 35.647511, 36.078197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974672, 35.728840, 35.855614>,  <29.037973, 35.864391, 35.484642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974672, 35.728840, 35.855614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881076, 0.375521, 0.287557,
		-0.445714, 0.862640, 0.239148,
		-0.158253, -0.338875, 0.927426,
		28.927197, 35.627178, 36.133842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069202, 36.410824, 35.923336>,  <29.037973, 35.864391, 35.484642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069202, 36.410824, 35.923336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182140, 36.082478, 36.121914>,  <29.249903, 35.885468, 36.241062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182140, 36.082478, 36.121914>,  <29.069202, 36.410824, 35.923336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182140, 36.082478, 36.121914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835202, 0.464925, 0.293740,
		-0.471931, 0.331694, 0.816860,
		0.282346, -0.820868, 0.496444,
		29.266844, 35.836216, 36.270847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861748, 36.553745, 35.934032>,  <29.069202, 36.410824, 35.923336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861748, 36.553745, 35.934032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045113, 36.418316, 36.262722>,  <30.155130, 36.337059, 36.459934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045113, 36.418316, 36.262722>,  <29.861748, 36.553745, 35.934032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045113, 36.418316, 36.262722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740766, -0.656412, 0.142789,
		0.491046, -0.674161, -0.551707,
		0.458410, -0.338570, 0.821724,
		30.182636, 36.316746, 36.509239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016645, 35.862404, 35.941013>,  <29.861748, 36.553745, 35.934032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016645, 35.862404, 35.941013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934248, 35.987476, 36.311913>,  <29.884809, 36.062519, 36.534454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934248, 35.987476, 36.311913>,  <30.016645, 35.862404, 35.941013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934248, 35.987476, 36.311913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825711, -0.564053, 0.006769,
		0.525136, -0.764247, 0.374378,
		-0.205996, 0.312682, 0.927252,
		29.872450, 36.081280, 36.590088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823671, 35.242176, 36.431118>,  <30.016645, 35.862404, 35.941013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823671, 35.242176, 36.431118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658587, 35.574627, 36.580196>,  <29.559536, 35.774097, 36.669643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658587, 35.574627, 36.580196>,  <29.823671, 35.242176, 36.431118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658587, 35.574627, 36.580196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896118, -0.443808, -0.002634,
		0.163215, -0.335065, 0.927950,
		-0.412714, 0.831123, 0.372694,
		29.534773, 35.823963, 36.692005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357904, 34.894077, 36.917850>,  <29.823671, 35.242176, 36.431118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357904, 34.894077, 36.917850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.258976, 35.272774, 36.835373>,  <29.199619, 35.499992, 36.785885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.258976, 35.272774, 36.835373>,  <29.357904, 34.894077, 36.917850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258976, 35.272774, 36.835373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964747, -0.260372, -0.038328,
		-0.089973, 0.189446, 0.977760,
		-0.247321, 0.946740, -0.206194,
		29.184780, 35.556797, 36.773514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698374, 35.155445, 37.341137>,  <29.357904, 34.894077, 36.917850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698374, 35.155445, 37.341137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773462, 35.322060, 36.985325>,  <28.818516, 35.422028, 36.771839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773462, 35.322060, 36.985325>,  <28.698374, 35.155445, 37.341137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773462, 35.322060, 36.985325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949377, -0.155292, -0.273068,
		-0.251879, 0.895759, 0.366296,
		0.187721, 0.416534, -0.889528,
		28.829779, 35.447021, 36.718468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104389, 35.688950, 37.157410>,  <28.698374, 35.155445, 37.341137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104389, 35.688950, 37.157410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274185, 35.548977, 36.823380>,  <28.376062, 35.464993, 36.622959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274185, 35.548977, 36.823380>,  <28.104389, 35.688950, 37.157410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274185, 35.548977, 36.823380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875162, -0.395061, -0.279319,
		-0.232164, 0.849397, -0.473946,
		0.424490, -0.349932, -0.835078,
		28.401533, 35.443996, 36.572857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.543823, 35.753334, 36.735119>,  <28.104389, 35.688950, 37.157410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.543823, 35.753334, 36.735119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806393, 35.502289, 36.567688>,  <27.963934, 35.351662, 36.467228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806393, 35.502289, 36.567688>,  <27.543823, 35.753334, 36.735119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806393, 35.502289, 36.567688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752181, -0.502042, -0.426823,
		0.057738, 0.595022, -0.801633,
		0.656423, -0.627616, -0.418577,
		28.003319, 35.314003, 36.442116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365589, 35.681389, 36.089821>,  <27.543823, 35.753334, 36.735119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365589, 35.681389, 36.089821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598274, 35.362328, 36.153511>,  <27.737885, 35.170891, 36.191727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598274, 35.362328, 36.153511>,  <27.365589, 35.681389, 36.089821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598274, 35.362328, 36.153511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639171, -0.569340, -0.517023,
		0.503061, 0.198986, -0.841032,
		0.581713, -0.797657, 0.159227,
		27.772789, 35.123032, 36.201279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630283, 35.400894, 35.471874>,  <27.365589, 35.681389, 36.089821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630283, 35.400894, 35.471874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639431, 35.072338, 35.699841>,  <27.644918, 34.875206, 35.836620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639431, 35.072338, 35.699841>,  <27.630283, 35.400894, 35.471874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639431, 35.072338, 35.699841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645555, -0.447415, -0.618933,
		0.763371, -0.353758, -0.540481,
		0.022867, -0.821386, 0.569914,
		27.646292, 34.825924, 35.870815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786978, 34.841087, 35.109756>,  <27.630283, 35.400894, 35.471874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786978, 34.841087, 35.109756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571339, 34.718582, 35.423592>,  <27.441956, 34.645081, 35.611893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571339, 34.718582, 35.423592>,  <27.786978, 34.841087, 35.109756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571339, 34.718582, 35.423592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544293, -0.584206, -0.602037,
		0.642741, -0.751603, 0.148248,
		-0.539100, -0.306263, 0.784585,
		27.409609, 34.626701, 35.658966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692455, 34.165176, 34.953213>,  <27.786978, 34.841087, 35.109756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692455, 34.165176, 34.953213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405699, 34.286919, 35.204113>,  <27.233644, 34.359962, 35.354652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405699, 34.286919, 35.204113>,  <27.692455, 34.165176, 34.953213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405699, 34.286919, 35.204113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676695, -0.520280, -0.520953,
		0.167791, -0.797921, 0.578937,
		-0.716889, 0.304353, 0.627247,
		27.190632, 34.378223, 35.392288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277508, 33.543911, 35.097691>,  <27.692455, 34.165176, 34.953213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277508, 33.543911, 35.097691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063032, 33.861420, 35.212528>,  <26.934347, 34.051926, 35.281429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063032, 33.861420, 35.212528>,  <27.277508, 33.543911, 35.097691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063032, 33.861420, 35.212528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798234, -0.366240, -0.478217,
		-0.274453, -0.485580, 0.829992,
		-0.536189, 0.793776, 0.287091,
		26.902176, 34.099552, 35.298656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702677, 33.326939, 35.313984>,  <27.277508, 33.543911, 35.097691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702677, 33.326939, 35.313984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623863, 33.704258, 35.207119>,  <26.576574, 33.930649, 35.143002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623863, 33.704258, 35.207119>,  <26.702677, 33.326939, 35.313984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623863, 33.704258, 35.207119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818994, -0.308157, -0.484033,
		-0.538913, 0.123430, 0.833270,
		-0.197033, 0.943295, -0.267158,
		26.564753, 33.987247, 35.126972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.311365, 33.505062, 34.677940>,  <26.702677, 33.326939, 35.313984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.311365, 33.505062, 34.677940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166079, 33.418377, 34.315479>,  <26.078907, 33.366364, 34.098003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166079, 33.418377, 34.315479>,  <26.311365, 33.505062, 34.677940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.166079, 33.418377, 34.315479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887981, 0.213924, -0.407095,
		0.282070, -0.952508, 0.114738,
		-0.363216, -0.216715, -0.906150,
		26.057114, 33.353363, 34.043633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.899225, 33.721378, 34.239079>,  <26.311365, 33.505062, 34.677940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.899225, 33.721378, 34.239079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.642300, 33.608997, 33.953842>,  <26.488144, 33.541569, 33.782700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.642300, 33.608997, 33.953842>,  <26.899225, 33.721378, 34.239079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.642300, 33.608997, 33.953842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709514, 0.133904, -0.691852,
		0.289864, -0.950334, 0.113333,
		-0.642315, -0.280954, -0.713089,
		26.449606, 33.524712, 33.739914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040850, 33.064590, 33.944660>,  <26.899225, 33.721378, 34.239079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040850, 33.064590, 33.944660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853788, 33.273533, 33.659439>,  <26.741552, 33.398899, 33.488304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853788, 33.273533, 33.659439>,  <27.040850, 33.064590, 33.944660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853788, 33.273533, 33.659439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829675, -0.018827, -0.557930,
		-0.304861, -0.852521, -0.424579,
		-0.467653, 0.522354, -0.713055,
		26.713493, 33.430241, 33.445522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742889, 33.329548, 33.798565>,  <27.040850, 33.064590, 33.944660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742889, 33.329548, 33.798565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707506, 33.432537, 33.413673>,  <27.686275, 33.494331, 33.182739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707506, 33.432537, 33.413673>,  <27.742889, 33.329548, 33.798565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707506, 33.432537, 33.413673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993736, -0.089039, 0.067531,
		-0.068289, 0.962176, 0.263732,
		-0.088459, 0.257469, -0.962229,
		27.680969, 33.509777, 33.125004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455603, 32.987816, 33.823822>,  <27.742889, 33.329548, 33.798565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455603, 32.987816, 33.823822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588472, 32.613091, 33.867702>,  <28.668194, 32.388252, 33.894032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588472, 32.613091, 33.867702>,  <28.455603, 32.987816, 33.823822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588472, 32.613091, 33.867702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716539, 0.174999, -0.675238,
		0.613379, 0.302898, 0.729397,
		0.332172, -0.936818, 0.109697,
		28.688124, 32.332047, 33.900612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166948, 32.955063, 34.068684>,  <28.455603, 32.987816, 33.823822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166948, 32.955063, 34.068684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101383, 32.623444, 33.854839>,  <29.062044, 32.424473, 33.726532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101383, 32.623444, 33.854839>,  <29.166948, 32.955063, 34.068684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101383, 32.623444, 33.854839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779084, 0.223633, -0.585675,
		0.605111, -0.512504, 0.609245,
		-0.163913, -0.829052, -0.534607,
		29.052210, 32.374729, 33.694458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713884, 32.343456, 33.948608>,  <29.166948, 32.955063, 34.068684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713884, 32.343456, 33.948608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501495, 32.352196, 33.609764>,  <29.374062, 32.357441, 33.406460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501495, 32.352196, 33.609764>,  <29.713884, 32.343456, 33.948608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501495, 32.352196, 33.609764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843051, 0.114645, -0.525473,
		0.085637, -0.993166, -0.079291,
		-0.530972, 0.021847, -0.847108,
		29.342203, 32.358749, 33.355633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883373, 33.061626, 34.195686>,  <29.713884, 32.343456, 33.948608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883373, 33.061626, 34.195686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662306, 33.151905, 33.874783>,  <29.529665, 33.206074, 33.682240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662306, 33.151905, 33.874783>,  <29.883373, 33.061626, 34.195686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662306, 33.151905, 33.874783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247588, -0.874706, -0.416640,
		-0.795775, -0.428893, 0.427542,
		-0.552668, 0.225698, -0.802258,
		29.496506, 33.219616, 33.634106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492525, 32.697586, 34.374695>,  <29.883373, 33.061626, 34.195686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492525, 32.697586, 34.374695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490133, 32.949722, 34.685215>,  <30.488699, 33.101002, 34.871525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490133, 32.949722, 34.685215>,  <30.492525, 32.697586, 34.374695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490133, 32.949722, 34.685215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946053, 0.255060, -0.199819,
		-0.323956, 0.733224, -0.597859,
		-0.005978, 0.630339, 0.776297,
		30.488340, 33.138824, 34.918102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731295, 33.391590, 34.108868>,  <30.492525, 32.697586, 34.374695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731295, 33.391590, 34.108868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810402, 33.311699, 34.492741>,  <30.857866, 33.263763, 34.723064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810402, 33.311699, 34.492741>,  <30.731295, 33.391590, 34.108868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810402, 33.311699, 34.492741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980240, 0.044433, -0.192758,
		-0.004143, 0.978844, 0.204568,
		0.197769, -0.199727, 0.959686,
		30.869732, 33.251781, 34.780647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078438, 33.940258, 34.534206>,  <30.731295, 33.391590, 34.108868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078438, 33.940258, 34.534206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194950, 33.565659, 34.612316>,  <31.264856, 33.340900, 34.659180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194950, 33.565659, 34.612316>,  <31.078438, 33.940258, 34.534206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194950, 33.565659, 34.612316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916696, 0.214875, -0.336894,
		0.273541, 0.277135, 0.921071,
		0.291280, -0.936496, 0.195271,
		31.282333, 33.284710, 34.670898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800673, 33.845772, 34.545815>,  <31.078438, 33.940258, 34.534206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800673, 33.845772, 34.545815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587612, 34.153675, 34.405102>,  <31.459776, 34.338417, 34.320675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587612, 34.153675, 34.405102>,  <31.800673, 33.845772, 34.545815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587612, 34.153675, 34.405102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270332, 0.239133, 0.932596,
		0.801998, 0.591847, 0.080716,
		-0.532653, 0.769761, -0.351780,
		31.427816, 34.384602, 34.299568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227131, 34.482861, 34.712559>,  <31.800673, 33.845772, 34.545815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227131, 34.482861, 34.712559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828386, 34.503262, 34.688362>,  <31.589138, 34.515503, 34.673843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828386, 34.503262, 34.688362>,  <32.227131, 34.482861, 34.712559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828386, 34.503262, 34.688362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044795, 0.266370, 0.962829,
		0.065222, 0.962520, -0.263250,
		-0.996865, 0.051005, -0.060490,
		31.529327, 34.518562, 34.670216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159550, 35.287148, 34.637436>,  <32.227131, 34.482861, 34.712559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159550, 35.287148, 34.637436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331184, 35.549870, 34.389404>,  <32.434166, 35.707500, 34.240585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331184, 35.549870, 34.389404>,  <32.159550, 35.287148, 34.637436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331184, 35.549870, 34.389404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897928, 0.235662, -0.371738,
		-0.098028, 0.716294, 0.690879,
		0.429087, 0.656800, -0.620078,
		32.459911, 35.746910, 34.203381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843229, 35.966000, 34.695126>,  <32.159550, 35.287148, 34.637436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843229, 35.966000, 34.695126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947712, 35.848389, 34.327362>,  <32.010403, 35.777821, 34.106705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947712, 35.848389, 34.327362>,  <31.843229, 35.966000, 34.695126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947712, 35.848389, 34.327362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958555, 0.033251, -0.282961,
		0.113770, 0.955218, -0.273156,
		0.261207, -0.294028, -0.919412,
		32.026073, 35.760181, 34.051537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328928, 35.338875, 34.454350>,  <31.843229, 35.966000, 34.695126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328928, 35.338875, 34.454350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173197, 35.651180, 34.258865>,  <31.079758, 35.838562, 34.141575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173197, 35.651180, 34.258865>,  <31.328928, 35.338875, 34.454350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173197, 35.651180, 34.258865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002099, -0.531325, -0.847165,
		-0.921098, -0.328798, 0.208497,
		-0.389326, 0.780759, -0.488712,
		31.056398, 35.885406, 34.112251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682043, 35.044716, 34.262470>,  <31.328928, 35.338875, 34.454350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682043, 35.044716, 34.262470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800310, 35.346836, 34.028515>,  <30.871271, 35.528107, 33.888142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800310, 35.346836, 34.028515>,  <30.682043, 35.044716, 34.262470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800310, 35.346836, 34.028515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110511, -0.581112, -0.806285,
		-0.948877, 0.303030, -0.088348,
		0.295669, 0.755302, -0.584892,
		30.889011, 35.573425, 33.853046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203123, 35.061974, 33.819401>,  <30.682043, 35.044716, 34.262470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203123, 35.061974, 33.819401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501881, 35.228649, 33.612125>,  <30.681135, 35.328655, 33.487759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501881, 35.228649, 33.612125>,  <30.203123, 35.061974, 33.819401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501881, 35.228649, 33.612125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189600, -0.613495, -0.766601,
		-0.637340, 0.670818, -0.379211,
		0.746893, 0.416687, -0.518192,
		30.725948, 35.353657, 33.456669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912424, 35.295849, 33.099106>,  <30.203123, 35.061974, 33.819401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912424, 35.295849, 33.099106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312040, 35.288113, 33.083378>,  <30.551809, 35.283470, 33.073940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312040, 35.288113, 33.083378>,  <29.912424, 35.295849, 33.099106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312040, 35.288113, 33.083378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043794, -0.411796, -0.910223,
		0.001412, 0.911071, -0.412248,
		0.999040, -0.019339, -0.039318,
		30.611752, 35.282310, 33.071583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192966, 35.733330, 32.466496>,  <29.912424, 35.295849, 33.099106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192966, 35.733330, 32.466496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466455, 35.457745, 32.562706>,  <30.630550, 35.292393, 32.620430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466455, 35.457745, 32.562706>,  <30.192966, 35.733330, 32.466496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466455, 35.457745, 32.562706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013911, -0.317237, -0.948244,
		0.729607, 0.651684, -0.207318,
		0.683725, -0.688962, 0.240524,
		30.671574, 35.251057, 32.634865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637165, 35.767471, 31.842514>,  <30.192966, 35.733330, 32.466496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637165, 35.767471, 31.842514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749453, 35.441486, 32.045311>,  <30.816826, 35.245895, 32.166988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749453, 35.441486, 32.045311>,  <30.637165, 35.767471, 31.842514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749453, 35.441486, 32.045311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229959, -0.455736, -0.859897,
		0.931835, 0.357976, 0.059473,
		0.280719, -0.814959, 0.506991,
		30.833668, 35.196999, 32.197407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268135, 35.617832, 31.586416>,  <30.637165, 35.767471, 31.842514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268135, 35.617832, 31.586416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139978, 35.255932, 31.698687>,  <31.063084, 35.038792, 31.766048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139978, 35.255932, 31.698687>,  <31.268135, 35.617832, 31.586416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139978, 35.255932, 31.698687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016423, -0.301556, -0.953307,
		0.947143, -0.300821, 0.111475,
		-0.320391, -0.904749, 0.280676,
		31.043861, 34.984509, 31.782890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659939, 35.151581, 31.231609>,  <31.268135, 35.617832, 31.586416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659939, 35.151581, 31.231609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350021, 34.922710, 31.339170>,  <31.164070, 34.785389, 31.403708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350021, 34.922710, 31.339170>,  <31.659939, 35.151581, 31.231609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350021, 34.922710, 31.339170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049731, -0.368859, -0.928154,
		0.630253, -0.732502, 0.257335,
		-0.774796, -0.572174, 0.268902,
		31.117582, 34.751057, 31.419842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740339, 34.488438, 30.974741>,  <31.659939, 35.151581, 31.231609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740339, 34.488438, 30.974741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348791, 34.542301, 31.036293>,  <31.113863, 34.574619, 31.073223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348791, 34.542301, 31.036293>,  <31.740339, 34.488438, 30.974741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348791, 34.542301, 31.036293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197210, -0.422838, -0.884486,
		-0.054041, -0.896144, 0.440460,
		-0.978871, 0.134661, 0.153878,
		31.055130, 34.582699, 31.082457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454107, 33.980553, 30.615089>,  <31.740339, 34.488438, 30.974741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454107, 33.980553, 30.615089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121719, 34.196945, 30.666975>,  <30.922287, 34.326782, 30.698107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121719, 34.196945, 30.666975>,  <31.454107, 33.980553, 30.615089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121719, 34.196945, 30.666975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324989, -0.282814, -0.902440,
		-0.451522, -0.792055, 0.410824,
		-0.830969, 0.540985, 0.129712,
		30.872429, 34.359241, 30.705889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911385, 33.482651, 30.386759>,  <31.454107, 33.980553, 30.615089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911385, 33.482651, 30.386759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773008, 33.857735, 30.373999>,  <30.689983, 34.082787, 30.366343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773008, 33.857735, 30.373999>,  <30.911385, 33.482651, 30.386759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773008, 33.857735, 30.373999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515119, -0.218233, -0.828871,
		-0.784205, -0.270309, 0.558530,
		-0.345941, 0.937714, -0.031899,
		30.669226, 34.139050, 30.364429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104929, 33.457119, 30.278147>,  <30.911385, 33.482651, 30.386759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104929, 33.457119, 30.278147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208195, 33.826317, 30.164007>,  <30.270155, 34.047836, 30.095524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208195, 33.826317, 30.164007>,  <30.104929, 33.457119, 30.278147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208195, 33.826317, 30.164007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270955, -0.214329, -0.938427,
		-0.927326, 0.319586, 0.194758,
		0.258166, 0.922999, -0.285347,
		30.285645, 34.103218, 30.078403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593754, 33.796764, 29.869747>,  <30.104929, 33.457119, 30.278147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593754, 33.796764, 29.869747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918016, 34.009289, 29.771326>,  <30.112574, 34.136803, 29.712275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918016, 34.009289, 29.771326>,  <29.593754, 33.796764, 29.869747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918016, 34.009289, 29.771326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219416, -0.113944, -0.968955,
		-0.542852, 0.839479, 0.024209,
		0.810659, 0.531311, -0.246050,
		30.161215, 34.168682, 29.697512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376007, 34.239216, 29.258537>,  <29.593754, 33.796764, 29.869747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376007, 34.239216, 29.258537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775257, 34.216084, 29.250517>,  <30.014807, 34.202206, 29.245705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775257, 34.216084, 29.250517>,  <29.376007, 34.239216, 29.258537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775257, 34.216084, 29.250517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020263, -0.003080, -0.999790,
		0.057756, 0.998322, -0.004246,
		0.998125, -0.057830, -0.020051,
		30.074696, 34.198734, 29.244501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620821, 34.705673, 28.708416>,  <29.376007, 34.239216, 29.258537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620821, 34.705673, 28.708416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939379, 34.465942, 28.740816>,  <30.130514, 34.322102, 28.760256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939379, 34.465942, 28.740816>,  <29.620821, 34.705673, 28.708416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939379, 34.465942, 28.740816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078420, -0.030469, -0.996455,
		0.599672, 0.799923, 0.022734,
		0.796394, -0.599329, 0.081002,
		30.178297, 34.286144, 28.765116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296543, 35.034374, 28.432388>,  <29.620821, 34.705673, 28.708416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296543, 35.034374, 28.432388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391075, 34.645844, 28.442696>,  <30.447794, 34.412724, 28.448879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391075, 34.645844, 28.442696>,  <30.296543, 35.034374, 28.432388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391075, 34.645844, 28.442696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231373, 0.030498, -0.972387,
		0.943724, 0.235766, 0.231948,
		0.236330, -0.971331, 0.025769,
		30.461973, 34.354443, 28.450426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865004, 35.001896, 28.118763>,  <30.296543, 35.034374, 28.432388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865004, 35.001896, 28.118763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736181, 34.623814, 28.097370>,  <30.658888, 34.396965, 28.084534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736181, 34.623814, 28.097370>,  <30.865004, 35.001896, 28.118763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736181, 34.623814, 28.097370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063156, 0.034916, -0.997393,
		0.944611, -0.324595, 0.048450,
		-0.322057, -0.945208, -0.053482,
		30.639565, 34.340252, 28.081326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346531, 34.675598, 27.694387>,  <30.865004, 35.001896, 28.118763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346531, 34.675598, 27.694387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011772, 34.457508, 27.675093>,  <30.810917, 34.326653, 27.663517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011772, 34.457508, 27.675093>,  <31.346531, 34.675598, 27.694387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011772, 34.457508, 27.675093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069824, -0.018940, -0.997380,
		0.542888, -0.838072, 0.053921,
		-0.836897, -0.545230, -0.048236,
		30.760702, 34.293938, 27.660622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515310, 34.052444, 27.312101>,  <31.346531, 34.675598, 27.694387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515310, 34.052444, 27.312101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117947, 34.093182, 27.291048>,  <30.879528, 34.117622, 27.278416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117947, 34.093182, 27.291048>,  <31.515310, 34.052444, 27.312101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117947, 34.093182, 27.291048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050867, -0.019844, -0.998508,
		-0.102735, -0.994603, 0.014532,
		-0.993407, 0.101843, -0.052631,
		30.819923, 34.123734, 27.275259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320387, 33.520603, 26.975466>,  <31.515310, 34.052444, 27.312101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320387, 33.520603, 26.975466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978622, 33.726089, 26.944288>,  <30.773563, 33.849380, 26.925581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978622, 33.726089, 26.944288>,  <31.320387, 33.520603, 26.975466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978622, 33.726089, 26.944288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139937, -0.371972, -0.917635,
		-0.500399, -0.773131, 0.389705,
		-0.854411, 0.513718, -0.077945,
		30.722300, 33.880203, 26.920904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866590, 33.114746, 26.657797>,  <31.320387, 33.520603, 26.975466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866590, 33.114746, 26.657797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715290, 33.479710, 26.595263>,  <30.624510, 33.698689, 26.557741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715290, 33.479710, 26.595263>,  <30.866590, 33.114746, 26.657797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715290, 33.479710, 26.595263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206716, -0.247870, -0.946483,
		-0.902328, -0.325689, 0.282365,
		-0.378249, 0.912407, -0.156335,
		30.601816, 33.753433, 26.548363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463869, 32.930603, 26.088167>,  <30.866590, 33.114746, 26.657797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463869, 32.930603, 26.088167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474989, 33.330395, 26.094690>,  <30.481661, 33.570271, 26.098604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474989, 33.330395, 26.094690>,  <30.463869, 32.930603, 26.088167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474989, 33.330395, 26.094690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306483, 0.024050, -0.951572,
		-0.951470, 0.021455, 0.306993,
		0.027799, 0.999480, 0.016307,
		30.483328, 33.630238, 26.099583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795361, 33.202751, 25.790081>,  <30.463869, 32.930603, 26.088167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795361, 33.202751, 25.790081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077387, 33.483837, 25.751970>,  <30.246603, 33.652489, 25.729103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077387, 33.483837, 25.751970>,  <29.795361, 33.202751, 25.790081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077387, 33.483837, 25.751970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257431, 0.128438, -0.957723,
		-0.660767, 0.699784, 0.271457,
		0.705064, 0.702713, -0.095279,
		30.288906, 33.694653, 25.723387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485327, 33.753063, 25.462217>,  <29.795361, 33.202751, 25.790081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485327, 33.753063, 25.462217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875555, 33.804760, 25.391155>,  <30.109692, 33.835777, 25.348518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875555, 33.804760, 25.391155>,  <29.485327, 33.753063, 25.462217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875555, 33.804760, 25.391155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145304, -0.226936, -0.963009,
		-0.164777, 0.965296, -0.202612,
		0.975569, 0.129241, -0.177656,
		30.168226, 33.843533, 25.337858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590771, 33.976387, 24.706472>,  <29.485327, 33.753063, 25.462217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590771, 33.976387, 24.706472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972446, 33.902302, 24.800470>,  <30.201452, 33.857853, 24.856869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972446, 33.902302, 24.800470>,  <29.590771, 33.976387, 24.706472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972446, 33.902302, 24.800470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202847, -0.176925, -0.963094,
		0.219951, 0.966641, -0.131251,
		0.954188, -0.185210, 0.234995,
		30.258703, 33.846741, 24.870970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006353, 34.432762, 24.314056>,  <29.590771, 33.976387, 24.706472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006353, 34.432762, 24.314056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226418, 34.107391, 24.389593>,  <30.358456, 33.912170, 24.434916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226418, 34.107391, 24.389593>,  <30.006353, 34.432762, 24.314056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226418, 34.107391, 24.389593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231284, -0.068868, -0.970446,
		0.802392, 0.577576, 0.150244,
		0.550159, -0.813427, 0.188843,
		30.391464, 33.863361, 24.446245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637686, 34.425564, 23.924063>,  <30.006353, 34.432762, 24.314056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637686, 34.425564, 23.924063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627775, 34.031101, 23.989651>,  <30.621828, 33.794426, 24.029003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627775, 34.031101, 23.989651>,  <30.637686, 34.425564, 23.924063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627775, 34.031101, 23.989651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133075, -0.165813, -0.977137,
		0.990796, -0.002391, 0.135341,
		-0.024777, -0.986154, 0.163968,
		30.620342, 33.735256, 24.038841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210911, 34.153568, 23.622681>,  <30.637686, 34.425564, 23.924063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210911, 34.153568, 23.622681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930948, 33.868160, 23.635462>,  <30.762970, 33.696915, 23.643131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930948, 33.868160, 23.635462>,  <31.210911, 34.153568, 23.622681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930948, 33.868160, 23.635462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076853, -0.119716, -0.989829,
		0.710085, -0.690334, 0.138626,
		-0.699909, -0.713517, 0.031954,
		30.720976, 33.654106, 23.645048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504120, 33.592651, 23.243856>,  <31.210911, 34.153568, 23.622681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504120, 33.592651, 23.243856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117769, 33.498558, 23.287207>,  <30.885958, 33.442101, 23.313217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117769, 33.498558, 23.287207>,  <31.504120, 33.592651, 23.243856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117769, 33.498558, 23.287207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010050, -0.384082, -0.923244,
		0.258803, -0.892830, 0.368612,
		-0.965878, -0.235234, 0.108374,
		30.828007, 33.427986, 23.319719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405855, 32.996632, 22.937359>,  <31.504120, 33.592651, 23.243856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405855, 32.996632, 22.937359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033487, 33.142540, 22.944567>,  <30.810066, 33.230087, 22.948891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033487, 33.142540, 22.944567>,  <31.405855, 32.996632, 22.937359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033487, 33.142540, 22.944567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041096, -0.055597, -0.997607,
		-0.362901, -0.929434, 0.066747,
		-0.930921, 0.364776, 0.018019,
		30.754211, 33.251972, 22.949972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002199, 32.590065, 22.490387>,  <31.405855, 32.996632, 22.937359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002199, 32.590065, 22.490387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826569, 32.948387, 22.517948>,  <30.721189, 33.163380, 22.534485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826569, 32.948387, 22.517948>,  <31.002199, 32.590065, 22.490387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826569, 32.948387, 22.517948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002597, 0.077955, -0.996953,
		-0.898445, -0.437561, -0.036554,
		-0.439078, 0.895803, 0.068902,
		30.694845, 33.217129, 22.538618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398724, 32.541164, 22.044920>,  <31.002199, 32.590065, 22.490387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398724, 32.541164, 22.044920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421562, 32.939079, 22.078735>,  <30.435265, 33.177826, 22.099024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421562, 32.939079, 22.078735>,  <30.398724, 32.541164, 22.044920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421562, 32.939079, 22.078735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072918, 0.088604, -0.993394,
		-0.995703, 0.050553, 0.077597,
		0.057095, 0.994783, 0.084537,
		30.438690, 33.237514, 22.104095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817337, 32.837036, 21.710894>,  <30.398724, 32.541164, 22.044920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817337, 32.837036, 21.710894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089186, 33.129955, 21.728153>,  <30.252295, 33.305706, 21.738508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089186, 33.129955, 21.728153>,  <29.817337, 32.837036, 21.710894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089186, 33.129955, 21.728153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075062, 0.127932, -0.988938,
		-0.729714, 0.668863, 0.141913,
		0.679619, 0.732295, 0.043148,
		30.293072, 33.349644, 21.741098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465471, 33.157803, 21.152372>,  <29.817337, 32.837036, 21.710894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465471, 33.157803, 21.152372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824791, 33.308060, 21.243542>,  <30.040382, 33.398212, 21.298243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824791, 33.308060, 21.243542>,  <29.465471, 33.157803, 21.152372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824791, 33.308060, 21.243542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170692, 0.179638, -0.968811,
		-0.404871, 0.909187, 0.097249,
		0.898300, 0.375644, 0.227921,
		30.094280, 33.420753, 21.311918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489323, 33.803242, 20.940825>,  <29.465471, 33.157803, 21.152372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489323, 33.803242, 20.940825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864769, 33.665260, 20.939512>,  <30.090036, 33.582470, 20.938725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864769, 33.665260, 20.939512>,  <29.489323, 33.803242, 20.940825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864769, 33.665260, 20.939512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095547, 0.269095, -0.958363,
		0.331471, 0.899220, 0.285536,
		0.938615, -0.344952, -0.003279,
		30.146353, 33.561775, 20.938528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913036, 34.323761, 20.621845>,  <29.489323, 33.803242, 20.940825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913036, 34.323761, 20.621845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134769, 33.992130, 20.592600>,  <30.267809, 33.793152, 20.575052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134769, 33.992130, 20.592600>,  <29.913036, 34.323761, 20.621845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134769, 33.992130, 20.592600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223691, 0.233020, -0.946395,
		0.801673, 0.508262, 0.314628,
		0.554331, -0.829079, -0.073113,
		30.301069, 33.743408, 20.570665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530306, 34.678173, 20.355349>,  <29.913036, 34.323761, 20.621845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530306, 34.678173, 20.355349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551250, 34.286034, 20.279268>,  <30.563816, 34.050751, 20.233620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551250, 34.286034, 20.279268>,  <30.530306, 34.678173, 20.355349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551250, 34.286034, 20.279268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157467, 0.196184, -0.967841,
		0.986135, 0.020726, 0.164645,
		0.052360, -0.980348, -0.190201,
		30.566959, 33.991928, 20.222208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088879, 34.635742, 19.966021>,  <30.530306, 34.678173, 20.355349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088879, 34.635742, 19.966021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909874, 34.286385, 19.889172>,  <30.802471, 34.076771, 19.843061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909874, 34.286385, 19.889172>,  <31.088879, 34.635742, 19.966021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909874, 34.286385, 19.889172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022809, 0.203620, -0.978784,
		0.893988, -0.442398, -0.071201,
		-0.447511, -0.873397, -0.192125,
		30.775621, 34.024364, 19.831533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456633, 34.360119, 19.422009>,  <31.088879, 34.635742, 19.966021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456633, 34.360119, 19.422009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110350, 34.159931, 19.418303>,  <30.902580, 34.039818, 19.416079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110350, 34.159931, 19.418303>,  <31.456633, 34.360119, 19.422009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110350, 34.159931, 19.418303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200462, 0.363602, -0.909730,
		0.458658, -0.785702, -0.415097,
		-0.865706, -0.500466, -0.009265,
		30.850637, 34.009792, 19.415524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418320, 33.997917, 18.752756>,  <31.456633, 34.360119, 19.422009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418320, 33.997917, 18.752756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044067, 34.012848, 18.893156>,  <30.819515, 34.021809, 18.977396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044067, 34.012848, 18.893156>,  <31.418320, 33.997917, 18.752756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044067, 34.012848, 18.893156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316612, 0.350865, -0.881278,
		-0.156051, -0.935682, -0.316461,
		-0.935631, 0.037329, 0.351001,
		30.763378, 34.024048, 18.998457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895903, 33.507629, 18.307186>,  <31.418320, 33.997917, 18.752756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895903, 33.507629, 18.307186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711309, 33.812550, 18.488705>,  <30.600554, 33.995502, 18.597616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711309, 33.812550, 18.488705>,  <30.895903, 33.507629, 18.307186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711309, 33.812550, 18.488705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325162, 0.330586, -0.885992,
		-0.825411, -0.556428, 0.095311,
		-0.461483, 0.762300, 0.453799,
		30.572865, 34.041241, 18.624844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338224, 33.615299, 17.930277>,  <30.895903, 33.507629, 18.307186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338224, 33.615299, 17.930277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311611, 33.953457, 18.142271>,  <30.295643, 34.156353, 18.269466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311611, 33.953457, 18.142271>,  <30.338224, 33.615299, 17.930277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311611, 33.953457, 18.142271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065818, 0.526285, -0.847757,
		-0.995611, -0.091287, 0.020626,
		-0.066534, 0.845394, 0.529983,
		30.291651, 34.207073, 18.301266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827642, 33.945961, 17.699823>,  <30.338224, 33.615299, 17.930277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827642, 33.945961, 17.699823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072985, 34.228714, 17.840736>,  <30.220190, 34.398365, 17.925285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072985, 34.228714, 17.840736>,  <29.827642, 33.945961, 17.699823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072985, 34.228714, 17.840736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053645, 0.482296, -0.874364,
		-0.787981, 0.517400, 0.333741,
		0.613358, 0.706886, 0.352285,
		30.256992, 34.440781, 17.946423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671267, 34.672741, 17.672153>,  <29.827642, 33.945961, 17.699823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671267, 34.672741, 17.672153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057503, 34.570728, 17.651762>,  <30.289244, 34.509521, 17.639528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057503, 34.570728, 17.651762>,  <29.671267, 34.672741, 17.672153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057503, 34.570728, 17.651762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042863, 0.349383, -0.935999,
		0.256516, 0.901606, 0.348292,
		0.965589, -0.255027, -0.050977,
		30.347179, 34.494221, 17.636469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426315, 35.453945, 17.868931>,  <29.671267, 34.672741, 17.672153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426315, 35.453945, 17.868931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425371, 35.801849, 17.671543>,  <29.424805, 36.010593, 17.553110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425371, 35.801849, 17.671543>,  <29.426315, 35.453945, 17.868931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425371, 35.801849, 17.671543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025010, -0.493366, -0.869462,
		-0.999684, 0.010290, 0.022917,
		-0.002360, 0.869761, -0.493468,
		29.424664, 36.062778, 17.523502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975819, 35.314613, 17.333055>,  <29.426315, 35.453945, 17.868931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975819, 35.314613, 17.333055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186419, 35.631039, 17.208466>,  <29.312778, 35.820892, 17.133711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186419, 35.631039, 17.208466>,  <28.975819, 35.314613, 17.333055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186419, 35.631039, 17.208466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166862, -0.455392, -0.874514,
		-0.833638, 0.408460, -0.371763,
		0.526502, 0.791061, -0.311476,
		29.344370, 35.868359, 17.115023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752935, 35.632774, 16.654760>,  <28.975819, 35.314613, 17.333055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752935, 35.632774, 16.654760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142675, 35.681076, 16.730722>,  <29.376518, 35.710056, 16.776300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142675, 35.681076, 16.730722>,  <28.752935, 35.632774, 16.654760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142675, 35.681076, 16.730722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225034, -0.531150, -0.816847,
		0.002235, 0.838629, -0.544698,
		0.974348, 0.120750, 0.189907,
		29.434980, 35.717300, 16.787695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820526, 35.492241, 15.856782>,  <28.752935, 35.632774, 16.654760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820526, 35.492241, 15.856782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156559, 35.573925, 15.655761>,  <29.358179, 35.622936, 15.535149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156559, 35.573925, 15.655761>,  <28.820526, 35.492241, 15.856782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156559, 35.573925, 15.655761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432936, 0.305799, 0.847970,
		0.326845, -0.929938, 0.168486,
		0.840082, 0.204211, -0.502553,
		29.408585, 35.635189, 15.504995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505484, 35.162659, 16.094740>,  <28.820526, 35.492241, 15.856782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505484, 35.162659, 16.094740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537260, 35.519871, 15.917564>,  <29.556326, 35.734196, 15.811259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537260, 35.519871, 15.917564>,  <29.505484, 35.162659, 16.094740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537260, 35.519871, 15.917564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342953, 0.392734, 0.853314,
		0.935988, -0.219695, -0.275067,
		0.079441, 0.893026, -0.442939,
		29.561092, 35.787777, 15.784683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192804, 35.433662, 16.291117>,  <29.505484, 35.162659, 16.094740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192804, 35.433662, 16.291117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906092, 35.708344, 16.242682>,  <29.734064, 35.873150, 16.213619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906092, 35.708344, 16.242682>,  <30.192804, 35.433662, 16.291117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906092, 35.708344, 16.242682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240653, 0.406605, 0.881339,
		0.654452, 0.602589, -0.456704,
		-0.716784, 0.686701, -0.121089,
		29.691057, 35.914352, 16.206354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419477, 36.156013, 16.515965>,  <30.192804, 35.433662, 16.291117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419477, 36.156013, 16.515965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020445, 36.155434, 16.543753>,  <29.781025, 36.155087, 16.560425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020445, 36.155434, 16.543753>,  <30.419477, 36.156013, 16.515965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020445, 36.155434, 16.543753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068798, 0.119644, 0.990430,
		-0.009743, 0.992816, -0.119255,
		-0.997583, -0.001445, 0.069470,
		29.721170, 36.154999, 16.564594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118704, 36.757339, 16.672762>,  <30.419477, 36.156013, 16.515965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118704, 36.757339, 16.672762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848492, 36.496948, 16.811264>,  <29.686365, 36.340714, 16.894365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848492, 36.496948, 16.811264>,  <30.118704, 36.757339, 16.672762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848492, 36.496948, 16.811264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083457, 0.534095, 0.841295,
		-0.732595, 0.539422, -0.415125,
		-0.675529, -0.650974, 0.346257,
		29.645834, 36.301655, 16.915140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461710, 37.038319, 16.886909>,  <30.118704, 36.757339, 16.672762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461710, 37.038319, 16.886909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544775, 36.719372, 17.113564>,  <29.594614, 36.528004, 17.249556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544775, 36.719372, 17.113564>,  <29.461710, 37.038319, 16.886909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544775, 36.719372, 17.113564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116246, 0.555041, 0.823660,
		-0.971269, -0.236913, 0.022571,
		0.207664, -0.797372, 0.566634,
		29.607075, 36.480160, 17.283554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091692, 37.103462, 17.529034>,  <29.461710, 37.038319, 16.886909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091692, 37.103462, 17.529034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358454, 36.819935, 17.620962>,  <29.518511, 36.649818, 17.676119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358454, 36.819935, 17.620962>,  <29.091692, 37.103462, 17.529034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358454, 36.819935, 17.620962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075802, 0.371361, 0.925389,
		-0.741278, -0.599725, 0.301392,
		0.666904, -0.708817, 0.229821,
		29.558525, 36.607288, 17.689909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761990, 36.778675, 18.057632>,  <29.091692, 37.103462, 17.529034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761990, 36.778675, 18.057632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.161310, 36.758686, 18.069578>,  <29.400904, 36.746693, 18.076746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.161310, 36.758686, 18.069578>,  <28.761990, 36.778675, 18.057632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161310, 36.758686, 18.069578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010267, 0.353767, 0.935277,
		-0.057307, -0.933997, 0.352654,
		0.998304, -0.049977, 0.029862,
		29.460802, 36.743694, 18.078537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881161, 36.587704, 18.737577>,  <28.761990, 36.778675, 18.057632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881161, 36.587704, 18.737577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253016, 36.699108, 18.641071>,  <29.476128, 36.765949, 18.583168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253016, 36.699108, 18.641071>,  <28.881161, 36.587704, 18.737577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253016, 36.699108, 18.641071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153250, 0.303210, 0.940520,
		0.335100, -0.911315, 0.239193,
		0.929636, 0.278512, -0.241264,
		29.531906, 36.782661, 18.568693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254723, 36.365582, 19.392893>,  <28.881161, 36.587704, 18.737577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254723, 36.365582, 19.392893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497118, 36.607643, 19.186373>,  <29.642555, 36.752880, 19.062462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497118, 36.607643, 19.186373>,  <29.254723, 36.365582, 19.392893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497118, 36.607643, 19.186373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208912, 0.505192, 0.837339,
		0.767550, -0.615279, 0.179717,
		0.605989, 0.605154, -0.516300,
		29.678915, 36.789188, 19.031483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949446, 36.368816, 19.673058>,  <29.254723, 36.365582, 19.392893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949446, 36.368816, 19.673058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890926, 36.715782, 19.482821>,  <29.855814, 36.923962, 19.368677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890926, 36.715782, 19.482821>,  <29.949446, 36.368816, 19.673058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890926, 36.715782, 19.482821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238747, 0.497516, 0.833953,
		0.959998, 0.008459, -0.279879,
		-0.146299, 0.867414, -0.475595,
		29.847036, 36.976006, 19.340141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613953, 36.623085, 19.666168>,  <29.949446, 36.368816, 19.673058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613953, 36.623085, 19.666168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374826, 36.936222, 19.597155>,  <30.231350, 37.124104, 19.555746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374826, 36.936222, 19.597155>,  <30.613953, 36.623085, 19.666168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374826, 36.936222, 19.597155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519792, 0.542398, 0.660016,
		0.610273, 0.304886, -0.731171,
		-0.597816, 0.782847, -0.172534,
		30.195482, 37.171078, 19.545395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991716, 37.228065, 19.671522>,  <30.613953, 36.623085, 19.666168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991716, 37.228065, 19.671522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640989, 37.394718, 19.767530>,  <30.430553, 37.494709, 19.825136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640989, 37.394718, 19.767530>,  <30.991716, 37.228065, 19.671522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640989, 37.394718, 19.767530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384441, 0.307644, 0.870379,
		0.288787, 0.855437, -0.429919,
		-0.876816, 0.416633, 0.240021,
		30.377945, 37.519707, 19.839537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174110, 37.724400, 20.084190>,  <30.991716, 37.228065, 19.671522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174110, 37.724400, 20.084190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784729, 37.691956, 20.169800>,  <30.551100, 37.672489, 20.221165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784729, 37.691956, 20.169800>,  <31.174110, 37.724400, 20.084190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784729, 37.691956, 20.169800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184420, 0.275835, 0.943347,
		-0.135550, 0.957777, -0.253555,
		-0.973455, -0.081110, 0.214023,
		30.492693, 37.667622, 20.234007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102276, 38.225983, 20.560793>,  <31.174110, 37.724400, 20.084190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102276, 38.225983, 20.560793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785608, 37.987183, 20.612709>,  <30.595608, 37.843903, 20.643860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785608, 37.987183, 20.612709>,  <31.102276, 38.225983, 20.560793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785608, 37.987183, 20.612709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119616, 0.056871, 0.991190,
		-0.599125, 0.800221, 0.026388,
		-0.791670, -0.597003, 0.129792,
		30.548107, 37.808083, 20.651648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821337, 38.487984, 21.144203>,  <31.102276, 38.225983, 20.560793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821337, 38.487984, 21.144203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680824, 38.115688, 21.103537>,  <30.596518, 37.892311, 21.079136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680824, 38.115688, 21.103537>,  <30.821337, 38.487984, 21.144203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680824, 38.115688, 21.103537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090266, -0.141748, 0.985779,
		-0.931908, 0.337109, 0.133807,
		-0.351281, -0.930734, -0.101666,
		30.575439, 37.836468, 21.073036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248018, 38.416367, 21.682678>,  <30.821337, 38.487984, 21.144203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248018, 38.416367, 21.682678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368565, 38.055546, 21.559074>,  <30.440893, 37.839054, 21.484913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368565, 38.055546, 21.559074>,  <30.248018, 38.416367, 21.682678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368565, 38.055546, 21.559074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203649, -0.255708, 0.945062,
		-0.931508, -0.347738, 0.106640,
		0.301365, -0.902049, -0.309010,
		30.458975, 37.784931, 21.466372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822538, 37.954857, 22.131937>,  <30.248018, 38.416367, 21.682678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822538, 37.954857, 22.131937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130802, 37.737320, 21.999077>,  <30.315760, 37.606796, 21.919361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130802, 37.737320, 21.999077>,  <29.822538, 37.954857, 22.131937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130802, 37.737320, 21.999077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044525, -0.473998, 0.879399,
		-0.635693, -0.692505, -0.341076,
		0.770657, -0.543841, -0.332151,
		30.362000, 37.574169, 21.899431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663536, 37.162415, 22.311232>,  <29.822538, 37.954857, 22.131937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663536, 37.162415, 22.311232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055294, 37.216301, 22.251049>,  <30.290348, 37.248634, 22.214939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055294, 37.216301, 22.251049>,  <29.663536, 37.162415, 22.311232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055294, 37.216301, 22.251049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195936, -0.453319, 0.869546,
		0.048941, -0.881109, -0.470375,
		0.979395, 0.134720, -0.150455,
		30.349112, 37.256718, 22.205912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066551, 36.436367, 22.347050>,  <29.663536, 37.162415, 22.311232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066551, 36.436367, 22.347050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302229, 36.740917, 22.455242>,  <30.443636, 36.923645, 22.520159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302229, 36.740917, 22.455242>,  <30.066551, 36.436367, 22.347050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302229, 36.740917, 22.455242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129894, -0.419660, 0.898339,
		0.797482, -0.494162, -0.346160,
		0.589194, 0.761373, 0.270483,
		30.478987, 36.969330, 22.536386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521358, 36.204536, 22.883659>,  <30.066551, 36.436367, 22.347050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521358, 36.204536, 22.883659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.536728, 36.601585, 22.929667>,  <30.545950, 36.839813, 22.957270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.536728, 36.601585, 22.929667>,  <30.521358, 36.204536, 22.883659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536728, 36.601585, 22.929667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086255, -0.117966, 0.989264,
		0.995532, -0.028088, -0.090151,
		0.038421, 0.992620, 0.115016,
		30.548254, 36.899372, 22.964170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985729, 36.300739, 23.360973>,  <30.521358, 36.204536, 22.883659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985729, 36.300739, 23.360973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746954, 36.621555, 23.368990>,  <30.603689, 36.814045, 23.373800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746954, 36.621555, 23.368990>,  <30.985729, 36.300739, 23.360973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746954, 36.621555, 23.368990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059948, -0.069503, 0.995779,
		0.800045, 0.593216, 0.089570,
		-0.596938, 0.802037, 0.020044,
		30.567873, 36.862167, 23.375004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117617, 36.499542, 24.020308>,  <30.985729, 36.300739, 23.360973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117617, 36.499542, 24.020308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823322, 36.756054, 23.933176>,  <30.646746, 36.909962, 23.880898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823322, 36.756054, 23.933176>,  <31.117617, 36.499542, 24.020308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823322, 36.756054, 23.933176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196853, 0.105259, 0.974766,
		0.648029, 0.760051, 0.048795,
		-0.735736, 0.641282, -0.217829,
		30.602602, 36.948441, 23.867826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186872, 37.006207, 24.518919>,  <31.117617, 36.499542, 24.020308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186872, 37.006207, 24.518919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809690, 37.062031, 24.398020>,  <30.583382, 37.095524, 24.325480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809690, 37.062031, 24.398020>,  <31.186872, 37.006207, 24.518919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809690, 37.062031, 24.398020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259048, 0.262670, 0.929462,
		0.209108, 0.954740, -0.211533,
		-0.942957, 0.139560, -0.302250,
		30.526804, 37.103897, 24.307344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919657, 37.642170, 24.771568>,  <31.186872, 37.006207, 24.518919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919657, 37.642170, 24.771568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584707, 37.440193, 24.687819>,  <30.383738, 37.319008, 24.637568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584707, 37.440193, 24.687819>,  <30.919657, 37.642170, 24.771568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584707, 37.440193, 24.687819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351249, 0.203544, 0.913889,
		-0.418847, 0.838808, -0.347804,
		-0.837372, -0.504946, -0.209376,
		30.333496, 37.288708, 24.625006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356358, 38.105659, 24.964979>,  <30.919657, 37.642170, 24.771568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356358, 38.105659, 24.964979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243420, 37.722168, 24.951635>,  <30.175657, 37.492073, 24.943628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243420, 37.722168, 24.951635>,  <30.356358, 38.105659, 24.964979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243420, 37.722168, 24.951635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353963, 0.071794, 0.932500,
		-0.891623, 0.275093, -0.359627,
		-0.282343, -0.958733, -0.033360,
		30.158716, 37.434547, 24.941628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901722, 38.167946, 25.416870>,  <30.356358, 38.105659, 24.964979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901722, 38.167946, 25.416870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981268, 37.778221, 25.374605>,  <30.028996, 37.544384, 25.349247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981268, 37.778221, 25.374605>,  <29.901722, 38.167946, 25.416870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981268, 37.778221, 25.374605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175579, -0.141491, 0.974245,
		-0.964171, -0.175189, -0.199207,
		0.198863, -0.974315, -0.105662,
		30.040928, 37.485928, 25.342907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396519, 37.825546, 25.832417>,  <29.901722, 38.167946, 25.416870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396519, 37.825546, 25.832417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671234, 37.536728, 25.799009>,  <29.836063, 37.363438, 25.778965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671234, 37.536728, 25.799009>,  <29.396519, 37.825546, 25.832417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671234, 37.536728, 25.799009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087712, -0.196393, 0.976594,
		-0.721544, -0.663390, -0.198213,
		0.686790, -0.722041, -0.083518,
		29.877272, 37.320114, 25.773954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143755, 37.078362, 26.095581>,  <29.396519, 37.825546, 25.832417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143755, 37.078362, 26.095581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541935, 37.113701, 26.109859>,  <29.780844, 37.134907, 26.118427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541935, 37.113701, 26.109859>,  <29.143755, 37.078362, 26.095581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541935, 37.113701, 26.109859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019329, -0.179599, 0.983550,
		0.093308, -0.979765, -0.177074,
		0.995450, 0.088350, 0.035696,
		29.840570, 37.140205, 26.120569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352987, 36.604660, 26.669899>,  <29.143755, 37.078362, 26.095581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352987, 36.604660, 26.669899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689785, 36.813580, 26.615868>,  <29.891865, 36.938931, 26.583448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689785, 36.813580, 26.615868>,  <29.352987, 36.604660, 26.669899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689785, 36.813580, 26.615868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230141, -0.121287, 0.965570,
		0.487933, -0.844093, -0.222326,
		0.841995, 0.522299, -0.135080,
		29.942383, 36.970268, 26.575344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747049, 36.375366, 27.223478>,  <29.352987, 36.604660, 26.669899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747049, 36.375366, 27.223478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938074, 36.708675, 27.112055>,  <30.052689, 36.908661, 27.045200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938074, 36.708675, 27.112055>,  <29.747049, 36.375366, 27.223478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938074, 36.708675, 27.112055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326073, 0.126311, 0.936868,
		0.815849, -0.538244, -0.211385,
		0.477564, 0.833270, -0.278558,
		30.081343, 36.958656, 27.028488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453917, 36.363045, 27.456625>,  <29.747049, 36.375366, 27.223478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453917, 36.363045, 27.456625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356993, 36.749043, 27.416500>,  <30.298838, 36.980640, 27.392426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356993, 36.749043, 27.416500>,  <30.453917, 36.363045, 27.456625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356993, 36.749043, 27.416500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193806, 0.149454, 0.969589,
		0.950644, 0.215502, -0.223237,
		-0.242312, 0.964999, -0.100312,
		30.284300, 37.038544, 27.386406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904175, 36.740826, 27.919575>,  <30.453917, 36.363045, 27.456625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904175, 36.740826, 27.919575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610189, 37.005230, 27.859056>,  <30.433798, 37.163872, 27.822746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610189, 37.005230, 27.859056>,  <30.904175, 36.740826, 27.919575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610189, 37.005230, 27.859056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046829, 0.272057, 0.961141,
		0.676488, 0.699318, -0.230907,
		-0.734963, 0.661013, -0.151295,
		30.389700, 37.203533, 27.813667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089306, 37.255497, 28.411194>,  <30.904175, 36.740826, 27.919575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089306, 37.255497, 28.411194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711050, 37.340401, 28.312634>,  <30.484097, 37.391342, 28.253498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711050, 37.340401, 28.312634>,  <31.089306, 37.255497, 28.411194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711050, 37.340401, 28.312634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167815, 0.330514, 0.928762,
		0.278579, 0.919622, -0.276927,
		-0.945638, 0.212261, -0.246401,
		30.427359, 37.404079, 28.238712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946257, 37.880981, 28.745682>,  <31.089306, 37.255497, 28.411194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946257, 37.880981, 28.745682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579348, 37.752819, 28.651068>,  <30.359201, 37.675922, 28.594299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579348, 37.752819, 28.651068>,  <30.946257, 37.880981, 28.745682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579348, 37.752819, 28.651068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288635, 0.125611, 0.949164,
		-0.274409, 0.938914, -0.207701,
		-0.917273, -0.320409, -0.236534,
		30.304165, 37.656696, 28.580107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404110, 38.387123, 29.063671>,  <30.946257, 37.880981, 28.745682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404110, 38.387123, 29.063671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216240, 38.039127, 29.003641>,  <30.103518, 37.830330, 28.967623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216240, 38.039127, 29.003641>,  <30.404110, 38.387123, 29.063671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216240, 38.039127, 29.003641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434931, 0.080089, 0.896895,
		-0.768272, 0.486520, -0.416001,
		-0.469674, -0.869991, -0.150073,
		30.075338, 37.778130, 28.958620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609329, 38.483471, 29.179241>,  <30.404110, 38.387123, 29.063671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609329, 38.483471, 29.179241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724245, 38.107166, 29.251276>,  <29.793196, 37.881382, 29.294497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724245, 38.107166, 29.251276>,  <29.609329, 38.483471, 29.179241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724245, 38.107166, 29.251276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381047, 0.060244, 0.922591,
		-0.878787, -0.333674, -0.341166,
		0.287291, -0.940762, 0.180087,
		29.810432, 37.824940, 29.305302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139450, 38.236149, 29.571947>,  <29.609329, 38.483471, 29.179241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139450, 38.236149, 29.571947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.437752, 37.981033, 29.648975>,  <29.616732, 37.827965, 29.695192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.437752, 37.981033, 29.648975>,  <29.139450, 38.236149, 29.571947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437752, 37.981033, 29.648975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324666, -0.095507, 0.940995,
		-0.581761, -0.764269, -0.278292,
		0.745752, -0.637786, 0.192569,
		29.661478, 37.789700, 29.706747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875410, 37.647102, 30.005423>,  <29.139450, 38.236149, 29.571947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875410, 37.647102, 30.005423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270622, 37.664928, 30.064493>,  <29.507750, 37.675625, 30.099936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270622, 37.664928, 30.064493>,  <28.875410, 37.647102, 30.005423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270622, 37.664928, 30.064493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135015, -0.213139, 0.967648,
		0.074599, -0.976005, -0.204571,
		0.988031, 0.044566, 0.147675,
		29.567032, 37.678299, 30.108795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019901, 37.126385, 30.468552>,  <28.875410, 37.647102, 30.005423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019901, 37.126385, 30.468552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348183, 37.350475, 30.513441>,  <29.545153, 37.484928, 30.540375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348183, 37.350475, 30.513441>,  <29.019901, 37.126385, 30.468552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348183, 37.350475, 30.513441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108053, -0.040685, 0.993312,
		0.561041, -0.827343, 0.027143,
		0.820706, 0.560222, 0.112223,
		29.594395, 37.518543, 30.547108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341167, 36.942520, 31.160202>,  <29.019901, 37.126385, 30.468552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341167, 36.942520, 31.160202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576126, 37.261002, 31.102196>,  <29.717102, 37.452091, 31.067392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576126, 37.261002, 31.102196>,  <29.341167, 36.942520, 31.160202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576126, 37.261002, 31.102196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202465, 0.028919, 0.978863,
		0.783564, -0.604343, -0.144215,
		0.587398, 0.796200, -0.145018,
		29.752346, 37.499863, 31.058691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152510, 36.755402, 31.405455>,  <29.341167, 36.942520, 31.160202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152510, 36.755402, 31.405455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071745, 37.146782, 31.388222>,  <30.023285, 37.381611, 31.377882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071745, 37.146782, 31.388222>,  <30.152510, 36.755402, 31.405455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071745, 37.146782, 31.388222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422560, 0.126716, 0.897433,
		0.883557, 0.162999, -0.439042,
		-0.201914, 0.978455, -0.043084,
		30.011171, 37.440319, 31.375296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723574, 37.079723, 31.633919>,  <30.152510, 36.755402, 31.405455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723574, 37.079723, 31.633919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420401, 37.334614, 31.689749>,  <30.238497, 37.487549, 31.723248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420401, 37.334614, 31.689749>,  <30.723574, 37.079723, 31.633919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420401, 37.334614, 31.689749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180464, -0.000792, 0.983581,
		0.626875, 0.770676, -0.114396,
		-0.757932, 0.637227, 0.139575,
		30.193022, 37.525784, 31.731621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012966, 37.639954, 31.990993>,  <30.723574, 37.079723, 31.633919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012966, 37.639954, 31.990993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620218, 37.611729, 32.061371>,  <30.384569, 37.594791, 32.103596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620218, 37.611729, 32.061371>,  <31.012966, 37.639954, 31.990993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620218, 37.611729, 32.061371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170900, 0.072092, 0.982647,
		-0.082026, 0.994898, -0.058725,
		-0.981868, -0.070567, 0.175942,
		30.325657, 37.590557, 32.114155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929012, 38.227779, 32.471825>,  <31.012966, 37.639954, 31.990993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929012, 38.227779, 32.471825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589123, 38.025024, 32.529839>,  <30.385189, 37.903374, 32.564648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589123, 38.025024, 32.529839>,  <30.929012, 38.227779, 32.471825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589123, 38.025024, 32.529839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060647, 0.179295, 0.981924,
		-0.523727, 0.843161, -0.121610,
		-0.849725, -0.506885, 0.145037,
		30.334206, 37.872959, 32.573349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957466, 39.027195, 32.385414>,  <30.929012, 38.227779, 32.471825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957466, 39.027195, 32.385414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354752, 39.029987, 32.431847>,  <31.593122, 39.031662, 32.459705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354752, 39.029987, 32.431847>,  <30.957466, 39.027195, 32.385414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354752, 39.029987, 32.431847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112798, 0.184957, -0.976252,
		-0.028290, 0.982722, 0.182914,
		0.993215, 0.006985, 0.116081,
		31.652716, 39.032082, 32.466671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185040, 39.565765, 31.927561>,  <30.957466, 39.027195, 32.385414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185040, 39.565765, 31.927561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517616, 39.364502, 32.021820>,  <31.717163, 39.243744, 32.078377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517616, 39.364502, 32.021820>,  <31.185040, 39.565765, 31.927561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517616, 39.364502, 32.021820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306355, 0.061340, -0.949939,
		0.463519, 0.862012, 0.205147,
		0.831442, -0.503163, 0.235649,
		31.767050, 39.213554, 32.092514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722992, 40.022247, 31.688440>,  <31.185040, 39.565765, 31.927561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722992, 40.022247, 31.688440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853580, 39.644676, 31.708143>,  <31.931934, 39.418133, 31.719965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853580, 39.644676, 31.708143>,  <31.722992, 40.022247, 31.688440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853580, 39.644676, 31.708143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268497, 0.042646, -0.962336,
		0.906270, 0.327400, 0.267363,
		0.326471, -0.943923, 0.049257,
		31.951521, 39.361500, 31.722919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351166, 40.094006, 31.324480>,  <31.722992, 40.022247, 31.688440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351166, 40.094006, 31.324480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245472, 39.708260, 31.329750>,  <32.182056, 39.476810, 31.332912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245472, 39.708260, 31.329750>,  <32.351166, 40.094006, 31.324480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245472, 39.708260, 31.329750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485378, -0.144773, -0.862235,
		0.833418, -0.221441, 0.506338,
		-0.264238, -0.964368, 0.013173,
		32.166199, 39.418949, 31.333702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933998, 39.767563, 31.147495>,  <32.351166, 40.094006, 31.324480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933998, 39.767563, 31.147495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635750, 39.513325, 31.067427>,  <32.456799, 39.360783, 31.019384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635750, 39.513325, 31.067427>,  <32.933998, 39.767563, 31.147495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635750, 39.513325, 31.067427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424560, -0.221584, -0.877866,
		0.513610, -0.739543, 0.435065,
		-0.745623, -0.635592, -0.200173,
		32.412064, 39.322647, 31.007376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247070, 39.109425, 30.894747>,  <32.933998, 39.767563, 31.147495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247070, 39.109425, 30.894747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875748, 39.131130, 30.747614>,  <32.652954, 39.144154, 30.659334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875748, 39.131130, 30.747614>,  <33.247070, 39.109425, 30.894747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875748, 39.131130, 30.747614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355715, -0.158320, -0.921087,
		-0.108213, -0.985896, 0.127669,
		-0.928309, 0.054260, -0.367830,
		32.597256, 39.147411, 30.637264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157310, 38.613838, 30.429766>,  <33.247070, 39.109425, 30.894747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157310, 38.613838, 30.429766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857231, 38.862656, 30.340088>,  <32.677181, 39.011944, 30.286282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857231, 38.862656, 30.340088>,  <33.157310, 38.613838, 30.429766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857231, 38.862656, 30.340088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119488, -0.205947, -0.971241,
		-0.650324, -0.755414, 0.080175,
		-0.750201, 0.622041, -0.224195,
		32.632172, 39.049267, 30.272829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789612, 38.311901, 29.912663>,  <33.157310, 38.613838, 30.429766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789612, 38.311901, 29.912663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676266, 38.691319, 29.856125>,  <32.608257, 38.918968, 29.822203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676266, 38.691319, 29.856125>,  <32.789612, 38.311901, 29.912663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676266, 38.691319, 29.856125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018230, -0.142032, -0.989694,
		-0.958839, -0.283020, 0.022955,
		-0.283363, 0.948539, -0.141345,
		32.591255, 38.975880, 29.813721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154045, 38.287224, 29.338337>,  <32.789612, 38.311901, 29.912663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154045, 38.287224, 29.338337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332146, 38.645340, 29.343998>,  <32.439007, 38.860210, 29.347395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332146, 38.645340, 29.343998>,  <32.154045, 38.287224, 29.338337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332146, 38.645340, 29.343998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079802, 0.055419, -0.995269,
		-0.891840, 0.442020, 0.096122,
		0.445256, 0.895292, 0.014151,
		32.465721, 38.913929, 29.348244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955437, 38.571400, 28.671926>,  <32.154045, 38.287224, 29.338337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955437, 38.571400, 28.671926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274323, 38.780811, 28.792170>,  <32.465652, 38.906460, 28.864315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274323, 38.780811, 28.792170>,  <31.955437, 38.571400, 28.671926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274323, 38.780811, 28.792170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223620, 0.206435, -0.952564,
		-0.560754, 0.826619, 0.047500,
		0.797213, 0.523532, 0.300608,
		32.513485, 38.937870, 28.882353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928450, 39.236225, 28.348301>,  <31.955437, 38.571400, 28.671926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928450, 39.236225, 28.348301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310436, 39.176533, 28.450884>,  <32.539627, 39.140717, 28.512434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310436, 39.176533, 28.450884>,  <31.928450, 39.236225, 28.348301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310436, 39.176533, 28.450884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261339, 0.013757, -0.965149,
		0.140502, 0.988707, 0.052138,
		0.954966, -0.149231, 0.256455,
		32.596928, 39.131763, 28.527821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254860, 39.878429, 28.050917>,  <31.928450, 39.236225, 28.348301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254860, 39.878429, 28.050917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537079, 39.600563, 28.106972>,  <32.706409, 39.433846, 28.140604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537079, 39.600563, 28.106972>,  <32.254860, 39.878429, 28.050917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537079, 39.600563, 28.106972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289861, 0.102441, -0.951571,
		0.646666, 0.712003, 0.273633,
		0.705552, -0.694664, 0.140137,
		32.748745, 39.392162, 28.149014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641525, 40.122669, 27.543217>,  <32.254860, 39.878429, 28.050917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641525, 40.122669, 27.543217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798042, 39.764248, 27.627100>,  <32.891953, 39.549194, 27.677429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798042, 39.764248, 27.627100>,  <32.641525, 40.122669, 27.543217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798042, 39.764248, 27.627100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233582, -0.123707, -0.964436,
		0.890127, 0.426363, 0.160895,
		0.391296, -0.896053, 0.209706,
		32.915432, 39.495434, 27.690012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304379, 40.152336, 27.363997>,  <32.641525, 40.122669, 27.543217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304379, 40.152336, 27.363997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194736, 39.767658, 27.362541>,  <33.128952, 39.536854, 27.361668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194736, 39.767658, 27.362541>,  <33.304379, 40.152336, 27.363997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194736, 39.767658, 27.362541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155733, -0.040656, -0.986962,
		0.949006, -0.271101, 0.160911,
		-0.274109, -0.961692, -0.003637,
		33.112503, 39.479149, 27.361450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778706, 39.896393, 26.841446>,  <33.304379, 40.152336, 27.363997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778706, 39.896393, 26.841446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486130, 39.627449, 26.886940>,  <33.310585, 39.466084, 26.914236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486130, 39.627449, 26.886940>,  <33.778706, 39.896393, 26.841446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486130, 39.627449, 26.886940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024045, -0.141258, -0.989681,
		0.681487, -0.726622, 0.087155,
		-0.731435, -0.672359, 0.113737,
		33.266701, 39.425743, 26.921061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121574, 39.307972, 26.617439>,  <33.778706, 39.896393, 26.841446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121574, 39.307972, 26.617439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725033, 39.265289, 26.586920>,  <33.487106, 39.239677, 26.568607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725033, 39.265289, 26.586920>,  <34.121574, 39.307972, 26.617439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725033, 39.265289, 26.586920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095035, -0.183279, -0.978456,
		0.090427, -0.977252, 0.191836,
		-0.991358, -0.106710, -0.076299,
		33.427624, 39.233276, 26.564030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009365, 38.678097, 26.282751>,  <34.121574, 39.307972, 26.617439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009365, 38.678097, 26.282751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656464, 38.857811, 26.226500>,  <33.444725, 38.965641, 26.192749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656464, 38.857811, 26.226500>,  <34.009365, 38.678097, 26.282751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656464, 38.857811, 26.226500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046482, -0.214120, -0.975701,
		-0.468479, -0.867350, 0.168024,
		-0.882251, 0.449286, -0.140627,
		33.391788, 38.992596, 26.184311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551476, 38.257717, 26.014046>,  <34.009365, 38.678097, 26.282751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551476, 38.257717, 26.014046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385605, 38.597137, 25.882593>,  <33.286083, 38.800789, 25.803720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385605, 38.597137, 25.882593>,  <33.551476, 38.257717, 26.014046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385605, 38.597137, 25.882593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090852, -0.397951, -0.912897,
		-0.905422, -0.348700, 0.242114,
		-0.414676, 0.848554, -0.328633,
		33.261204, 38.851704, 25.784002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886978, 38.089474, 25.705444>,  <33.551476, 38.257717, 26.014046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886978, 38.089474, 25.705444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976303, 38.444782, 25.544891>,  <33.029896, 38.657967, 25.448559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976303, 38.444782, 25.544891>,  <32.886978, 38.089474, 25.705444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976303, 38.444782, 25.544891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194887, -0.362780, -0.911268,
		-0.955067, 0.281718, 0.092100,
		0.223309, 0.888271, -0.401383,
		33.043297, 38.711262, 25.424477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555592, 37.949821, 25.098291>,  <32.886978, 38.089474, 25.705444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555592, 37.949821, 25.098291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768242, 38.283642, 25.040455>,  <32.895832, 38.483932, 25.005753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768242, 38.283642, 25.040455>,  <32.555592, 37.949821, 25.098291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768242, 38.283642, 25.040455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125777, -0.091032, -0.987873,
		-0.837590, 0.543362, 0.056572,
		0.531623, 0.834548, -0.144590,
		32.927731, 38.534008, 24.997078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179504, 38.372910, 24.649378>,  <32.555592, 37.949821, 25.098291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179504, 38.372910, 24.649378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565193, 38.467987, 24.602425>,  <32.796608, 38.525032, 24.574253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565193, 38.467987, 24.602425>,  <32.179504, 38.372910, 24.649378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565193, 38.467987, 24.602425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122856, 0.008285, -0.992390,
		-0.234910, 0.971305, 0.037190,
		0.964222, 0.237691, -0.117384,
		32.854458, 38.539295, 24.567209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126678, 38.669357, 24.004465>,  <32.179504, 38.372910, 24.649378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126678, 38.669357, 24.004465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514881, 38.596916, 24.068102>,  <32.747803, 38.553452, 24.106285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514881, 38.596916, 24.068102>,  <32.126678, 38.669357, 24.004465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514881, 38.596916, 24.068102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159634, -0.011688, -0.987107,
		0.180629, 0.983394, 0.017567,
		0.970510, -0.181105, 0.159094,
		32.806034, 38.542583, 24.115829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394085, 39.147251, 23.517178>,  <32.126678, 38.669357, 24.004465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394085, 39.147251, 23.517178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680676, 38.888649, 23.622017>,  <32.852631, 38.733486, 23.684919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680676, 38.888649, 23.622017>,  <32.394085, 39.147251, 23.517178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680676, 38.888649, 23.622017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208159, -0.160465, -0.964842,
		0.665832, 0.745844, 0.019606,
		0.716476, -0.646504, 0.262097,
		32.895618, 38.694698, 23.700645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984695, 39.236469, 23.061165>,  <32.394085, 39.147251, 23.517178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984695, 39.236469, 23.061165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015472, 38.864525, 23.205074>,  <33.033939, 38.641357, 23.291420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015472, 38.864525, 23.205074>,  <32.984695, 39.236469, 23.061165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015472, 38.864525, 23.205074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209294, -0.337741, -0.917675,
		0.974821, 0.145911, 0.168626,
		0.076947, -0.929861, 0.359776,
		33.038555, 38.585567, 23.313007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469166, 38.979385, 22.663851>,  <32.984695, 39.236469, 23.061165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469166, 38.979385, 22.663851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306732, 38.650482, 22.823343>,  <33.209274, 38.453140, 22.919039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306732, 38.650482, 22.823343>,  <33.469166, 38.979385, 22.663851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306732, 38.650482, 22.823343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079947, -0.466618, -0.880838,
		0.910333, -0.325815, 0.255222,
		-0.406082, -0.822260, 0.398729,
		33.184906, 38.403805, 22.942963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833801, 38.429779, 22.449274>,  <33.469166, 38.979385, 22.663851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833801, 38.429779, 22.449274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483570, 38.253750, 22.528984>,  <33.273434, 38.148132, 22.576809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483570, 38.253750, 22.528984>,  <33.833801, 38.429779, 22.449274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483570, 38.253750, 22.528984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098916, -0.567079, -0.817702,
		0.472849, -0.696247, 0.540050,
		-0.875574, -0.440069, 0.199273,
		33.220898, 38.121731, 22.588766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941830, 37.712769, 22.417507>,  <33.833801, 38.429779, 22.449274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941830, 37.712769, 22.417507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559971, 37.790649, 22.327410>,  <33.330856, 37.837379, 22.273352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559971, 37.790649, 22.327410>,  <33.941830, 37.712769, 22.417507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559971, 37.790649, 22.327410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078806, -0.564307, -0.821795,
		-0.287112, -0.802277, 0.523372,
		-0.954649, 0.194702, -0.225243,
		33.273575, 37.849060, 22.259836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699596, 37.065536, 22.245434>,  <33.941830, 37.712769, 22.417507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699596, 37.065536, 22.245434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433418, 37.317600, 22.085394>,  <33.273712, 37.468838, 21.989370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433418, 37.317600, 22.085394>,  <33.699596, 37.065536, 22.245434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433418, 37.317600, 22.085394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130281, -0.625829, -0.769003,
		-0.734991, -0.459602, 0.498552,
		-0.665443, 0.630162, -0.400101,
		33.233784, 37.506649, 21.965364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085960, 36.672348, 22.016895>,  <33.699596, 37.065536, 22.245434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085960, 36.672348, 22.016895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062473, 37.014412, 21.810883>,  <33.048382, 37.219650, 21.687275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062473, 37.014412, 21.810883>,  <33.085960, 36.672348, 22.016895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062473, 37.014412, 21.810883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217875, -0.514461, -0.829373,
		-0.974209, 0.063511, 0.216527,
		-0.058720, 0.855159, -0.515030,
		33.044857, 37.270958, 21.656374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568119, 36.539455, 21.686611>,  <33.085960, 36.672348, 22.016895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568119, 36.539455, 21.686611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712570, 36.841080, 21.467165>,  <32.799240, 37.022053, 21.335497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712570, 36.841080, 21.467165>,  <32.568119, 36.539455, 21.686611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712570, 36.841080, 21.467165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172649, -0.524079, -0.833986,
		-0.916393, 0.395896, -0.059074,
		0.361131, 0.754061, -0.548613,
		32.820911, 37.067299, 21.302582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123829, 36.584324, 21.193117>,  <32.568119, 36.539455, 21.686611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123829, 36.584324, 21.193117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459488, 36.760418, 21.065351>,  <32.660885, 36.866074, 20.988693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459488, 36.760418, 21.065351>,  <32.123829, 36.584324, 21.193117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459488, 36.760418, 21.065351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131823, -0.405134, -0.904704,
		-0.527690, 0.801285, -0.281933,
		0.839146, 0.440238, -0.319413,
		32.711231, 36.892490, 20.969528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977032, 36.903286, 20.551313>,  <32.123829, 36.584324, 21.193117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977032, 36.903286, 20.551313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373573, 36.854446, 20.532093>,  <32.611500, 36.825142, 20.520561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373573, 36.854446, 20.532093>,  <31.977032, 36.903286, 20.551313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373573, 36.854446, 20.532093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081421, -0.285256, -0.954987,
		0.102900, 0.950642, -0.292731,
		0.991354, -0.122103, -0.048049,
		32.670979, 36.817814, 20.517679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117764, 37.117790, 19.841408>,  <31.977032, 36.903286, 20.551313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117764, 37.117790, 19.841408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441986, 36.907944, 19.945545>,  <32.636520, 36.782036, 20.008028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441986, 36.907944, 19.945545>,  <32.117764, 37.117790, 19.841408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441986, 36.907944, 19.945545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019041, -0.467897, -0.883578,
		0.585353, 0.711231, -0.389246,
		0.810555, -0.524616, 0.260342,
		32.685154, 36.750557, 20.023647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529148, 37.141277, 19.208544>,  <32.117764, 37.117790, 19.841408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529148, 37.141277, 19.208544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671009, 36.849380, 19.442366>,  <32.756126, 36.674244, 19.582659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671009, 36.849380, 19.442366>,  <32.529148, 37.141277, 19.208544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671009, 36.849380, 19.442366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106987, -0.589413, -0.800716,
		0.928856, 0.346517, -0.130965,
		0.354654, -0.729739, 0.584553,
		32.777405, 36.630459, 19.617731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130829, 36.990490, 18.909321>,  <32.529148, 37.141277, 19.208544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130829, 36.990490, 18.909321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012348, 36.679802, 19.131659>,  <32.941257, 36.493389, 19.265060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012348, 36.679802, 19.131659>,  <33.130829, 36.990490, 18.909321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012348, 36.679802, 19.131659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135090, -0.610178, -0.780662,
		0.945523, -0.156146, 0.285665,
		-0.296204, -0.776724, 0.555844,
		32.923489, 36.446785, 19.298412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616364, 36.443371, 18.837215>,  <33.130829, 36.990490, 18.909321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616364, 36.443371, 18.837215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280209, 36.266090, 18.962000>,  <33.078514, 36.159721, 19.036871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280209, 36.266090, 18.962000>,  <33.616364, 36.443371, 18.837215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280209, 36.266090, 18.962000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060995, -0.649273, -0.758106,
		0.538542, -0.618075, 0.572674,
		-0.840388, -0.443202, 0.311961,
		33.028091, 36.133129, 19.055588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787285, 35.780064, 18.692934>,  <33.616364, 36.443371, 18.837215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787285, 35.780064, 18.692934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388683, 35.778889, 18.726349>,  <33.149525, 35.778183, 18.746397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388683, 35.778889, 18.726349>,  <33.787285, 35.780064, 18.692934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388683, 35.778889, 18.726349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051932, -0.761322, -0.646291,
		0.065498, -0.648368, 0.758505,
		-0.996500, -0.002940, 0.083536,
		33.089733, 35.778008, 18.751410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730812, 35.081230, 18.590752>,  <33.787285, 35.780064, 18.692934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730812, 35.081230, 18.590752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365929, 35.240047, 18.550274>,  <33.146999, 35.335339, 18.525988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365929, 35.240047, 18.550274>,  <33.730812, 35.081230, 18.590752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365929, 35.240047, 18.550274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191244, -0.631002, -0.751839,
		-0.362365, -0.666479, 0.651535,
		-0.912205, 0.397042, -0.101193,
		33.092266, 35.359161, 18.519917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363400, 34.783386, 18.143789>,  <33.730812, 35.081230, 18.590752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363400, 34.783386, 18.143789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649269, 34.553513, 18.303280>,  <34.820789, 34.415588, 18.398973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649269, 34.553513, 18.303280>,  <34.363400, 34.783386, 18.143789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649269, 34.553513, 18.303280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350899, 0.198551, 0.915121,
		-0.605074, -0.793923, -0.059758,
		0.714671, -0.574685, 0.398725,
		34.863670, 34.381107, 18.422897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064342, 34.340351, 18.564726>,  <34.363400, 34.783386, 18.143789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064342, 34.340351, 18.564726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443439, 34.324978, 18.691410>,  <34.670898, 34.315754, 18.767422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443439, 34.324978, 18.691410>,  <34.064342, 34.340351, 18.564726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443439, 34.324978, 18.691410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313517, 0.071642, 0.946876,
		-0.059079, -0.996690, 0.055849,
		0.947743, -0.038431, 0.316712,
		34.727764, 34.313450, 18.786423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031746, 33.733345, 19.030052>,  <34.064342, 34.340351, 18.564726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031746, 33.733345, 19.030052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349010, 33.965004, 19.105406>,  <34.539368, 34.104000, 19.150618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349010, 33.965004, 19.105406>,  <34.031746, 33.733345, 19.030052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349010, 33.965004, 19.105406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253990, 0.033425, 0.966629,
		0.553525, -0.814537, 0.173609,
		0.793158, 0.579148, 0.188383,
		34.586956, 34.138748, 19.161921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359470, 33.330109, 19.615030>,  <34.031746, 33.733345, 19.030052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359470, 33.330109, 19.615030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473827, 33.713142, 19.600666>,  <34.542442, 33.942963, 19.592049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473827, 33.713142, 19.600666>,  <34.359470, 33.330109, 19.615030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473827, 33.713142, 19.600666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022367, 0.044132, 0.998775,
		0.958000, -0.284740, 0.034035,
		0.285894, 0.957588, -0.035910,
		34.559597, 34.000420, 19.589893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724636, 33.405159, 20.214117>,  <34.359470, 33.330109, 19.615030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724636, 33.405159, 20.214117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647770, 33.784492, 20.113140>,  <34.601650, 34.012093, 20.052553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647770, 33.784492, 20.113140>,  <34.724636, 33.405159, 20.214117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647770, 33.784492, 20.113140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082456, 0.240725, 0.967085,
		0.977892, 0.206658, 0.031937,
		-0.192168, 0.948337, -0.252443,
		34.590118, 34.068993, 20.037407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047565, 33.798988, 20.706934>,  <34.724636, 33.405159, 20.214117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047565, 33.798988, 20.706934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791145, 34.060459, 20.546057>,  <34.637291, 34.217342, 20.449530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791145, 34.060459, 20.546057>,  <35.047565, 33.798988, 20.706934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791145, 34.060459, 20.546057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134406, 0.420323, 0.897365,
		0.755635, 0.629317, -0.181592,
		-0.641054, 0.653673, -0.402195,
		34.598827, 34.256561, 20.425398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326157, 34.486740, 20.821333>,  <35.047565, 33.798988, 20.706934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326157, 34.486740, 20.821333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930805, 34.536983, 20.787104>,  <34.693592, 34.567131, 20.766565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930805, 34.536983, 20.787104>,  <35.326157, 34.486740, 20.821333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930805, 34.536983, 20.787104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014711, 0.481319, 0.876422,
		0.151274, 0.867499, -0.473880,
		-0.988382, 0.125609, -0.085572,
		34.634289, 34.574665, 20.761433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230751, 35.118706, 21.057650>,  <35.326157, 34.486740, 20.821333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230751, 35.118706, 21.057650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866508, 34.954853, 21.079533>,  <34.647961, 34.856541, 21.092663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866508, 34.954853, 21.079533>,  <35.230751, 35.118706, 21.057650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866508, 34.954853, 21.079533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109530, 0.366867, 0.923803,
		-0.398486, 0.835233, -0.378940,
		-0.910611, -0.409628, 0.054709,
		34.593327, 34.831966, 21.095945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749462, 35.675785, 21.275661>,  <35.230751, 35.118706, 21.057650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749462, 35.675785, 21.275661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543701, 35.340919, 21.350006>,  <34.420246, 35.139999, 21.394613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543701, 35.340919, 21.350006>,  <34.749462, 35.675785, 21.275661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543701, 35.340919, 21.350006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241661, 0.349467, 0.905247,
		-0.822795, 0.420744, -0.382077,
		-0.514400, -0.837166, 0.185862,
		34.389381, 35.089771, 21.405766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147942, 35.929008, 21.568665>,  <34.749462, 35.675785, 21.275661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147942, 35.929008, 21.568665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160477, 35.539131, 21.657207>,  <34.167995, 35.305206, 21.710333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160477, 35.539131, 21.657207>,  <34.147942, 35.929008, 21.568665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160477, 35.539131, 21.657207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295187, 0.202564, 0.933720,
		-0.954926, -0.094599, -0.281368,
		0.031334, -0.974689, 0.221358,
		34.169876, 35.246723, 21.723616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596638, 35.861309, 22.043619>,  <34.147942, 35.929008, 21.568665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596638, 35.861309, 22.043619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835140, 35.542988, 22.085899>,  <33.978241, 35.351994, 22.111267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835140, 35.542988, 22.085899>,  <33.596638, 35.861309, 22.043619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835140, 35.542988, 22.085899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126316, 0.037021, 0.991299,
		-0.792794, -0.604420, -0.078449,
		0.596256, -0.795805, 0.105698,
		34.014019, 35.304245, 22.117609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233795, 35.356178, 22.492743>,  <33.596638, 35.861309, 22.043619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233795, 35.356178, 22.492743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627506, 35.286148, 22.502020>,  <33.863735, 35.244129, 22.507587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627506, 35.286148, 22.502020>,  <33.233795, 35.356178, 22.492743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627506, 35.286148, 22.502020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002159, 0.119398, 0.992844,
		-0.176593, -0.977288, 0.117143,
		0.984282, -0.175077, 0.023194,
		33.922791, 35.233624, 22.508978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272598, 34.980976, 22.955940>,  <33.233795, 35.356178, 22.492743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272598, 34.980976, 22.955940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654854, 35.098736, 22.952269>,  <33.884209, 35.169392, 22.950066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654854, 35.098736, 22.952269>,  <33.272598, 34.980976, 22.955940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654854, 35.098736, 22.952269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002760, 0.022209, 0.999750,
		0.294527, -0.955425, 0.020411,
		0.955639, 0.294396, -0.009178,
		33.941547, 35.187054, 22.949514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642509, 34.559666, 23.449194>,  <33.272598, 34.980976, 22.955940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642509, 34.559666, 23.449194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843445, 34.904789, 23.426462>,  <33.964005, 35.111862, 23.412823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843445, 34.904789, 23.426462>,  <33.642509, 34.559666, 23.449194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843445, 34.904789, 23.426462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005788, 0.062367, 0.998037,
		0.864654, -0.501677, 0.026335,
		0.502335, 0.862804, -0.056830,
		33.994144, 35.163631, 23.409412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067589, 34.480072, 24.074514>,  <33.642509, 34.559666, 23.449194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067589, 34.480072, 24.074514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131710, 34.851540, 23.940720>,  <34.170185, 35.074421, 23.860443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131710, 34.851540, 23.940720>,  <34.067589, 34.480072, 24.074514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131710, 34.851540, 23.940720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221287, 0.296432, 0.929064,
		0.961943, -0.222951, -0.157982,
		0.160305, 0.928666, -0.334487,
		34.179802, 35.130138, 23.840374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711956, 34.605427, 24.352236>,  <34.067589, 34.480072, 24.074514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711956, 34.605427, 24.352236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509331, 34.943169, 24.282421>,  <34.387756, 35.145813, 24.240532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509331, 34.943169, 24.282421>,  <34.711956, 34.605427, 24.352236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509331, 34.943169, 24.282421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248244, 0.336689, 0.908304,
		0.825695, 0.416782, -0.380158,
		-0.506560, 0.844354, -0.174539,
		34.357365, 35.196476, 24.230059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084801, 35.124619, 24.582312>,  <34.711956, 34.605427, 24.352236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084801, 35.124619, 24.582312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740639, 35.328403, 24.577276>,  <34.534142, 35.450676, 24.574255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740639, 35.328403, 24.577276>,  <35.084801, 35.124619, 24.582312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740639, 35.328403, 24.577276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258442, 0.457487, 0.850831,
		0.439224, 0.728803, -0.525289,
		-0.860401, 0.509462, -0.012586,
		34.482517, 35.481243, 24.573500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232693, 35.828381, 24.840488>,  <35.084801, 35.124619, 24.582312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232693, 35.828381, 24.840488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841255, 35.761833, 24.888939>,  <34.606392, 35.721905, 24.918009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841255, 35.761833, 24.888939>,  <35.232693, 35.828381, 24.840488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841255, 35.761833, 24.888939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014234, 0.641911, 0.766647,
		-0.205296, 0.748514, -0.630540,
		-0.978596, -0.166364, 0.121127,
		34.547676, 35.711926, 24.925278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953213, 36.417263, 25.069054>,  <35.232693, 35.828381, 24.840488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953213, 36.417263, 25.069054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651707, 36.170898, 25.160698>,  <34.470802, 36.023079, 25.215685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651707, 36.170898, 25.160698>,  <34.953213, 36.417263, 25.069054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651707, 36.170898, 25.160698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317090, 0.646259, 0.694121,
		-0.575582, 0.450555, -0.682426,
		-0.753763, -0.615914, 0.229109,
		34.425579, 35.986126, 25.229431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434441, 36.916725, 25.217600>,  <34.953213, 36.417263, 25.069054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434441, 36.916725, 25.217600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334103, 36.572819, 25.395535>,  <34.273899, 36.366474, 25.502295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334103, 36.572819, 25.395535>,  <34.434441, 36.916725, 25.217600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334103, 36.572819, 25.395535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325481, 0.507682, 0.797697,
		-0.911669, 0.055310, -0.407186,
		-0.250841, -0.859767, 0.444836,
		34.258850, 36.314888, 25.528986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841389, 37.113739, 25.598051>,  <34.434441, 36.916725, 25.217600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841389, 37.113739, 25.598051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992146, 36.772820, 25.743120>,  <34.082600, 36.568268, 25.830162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992146, 36.772820, 25.743120>,  <33.841389, 37.113739, 25.598051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992146, 36.772820, 25.743120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075444, 0.362001, 0.929120,
		-0.923180, -0.377538, 0.072133,
		0.376890, -0.852303, 0.362675,
		34.105213, 36.517128, 25.851923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279209, 37.061657, 26.045240>,  <33.841389, 37.113739, 25.598051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279209, 37.061657, 26.045240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593372, 36.836624, 26.148497>,  <33.781872, 36.701607, 26.210451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593372, 36.836624, 26.148497>,  <33.279209, 37.061657, 26.045240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593372, 36.836624, 26.148497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307210, 0.007757, 0.951610,
		-0.537357, -0.826708, -0.166737,
		0.785410, -0.562578, 0.258141,
		33.828995, 36.667850, 26.225939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122936, 36.507580, 26.620056>,  <33.279209, 37.061657, 26.045240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122936, 36.507580, 26.620056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512917, 36.596481, 26.616842>,  <33.746906, 36.649822, 26.614914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512917, 36.596481, 26.616842>,  <33.122936, 36.507580, 26.620056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512917, 36.596481, 26.616842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011459, 0.086270, 0.996206,
		0.222108, -0.971164, 0.086656,
		0.974955, 0.222259, -0.008033,
		33.805405, 36.663158, 26.614433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279751, 36.174236, 27.241604>,  <33.122936, 36.507580, 26.620056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279751, 36.174236, 27.241604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601509, 36.398441, 27.162842>,  <33.794563, 36.532967, 27.115583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601509, 36.398441, 27.162842>,  <33.279751, 36.174236, 27.241604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601509, 36.398441, 27.162842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242001, -0.006448, 0.970255,
		0.542574, -0.828118, -0.140832,
		0.804394, 0.560517, -0.196907,
		33.842827, 36.566597, 27.103769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905602, 35.853245, 27.636719>,  <33.279751, 36.174236, 27.241604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905602, 35.853245, 27.636719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995155, 36.235958, 27.562489>,  <34.048885, 36.465588, 27.517950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995155, 36.235958, 27.562489>,  <33.905602, 35.853245, 27.636719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995155, 36.235958, 27.562489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160430, 0.151635, 0.975330,
		0.961321, -0.248132, -0.119549,
		0.223883, 0.956785, -0.185577,
		34.062321, 36.522995, 27.506815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494659, 35.920063, 28.001509>,  <33.905602, 35.853245, 27.636719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494659, 35.920063, 28.001509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378403, 36.297886, 27.940407>,  <34.308647, 36.524582, 27.903746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378403, 36.297886, 27.940407>,  <34.494659, 35.920063, 28.001509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378403, 36.297886, 27.940407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297702, 0.240991, 0.923741,
		0.909341, 0.223002, -0.351239,
		-0.290641, 0.944560, -0.152754,
		34.291210, 36.581253, 27.894581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794735, 36.233562, 28.514326>,  <34.494659, 35.920063, 28.001509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794735, 36.233562, 28.514326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602013, 36.563869, 28.397049>,  <34.486378, 36.762054, 28.326683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602013, 36.563869, 28.397049>,  <34.794735, 36.233562, 28.514326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602013, 36.563869, 28.397049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330663, 0.481186, 0.811863,
		0.811494, 0.294214, -0.504892,
		-0.481809, 0.825771, -0.293193,
		34.457470, 36.811600, 28.309092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225128, 36.796852, 28.284813>,  <34.794735, 36.233562, 28.514326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225128, 36.796852, 28.284813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886688, 36.962894, 28.418562>,  <34.683624, 37.062519, 28.498812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886688, 36.962894, 28.418562>,  <35.225128, 36.796852, 28.284813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886688, 36.962894, 28.418562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463506, 0.263208, 0.846099,
		0.263208, 0.870868, -0.415102,
		-0.846099, 0.415102, 0.334375,
		34.632858, 37.087425, 28.518875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400513, 37.450775, 28.528803>,  <35.225128, 36.796852, 28.284813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400513, 37.450775, 28.528803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064259, 37.344929, 28.717825>,  <34.862507, 37.281422, 28.831238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064259, 37.344929, 28.717825>,  <35.400513, 37.450775, 28.528803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064259, 37.344929, 28.717825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475401, 0.057486, 0.877889,
		-0.259471, 0.962638, 0.077475,
		-0.840636, -0.264618, 0.472556,
		34.812069, 37.265545, 28.859592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398418, 37.890179, 29.075974>,  <35.400513, 37.450775, 28.528803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398418, 37.890179, 29.075974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172092, 37.573898, 29.169472>,  <35.036297, 37.384129, 29.225571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172092, 37.573898, 29.169472>,  <35.398418, 37.890179, 29.075974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172092, 37.573898, 29.169472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388634, -0.005730, 0.921374,
		-0.727195, 0.612171, 0.310537,
		-0.565818, -0.790704, 0.233744,
		35.002346, 37.336685, 29.239595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071598, 38.125931, 29.603430>,  <35.398418, 37.890179, 29.075974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071598, 38.125931, 29.603430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051388, 37.726868, 29.621847>,  <35.039261, 37.487431, 29.632898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051388, 37.726868, 29.621847>,  <35.071598, 38.125931, 29.603430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051388, 37.726868, 29.621847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433754, 0.019607, 0.900818,
		-0.899613, 0.065487, 0.431749,
		-0.050527, -0.997661, 0.046044,
		35.036228, 37.427570, 29.635660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832291, 38.003651, 30.212189>,  <35.071598, 38.125931, 29.603430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832291, 38.003651, 30.212189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989353, 37.647472, 30.120163>,  <35.083591, 37.433765, 30.064947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989353, 37.647472, 30.120163>,  <34.832291, 38.003651, 30.212189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989353, 37.647472, 30.120163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567162, 0.037523, 0.822751,
		-0.723983, -0.453539, 0.519760,
		0.392652, -0.890446, -0.230064,
		35.107147, 37.380337, 30.051144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792503, 37.613365, 30.922432>,  <34.832291, 38.003651, 30.212189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792503, 37.613365, 30.922432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047897, 37.402470, 30.698164>,  <35.201134, 37.275932, 30.563602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047897, 37.402470, 30.698164>,  <34.792503, 37.613365, 30.922432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047897, 37.402470, 30.698164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598698, -0.117519, 0.792307,
		-0.483625, -0.841550, 0.240623,
		0.638488, -0.527240, -0.560670,
		35.239445, 37.244297, 30.529963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800079, 37.006237, 31.202579>,  <34.792503, 37.613365, 30.922432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800079, 37.006237, 31.202579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147747, 37.055931, 31.011118>,  <35.356346, 37.085747, 30.896240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147747, 37.055931, 31.011118>,  <34.800079, 37.006237, 31.202579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147747, 37.055931, 31.011118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493808, -0.166311, 0.853519,
		0.026433, -0.978216, -0.205902,
		0.869169, 0.124237, -0.478654,
		35.408497, 37.093201, 30.867521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073677, 36.482529, 31.546787>,  <34.800079, 37.006237, 31.202579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073677, 36.482529, 31.546787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376976, 36.681156, 31.377796>,  <35.558956, 36.800331, 31.276402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376976, 36.681156, 31.377796>,  <35.073677, 36.482529, 31.546787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376976, 36.681156, 31.377796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591329, -0.250880, 0.766413,
		0.274583, -0.830952, -0.483862,
		0.758244, 0.496566, -0.422479,
		35.604450, 36.830128, 31.251053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626377, 36.068134, 31.624008>,  <35.073677, 36.482529, 31.546787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626377, 36.068134, 31.624008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815895, 36.409462, 31.536957>,  <35.929604, 36.614258, 31.484726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815895, 36.409462, 31.536957>,  <35.626377, 36.068134, 31.624008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815895, 36.409462, 31.536957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692739, -0.208560, 0.690373,
		0.543721, -0.477854, -0.689944,
		0.473792, 0.853322, -0.217630,
		35.958035, 36.665459, 31.471668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398300, 35.953831, 31.384605>,  <35.626377, 36.068134, 31.624008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398300, 35.953831, 31.384605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370354, 36.331898, 31.512213>,  <36.353584, 36.558739, 31.588778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370354, 36.331898, 31.512213>,  <36.398300, 35.953831, 31.384605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370354, 36.331898, 31.512213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731002, -0.169096, 0.661092,
		0.678789, 0.279392, -0.679106,
		-0.069870, 0.945170, 0.319017,
		36.349392, 36.615448, 31.607918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092712, 36.184311, 31.517591>,  <36.398300, 35.953831, 31.384605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092712, 36.184311, 31.517591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873749, 36.427834, 31.747267>,  <36.742371, 36.573948, 31.885073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873749, 36.427834, 31.747267>,  <37.092712, 36.184311, 31.517591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873749, 36.427834, 31.747267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679966, -0.076394, 0.729253,
		0.487840, 0.789630, -0.372151,
		-0.547410, 0.608809, 0.574189,
		36.709526, 36.610477, 31.919523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523823, 36.764519, 31.652588>,  <37.092712, 36.184311, 31.517591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523823, 36.764519, 31.652588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233799, 36.737576, 31.926743>,  <37.059784, 36.721409, 32.091236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233799, 36.737576, 31.926743>,  <37.523823, 36.764519, 31.652588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233799, 36.737576, 31.926743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687522, -0.012835, 0.726050,
		-0.040110, 0.997646, 0.055618,
		-0.725055, -0.067360, 0.685389,
		37.016281, 36.717369, 32.132359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682949, 37.430908, 32.136948>,  <37.523823, 36.764519, 31.652588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682949, 37.430908, 32.136948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477577, 37.126305, 32.295189>,  <37.354355, 36.943542, 32.390133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477577, 37.126305, 32.295189>,  <37.682949, 37.430908, 32.136948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477577, 37.126305, 32.295189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644018, -0.037261, 0.764102,
		-0.567128, 0.647086, 0.509555,
		-0.513426, -0.761506, 0.395604,
		37.323551, 36.897854, 32.413872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047737, 37.292568, 32.688007>,  <37.682949, 37.430908, 32.136948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047737, 37.292568, 32.688007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751663, 37.036499, 32.770283>,  <37.574020, 36.882858, 32.819649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751663, 37.036499, 32.770283>,  <38.047737, 37.292568, 32.688007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751663, 37.036499, 32.770283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402523, -0.176828, 0.898169,
		-0.538615, 0.747601, 0.388571,
		-0.740182, -0.640176, 0.205685,
		37.529610, 36.844448, 32.831989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717133, 37.633286, 32.844742>,  <38.047737, 37.292568, 32.688007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717133, 37.633286, 32.844742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101398, 37.621361, 32.734299>,  <39.331959, 37.614204, 32.668034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101398, 37.621361, 32.734299>,  <38.717133, 37.633286, 32.844742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101398, 37.621361, 32.734299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156448, 0.763346, -0.626759,
		0.229454, 0.645301, 0.728654,
		0.960663, -0.029816, -0.276109,
		39.389599, 37.612415, 32.651466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914703, 38.317482, 32.907761>,  <38.717133, 37.633286, 32.844742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914703, 38.317482, 32.907761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171230, 38.141991, 32.655972>,  <39.325146, 38.036697, 32.504898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171230, 38.141991, 32.655972>,  <38.914703, 38.317482, 32.907761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171230, 38.141991, 32.655972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233638, 0.669773, -0.704852,
		0.730839, 0.599102, 0.327034,
		0.641317, -0.438726, -0.629470,
		39.363625, 38.010372, 32.467129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399300, 38.812222, 32.592468>,  <38.914703, 38.317482, 32.907761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399300, 38.812222, 32.592468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423920, 38.512444, 32.328789>,  <39.438690, 38.332577, 32.170582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423920, 38.512444, 32.328789>,  <39.399300, 38.812222, 32.592468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423920, 38.512444, 32.328789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018917, 0.659460, -0.751502,
		0.997925, 0.058725, 0.026412,
		0.061550, -0.749442, -0.659202,
		39.442383, 38.287609, 32.131027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912064, 38.992683, 32.175007>,  <39.399300, 38.812222, 32.592468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912064, 38.992683, 32.175007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695717, 38.738125, 31.955021>,  <39.565910, 38.585388, 31.823029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695717, 38.738125, 31.955021>,  <39.912064, 38.992683, 32.175007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695717, 38.738125, 31.955021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136808, 0.578592, -0.804061,
		0.829909, -0.510128, -0.225876,
		-0.540864, -0.636396, -0.549969,
		39.533459, 38.547207, 31.790030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248093, 38.781219, 31.473412>,  <39.912064, 38.992683, 32.175007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248093, 38.781219, 31.473412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862595, 38.714397, 31.390181>,  <39.631298, 38.674305, 31.340242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862595, 38.714397, 31.390181>,  <40.248093, 38.781219, 31.473412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862595, 38.714397, 31.390181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068999, 0.597241, -0.799089,
		0.257764, -0.784472, -0.564059,
		-0.963741, -0.167057, -0.208075,
		39.573471, 38.664280, 31.327759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989410, 38.542164, 30.798189>,  <40.248093, 38.781219, 31.473412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989410, 38.542164, 30.798189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650551, 38.698139, 30.942575>,  <39.447235, 38.791725, 31.029207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650551, 38.698139, 30.942575>,  <39.989410, 38.542164, 30.798189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650551, 38.698139, 30.942575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072718, 0.587852, -0.805694,
		-0.526362, -0.708788, -0.469640,
		-0.847145, 0.389935, 0.360965,
		39.396408, 38.815121, 31.050865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551392, 38.625507, 30.261703>,  <39.989410, 38.542164, 30.798189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551392, 38.625507, 30.261703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396492, 38.884460, 30.524284>,  <39.303551, 39.039833, 30.681833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396492, 38.884460, 30.524284>,  <39.551392, 38.625507, 30.261703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396492, 38.884460, 30.524284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265085, 0.603760, -0.751800,
		-0.883044, -0.465150, -0.062193,
		-0.387250, 0.647387, 0.656451,
		39.280315, 39.078678, 30.721220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884258, 38.792152, 30.041113>,  <39.551392, 38.625507, 30.261703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884258, 38.792152, 30.041113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046917, 39.100300, 30.237547>,  <39.144512, 39.285191, 30.355408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046917, 39.100300, 30.237547>,  <38.884258, 38.792152, 30.041113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046917, 39.100300, 30.237547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447702, 0.636608, -0.627927,
		-0.796365, 0.035488, 0.603774,
		0.406651, 0.770370, 0.491085,
		39.168911, 39.331409, 30.384872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399097, 39.179367, 30.312101>,  <38.884258, 38.792152, 30.041113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399097, 39.179367, 30.312101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694508, 39.448498, 30.294752>,  <38.871754, 39.609978, 30.284344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694508, 39.448498, 30.294752>,  <38.399097, 39.179367, 30.312101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694508, 39.448498, 30.294752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618082, 0.649933, -0.442223,
		-0.269350, 0.353401, 0.895856,
		0.738529, 0.672825, -0.043371,
		38.916065, 39.650345, 30.281740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038628, 39.755154, 30.459301>,  <38.399097, 39.179367, 30.312101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038628, 39.755154, 30.459301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388687, 39.864834, 30.299837>,  <38.598724, 39.930641, 30.204159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388687, 39.864834, 30.299837>,  <38.038628, 39.755154, 30.459301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388687, 39.864834, 30.299837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471686, 0.667089, -0.576632,
		0.107831, 0.692682, 0.713137,
		0.875148, 0.274198, -0.398661,
		38.651230, 39.947094, 30.180239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017910, 40.507374, 30.292881>,  <38.038628, 39.755154, 30.459301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017910, 40.507374, 30.292881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292229, 40.335587, 30.057852>,  <38.456818, 40.232513, 29.916834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292229, 40.335587, 30.057852>,  <38.017910, 40.507374, 30.292881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292229, 40.335587, 30.057852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432737, 0.408500, -0.803658,
		0.585172, 0.805408, 0.094298,
		0.685793, -0.429472, -0.587573,
		38.497967, 40.206745, 29.881580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628036, 40.986431, 29.865044>,  <38.017910, 40.507374, 30.292881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628036, 40.986431, 29.865044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962730, 40.864376, 29.683155>,  <38.163548, 40.791145, 29.574022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962730, 40.864376, 29.683155>,  <37.628036, 40.986431, 29.865044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962730, 40.864376, 29.683155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519897, -0.181817, -0.834655,
		0.172006, 0.934792, -0.310771,
		0.836732, -0.305135, -0.454722,
		38.213749, 40.772835, 29.546738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824665, 41.426331, 29.255033>,  <37.628036, 40.986431, 29.865044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824665, 41.426331, 29.255033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952511, 41.049225, 29.217009>,  <38.029221, 40.822960, 29.194193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952511, 41.049225, 29.217009>,  <37.824665, 41.426331, 29.255033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952511, 41.049225, 29.217009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382764, -0.036682, -0.923118,
		0.866797, 0.331431, -0.372581,
		0.319616, -0.942766, -0.095064,
		38.048397, 40.766396, 29.188490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064667, 41.473862, 28.628798>,  <37.824665, 41.426331, 29.255033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064667, 41.473862, 28.628798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022228, 41.083408, 28.704586>,  <37.996765, 40.849136, 28.750059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022228, 41.083408, 28.704586>,  <38.064667, 41.473862, 28.628798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022228, 41.083408, 28.704586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477440, -0.117135, -0.870822,
		0.872235, -0.182852, -0.453619,
		-0.106097, -0.976137, 0.189471,
		37.990398, 40.790565, 28.761427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237617, 41.025883, 28.067429>,  <38.064667, 41.473862, 28.628798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237617, 41.025883, 28.067429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998623, 40.747742, 28.227173>,  <37.855225, 40.580856, 28.323019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998623, 40.747742, 28.227173>,  <38.237617, 41.025883, 28.067429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998623, 40.747742, 28.227173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487059, -0.080932, -0.869611,
		0.637007, -0.714097, -0.290322,
		-0.597491, -0.695352, 0.399362,
		37.819374, 40.539135, 28.346981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299145, 40.459763, 27.703091>,  <38.237617, 41.025883, 28.067429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299145, 40.459763, 27.703091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937683, 40.426723, 27.871180>,  <37.720806, 40.406902, 27.972033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937683, 40.426723, 27.871180>,  <38.299145, 40.459763, 27.703091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937683, 40.426723, 27.871180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405679, -0.149343, -0.901732,
		0.137236, -0.985330, 0.101447,
		-0.903654, -0.082595, 0.420223,
		37.666588, 40.401943, 27.997246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980965, 39.816650, 27.436163>,  <38.299145, 40.459763, 27.703091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980965, 39.816650, 27.436163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670155, 40.035923, 27.559925>,  <37.483669, 40.167484, 27.634182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670155, 40.035923, 27.559925>,  <37.980965, 39.816650, 27.436163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670155, 40.035923, 27.559925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436804, -0.115642, -0.892093,
		-0.453245, -0.828329, 0.329303,
		-0.777027, 0.548177, 0.309403,
		37.437046, 40.200375, 27.652746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441593, 39.458694, 27.125704>,  <37.980965, 39.816650, 27.436163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441593, 39.458694, 27.125704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334721, 39.832001, 27.221731>,  <37.270596, 40.055984, 27.279348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334721, 39.832001, 27.221731>,  <37.441593, 39.458694, 27.125704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334721, 39.832001, 27.221731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317339, 0.150018, -0.936371,
		-0.909895, -0.326365, 0.256079,
		-0.267182, 0.933263, 0.240069,
		37.254566, 40.111980, 27.293753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631207, 39.735260, 26.963589>,  <37.441593, 39.458694, 27.125704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631207, 39.735260, 26.963589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895741, 40.035198, 26.955982>,  <37.054462, 40.215160, 26.951418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895741, 40.035198, 26.955982>,  <36.631207, 39.735260, 26.963589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895741, 40.035198, 26.955982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487379, 0.410305, -0.770786,
		-0.570169, 0.519019, 0.636810,
		0.661339, 0.749846, -0.019016,
		37.094143, 40.260151, 26.950277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256271, 40.298134, 26.617083>,  <36.631207, 39.735260, 26.963589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256271, 40.298134, 26.617083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644547, 40.394161, 26.621597>,  <36.877514, 40.451778, 26.624306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644547, 40.394161, 26.621597>,  <36.256271, 40.298134, 26.617083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644547, 40.394161, 26.621597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103942, 0.461694, -0.880928,
		-0.216693, 0.853936, 0.473115,
		0.970691, 0.240068, 0.011287,
		36.935753, 40.466183, 26.624983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355560, 40.976593, 26.400454>,  <36.256271, 40.298134, 26.617083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355560, 40.976593, 26.400454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682312, 40.775829, 26.286758>,  <36.878365, 40.655373, 26.218542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682312, 40.775829, 26.286758>,  <36.355560, 40.976593, 26.400454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682312, 40.775829, 26.286758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037016, 0.446146, -0.894194,
		0.575617, 0.740972, 0.345870,
		0.816881, -0.501911, -0.284237,
		36.927376, 40.625256, 26.201487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607773, 41.550018, 25.890039>,  <36.355560, 40.976593, 26.400454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607773, 41.550018, 25.890039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684086, 41.769585, 25.564512>,  <36.729874, 41.901325, 25.369196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684086, 41.769585, 25.564512>,  <36.607773, 41.550018, 25.890039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684086, 41.769585, 25.564512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776731, 0.422526, 0.467076,
		0.600243, -0.721226, -0.345748,
		0.190780, 0.548913, -0.813817,
		36.741322, 41.934258, 25.320368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384987, 41.551643, 25.664997>,  <36.607773, 41.550018, 25.890039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384987, 41.551643, 25.664997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197216, 41.892979, 25.574266>,  <37.084553, 42.097778, 25.519829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197216, 41.892979, 25.574266>,  <37.384987, 41.551643, 25.664997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197216, 41.892979, 25.574266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703861, 0.516752, 0.487388,
		0.533120, 0.069140, -0.843210,
		-0.469428, 0.853339, -0.226825,
		37.056389, 42.148979, 25.506218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669460, 41.441574, 26.444399>,  <37.384987, 41.551643, 25.664997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669460, 41.441574, 26.444399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376953, 41.174461, 26.499989>,  <37.201447, 41.014194, 26.533342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376953, 41.174461, 26.499989>,  <37.669460, 41.441574, 26.444399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376953, 41.174461, 26.499989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088421, 0.109221, 0.990077,
		-0.676333, 0.736301, -0.020824,
		-0.731270, -0.667780, 0.138974,
		37.157574, 40.974129, 26.541681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341248, 41.690792, 27.062847>,  <37.669460, 41.441574, 26.444399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341248, 41.690792, 27.062847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222019, 41.313755, 27.002617>,  <37.150482, 41.087532, 26.966478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222019, 41.313755, 27.002617>,  <37.341248, 41.690792, 27.062847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222019, 41.313755, 27.002617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149571, -0.201919, 0.967914,
		-0.942754, 0.265982, 0.201170,
		-0.298067, -0.942594, -0.150576,
		37.132599, 41.030975, 26.957443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971497, 41.363873, 27.610994>,  <37.341248, 41.690792, 27.062847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971497, 41.363873, 27.610994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036289, 40.981709, 27.512241>,  <37.075165, 40.752411, 27.452990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036289, 40.981709, 27.512241>,  <36.971497, 41.363873, 27.610994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036289, 40.981709, 27.512241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085497, -0.235656, 0.968068,
		-0.983083, -0.177916, 0.043513,
		0.161981, -0.955412, -0.246880,
		37.084885, 40.695084, 27.438177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571136, 41.073303, 28.166004>,  <36.971497, 41.363873, 27.610994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571136, 41.073303, 28.166004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828754, 40.814034, 28.003483>,  <36.983326, 40.658474, 27.905970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828754, 40.814034, 28.003483>,  <36.571136, 41.073303, 28.166004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828754, 40.814034, 28.003483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346425, -0.226428, 0.910341,
		-0.682056, -0.727052, 0.078714,
		0.644042, -0.648172, -0.406305,
		37.021969, 40.619583, 27.881592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471222, 40.430172, 28.556095>,  <36.571136, 41.073303, 28.166004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471222, 40.430172, 28.556095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832985, 40.420891, 28.385681>,  <37.050045, 40.415321, 28.283434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832985, 40.420891, 28.385681>,  <36.471222, 40.430172, 28.556095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832985, 40.420891, 28.385681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404352, -0.272069, 0.873200,
		-0.136174, -0.961998, -0.236678,
		0.904409, -0.023206, -0.426034,
		37.104309, 40.413929, 28.257872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942051, 39.844479, 28.863222>,  <36.471222, 40.430172, 28.556095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942051, 39.844479, 28.863222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227379, 40.087402, 28.723314>,  <37.398575, 40.233158, 28.639370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227379, 40.087402, 28.723314>,  <36.942051, 39.844479, 28.863222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227379, 40.087402, 28.723314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421482, 0.026990, 0.906435,
		0.559930, -0.794004, -0.236719,
		0.713324, 0.607313, -0.349771,
		37.441376, 40.269596, 28.618383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619991, 39.561695, 29.055176>,  <36.942051, 39.844479, 28.863222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619991, 39.561695, 29.055176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705948, 39.944195, 28.975775>,  <37.757523, 40.173695, 28.928133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705948, 39.944195, 28.975775>,  <37.619991, 39.561695, 29.055176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705948, 39.944195, 28.975775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558532, 0.046404, 0.828184,
		0.801163, -0.288841, -0.524126,
		0.214892, 0.956252, -0.198504,
		37.770416, 40.231071, 28.916224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284393, 39.526527, 29.006598>,  <37.619991, 39.561695, 29.055176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284393, 39.526527, 29.006598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201046, 39.909554, 29.086254>,  <38.151039, 40.139370, 29.134048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201046, 39.909554, 29.086254>,  <38.284393, 39.526527, 29.006598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201046, 39.909554, 29.086254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642149, -0.019641, 0.766328,
		0.737719, 0.287556, -0.610805,
		-0.208365, 0.957562, 0.199143,
		38.138535, 40.196823, 29.145998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916992, 39.821400, 28.963648>,  <38.284393, 39.526527, 29.006598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916992, 39.821400, 28.963648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708202, 40.069378, 29.197987>,  <38.582928, 40.218163, 29.338591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708202, 40.069378, 29.197987>,  <38.916992, 39.821400, 28.963648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708202, 40.069378, 29.197987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665589, -0.133495, 0.734282,
		0.533420, 0.773208, -0.342946,
		-0.521971, 0.619942, 0.585848,
		38.551613, 40.255360, 29.373741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381203, 40.258343, 29.227917>,  <38.916992, 39.821400, 28.963648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381203, 40.258343, 29.227917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110386, 40.321358, 29.515472>,  <38.947895, 40.359169, 29.688005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110386, 40.321358, 29.515472>,  <39.381203, 40.258343, 29.227917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110386, 40.321358, 29.515472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685112, -0.221823, 0.693842,
		0.268774, 0.962276, 0.042251,
		-0.677039, 0.157540, 0.718887,
		38.907272, 40.368618, 29.731138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773132, 40.559284, 29.734650>,  <39.381203, 40.258343, 29.227917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773132, 40.559284, 29.734650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435867, 40.411179, 29.890585>,  <39.233509, 40.322315, 29.984146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435867, 40.411179, 29.890585>,  <39.773132, 40.559284, 29.734650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435867, 40.411179, 29.890585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520071, -0.377754, 0.766047,
		-0.136378, 0.848648, 0.511074,
		-0.843165, -0.370267, 0.389840,
		39.182919, 40.300098, 30.007538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855141, 40.576832, 30.469978>,  <39.773132, 40.559284, 29.734650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855141, 40.576832, 30.469978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563126, 40.311142, 30.405674>,  <39.387917, 40.151726, 30.367090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563126, 40.311142, 30.405674>,  <39.855141, 40.576832, 30.469978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563126, 40.311142, 30.405674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419317, -0.621115, 0.662110,
		-0.539643, 0.415956, 0.731960,
		-0.730040, -0.664226, -0.160763,
		39.344112, 40.111874, 30.357445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745125, 40.311813, 31.091223>,  <39.855141, 40.576832, 30.469978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745125, 40.311813, 31.091223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567657, 40.032185, 30.866920>,  <39.461178, 39.864407, 30.732338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567657, 40.032185, 30.866920>,  <39.745125, 40.311813, 31.091223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567657, 40.032185, 30.866920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295973, -0.704902, 0.644603,
		-0.845906, 0.120023, 0.519652,
		-0.443671, -0.699077, -0.560757,
		39.434555, 39.822460, 30.698694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973003, 40.187233, 31.282862>,  <39.745125, 40.311813, 31.091223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973003, 40.187233, 31.282862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996037, 39.876583, 31.031929>,  <39.009857, 39.690193, 30.881371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996037, 39.876583, 31.031929>,  <38.973003, 40.187233, 31.282862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996037, 39.876583, 31.031929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203440, -0.624316, 0.754216,
		-0.977393, 0.084195, -0.193946,
		0.057582, -0.776622, -0.627330,
		39.013309, 39.643597, 30.843731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501701, 39.692123, 31.577250>,  <38.973003, 40.187233, 31.282862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501701, 39.692123, 31.577250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720417, 39.487934, 31.311789>,  <38.851646, 39.365421, 31.152512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720417, 39.487934, 31.311789>,  <38.501701, 39.692123, 31.577250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720417, 39.487934, 31.311789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014129, -0.798151, 0.602292,
		-0.837152, -0.319949, -0.443631,
		0.546788, -0.510478, -0.663653,
		38.884453, 39.334789, 31.112694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257053, 38.989815, 31.639120>,  <38.501701, 39.692123, 31.577250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257053, 38.989815, 31.639120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606892, 38.960495, 31.447407>,  <38.816795, 38.942902, 31.332378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606892, 38.960495, 31.447407>,  <38.257053, 38.989815, 31.639120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606892, 38.960495, 31.447407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215812, -0.826336, 0.520187,
		-0.434180, -0.558388, -0.706888,
		0.874593, -0.073300, -0.479286,
		38.869270, 38.938503, 31.303621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350372, 38.358135, 31.219414>,  <38.257053, 38.989815, 31.639120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350372, 38.358135, 31.219414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714970, 38.468208, 31.341700>,  <38.933727, 38.534252, 31.415071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714970, 38.468208, 31.341700>,  <38.350372, 38.358135, 31.219414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714970, 38.468208, 31.341700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147304, -0.912333, 0.382033,
		0.384043, -0.303186, -0.872118,
		0.911489, 0.275183, 0.305715,
		38.988415, 38.550762, 31.433414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735542, 37.760559, 31.138233>,  <38.350372, 38.358135, 31.219414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735542, 37.760559, 31.138233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956142, 38.002567, 31.367945>,  <39.088505, 38.147774, 31.505772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956142, 38.002567, 31.367945>,  <38.735542, 37.760559, 31.138233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956142, 38.002567, 31.367945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385558, -0.795372, 0.467684,
		0.739723, -0.036511, -0.671920,
		0.551502, 0.605021, 0.574277,
		39.121593, 38.184074, 31.540228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283264, 37.396542, 31.276577>,  <38.735542, 37.760559, 31.138233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283264, 37.396542, 31.276577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345119, 37.697113, 31.533152>,  <39.382233, 37.877457, 31.687098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345119, 37.697113, 31.533152>,  <39.283264, 37.396542, 31.276577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345119, 37.697113, 31.533152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564329, -0.600094, 0.566940,
		0.810937, 0.274309, -0.516852,
		0.154643, 0.751427, 0.641439,
		39.391514, 37.922543, 31.725584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023663, 37.323864, 31.597948>,  <39.283264, 37.396542, 31.276577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023663, 37.323864, 31.597948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822887, 37.522999, 31.880852>,  <39.702423, 37.642479, 32.050594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822887, 37.522999, 31.880852>,  <40.023663, 37.323864, 31.597948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822887, 37.522999, 31.880852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534173, -0.464697, 0.706198,
		0.680231, 0.732269, -0.032679,
		-0.501941, 0.497834, 0.707260,
		39.672306, 37.672348, 32.093029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590801, 37.491558, 32.191948>,  <40.023663, 37.323864, 31.597948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590801, 37.491558, 32.191948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211956, 37.517715, 32.317608>,  <39.984650, 37.533409, 32.393005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211956, 37.517715, 32.317608>,  <40.590801, 37.491558, 32.191948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211956, 37.517715, 32.317608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243680, -0.490391, 0.836742,
		0.208779, 0.869045, 0.448522,
		-0.947118, 0.065398, 0.314152,
		39.927822, 37.537334, 32.411854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625473, 37.622898, 32.878300>,  <40.590801, 37.491558, 32.191948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625473, 37.622898, 32.878300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266403, 37.454746, 32.825447>,  <40.050961, 37.353855, 32.793736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266403, 37.454746, 32.825447>,  <40.625473, 37.622898, 32.878300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266403, 37.454746, 32.825447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197329, -0.651589, 0.732457,
		-0.394005, 0.631436, 0.667869,
		-0.897675, -0.420382, -0.132129,
		39.997101, 37.328632, 32.785809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960468, 37.027634, 32.582439>,  <40.625473, 37.622898, 32.878300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960468, 37.027634, 32.582439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093239, 36.679783, 32.728630>,  <41.172901, 36.471073, 32.816345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093239, 36.679783, 32.728630>,  <40.960468, 37.027634, 32.582439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093239, 36.679783, 32.728630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851264, -0.109209, 0.513247,
		-0.406420, -0.481478, -0.776531,
		0.331922, -0.869628, 0.365481,
		41.192814, 36.418896, 32.838276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506969, 36.494034, 32.538891>,  <40.960468, 37.027634, 32.582439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506969, 36.494034, 32.538891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747864, 36.460102, 32.856411>,  <40.892403, 36.439743, 33.046921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747864, 36.460102, 32.856411>,  <40.506969, 36.494034, 32.538891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747864, 36.460102, 32.856411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797057, -0.119721, 0.591918,
		0.044823, -0.989177, -0.139713,
		0.602238, -0.084827, 0.793797,
		40.928535, 36.434654, 33.094551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329830, 35.862286, 33.027180>,  <40.506969, 36.494034, 32.538891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329830, 35.862286, 33.027180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497669, 36.161167, 33.233334>,  <40.598373, 36.340496, 33.357025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497669, 36.161167, 33.233334>,  <40.329830, 35.862286, 33.027180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497669, 36.161167, 33.233334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808357, 0.049313, 0.586624,
		0.412916, -0.662757, 0.624702,
		0.419595, 0.747209, 0.515382,
		40.623547, 36.385330, 33.387947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084377, 35.729557, 32.940689>,  <40.329830, 35.862286, 33.027180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084377, 35.729557, 32.940689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068306, 36.084194, 32.756367>,  <41.058662, 36.296974, 32.645775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068306, 36.084194, 32.756367>,  <41.084377, 35.729557, 32.940689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068306, 36.084194, 32.756367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997333, 0.063702, 0.035606,
		0.060922, -0.458146, -0.886786,
		-0.040178, 0.886591, -0.460806,
		41.056252, 36.350170, 32.618126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678654, 35.648186, 32.703659>,  <41.084377, 35.729557, 32.940689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678654, 35.648186, 32.703659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616024, 36.041576, 32.667297>,  <41.578445, 36.277611, 32.645481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616024, 36.041576, 32.667297>,  <41.678654, 35.648186, 32.703659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616024, 36.041576, 32.667297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985309, 0.149182, -0.083132,
		-0.068197, -0.102585, -0.992384,
		-0.156574, 0.983474, -0.090904,
		41.569054, 36.336620, 32.640026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101028, 35.877190, 32.141144>,  <41.678654, 35.648186, 32.703659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101028, 35.877190, 32.141144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026863, 36.166161, 32.407597>,  <41.982365, 36.339542, 32.567467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026863, 36.166161, 32.407597>,  <42.101028, 35.877190, 32.141144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026863, 36.166161, 32.407597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935975, 0.336296, -0.104187,
		-0.299283, 0.604161, -0.738525,
		-0.185418, 0.722423, 0.666127,
		41.971237, 36.382889, 32.607433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493099, 36.378635, 31.949980>,  <42.101028, 35.877190, 32.141144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493099, 36.378635, 31.949980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426090, 36.447922, 32.338192>,  <42.385883, 36.489494, 32.571121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426090, 36.447922, 32.338192>,  <42.493099, 36.378635, 31.949980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426090, 36.447922, 32.338192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925511, 0.366796, 0.094289,
		-0.339654, 0.914033, -0.221763,
		-0.167526, 0.173219, 0.970531,
		42.375832, 36.499886, 32.629353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704235, 37.064861, 32.132442>,  <42.493099, 36.378635, 31.949980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704235, 37.064861, 32.132442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716316, 36.793789, 32.426334>,  <42.723564, 36.631145, 32.602669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716316, 36.793789, 32.426334>,  <42.704235, 37.064861, 32.132442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716316, 36.793789, 32.426334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975754, 0.179405, 0.125369,
		-0.216775, 0.713131, 0.666673,
		0.030200, -0.677686, 0.734731,
		42.725376, 36.590485, 32.646755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878159, 37.278900, 32.917751>,  <42.704235, 37.064861, 32.132442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878159, 37.278900, 32.917751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967926, 36.890743, 32.882038>,  <43.021786, 36.657848, 32.860611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967926, 36.890743, 32.882038>,  <42.878159, 37.278900, 32.917751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967926, 36.890743, 32.882038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920509, 0.181026, 0.346256,
		-0.319842, -0.159893, 0.933882,
		0.224421, -0.970394, -0.089283,
		43.035252, 36.599625, 32.855251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066151, 36.980816, 33.535351>,  <42.878159, 37.278900, 32.917751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066151, 36.980816, 33.535351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267998, 36.813126, 33.233463>,  <43.389107, 36.712513, 33.052330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267998, 36.813126, 33.233463>,  <43.066151, 36.980816, 33.535351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267998, 36.813126, 33.233463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862142, 0.290740, 0.414947,
		0.045471, -0.860069, 0.508147,
		0.504622, -0.419227, -0.754722,
		43.419384, 36.687359, 33.007046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450886, 36.415928, 33.756584>,  <43.066151, 36.980816, 33.535351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450886, 36.415928, 33.756584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637257, 36.594093, 33.450768>,  <43.749081, 36.700993, 33.267277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637257, 36.594093, 33.450768>,  <43.450886, 36.415928, 33.756584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637257, 36.594093, 33.450768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817318, 0.114372, 0.564722,
		0.338975, -0.887991, -0.310754,
		0.465926, 0.445411, -0.764540,
		43.777035, 36.727718, 33.221405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197006, 36.166859, 33.662552>,  <43.450886, 36.415928, 33.756584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197006, 36.166859, 33.662552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204464, 36.543720, 33.528687>,  <44.208939, 36.769836, 33.448368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204464, 36.543720, 33.528687>,  <44.197006, 36.166859, 33.662552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204464, 36.543720, 33.528687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790282, 0.191150, 0.582165,
		0.612460, -0.275335, -0.741002,
		0.018648, 0.942153, -0.334663,
		44.210060, 36.826366, 33.428288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.942272, 36.535995, 33.561699>,  <44.197006, 36.166859, 33.662552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.942272, 36.535995, 33.561699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074860, 36.858685, 33.757385>,  <45.154411, 37.052296, 33.874798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074860, 36.858685, 33.757385>,  <44.942272, 36.535995, 33.561699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074860, 36.858685, 33.757385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919896, -0.391525, 0.022350,
		0.209570, 0.442620, -0.871876,
		0.331469, 0.806719, 0.489216,
		45.174301, 37.100700, 33.904148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.563721, 36.783096, 33.239567>,  <44.942272, 36.535995, 33.561699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.563721, 36.783096, 33.239567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563545, 36.873196, 33.629288>,  <45.563442, 36.927254, 33.863121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563545, 36.873196, 33.629288>,  <45.563721, 36.783096, 33.239567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563545, 36.873196, 33.629288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828738, -0.545174, 0.126407,
		0.559637, 0.807496, -0.186433,
		-0.000435, 0.225246, 0.974302,
		45.563416, 36.940769, 33.921577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.234638, 37.063255, 33.437195>,  <45.563721, 36.783096, 33.239567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.234638, 37.063255, 33.437195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.057205, 36.906799, 33.759747>,  <45.950745, 36.812927, 33.953278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.057205, 36.906799, 33.759747>,  <46.234638, 37.063255, 33.437195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.057205, 36.906799, 33.759747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844656, -0.483271, 0.230230,
		0.299646, 0.783238, 0.544749,
		-0.443586, -0.391137, 0.806377,
		45.924129, 36.789459, 34.001659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.711090, 37.050777, 34.009468>,  <46.234638, 37.063255, 33.437195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.711090, 37.050777, 34.009468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458549, 36.746101, 34.067738>,  <46.307026, 36.563293, 34.102699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458549, 36.746101, 34.067738>,  <46.711090, 37.050777, 34.009468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.458549, 36.746101, 34.067738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760001, -0.570352, 0.311603,
		-0.154261, 0.307443, 0.938980,
		-0.631349, -0.761694, 0.145674,
		46.269146, 36.517593, 34.111439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.766064, 36.843662, 34.695210>,  <46.711090, 37.050777, 34.009468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.766064, 36.843662, 34.695210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.667507, 36.535927, 34.459446>,  <46.608372, 36.351284, 34.317989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.667507, 36.535927, 34.459446>,  <46.766064, 36.843662, 34.695210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.667507, 36.535927, 34.459446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627578, -0.590088, 0.507879,
		-0.738536, -0.244763, 0.628216,
		-0.246392, -0.769342, -0.589410,
		46.593590, 36.305122, 34.282623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.361961, 36.213913, 35.026207>,  <46.766064, 36.843662, 34.695210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.361961, 36.213913, 35.026207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579742, 36.102299, 34.709797>,  <46.710411, 36.035332, 34.519951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579742, 36.102299, 34.709797>,  <46.361961, 36.213913, 35.026207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.579742, 36.102299, 34.709797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440008, -0.707869, 0.552553,
		-0.714126, -0.648890, -0.262614,
		0.544442, -0.279040, -0.791024,
		46.743076, 36.018589, 34.472492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.438698, 35.435070, 34.983696>,  <46.361961, 36.213913, 35.026207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.438698, 35.435070, 34.983696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.753910, 35.611313, 34.811707>,  <46.943039, 35.717056, 34.708511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.753910, 35.611313, 34.811707>,  <46.438698, 35.435070, 34.983696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.753910, 35.611313, 34.811707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611581, -0.640304, 0.464736,
		-0.070550, -0.629189, -0.774044,
		0.788030, 0.440603, -0.429973,
		46.990318, 35.743492, 34.682716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.958775, 34.893909, 34.590538>,  <46.438698, 35.435070, 34.983696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.958775, 34.893909, 34.590538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.090912, 35.221630, 34.777988>,  <47.170193, 35.418262, 34.890461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.090912, 35.221630, 34.777988>,  <46.958775, 34.893909, 34.590538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.090912, 35.221630, 34.777988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574298, -0.568492, 0.589066,
		0.749037, 0.074539, -0.658322,
		0.330343, 0.819305, 0.468629,
		47.190014, 35.467422, 34.918575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.703819, 34.880962, 34.653603>,  <46.958775, 34.893909, 34.590538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.703819, 34.880962, 34.653603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.527462, 35.099281, 34.938622>,  <47.421646, 35.230270, 35.109631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.527462, 35.099281, 34.938622>,  <47.703819, 34.880962, 34.653603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.527462, 35.099281, 34.938622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320996, -0.645482, 0.693047,
		0.838195, 0.534286, 0.109393,
		-0.440897, 0.545795, 0.712544,
		47.395191, 35.263020, 35.152386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.441978, 31.848507, 25.164619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.042084, 31.844730, 25.172983>,  <32.802147, 31.842464, 25.178001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.042084, 31.844730, 25.172983>,  <33.441978, 31.848507, 25.164619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042084, 31.844730, 25.172983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014841, 0.428806, 0.903274,
		-0.017496, 0.903347, -0.428553,
		-0.999737, -0.009443, 0.020909,
		32.742165, 31.841898, 25.179256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319256, 32.507835, 25.368313>,  <33.441978, 31.848507, 25.164619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319256, 32.507835, 25.368313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.993900, 32.289951, 25.449989>,  <32.798687, 32.159222, 25.498995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.993900, 32.289951, 25.449989>,  <33.319256, 32.507835, 25.368313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993900, 32.289951, 25.449989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159311, 0.546178, 0.822381,
		-0.559481, 0.636385, -0.531032,
		-0.813388, -0.544706, 0.204193,
		32.749886, 32.126541, 25.511248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858429, 33.018654, 25.589104>,  <33.319256, 32.507835, 25.368313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858429, 33.018654, 25.589104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.706642, 32.674683, 25.725651>,  <32.615570, 32.468300, 25.807579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.706642, 32.674683, 25.725651>,  <32.858429, 33.018654, 25.589104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706642, 32.674683, 25.725651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068594, 0.394096, 0.916506,
		-0.922660, 0.324366, -0.208531,
		-0.379464, -0.859928, 0.341367,
		32.592804, 32.416706, 25.828060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347427, 33.224358, 25.972761>,  <32.858429, 33.018654, 25.589104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347427, 33.224358, 25.972761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.423546, 32.866886, 26.135300>,  <32.469219, 32.652401, 26.232822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.423546, 32.866886, 26.135300>,  <32.347427, 33.224358, 25.972761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423546, 32.866886, 26.135300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045157, 0.421442, 0.905730,
		-0.980687, -0.154010, 0.120556,
		0.190299, -0.893682, 0.406349,
		32.480637, 32.598782, 26.257204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834677, 33.139805, 26.466574>,  <32.347427, 33.224358, 25.972761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834677, 33.139805, 26.466574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.123550, 32.880562, 26.563244>,  <32.296875, 32.725018, 26.621246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.123550, 32.880562, 26.563244>,  <31.834677, 33.139805, 26.466574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123550, 32.880562, 26.563244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042530, 0.307128, 0.950717,
		-0.690394, -0.696870, 0.194238,
		0.722182, -0.648109, 0.241677,
		32.340206, 32.686131, 26.635748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596275, 32.748528, 27.045128>,  <31.834677, 33.139805, 26.466574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596275, 32.748528, 27.045128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.994095, 32.711384, 27.064089>,  <32.232788, 32.689098, 27.075466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.994095, 32.711384, 27.064089>,  <31.596275, 32.748528, 27.045128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994095, 32.711384, 27.064089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024592, 0.232899, 0.972190,
		-0.101319, -0.968057, 0.229346,
		0.994550, -0.092861, 0.047404,
		32.292461, 32.683525, 27.078310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717861, 32.226448, 27.566120>,  <31.596275, 32.748528, 27.045128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717861, 32.226448, 27.566120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.036831, 32.466305, 27.539143>,  <32.228214, 32.610218, 27.522957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.036831, 32.466305, 27.539143>,  <31.717861, 32.226448, 27.566120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036831, 32.466305, 27.539143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039639, 0.059471, 0.997443,
		0.602116, -0.798058, 0.023654,
		0.797424, 0.599639, -0.067443,
		32.276058, 32.646198, 27.518909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219028, 31.944080, 28.083071>,  <31.717861, 32.226448, 27.566120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219028, 31.944080, 28.083071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.339466, 32.313854, 27.989464>,  <32.411728, 32.535717, 27.933300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.339466, 32.313854, 27.989464>,  <32.219028, 31.944080, 28.083071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339466, 32.313854, 27.989464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229334, 0.168006, 0.958739,
		0.925607, -0.342339, -0.161419,
		0.301095, 0.924434, -0.234017,
		32.429794, 32.591183, 27.919258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781879, 32.020779, 28.497620>,  <32.219028, 31.944080, 28.083071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781879, 32.020779, 28.497620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.677811, 32.397694, 28.413334>,  <32.615372, 32.623844, 28.362762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.677811, 32.397694, 28.413334>,  <32.781879, 32.020779, 28.497620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677811, 32.397694, 28.413334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284496, 0.283349, 0.915847,
		0.922699, 0.178328, -0.341797,
		-0.260169, 0.942291, -0.210713,
		32.599758, 32.680382, 28.350121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374065, 32.449497, 28.824627>,  <32.781879, 32.020779, 28.497620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374065, 32.449497, 28.824627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.055534, 32.680737, 28.753447>,  <32.864414, 32.819481, 28.710739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.055534, 32.680737, 28.753447>,  <33.374065, 32.449497, 28.824627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055534, 32.680737, 28.753447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257030, 0.589729, 0.765608,
		0.547538, 0.563936, -0.618206,
		-0.796328, 0.578097, -0.177951,
		32.816635, 32.854164, 28.700062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702110, 33.029400, 28.631426>,  <33.374065, 32.449497, 28.824627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702110, 33.029400, 28.631426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.330803, 33.089760, 28.767391>,  <33.108017, 33.125977, 28.848970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.330803, 33.089760, 28.767391>,  <33.702110, 33.029400, 28.631426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330803, 33.089760, 28.767391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360971, 0.585548, 0.725833,
		-0.089510, 0.796469, -0.598017,
		-0.928271, 0.150897, 0.339915,
		33.052322, 33.135029, 28.869366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685249, 33.734779, 28.859884>,  <33.702110, 33.029400, 28.631426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685249, 33.734779, 28.859884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.357647, 33.598606, 29.044638>,  <33.161087, 33.516903, 29.155489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.357647, 33.598606, 29.044638>,  <33.685249, 33.734779, 28.859884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357647, 33.598606, 29.044638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315624, 0.404952, 0.858135,
		-0.479179, 0.848598, -0.224208,
		-0.819005, -0.340434, 0.461882,
		33.111946, 33.496475, 29.183203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559196, 34.184097, 29.404905>,  <33.685249, 33.734779, 28.859884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559196, 34.184097, 29.404905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.309471, 33.894600, 29.522503>,  <33.159637, 33.720901, 29.593061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.309471, 33.894600, 29.522503>,  <33.559196, 34.184097, 29.404905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309471, 33.894600, 29.522503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146224, 0.261427, 0.954083,
		-0.767365, 0.638637, -0.057384,
		-0.624315, -0.723739, 0.293994,
		33.122177, 33.677479, 29.610701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088375, 34.379642, 29.900381>,  <33.559196, 34.184097, 29.404905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088375, 34.379642, 29.900381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.129639, 33.990135, 29.981499>,  <33.154396, 33.756432, 30.030170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.129639, 33.990135, 29.981499>,  <33.088375, 34.379642, 29.900381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129639, 33.990135, 29.981499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116286, 0.214293, 0.969823,
		-0.987844, -0.076467, 0.135343,
		0.103163, -0.973772, 0.202796,
		33.160587, 33.698002, 30.042337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647331, 34.192547, 30.501616>,  <33.088375, 34.379642, 29.900381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647331, 34.192547, 30.501616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.911808, 33.893768, 30.473631>,  <33.070492, 33.714500, 30.456841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.911808, 33.893768, 30.473631>,  <32.647331, 34.192547, 30.501616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911808, 33.893768, 30.473631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104246, -0.183823, 0.977416,
		-0.742941, -0.638964, -0.199409,
		0.661189, -0.746950, -0.069960,
		33.110165, 33.669682, 30.452642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367928, 33.613213, 30.910683>,  <32.647331, 34.192547, 30.501616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367928, 33.613213, 30.910683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.760529, 33.552254, 30.864328>,  <32.996090, 33.515678, 30.836515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.760529, 33.552254, 30.864328>,  <32.367928, 33.613213, 30.910683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760529, 33.552254, 30.864328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093321, -0.147695, 0.984621,
		-0.167172, -0.977221, -0.130740,
		0.981501, -0.152400, -0.115886,
		33.054977, 33.506535, 30.829563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574669, 33.083080, 31.413191>,  <32.367928, 33.613213, 30.910683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574669, 33.083080, 31.413191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.906677, 33.279713, 31.307804>,  <33.105881, 33.397690, 31.244572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.906677, 33.279713, 31.307804>,  <32.574669, 33.083080, 31.413191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906677, 33.279713, 31.307804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321512, -0.035728, 0.946231,
		0.455734, -0.870100, -0.187703,
		0.830022, 0.491578, -0.263465,
		33.155685, 33.427185, 31.228764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071011, 32.910564, 31.912174>,  <32.574669, 33.083080, 31.413191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071011, 32.910564, 31.912174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.226143, 33.245239, 31.757496>,  <33.319221, 33.446045, 31.664690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.226143, 33.245239, 31.757496>,  <33.071011, 32.910564, 31.912174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226143, 33.245239, 31.757496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414727, 0.216260, 0.883874,
		0.823156, -0.503169, -0.263126,
		0.387835, 0.836691, -0.386694,
		33.342495, 33.496246, 31.641487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828819, 32.856655, 31.999918>,  <33.071011, 32.910564, 31.912174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828819, 32.856655, 31.999918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.727722, 33.242989, 31.976997>,  <33.667065, 33.474789, 31.963245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.727722, 33.242989, 31.976997>,  <33.828819, 32.856655, 31.999918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727722, 33.242989, 31.976997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449952, 0.169764, 0.876769,
		0.856542, 0.195813, -0.477486,
		-0.252743, 0.965835, -0.057304,
		33.651897, 33.532738, 31.959806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498356, 33.197334, 32.134075>,  <33.828819, 32.856655, 31.999918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498356, 33.197334, 32.134075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.184357, 33.436363, 32.199417>,  <33.995956, 33.579781, 32.238621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.184357, 33.436363, 32.199417>,  <34.498356, 33.197334, 32.134075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184357, 33.436363, 32.199417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453751, 0.375095, 0.808340,
		0.421769, 0.708668, -0.565598,
		-0.784998, 0.597574, 0.163355,
		33.948856, 33.615635, 32.248425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793156, 33.780674, 32.503952>,  <34.498356, 33.197334, 32.134075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793156, 33.780674, 32.503952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.399227, 33.826279, 32.556309>,  <34.162872, 33.853642, 32.587723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.399227, 33.826279, 32.556309>,  <34.793156, 33.780674, 32.503952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399227, 33.826279, 32.556309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165910, 0.396440, 0.902945,
		0.051057, 0.910953, -0.409337,
		-0.984818, 0.114014, 0.130895,
		34.103783, 33.860481, 32.595577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710232, 34.371117, 32.818581>,  <34.793156, 33.780674, 32.503952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710232, 34.371117, 32.818581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.378124, 34.168922, 32.912514>,  <34.178860, 34.047607, 32.968876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.378124, 34.168922, 32.912514>,  <34.710232, 34.371117, 32.818581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378124, 34.168922, 32.912514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160728, 0.186294, 0.969258,
		-0.533692, 0.842485, -0.073428,
		-0.830265, -0.505483, 0.234835,
		34.129044, 34.017277, 32.982964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349075, 34.479942, 32.438396>,  <34.710232, 34.371117, 32.818581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349075, 34.479942, 32.438396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.736809, 34.570255, 32.399570>,  <35.969448, 34.624443, 32.376274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.736809, 34.570255, 32.399570>,  <35.349075, 34.479942, 32.438396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736809, 34.570255, 32.399570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014785, -0.340649, -0.940074,
		-0.245318, 0.912677, -0.326863,
		0.969330, 0.225784, -0.097061,
		36.027607, 34.637989, 32.370453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489887, 34.968475, 31.862480>,  <35.349075, 34.479942, 32.438396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489887, 34.968475, 31.862480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.810295, 34.737713, 31.926407>,  <36.002541, 34.599255, 31.964764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.810295, 34.737713, 31.926407>,  <35.489887, 34.968475, 31.862480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810295, 34.737713, 31.926407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073642, -0.359902, -0.930079,
		0.594091, 0.733243, -0.330774,
		0.801020, -0.576910, 0.159818,
		36.050602, 34.564640, 31.974352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932789, 35.085384, 31.223406>,  <35.489887, 34.968475, 31.862480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932789, 35.085384, 31.223406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047241, 34.752357, 31.413126>,  <36.115913, 34.552540, 31.526958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047241, 34.752357, 31.413126>,  <35.932789, 35.085384, 31.223406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047241, 34.752357, 31.413126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013195, -0.491526, -0.870763,
		0.958100, 0.255410, -0.129654,
		0.286130, -0.832567, 0.474301,
		36.133080, 34.502586, 31.555416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312160, 34.816738, 30.664848>,  <35.932789, 35.085384, 31.223406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312160, 34.816738, 30.664848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.225597, 34.529133, 30.929026>,  <36.173660, 34.356571, 31.087532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.225597, 34.529133, 30.929026>,  <36.312160, 34.816738, 30.664848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225597, 34.529133, 30.929026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070824, -0.686255, -0.723905,
		0.973731, -0.109884, 0.199435,
		-0.216409, -0.719013, 0.660445,
		36.160675, 34.313431, 31.127159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838692, 34.231659, 30.555107>,  <36.312160, 34.816738, 30.664848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838692, 34.231659, 30.555107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.516182, 34.088760, 30.743702>,  <36.322678, 34.003021, 30.856859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.516182, 34.088760, 30.743702>,  <36.838692, 34.231659, 30.555107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516182, 34.088760, 30.743702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060790, -0.742782, -0.666768,
		0.588414, -0.566257, 0.577166,
		-0.806271, -0.357250, 0.471487,
		36.274300, 33.981586, 30.885147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950947, 33.514694, 30.523212>,  <36.838692, 34.231659, 30.555107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950947, 33.514694, 30.523212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.564632, 33.610081, 30.563969>,  <36.332844, 33.667313, 30.588423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.564632, 33.610081, 30.563969>,  <36.950947, 33.514694, 30.523212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564632, 33.610081, 30.563969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210464, -0.491240, -0.845215,
		-0.151506, -0.837744, 0.524624,
		-0.965790, 0.238469, 0.101890,
		36.274895, 33.681622, 30.594536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633839, 32.972412, 30.195963>,  <36.950947, 33.514694, 30.523212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633839, 32.972412, 30.195963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.318272, 33.211823, 30.251657>,  <36.128933, 33.355469, 30.285074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.318272, 33.211823, 30.251657>,  <36.633839, 32.972412, 30.195963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318272, 33.211823, 30.251657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420449, -0.360501, -0.832623,
		-0.448150, -0.715409, 0.536052,
		-0.788914, 0.598523, 0.139234,
		36.081596, 33.391380, 30.293428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038216, 32.564079, 30.160648>,  <36.633839, 32.972412, 30.195963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038216, 32.564079, 30.160648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924751, 32.938496, 30.077351>,  <35.856674, 33.163147, 30.027372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924751, 32.938496, 30.077351>,  <36.038216, 32.564079, 30.160648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924751, 32.938496, 30.077351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507200, -0.330754, -0.795833,
		-0.813809, -0.120126, 0.568581,
		-0.283661, 0.936040, -0.208242,
		35.839653, 33.219307, 30.014877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338867, 32.559395, 30.009510>,  <36.038216, 32.564079, 30.160648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338867, 32.559395, 30.009510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.500652, 32.879448, 29.832333>,  <35.597721, 33.071480, 29.726025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.500652, 32.879448, 29.832333>,  <35.338867, 32.559395, 30.009510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500652, 32.879448, 29.832333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430296, -0.260885, -0.864167,
		-0.807006, 0.540118, 0.238777,
		0.404459, 0.800133, -0.442946,
		35.621990, 33.119488, 29.699450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827648, 32.649891, 29.595415>,  <35.338867, 32.559395, 30.009510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827648, 32.649891, 29.595415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.131264, 32.869766, 29.455875>,  <35.313435, 33.001690, 29.372152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.131264, 32.869766, 29.455875>,  <34.827648, 32.649891, 29.595415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131264, 32.869766, 29.455875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230289, -0.274499, -0.933605,
		-0.608951, 0.788982, -0.081769,
		0.759043, 0.549689, -0.348850,
		35.358978, 33.034672, 29.351221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547619, 33.120739, 29.019686>,  <34.827648, 32.649891, 29.595415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547619, 33.120739, 29.019686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940872, 33.089970, 28.953312>,  <35.176823, 33.071510, 28.913486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940872, 33.089970, 28.953312>,  <34.547619, 33.120739, 29.019686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940872, 33.089970, 28.953312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166818, -0.005150, -0.985974,
		0.074986, 0.997024, -0.017895,
		0.983132, -0.076919, -0.165936,
		35.235813, 33.066895, 28.903532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635384, 33.479267, 28.472303>,  <34.547619, 33.120739, 29.019686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635384, 33.479267, 28.472303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.982704, 33.280884, 28.468769>,  <35.191097, 33.161854, 28.466648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.982704, 33.280884, 28.468769>,  <34.635384, 33.479267, 28.472303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982704, 33.280884, 28.468769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016155, 0.046073, -0.998808,
		0.495774, 0.867123, 0.048018,
		0.868301, -0.495959, -0.008834,
		35.243195, 33.132095, 28.466120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218140, 33.864304, 28.103331>,  <34.635384, 33.479267, 28.472303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218140, 33.864304, 28.103331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.342663, 33.484207, 28.098751>,  <35.417377, 33.256149, 28.096004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.342663, 33.484207, 28.098751>,  <35.218140, 33.864304, 28.103331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342663, 33.484207, 28.098751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199092, 0.076994, -0.976951,
		0.929220, 0.301853, 0.213154,
		0.311308, -0.950240, -0.011448,
		35.436054, 33.199135, 28.095316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947781, 33.807178, 27.862175>,  <35.218140, 33.864304, 28.103331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947781, 33.807178, 27.862175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.771500, 33.458824, 27.775148>,  <35.665733, 33.249809, 27.722933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.771500, 33.458824, 27.775148>,  <35.947781, 33.807178, 27.862175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771500, 33.458824, 27.775148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363979, 0.048191, -0.930160,
		0.820552, -0.489110, 0.295748,
		-0.440698, -0.870890, -0.217569,
		35.639290, 33.197556, 27.709877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413494, 33.490604, 27.416576>,  <35.947781, 33.807178, 27.862175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413494, 33.490604, 27.416576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.066902, 33.297123, 27.367189>,  <35.858948, 33.181034, 27.337557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.066902, 33.297123, 27.367189>,  <36.413494, 33.490604, 27.416576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066902, 33.297123, 27.367189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175344, -0.063323, -0.982469,
		0.467402, -0.872940, 0.139682,
		-0.866481, -0.483700, -0.123468,
		35.806957, 33.152012, 27.330149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583073, 33.156540, 26.879858>,  <36.413494, 33.490604, 27.416576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583073, 33.156540, 26.879858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.186447, 33.110630, 26.903948>,  <35.948471, 33.083084, 26.918402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.186447, 33.110630, 26.903948>,  <36.583073, 33.156540, 26.879858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186447, 33.110630, 26.903948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040896, -0.163872, -0.985634,
		0.122994, -0.979782, 0.157796,
		-0.991564, -0.114774, 0.060224,
		35.888977, 33.076199, 26.922014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540363, 32.677494, 26.311424>,  <36.583073, 33.156540, 26.879858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540363, 32.677494, 26.311424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.168446, 32.807907, 26.379747>,  <35.945293, 32.886154, 26.420740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.168446, 32.807907, 26.379747>,  <36.540363, 32.677494, 26.311424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168446, 32.807907, 26.379747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168466, 0.035626, -0.985063,
		-0.327251, -0.944686, 0.021801,
		-0.929799, 0.326036, 0.170806,
		35.889507, 32.905716, 26.430990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036957, 32.207706, 25.961843>,  <36.540363, 32.677494, 26.311424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036957, 32.207706, 25.961843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.849312, 32.556458, 26.018076>,  <35.736725, 32.765709, 26.051815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.849312, 32.556458, 26.018076>,  <36.036957, 32.207706, 25.961843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849312, 32.556458, 26.018076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314979, -0.016466, -0.948956,
		-0.825057, -0.489449, 0.282347,
		-0.469115, 0.871876, 0.140581,
		35.708576, 32.818020, 26.060249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.343990, 32.060612, 26.037514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.390545, 32.436810, 25.909811>,  <35.418480, 32.662529, 25.833189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.390545, 32.436810, 25.909811>,  <35.343990, 32.060612, 26.037514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390545, 32.436810, 25.909811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644873, -0.172913, -0.744472,
		-0.755375, 0.292530, 0.586374,
		0.116389, 0.940493, -0.319259,
		35.425461, 32.718956, 25.814034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702862, 32.184063, 25.791300>,  <35.343990, 32.060612, 26.037514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702862, 32.184063, 25.791300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.921066, 32.477203, 25.628649>,  <35.051991, 32.653088, 25.531059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.921066, 32.477203, 25.628649>,  <34.702862, 32.184063, 25.791300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921066, 32.477203, 25.628649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519216, -0.085344, -0.850371,
		-0.657899, 0.675015, 0.333952,
		0.545512, 0.732852, -0.406627,
		35.084721, 32.697060, 25.506660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210636, 32.578533, 25.468674>,  <34.702862, 32.184063, 25.791300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210636, 32.578533, 25.468674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.564537, 32.667652, 25.304926>,  <34.776878, 32.721123, 25.206678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.564537, 32.667652, 25.304926>,  <34.210636, 32.578533, 25.468674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564537, 32.667652, 25.304926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431947, 0.062083, -0.899760,
		-0.175047, 0.972887, 0.151163,
		0.884749, 0.222795, -0.409368,
		34.829960, 32.734489, 25.182116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044525, 33.064728, 24.919981>,  <34.210636, 32.578533, 25.468674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044525, 33.064728, 24.919981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.409378, 32.936218, 24.818165>,  <34.628292, 32.859112, 24.757074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.409378, 32.936218, 24.818165>,  <34.044525, 33.064728, 24.919981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409378, 32.936218, 24.818165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332503, -0.216820, -0.917841,
		0.239688, 0.921831, -0.304593,
		0.912136, -0.321273, -0.254542,
		34.683018, 32.839836, 24.741802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198257, 33.349522, 24.199968>,  <34.044525, 33.064728, 24.919981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198257, 33.349522, 24.199968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.396545, 33.011566, 24.280390>,  <34.515518, 32.808792, 24.328642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.396545, 33.011566, 24.280390>,  <34.198257, 33.349522, 24.199968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396545, 33.011566, 24.280390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105821, -0.288536, -0.951603,
		0.862010, 0.450454, -0.232441,
		0.495721, -0.844889, 0.201054,
		34.545261, 32.758099, 24.340706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628220, 33.351807, 23.688696>,  <34.198257, 33.349522, 24.199968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628220, 33.351807, 23.688696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.636940, 32.978546, 23.832226>,  <34.642174, 32.754589, 23.918344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.636940, 32.978546, 23.832226>,  <34.628220, 33.351807, 23.688696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636940, 32.978546, 23.832226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120633, -0.358745, -0.925608,
		0.992458, -0.023106, -0.120391,
		0.021803, -0.933149, 0.358826,
		34.643482, 32.698601, 23.939875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000000, 32.965496, 23.152725>,  <34.628220, 33.351807, 23.688696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000000, 32.965496, 23.152725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.827572, 32.682583, 23.376846>,  <34.724117, 32.512836, 23.511318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.827572, 32.682583, 23.376846>,  <35.000000, 32.965496, 23.152725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827572, 32.682583, 23.376846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234452, -0.511834, -0.826473,
		0.871328, -0.487630, 0.054813,
		-0.431069, -0.707278, 0.560301,
		34.698250, 32.470398, 23.544937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302250, 32.343285, 22.911806>,  <35.000000, 32.965496, 23.152725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302250, 32.343285, 22.911806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.984512, 32.215004, 23.118174>,  <34.793869, 32.138035, 23.241995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.984512, 32.215004, 23.118174>,  <35.302250, 32.343285, 22.911806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984512, 32.215004, 23.118174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173317, -0.694343, -0.698462,
		0.582224, -0.644234, 0.495961,
		-0.794340, -0.320703, 0.515919,
		34.746212, 32.118793, 23.272949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412804, 31.668537, 23.091194>,  <35.302250, 32.343285, 22.911806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412804, 31.668537, 23.091194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020035, 31.704988, 23.024830>,  <34.784374, 31.726858, 22.985012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020035, 31.704988, 23.024830>,  <35.412804, 31.668537, 23.091194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020035, 31.704988, 23.024830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078841, -0.599951, -0.796142,
		-0.172087, -0.794830, 0.581921,
		-0.981922, 0.091127, -0.165909,
		34.725460, 31.732327, 22.975058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152817, 31.031462, 22.997473>,  <35.412804, 31.668537, 23.091194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152817, 31.031462, 22.997473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.888176, 31.257917, 22.800791>,  <34.729393, 31.393791, 22.682781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.888176, 31.257917, 22.800791>,  <35.152817, 31.031462, 22.997473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888176, 31.257917, 22.800791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039521, -0.628494, -0.776810,
		-0.748817, -0.533368, 0.393436,
		-0.661598, 0.566139, -0.491706,
		34.689697, 31.427759, 22.653278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572033, 30.549110, 22.621609>,  <35.152817, 31.031462, 22.997473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572033, 30.549110, 22.621609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.578453, 30.904406, 22.437965>,  <34.582306, 31.117582, 22.327780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.578453, 30.904406, 22.437965>,  <34.572033, 30.549110, 22.621609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578453, 30.904406, 22.437965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066428, -0.457205, -0.886877,
		-0.997662, 0.044733, 0.051665,
		0.016051, 0.888235, -0.459108,
		34.583267, 31.170876, 22.300234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155155, 30.478529, 21.945652>,  <34.572033, 30.549110, 22.621609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155155, 30.478529, 21.945652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.373299, 30.811651, 21.907677>,  <34.504185, 31.011524, 21.884892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.373299, 30.811651, 21.907677>,  <34.155155, 30.478529, 21.945652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373299, 30.811651, 21.907677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146790, -0.206406, -0.967393,
		-0.825247, 0.513644, -0.234814,
		0.545362, 0.832807, -0.094938,
		34.536907, 31.061493, 21.879196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887917, 30.782747, 21.414930>,  <34.155155, 30.478529, 21.945652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887917, 30.782747, 21.414930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.233833, 30.982695, 21.433949>,  <34.441383, 31.102663, 21.445360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.233833, 30.982695, 21.433949>,  <33.887917, 30.782747, 21.414930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233833, 30.982695, 21.433949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062621, -0.013412, -0.997947,
		-0.498205, 0.865997, -0.042900,
		0.864795, 0.499869, 0.047548,
		34.493271, 31.132656, 21.448214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779156, 31.275269, 21.000217>,  <33.887917, 30.782747, 21.414930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779156, 31.275269, 21.000217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.179050, 31.266281, 21.002405>,  <34.418987, 31.260889, 21.003717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.179050, 31.266281, 21.002405>,  <33.779156, 31.275269, 21.000217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179050, 31.266281, 21.002405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006990, 0.068167, -0.997650,
		0.022044, 0.997421, 0.068306,
		0.999733, -0.022470, 0.005469,
		34.478970, 31.259541, 21.004045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931881, 31.776279, 20.608519>,  <33.779156, 31.275269, 21.000217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931881, 31.776279, 20.608519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.274429, 31.571205, 20.583900>,  <34.479958, 31.448160, 20.569130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.274429, 31.571205, 20.583900>,  <33.931881, 31.776279, 20.608519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274429, 31.571205, 20.583900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108603, 0.295356, -0.949194,
		0.504815, 0.806176, 0.308612,
		0.856368, -0.512684, -0.061547,
		34.531342, 31.417400, 20.565435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323742, 32.253422, 20.351866>,  <33.931881, 31.776279, 20.608519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323742, 32.253422, 20.351866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.511578, 31.909134, 20.273237>,  <34.624279, 31.702560, 20.226059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.511578, 31.909134, 20.273237>,  <34.323742, 32.253422, 20.351866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511578, 31.909134, 20.273237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231204, 0.334765, -0.913497,
		0.852073, 0.383523, 0.356205,
		0.469592, -0.860722, -0.196572,
		34.652454, 31.650917, 20.214266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923119, 32.434731, 19.979958>,  <34.323742, 32.253422, 20.351866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923119, 32.434731, 19.979958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.864346, 32.051010, 19.883507>,  <34.829082, 31.820776, 19.825636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.864346, 32.051010, 19.883507>,  <34.923119, 32.434731, 19.979958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864346, 32.051010, 19.883507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148981, 0.219528, -0.964164,
		0.977862, -0.177594, 0.110661,
		-0.146937, -0.959306, -0.241126,
		34.820263, 31.763218, 19.811169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449886, 32.231861, 19.508156>,  <34.923119, 32.434731, 19.979958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449886, 32.231861, 19.508156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168774, 31.953472, 19.449200>,  <35.000107, 31.786440, 19.413826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168774, 31.953472, 19.449200>,  <35.449886, 32.231861, 19.508156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168774, 31.953472, 19.449200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166886, 0.040111, -0.985160,
		0.691553, -0.716950, 0.087959,
		-0.702783, -0.695969, -0.147388,
		34.957939, 31.744682, 19.404984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750782, 32.015762, 18.932745>,  <35.449886, 32.231861, 19.508156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750782, 32.015762, 18.932745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.380581, 31.868851, 18.969746>,  <35.158459, 31.780704, 18.991945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.380581, 31.868851, 18.969746>,  <35.750782, 32.015762, 18.932745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380581, 31.868851, 18.969746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090092, -0.023736, -0.995651,
		0.367873, -0.929809, -0.011121,
		-0.925501, -0.367275, 0.092501,
		35.102932, 31.758669, 18.997496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779915, 31.459633, 18.522966>,  <35.750782, 32.015762, 18.932745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779915, 31.459633, 18.522966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.402573, 31.586876, 18.560663>,  <35.176167, 31.663221, 18.583282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.402573, 31.586876, 18.560663>,  <35.779915, 31.459633, 18.522966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402573, 31.586876, 18.560663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050199, 0.143934, -0.988313,
		-0.327954, -0.937065, -0.119813,
		-0.943359, 0.318107, 0.094243,
		35.119564, 31.682308, 18.588936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439831, 31.129618, 17.910563>,  <35.779915, 31.459633, 18.522966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439831, 31.129618, 17.910563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.227367, 31.437838, 18.051489>,  <35.099892, 31.622770, 18.136045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.227367, 31.437838, 18.051489>,  <35.439831, 31.129618, 17.910563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227367, 31.437838, 18.051489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170469, 0.310130, -0.935286,
		-0.829948, -0.556841, -0.033373,
		-0.531155, 0.770550, 0.352316,
		35.068020, 31.669003, 18.157185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779243, 31.198769, 17.548126>,  <35.439831, 31.129618, 17.910563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779243, 31.198769, 17.548126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.840435, 31.564215, 17.698805>,  <34.877148, 31.783484, 17.789213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.840435, 31.564215, 17.698805>,  <34.779243, 31.198769, 17.548126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840435, 31.564215, 17.698805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074746, 0.390790, -0.917440,
		-0.985399, 0.112190, 0.128071,
		0.152976, 0.913617, 0.376699,
		34.886330, 31.838301, 17.811815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246174, 31.661318, 17.267853>,  <34.779243, 31.198769, 17.548126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246174, 31.661318, 17.267853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.518482, 31.926775, 17.391869>,  <34.681870, 32.086048, 17.466278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.518482, 31.926775, 17.391869>,  <34.246174, 31.661318, 17.267853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518482, 31.926775, 17.391869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094812, 0.499540, -0.861086,
		-0.726333, 0.556809, 0.402995,
		0.680772, 0.663644, 0.310041,
		34.722713, 32.125870, 17.484880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964127, 32.366707, 17.139517>,  <34.246174, 31.661318, 17.267853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964127, 32.366707, 17.139517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.361622, 32.326523, 17.119944>,  <34.600121, 32.302414, 17.108200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.361622, 32.326523, 17.119944>,  <33.964127, 32.366707, 17.139517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361622, 32.326523, 17.119944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016481, 0.564911, -0.824987,
		0.110519, 0.819014, 0.563029,
		0.993737, -0.100457, -0.048935,
		34.659744, 32.296387, 17.105263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580479, 32.382145, 17.794125>,  <33.964127, 32.366707, 17.139517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580479, 32.382145, 17.794125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.241306, 32.525528, 17.637909>,  <33.037804, 32.611557, 17.544180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.241306, 32.525528, 17.637909>,  <33.580479, 32.382145, 17.794125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241306, 32.525528, 17.637909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425547, -0.020968, 0.904693,
		0.316102, 0.933312, 0.170319,
		-0.847932, 0.358454, -0.390540,
		32.986927, 32.633064, 17.520746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433174, 33.022781, 18.126228>,  <33.580479, 32.382145, 17.794125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433174, 33.022781, 18.126228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.102798, 32.859936, 17.970238>,  <32.904572, 32.762230, 17.876644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.102798, 32.859936, 17.970238>,  <33.433174, 33.022781, 18.126228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102798, 32.859936, 17.970238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346572, -0.178921, 0.920801,
		-0.444645, 0.895682, 0.006684,
		-0.825941, -0.407113, -0.389975,
		32.855015, 32.737801, 17.853245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827671, 33.413643, 18.488972>,  <33.433174, 33.022781, 18.126228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827671, 33.413643, 18.488972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661678, 33.077015, 18.350670>,  <32.562084, 32.875038, 18.267689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661678, 33.077015, 18.350670>,  <32.827671, 33.413643, 18.488972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661678, 33.077015, 18.350670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404060, -0.170019, 0.898793,
		-0.815185, 0.512687, -0.269492,
		-0.414981, -0.841573, -0.345753,
		32.537186, 32.824543, 18.246944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226334, 33.414032, 18.837173>,  <32.827671, 33.413643, 18.488972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226334, 33.414032, 18.837173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.270889, 33.031898, 18.727682>,  <32.297623, 32.802620, 18.661987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.270889, 33.031898, 18.727682>,  <32.226334, 33.414032, 18.837173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270889, 33.031898, 18.727682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304370, -0.295001, 0.905722,
		-0.946018, -0.017578, -0.323636,
		0.111393, -0.955335, -0.273726,
		32.304306, 32.745296, 18.645565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604206, 33.087845, 19.171312>,  <32.226334, 33.414032, 18.837173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604206, 33.087845, 19.171312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841301, 32.782372, 19.068983>,  <31.983559, 32.599087, 19.007586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841301, 32.782372, 19.068983>,  <31.604206, 33.087845, 19.171312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841301, 32.782372, 19.068983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150035, -0.416780, 0.896540,
		-0.791297, -0.493030, -0.361621,
		0.592737, -0.763686, -0.255825,
		32.019123, 32.553265, 18.992235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237925, 32.427193, 19.349665>,  <31.604206, 33.087845, 19.171312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237925, 32.427193, 19.349665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.631672, 32.356827, 19.353188>,  <31.867920, 32.314610, 19.355301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.631672, 32.356827, 19.353188>,  <31.237925, 32.427193, 19.349665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631672, 32.356827, 19.353188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085759, -0.435020, 0.896327,
		-0.153844, -0.883070, -0.443305,
		0.984366, -0.175912, 0.008806,
		31.926981, 32.304054, 19.355829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374210, 31.596405, 19.511822>,  <31.237925, 32.427193, 19.349665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374210, 31.596405, 19.511822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.662140, 31.848986, 19.627144>,  <31.834898, 32.000534, 19.696337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.662140, 31.848986, 19.627144>,  <31.374210, 31.596405, 19.511822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662140, 31.848986, 19.627144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017399, -0.431615, 0.901890,
		0.693938, -0.644186, -0.321673,
		0.719824, 0.631453, 0.288306,
		31.878088, 32.038422, 19.713636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748951, 31.165730, 19.741863>,  <31.374210, 31.596405, 19.511822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748951, 31.165730, 19.741863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.844259, 31.502304, 19.935858>,  <31.901443, 31.704248, 20.052254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.844259, 31.502304, 19.935858>,  <31.748951, 31.165730, 19.741863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844259, 31.502304, 19.935858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030439, -0.505594, 0.862235,
		0.970722, -0.190682, -0.146081,
		0.238270, 0.841436, 0.484986,
		31.915741, 31.754736, 20.081354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045776, 30.848261, 20.321430>,  <31.748951, 31.165730, 19.741863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045776, 30.848261, 20.321430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.064091, 31.229551, 20.440937>,  <32.075077, 31.458326, 20.512642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.064091, 31.229551, 20.440937>,  <32.045776, 30.848261, 20.321430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064091, 31.229551, 20.440937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127698, -0.302213, 0.944648,
		0.990756, -0.005098, -0.135562,
		0.045784, 0.953227, 0.298769,
		32.077827, 31.515520, 20.530567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621181, 30.915035, 20.818298>,  <32.045776, 30.848261, 20.321430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621181, 30.915035, 20.818298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.481308, 31.283304, 20.887680>,  <32.397385, 31.504265, 20.929308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.481308, 31.283304, 20.887680>,  <32.621181, 30.915035, 20.818298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481308, 31.283304, 20.887680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000434, -0.184981, 0.982742,
		0.936868, 0.343723, 0.064285,
		-0.349683, 0.920672, 0.173452,
		32.376404, 31.559505, 20.939716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048298, 31.300943, 21.337757>,  <32.621181, 30.915035, 20.818298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048298, 31.300943, 21.337757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.674034, 31.441887, 21.345518>,  <32.449474, 31.526453, 21.350174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.674034, 31.441887, 21.345518>,  <33.048298, 31.300943, 21.337757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674034, 31.441887, 21.345518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005809, -0.039594, 0.999199,
		0.352844, 0.935027, 0.035000,
		-0.935664, 0.352358, 0.019402,
		32.393333, 31.547594, 21.351339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025780, 31.825525, 21.833748>,  <33.048298, 31.300943, 21.337757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025780, 31.825525, 21.833748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.650341, 31.689064, 21.813160>,  <32.425079, 31.607187, 21.800806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.650341, 31.689064, 21.813160>,  <33.025780, 31.825525, 21.833748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650341, 31.689064, 21.813160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020166, -0.094683, 0.995303,
		-0.344424, 0.935228, 0.081990,
		-0.938598, -0.341152, -0.051471,
		32.368763, 31.586718, 21.797718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652866, 32.269100, 22.306175>,  <33.025780, 31.825525, 21.833748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652866, 32.269100, 22.306175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.442097, 31.932854, 22.256031>,  <32.315636, 31.731106, 22.225945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.442097, 31.932854, 22.256031>,  <32.652866, 32.269100, 22.306175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442097, 31.932854, 22.256031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142229, -0.058206, 0.988121,
		-0.837925, 0.538498, -0.088889,
		-0.526927, -0.840614, -0.125362,
		32.284019, 31.680670, 22.218422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888145, 32.426041, 22.489235>,  <32.652866, 32.269100, 22.306175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888145, 32.426041, 22.489235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.977879, 32.038040, 22.526688>,  <32.031719, 31.805239, 22.549160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.977879, 32.038040, 22.526688>,  <31.888145, 32.426041, 22.489235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977879, 32.038040, 22.526688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203617, 0.047303, 0.977907,
		-0.953002, -0.238444, -0.186898,
		0.224335, -0.970003, 0.093631,
		32.045177, 31.747040, 22.554777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472298, 32.224987, 22.953695>,  <31.888145, 32.426041, 22.489235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472298, 32.224987, 22.953695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.715839, 31.908344, 22.933086>,  <31.861965, 31.718359, 22.920721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.715839, 31.908344, 22.933086>,  <31.472298, 32.224987, 22.953695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715839, 31.908344, 22.933086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072069, -0.119876, 0.990170,
		-0.790000, -0.599158, -0.130037,
		0.608856, -0.791606, -0.051522,
		31.898497, 31.670862, 22.917629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154890, 31.648140, 23.383505>,  <31.472298, 32.224987, 22.953695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154890, 31.648140, 23.383505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.553215, 31.623068, 23.356884>,  <31.792210, 31.608025, 23.340912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.553215, 31.623068, 23.356884>,  <31.154890, 31.648140, 23.383505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553215, 31.623068, 23.356884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057018, -0.143223, 0.988047,
		-0.071458, -0.987704, -0.139049,
		0.995812, -0.062676, -0.066551,
		31.851959, 31.604263, 23.336918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367107, 31.098955, 23.890032>,  <31.154890, 31.648140, 23.383505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367107, 31.098955, 23.890032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.713438, 31.285780, 23.818258>,  <31.921236, 31.397875, 23.775194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.713438, 31.285780, 23.818258>,  <31.367107, 31.098955, 23.890032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713438, 31.285780, 23.818258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309000, -0.217091, 0.925954,
		0.393525, -0.857161, -0.332286,
		0.865827, 0.467063, -0.179432,
		31.973186, 31.425900, 23.764429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901720, 30.653437, 24.248343>,  <31.367107, 31.098955, 23.890032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901720, 30.653437, 24.248343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.045475, 31.019440, 24.175018>,  <32.131729, 31.239042, 24.131023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.045475, 31.019440, 24.175018>,  <31.901720, 30.653437, 24.248343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045475, 31.019440, 24.175018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487533, -0.016607, 0.872947,
		0.795708, -0.403096, -0.452064,
		0.359389, 0.915007, -0.183309,
		32.153290, 31.293941, 24.120026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560059, 30.660730, 24.589216>,  <31.901720, 30.653437, 24.248343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560059, 30.660730, 24.589216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.497612, 31.051331, 24.529781>,  <32.460144, 31.285690, 24.494122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.497612, 31.051331, 24.529781>,  <32.560059, 30.660730, 24.589216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497612, 31.051331, 24.529781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241078, 0.183552, 0.952990,
		0.957866, 0.112961, -0.264068,
		-0.156120, 0.976498, -0.148586,
		32.450775, 31.344280, 24.485205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186245, 31.013060, 24.888636>,  <32.560059, 30.660730, 24.589216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186245, 31.013060, 24.888636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.888733, 31.279364, 24.864775>,  <32.710228, 31.439146, 24.850458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.888733, 31.279364, 24.864775>,  <33.186245, 31.013060, 24.888636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888733, 31.279364, 24.864775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113475, 0.213711, 0.970284,
		0.658725, 0.714906, -0.234501,
		-0.743778, 0.665760, -0.059653,
		32.665600, 31.479092, 24.846878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.270172, 32.351479, 28.467403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.952656, 32.594753, 28.468271>,  <35.762146, 32.740719, 28.468792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.952656, 32.594753, 28.468271>,  <36.270172, 32.351479, 28.467403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952656, 32.594753, 28.468271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259853, 0.335927, 0.905334,
		0.549884, 0.719209, -0.424695,
		-0.793791, 0.608186, 0.002168,
		35.714520, 32.777210, 28.468922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526241, 32.978004, 28.707758>,  <36.270172, 32.351479, 28.467403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526241, 32.978004, 28.707758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.128113, 32.996078, 28.741924>,  <35.889236, 33.006924, 28.762424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.128113, 32.996078, 28.741924>,  <36.526241, 32.978004, 28.707758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128113, 32.996078, 28.741924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096267, 0.386875, 0.917093,
		0.008391, 0.921025, -0.389414,
		-0.995320, 0.045183, 0.085418,
		35.829517, 33.009632, 28.767550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376675, 33.709881, 28.831903>,  <36.526241, 32.978004, 28.707758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376675, 33.709881, 28.831903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.067059, 33.509499, 28.986776>,  <35.881290, 33.389271, 29.079700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.067059, 33.509499, 28.986776>,  <36.376675, 33.709881, 28.831903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067059, 33.509499, 28.986776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025130, 0.586740, 0.809385,
		-0.632638, 0.636227, -0.441571,
		-0.774040, -0.500951, 0.387182,
		35.834846, 33.359215, 29.102932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936710, 34.241482, 29.122663>,  <36.376675, 33.709881, 28.831903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936710, 34.241482, 29.122663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.848747, 33.901989, 29.315035>,  <35.795971, 33.698292, 29.430458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.848747, 33.901989, 29.315035>,  <35.936710, 34.241482, 29.122663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848747, 33.901989, 29.315035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068554, 0.478331, 0.875500,
		-0.973109, 0.225497, -0.047004,
		-0.219906, -0.848735, 0.480927,
		35.782776, 33.647369, 29.459312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547668, 34.422668, 29.719826>,  <35.936710, 34.241482, 29.122663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547668, 34.422668, 29.719826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.640514, 34.040421, 29.792393>,  <35.696220, 33.811073, 29.835934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.640514, 34.040421, 29.792393>,  <35.547668, 34.422668, 29.719826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640514, 34.040421, 29.792393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065027, 0.201339, 0.977361,
		-0.970513, -0.215059, 0.108874,
		0.232111, -0.955621, 0.181418,
		35.710148, 33.753735, 29.846819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071411, 34.116337, 30.204412>,  <35.547668, 34.422668, 29.719826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071411, 34.116337, 30.204412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.411659, 33.908298, 30.235247>,  <35.615810, 33.783474, 30.253746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.411659, 33.908298, 30.235247>,  <35.071411, 34.116337, 30.204412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411659, 33.908298, 30.235247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006026, 0.156243, 0.987700,
		-0.525743, -0.839695, 0.136038,
		0.850622, -0.520097, 0.077084,
		35.666847, 33.752270, 30.258371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012661, 33.735104, 30.787619>,  <35.071411, 34.116337, 30.204412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012661, 33.735104, 30.787619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.407936, 33.740337, 30.726543>,  <35.645100, 33.743477, 30.689898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.407936, 33.740337, 30.726543>,  <35.012661, 33.735104, 30.787619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407936, 33.740337, 30.726543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144835, 0.245860, 0.958423,
		0.050078, -0.969217, 0.241061,
		0.988188, 0.013082, -0.152689,
		35.704391, 33.744263, 30.680737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258617, 33.474808, 31.488586>,  <35.012661, 33.735104, 30.787619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258617, 33.474808, 31.488586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.566383, 33.635323, 31.289801>,  <35.751041, 33.731632, 31.170530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.566383, 33.635323, 31.289801>,  <35.258617, 33.474808, 31.488586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566383, 33.635323, 31.289801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300290, 0.459443, 0.835906,
		0.563764, -0.792390, 0.232999,
		0.769413, 0.401287, -0.496964,
		35.797207, 33.755707, 31.140711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946159, 33.244633, 31.895823>,  <35.258617, 33.474808, 31.488586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946159, 33.244633, 31.895823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.963921, 33.575573, 31.671850>,  <35.974579, 33.774136, 31.537466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.963921, 33.575573, 31.671850>,  <35.946159, 33.244633, 31.895823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963921, 33.575573, 31.671850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317767, 0.519678, 0.793069,
		0.947128, -0.213144, -0.239828,
		0.044405, 0.827348, -0.559932,
		35.977242, 33.823776, 31.503870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663986, 33.406708, 32.001358>,  <35.946159, 33.244633, 31.895823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663986, 33.406708, 32.001358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.468472, 33.730461, 31.871136>,  <36.351162, 33.924713, 31.793003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.468472, 33.730461, 31.871136>,  <36.663986, 33.406708, 32.001358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468472, 33.730461, 31.871136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275343, 0.497215, 0.822778,
		0.827815, 0.312522, -0.465889,
		-0.488783, 0.809387, -0.325551,
		36.321838, 33.973278, 31.773470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066662, 33.869160, 32.416294>,  <36.663986, 33.406708, 32.001358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066662, 33.869160, 32.416294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.777988, 34.092476, 32.252590>,  <36.604786, 34.226463, 32.154369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.777988, 34.092476, 32.252590>,  <37.066662, 33.869160, 32.416294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777988, 34.092476, 32.252590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069202, 0.646446, 0.759815,
		0.688757, 0.520023, -0.505163,
		-0.721682, 0.558286, -0.409257,
		36.561485, 34.259960, 32.129814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335911, 34.638851, 32.317333>,  <37.066662, 33.869160, 32.416294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335911, 34.638851, 32.317333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.936512, 34.625755, 32.334938>,  <36.696873, 34.617897, 32.345501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.936512, 34.625755, 32.334938>,  <37.335911, 34.638851, 32.317333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936512, 34.625755, 32.334938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008919, 0.694773, 0.719174,
		-0.054126, 0.718483, -0.693435,
		-0.998494, -0.032741, 0.044014,
		36.636963, 34.615932, 32.348141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984299, 35.316860, 32.292732>,  <37.335911, 34.638851, 32.317333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984299, 35.316860, 32.292732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.752663, 35.073238, 32.509514>,  <36.613682, 34.927067, 32.639584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.752663, 35.073238, 32.509514>,  <36.984299, 35.316860, 32.292732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752663, 35.073238, 32.509514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157108, 0.568927, 0.807242,
		-0.799982, 0.552610, -0.233773,
		-0.579090, -0.609052, 0.541951,
		36.578938, 34.890522, 32.672100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373268, 35.598808, 32.539070>,  <36.984299, 35.316860, 32.292732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373268, 35.598808, 32.539070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.542801, 35.340515, 32.793125>,  <36.644520, 35.185539, 32.945557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.542801, 35.340515, 32.793125>,  <36.373268, 35.598808, 32.539070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542801, 35.340515, 32.793125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204355, 0.751327, 0.627493,
		-0.882386, -0.136159, 0.450395,
		0.423833, -0.645731, 0.635136,
		36.669952, 35.146797, 32.983665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435844, 36.206635, 33.040466>,  <36.373268, 35.598808, 32.539070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435844, 36.206635, 33.040466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.710495, 36.433376, 32.858383>,  <36.875286, 36.569424, 32.749134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.710495, 36.433376, 32.858383>,  <36.435844, 36.206635, 33.040466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710495, 36.433376, 32.858383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642192, 0.179423, -0.745249,
		-0.340777, 0.804039, 0.487229,
		0.686629, 0.566859, -0.455204,
		36.916485, 36.603436, 32.721821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047184, 36.877728, 32.980759>,  <36.435844, 36.206635, 33.040466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047184, 36.877728, 32.980759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.338966, 36.840221, 32.709732>,  <36.514034, 36.817719, 32.547115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.338966, 36.840221, 32.709732>,  <36.047184, 36.877728, 32.980759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338966, 36.840221, 32.709732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664456, 0.138117, -0.734453,
		0.162454, 0.985967, 0.038444,
		0.729457, -0.093770, -0.677569,
		36.557804, 36.812092, 32.506462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949535, 37.500671, 32.552334>,  <36.047184, 36.877728, 32.980759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949535, 37.500671, 32.552334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.174496, 37.253799, 32.332226>,  <36.309471, 37.105675, 32.200161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.174496, 37.253799, 32.332226>,  <35.949535, 37.500671, 32.552334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174496, 37.253799, 32.332226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608207, 0.142066, -0.780962,
		0.560167, 0.773892, -0.295474,
		0.562404, -0.617178, -0.550267,
		36.343216, 37.068645, 32.167145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178017, 37.862713, 31.956890>,  <35.949535, 37.500671, 32.552334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178017, 37.862713, 31.956890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.229298, 37.474316, 31.876160>,  <36.260067, 37.241276, 31.827723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.229298, 37.474316, 31.876160>,  <36.178017, 37.862713, 31.956890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229298, 37.474316, 31.876160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439891, 0.126714, -0.889067,
		0.888853, 0.202763, -0.410886,
		0.128204, -0.970995, -0.201824,
		36.267757, 37.183018, 31.815613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523117, 37.838421, 31.278328>,  <36.178017, 37.862713, 31.956890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523117, 37.838421, 31.278328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.356670, 37.480904, 31.345236>,  <36.256802, 37.266392, 31.385380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.356670, 37.480904, 31.345236>,  <36.523117, 37.838421, 31.278328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356670, 37.480904, 31.345236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339389, -0.018001, -0.940474,
		0.843603, -0.448113, -0.295854,
		-0.416113, -0.893796, 0.167270,
		36.231838, 37.212765, 31.395416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519905, 37.513237, 30.617781>,  <36.523117, 37.838421, 31.278328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519905, 37.513237, 30.617781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.270149, 37.260872, 30.801992>,  <36.120296, 37.109455, 30.912519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.270149, 37.260872, 30.801992>,  <36.519905, 37.513237, 30.617781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270149, 37.260872, 30.801992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494495, -0.137124, -0.858295,
		0.604658, -0.763641, -0.226364,
		-0.624390, -0.630911, 0.460530,
		36.082832, 37.071598, 30.940151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446274, 36.970699, 30.137020>,  <36.519905, 37.513237, 30.617781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446274, 36.970699, 30.137020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.122162, 36.984787, 30.371014>,  <35.927696, 36.993240, 30.511410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.122162, 36.984787, 30.371014>,  <36.446274, 36.970699, 30.137020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122162, 36.984787, 30.371014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585370, -0.000837, -0.810766,
		-0.028083, -0.999378, 0.021308,
		-0.810280, 0.035241, 0.584983,
		35.879078, 36.995354, 30.546509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080688, 36.491932, 29.840633>,  <36.446274, 36.970699, 30.137020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080688, 36.491932, 29.840633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.824223, 36.731644, 30.032368>,  <35.670341, 36.875473, 30.147409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.824223, 36.731644, 30.032368>,  <36.080688, 36.491932, 29.840633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824223, 36.731644, 30.032368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692608, -0.182938, -0.697730,
		-0.330449, -0.779355, 0.532362,
		-0.641168, 0.599283, 0.479336,
		35.631870, 36.911427, 30.176168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521423, 36.255035, 29.594280>,  <36.080688, 36.491932, 29.840633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521423, 36.255035, 29.594280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.392429, 36.596279, 29.758335>,  <35.315033, 36.801025, 29.856768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.392429, 36.596279, 29.758335>,  <35.521423, 36.255035, 29.594280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392429, 36.596279, 29.758335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746015, 0.037636, -0.664864,
		-0.582636, -0.520377, 0.624294,
		-0.322484, 0.853107, 0.410137,
		35.295685, 36.852211, 29.881376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799229, 36.178654, 29.671204>,  <35.521423, 36.255035, 29.594280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799229, 36.178654, 29.671204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.883724, 36.569565, 29.664238>,  <34.934422, 36.804111, 29.660059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.883724, 36.569565, 29.664238>,  <34.799229, 36.178654, 29.671204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883724, 36.569565, 29.664238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804960, 0.163833, -0.570262,
		-0.554452, 0.134479, 0.821278,
		0.211241, 0.977279, -0.017413,
		34.947098, 36.862747, 29.659014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120785, 36.483040, 29.675577>,  <34.799229, 36.178654, 29.671204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120785, 36.483040, 29.675577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.360630, 36.767796, 29.529333>,  <34.504536, 36.938648, 29.441586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.360630, 36.767796, 29.529333>,  <34.120785, 36.483040, 29.675577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360630, 36.767796, 29.529333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618496, 0.122302, -0.776212,
		-0.507865, 0.691556, 0.513637,
		0.599613, 0.711893, -0.365612,
		34.540512, 36.981365, 29.419649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672989, 36.889477, 29.391520>,  <34.120785, 36.483040, 29.675577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672989, 36.889477, 29.391520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.022671, 37.012455, 29.241192>,  <34.232479, 37.086243, 29.150995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.022671, 37.012455, 29.241192>,  <33.672989, 36.889477, 29.391520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022671, 37.012455, 29.241192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426564, 0.116531, -0.896919,
		-0.231961, 0.944403, 0.233018,
		0.874206, 0.307447, -0.375818,
		34.284931, 37.104691, 29.128447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479984, 37.364700, 28.996765>,  <33.672989, 36.889477, 29.391520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479984, 37.364700, 28.996765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.834633, 37.277706, 28.833502>,  <34.047424, 37.225510, 28.735544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.834633, 37.277706, 28.833502>,  <33.479984, 37.364700, 28.996765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834633, 37.277706, 28.833502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366897, 0.206533, -0.907045,
		0.281569, 0.953962, 0.103322,
		0.886626, -0.217487, -0.408159,
		34.100620, 37.212460, 28.711054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592461, 37.741035, 28.418341>,  <33.479984, 37.364700, 28.996765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592461, 37.741035, 28.418341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.864082, 37.455536, 28.349697>,  <34.027054, 37.284237, 28.308512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.864082, 37.455536, 28.349697>,  <33.592461, 37.741035, 28.418341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864082, 37.455536, 28.349697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210939, 0.034194, -0.976901,
		0.703132, 0.699564, -0.127338,
		0.679051, -0.713751, -0.171608,
		34.067799, 37.241409, 28.298214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619068, 38.525642, 28.485916>,  <33.592461, 37.741035, 28.418341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619068, 38.525642, 28.485916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.347488, 38.787601, 28.353170>,  <33.184540, 38.944778, 28.273523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.347488, 38.787601, 28.353170>,  <33.619068, 38.525642, 28.485916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347488, 38.787601, 28.353170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259666, 0.208602, 0.942899,
		0.686733, 0.726354, 0.028426,
		-0.678949, 0.654901, -0.331863,
		33.143803, 38.984074, 28.253611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816330, 39.130840, 28.895586>,  <33.619068, 38.525642, 28.485916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816330, 39.130840, 28.895586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.434479, 39.108612, 28.778553>,  <33.205368, 39.095276, 28.708334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.434479, 39.108612, 28.778553>,  <33.816330, 39.130840, 28.895586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434479, 39.108612, 28.778553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297810, 0.172998, 0.938819,
		-0.001556, 0.983353, -0.181698,
		-0.954624, -0.055573, -0.292583,
		33.148090, 39.091942, 28.690779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503075, 39.693901, 29.200920>,  <33.816330, 39.130840, 28.895586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503075, 39.693901, 29.200920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.191978, 39.461185, 29.105724>,  <33.005322, 39.321556, 29.048607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.191978, 39.461185, 29.105724>,  <33.503075, 39.693901, 29.200920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191978, 39.461185, 29.105724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334584, 0.062640, 0.940282,
		-0.532134, 0.810927, -0.243373,
		-0.777745, -0.581785, -0.237991,
		32.958656, 39.286652, 29.034327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911366, 40.106209, 29.346149>,  <33.503075, 39.693901, 29.200920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911366, 40.106209, 29.346149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.787930, 39.726299, 29.366936>,  <32.713867, 39.498352, 29.379408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.787930, 39.726299, 29.366936>,  <32.911366, 40.106209, 29.346149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787930, 39.726299, 29.366936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314480, 0.153434, 0.936782,
		-0.897704, 0.272743, -0.346034,
		-0.308594, -0.949773, 0.051966,
		32.695351, 39.441368, 29.382526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244617, 40.215389, 29.669161>,  <32.911366, 40.106209, 29.346149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244617, 40.215389, 29.669161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.357761, 39.834026, 29.711117>,  <32.425648, 39.605209, 29.736290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.357761, 39.834026, 29.711117>,  <32.244617, 40.215389, 29.669161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357761, 39.834026, 29.711117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318159, 0.009900, 0.947986,
		-0.904855, -0.301522, -0.300535,
		0.282864, -0.953408, 0.104891,
		32.442619, 39.548004, 29.742584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664215, 39.850639, 30.013651>,  <32.244617, 40.215389, 29.669161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664215, 39.850639, 30.013651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.965794, 39.597565, 30.084389>,  <32.146740, 39.445721, 30.126831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.965794, 39.597565, 30.084389>,  <31.664215, 39.850639, 30.013651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965794, 39.597565, 30.084389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260710, -0.041074, 0.964543,
		-0.602990, -0.773317, -0.195916,
		0.753945, -0.632687, 0.176844,
		32.191978, 39.407757, 30.137442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329609, 39.196117, 30.347713>,  <31.664215, 39.850639, 30.013651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329609, 39.196117, 30.347713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.723886, 39.176422, 30.412188>,  <31.960453, 39.164604, 30.450872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.723886, 39.176422, 30.412188>,  <31.329609, 39.196117, 30.347713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723886, 39.176422, 30.412188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168526, -0.276371, 0.946160,
		-0.002038, -0.959789, -0.280715,
		0.985695, -0.049236, 0.161186,
		32.019596, 39.161652, 30.460543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425501, 38.537292, 30.841158>,  <31.329609, 39.196117, 30.347713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425501, 38.537292, 30.841158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.735531, 38.785694, 30.887838>,  <31.921549, 38.934734, 30.915848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.735531, 38.785694, 30.887838>,  <31.425501, 38.537292, 30.841158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735531, 38.785694, 30.887838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030435, -0.221170, 0.974760,
		0.631139, -0.751958, -0.190323,
		0.775073, 0.621001, 0.116703,
		31.968052, 38.971996, 30.922850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962204, 38.192696, 31.229595>,  <31.425501, 38.537292, 30.841158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962204, 38.192696, 31.229595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.037586, 38.583721, 31.267235>,  <32.082813, 38.818336, 31.289818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.037586, 38.583721, 31.267235>,  <31.962204, 38.192696, 31.229595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037586, 38.583721, 31.267235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041790, -0.103711, 0.993729,
		0.981193, -0.183339, -0.060397,
		0.188454, 0.977564, 0.094099,
		32.094124, 38.876991, 31.295464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530560, 38.231518, 31.748432>,  <31.962204, 38.192696, 31.229595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530560, 38.231518, 31.748432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.344372, 38.585400, 31.738279>,  <32.232658, 38.797729, 31.732187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.344372, 38.585400, 31.738279>,  <32.530560, 38.231518, 31.748432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344372, 38.585400, 31.738279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015853, 0.020339, 0.999667,
		0.884923, 0.465715, 0.004558,
		-0.465468, 0.884701, -0.025381,
		32.204731, 38.850811, 31.730665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745392, 38.390461, 32.379406>,  <32.530560, 38.231518, 31.748432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745392, 38.390461, 32.379406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.456524, 38.653763, 32.294384>,  <32.283203, 38.811745, 32.243370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.456524, 38.653763, 32.294384>,  <32.745392, 38.390461, 32.379406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456524, 38.653763, 32.294384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088900, 0.216413, 0.972246,
		0.685983, 0.721020, -0.097768,
		-0.722167, 0.658252, -0.212554,
		32.239876, 38.851238, 32.230618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952248, 39.108414, 32.653919>,  <32.745392, 38.390461, 32.379406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952248, 39.108414, 32.653919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.558769, 39.054951, 32.605785>,  <32.322681, 39.022873, 32.576904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.558769, 39.054951, 32.605785>,  <32.952248, 39.108414, 32.653919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558769, 39.054951, 32.605785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138258, 0.134102, 0.981275,
		-0.115015, 0.981913, -0.150395,
		-0.983695, -0.133655, -0.120334,
		32.263660, 39.014854, 32.569687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.047943, 39.004490, 24.534296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668266, 38.878719, 24.529011>,  <33.440460, 38.803257, 24.525839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668266, 38.878719, 24.529011>,  <34.047943, 39.004490, 24.534296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668266, 38.878719, 24.529011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105618, 0.278714, 0.954549,
		-0.296457, 0.907442, -0.297762,
		-0.949188, -0.314431, -0.013215,
		33.383511, 38.784389, 24.525045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725719, 39.586910, 24.738007>,  <34.047943, 39.004490, 24.534296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725719, 39.586910, 24.738007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494255, 39.269325, 24.812590>,  <33.355377, 39.078773, 24.857340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494255, 39.269325, 24.812590>,  <33.725719, 39.586910, 24.738007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494255, 39.269325, 24.812590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105577, 0.299623, 0.948198,
		-0.808705, 0.529001, -0.257206,
		-0.578663, -0.793967, 0.186456,
		33.320656, 39.031136, 24.868526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055447, 39.946213, 24.927885>,  <33.725719, 39.586910, 24.738007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055447, 39.946213, 24.927885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070457, 39.568520, 25.058735>,  <33.079464, 39.341904, 25.137245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070457, 39.568520, 25.058735>,  <33.055447, 39.946213, 24.927885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070457, 39.568520, 25.058735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197007, 0.313939, 0.928779,
		-0.979684, -0.099296, -0.174241,
		0.037523, -0.944237, 0.327123,
		33.081715, 39.285248, 25.156872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543644, 39.853554, 25.482302>,  <33.055447, 39.946213, 24.927885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543644, 39.853554, 25.482302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777161, 39.540672, 25.569338>,  <32.917271, 39.352943, 25.621559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777161, 39.540672, 25.569338>,  <32.543644, 39.853554, 25.482302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777161, 39.540672, 25.569338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166077, 0.147283, 0.975052,
		-0.794733, -0.605367, -0.043922,
		0.583796, -0.782201, 0.217588,
		32.952301, 39.306011, 25.634615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296902, 39.671967, 26.056942>,  <32.543644, 39.853554, 25.482302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296902, 39.671967, 26.056942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624500, 39.442852, 26.070566>,  <32.821060, 39.305382, 26.078741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624500, 39.442852, 26.070566>,  <32.296902, 39.671967, 26.056942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624500, 39.442852, 26.070566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051284, -0.013945, 0.998587,
		-0.571505, -0.819584, -0.040796,
		0.818995, -0.572789, 0.034062,
		32.870197, 39.271015, 26.080786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128216, 39.053177, 26.416044>,  <32.296902, 39.671967, 26.056942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128216, 39.053177, 26.416044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520912, 39.113811, 26.462019>,  <32.756531, 39.150192, 26.489603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520912, 39.113811, 26.462019>,  <32.128216, 39.053177, 26.416044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520912, 39.113811, 26.462019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101995, -0.090574, 0.990653,
		0.160582, -0.984285, -0.073459,
		0.981738, 0.151589, 0.114937,
		32.815434, 39.159286, 26.496500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349041, 38.542927, 26.932507>,  <32.128216, 39.053177, 26.416044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349041, 38.542927, 26.932507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633457, 38.824177, 26.930159>,  <32.804108, 38.992928, 26.928749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633457, 38.824177, 26.930159>,  <32.349041, 38.542927, 26.932507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633457, 38.824177, 26.930159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011276, 0.019751, 0.999741,
		0.703059, -0.710793, 0.021972,
		0.711043, 0.703124, -0.005871,
		32.846771, 39.035114, 26.928398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806000, 38.234043, 27.449617>,  <32.349041, 38.542927, 26.932507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806000, 38.234043, 27.449617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882969, 38.625206, 27.416960>,  <32.929150, 38.859905, 27.397366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882969, 38.625206, 27.416960>,  <32.806000, 38.234043, 27.449617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882969, 38.625206, 27.416960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140580, 0.054871, 0.988548,
		0.971191, -0.201692, -0.126916,
		0.192419, 0.977911, -0.081644,
		32.940693, 38.918579, 27.392466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385738, 38.297520, 27.826550>,  <32.806000, 38.234043, 27.449617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385738, 38.297520, 27.826550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246208, 38.671776, 27.805027>,  <33.162491, 38.896328, 27.792112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246208, 38.671776, 27.805027>,  <33.385738, 38.297520, 27.826550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246208, 38.671776, 27.805027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094730, 0.092321, 0.991213,
		0.932386, 0.340667, -0.120837,
		-0.348829, 0.935640, -0.053808,
		33.141560, 38.952469, 27.788885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021839, 37.883312, 27.732121>,  <33.385738, 38.297520, 27.826550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021839, 37.883312, 27.732121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078392, 37.490643, 27.783230>,  <34.112324, 37.255039, 27.813896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078392, 37.490643, 27.783230>,  <34.021839, 37.883312, 27.732121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078392, 37.490643, 27.783230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088258, -0.141057, -0.986060,
		0.986013, 0.128134, -0.106583,
		0.141382, -0.981674, 0.127775,
		34.120808, 37.196140, 27.821562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350281, 37.761860, 27.162228>,  <34.021839, 37.883312, 27.732121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350281, 37.761860, 27.162228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241055, 37.397961, 27.287312>,  <34.175518, 37.179619, 27.362362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241055, 37.397961, 27.287312>,  <34.350281, 37.761860, 27.162228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241055, 37.397961, 27.287312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094218, -0.298211, -0.949839,
		0.957370, -0.288832, -0.004284,
		-0.273066, -0.909751, 0.312712,
		34.159134, 37.125034, 27.381124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860600, 37.337200, 26.911816>,  <34.350281, 37.761860, 27.162228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860600, 37.337200, 26.911816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541718, 37.103123, 26.971165>,  <34.350388, 36.962677, 27.006775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541718, 37.103123, 26.971165>,  <34.860600, 37.337200, 26.911816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541718, 37.103123, 26.971165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087680, -0.355395, -0.930595,
		0.597306, -0.728866, 0.334633,
		-0.797206, -0.585191, 0.148373,
		34.302555, 36.927567, 27.015676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079784, 36.612228, 26.650187>,  <34.860600, 37.337200, 26.911816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079784, 36.612228, 26.650187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679787, 36.612495, 26.648399>,  <34.439789, 36.612656, 26.647327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679787, 36.612495, 26.648399>,  <35.079784, 36.612228, 26.650187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679787, 36.612495, 26.648399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003424, -0.533553, -0.845760,
		-0.002947, -0.845766, 0.533545,
		-0.999990, 0.000665, -0.004468,
		34.379791, 36.612694, 26.647058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902729, 35.959621, 26.475271>,  <35.079784, 36.612228, 26.650187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902729, 35.959621, 26.475271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565804, 36.167347, 26.417551>,  <34.363647, 36.291985, 26.382919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565804, 36.167347, 26.417551>,  <34.902729, 35.959621, 26.475271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565804, 36.167347, 26.417551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175537, -0.517435, -0.837525,
		-0.509591, -0.680136, 0.527003,
		-0.842321, 0.519303, -0.144291,
		34.313110, 36.323143, 26.374260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485260, 35.387650, 26.454462>,  <34.902729, 35.959621, 26.475271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485260, 35.387650, 26.454462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335064, 35.721321, 26.292892>,  <34.244946, 35.921524, 26.195950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335064, 35.721321, 26.292892>,  <34.485260, 35.387650, 26.454462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335064, 35.721321, 26.292892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040347, -0.420691, -0.906306,
		-0.925948, -0.356607, 0.124309,
		-0.375490, 0.834177, -0.403926,
		34.222416, 35.971573, 26.171715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886711, 35.186893, 26.069399>,  <34.485260, 35.387650, 26.454462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886711, 35.186893, 26.069399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012466, 35.533871, 25.915155>,  <34.087921, 35.742058, 25.822609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012466, 35.533871, 25.915155>,  <33.886711, 35.186893, 26.069399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012466, 35.533871, 25.915155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093880, -0.375804, -0.921932,
		-0.944639, 0.326050, -0.036714,
		0.314393, 0.867446, -0.385609,
		34.106785, 35.794106, 25.799473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375099, 35.342133, 25.550388>,  <33.886711, 35.186893, 26.069399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375099, 35.342133, 25.550388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719498, 35.520275, 25.452133>,  <33.926136, 35.627159, 25.393181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719498, 35.520275, 25.452133>,  <33.375099, 35.342133, 25.550388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719498, 35.520275, 25.452133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013418, -0.462907, -0.886305,
		-0.508427, 0.766405, -0.392587,
		0.861000, 0.445354, -0.245638,
		33.977798, 35.653881, 25.378441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273254, 35.470139, 24.958534>,  <33.375099, 35.342133, 25.550388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273254, 35.470139, 24.958534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664280, 35.554279, 24.954050>,  <33.898895, 35.604763, 24.951359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664280, 35.554279, 24.954050>,  <33.273254, 35.470139, 24.958534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664280, 35.554279, 24.954050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017916, -0.136051, -0.990540,
		-0.209887, 0.968112, -0.136767,
		0.977561, 0.210352, -0.011211,
		33.957550, 35.617386, 24.950687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373783, 36.061150, 24.439871>,  <33.273254, 35.470139, 24.958534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373783, 36.061150, 24.439871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713314, 35.856468, 24.493017>,  <33.917030, 35.733658, 24.524904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713314, 35.856468, 24.493017>,  <33.373783, 36.061150, 24.439871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713314, 35.856468, 24.493017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183126, 0.048827, -0.981876,
		0.495944, 0.857772, 0.135152,
		0.848825, -0.511706, 0.132865,
		33.967960, 35.702957, 24.532877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768051, 36.326817, 23.896025>,  <33.373783, 36.061150, 24.439871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768051, 36.326817, 23.896025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930134, 35.978245, 24.006601>,  <34.027386, 35.769104, 24.072948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930134, 35.978245, 24.006601>,  <33.768051, 36.326817, 23.896025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930134, 35.978245, 24.006601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137142, -0.241020, -0.960782,
		0.903879, 0.427230, 0.021846,
		0.405210, -0.871426, 0.276444,
		34.051697, 35.716816, 24.089535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346317, 36.385014, 23.560638>,  <33.768051, 36.326817, 23.896025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346317, 36.385014, 23.560638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285156, 35.998074, 23.641485>,  <34.248459, 35.765907, 23.689993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285156, 35.998074, 23.641485>,  <34.346317, 36.385014, 23.560638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285156, 35.998074, 23.641485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192709, -0.229780, -0.953973,
		0.969270, -0.106916, 0.221552,
		-0.152903, -0.967352, 0.202115,
		34.239285, 35.707867, 23.702120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832554, 36.123333, 23.186991>,  <34.346317, 36.385014, 23.560638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832554, 36.123333, 23.186991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576763, 35.824753, 23.260612>,  <34.423290, 35.645603, 23.304785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576763, 35.824753, 23.260612>,  <34.832554, 36.123333, 23.186991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576763, 35.824753, 23.260612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200540, -0.393066, -0.897376,
		0.742194, -0.536942, 0.401051,
		-0.639478, -0.746453, 0.184052,
		34.384918, 35.600819, 23.315828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162807, 35.594299, 22.918394>,  <34.832554, 36.123333, 23.186991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162807, 35.594299, 22.918394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783787, 35.466888, 22.907936>,  <34.556374, 35.390442, 22.901661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783787, 35.466888, 22.907936>,  <35.162807, 35.594299, 22.918394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783787, 35.466888, 22.907936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200705, -0.529397, -0.824292,
		0.248717, -0.786308, 0.565561,
		-0.947553, -0.318527, -0.026146,
		34.499519, 35.371330, 22.900093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.860060, 32.744370, 24.001760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.152273, 32.977314, 23.859114>,  <30.327602, 33.117081, 23.773525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.152273, 32.977314, 23.859114>,  <29.860060, 32.744370, 24.001760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152273, 32.977314, 23.859114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418075, 0.031497, 0.907866,
		0.539936, -0.812321, -0.220460,
		0.730535, 0.582358, -0.356618,
		30.371433, 33.152023, 23.752129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437799, 32.503014, 24.359200>,  <29.860060, 32.744370, 24.001760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437799, 32.503014, 24.359200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.461714, 32.885487, 24.244555>,  <30.476063, 33.114971, 24.175768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.461714, 32.885487, 24.244555>,  <30.437799, 32.503014, 24.359200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461714, 32.885487, 24.244555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403646, 0.239446, 0.883026,
		0.912960, -0.168484, -0.371642,
		0.059788, 0.956179, -0.286613,
		30.479650, 33.172340, 24.158571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005968, 32.760185, 24.788826>,  <30.437799, 32.503014, 24.359200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005968, 32.760185, 24.788826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.816193, 33.094540, 24.678404>,  <30.702328, 33.295151, 24.612150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.816193, 33.094540, 24.678404>,  <31.005968, 32.760185, 24.788826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816193, 33.094540, 24.678404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134559, 0.378772, 0.915656,
		0.869943, 0.397278, -0.292180,
		-0.474440, 0.835884, -0.276053,
		30.673861, 33.345306, 24.595589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265150, 33.198929, 25.220804>,  <31.005968, 32.760185, 24.788826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265150, 33.198929, 25.220804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.966616, 33.430412, 25.089304>,  <30.787495, 33.569302, 25.010405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.966616, 33.430412, 25.089304>,  <31.265150, 33.198929, 25.220804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966616, 33.430412, 25.089304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050219, 0.541494, 0.839204,
		0.663674, 0.609817, -0.433198,
		-0.746334, 0.578713, -0.328751,
		30.742716, 33.604027, 24.990679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447840, 33.921818, 25.222591>,  <31.265150, 33.198929, 25.220804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447840, 33.921818, 25.222591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.049223, 33.908947, 25.253229>,  <30.810053, 33.901226, 25.271612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.049223, 33.908947, 25.253229>,  <31.447840, 33.921818, 25.222591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049223, 33.908947, 25.253229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060202, 0.355682, 0.932666,
		-0.057253, 0.934053, -0.352515,
		-0.996543, -0.032176, 0.076595,
		30.750259, 33.899296, 25.276207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226759, 34.566483, 25.556465>,  <31.447840, 33.921818, 25.222591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226759, 34.566483, 25.556465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.934965, 34.298386, 25.611052>,  <30.759888, 34.137527, 25.643803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.934965, 34.298386, 25.611052>,  <31.226759, 34.566483, 25.556465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934965, 34.298386, 25.611052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094136, 0.295991, 0.950541,
		-0.677487, 0.680560, -0.279016,
		-0.729486, -0.670245, 0.136465,
		30.716120, 34.097313, 25.651991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723333, 34.874466, 26.026487>,  <31.226759, 34.566483, 25.556465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723333, 34.874466, 26.026487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.633085, 34.484798, 26.030180>,  <30.578938, 34.250996, 26.032396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.633085, 34.484798, 26.030180>,  <30.723333, 34.874466, 26.026487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633085, 34.484798, 26.030180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244595, 0.065816, 0.967389,
		-0.943011, 0.216003, -0.253127,
		-0.225619, -0.974172, 0.009232,
		30.565399, 34.192547, 26.032949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099693, 34.897644, 26.346500>,  <30.723333, 34.874466, 26.026487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099693, 34.897644, 26.346500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.248533, 34.530277, 26.400230>,  <30.337837, 34.309856, 26.432468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.248533, 34.530277, 26.400230>,  <30.099693, 34.897644, 26.346500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248533, 34.530277, 26.400230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031720, 0.132048, 0.990736,
		-0.927650, -0.372915, 0.020003,
		0.372101, -0.918422, 0.134323,
		30.360163, 34.254749, 26.440527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643576, 34.549221, 26.815773>,  <30.099693, 34.897644, 26.346500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643576, 34.549221, 26.815773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.994738, 34.357960, 26.825987>,  <30.205435, 34.243202, 26.832115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.994738, 34.357960, 26.825987>,  <29.643576, 34.549221, 26.815773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994738, 34.357960, 26.825987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014606, 0.026559, 0.999541,
		-0.478616, -0.877873, 0.016333,
		0.877903, -0.478157, 0.025534,
		30.258108, 34.214512, 26.833647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541285, 34.143494, 27.334293>,  <29.643576, 34.549221, 26.815773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541285, 34.143494, 27.334293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.938757, 34.119389, 27.296423>,  <30.177240, 34.104927, 27.273701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.938757, 34.119389, 27.296423>,  <29.541285, 34.143494, 27.334293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938757, 34.119389, 27.296423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085740, -0.136711, 0.986893,
		-0.072412, -0.988776, -0.130681,
		0.993683, -0.060258, -0.094677,
		30.236862, 34.101311, 27.268019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659985, 33.576283, 27.634665>,  <29.541285, 34.143494, 27.334293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659985, 33.576283, 27.634665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.001795, 33.784046, 27.635674>,  <30.206881, 33.908703, 27.636280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.001795, 33.784046, 27.635674>,  <29.659985, 33.576283, 27.634665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001795, 33.784046, 27.635674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101850, -0.172325, 0.979761,
		0.509330, -0.836971, -0.200158,
		0.854523, 0.519407, 0.002525,
		30.258152, 33.939869, 27.636431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027615, 33.183247, 28.062836>,  <29.659985, 33.576283, 27.634665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027615, 33.183247, 28.062836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.213373, 33.537476, 28.058994>,  <30.324829, 33.750015, 28.056690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.213373, 33.537476, 28.058994>,  <30.027615, 33.183247, 28.062836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213373, 33.537476, 28.058994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361237, -0.179509, 0.915032,
		0.808607, -0.428406, -0.403266,
		0.464396, 0.885576, -0.009604,
		30.352692, 33.803150, 28.056112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624300, 33.068279, 28.444191>,  <30.027615, 33.183247, 28.062836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624300, 33.068279, 28.444191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.570398, 33.464516, 28.453777>,  <30.538057, 33.702255, 28.459530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.570398, 33.464516, 28.453777>,  <30.624300, 33.068279, 28.444191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570398, 33.464516, 28.453777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300763, 0.017845, 0.953532,
		0.944130, 0.135702, -0.300338,
		-0.134755, 0.990589, 0.023966,
		30.529972, 33.761692, 28.460968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237299, 33.453487, 28.632812>,  <30.624300, 33.068279, 28.444191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237299, 33.453487, 28.632812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.924585, 33.680210, 28.736763>,  <30.736958, 33.816246, 28.799133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.924585, 33.680210, 28.736763>,  <31.237299, 33.453487, 28.632812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924585, 33.680210, 28.736763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394581, 0.126986, 0.910044,
		0.482823, 0.814002, -0.322928,
		-0.781785, 0.566811, 0.259878,
		30.690050, 33.850254, 28.814726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849438, 33.710503, 28.440174>,  <31.237299, 33.453487, 28.632812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849438, 33.710503, 28.440174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.164101, 33.477730, 28.522667>,  <32.352898, 33.338066, 28.572163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.164101, 33.477730, 28.522667>,  <31.849438, 33.710503, 28.440174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164101, 33.477730, 28.522667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044589, -0.279616, -0.959076,
		0.615780, 0.763659, -0.194014,
		0.786656, -0.581929, 0.206232,
		32.400097, 33.303150, 28.584538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302872, 33.822361, 27.917536>,  <31.849438, 33.710503, 28.440174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302872, 33.822361, 27.917536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.414513, 33.459980, 28.044876>,  <32.481499, 33.242550, 28.121281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.414513, 33.459980, 28.044876>,  <32.302872, 33.822361, 27.917536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414513, 33.459980, 28.044876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192802, -0.271905, -0.942813,
		0.940707, 0.324520, 0.098780,
		0.279103, -0.905955, 0.318351,
		32.498245, 33.188194, 28.140381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009007, 33.740635, 27.702461>,  <32.302872, 33.822361, 27.917536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009007, 33.740635, 27.702461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.840061, 33.382843, 27.761148>,  <32.738693, 33.168167, 27.796360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.840061, 33.382843, 27.761148>,  <33.009007, 33.740635, 27.702461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840061, 33.382843, 27.761148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167364, -0.236035, -0.957223,
		0.890843, -0.379739, 0.249395,
		-0.422361, -0.894475, 0.146716,
		32.713352, 33.114502, 27.805162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378334, 33.266701, 27.298737>,  <33.009007, 33.740635, 27.702461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378334, 33.266701, 27.298737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.051971, 33.051723, 27.384018>,  <32.856155, 32.922737, 27.435186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.051971, 33.051723, 27.384018>,  <33.378334, 33.266701, 27.298737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051971, 33.051723, 27.384018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040595, -0.314588, -0.948360,
		0.576763, -0.782424, 0.234855,
		-0.815902, -0.537445, 0.213205,
		32.807201, 32.890491, 27.447979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578770, 32.491634, 27.178684>,  <33.378334, 33.266701, 27.298737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578770, 32.491634, 27.178684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.180218, 32.516319, 27.155291>,  <32.941086, 32.531132, 27.141254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.180218, 32.516319, 27.155291>,  <33.578770, 32.491634, 27.178684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180218, 32.516319, 27.155291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011135, -0.587240, -0.809336,
		-0.084290, -0.807057, 0.584427,
		-0.996379, 0.061711, -0.058485,
		32.881306, 32.534832, 27.137745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348709, 31.859482, 26.964577>,  <33.578770, 32.491634, 27.178684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348709, 31.859482, 26.964577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.035461, 32.096794, 26.890017>,  <32.847511, 32.239182, 26.845280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.035461, 32.096794, 26.890017>,  <33.348709, 31.859482, 26.964577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035461, 32.096794, 26.890017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192652, -0.516445, -0.834368,
		-0.591279, -0.617498, 0.518734,
		-0.783119, 0.593279, -0.186400,
		32.800526, 32.274776, 26.834097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743931, 31.495724, 26.808985>,  <33.348709, 31.859482, 26.964577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743931, 31.495724, 26.808985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.677628, 31.846087, 26.627741>,  <32.637844, 32.056305, 26.518995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.677628, 31.846087, 26.627741>,  <32.743931, 31.495724, 26.808985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677628, 31.846087, 26.627741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176631, -0.478405, -0.860192,
		-0.970220, -0.062550, 0.234012,
		-0.165757, 0.875909, -0.453110,
		32.627899, 32.108860, 26.491808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127903, 31.362007, 26.419481>,  <32.743931, 31.495724, 26.808985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127903, 31.362007, 26.419481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.306389, 31.680979, 26.257002>,  <32.413483, 31.872362, 26.159513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.306389, 31.680979, 26.257002>,  <32.127903, 31.362007, 26.419481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306389, 31.680979, 26.257002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216198, -0.344392, -0.913593,
		-0.868417, 0.495481, 0.018728,
		0.446219, 0.797429, -0.406198,
		32.440254, 31.920208, 26.135143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672094, 31.523088, 25.892054>,  <32.127903, 31.362007, 26.419481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672094, 31.523088, 25.892054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.019722, 31.686268, 25.780125>,  <32.228298, 31.784176, 25.712967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.019722, 31.686268, 25.780125>,  <31.672094, 31.523088, 25.892054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019722, 31.686268, 25.780125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218642, -0.190653, -0.956999,
		-0.443754, 0.892878, -0.076496,
		0.869068, 0.407946, -0.279824,
		32.280441, 31.808651, 25.696178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465683, 31.978252, 25.342642>,  <31.672094, 31.523088, 25.892054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465683, 31.978252, 25.342642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.852486, 31.894215, 25.285007>,  <32.084568, 31.843792, 25.250427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.852486, 31.894215, 25.285007>,  <31.465683, 31.978252, 25.342642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852486, 31.894215, 25.285007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149873, -0.011804, -0.988635,
		0.206004, 0.977610, -0.042901,
		0.967006, -0.210093, -0.144086,
		32.142586, 31.831186, 25.241781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659105, 32.355247, 24.767286>,  <31.465683, 31.978252, 25.342642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659105, 32.355247, 24.767286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.934839, 32.067272, 24.799547>,  <32.100281, 31.894487, 24.818905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.934839, 32.067272, 24.799547>,  <31.659105, 32.355247, 24.767286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934839, 32.067272, 24.799547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154476, 0.037304, -0.987292,
		0.707781, 0.693034, 0.136928,
		0.689335, -0.719939, 0.080655,
		32.141640, 31.851290, 24.823744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236164, 32.685368, 24.473091>,  <31.659105, 32.355247, 24.767286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236164, 32.685368, 24.473091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.274624, 32.287235, 24.469856>,  <32.297699, 32.048355, 24.467915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.274624, 32.287235, 24.469856>,  <32.236164, 32.685368, 24.473091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274624, 32.287235, 24.469856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090271, 0.016811, -0.995775,
		0.991265, 0.095015, 0.091466,
		0.096152, -0.995334, -0.008087,
		32.303471, 31.988636, 24.467430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822750, 32.451706, 23.996778>,  <32.236164, 32.685368, 24.473091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822750, 32.451706, 23.996778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.615734, 32.111248, 24.031893>,  <32.491524, 31.906973, 24.052961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.615734, 32.111248, 24.031893>,  <32.822750, 32.451706, 23.996778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615734, 32.111248, 24.031893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279976, -0.265393, -0.922594,
		0.808560, -0.452898, 0.375651,
		-0.517536, -0.851146, 0.087786,
		32.460472, 31.855904, 24.058228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123436, 31.927523, 23.428291>,  <32.822750, 32.451706, 23.996778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123436, 31.927523, 23.428291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.781670, 31.748755, 23.534300>,  <32.576611, 31.641493, 23.597904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.781670, 31.748755, 23.534300>,  <33.123436, 31.927523, 23.428291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781670, 31.748755, 23.534300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186170, -0.212870, -0.959180,
		0.485095, -0.868877, 0.098675,
		-0.854414, -0.446923, 0.265021,
		32.525345, 31.614677, 23.613806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677868, 31.647198, 23.774879>,  <33.123436, 31.927523, 23.428291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677868, 31.647198, 23.774879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.018219, 31.783968, 23.615330>,  <34.222427, 31.866030, 23.519600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.018219, 31.783968, 23.615330>,  <33.677868, 31.647198, 23.774879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018219, 31.783968, 23.615330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280184, 0.346908, 0.895071,
		0.444422, -0.873350, 0.199372,
		0.850874, 0.341929, -0.398872,
		34.273479, 31.886547, 23.495668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120304, 31.508888, 24.250450>,  <33.677868, 31.647198, 23.774879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120304, 31.508888, 24.250450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.292805, 31.798443, 24.035038>,  <34.396305, 31.972176, 23.905790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.292805, 31.798443, 24.035038>,  <34.120304, 31.508888, 24.250450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292805, 31.798443, 24.035038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356033, 0.411910, 0.838791,
		0.829014, -0.553463, -0.080092,
		0.431249, 0.723885, -0.538530,
		34.422180, 32.015610, 23.873478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822227, 31.536755, 24.400764>,  <34.120304, 31.508888, 24.250450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822227, 31.536755, 24.400764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.719978, 31.901079, 24.271101>,  <34.658630, 32.119675, 24.193304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.719978, 31.901079, 24.271101>,  <34.822227, 31.536755, 24.400764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719978, 31.901079, 24.271101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378108, 0.402775, 0.833551,
		0.889771, 0.090506, -0.447343,
		-0.255620, 0.910813, -0.324157,
		34.643291, 32.174324, 24.173855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376083, 31.827362, 24.568554>,  <34.822227, 31.536755, 24.400764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376083, 31.827362, 24.568554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.100544, 32.109482, 24.501574>,  <34.935219, 32.278751, 24.461386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.100544, 32.109482, 24.501574>,  <35.376083, 31.827362, 24.568554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100544, 32.109482, 24.501574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368700, 0.539773, 0.756773,
		0.624135, 0.459565, -0.631867,
		-0.688851, 0.705298, -0.167450,
		34.893890, 32.321072, 24.451338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888596, 32.435898, 24.473015>,  <35.376083, 31.827362, 24.568554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888596, 32.435898, 24.473015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.528378, 32.592983, 24.547628>,  <35.312248, 32.687237, 24.592398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.528378, 32.592983, 24.547628>,  <35.888596, 32.435898, 24.473015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528378, 32.592983, 24.547628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331315, 0.342073, 0.879327,
		0.281517, 0.853674, -0.438165,
		-0.900543, 0.392716, 0.186536,
		35.258213, 32.710796, 24.603590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939548, 33.208282, 24.633974>,  <35.888596, 32.435898, 24.473015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939548, 33.208282, 24.633974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.604416, 33.068424, 24.801685>,  <35.403336, 32.984509, 24.902311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.604416, 33.068424, 24.801685>,  <35.939548, 33.208282, 24.633974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604416, 33.068424, 24.801685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305708, 0.335824, 0.890935,
		-0.452311, 0.874627, -0.174475,
		-0.837829, -0.349641, 0.419278,
		35.353065, 32.963531, 24.927469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745148, 33.702797, 25.000025>,  <35.939548, 33.208282, 24.633974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745148, 33.702797, 25.000025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.547001, 33.396042, 25.163240>,  <35.428112, 33.211990, 25.261169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.547001, 33.396042, 25.163240>,  <35.745148, 33.702797, 25.000025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547001, 33.396042, 25.163240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315157, 0.279062, 0.907084,
		-0.809497, 0.577938, 0.103450,
		-0.495369, -0.766884, 0.408041,
		35.398392, 33.165977, 25.285652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464676, 34.009060, 25.547426>,  <35.745148, 33.702797, 25.000025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464676, 34.009060, 25.547426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.461750, 33.615765, 25.620298>,  <35.459995, 33.379787, 25.664022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.461750, 33.615765, 25.620298>,  <35.464676, 34.009060, 25.547426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461750, 33.615765, 25.620298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203518, 0.176911, 0.962955,
		-0.979044, 0.044118, 0.198813,
		-0.007312, -0.983238, 0.182182,
		35.459557, 33.320793, 25.674953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084064, 33.947979, 26.154827>,  <35.464676, 34.009060, 25.547426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084064, 33.947979, 26.154827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.269104, 33.593758, 26.137850>,  <35.380127, 33.381226, 26.127665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.269104, 33.593758, 26.137850>,  <35.084064, 33.947979, 26.154827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269104, 33.593758, 26.137850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210391, 0.063149, 0.975575,
		-0.861242, -0.460229, 0.215525,
		0.462598, -0.885551, -0.042441,
		35.407883, 33.328091, 26.125118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729191, 33.421703, 26.469040>,  <35.084064, 33.947979, 26.154827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729191, 33.421703, 26.469040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.106846, 33.290043, 26.475513>,  <35.333439, 33.211048, 26.479397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.106846, 33.290043, 26.475513>,  <34.729191, 33.421703, 26.469040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106846, 33.290043, 26.475513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098614, -0.235322, 0.966902,
		-0.314452, -0.914484, -0.254636,
		0.944137, -0.329155, 0.016184,
		35.390087, 33.191296, 26.480370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605286, 32.910122, 26.839828>,  <34.729191, 33.421703, 26.469040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605286, 32.910122, 26.839828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.003426, 32.922424, 26.876328>,  <35.242310, 32.929806, 26.898228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.003426, 32.922424, 26.876328>,  <34.605286, 32.910122, 26.839828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003426, 32.922424, 26.876328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066440, -0.466553, 0.881995,
		0.069699, -0.883958, -0.462341,
		0.995353, 0.030756, 0.091248,
		35.302032, 32.931652, 26.903702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753937, 32.379288, 27.237944>,  <34.605286, 32.910122, 26.839828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753937, 32.379288, 27.237944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.083611, 32.603878, 27.267506>,  <35.281414, 32.738632, 27.285244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.083611, 32.603878, 27.267506>,  <34.753937, 32.379288, 27.237944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083611, 32.603878, 27.267506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004865, -0.123478, 0.992335,
		0.566301, -0.818226, -0.099037,
		0.824184, 0.561479, 0.073907,
		35.330864, 32.772324, 27.289679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191048, 31.976259, 27.613029>,  <34.753937, 32.379288, 27.237944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191048, 31.976259, 27.613029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.324745, 32.352291, 27.639935>,  <35.404964, 32.577911, 27.656078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.324745, 32.352291, 27.639935>,  <35.191048, 31.976259, 27.613029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324745, 32.352291, 27.639935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000048, -0.071385, 0.997449,
		0.942485, -0.333392, -0.023905,
		0.334248, 0.940082, 0.067264,
		35.425018, 32.634315, 27.660114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624016, 31.910004, 28.119724>,  <35.191048, 31.976259, 27.613029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624016, 31.910004, 28.119724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.583969, 32.307816, 28.107828>,  <35.559940, 32.546501, 28.100691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.583969, 32.307816, 28.107828>,  <35.624016, 31.910004, 28.119724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583969, 32.307816, 28.107828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080343, 0.037876, 0.996047,
		0.991726, 0.097336, -0.083695,
		-0.100121, 0.994531, -0.029743,
		35.553932, 32.606174, 28.098906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.148571, 34.731003, 22.630610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785473, 34.893150, 22.587391>,  <34.567616, 34.990440, 22.561459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785473, 34.893150, 22.587391>,  <35.148571, 34.731003, 22.630610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785473, 34.893150, 22.587391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139626, -0.534790, -0.833369,
		-0.395607, -0.741399, 0.542053,
		-0.907744, 0.405371, -0.108048,
		34.513149, 35.014763, 22.554976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799206, 34.199436, 22.229454>,  <35.148571, 34.731003, 22.630610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799206, 34.199436, 22.229454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.569660, 34.526447, 22.210175>,  <34.431934, 34.722656, 22.198606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.569660, 34.526447, 22.210175>,  <34.799206, 34.199436, 22.229454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569660, 34.526447, 22.210175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318338, -0.276909, -0.906633,
		-0.754547, -0.504940, 0.419159,
		-0.573864, 0.817531, -0.048199,
		34.397499, 34.771706, 22.195715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153866, 33.984673, 22.031561>,  <34.799206, 34.199436, 22.229454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153866, 33.984673, 22.031561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.158443, 34.375523, 21.946619>,  <34.161190, 34.610031, 21.895655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.158443, 34.375523, 21.946619>,  <34.153866, 33.984673, 22.031561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158443, 34.375523, 21.946619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107030, -0.209950, -0.971836,
		-0.994190, 0.033851, 0.102179,
		0.011445, 0.977126, -0.212353,
		34.161877, 34.668659, 21.882914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659767, 34.049732, 21.563435>,  <34.153866, 33.984673, 22.031561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659767, 34.049732, 21.563435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.883316, 34.378426, 21.518858>,  <34.017445, 34.575642, 21.492111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.883316, 34.378426, 21.518858>,  <33.659767, 34.049732, 21.563435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883316, 34.378426, 21.518858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069708, -0.087361, -0.993735,
		-0.826320, 0.563137, 0.008458,
		0.558870, 0.821733, -0.111443,
		34.050976, 34.624947, 21.485426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399670, 34.389698, 21.075520>,  <33.659767, 34.049732, 21.563435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399670, 34.389698, 21.075520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.771084, 34.537815, 21.086208>,  <33.993931, 34.626686, 21.092621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.771084, 34.537815, 21.086208>,  <33.399670, 34.389698, 21.075520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771084, 34.537815, 21.086208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071933, -0.108829, -0.991454,
		-0.364217, 0.922520, -0.127687,
		0.928532, 0.370289, 0.026722,
		34.049644, 34.648903, 21.094225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447186, 34.733440, 20.424942>,  <33.399670, 34.389698, 21.075520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447186, 34.733440, 20.424942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.828232, 34.704624, 20.543154>,  <34.056858, 34.687336, 20.614080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.828232, 34.704624, 20.543154>,  <33.447186, 34.733440, 20.424942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828232, 34.704624, 20.543154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283626, -0.140736, -0.948551,
		0.109924, 0.987423, -0.113635,
		0.952614, -0.072038, 0.295529,
		34.114017, 34.683014, 20.631813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733524, 35.108658, 19.890642>,  <33.447186, 34.733440, 20.424942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733524, 35.108658, 19.890642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.000858, 34.863976, 20.059946>,  <34.161259, 34.717167, 20.161528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.000858, 34.863976, 20.059946>,  <33.733524, 35.108658, 19.890642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000858, 34.863976, 20.059946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347891, -0.245902, -0.904712,
		0.657496, 0.751898, 0.048461,
		0.668334, -0.611704, 0.423258,
		34.201359, 34.680466, 20.186924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285923, 35.267670, 19.610916>,  <33.733524, 35.108658, 19.890642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285923, 35.267670, 19.610916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.431828, 34.932713, 19.773754>,  <34.519371, 34.731739, 19.871456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.431828, 34.932713, 19.773754>,  <34.285923, 35.267670, 19.610916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431828, 34.932713, 19.773754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594107, -0.127330, -0.794244,
		0.716927, 0.531569, 0.451054,
		0.364763, -0.837390, 0.407095,
		34.541256, 34.681496, 19.895884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939766, 35.263290, 19.493101>,  <34.285923, 35.267670, 19.610916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939766, 35.263290, 19.493101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.844681, 34.881340, 19.564316>,  <34.787628, 34.652168, 19.607044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.844681, 34.881340, 19.564316>,  <34.939766, 35.263290, 19.493101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844681, 34.881340, 19.564316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575390, -0.286102, -0.766206,
		0.782571, -0.079699, 0.617439,
		-0.237716, -0.954879, 0.178038,
		34.773365, 34.594875, 19.617727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562782, 34.926479, 19.476173>,  <34.939766, 35.263290, 19.493101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562782, 34.926479, 19.476173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.279778, 34.666252, 19.365761>,  <35.109974, 34.510117, 19.299513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.279778, 34.666252, 19.365761>,  <35.562782, 34.926479, 19.476173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279778, 34.666252, 19.365761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513197, -0.204440, -0.833566,
		0.485861, -0.731413, 0.478513,
		-0.707509, -0.650569, -0.276029,
		35.067524, 34.471081, 19.282951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870110, 34.177303, 19.347900>,  <35.562782, 34.926479, 19.476173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870110, 34.177303, 19.347900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.523827, 34.237686, 19.157003>,  <35.316055, 34.273918, 19.042465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.523827, 34.237686, 19.157003>,  <35.870110, 34.177303, 19.347900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523827, 34.237686, 19.157003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472187, -0.070075, -0.878709,
		-0.166095, -0.986053, -0.010619,
		-0.865709, 0.150963, -0.477240,
		35.264114, 34.282974, 19.013832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927895, 33.673641, 18.859020>,  <35.870110, 34.177303, 19.347900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927895, 33.673641, 18.859020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.629967, 33.910454, 18.735895>,  <35.451210, 34.052540, 18.662020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.629967, 33.910454, 18.735895>,  <35.927895, 33.673641, 18.859020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629967, 33.910454, 18.735895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462060, 0.124798, -0.878024,
		-0.481402, -0.796195, -0.366506,
		-0.744817, 0.592030, -0.307812,
		35.406521, 34.088062, 18.643551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781799, 33.509258, 18.175125>,  <35.927895, 33.673641, 18.859020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781799, 33.509258, 18.175125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.695850, 33.892509, 18.250834>,  <35.644279, 34.122459, 18.296259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.695850, 33.892509, 18.250834>,  <35.781799, 33.509258, 18.175125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695850, 33.892509, 18.250834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382349, 0.260855, -0.886433,
		-0.898688, -0.118102, -0.422389,
		-0.214872, 0.958127, 0.189271,
		35.631390, 34.179947, 18.307615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319153, 32.964100, 17.913002>,  <35.781799, 33.509258, 18.175125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319153, 32.964100, 17.913002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.023933, 32.742355, 17.759134>,  <34.846802, 32.609310, 17.666813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.023933, 32.742355, 17.759134>,  <35.319153, 32.964100, 17.913002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023933, 32.742355, 17.759134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134974, -0.437277, 0.889140,
		-0.661114, 0.708147, 0.247905,
		-0.738045, -0.554362, -0.384672,
		34.802521, 32.576046, 17.643732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715332, 33.029865, 18.235533>,  <35.319153, 32.964100, 17.913002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715332, 33.029865, 18.235533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.755634, 32.651409, 18.112457>,  <34.779816, 32.424335, 18.038612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.755634, 32.651409, 18.112457>,  <34.715332, 33.029865, 18.235533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755634, 32.651409, 18.112457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235305, -0.323148, 0.916628,
		-0.966685, -0.019956, -0.255190,
		0.100757, -0.946138, -0.307687,
		34.785862, 32.367569, 18.020151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150200, 32.584290, 18.506771>,  <34.715332, 33.029865, 18.235533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150200, 32.584290, 18.506771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.428181, 32.314644, 18.406689>,  <34.594971, 32.152855, 18.346640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.428181, 32.314644, 18.406689>,  <34.150200, 32.584290, 18.506771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428181, 32.314644, 18.406689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013321, -0.359975, 0.932867,
		-0.718931, -0.644967, -0.259145,
		0.694954, -0.674119, -0.250205,
		34.636665, 32.112408, 18.331627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864555, 31.990303, 18.653236>,  <34.150200, 32.584290, 18.506771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864555, 31.990303, 18.653236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.251747, 31.890158, 18.645947>,  <34.484062, 31.830070, 18.641573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.251747, 31.890158, 18.645947>,  <33.864555, 31.990303, 18.653236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251747, 31.890158, 18.645947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081560, -0.382328, 0.920420,
		-0.237407, -0.889462, -0.390506,
		0.967981, -0.250364, -0.018223,
		34.542141, 31.815048, 18.640480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871616, 31.376577, 18.926439>,  <33.864555, 31.990303, 18.653236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871616, 31.376577, 18.926439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.254501, 31.488131, 18.957331>,  <34.484234, 31.555063, 18.975866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.254501, 31.488131, 18.957331>,  <33.871616, 31.376577, 18.926439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254501, 31.488131, 18.957331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028195, -0.355494, 0.934253,
		0.288002, -0.892103, -0.348147,
		0.957215, 0.278883, 0.077230,
		34.541664, 31.571795, 18.980499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149494, 30.776127, 19.145046>,  <33.871616, 31.376577, 18.926439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149494, 30.776127, 19.145046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.389450, 31.085852, 19.225618>,  <34.533424, 31.271687, 19.273962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.389450, 31.085852, 19.225618>,  <34.149494, 30.776127, 19.145046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389450, 31.085852, 19.225618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199187, -0.388371, 0.899718,
		0.774891, -0.499610, -0.387213,
		0.599891, 0.774311, 0.201429,
		34.569416, 31.318146, 19.286047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776886, 30.510153, 19.463791>,  <34.149494, 30.776127, 19.145046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776886, 30.510153, 19.463791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785969, 30.890318, 19.587856>,  <34.791420, 31.118418, 19.662294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785969, 30.890318, 19.587856>,  <34.776886, 30.510153, 19.463791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785969, 30.890318, 19.587856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229010, -0.306939, 0.923766,
		0.973159, 0.050051, -0.224625,
		0.022711, 0.950412, 0.310162,
		34.792782, 31.175442, 19.680904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308086, 30.557199, 19.887526>,  <34.776886, 30.510153, 19.463791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308086, 30.557199, 19.887526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.105106, 30.882940, 20.000183>,  <34.983318, 31.078384, 20.067778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.105106, 30.882940, 20.000183>,  <35.308086, 30.557199, 19.887526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105106, 30.882940, 20.000183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048871, -0.299127, 0.952961,
		0.860294, 0.497345, 0.111994,
		-0.507450, 0.814353, 0.281643,
		34.952869, 31.127247, 20.084677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682171, 30.848490, 20.498352>,  <35.308086, 30.557199, 19.887526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682171, 30.848490, 20.498352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.321201, 31.018623, 20.525864>,  <35.104622, 31.120703, 20.542372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.321201, 31.018623, 20.525864>,  <35.682171, 30.848490, 20.498352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321201, 31.018623, 20.525864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017886, -0.122518, 0.992305,
		0.430487, 0.896706, 0.102955,
		-0.902420, 0.425333, 0.068781,
		35.050476, 31.146223, 20.546497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759285, 31.133703, 21.073172>,  <35.682171, 30.848490, 20.498352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759285, 31.133703, 21.073172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.361969, 31.148548, 21.029341>,  <35.123581, 31.157455, 21.003042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.361969, 31.148548, 21.029341>,  <35.759285, 31.133703, 21.073172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361969, 31.148548, 21.029341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110327, -0.018821, 0.993717,
		0.034817, 0.999134, 0.022790,
		-0.993285, 0.037113, -0.109576,
		35.063984, 31.159681, 20.996468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645355, 31.712315, 21.525429>,  <35.759285, 31.133703, 21.073172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645355, 31.712315, 21.525429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.288605, 31.532200, 21.508471>,  <35.074554, 31.424131, 21.498295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.288605, 31.532200, 21.508471>,  <35.645355, 31.712315, 21.525429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288605, 31.532200, 21.508471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147322, 0.200609, 0.968531,
		-0.427612, 0.870056, -0.245256,
		-0.891877, -0.450287, -0.042396,
		35.021042, 31.397114, 21.495752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172260, 32.233025, 21.649054>,  <35.645355, 31.712315, 21.525429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172260, 32.233025, 21.649054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.975117, 31.892876, 21.722761>,  <34.856831, 31.688786, 21.766985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.975117, 31.892876, 21.722761>,  <35.172260, 32.233025, 21.649054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975117, 31.892876, 21.722761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364062, 0.393885, 0.843987,
		-0.790286, 0.348879, -0.503718,
		-0.492856, -0.850376, 0.184268,
		34.827259, 31.637764, 21.778042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404465, 32.289242, 21.787321>,  <35.172260, 32.233025, 21.649054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404465, 32.289242, 21.787321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.465374, 31.927694, 21.947235>,  <34.501919, 31.710766, 22.043184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.465374, 31.927694, 21.947235>,  <34.404465, 32.289242, 21.787321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465374, 31.927694, 21.947235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464279, 0.291673, 0.836285,
		-0.872500, -0.312959, -0.375233,
		0.152278, -0.903871, 0.399785,
		34.511059, 31.656532, 22.067171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721241, 32.106880, 22.054920>,  <34.404465, 32.289242, 21.787321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721241, 32.106880, 22.054920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.012440, 31.907198, 22.242884>,  <34.187160, 31.787390, 22.355661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.012440, 31.907198, 22.242884>,  <33.721241, 32.106880, 22.054920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012440, 31.907198, 22.242884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324384, 0.353023, 0.877582,
		-0.603978, -0.791311, 0.095068,
		0.728001, -0.499202, 0.469906,
		34.230839, 31.757437, 22.383856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396370, 31.805359, 22.649141>,  <33.721241, 32.106880, 22.054920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396370, 31.805359, 22.649141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788727, 31.842325, 22.717628>,  <34.024139, 31.864504, 22.758720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788727, 31.842325, 22.717628>,  <33.396370, 31.805359, 22.649141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788727, 31.842325, 22.717628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192151, 0.321839, 0.927091,
		0.030569, -0.942274, 0.333445,
		0.980889, 0.092412, 0.171220,
		34.082993, 31.870049, 22.768995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114532, 31.244345, 23.077486>,  <33.396370, 31.805359, 22.649141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114532, 31.244345, 23.077486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.742882, 31.354183, 23.176538>,  <32.519890, 31.420086, 23.235970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.742882, 31.354183, 23.176538>,  <33.114532, 31.244345, 23.077486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742882, 31.354183, 23.176538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324737, -0.285686, -0.901626,
		-0.176839, -0.918139, 0.354610,
		-0.929125, 0.274598, 0.247633,
		32.464146, 31.436562, 23.250828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772095, 30.670532, 22.857912>,  <33.114532, 31.244345, 23.077486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772095, 30.670532, 22.857912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.498455, 30.961363, 22.881142>,  <32.334270, 31.135860, 22.895079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.498455, 30.961363, 22.881142>,  <32.772095, 30.670532, 22.857912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498455, 30.961363, 22.881142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246522, -0.155548, -0.956573,
		-0.686467, -0.668706, 0.285650,
		-0.684098, 0.727074, 0.058072,
		32.293224, 31.179485, 22.898563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266476, 30.447540, 22.510023>,  <32.772095, 30.670532, 22.857912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266476, 30.447540, 22.510023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.179146, 30.836779, 22.539478>,  <32.126747, 31.070322, 22.557152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.179146, 30.836779, 22.539478>,  <32.266476, 30.447540, 22.510023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179146, 30.836779, 22.539478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392215, -0.018402, -0.919689,
		-0.893590, -0.229668, 0.385680,
		-0.218320, 0.973095, 0.073636,
		32.113651, 31.128708, 22.561569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582258, 30.632462, 22.181520>,  <32.266476, 30.447540, 22.510023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582258, 30.632462, 22.181520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.772638, 30.984241, 22.183849>,  <31.886868, 31.195311, 22.185247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.772638, 30.984241, 22.183849>,  <31.582258, 30.632462, 22.181520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772638, 30.984241, 22.183849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176656, 0.102085, -0.978965,
		-0.861547, 0.464912, 0.203948,
		0.475952, 0.879452, 0.005822,
		31.915424, 31.248077, 22.185596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195835, 31.121723, 21.774599>,  <31.582258, 30.632462, 22.181520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195835, 31.121723, 21.774599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.561224, 31.284468, 21.776932>,  <31.780457, 31.382114, 21.778332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.561224, 31.284468, 21.776932>,  <31.195835, 31.121723, 21.774599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561224, 31.284468, 21.776932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134152, 0.314658, -0.939678,
		-0.384152, 0.857587, 0.342012,
		0.913472, 0.406860, 0.005830,
		31.835266, 31.406527, 21.778681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165756, 31.877958, 21.591002>,  <31.195835, 31.121723, 21.774599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165756, 31.877958, 21.591002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.536766, 31.758768, 21.500750>,  <31.759373, 31.687254, 21.446598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.536766, 31.758768, 21.500750>,  <31.165756, 31.877958, 21.591002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536766, 31.758768, 21.500750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100745, 0.382020, -0.918646,
		0.359929, 0.874798, 0.324313,
		0.927524, -0.297975, -0.225632,
		31.815023, 31.669376, 21.433060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483664, 32.463169, 21.200012>,  <31.165756, 31.877958, 21.591002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483664, 32.463169, 21.200012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.790302, 32.215286, 21.132727>,  <31.974285, 32.066555, 21.092356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.790302, 32.215286, 21.132727>,  <31.483664, 32.463169, 21.200012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790302, 32.215286, 21.132727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151087, 0.428678, -0.890734,
		0.624104, 0.657417, 0.422252,
		0.766594, -0.619708, -0.168212,
		32.020279, 32.029373, 21.082264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378237, 33.216129, 21.123425>,  <31.483664, 32.463169, 21.200012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378237, 33.216129, 21.123425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.009724, 33.356037, 21.055428>,  <30.788616, 33.439983, 21.014629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.009724, 33.356037, 21.055428>,  <31.378237, 33.216129, 21.123425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009724, 33.356037, 21.055428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137814, 0.115107, 0.983747,
		0.363654, 0.929736, -0.057843,
		-0.921283, 0.349772, -0.169990,
		30.733339, 33.460968, 21.004431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378136, 33.911095, 21.405375>,  <31.378237, 33.216129, 21.123425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378136, 33.911095, 21.405375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.001547, 33.777290, 21.388731>,  <30.775593, 33.697010, 21.378744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.001547, 33.777290, 21.388731>,  <31.378136, 33.911095, 21.405375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001547, 33.777290, 21.388731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076231, 0.091045, 0.992925,
		-0.328354, 0.937984, -0.111216,
		-0.941474, -0.334509, -0.041608,
		30.719105, 33.676937, 21.376249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970823, 34.406494, 21.704132>,  <31.378136, 33.911095, 21.405375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970823, 34.406494, 21.704132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.776384, 34.057640, 21.726389>,  <30.659721, 33.848328, 21.739742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.776384, 34.057640, 21.726389>,  <30.970823, 34.406494, 21.704132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776384, 34.057640, 21.726389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033662, 0.044938, 0.998422,
		-0.873256, 0.487204, 0.007513,
		-0.486098, -0.872131, 0.055642,
		30.630554, 33.796001, 21.743082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572969, 34.510956, 22.360291>,  <30.970823, 34.406494, 21.704132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572969, 34.510956, 22.360291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.547979, 34.121651, 22.271879>,  <30.532986, 33.888069, 22.218832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.547979, 34.121651, 22.271879>,  <30.572969, 34.510956, 22.360291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547979, 34.121651, 22.271879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173455, -0.207502, 0.962734,
		-0.982858, 0.098487, -0.155853,
		-0.062477, -0.973264, -0.221028,
		30.529236, 33.829670, 22.205570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894445, 34.218258, 22.655928>,  <30.572969, 34.510956, 22.360291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894445, 34.218258, 22.655928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.143354, 33.907520, 22.617384>,  <30.292700, 33.721077, 22.594257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.143354, 33.907520, 22.617384>,  <29.894445, 34.218258, 22.655928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143354, 33.907520, 22.617384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136238, -0.228696, 0.963918,
		-0.770853, -0.586693, -0.248148,
		0.622274, -0.776846, -0.096361,
		30.330036, 33.674465, 22.588476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551727, 33.694260, 22.932894>,  <29.894445, 34.218258, 22.655928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551727, 33.694260, 22.932894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.930601, 33.567917, 22.955097>,  <30.157925, 33.492111, 22.968420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.930601, 33.567917, 22.955097>,  <29.551727, 33.694260, 22.932894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930601, 33.567917, 22.955097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049841, 0.026004, 0.998419,
		-0.316797, -0.948452, 0.008888,
		0.947183, -0.315853, 0.055510,
		30.214756, 33.473160, 22.971750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527935, 33.240559, 23.448650>,  <29.551727, 33.694260, 22.932894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527935, 33.240559, 23.448650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.917814, 33.320297, 23.408201>,  <30.151741, 33.368141, 23.383932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.917814, 33.320297, 23.408201>,  <29.527935, 33.240559, 23.448650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917814, 33.320297, 23.408201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138890, -0.185647, 0.972751,
		0.175141, -0.962183, -0.208637,
		0.974697, 0.199347, -0.101123,
		30.210224, 33.380100, 23.377865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.961601, 36.063229, 18.393347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.269257, 35.811806, 18.439560>,  <32.453850, 35.660954, 18.467287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.269257, 35.811806, 18.439560>,  <31.961601, 36.063229, 18.393347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269257, 35.811806, 18.439560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193392, 0.401217, 0.895335,
		-0.609120, -0.666292, 0.430148,
		0.769138, -0.628554, 0.115533,
		32.499996, 35.623241, 18.474220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827223, 35.663116, 18.881966>,  <31.961601, 36.063229, 18.393347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827223, 35.663116, 18.881966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.224495, 35.681736, 18.839203>,  <32.462856, 35.692909, 18.813545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.224495, 35.681736, 18.839203>,  <31.827223, 35.663116, 18.881966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224495, 35.681736, 18.839203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080450, 0.390120, 0.917243,
		0.084402, -0.919587, 0.383714,
		0.993179, 0.046547, -0.106907,
		32.522449, 35.695702, 18.807131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989492, 35.500488, 19.509296>,  <31.827223, 35.663116, 18.881966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989492, 35.500488, 19.509296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.312283, 35.683758, 19.360237>,  <32.505959, 35.793720, 19.270802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.312283, 35.683758, 19.360237>,  <31.989492, 35.500488, 19.509296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312283, 35.683758, 19.360237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271666, 0.272283, 0.923071,
		0.524394, -0.846131, 0.095255,
		0.806975, 0.458175, -0.372649,
		32.554375, 35.821209, 19.248442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653797, 35.333199, 19.875706>,  <31.989492, 35.500488, 19.509296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653797, 35.333199, 19.875706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.689903, 35.698994, 19.717943>,  <32.711567, 35.918472, 19.623285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.689903, 35.698994, 19.717943>,  <32.653797, 35.333199, 19.875706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689903, 35.698994, 19.717943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031963, 0.393159, 0.918915,
		0.995405, -0.095550, 0.006258,
		0.090263, 0.914492, -0.394407,
		32.716984, 35.973343, 19.599621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085178, 35.616814, 20.359415>,  <32.653797, 35.333199, 19.875706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085178, 35.616814, 20.359415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.012611, 35.930328, 20.121840>,  <32.969070, 36.118439, 19.979294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.012611, 35.930328, 20.121840>,  <33.085178, 35.616814, 20.359415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012611, 35.930328, 20.121840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110155, 0.616357, 0.779724,
		0.977218, 0.076028, -0.198154,
		-0.181415, 0.783788, -0.593940,
		32.958187, 36.165466, 19.943657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695057, 36.042381, 20.419577>,  <33.085178, 35.616814, 20.359415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695057, 36.042381, 20.419577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.385548, 36.275650, 20.320633>,  <33.199841, 36.415611, 20.261267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.385548, 36.275650, 20.320633>,  <33.695057, 36.042381, 20.419577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385548, 36.275650, 20.320633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266710, 0.654113, 0.707815,
		0.574575, 0.481717, -0.661673,
		-0.773776, 0.583168, -0.247358,
		33.153416, 36.450600, 20.246426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915443, 36.717628, 20.487833>,  <33.695057, 36.042381, 20.419577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915443, 36.717628, 20.487833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.516640, 36.748039, 20.482271>,  <33.277359, 36.766285, 20.478933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.516640, 36.748039, 20.482271>,  <33.915443, 36.717628, 20.487833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516640, 36.748039, 20.482271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045469, 0.722487, 0.689887,
		0.062495, 0.687192, -0.723783,
		-0.997009, 0.076024, -0.013906,
		33.217537, 36.770847, 20.478100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812668, 37.408882, 20.511669>,  <33.915443, 36.717628, 20.487833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812668, 37.408882, 20.511669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.477116, 37.242989, 20.652685>,  <33.275784, 37.143452, 20.737295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.477116, 37.242989, 20.652685>,  <33.812668, 37.408882, 20.511669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477116, 37.242989, 20.652685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026882, 0.678444, 0.734160,
		-0.543658, 0.606392, -0.580279,
		-0.838876, -0.414731, 0.352541,
		33.225452, 37.118568, 20.758448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436447, 37.962524, 20.559326>,  <33.812668, 37.408882, 20.511669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436447, 37.962524, 20.559326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.280254, 37.684345, 20.800613>,  <33.186539, 37.517437, 20.945385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.280254, 37.684345, 20.800613>,  <33.436447, 37.962524, 20.559326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280254, 37.684345, 20.800613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090497, 0.681060, 0.726614,
		-0.916151, 0.229141, -0.328879,
		-0.390484, -0.695451, 0.603217,
		33.163109, 37.475712, 20.981579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955952, 38.338615, 20.981874>,  <33.436447, 37.962524, 20.559326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955952, 38.338615, 20.981874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.983093, 38.002293, 21.196697>,  <32.999378, 37.800499, 21.325592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.983093, 38.002293, 21.196697>,  <32.955952, 38.338615, 20.981874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983093, 38.002293, 21.196697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117520, 0.527816, 0.841189,
		-0.990749, -0.120197, -0.062996,
		0.067859, -0.840811, 0.537059,
		33.003452, 37.750050, 21.357815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514439, 38.414566, 21.496469>,  <32.955952, 38.338615, 20.981874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514439, 38.414566, 21.496469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.695953, 38.089836, 21.643448>,  <32.804863, 37.894997, 21.731636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.695953, 38.089836, 21.643448>,  <32.514439, 38.414566, 21.496469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695953, 38.089836, 21.643448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181819, 0.319322, 0.930040,
		-0.872364, -0.488849, -0.002701,
		0.453787, -0.811825, 0.367447,
		32.832088, 37.846287, 21.753681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073074, 38.018192, 22.014950>,  <32.514439, 38.414566, 21.496469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073074, 38.018192, 22.014950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.453655, 37.945679, 22.114454>,  <32.682003, 37.902168, 22.174156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.453655, 37.945679, 22.114454>,  <32.073074, 38.018192, 22.014950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453655, 37.945679, 22.114454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196546, 0.264148, 0.944243,
		-0.236889, -0.947291, 0.215692,
		0.951448, -0.181287, 0.248760,
		32.739090, 37.891293, 22.189083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578556, 37.527401, 22.104275>,  <32.073074, 38.018192, 22.014950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578556, 37.527401, 22.104275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.193655, 37.421059, 22.127567>,  <30.962715, 37.357254, 22.141542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.193655, 37.421059, 22.127567>,  <31.578556, 37.527401, 22.104275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193655, 37.421059, 22.127567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015602, -0.159717, -0.987040,
		0.271714, -0.950689, 0.149540,
		-0.962252, -0.265859, 0.058230,
		30.904980, 37.341301, 22.145037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445612, 36.921535, 21.584215>,  <31.578556, 37.527401, 22.104275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445612, 36.921535, 21.584215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.117104, 37.137493, 21.657997>,  <30.919998, 37.267067, 21.702267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.117104, 37.137493, 21.657997>,  <31.445612, 36.921535, 21.584215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117104, 37.137493, 21.657997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157830, 0.095694, -0.982819,
		-0.548271, -0.836275, 0.006621,
		-0.821273, 0.539896, 0.184455,
		30.870722, 37.299461, 21.713333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828972, 36.594429, 21.405981>,  <31.445612, 36.921535, 21.584215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828972, 36.594429, 21.405981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.697664, 36.972260, 21.406935>,  <30.618879, 37.198959, 21.407507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.697664, 36.972260, 21.406935>,  <30.828972, 36.594429, 21.405981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697664, 36.972260, 21.406935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183387, -0.061255, -0.981131,
		-0.926611, -0.322514, 0.193332,
		-0.328271, 0.944581, 0.002385,
		30.599182, 37.255634, 21.407650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168579, 36.612869, 20.987356>,  <30.828972, 36.594429, 21.405981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168579, 36.612869, 20.987356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.296770, 36.990135, 21.022558>,  <30.373684, 37.216496, 21.043678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.296770, 36.990135, 21.022558>,  <30.168579, 36.612869, 20.987356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296770, 36.990135, 21.022558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304644, 0.190589, -0.933203,
		-0.896932, 0.272259, 0.348407,
		0.320476, 0.943160, 0.088003,
		30.392912, 37.273083, 21.048960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559378, 36.967999, 20.845551>,  <30.168579, 36.612869, 20.987356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559378, 36.967999, 20.845551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.861712, 37.221474, 20.779648>,  <30.043112, 37.373558, 20.740107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.861712, 37.221474, 20.779648>,  <29.559378, 36.967999, 20.845551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861712, 37.221474, 20.779648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370657, 0.206679, -0.905482,
		-0.539745, 0.745465, 0.391098,
		0.755837, 0.633692, -0.164757,
		30.088463, 37.411583, 20.730221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239435, 37.473316, 20.486462>,  <29.559378, 36.967999, 20.845551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239435, 37.473316, 20.486462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.628031, 37.547775, 20.427731>,  <29.861189, 37.592449, 20.392492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.628031, 37.547775, 20.427731>,  <29.239435, 37.473316, 20.486462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628031, 37.547775, 20.427731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170573, 0.118651, -0.978175,
		-0.164660, 0.975332, 0.147019,
		0.971490, 0.186144, -0.146828,
		29.919477, 37.603619, 20.383682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235659, 38.071465, 20.105316>,  <29.239435, 37.473316, 20.486462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235659, 38.071465, 20.105316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.578207, 37.879993, 20.027861>,  <29.783735, 37.765110, 19.981386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.578207, 37.879993, 20.027861>,  <29.235659, 38.071465, 20.105316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578207, 37.879993, 20.027861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240598, -0.038091, -0.969877,
		0.456884, 0.877163, -0.147789,
		0.856370, -0.478679, -0.193640,
		29.835117, 37.736389, 19.969769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368872, 38.256985, 19.414354>,  <29.235659, 38.071465, 20.105316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368872, 38.256985, 19.414354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.621634, 37.949596, 19.454645>,  <29.773291, 37.765163, 19.478819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.621634, 37.949596, 19.454645>,  <29.368872, 38.256985, 19.414354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621634, 37.949596, 19.454645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222659, -0.304479, -0.926129,
		0.742373, 0.562800, -0.363509,
		0.631907, -0.768471, 0.100725,
		29.811205, 37.719055, 19.484863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728825, 38.152554, 18.739183>,  <29.368872, 38.256985, 19.414354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728825, 38.152554, 18.739183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770483, 37.794678, 18.912937>,  <29.795479, 37.579952, 19.017189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770483, 37.794678, 18.912937>,  <29.728825, 38.152554, 18.739183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770483, 37.794678, 18.912937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151875, -0.445943, -0.882082,
		0.982898, 0.025893, -0.182323,
		0.104146, -0.894687, 0.434384,
		29.801727, 37.526272, 19.043253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260290, 37.780865, 18.402176>,  <29.728825, 38.152554, 18.739183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260290, 37.780865, 18.402176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.089447, 37.466557, 18.581123>,  <29.986940, 37.277969, 18.688492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.089447, 37.466557, 18.581123>,  <30.260290, 37.780865, 18.402176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089447, 37.466557, 18.581123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295688, -0.588942, -0.752140,
		0.854486, -0.188964, 0.483886,
		-0.427109, -0.785773, 0.447369,
		29.961315, 37.230824, 18.715334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776688, 37.200958, 18.370535>,  <30.260290, 37.780865, 18.402176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776688, 37.200958, 18.370535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.411375, 37.043354, 18.411850>,  <30.192186, 36.948792, 18.436640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.411375, 37.043354, 18.411850>,  <30.776688, 37.200958, 18.370535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411375, 37.043354, 18.411850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197878, -0.650814, -0.732998,
		0.356031, -0.648996, 0.672343,
		-0.913283, -0.394012, 0.103287,
		30.137390, 36.925152, 18.442837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839582, 36.449951, 18.280890>,  <30.776688, 37.200958, 18.370535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839582, 36.449951, 18.280890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.452902, 36.517086, 18.203617>,  <30.220894, 36.557365, 18.157253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.452902, 36.517086, 18.203617>,  <30.839582, 36.449951, 18.280890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452902, 36.517086, 18.203617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023880, -0.692438, -0.721082,
		-0.254785, -0.701685, 0.665374,
		-0.966703, 0.167832, -0.193179,
		30.162891, 36.567436, 18.145664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506180, 35.819897, 18.059694>,  <30.839582, 36.449951, 18.280890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506180, 35.819897, 18.059694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.225634, 36.067833, 17.918901>,  <30.057306, 36.216595, 17.834427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.225634, 36.067833, 17.918901>,  <30.506180, 35.819897, 18.059694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225634, 36.067833, 17.918901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215325, -0.654966, -0.724330,
		-0.679505, -0.432227, 0.592834,
		-0.701362, 0.619838, -0.351984,
		30.015224, 36.253784, 17.813307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832716, 35.242279, 18.564459>,  <30.506180, 35.819897, 18.059694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832716, 35.242279, 18.564459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.534771, 35.049355, 18.380043>,  <30.356005, 34.933601, 18.269394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.534771, 35.049355, 18.380043>,  <30.832716, 35.242279, 18.564459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534771, 35.049355, 18.380043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203403, -0.493951, 0.845363,
		-0.635458, 0.723457, 0.269823,
		-0.744863, -0.482310, -0.461039,
		30.311312, 34.904663, 18.241732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147667, 35.353622, 18.850288>,  <30.832716, 35.242279, 18.564459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147667, 35.353622, 18.850288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.156782, 34.985638, 18.693752>,  <30.162251, 34.764847, 18.599831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.156782, 34.985638, 18.693752>,  <30.147667, 35.353622, 18.850288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156782, 34.985638, 18.693752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003441, -0.391514, 0.920166,
		-0.999734, -0.019622, -0.012088,
		0.022788, -0.919963, -0.391343,
		30.163618, 34.709648, 18.576349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837351, 34.835831, 19.279028>,  <30.147667, 35.353622, 18.850288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837351, 34.835831, 19.279028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.057623, 34.566769, 19.081327>,  <30.189787, 34.405331, 18.962708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.057623, 34.566769, 19.081327>,  <29.837351, 34.835831, 19.279028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057623, 34.566769, 19.081327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109729, -0.528643, 0.841722,
		-0.827473, -0.517753, -0.217303,
		0.550680, -0.672658, -0.494250,
		30.222828, 34.364971, 18.933052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548096, 34.204571, 19.482283>,  <29.837351, 34.835831, 19.279028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548096, 34.204571, 19.482283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.907757, 34.129570, 19.324110>,  <30.123554, 34.084568, 19.229206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.907757, 34.129570, 19.324110>,  <29.548096, 34.204571, 19.482283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907757, 34.129570, 19.324110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237338, -0.550227, 0.800575,
		-0.367688, -0.813691, -0.450237,
		0.899153, -0.187504, -0.395432,
		30.177502, 34.073318, 19.205481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675858, 33.498268, 19.376490>,  <29.548096, 34.204571, 19.482283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675858, 33.498268, 19.376490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.047384, 33.642315, 19.411409>,  <30.270300, 33.728741, 19.432362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.047384, 33.642315, 19.411409>,  <29.675858, 33.498268, 19.376490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047384, 33.642315, 19.411409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088984, -0.445475, 0.890861,
		0.359702, -0.819677, -0.445808,
		0.928814, 0.360114, 0.087301,
		30.326029, 33.750351, 19.437599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084160, 32.964127, 19.640837>,  <29.675858, 33.498268, 19.376490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084160, 32.964127, 19.640837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.304743, 33.291695, 19.704414>,  <30.437094, 33.488235, 19.742561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.304743, 33.291695, 19.704414>,  <30.084160, 32.964127, 19.640837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304743, 33.291695, 19.704414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252859, -0.345666, 0.903647,
		0.794956, -0.458133, -0.397692,
		0.551459, 0.818920, 0.158946,
		30.470181, 33.537369, 19.752098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675161, 32.722332, 20.075420>,  <30.084160, 32.964127, 19.640837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675161, 32.722332, 20.075420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.663439, 33.121151, 20.103832>,  <30.656404, 33.360443, 20.120880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.663439, 33.121151, 20.103832>,  <30.675161, 32.722332, 20.075420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663439, 33.121151, 20.103832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240410, -0.061944, 0.968693,
		0.970229, 0.045465, -0.237883,
		-0.029307, 0.997043, 0.071030,
		30.654646, 33.420265, 20.125141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162855, 32.748573, 20.568413>,  <30.675161, 32.722332, 20.075420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162855, 32.748573, 20.568413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.978981, 33.103584, 20.581024>,  <30.868656, 33.316589, 20.588591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.978981, 33.103584, 20.581024>,  <31.162855, 32.748573, 20.568413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978981, 33.103584, 20.581024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125435, 0.029739, 0.991656,
		0.879180, 0.459803, -0.124997,
		-0.459684, 0.887523, 0.031530,
		30.841076, 33.369843, 20.590483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954765, 32.769543, 20.711115>,  <31.162855, 32.748573, 20.568413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954765, 32.769543, 20.711115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.040405, 32.380959, 20.670282>,  <32.091789, 32.147808, 20.645782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.040405, 32.380959, 20.670282>,  <31.954765, 32.769543, 20.711115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040405, 32.380959, 20.670282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023693, 0.109640, -0.993689,
		0.976524, 0.210330, 0.046491,
		0.214100, -0.971463, -0.102083,
		32.104637, 32.089520, 20.639658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643269, 32.752789, 20.382320>,  <31.954765, 32.769543, 20.711115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643269, 32.752789, 20.382320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.434216, 32.417812, 20.318377>,  <32.308784, 32.216827, 20.280010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.434216, 32.417812, 20.318377>,  <32.643269, 32.752789, 20.382320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434216, 32.417812, 20.318377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055094, 0.153940, -0.986543,
		0.850777, -0.524405, -0.034316,
		-0.522631, -0.837437, -0.159860,
		32.277428, 32.166580, 20.270418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138218, 32.441574, 19.948746>,  <32.643269, 32.752789, 20.382320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138218, 32.441574, 19.948746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.763474, 32.309662, 19.902205>,  <32.538628, 32.230515, 19.874281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.763474, 32.309662, 19.902205>,  <33.138218, 32.441574, 19.948746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763474, 32.309662, 19.902205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061548, 0.172025, -0.983168,
		0.344247, -0.928252, -0.140865,
		-0.936860, -0.329782, -0.116351,
		32.482414, 32.210728, 19.867300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197964, 31.955000, 19.345654>,  <33.138218, 32.441574, 19.948746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197964, 31.955000, 19.345654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.815594, 32.072212, 19.352926>,  <32.586170, 32.142540, 19.357290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.815594, 32.072212, 19.352926>,  <33.197964, 31.955000, 19.345654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815594, 32.072212, 19.352926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026617, 0.148166, -0.988604,
		-0.292387, -0.944552, -0.149436,
		-0.955930, 0.293032, 0.018181,
		32.528816, 32.160122, 19.358381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883720, 31.619432, 18.783024>,  <33.197964, 31.955000, 19.345654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883720, 31.619432, 18.783024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.629425, 31.920637, 18.850920>,  <32.476849, 32.101360, 18.891657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.629425, 31.920637, 18.850920>,  <32.883720, 31.619432, 18.783024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629425, 31.920637, 18.850920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005820, 0.224566, -0.974442,
		-0.771882, -0.618503, -0.147148,
		-0.635740, 0.753010, 0.169739,
		32.438702, 32.146542, 18.901842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437469, 31.547123, 18.260057>,  <32.883720, 31.619432, 18.783024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437469, 31.547123, 18.260057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.378674, 31.922647, 18.384655>,  <32.343395, 32.147961, 18.459414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.378674, 31.922647, 18.384655>,  <32.437469, 31.547123, 18.260057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378674, 31.922647, 18.384655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001464, 0.315121, -0.949050,
		-0.989137, -0.139047, -0.047695,
		-0.146992, 0.938810, 0.311495,
		32.334576, 32.204292, 18.478104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965628, 31.822557, 17.777805>,  <32.437469, 31.547123, 18.260057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965628, 31.822557, 17.777805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.178143, 32.124348, 17.931950>,  <32.305653, 32.305420, 18.024437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.178143, 32.124348, 17.931950>,  <31.965628, 31.822557, 17.777805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178143, 32.124348, 17.931950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044677, 0.429283, -0.902064,
		-0.846012, 0.496473, 0.194365,
		0.531288, 0.754474, 0.385360,
		32.337528, 32.350689, 18.047558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701611, 32.372219, 17.358366>,  <31.965628, 31.822557, 17.777805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701611, 32.372219, 17.358366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.058201, 32.479103, 17.504719>,  <32.272156, 32.543236, 17.592531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.058201, 32.479103, 17.504719>,  <31.701611, 32.372219, 17.358366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058201, 32.479103, 17.504719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261847, 0.355170, -0.897380,
		-0.369741, 0.895797, 0.246657,
		0.891475, 0.267212, 0.365883,
		32.325642, 32.559265, 17.614483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857925, 33.006355, 16.979322>,  <31.701611, 32.372219, 17.358366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857925, 33.006355, 16.979322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.191936, 32.864285, 17.147408>,  <32.392342, 32.779041, 17.248259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.191936, 32.864285, 17.147408>,  <31.857925, 33.006355, 16.979322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191936, 32.864285, 17.147408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536157, 0.353757, -0.766415,
		0.123560, 0.865277, 0.485827,
		0.835026, -0.355178, 0.420215,
		32.442444, 32.757732, 17.273472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.958622, 33.565388, 33.379509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315479, 33.691067, 33.249672>,  <33.529594, 33.766476, 33.171772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315479, 33.691067, 33.249672>,  <32.958622, 33.565388, 33.379509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315479, 33.691067, 33.249672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358924, 0.056687, -0.931644,
		-0.274319, 0.947664, 0.163346,
		0.892145, 0.314197, -0.324589,
		33.583122, 33.785324, 33.152294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799271, 34.110107, 32.928432>,  <32.958622, 33.565388, 33.379509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799271, 34.110107, 32.928432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.181038, 34.037048, 32.834015>,  <33.410099, 33.993214, 32.777363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.181038, 34.037048, 32.834015>,  <32.799271, 34.110107, 32.928432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181038, 34.037048, 32.834015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194238, 0.220367, -0.955882,
		0.226603, 0.958165, 0.174847,
		0.954423, -0.182644, -0.236048,
		33.467365, 33.982254, 32.763199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929550, 34.439785, 32.375072>,  <32.799271, 34.110107, 32.928432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929550, 34.439785, 32.375072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.237988, 34.187515, 32.340065>,  <33.423050, 34.036152, 32.319061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.237988, 34.187515, 32.340065>,  <32.929550, 34.439785, 32.375072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237988, 34.187515, 32.340065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126210, -0.016668, -0.991864,
		0.624088, 0.775865, -0.092450,
		0.771093, -0.630678, -0.087519,
		33.469315, 33.998310, 32.313808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254063, 34.734478, 31.727041>,  <32.929550, 34.439785, 32.375072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254063, 34.734478, 31.727041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.381733, 34.364498, 31.809593>,  <33.458336, 34.142509, 31.859123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.381733, 34.364498, 31.809593>,  <33.254063, 34.734478, 31.727041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381733, 34.364498, 31.809593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041664, -0.203863, -0.978112,
		0.946779, 0.320790, -0.026532,
		0.319177, -0.924951, 0.206379,
		33.477486, 34.087013, 31.871508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844414, 34.561642, 31.108377>,  <33.254063, 34.734478, 31.727041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844414, 34.561642, 31.108377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.713978, 34.218285, 31.266785>,  <33.635715, 34.012272, 31.361830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.713978, 34.218285, 31.266785>,  <33.844414, 34.561642, 31.108377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713978, 34.218285, 31.266785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011292, -0.422424, -0.906328,
		0.945271, -0.291072, 0.147441,
		-0.326090, -0.858391, 0.396018,
		33.616150, 33.960766, 31.385590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281849, 33.949810, 30.832891>,  <33.844414, 34.561642, 31.108377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281849, 33.949810, 30.832891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.948463, 33.772881, 30.965364>,  <33.748432, 33.666721, 31.044847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.948463, 33.772881, 30.965364>,  <34.281849, 33.949810, 30.832891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948463, 33.772881, 30.965364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075718, -0.502273, -0.861387,
		0.547358, -0.743014, 0.385136,
		-0.833466, -0.442326, 0.331183,
		33.698425, 33.640182, 31.064720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303043, 33.229778, 30.665304>,  <34.281849, 33.949810, 30.832891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303043, 33.229778, 30.665304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918499, 33.328342, 30.714417>,  <33.687775, 33.387482, 30.743883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918499, 33.328342, 30.714417>,  <34.303043, 33.229778, 30.665304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918499, 33.328342, 30.714417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207228, -0.354087, -0.911964,
		-0.181239, -0.902168, 0.391466,
		-0.961358, 0.246406, 0.122780,
		33.630093, 33.402264, 30.751251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910336, 32.685417, 30.420221>,  <34.303043, 33.229778, 30.665304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910336, 32.685417, 30.420221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.646915, 32.986347, 30.427475>,  <33.488865, 33.166904, 30.431828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.646915, 32.986347, 30.427475>,  <33.910336, 32.685417, 30.420221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646915, 32.986347, 30.427475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359979, -0.293767, -0.885503,
		-0.660857, -0.589672, 0.464280,
		-0.658546, 0.752322, 0.018132,
		33.449352, 33.212044, 30.432915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210457, 32.404564, 30.297276>,  <33.910336, 32.685417, 30.420221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210457, 32.404564, 30.297276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.229908, 32.790504, 30.193970>,  <33.241581, 33.022068, 30.131987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.229908, 32.790504, 30.193970>,  <33.210457, 32.404564, 30.297276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229908, 32.790504, 30.193970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446649, -0.210269, -0.869650,
		-0.893386, 0.157645, 0.420724,
		0.048631, 0.964850, -0.258263,
		33.244495, 33.079960, 30.116491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640686, 32.491665, 29.911543>,  <33.210457, 32.404564, 30.297276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640686, 32.491665, 29.911543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797081, 32.849419, 29.824636>,  <32.890919, 33.064072, 29.772491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797081, 32.849419, 29.824636>,  <32.640686, 32.491665, 29.911543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797081, 32.849419, 29.824636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439300, -0.026093, -0.897962,
		-0.808792, 0.446537, 0.382701,
		0.390987, 0.894385, -0.217267,
		32.914375, 33.117733, 29.759457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039486, 32.908638, 29.651386>,  <32.640686, 32.491665, 29.911543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039486, 32.908638, 29.651386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364700, 33.088928, 29.503969>,  <32.559830, 33.197102, 29.415518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364700, 33.088928, 29.503969>,  <32.039486, 32.908638, 29.651386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364700, 33.088928, 29.503969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422543, 0.021312, -0.906092,
		-0.400542, 0.892410, 0.207777,
		0.813034, 0.450723, -0.368545,
		32.608612, 33.224144, 29.393406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815250, 33.391972, 29.188084>,  <32.039486, 32.908638, 29.651386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815250, 33.391972, 29.188084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.198029, 33.323544, 29.094288>,  <32.427696, 33.282486, 29.038010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.198029, 33.323544, 29.094288>,  <31.815250, 33.391972, 29.188084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198029, 33.323544, 29.094288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258718, -0.136450, -0.956267,
		0.131595, 0.975764, -0.174835,
		0.956947, -0.171073, -0.234492,
		32.485111, 33.272221, 29.023941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372772, 34.081146, 29.096827>,  <31.815250, 33.391972, 29.188084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372772, 34.081146, 29.096827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.978714, 34.096561, 29.163761>,  <30.742279, 34.105812, 29.203922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.978714, 34.096561, 29.163761>,  <31.372772, 34.081146, 29.096827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978714, 34.096561, 29.163761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171611, 0.255025, 0.951584,
		-0.005999, 0.966166, -0.257851,
		-0.985147, 0.038542, 0.167335,
		30.683170, 34.108124, 29.213961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220503, 34.807056, 29.319715>,  <31.372772, 34.081146, 29.096827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220503, 34.807056, 29.319715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.903980, 34.600590, 29.450808>,  <30.714066, 34.476711, 29.529463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.903980, 34.600590, 29.450808>,  <31.220503, 34.807056, 29.319715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903980, 34.600590, 29.450808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107313, 0.410448, 0.905548,
		-0.601926, 0.751737, -0.269400,
		-0.791308, -0.516163, 0.327730,
		30.666588, 34.445740, 29.549126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867073, 35.192841, 29.807249>,  <31.220503, 34.807056, 29.319715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867073, 35.192841, 29.807249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.665693, 34.853161, 29.870991>,  <30.544865, 34.649353, 29.909235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.665693, 34.853161, 29.870991>,  <30.867073, 35.192841, 29.807249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665693, 34.853161, 29.870991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074346, 0.141171, 0.987190,
		-0.860819, 0.508850, -0.007938,
		-0.503452, -0.849201, 0.159354,
		30.514658, 34.598400, 29.918797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316799, 35.388790, 30.188950>,  <30.867073, 35.192841, 29.807249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316799, 35.388790, 30.188950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.396238, 35.007202, 30.278845>,  <30.443901, 34.778252, 30.332783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.396238, 35.007202, 30.278845>,  <30.316799, 35.388790, 30.188950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396238, 35.007202, 30.278845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046031, 0.238134, 0.970141,
		-0.979000, -0.182321, 0.091205,
		0.198596, -0.953966, 0.224740,
		30.455818, 34.721012, 30.346268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870377, 35.147270, 30.698271>,  <30.316799, 35.388790, 30.188950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870377, 35.147270, 30.698271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.174070, 34.888344, 30.725237>,  <30.356287, 34.732986, 30.741417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.174070, 34.888344, 30.725237>,  <29.870377, 35.147270, 30.698271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174070, 34.888344, 30.725237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044826, 0.051330, 0.997675,
		-0.649274, -0.760490, 0.009954,
		0.759233, -0.647318, 0.067417,
		30.401840, 34.694149, 30.745462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775677, 34.634029, 31.330118>,  <29.870377, 35.147270, 30.698271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775677, 34.634029, 31.330118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.166439, 34.617393, 31.246281>,  <30.400896, 34.607410, 31.195978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.166439, 34.617393, 31.246281>,  <29.775677, 34.634029, 31.330118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166439, 34.617393, 31.246281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213649, 0.173645, 0.961354,
		-0.003589, -0.983930, 0.178520,
		0.976904, -0.041591, -0.209593,
		30.459511, 34.604916, 31.183403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066126, 34.209503, 31.857042>,  <29.775677, 34.634029, 31.330118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066126, 34.209503, 31.857042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.392189, 34.388309, 31.709694>,  <30.587826, 34.495594, 31.621284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.392189, 34.388309, 31.709694>,  <30.066126, 34.209503, 31.857042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392189, 34.388309, 31.709694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376480, 0.074438, 0.923429,
		0.440209, -0.891423, -0.107614,
		0.815156, 0.447016, -0.368371,
		30.636736, 34.522415, 31.599182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717358, 33.816349, 32.166077>,  <30.066126, 34.209503, 31.857042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717358, 33.816349, 32.166077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.783981, 34.195774, 32.058380>,  <30.823956, 34.423428, 31.993761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.783981, 34.195774, 32.058380>,  <30.717358, 33.816349, 32.166077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783981, 34.195774, 32.058380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337092, 0.201826, 0.919584,
		0.926621, -0.243927, -0.286136,
		0.166561, 0.948560, -0.269242,
		30.833950, 34.480343, 31.977608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960381, 34.029076, 32.749313>,  <30.717358, 33.816349, 32.166077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960381, 34.029076, 32.749313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.953493, 34.384270, 32.565491>,  <30.949362, 34.597385, 32.455196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.953493, 34.384270, 32.565491>,  <30.960381, 34.029076, 32.749313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953493, 34.384270, 32.565491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152392, 0.456586, 0.876530,
		0.988170, -0.054941, -0.143182,
		-0.017218, 0.887981, -0.459557,
		30.948328, 34.650665, 32.427624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572849, 34.389172, 32.980328>,  <30.960381, 34.029076, 32.749313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572849, 34.389172, 32.980328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.317459, 34.671265, 32.857044>,  <31.164225, 34.840523, 32.783073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.317459, 34.671265, 32.857044>,  <31.572849, 34.389172, 32.980328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317459, 34.671265, 32.857044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205001, 0.541821, 0.815110,
		0.741837, 0.457247, -0.490514,
		-0.638477, 0.705235, -0.308207,
		31.125916, 34.882835, 32.764584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922928, 35.177170, 32.994587>,  <31.572849, 34.389172, 32.980328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922928, 35.177170, 32.994587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.524092, 35.186714, 33.023533>,  <31.284790, 35.192440, 33.040901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.524092, 35.186714, 33.023533>,  <31.922928, 35.177170, 32.994587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524092, 35.186714, 33.023533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072065, 0.603951, 0.793757,
		-0.024765, 0.796664, -0.603914,
		-0.997092, 0.023864, 0.072368,
		31.224964, 35.193874, 33.045242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780754, 35.919270, 32.947117>,  <31.922928, 35.177170, 32.994587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780754, 35.919270, 32.947117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.479259, 35.724510, 33.123669>,  <31.298363, 35.607655, 33.229599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.479259, 35.724510, 33.123669>,  <31.780754, 35.919270, 32.947117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479259, 35.724510, 33.123669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046186, 0.709216, 0.703477,
		-0.655552, 0.509850, -0.557050,
		-0.753736, -0.486894, 0.441380,
		31.253139, 35.578442, 33.256084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376143, 36.493458, 33.072140>,  <31.780754, 35.919270, 32.947117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376143, 36.493458, 33.072140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.210524, 36.214893, 33.306599>,  <31.111153, 36.047756, 33.447273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.210524, 36.214893, 33.306599>,  <31.376143, 36.493458, 33.072140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210524, 36.214893, 33.306599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085751, 0.611235, 0.786790,
		-0.906206, 0.376033, -0.193364,
		-0.414049, -0.696413, 0.586151,
		31.086309, 36.005970, 33.482445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848324, 36.833519, 33.479618>,  <31.376143, 36.493458, 33.072140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848324, 36.833519, 33.479618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.000507, 36.522964, 33.680607>,  <31.091818, 36.336632, 33.801201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.000507, 36.522964, 33.680607>,  <30.848324, 36.833519, 33.479618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000507, 36.522964, 33.680607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049852, 0.559757, 0.827156,
		-0.923454, -0.289649, 0.251668,
		0.380457, -0.776386, 0.502470,
		31.114645, 36.290047, 33.831348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567078, 37.453388, 33.223942>,  <30.848324, 36.833519, 33.479618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567078, 37.453388, 33.223942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.736494, 37.809784, 33.289375>,  <30.838144, 38.023621, 33.328636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.736494, 37.809784, 33.289375>,  <30.567078, 37.453388, 33.223942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736494, 37.809784, 33.289375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766109, -0.448670, 0.460187,
		0.483417, -0.069581, -0.872620,
		0.423539, 0.890985, 0.163588,
		30.863556, 38.077080, 33.338451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062212, 37.005753, 32.968948>,  <30.567078, 37.453388, 33.223942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062212, 37.005753, 32.968948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.964298, 37.392010, 33.003849>,  <29.905550, 37.623764, 33.024788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.964298, 37.392010, 33.003849>,  <30.062212, 37.005753, 32.968948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964298, 37.392010, 33.003849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215069, 0.033670, -0.976018,
		-0.945423, -0.257680, 0.199438,
		-0.244786, 0.965644, 0.087252,
		29.890863, 37.681702, 33.030025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264891, 37.183315, 32.773296>,  <30.062212, 37.005753, 32.968948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264891, 37.183315, 32.773296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.588615, 37.408516, 32.706303>,  <29.782850, 37.543636, 32.666107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.588615, 37.408516, 32.706303>,  <29.264891, 37.183315, 32.773296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588615, 37.408516, 32.706303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175683, -0.040075, -0.983631,
		-0.560494, 0.825486, 0.066476,
		0.809310, 0.562998, -0.167486,
		29.831408, 37.577415, 32.656055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012070, 37.696484, 32.264191>,  <29.264891, 37.183315, 32.773296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012070, 37.696484, 32.264191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.409761, 37.675400, 32.226810>,  <29.648376, 37.662750, 32.204384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.409761, 37.675400, 32.226810>,  <29.012070, 37.696484, 32.264191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409761, 37.675400, 32.226810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088494, 0.089608, -0.992038,
		0.060661, 0.994582, 0.084427,
		0.994228, -0.052707, -0.093450,
		29.708031, 37.659588, 32.198776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151197, 38.268219, 31.866604>,  <29.012070, 37.696484, 32.264191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151197, 38.268219, 31.866604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.481863, 38.046970, 31.825256>,  <29.680262, 37.914219, 31.800447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.481863, 38.046970, 31.825256>,  <29.151197, 38.268219, 31.866604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481863, 38.046970, 31.825256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025564, 0.220427, -0.975068,
		0.562118, 0.803409, 0.196359,
		0.826662, -0.553123, -0.103368,
		29.729862, 37.881035, 31.794247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636560, 38.706657, 31.373934>,  <29.151197, 38.268219, 31.866604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636560, 38.706657, 31.373934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.770504, 38.329762, 31.376671>,  <29.850870, 38.103622, 31.378313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.770504, 38.329762, 31.376671>,  <29.636560, 38.706657, 31.373934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770504, 38.329762, 31.376671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003623, -0.008551, -0.999957,
		0.942262, 0.334818, -0.006277,
		0.334857, -0.942244, 0.006844,
		29.870960, 38.047089, 31.378723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352089, 38.658295, 30.943872>,  <29.636560, 38.706657, 31.373934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352089, 38.658295, 30.943872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.154594, 38.310730, 30.957872>,  <30.036098, 38.102192, 30.966272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.154594, 38.310730, 30.957872>,  <30.352089, 38.658295, 30.943872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154594, 38.310730, 30.957872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067824, -0.078601, -0.994596,
		0.866964, -0.488692, 0.097741,
		-0.493734, -0.868909, 0.034999,
		30.006474, 38.050056, 30.968372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772970, 38.165848, 30.628141>,  <30.352089, 38.658295, 30.943872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772970, 38.165848, 30.628141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.411461, 37.996223, 30.604940>,  <30.194555, 37.894451, 30.591021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.411461, 37.996223, 30.604940>,  <30.772970, 38.165848, 30.628141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411461, 37.996223, 30.604940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114244, -0.108410, -0.987520,
		0.412478, -0.899123, 0.146425,
		-0.903776, -0.424059, -0.058003,
		30.140327, 37.869007, 30.587540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848177, 37.585918, 30.235542>,  <30.772970, 38.165848, 30.628141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848177, 37.585918, 30.235542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.450798, 37.624683, 30.211325>,  <30.212370, 37.647942, 30.196795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.450798, 37.624683, 30.211325>,  <30.848177, 37.585918, 30.235542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450798, 37.624683, 30.211325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052166, -0.086751, -0.994863,
		-0.101680, -0.991504, 0.081126,
		-0.993448, 0.096925, -0.060543,
		30.152763, 37.653759, 30.193161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672850, 37.002464, 29.852591>,  <30.848177, 37.585918, 30.235542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672850, 37.002464, 29.852591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.364613, 37.253017, 29.805540>,  <30.179670, 37.403347, 29.777309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.364613, 37.253017, 29.805540>,  <30.672850, 37.002464, 29.852591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364613, 37.253017, 29.805540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049423, -0.125278, -0.990890,
		-0.635409, -0.769385, 0.065581,
		-0.770592, 0.626379, -0.117628,
		30.133434, 37.440929, 29.770252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228058, 36.619125, 29.350819>,  <30.672850, 37.002464, 29.852591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228058, 36.619125, 29.350819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.079794, 36.989914, 29.327715>,  <29.990835, 37.212387, 29.313852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.079794, 36.989914, 29.327715>,  <30.228058, 36.619125, 29.350819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079794, 36.989914, 29.327715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122879, -0.012699, -0.992340,
		-0.920603, -0.374920, -0.109198,
		-0.370662, 0.926970, -0.057761,
		29.968596, 37.268005, 29.310387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551386, 36.633846, 28.827690>,  <30.228058, 36.619125, 29.350819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551386, 36.633846, 28.827690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.709349, 36.998840, 28.870434>,  <29.804127, 37.217838, 28.896080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.709349, 36.998840, 28.870434>,  <29.551386, 36.633846, 28.827690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709349, 36.998840, 28.870434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051472, 0.094157, -0.994226,
		-0.917278, 0.398127, -0.009784,
		0.394907, 0.912485, 0.106860,
		29.827820, 37.272587, 28.902493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165873, 37.149139, 28.363400>,  <29.551386, 36.633846, 28.827690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165873, 37.149139, 28.363400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.499090, 37.360828, 28.427847>,  <29.699020, 37.487843, 28.466516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.499090, 37.360828, 28.427847>,  <29.165873, 37.149139, 28.363400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499090, 37.360828, 28.427847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190052, -0.000263, -0.981774,
		-0.519534, 0.848484, -0.100798,
		0.833045, 0.529222, 0.161120,
		29.749004, 37.519596, 28.476183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155951, 37.754467, 28.000280>,  <29.165873, 37.149139, 28.363400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155951, 37.754467, 28.000280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.541574, 37.662479, 28.053505>,  <29.772949, 37.607285, 28.085440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.541574, 37.662479, 28.053505>,  <29.155951, 37.754467, 28.000280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541574, 37.662479, 28.053505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128621, -0.034262, -0.991102,
		0.232485, 0.972594, -0.003451,
		0.964058, -0.229972, 0.133061,
		29.830791, 37.593487, 28.093424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547579, 38.200943, 27.636902>,  <29.155951, 37.754467, 28.000280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547579, 38.200943, 27.636902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.798223, 37.892143, 27.679571>,  <29.948610, 37.706863, 27.705173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.798223, 37.892143, 27.679571>,  <29.547579, 38.200943, 27.636902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798223, 37.892143, 27.679571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107947, -0.049582, -0.992919,
		0.771820, 0.633689, 0.052266,
		0.626611, -0.771997, 0.106673,
		29.986206, 37.660545, 27.711573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943663, 38.335835, 27.144447>,  <29.547579, 38.200943, 27.636902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943663, 38.335835, 27.144447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.044434, 37.959496, 27.235079>,  <30.104897, 37.733692, 27.289457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.044434, 37.959496, 27.235079>,  <29.943663, 38.335835, 27.144447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044434, 37.959496, 27.235079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110122, -0.204741, -0.972602,
		0.961460, 0.269978, 0.052028,
		0.251929, -0.940847, 0.226580,
		30.120012, 37.677242, 27.303053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503492, 38.160252, 26.708881>,  <29.943663, 38.335835, 27.144447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503492, 38.160252, 26.708881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.369349, 37.795891, 26.805048>,  <30.288862, 37.577274, 26.862747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.369349, 37.795891, 26.805048>,  <30.503492, 38.160252, 26.708881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369349, 37.795891, 26.805048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132232, -0.207155, -0.969330,
		0.932764, -0.356864, -0.050979,
		-0.335359, -0.910898, 0.240416,
		30.268742, 37.522621, 26.877172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001263, 37.611561, 26.423216>,  <30.503492, 38.160252, 26.708881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001263, 37.611561, 26.423216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.665087, 37.404373, 26.486929>,  <30.463381, 37.280060, 26.525158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.665087, 37.404373, 26.486929>,  <31.001263, 37.611561, 26.423216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665087, 37.404373, 26.486929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126995, -0.097493, -0.987100,
		0.526814, -0.849827, 0.016158,
		-0.840440, -0.517966, 0.159284,
		30.412954, 37.248981, 26.534714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110062, 37.094204, 26.049976>,  <31.001263, 37.611561, 26.423216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110062, 37.094204, 26.049976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.711540, 37.086063, 26.083366>,  <30.472427, 37.081181, 26.103401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.711540, 37.086063, 26.083366>,  <31.110062, 37.094204, 26.049976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711540, 37.086063, 26.083366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082968, -0.024601, -0.996249,
		0.022331, -0.999490, 0.022821,
		-0.996302, -0.020354, 0.083475,
		30.412649, 37.079960, 26.108408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888651, 36.460224, 25.664047>,  <31.110062, 37.094204, 26.049976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888651, 36.460224, 25.664047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.565596, 36.695263, 25.683826>,  <30.371761, 36.836288, 25.695694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.565596, 36.695263, 25.683826>,  <30.888651, 36.460224, 25.664047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565596, 36.695263, 25.683826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117271, -0.077873, -0.990042,
		-0.577898, -0.805396, 0.131802,
		-0.807640, 0.587600, 0.049447,
		30.323303, 36.871544, 25.698660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194328, 36.162880, 25.487970>,  <30.888651, 36.460224, 25.664047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194328, 36.162880, 25.487970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.182455, 36.557182, 25.421757>,  <30.175331, 36.793766, 25.382029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.182455, 36.557182, 25.421757>,  <30.194328, 36.162880, 25.487970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182455, 36.557182, 25.421757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176913, -0.168172, -0.969752,
		-0.983779, 0.000499, 0.179385,
		-0.029684, 0.985757, -0.165532,
		30.173550, 36.852909, 25.372097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777546, 36.199734, 24.821415>,  <30.194328, 36.162880, 25.487970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777546, 36.199734, 24.821415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.871082, 36.587635, 24.849392>,  <29.927204, 36.820377, 24.866179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.871082, 36.587635, 24.849392>,  <29.777546, 36.199734, 24.821415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871082, 36.587635, 24.849392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064473, 0.087245, -0.994098,
		-0.970135, 0.227950, 0.082925,
		0.233840, 0.969756, 0.069943,
		29.941235, 36.878563, 24.870375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300751, 36.566574, 24.398348>,  <29.777546, 36.199734, 24.821415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300751, 36.566574, 24.398348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.622772, 36.796242, 24.457977>,  <29.815985, 36.934040, 24.493755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.622772, 36.796242, 24.457977>,  <29.300751, 36.566574, 24.398348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622772, 36.796242, 24.457977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178537, 0.005127, -0.983920,
		-0.565698, 0.818723, -0.098382,
		0.805053, 0.574166, 0.149073,
		29.864288, 36.968491, 24.502699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255251, 37.054764, 23.929832>,  <29.300751, 36.566574, 24.398348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255251, 37.054764, 23.929832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.650105, 37.039883, 23.992031>,  <29.887016, 37.030956, 24.029350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.650105, 37.039883, 23.992031>,  <29.255251, 37.054764, 23.929832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650105, 37.039883, 23.992031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159512, 0.162763, -0.973686,
		0.010911, 0.985964, 0.166603,
		0.987136, -0.037199, 0.155498,
		29.946245, 37.028725, 24.038681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591734, 37.631649, 23.560194>,  <29.255251, 37.054764, 23.929832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591734, 37.631649, 23.560194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.933462, 37.443035, 23.647636>,  <30.138498, 37.329865, 23.700102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.933462, 37.443035, 23.647636>,  <29.591734, 37.631649, 23.560194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933462, 37.443035, 23.647636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352137, 0.215767, -0.910738,
		0.382280, 0.855041, 0.350380,
		0.854319, -0.471539, 0.218608,
		30.189758, 37.301575, 23.713219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093214, 38.033836, 23.366493>,  <29.591734, 37.631649, 23.560194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093214, 38.033836, 23.366493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.276737, 37.678429, 23.364176>,  <30.386850, 37.465183, 23.362785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.276737, 37.678429, 23.364176>,  <30.093214, 38.033836, 23.366493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276737, 37.678429, 23.364176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301348, 0.161738, -0.939697,
		0.835874, 0.429393, 0.341959,
		0.458807, -0.888517, -0.005796,
		30.414379, 37.411873, 23.362436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728994, 38.234921, 23.152851>,  <30.093214, 38.033836, 23.366493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728994, 38.234921, 23.152851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.692398, 37.841423, 23.091030>,  <30.670441, 37.605324, 23.053938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.692398, 37.841423, 23.091030>,  <30.728994, 38.234921, 23.152851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692398, 37.841423, 23.091030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273414, 0.124423, -0.953815,
		0.957536, -0.129521, 0.257585,
		-0.091490, -0.983739, -0.154553,
		30.664951, 37.546303, 23.044664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318007, 37.973156, 22.703684>,  <30.728994, 38.234921, 23.152851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318007, 37.973156, 22.703684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.044804, 37.683769, 22.663498>,  <30.880882, 37.510136, 22.639387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.044804, 37.683769, 22.663498>,  <31.318007, 37.973156, 22.703684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044804, 37.683769, 22.663498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183520, -0.036846, -0.982325,
		0.706979, -0.689374, 0.157937,
		-0.683008, -0.723468, -0.100464,
		30.839901, 37.466728, 22.633358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064793, 37.570324, 22.846876>,  <31.318007, 37.973156, 22.703684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064793, 37.570324, 22.846876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411335, 37.756802, 22.775229>,  <32.619263, 37.868687, 22.732241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411335, 37.756802, 22.775229>,  <32.064793, 37.570324, 22.846876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411335, 37.756802, 22.775229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090986, 0.205318, 0.974457,
		0.491062, -0.860528, 0.135462,
		0.866360, 0.466194, -0.179120,
		32.671242, 37.896660, 22.721493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479568, 37.434956, 23.437988>,  <32.064793, 37.570324, 22.846876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479568, 37.434956, 23.437988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707214, 37.725101, 23.283096>,  <32.843803, 37.899189, 23.190161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707214, 37.725101, 23.283096>,  <32.479568, 37.434956, 23.437988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707214, 37.725101, 23.283096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276174, 0.274951, 0.920940,
		0.774489, -0.631065, -0.043849,
		0.569117, 0.725368, -0.387231,
		32.877949, 37.942711, 23.166927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109196, 37.370296, 23.828259>,  <32.479568, 37.434956, 23.437988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109196, 37.370296, 23.828259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.090366, 37.739216, 23.674816>,  <33.079067, 37.960567, 23.582750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.090366, 37.739216, 23.674816>,  <33.109196, 37.370296, 23.828259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090366, 37.739216, 23.674816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134486, 0.386385, 0.912480,
		0.989797, -0.008635, -0.142225,
		-0.047075, 0.922297, -0.383604,
		33.076244, 38.015903, 23.559734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672310, 37.680153, 24.027130>,  <33.109196, 37.370296, 23.828259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672310, 37.680153, 24.027130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.430374, 37.986206, 23.938828>,  <33.285213, 38.169838, 23.885847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.430374, 37.986206, 23.938828>,  <33.672310, 37.680153, 24.027130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430374, 37.986206, 23.938828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089005, 0.340424, 0.936050,
		0.791356, 0.546514, -0.274003,
		-0.604842, 0.765137, -0.220755,
		33.248920, 38.215748, 23.872601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025021, 38.174488, 24.295601>,  <33.672310, 37.680153, 24.027130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025021, 38.174488, 24.295601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.646915, 38.288494, 24.232038>,  <33.420052, 38.356895, 24.193901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.646915, 38.288494, 24.232038>,  <34.025021, 38.174488, 24.295601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646915, 38.288494, 24.232038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011012, 0.458825, 0.888458,
		0.326132, 0.841574, -0.430571,
		-0.945260, 0.285013, -0.158905,
		33.363338, 38.373997, 24.184366>
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
