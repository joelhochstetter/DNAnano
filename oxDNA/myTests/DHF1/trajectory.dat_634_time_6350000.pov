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
	<3.006342, 2.801696, 3.696991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.849014, 2.534830, 3.443949>,  <2.754617, 2.374710, 3.292124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.849014, 2.534830, 3.443949>,  <3.006342, 2.801696, 3.696991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.849014, 2.534830, 3.443949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651130, 0.687905, -0.320648,
		0.649097, 0.285790, -0.704980,
		-0.393322, -0.667166, -0.632604,
		2.731018, 2.334681, 3.254168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.075274, 3.101872, 2.960781>,  <3.006342, 2.801696, 3.696991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.075274, 3.101872, 2.960781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.798195, 2.819067, 3.017776>,  <2.631947, 2.649384, 3.051973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.798195, 2.819067, 3.017776>,  <3.075274, 3.101872, 2.960781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.798195, 2.819067, 3.017776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693439, 0.598571, -0.401067,
		0.198269, -0.376625, -0.904899,
		-0.692698, -0.707012, 0.142489,
		2.590385, 2.606963, 3.060523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.754227, 2.887493, 2.354246>,  <3.075274, 3.101872, 2.960781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.754227, 2.887493, 2.354246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.499256, 2.879068, 2.662335>,  <2.346273, 2.874014, 2.847188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.499256, 2.879068, 2.662335>,  <2.754227, 2.887493, 2.354246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.499256, 2.879068, 2.662335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572381, 0.682140, -0.455044,
		-0.515815, -0.730918, -0.446870,
		-0.637428, -0.021061, 0.770222,
		2.308028, 2.872750, 2.893401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.035110, 2.903630, 2.158338>,  <2.754227, 2.887493, 2.354246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.035110, 2.903630, 2.158338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.054798, 3.076906, 2.518321>,  <2.066611, 3.180872, 2.734310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.054798, 3.076906, 2.518321>,  <2.035110, 2.903630, 2.158338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.054798, 3.076906, 2.518321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496367, 0.792511, -0.354325,
		-0.866716, -0.429269, 0.254030,
		0.049221, 0.433191, 0.899957,
		2.069564, 3.206863, 2.788308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.319733, 3.113281, 2.319772>,  <2.035110, 2.903630, 2.158338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.319733, 3.113281, 2.319772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.545929, 3.350668, 2.548864>,  <1.681646, 3.493100, 2.686319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.545929, 3.350668, 2.548864>,  <1.319733, 3.113281, 2.319772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.545929, 3.350668, 2.548864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630131, 0.758922, -0.164236,
		-0.532126, -0.268022, 0.803123,
		0.565489, 0.593467, 0.572730,
		1.715576, 3.528708, 2.720683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.938580, 3.516696, 2.936942>,  <1.319733, 3.113281, 2.319772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.938580, 3.516696, 2.936942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.271576, 3.721827, 2.853068>,  <1.471374, 3.844905, 2.802744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.271576, 3.721827, 2.853068>,  <0.938580, 3.516696, 2.936942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.271576, 3.721827, 2.853068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546171, 0.823178, -0.155159,
		0.093038, 0.243692, 0.965380,
		0.832490, 0.512827, -0.209684,
		1.521323, 3.875675, 2.790163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.925599, 4.140060, 3.405169>,  <0.938580, 3.516696, 2.936942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.925599, 4.140060, 3.405169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.167850, 4.228998, 3.099548>,  <1.313202, 4.282361, 2.916175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.167850, 4.228998, 3.099548>,  <0.925599, 4.140060, 3.405169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.167850, 4.228998, 3.099548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532208, 0.826996, -0.181196,
		0.591580, 0.516373, 0.619187,
		0.605630, 0.222344, -0.764052,
		1.349539, 4.295702, 2.870332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.051616, 4.873192, 3.511832>,  <0.925599, 4.140060, 3.405169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.051616, 4.873192, 3.511832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.146717, 4.783407, 3.133818>,  <1.203778, 4.729537, 2.907009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.146717, 4.783407, 3.133818>,  <1.051616, 4.873192, 3.511832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.146717, 4.783407, 3.133818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377862, 0.874923, -0.302871,
		0.894815, 0.429101, 0.123199,
		0.237752, -0.224461, -0.945035,
		1.218043, 4.716069, 2.850307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.268230, 5.498394, 2.316696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.594353, 5.549134, 2.090712>,  <0.790027, 5.579579, 1.955121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.594353, 5.549134, 2.090712>,  <0.268230, 5.498394, 2.316696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.594353, 5.549134, 2.090712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232300, -0.965402, 0.118473,
		-0.530386, -0.227832, -0.816568,
		0.815308, 0.126852, -0.564961,
		0.838945, 5.587190, 1.921223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.361158, 4.890446, 1.866344>,  <0.268230, 5.498394, 2.316696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.361158, 4.890446, 1.866344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.709618, 5.076895, 1.928094>,  <0.918693, 5.188764, 1.965144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.709618, 5.076895, 1.928094>,  <0.361158, 4.890446, 1.866344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.709618, 5.076895, 1.928094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429790, -0.875886, 0.219327,
		0.237447, -0.124718, -0.963361,
		0.871148, 0.466122, 0.154374,
		0.970962, 5.216731, 1.974406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.009556, 4.572775, 1.521008>,  <0.361158, 4.890446, 1.866344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.009556, 4.572775, 1.521008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.116028, 4.762444, 1.856700>,  <1.179911, 4.876246, 2.058116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.116028, 4.762444, 1.856700>,  <1.009556, 4.572775, 1.521008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.116028, 4.762444, 1.856700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442654, -0.833539, 0.330560,
		0.856275, 0.283501, -0.431765,
		0.266179, 0.474172, 0.839231,
		1.195882, 4.904696, 2.108470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.737286, 4.529030, 1.618526>,  <1.009556, 4.572775, 1.521008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.737286, 4.529030, 1.618526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.594383, 4.590428, 1.987049>,  <1.508641, 4.627267, 2.208163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.594383, 4.590428, 1.987049>,  <1.737286, 4.529030, 1.618526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.594383, 4.590428, 1.987049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517723, -0.788453, 0.332120,
		0.777386, 0.595634, 0.202212,
		-0.357257, 0.153496, 0.921307,
		1.487206, 4.636477, 2.263441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.305508, 4.512611, 2.027469>,  <1.737286, 4.529030, 1.618526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.305508, 4.512611, 2.027469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.005493, 4.462561, 2.287250>,  <1.825484, 4.432530, 2.443119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.005493, 4.462561, 2.287250>,  <2.305508, 4.512611, 2.027469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.005493, 4.462561, 2.287250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514204, -0.727901, 0.453601,
		0.415980, 0.674169, 0.610293,
		-0.750036, -0.125126, 0.649453,
		1.780482, 4.425023, 2.482086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.596325, 4.557341, 2.590436>,  <2.305508, 4.512611, 2.027469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.596325, 4.557341, 2.590436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.263229, 4.343169, 2.646810>,  <2.063372, 4.214666, 2.680634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.263229, 4.343169, 2.646810>,  <2.596325, 4.557341, 2.590436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.263229, 4.343169, 2.646810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537420, -0.720467, 0.438300,
		-0.133139, 0.440731, 0.887711,
		-0.832739, -0.535428, 0.140935,
		2.013408, 4.182541, 2.689090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.642706, 4.234885, 3.384895>,  <2.596325, 4.557341, 2.590436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.642706, 4.234885, 3.384895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.373917, 4.024048, 3.176809>,  <2.212643, 3.897546, 3.051957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.373917, 4.024048, 3.176809>,  <2.642706, 4.234885, 3.384895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.373917, 4.024048, 3.176809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426928, -0.849690, 0.309450,
		-0.605131, -0.014152, 0.796000,
		-0.671974, -0.527093, -0.520216,
		2.172324, 3.865920, 3.020744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.136167, 3.782802, 3.895390>,  <2.642706, 4.234885, 3.384895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.136167, 3.782802, 3.895390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.179138, 3.629724, 3.528347>,  <2.204921, 3.537877, 3.308121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.179138, 3.629724, 3.528347>,  <2.136167, 3.782802, 3.895390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.179138, 3.629724, 3.528347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303103, -0.866405, 0.396826,
		-0.946883, -0.320760, 0.022920,
		0.107427, -0.382695, -0.917607,
		2.211366, 3.514915, 3.253065>
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
