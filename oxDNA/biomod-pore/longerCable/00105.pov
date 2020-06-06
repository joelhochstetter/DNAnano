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
	<23.903805, 35.075783, 35.198624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202721, 35.338249, 35.156666>,  <24.382071, 35.495728, 35.131493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202721, 35.338249, 35.156666>,  <23.903805, 35.075783, 35.198624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.202721, 35.338249, 35.156666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610208, -0.740126, -0.282596,
		-0.263062, 0.147176, -0.953487,
		0.747292, 0.656165, -0.104891,
		24.426908, 35.535099, 35.125198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.274429, 34.877586, 34.605968>,  <23.903805, 35.075783, 35.198624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.274429, 34.877586, 34.605968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532084, 35.094154, 34.822102>,  <24.686676, 35.224094, 34.951782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532084, 35.094154, 34.822102>,  <24.274429, 34.877586, 34.605968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532084, 35.094154, 34.822102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701045, -0.700438, -0.133875,
		0.305984, 0.465028, -0.830736,
		0.644135, 0.541420, 0.540328,
		24.725325, 35.256580, 34.984200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.969400, 35.028217, 34.152512>,  <24.274429, 34.877586, 34.605968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.969400, 35.028217, 34.152512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.011158, 35.015644, 34.550129>,  <25.036213, 35.008099, 34.788700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.011158, 35.015644, 34.550129>,  <24.969400, 35.028217, 34.152512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.011158, 35.015644, 34.550129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685957, -0.721434, -0.094851,
		0.720115, 0.691770, -0.053751,
		0.104393, -0.031432, 0.994039,
		25.042477, 35.006214, 34.848339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658209, 34.927513, 34.428707>,  <24.969400, 35.028217, 34.152512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658209, 34.927513, 34.428707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474743, 34.783005, 34.753448>,  <25.364662, 34.696301, 34.948292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474743, 34.783005, 34.753448>,  <25.658209, 34.927513, 34.428707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.474743, 34.783005, 34.753448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758409, -0.635267, 0.145779,
		0.463078, 0.682581, 0.565369,
		-0.458666, -0.361274, 0.811854,
		25.337143, 34.674622, 34.997005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092024, 34.794556, 34.978298>,  <25.658209, 34.927513, 34.428707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092024, 34.794556, 34.978298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801086, 34.539024, 35.078594>,  <25.626524, 34.385704, 35.138771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801086, 34.539024, 35.078594>,  <26.092024, 34.794556, 34.978298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801086, 34.539024, 35.078594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681788, -0.714338, 0.157757,
		0.078334, 0.285696, 0.955113,
		-0.727344, -0.638827, 0.250741,
		25.582884, 34.347378, 35.153816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165264, 34.534508, 35.689270>,  <26.092024, 34.794556, 34.978298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165264, 34.534508, 35.689270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953573, 34.268467, 35.478539>,  <25.826559, 34.108841, 35.352100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953573, 34.268467, 35.478539>,  <26.165264, 34.534508, 35.689270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953573, 34.268467, 35.478539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718397, -0.681631, 0.138870,
		-0.451468, -0.304981, 0.838548,
		-0.529227, -0.665106, -0.526832,
		25.794806, 34.068935, 35.320488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.911098, 34.774887, 35.542847>,  <26.165264, 34.534508, 35.689270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.911098, 34.774887, 35.542847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262880, 34.668053, 35.700439>,  <27.473949, 34.603951, 35.794994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262880, 34.668053, 35.700439>,  <26.911098, 34.774887, 35.542847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262880, 34.668053, 35.700439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033216, 0.860146, 0.508965,
		-0.474819, -0.434525, 0.765333,
		0.879456, -0.267088, 0.393981,
		27.526718, 34.587925, 35.818634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857817, 34.632175, 36.331589>,  <26.911098, 34.774887, 35.542847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.857817, 34.632175, 36.331589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204082, 34.768711, 36.185101>,  <27.411842, 34.850632, 36.097210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204082, 34.768711, 36.185101>,  <26.857817, 34.632175, 36.331589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204082, 34.768711, 36.185101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235765, 0.923282, 0.303257,
		0.441635, -0.176177, 0.879727,
		0.865663, 0.341337, -0.366217,
		27.463781, 34.871113, 36.075233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085238, 35.017605, 36.940865>,  <26.857817, 34.632175, 36.331589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085238, 35.017605, 36.940865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318840, 35.139668, 36.639980>,  <27.459002, 35.212906, 36.459450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318840, 35.139668, 36.639980>,  <27.085238, 35.017605, 36.940865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318840, 35.139668, 36.639980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004521, 0.927859, 0.372903,
		0.811735, -0.214378, 0.543256,
		0.584008, 0.305155, -0.752207,
		27.494041, 35.231213, 36.414318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782829, 35.191109, 37.209133>,  <27.085238, 35.017605, 36.940865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782829, 35.191109, 37.209133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750120, 35.391575, 36.864544>,  <27.730495, 35.511856, 36.657791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750120, 35.391575, 36.864544>,  <27.782829, 35.191109, 37.209133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750120, 35.391575, 36.864544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257936, 0.845564, 0.467429,
		0.962695, -0.183983, -0.198414,
		-0.081773, 0.501170, -0.861477,
		27.725588, 35.541927, 36.606102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451347, 35.534470, 37.203407>,  <27.782829, 35.191109, 37.209133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451347, 35.534470, 37.203407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212395, 35.720886, 36.942352>,  <28.069023, 35.832737, 36.785721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212395, 35.720886, 36.942352>,  <28.451347, 35.534470, 37.203407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212395, 35.720886, 36.942352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234685, 0.879773, 0.413427,
		0.766850, 0.093809, -0.634934,
		-0.597381, 0.466046, -0.652639,
		28.033180, 35.860699, 36.746559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735256, 36.230881, 37.010433>,  <28.451347, 35.534470, 37.203407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735256, 36.230881, 37.010433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341949, 36.214062, 36.939529>,  <28.105967, 36.203972, 36.896988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341949, 36.214062, 36.939529>,  <28.735256, 36.230881, 37.010433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341949, 36.214062, 36.939529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097033, 0.944376, 0.314227,
		0.154190, 0.326168, -0.932652,
		-0.983265, -0.042047, -0.177262,
		28.046970, 36.201447, 36.886353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542662, 36.799271, 36.664597>,  <28.735256, 36.230881, 37.010433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542662, 36.799271, 36.664597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228083, 36.677032, 36.879303>,  <28.039335, 36.603691, 37.008125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228083, 36.677032, 36.879303>,  <28.542662, 36.799271, 36.664597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228083, 36.677032, 36.879303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069302, 0.907200, 0.414953,
		-0.613756, 0.289140, -0.734644,
		-0.786448, -0.305592, 0.536761,
		27.992147, 36.585354, 37.040333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891607, 37.288906, 36.540722>,  <28.542662, 36.799271, 36.664597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891607, 37.288906, 36.540722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914875, 37.094688, 36.889633>,  <27.928835, 36.978157, 37.098980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914875, 37.094688, 36.889633>,  <27.891607, 37.288906, 36.540722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914875, 37.094688, 36.889633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092368, 0.872624, 0.479579,
		-0.994024, 0.052674, 0.095608,
		0.058168, -0.485544, 0.872275,
		27.932325, 36.949024, 37.151314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395420, 37.470150, 37.097775>,  <27.891607, 37.288906, 36.540722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395420, 37.470150, 37.097775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715786, 37.335392, 37.295780>,  <27.908005, 37.254539, 37.414585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715786, 37.335392, 37.295780>,  <27.395420, 37.470150, 37.097775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715786, 37.335392, 37.295780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012712, 0.836090, 0.548445,
		-0.598645, -0.432965, 0.673918,
		0.800914, -0.336891, 0.495017,
		27.956060, 37.234325, 37.444286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978556, 37.019455, 36.504868>,  <27.395420, 37.470150, 37.097775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978556, 37.019455, 36.504868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007566, 36.628651, 36.424667>,  <27.024973, 36.394169, 36.376549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007566, 36.628651, 36.424667>,  <26.978556, 37.019455, 36.504868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007566, 36.628651, 36.424667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783331, -0.180232, 0.594902,
		-0.617359, 0.113909, -0.778391,
		0.072526, -0.977006, -0.200496,
		27.029324, 36.335548, 36.364517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218006, 36.493820, 35.915897>,  <26.978556, 37.019455, 36.504868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218006, 36.493820, 35.915897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478779, 36.295696, 36.145557>,  <27.635242, 36.176823, 36.283356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478779, 36.295696, 36.145557>,  <27.218006, 36.493820, 35.915897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478779, 36.295696, 36.145557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074875, -0.795533, -0.601266,
		0.754570, 0.348996, -0.555721,
		0.651934, -0.495307, 0.574154,
		27.674358, 36.147102, 36.317802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719965, 36.179073, 35.500225>,  <27.218006, 36.493820, 35.915897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719965, 36.179073, 35.500225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717169, 35.990391, 35.852917>,  <27.715490, 35.877182, 36.064533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717169, 35.990391, 35.852917>,  <27.719965, 36.179073, 35.500225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717169, 35.990391, 35.852917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088871, -0.877968, -0.470398,
		0.996019, -0.081649, -0.035783,
		-0.006991, -0.471705, 0.881729,
		27.715071, 35.848881, 36.117435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259987, 35.602806, 35.393974>,  <27.719965, 36.179073, 35.500225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259987, 35.602806, 35.393974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019779, 35.499268, 35.696598>,  <27.875654, 35.437145, 35.878170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019779, 35.499268, 35.696598>,  <28.259987, 35.602806, 35.393974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019779, 35.499268, 35.696598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049095, -0.932434, -0.357990,
		0.798102, -0.252123, 0.547236,
		-0.600519, -0.258846, 0.756555,
		27.839622, 35.421616, 35.923565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656176, 35.227848, 35.836811>,  <28.259987, 35.602806, 35.393974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656176, 35.227848, 35.836811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276352, 35.111515, 35.883728>,  <28.048458, 35.041718, 35.911877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276352, 35.111515, 35.883728>,  <28.656176, 35.227848, 35.836811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276352, 35.111515, 35.883728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229756, -0.899771, -0.370979,
		0.213429, -0.325317, 0.921204,
		-0.949558, -0.290829, 0.117294,
		27.991484, 35.024265, 35.918915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589808, 34.582932, 36.310097>,  <28.656176, 35.227848, 35.836811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589808, 34.582932, 36.310097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285631, 34.612778, 36.052055>,  <28.103125, 34.630684, 35.897228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285631, 34.612778, 36.052055>,  <28.589808, 34.582932, 36.310097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285631, 34.612778, 36.052055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117966, -0.960980, -0.250201,
		-0.638602, -0.266364, 0.721968,
		-0.760441, 0.074612, -0.645106,
		28.057499, 34.635162, 35.858524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179041, 34.025299, 36.296387>,  <28.589808, 34.582932, 36.310097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179041, 34.025299, 36.296387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041977, 34.146935, 35.940834>,  <27.959740, 34.219913, 35.727501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041977, 34.146935, 35.940834>,  <28.179041, 34.025299, 36.296387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041977, 34.146935, 35.940834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020499, -0.948361, -0.316530,
		-0.939235, -0.090241, 0.331200,
		-0.342661, 0.304085, -0.888884,
		27.939180, 34.238159, 35.674168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504969, 34.013573, 36.988052>,  <28.179041, 34.025299, 36.296387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504969, 34.013573, 36.988052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255543, 34.103329, 37.287601>,  <28.105886, 34.157181, 37.467331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255543, 34.103329, 37.287601>,  <28.504969, 34.013573, 36.988052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255543, 34.103329, 37.287601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483256, -0.642343, 0.594861,
		0.614516, 0.732833, 0.292105,
		-0.623565, 0.224391, 0.748876,
		28.068474, 34.170647, 37.512264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893707, 34.253284, 37.542225>,  <28.504969, 34.013573, 36.988052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893707, 34.253284, 37.542225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584778, 34.018021, 37.638210>,  <28.399420, 33.876862, 37.695801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584778, 34.018021, 37.638210>,  <28.893707, 34.253284, 37.542225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584778, 34.018021, 37.638210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633902, -0.738026, 0.231270,
		0.041076, 0.330729, 0.942831,
		-0.772321, -0.588163, 0.239965,
		28.353081, 33.841572, 37.710201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866646, 33.439575, 37.477581>,  <28.893707, 34.253284, 37.542225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866646, 33.439575, 37.477581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090609, 33.202297, 37.246197>,  <29.224987, 33.059929, 37.107365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090609, 33.202297, 37.246197>,  <28.866646, 33.439575, 37.477581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090609, 33.202297, 37.246197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195903, 0.583585, -0.788068,
		0.805063, 0.554568, 0.210544,
		0.559907, -0.593198, -0.578464,
		29.258581, 33.024338, 37.072659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349539, 33.193153, 36.854023>,  <28.866646, 33.439575, 37.477581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349539, 33.193153, 36.854023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325239, 32.858250, 37.071396>,  <28.310659, 32.657307, 37.201820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325239, 32.858250, 37.071396>,  <28.349539, 33.193153, 36.854023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325239, 32.858250, 37.071396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685939, 0.360494, 0.632086,
		-0.725119, 0.411156, 0.552406,
		-0.060747, -0.837255, 0.543429,
		28.307014, 32.607075, 37.234425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630167, 32.638348, 36.490971>,  <28.349539, 33.193153, 36.854023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630167, 32.638348, 36.490971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240557, 32.717770, 36.534515>,  <28.006790, 32.765423, 36.560642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240557, 32.717770, 36.534515>,  <28.630167, 32.638348, 36.490971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240557, 32.717770, 36.534515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155262, 0.935554, -0.317226,
		-0.164834, -0.292084, -0.942081,
		-0.974025, 0.198559, 0.108862,
		27.948349, 32.777336, 36.567173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862921, 33.380260, 36.140079>,  <28.630167, 32.638348, 36.490971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862921, 33.380260, 36.140079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891872, 33.749325, 35.988575>,  <28.909245, 33.970764, 35.897675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891872, 33.749325, 35.988575>,  <28.862921, 33.380260, 36.140079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891872, 33.749325, 35.988575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985973, -0.008930, 0.166665,
		0.150393, -0.385508, -0.910366,
		0.072381, 0.922661, -0.378757,
		28.913586, 34.026123, 35.874947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247829, 33.444187, 35.491066>,  <28.862921, 33.380260, 36.140079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247829, 33.444187, 35.491066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330544, 33.811611, 35.625824>,  <29.380171, 34.032066, 35.706676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330544, 33.811611, 35.625824>,  <29.247829, 33.444187, 35.491066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330544, 33.811611, 35.625824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969618, -0.238397, 0.054853,
		0.130700, 0.315314, -0.939944,
		0.206784, 0.918555, 0.336893,
		29.392578, 34.087177, 35.726891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552702, 33.421310, 35.006016>,  <29.247829, 33.444187, 35.491066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552702, 33.421310, 35.006016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683615, 33.234871, 34.677227>,  <28.762163, 33.123005, 34.479954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683615, 33.234871, 34.677227>,  <28.552702, 33.421310, 35.006016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683615, 33.234871, 34.677227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905332, 0.094499, -0.414059,
		0.270669, 0.879670, -0.391049,
		0.327282, -0.466102, -0.821971,
		28.781799, 33.095039, 34.430637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293518, 33.750340, 34.391964>,  <28.552702, 33.421310, 35.006016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293518, 33.750340, 34.391964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365646, 33.368603, 34.296703>,  <28.408922, 33.139561, 34.239548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365646, 33.368603, 34.296703>,  <28.293518, 33.750340, 34.391964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365646, 33.368603, 34.296703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875877, -0.045619, -0.480372,
		0.447575, 0.295213, -0.844113,
		0.180320, -0.954342, -0.238152,
		28.419743, 33.082298, 34.225258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336180, 33.648132, 33.648987>,  <28.293518, 33.750340, 34.391964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336180, 33.648132, 33.648987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251598, 33.282562, 33.787571>,  <28.200850, 33.063221, 33.870724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251598, 33.282562, 33.787571>,  <28.336180, 33.648132, 33.648987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251598, 33.282562, 33.787571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773133, -0.060463, -0.631355,
		0.597957, -0.401364, -0.693797,
		-0.211454, -0.913921, 0.346462,
		28.188162, 33.008385, 33.891510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144650, 33.425392, 32.976196>,  <28.336180, 33.648132, 33.648987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144650, 33.425392, 32.976196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018667, 33.156189, 33.243885>,  <27.943079, 32.994667, 33.404499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018667, 33.156189, 33.243885>,  <28.144650, 33.425392, 32.976196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018667, 33.156189, 33.243885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710585, -0.300227, -0.636344,
		0.629184, -0.675961, -0.383672,
		-0.314955, -0.673009, 0.669226,
		27.924181, 32.954285, 33.444653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040831, 32.710003, 32.648170>,  <28.144650, 33.425392, 32.976196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040831, 32.710003, 32.648170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818895, 32.770679, 32.975376>,  <27.685734, 32.807083, 33.171700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818895, 32.770679, 32.975376>,  <28.040831, 32.710003, 32.648170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818895, 32.770679, 32.975376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825173, 0.024988, -0.564328,
		-0.106045, -0.988112, 0.111307,
		-0.554837, 0.151691, 0.818013,
		27.652445, 32.816185, 33.220779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470602, 32.158020, 32.679089>,  <28.040831, 32.710003, 32.648170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470602, 32.158020, 32.679089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367788, 32.492462, 32.872940>,  <27.306099, 32.693127, 32.989250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367788, 32.492462, 32.872940>,  <27.470602, 32.158020, 32.679089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367788, 32.492462, 32.872940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902554, -0.028433, -0.429636,
		-0.345439, -0.547839, 0.761935,
		-0.257036, 0.836101, 0.484632,
		27.290678, 32.743294, 33.018330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884010, 32.134293, 32.895069>,  <27.470602, 32.158020, 32.679089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884010, 32.134293, 32.895069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923260, 32.529896, 32.850811>,  <26.946810, 32.767258, 32.824257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923260, 32.529896, 32.850811>,  <26.884010, 32.134293, 32.895069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923260, 32.529896, 32.850811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796184, 0.011317, -0.604949,
		-0.597045, 0.147453, 0.788540,
		0.098125, 0.989004, -0.110643,
		26.952698, 32.826595, 32.817619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321875, 32.393673, 33.101124>,  <26.884010, 32.134293, 32.895069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321875, 32.393673, 33.101124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465963, 32.709869, 32.902985>,  <26.552416, 32.899586, 32.784103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465963, 32.709869, 32.902985>,  <26.321875, 32.393673, 33.101124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465963, 32.709869, 32.902985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923141, 0.378536, -0.067241,
		0.134352, 0.481495, 0.866090,
		0.360222, 0.790489, -0.495344,
		26.574030, 32.947018, 32.754383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.157980, 33.044933, 33.408638>,  <26.321875, 32.393673, 33.101124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.157980, 33.044933, 33.408638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208433, 33.155285, 33.027485>,  <26.238705, 33.221497, 32.798794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208433, 33.155285, 33.027485>,  <26.157980, 33.044933, 33.408638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208433, 33.155285, 33.027485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844017, 0.534586, 0.043049,
		0.521273, 0.798817, 0.300274,
		0.126135, 0.275877, -0.952881,
		26.246273, 33.238049, 32.741619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664717, 33.395569, 33.841240>,  <26.157980, 33.044933, 33.408638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664717, 33.395569, 33.841240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847710, 33.120052, 33.616287>,  <26.957506, 32.954742, 33.481316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847710, 33.120052, 33.616287>,  <26.664717, 33.395569, 33.841240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847710, 33.120052, 33.616287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708802, -0.099426, 0.698365,
		-0.536946, -0.718106, 0.442733,
		0.457481, -0.688794, -0.562382,
		26.984955, 32.913414, 33.447575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854033, 32.885773, 34.295395>,  <26.664717, 33.395569, 33.841240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854033, 32.885773, 34.295395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096033, 32.862717, 33.977741>,  <27.241234, 32.848881, 33.787148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096033, 32.862717, 33.977741>,  <26.854033, 32.885773, 34.295395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096033, 32.862717, 33.977741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794016, -0.030557, 0.607128,
		-0.059263, -0.997869, 0.027283,
		0.605001, -0.057643, -0.794135,
		27.277533, 32.845425, 33.739502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305279, 32.203304, 34.418007>,  <26.854033, 32.885773, 34.295395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305279, 32.203304, 34.418007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488907, 32.430893, 34.145088>,  <27.599085, 32.567448, 33.981339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488907, 32.430893, 34.145088>,  <27.305279, 32.203304, 34.418007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488907, 32.430893, 34.145088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837791, -0.021753, 0.545557,
		0.295565, -0.822069, -0.486666,
		0.459072, 0.568972, -0.682293,
		27.626629, 32.601585, 33.940399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923164, 31.854906, 34.335464>,  <27.305279, 32.203304, 34.418007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923164, 31.854906, 34.335464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959763, 32.239632, 34.232281>,  <27.981722, 32.470467, 34.170372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959763, 32.239632, 34.232281>,  <27.923164, 31.854906, 34.335464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959763, 32.239632, 34.232281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811355, 0.078187, 0.579301,
		0.577349, -0.262297, -0.773220,
		0.091493, 0.961814, -0.257957,
		27.987211, 32.528175, 34.154892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489717, 31.917515, 33.885475>,  <27.923164, 31.854906, 34.335464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489717, 31.917515, 33.885475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409559, 32.232235, 34.118984>,  <28.361465, 32.421066, 34.259090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409559, 32.232235, 34.118984>,  <28.489717, 31.917515, 33.885475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409559, 32.232235, 34.118984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956945, 0.029475, 0.288769,
		0.209997, 0.616505, -0.758830,
		-0.200395, 0.786799, 0.583771,
		28.349442, 32.468273, 34.294117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099154, 32.370377, 33.889378>,  <28.489717, 31.917515, 33.885475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099154, 32.370377, 33.889378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890751, 32.459984, 34.218830>,  <28.765709, 32.513748, 34.416500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890751, 32.459984, 34.218830>,  <29.099154, 32.370377, 33.889378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890751, 32.459984, 34.218830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780590, -0.265313, 0.565940,
		0.345302, 0.937776, -0.036639,
		-0.521005, 0.224020, 0.823632,
		28.734449, 32.527191, 34.465919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548903, 32.788422, 34.386734>,  <29.099154, 32.370377, 33.889378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548903, 32.788422, 34.386734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269035, 32.558952, 34.557079>,  <29.101114, 32.421268, 34.659286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269035, 32.558952, 34.557079>,  <29.548903, 32.788422, 34.386734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269035, 32.558952, 34.557079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683233, -0.362924, 0.633623,
		-0.208938, 0.734291, 0.645881,
		-0.699669, -0.573675, 0.425864,
		29.059135, 32.386848, 34.684837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257788, 32.614803, 34.392925>,  <29.548903, 32.788422, 34.386734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257788, 32.614803, 34.392925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537582, 32.338387, 34.320068>,  <30.705460, 32.172535, 34.276352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537582, 32.338387, 34.320068>,  <30.257788, 32.614803, 34.392925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537582, 32.338387, 34.320068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437043, -0.615304, 0.656045,
		-0.565427, -0.379293, -0.732414,
		0.699490, -0.691041, -0.182142,
		30.747429, 32.131073, 34.265427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930477, 32.075718, 34.508923>,  <30.257788, 32.614803, 34.392925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930477, 32.075718, 34.508923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283827, 31.888498, 34.518555>,  <30.495836, 31.776167, 34.524334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283827, 31.888498, 34.518555>,  <29.930477, 32.075718, 34.508923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283827, 31.888498, 34.518555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385821, -0.697088, 0.604327,
		-0.266063, -0.543140, -0.796373,
		0.883376, -0.468046, 0.024085,
		30.548840, 31.748085, 34.525780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839397, 31.372818, 34.228828>,  <29.930477, 32.075718, 34.508923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839397, 31.372818, 34.228828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148277, 31.415174, 34.479427>,  <30.333605, 31.440588, 34.629787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148277, 31.415174, 34.479427>,  <29.839397, 31.372818, 34.228828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148277, 31.415174, 34.479427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391267, -0.697634, 0.600181,
		0.500620, -0.708586, -0.497279,
		0.772198, 0.105894, 0.626496,
		30.379936, 31.446943, 34.667377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017923, 30.701965, 34.434692>,  <29.839397, 31.372818, 34.228828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017923, 30.701965, 34.434692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127266, 30.948938, 34.729733>,  <30.192871, 31.097122, 34.906757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127266, 30.948938, 34.729733>,  <30.017923, 30.701965, 34.434692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127266, 30.948938, 34.729733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357988, -0.646423, 0.673782,
		0.892816, -0.448234, 0.044330,
		0.273356, 0.617433, 0.737600,
		30.209272, 31.134169, 34.951012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723152, 30.635790, 34.004177>,  <30.017923, 30.701965, 34.434692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723152, 30.635790, 34.004177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768520, 30.771317, 34.377773>,  <30.795742, 30.852633, 34.601933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768520, 30.771317, 34.377773>,  <30.723152, 30.635790, 34.004177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768520, 30.771317, 34.377773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527337, -0.776188, 0.345612,
		0.842052, -0.531728, 0.090635,
		0.113421, 0.338818, 0.933990,
		30.802547, 30.872961, 34.657970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003498, 30.097767, 34.318462>,  <30.723152, 30.635790, 34.004177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003498, 30.097767, 34.318462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830698, 30.313904, 34.607296>,  <30.727018, 30.443586, 34.780598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830698, 30.313904, 34.607296>,  <31.003498, 30.097767, 34.318462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830698, 30.313904, 34.607296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304425, -0.841025, 0.447216,
		0.848942, -0.026624, 0.527815,
		-0.431999, 0.540340, 0.722087,
		30.701097, 30.476006, 34.823921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015507, 29.573988, 34.856720>,  <31.003498, 30.097767, 34.318462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015507, 29.573988, 34.856720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778547, 29.864981, 34.995190>,  <30.636372, 30.039576, 35.078270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778547, 29.864981, 34.995190>,  <31.015507, 29.573988, 34.856720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778547, 29.864981, 34.995190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538530, -0.677150, 0.501451,
		0.599208, 0.110634, 0.792912,
		-0.592398, 0.727480, 0.346174,
		30.600828, 30.083225, 35.099041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006727, 29.483091, 35.590553>,  <31.015507, 29.573988, 34.856720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006727, 29.483091, 35.590553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677446, 29.696157, 35.511959>,  <30.479877, 29.823997, 35.464802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677446, 29.696157, 35.511959>,  <31.006727, 29.483091, 35.590553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677446, 29.696157, 35.511959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559020, -0.699989, 0.444424,
		0.099191, 0.475691, 0.874002,
		-0.823200, 0.532667, -0.196488,
		30.430487, 29.855957, 35.453014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797915, 29.603460, 36.216419>,  <31.006727, 29.483091, 35.590553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797915, 29.603460, 36.216419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513906, 29.626944, 35.935726>,  <30.343502, 29.641033, 35.767311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513906, 29.626944, 35.935726>,  <30.797915, 29.603460, 36.216419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513906, 29.626944, 35.935726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542091, -0.681610, 0.491472,
		-0.449451, 0.729356, 0.515784,
		-0.710022, 0.058710, -0.701728,
		30.300900, 29.644556, 35.725208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101391, 29.699196, 36.431213>,  <30.797915, 29.603460, 36.216419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101391, 29.699196, 36.431213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038033, 29.500814, 36.089703>,  <30.000017, 29.381784, 35.884796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038033, 29.500814, 36.089703>,  <30.101391, 29.699196, 36.431213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038033, 29.500814, 36.089703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571510, -0.659071, 0.488877,
		-0.805163, 0.565379, -0.179050,
		-0.158394, -0.495955, -0.853780,
		29.990515, 29.352028, 35.833569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428940, 29.457466, 36.502949>,  <30.101391, 29.699196, 36.431213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428940, 29.457466, 36.502949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552546, 29.238388, 36.191940>,  <29.626709, 29.106941, 36.005337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552546, 29.238388, 36.191940>,  <29.428940, 29.457466, 36.502949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552546, 29.238388, 36.191940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668546, -0.706555, 0.232005,
		-0.676429, 0.448115, -0.584497,
		0.309015, -0.547698, -0.777520,
		29.645250, 29.074080, 35.958683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811005, 28.852884, 36.479671>,  <29.428940, 29.457466, 36.502949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811005, 28.852884, 36.479671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081573, 29.089863, 36.654697>,  <30.243916, 29.232050, 36.759712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081573, 29.089863, 36.654697>,  <29.811005, 28.852884, 36.479671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081573, 29.089863, 36.654697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670715, 0.250045, 0.698297,
		0.304295, -0.765821, 0.566500,
		0.676421, 0.592449, 0.437560,
		30.284500, 29.267597, 36.785965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946861, 28.388025, 35.867390>,  <29.811005, 28.852884, 36.479671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946861, 28.388025, 35.867390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607975, 28.594488, 35.817101>,  <29.404642, 28.718367, 35.786926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607975, 28.594488, 35.817101>,  <29.946861, 28.388025, 35.867390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607975, 28.594488, 35.817101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512578, 0.732045, -0.448747,
		-0.139592, -0.444627, -0.884772,
		-0.847218, 0.516157, -0.125718,
		29.353809, 28.749334, 35.779385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813921, 28.576281, 35.141148>,  <29.946861, 28.388025, 35.867390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813921, 28.576281, 35.141148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612846, 28.845076, 35.358673>,  <29.492201, 29.006353, 35.489189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612846, 28.845076, 35.358673>,  <29.813921, 28.576281, 35.141148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612846, 28.845076, 35.358673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504885, 0.738857, -0.446298,
		-0.701709, 0.050216, -0.710692,
		-0.502688, 0.671989, 0.543816,
		29.462040, 29.046673, 35.521816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636755, 29.200663, 34.696564>,  <29.813921, 28.576281, 35.141148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636755, 29.200663, 34.696564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581751, 29.340609, 35.067226>,  <29.548748, 29.424576, 35.289623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581751, 29.340609, 35.067226>,  <29.636755, 29.200663, 34.696564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581751, 29.340609, 35.067226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500287, 0.831969, -0.239876,
		-0.854870, 0.430607, -0.289438,
		-0.137511, 0.349865, 0.926653,
		29.540497, 29.445568, 35.345222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459665, 30.006157, 34.682621>,  <29.636755, 29.200663, 34.696564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459665, 30.006157, 34.682621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646790, 29.904945, 35.021355>,  <29.759064, 29.844217, 35.224594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646790, 29.904945, 35.021355>,  <29.459665, 30.006157, 34.682621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646790, 29.904945, 35.021355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607955, 0.787582, -0.100524,
		-0.641515, 0.561863, 0.522272,
		0.467812, -0.253030, 0.846834,
		29.787134, 29.829037, 35.275406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342079, 30.550749, 35.221386>,  <29.459665, 30.006157, 34.682621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342079, 30.550749, 35.221386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673058, 30.334904, 35.283554>,  <29.871645, 30.205397, 35.320854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673058, 30.334904, 35.283554>,  <29.342079, 30.550749, 35.221386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673058, 30.334904, 35.283554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560836, 0.808040, -0.180370,
		-0.028253, 0.236409, 0.971243,
		0.827444, -0.539612, 0.155416,
		29.921291, 30.173019, 35.330177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761927, 31.002893, 35.487514>,  <29.342079, 30.550749, 35.221386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761927, 31.002893, 35.487514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028936, 30.718143, 35.400204>,  <30.189142, 30.547293, 35.347816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028936, 30.718143, 35.400204>,  <29.761927, 31.002893, 35.487514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028936, 30.718143, 35.400204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661398, 0.701544, -0.265311,
		0.342000, 0.032732, 0.939130,
		0.667525, -0.711874, -0.218279,
		30.229195, 30.504581, 35.334721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365158, 31.014177, 35.941853>,  <29.761927, 31.002893, 35.487514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365158, 31.014177, 35.941853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477665, 30.857676, 35.591354>,  <30.545168, 30.763775, 35.381054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477665, 30.857676, 35.591354>,  <30.365158, 31.014177, 35.941853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477665, 30.857676, 35.591354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511677, 0.833626, -0.207980,
		0.811835, -0.389858, 0.434666,
		0.281266, -0.391254, -0.876248,
		30.562044, 30.740299, 35.328480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001257, 31.362503, 35.837925>,  <30.365158, 31.014177, 35.941853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001257, 31.362503, 35.837925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905472, 31.221443, 35.476086>,  <30.848001, 31.136808, 35.258984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905472, 31.221443, 35.476086>,  <31.001257, 31.362503, 35.837925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905472, 31.221443, 35.476086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333992, 0.844923, -0.417797,
		0.911651, -0.402174, -0.084544,
		-0.239460, -0.352648, -0.904598,
		30.833633, 31.115648, 35.204708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488913, 31.602751, 35.259499>,  <31.001257, 31.362503, 35.837925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488913, 31.602751, 35.259499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187000, 31.452858, 35.044136>,  <31.005852, 31.362923, 34.914917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187000, 31.452858, 35.044136>,  <31.488913, 31.602751, 35.259499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187000, 31.452858, 35.044136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318833, 0.507730, -0.800347,
		0.573280, -0.775749, -0.263748,
		-0.754781, -0.374731, -0.538406,
		30.960566, 31.340439, 34.882614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751654, 31.310226, 34.616199>,  <31.488913, 31.602751, 35.259499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751654, 31.310226, 34.616199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372620, 31.433861, 34.583836>,  <31.145199, 31.508041, 34.564419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372620, 31.433861, 34.583836>,  <31.751654, 31.310226, 34.616199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372620, 31.433861, 34.583836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263559, 0.613064, -0.744774,
		-0.180597, -0.727062, -0.662393,
		-0.947587, 0.309084, -0.080906,
		31.088343, 31.526587, 34.559563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629574, 31.215027, 33.946243>,  <31.751654, 31.310226, 34.616199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629574, 31.215027, 33.946243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346039, 31.480886, 34.040718>,  <31.175917, 31.640402, 34.097404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346039, 31.480886, 34.040718>,  <31.629574, 31.215027, 33.946243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346039, 31.480886, 34.040718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250947, 0.550562, -0.796182,
		-0.659221, -0.505094, -0.557053,
		-0.708839, 0.664651, 0.236190,
		31.133387, 31.680283, 34.111576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336159, 31.304745, 33.361851>,  <31.629574, 31.215027, 33.946243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336159, 31.304745, 33.361851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242992, 31.631483, 33.572945>,  <31.187092, 31.827526, 33.699600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242992, 31.631483, 33.572945>,  <31.336159, 31.304745, 33.361851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242992, 31.631483, 33.572945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033185, 0.549024, -0.835147,
		-0.971930, -0.177007, -0.154984,
		-0.232916, 0.816848, 0.527739,
		31.173117, 31.876537, 33.731266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845749, 31.688934, 32.968365>,  <31.336159, 31.304745, 33.361851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845749, 31.688934, 32.968365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011875, 31.945631, 33.226257>,  <31.111551, 32.099648, 33.380993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011875, 31.945631, 33.226257>,  <30.845749, 31.688934, 32.968365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011875, 31.945631, 33.226257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130026, 0.659594, -0.740290,
		-0.900337, 0.391285, 0.190496,
		0.415314, 0.641742, 0.644734,
		31.136469, 32.138153, 33.419678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548010, 32.256462, 32.755211>,  <30.845749, 31.688934, 32.968365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548010, 32.256462, 32.755211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868073, 32.344200, 32.978508>,  <31.060110, 32.396843, 33.112488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868073, 32.344200, 32.978508>,  <30.548010, 32.256462, 32.755211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868073, 32.344200, 32.978508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229674, 0.747741, -0.623003,
		-0.554073, 0.626715, 0.547934,
		0.800158, 0.219343, 0.558243,
		31.108120, 32.410004, 33.145981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614122, 33.044430, 32.795563>,  <30.548010, 32.256462, 32.755211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614122, 33.044430, 32.795563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983185, 32.910179, 32.871517>,  <31.204622, 32.829628, 32.917091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983185, 32.910179, 32.871517>,  <30.614122, 33.044430, 32.795563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983185, 32.910179, 32.871517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370006, 0.631815, -0.681106,
		0.108621, 0.698688, 0.707132,
		0.922657, -0.335626, 0.189890,
		31.259981, 32.809490, 32.928486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039560, 33.584324, 32.749706>,  <30.614122, 33.044430, 32.795563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039560, 33.584324, 32.749706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323166, 33.303711, 32.720982>,  <31.493330, 33.135345, 32.703747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323166, 33.303711, 32.720982>,  <31.039560, 33.584324, 32.749706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323166, 33.303711, 32.720982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447439, 0.526233, -0.723102,
		0.545066, 0.480559, 0.686998,
		0.709014, -0.701529, -0.071811,
		31.535870, 33.093254, 32.699440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646729, 33.897224, 32.708588>,  <31.039560, 33.584324, 32.749706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646729, 33.897224, 32.708588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760803, 33.543983, 32.559566>,  <31.829248, 33.332039, 32.470154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760803, 33.543983, 32.559566>,  <31.646729, 33.897224, 32.708588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760803, 33.543983, 32.559566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444564, 0.466230, -0.764848,
		0.849136, 0.052499, 0.525558,
		0.285185, -0.883104, -0.372554,
		31.846359, 33.279053, 32.447800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289108, 33.959076, 32.361584>,  <31.646729, 33.897224, 32.708588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289108, 33.959076, 32.361584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219078, 33.603752, 32.191757>,  <32.177059, 33.390560, 32.089863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219078, 33.603752, 32.191757>,  <32.289108, 33.959076, 32.361584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219078, 33.603752, 32.191757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535773, 0.275828, -0.798039,
		0.826012, -0.367191, 0.427639,
		-0.175078, -0.888307, -0.424568,
		32.166553, 33.337261, 32.064388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918526, 33.694920, 32.075722>,  <32.289108, 33.959076, 32.361584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918526, 33.694920, 32.075722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624058, 33.524029, 31.865757>,  <32.447376, 33.421494, 31.739777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624058, 33.524029, 31.865757>,  <32.918526, 33.694920, 32.075722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624058, 33.524029, 31.865757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445077, 0.278690, -0.851022,
		0.509868, -0.860122, -0.015013,
		-0.736166, -0.427226, -0.524916,
		32.403210, 33.395863, 31.708282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175579, 33.260036, 31.515041>,  <32.918526, 33.694920, 32.075722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175579, 33.260036, 31.515041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801723, 33.301762, 31.379061>,  <32.577412, 33.326797, 31.297472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801723, 33.301762, 31.379061>,  <33.175579, 33.260036, 31.515041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801723, 33.301762, 31.379061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349909, 0.099486, -0.931486,
		-0.063342, -0.989557, -0.129483,
		-0.934640, 0.104309, -0.339953,
		32.521332, 33.333054, 31.277075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149055, 32.837273, 30.906691>,  <33.175579, 33.260036, 31.515041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149055, 32.837273, 30.906691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837482, 33.087959, 30.897833>,  <32.650539, 33.238369, 30.892519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837482, 33.087959, 30.897833>,  <33.149055, 32.837273, 30.906691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837482, 33.087959, 30.897833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223541, 0.244498, -0.943531,
		-0.585910, -0.739899, -0.330544,
		-0.778935, 0.626714, -0.022144,
		32.603802, 33.275974, 30.891190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772724, 32.656616, 30.361319>,  <33.149055, 32.837273, 30.906691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772724, 32.656616, 30.361319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674049, 33.034286, 30.448652>,  <32.614845, 33.260891, 30.501053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674049, 33.034286, 30.448652>,  <32.772724, 32.656616, 30.361319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674049, 33.034286, 30.448652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084590, 0.245416, -0.965720,
		-0.965396, -0.219765, -0.140410,
		-0.246690, 0.944179, 0.218334,
		32.600044, 33.317539, 30.514153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159260, 32.795139, 29.828468>,  <32.772724, 32.656616, 30.361319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159260, 32.795139, 29.828468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288319, 33.152645, 29.953102>,  <32.365753, 33.367149, 30.027884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288319, 33.152645, 29.953102>,  <32.159260, 32.795139, 29.828468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288319, 33.152645, 29.953102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051084, 0.312269, -0.948619,
		-0.945139, 0.321989, 0.055096,
		0.322649, 0.893763, 0.311586,
		32.385113, 33.420773, 30.046577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792631, 33.293434, 29.506371>,  <32.159260, 32.795139, 29.828468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792631, 33.293434, 29.506371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129276, 33.489571, 29.596931>,  <32.331264, 33.607254, 29.651268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129276, 33.489571, 29.596931>,  <31.792631, 33.293434, 29.506371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129276, 33.489571, 29.596931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002131, 0.422205, -0.906498,
		-0.540080, 0.762436, 0.356377,
		0.841611, 0.490341, 0.226400,
		32.381760, 33.636673, 29.664852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709414, 33.972038, 29.326511>,  <31.792631, 33.293434, 29.506371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709414, 33.972038, 29.326511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108082, 33.961212, 29.357265>,  <32.347282, 33.954716, 29.375717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108082, 33.961212, 29.357265>,  <31.709414, 33.972038, 29.326511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108082, 33.961212, 29.357265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080588, 0.468591, -0.879732,
		-0.012216, 0.883001, 0.469213,
		0.996673, -0.027066, 0.076883,
		32.407085, 33.953091, 29.380331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898066, 34.627644, 29.343124>,  <31.709414, 33.972038, 29.326511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898066, 34.627644, 29.343124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224838, 34.430805, 29.222816>,  <32.420902, 34.312702, 29.150633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224838, 34.430805, 29.222816>,  <31.898066, 34.627644, 29.343124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224838, 34.430805, 29.222816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110675, 0.645575, -0.755635,
		0.566013, 0.584016, 0.581854,
		0.816933, -0.492096, -0.300768,
		32.469917, 34.283176, 29.132586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340302, 35.119755, 29.239834>,  <31.898066, 34.627644, 29.343124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340302, 35.119755, 29.239834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480019, 34.809830, 29.029057>,  <32.563847, 34.623875, 28.902590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480019, 34.809830, 29.029057>,  <32.340302, 35.119755, 29.239834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480019, 34.809830, 29.029057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053068, 0.577819, -0.814438,
		0.935511, 0.256510, 0.242943,
		0.349289, -0.774808, -0.526943,
		32.584805, 34.577389, 28.870974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915726, 35.402359, 28.879677>,  <32.340302, 35.119755, 29.239834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915726, 35.402359, 28.879677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843109, 35.072632, 28.665184>,  <32.799541, 34.874798, 28.536488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843109, 35.072632, 28.665184>,  <32.915726, 35.402359, 28.879677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843109, 35.072632, 28.665184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117283, 0.523254, -0.844068,
		0.976365, -0.216122, 0.001688,
		-0.181539, -0.824316, -0.536234,
		32.788647, 34.825336, 28.504314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431355, 35.338707, 28.376699>,  <32.915726, 35.402359, 28.879677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431355, 35.338707, 28.376699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133968, 35.106106, 28.244566>,  <32.955536, 34.966545, 28.165285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133968, 35.106106, 28.244566>,  <33.431355, 35.338707, 28.376699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133968, 35.106106, 28.244566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078243, 0.414917, -0.906489,
		0.664185, -0.699787, -0.262977,
		-0.743463, -0.581500, -0.330335,
		32.910931, 34.931656, 28.145466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634373, 35.018761, 27.785418>,  <33.431355, 35.338707, 28.376699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634373, 35.018761, 27.785418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234985, 35.016563, 27.763384>,  <32.995354, 35.015244, 27.750164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234985, 35.016563, 27.763384>,  <33.634373, 35.018761, 27.785418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234985, 35.016563, 27.763384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043203, 0.544766, -0.837475,
		0.034608, -0.838570, -0.543693,
		-0.998467, -0.005494, -0.055082,
		32.935444, 35.014915, 27.746859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464874, 34.798645, 27.045235>,  <33.634373, 35.018761, 27.785418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464874, 34.798645, 27.045235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160667, 35.011818, 27.193611>,  <32.978146, 35.139721, 27.282637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160667, 35.011818, 27.193611>,  <33.464874, 34.798645, 27.045235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160667, 35.011818, 27.193611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142697, 0.420138, -0.896171,
		-0.633447, -0.734483, -0.243473,
		-0.760514, 0.532934, 0.370943,
		32.932514, 35.171700, 27.304893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938927, 34.748287, 26.546822>,  <33.464874, 34.798645, 27.045235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938927, 34.748287, 26.546822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822220, 35.068069, 26.756865>,  <32.752197, 35.259941, 26.882891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822220, 35.068069, 26.756865>,  <32.938927, 34.748287, 26.546822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822220, 35.068069, 26.756865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301668, 0.444060, -0.843687,
		-0.907672, -0.404566, 0.111611,
		-0.291765, 0.799460, 0.525106,
		32.734692, 35.307907, 26.914396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252052, 34.889938, 26.400751>,  <32.938927, 34.748287, 26.546822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252052, 34.889938, 26.400751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383049, 35.240177, 26.542778>,  <32.461647, 35.450321, 26.627995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383049, 35.240177, 26.542778>,  <32.252052, 34.889938, 26.400751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383049, 35.240177, 26.542778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477574, 0.477650, -0.737410,
		-0.815275, 0.071923, 0.574590,
		0.327489, 0.875601, 0.355068,
		32.481297, 35.502857, 26.649298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683722, 35.394695, 26.274252>,  <32.252052, 34.889938, 26.400751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683722, 35.394695, 26.274252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001881, 35.632408, 26.321873>,  <32.192776, 35.775036, 26.350445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001881, 35.632408, 26.321873>,  <31.683722, 35.394695, 26.274252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001881, 35.632408, 26.321873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247553, 0.497842, -0.831186,
		-0.553225, 0.631653, 0.543099,
		0.795399, 0.594279, 0.119051,
		32.240501, 35.810692, 26.357588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355320, 36.029533, 26.111605>,  <31.683722, 35.394695, 26.274252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355320, 36.029533, 26.111605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751177, 36.069386, 26.070267>,  <31.988691, 36.093296, 26.045464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751177, 36.069386, 26.070267>,  <31.355320, 36.029533, 26.111605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751177, 36.069386, 26.070267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139391, 0.494977, -0.857653,
		-0.034291, 0.863176, 0.503738,
		0.989644, 0.099627, -0.103346,
		32.048069, 36.099274, 26.039263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453745, 36.688789, 25.950975>,  <31.355320, 36.029533, 26.111605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453745, 36.688789, 25.950975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800859, 36.538582, 25.820787>,  <32.009129, 36.448456, 25.742676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800859, 36.538582, 25.820787>,  <31.453745, 36.688789, 25.950975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800859, 36.538582, 25.820787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023761, 0.622846, -0.781984,
		0.496367, 0.686329, 0.531575,
		0.867788, -0.375520, -0.325468,
		32.061195, 36.425926, 25.723146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869116, 37.204144, 25.748379>,  <31.453745, 36.688789, 25.950975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869116, 37.204144, 25.748379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045368, 36.899532, 25.558254>,  <32.151119, 36.716766, 25.444180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045368, 36.899532, 25.558254>,  <31.869116, 37.204144, 25.748379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045368, 36.899532, 25.558254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033322, 0.542992, -0.839076,
		0.897070, 0.353885, 0.264635,
		0.440631, -0.761528, -0.475310,
		32.177559, 36.671074, 25.415661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482998, 37.378521, 25.465139>,  <31.869116, 37.204144, 25.748379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482998, 37.378521, 25.465139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376980, 37.055229, 25.254797>,  <32.313370, 36.861256, 25.128592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376980, 37.055229, 25.254797>,  <32.482998, 37.378521, 25.465139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376980, 37.055229, 25.254797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135766, 0.571205, -0.809501,
		0.954631, -0.143159, -0.261124,
		-0.265043, -0.808226, -0.525854,
		32.297466, 36.812763, 25.097040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913689, 37.379673, 24.790926>,  <32.482998, 37.378521, 25.465139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913689, 37.379673, 24.790926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577293, 37.170303, 24.736132>,  <32.375454, 37.044682, 24.703255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577293, 37.170303, 24.736132>,  <32.913689, 37.379673, 24.790926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577293, 37.170303, 24.736132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222725, 0.565655, -0.793995,
		0.493083, -0.637231, -0.592289,
		-0.840989, -0.523423, -0.136988,
		32.324997, 37.013275, 24.695036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953495, 37.033741, 24.085527>,  <32.913689, 37.379673, 24.790926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953495, 37.033741, 24.085527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566723, 37.072006, 24.180094>,  <32.334660, 37.094967, 24.236834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566723, 37.072006, 24.180094>,  <32.953495, 37.033741, 24.085527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566723, 37.072006, 24.180094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158878, 0.499194, -0.851800,
		-0.199508, -0.861193, -0.467486,
		-0.966930, 0.095668, 0.236418,
		32.276646, 37.100708, 24.251019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654037, 36.807205, 23.470119>,  <32.953495, 37.033741, 24.085527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654037, 36.807205, 23.470119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402954, 37.028286, 23.689390>,  <32.252304, 37.160934, 23.820953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402954, 37.028286, 23.689390>,  <32.654037, 36.807205, 23.470119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402954, 37.028286, 23.689390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146906, 0.607435, -0.780667,
		-0.764457, -0.570566, -0.300100,
		-0.627713, 0.552700, 0.548178,
		32.214642, 37.194096, 23.853844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140976, 37.009861, 23.080290>,  <32.654037, 36.807205, 23.470119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140976, 37.009861, 23.080290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161358, 37.303677, 23.350952>,  <32.173588, 37.479965, 23.513350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161358, 37.303677, 23.350952>,  <32.140976, 37.009861, 23.080290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161358, 37.303677, 23.350952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027049, 0.678302, -0.734285,
		-0.998335, 0.019114, 0.054432,
		0.050957, 0.734535, 0.676655,
		32.176643, 37.524036, 23.553949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873074, 37.590321, 22.694918>,  <32.140976, 37.009861, 23.080290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873074, 37.590321, 22.694918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024502, 37.779530, 23.013147>,  <32.115360, 37.893055, 23.204084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024502, 37.779530, 23.013147>,  <31.873074, 37.590321, 22.694918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024502, 37.779530, 23.013147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213145, 0.880999, -0.422386,
		-0.900696, -0.009669, 0.434343,
		0.378571, 0.473019, 0.795574,
		32.138073, 37.921436, 23.251820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470432, 38.235939, 22.735332>,  <31.873074, 37.590321, 22.694918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470432, 38.235939, 22.735332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789093, 38.284500, 22.972181>,  <31.980289, 38.313637, 23.114290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789093, 38.284500, 22.972181>,  <31.470432, 38.235939, 22.735332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789093, 38.284500, 22.972181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063335, 0.957463, -0.281521,
		-0.601111, 0.261776, 0.755075,
		0.796651, 0.121403, 0.592121,
		32.028088, 38.320919, 23.149818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409327, 38.866417, 23.066315>,  <31.470432, 38.235939, 22.735332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409327, 38.866417, 23.066315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804672, 38.806656, 23.077749>,  <32.041878, 38.770798, 23.084610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804672, 38.806656, 23.077749>,  <31.409327, 38.866417, 23.066315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804672, 38.806656, 23.077749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151928, 0.960186, -0.234437,
		0.007580, 0.236052, 0.971711,
		0.988363, -0.149407, 0.028585,
		32.101181, 38.761833, 23.086325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655920, 39.501495, 23.381336>,  <31.409327, 38.866417, 23.066315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655920, 39.501495, 23.381336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951111, 39.330666, 23.172340>,  <32.128227, 39.228168, 23.046942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951111, 39.330666, 23.172340>,  <31.655920, 39.501495, 23.381336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951111, 39.330666, 23.172340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246348, 0.891323, -0.380600,
		0.628253, 0.152160, 0.762985,
		0.737978, -0.427073, -0.522492,
		32.172504, 39.202545, 23.015593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178101, 39.974072, 23.362808>,  <31.655920, 39.501495, 23.381336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178101, 39.974072, 23.362808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269379, 39.731331, 23.058268>,  <32.324146, 39.585686, 22.875544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269379, 39.731331, 23.058268>,  <32.178101, 39.974072, 23.362808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269379, 39.731331, 23.058268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338078, 0.782716, -0.522550,
		0.913034, -0.138153, 0.383775,
		0.228195, -0.606852, -0.761353,
		32.337837, 39.549274, 22.829863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774529, 40.252430, 23.153202>,  <32.178101, 39.974072, 23.362808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774529, 40.252430, 23.153202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642185, 40.051403, 22.833714>,  <32.562778, 39.930786, 22.642021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642185, 40.051403, 22.833714>,  <32.774529, 40.252430, 23.153202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642185, 40.051403, 22.833714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300537, 0.746202, -0.594020,
		0.894544, -0.436582, -0.095847,
		-0.330859, -0.502572, -0.798720,
		32.542927, 39.900631, 22.594097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356888, 40.254963, 22.549093>,  <32.774529, 40.252430, 23.153202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356888, 40.254963, 22.549093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004169, 40.179066, 22.376383>,  <32.792538, 40.133526, 22.272757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004169, 40.179066, 22.376383>,  <33.356888, 40.254963, 22.549093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004169, 40.179066, 22.376383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223447, 0.638152, -0.736773,
		0.415333, -0.746164, -0.520325,
		-0.881799, -0.189741, -0.431773,
		32.739632, 40.122143, 22.246851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494064, 40.157597, 21.876003>,  <33.356888, 40.254963, 22.549093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494064, 40.157597, 21.876003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105778, 40.253685, 21.875006>,  <32.872807, 40.311340, 21.874407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105778, 40.253685, 21.875006>,  <33.494064, 40.157597, 21.876003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105778, 40.253685, 21.875006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178517, 0.714345, -0.676641,
		-0.160766, -0.657270, -0.736309,
		-0.970714, 0.240225, -0.002492,
		32.814564, 40.325752, 21.874258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266037, 40.013409, 21.256367>,  <33.494064, 40.157597, 21.876003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266037, 40.013409, 21.256367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976147, 40.255230, 21.388599>,  <32.802212, 40.400322, 21.467939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976147, 40.255230, 21.388599>,  <33.266037, 40.013409, 21.256367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976147, 40.255230, 21.388599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120812, 0.583831, -0.802836,
		-0.678365, -0.541896, -0.496154,
		-0.724724, 0.604558, 0.330583,
		32.758728, 40.436596, 21.487774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771477, 40.155071, 20.766275>,  <33.266037, 40.013409, 21.256367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771477, 40.155071, 20.766275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756218, 40.472324, 21.009415>,  <32.747063, 40.662678, 21.155298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756218, 40.472324, 21.009415>,  <32.771477, 40.155071, 20.766275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756218, 40.472324, 21.009415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146285, 0.606173, -0.781765,
		-0.988507, 0.059095, -0.139149,
		-0.038150, 0.793135, 0.607850,
		32.744774, 40.710266, 21.191771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636002, 40.589474, 20.306744>,  <32.771477, 40.155071, 20.766275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636002, 40.589474, 20.306744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690563, 40.842773, 20.611477>,  <32.723301, 40.994755, 20.794317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690563, 40.842773, 20.611477>,  <32.636002, 40.589474, 20.306744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690563, 40.842773, 20.611477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068456, 0.773206, -0.630449,
		-0.988285, 0.033845, 0.148819,
		0.136405, 0.633251, 0.761831,
		32.731483, 41.032749, 20.840027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042690, 41.003662, 20.459188>,  <32.636002, 40.589474, 20.306744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042690, 41.003662, 20.459188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373425, 41.204716, 20.560144>,  <32.571865, 41.325348, 20.620718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373425, 41.204716, 20.560144>,  <32.042690, 41.003662, 20.459188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373425, 41.204716, 20.560144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030780, 0.488506, -0.872017,
		-0.561601, 0.713247, 0.419385,
		0.826836, 0.502634, 0.252392,
		32.621475, 41.355507, 20.635862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878107, 41.677944, 20.560610>,  <32.042690, 41.003662, 20.459188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878107, 41.677944, 20.560610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252712, 41.633568, 20.427563>,  <32.477474, 41.606941, 20.347734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252712, 41.633568, 20.427563>,  <31.878107, 41.677944, 20.560610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252712, 41.633568, 20.427563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237611, 0.496779, -0.834717,
		0.257845, 0.860757, 0.438878,
		0.936513, -0.110946, -0.332618,
		32.533665, 41.600285, 20.327778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201645, 41.622593, 19.944666>,  <31.878107, 41.677944, 20.560610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201645, 41.622593, 19.944666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964876, 41.931465, 20.037066>,  <31.822815, 42.116791, 20.092505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964876, 41.931465, 20.037066>,  <32.201645, 41.622593, 19.944666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964876, 41.931465, 20.037066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222841, 0.432218, -0.873802,
		-0.774578, -0.465745, -0.427914,
		-0.591921, 0.772184, 0.231000,
		31.787300, 42.163120, 20.106365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346924, 42.319256, 19.924753>,  <32.201645, 41.622593, 19.944666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346924, 42.319256, 19.924753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126713, 42.625710, 19.792114>,  <31.994587, 42.809582, 19.712532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126713, 42.625710, 19.792114>,  <32.346924, 42.319256, 19.924753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126713, 42.625710, 19.792114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561968, -0.046373, 0.825858,
		0.617342, 0.641004, 0.456074,
		-0.550528, 0.766135, -0.331596,
		31.961554, 42.855549, 19.692635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070118, 42.382854, 20.075420>,  <32.346924, 42.319256, 19.924753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070118, 42.382854, 20.075420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400433, 42.579689, 20.185635>,  <33.598621, 42.697788, 20.251764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400433, 42.579689, 20.185635>,  <33.070118, 42.382854, 20.075420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400433, 42.579689, 20.185635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546365, 0.576884, 0.607199,
		0.139840, -0.651963, 0.745244,
		0.825791, 0.492086, 0.275538,
		33.648170, 42.727314, 20.268295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011597, 42.434444, 20.728363>,  <33.070118, 42.382854, 20.075420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011597, 42.434444, 20.728363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256893, 42.726341, 20.607424>,  <33.404072, 42.901478, 20.534861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256893, 42.726341, 20.607424>,  <33.011597, 42.434444, 20.728363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256893, 42.726341, 20.607424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460953, 0.641449, 0.613242,
		0.641449, -0.236697, 0.729738,
		-0.613242, -0.729738, 0.302350,
		33.440865, 42.945263, 20.516718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484844, 42.588970, 21.284796>,  <33.011597, 42.434444, 20.728363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484844, 42.588970, 21.284796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400944, 42.884514, 21.028641>,  <33.350601, 43.061840, 20.874949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400944, 42.884514, 21.028641>,  <33.484844, 42.588970, 21.284796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400944, 42.884514, 21.028641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326893, 0.564274, 0.758113,
		0.921490, 0.368354, 0.123169,
		-0.209753, 0.738857, -0.640386,
		33.338017, 43.106171, 20.836525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935566, 43.106564, 21.476583>,  <33.484844, 42.588970, 21.284796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935566, 43.106564, 21.476583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595047, 43.223354, 21.302204>,  <33.390736, 43.293430, 21.197577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595047, 43.223354, 21.302204>,  <33.935566, 43.106564, 21.476583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595047, 43.223354, 21.302204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394623, 0.191284, 0.898712,
		0.345794, 0.937101, -0.047617,
		-0.851293, 0.291979, -0.435946,
		33.339661, 43.310947, 21.171421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727932, 43.887054, 21.688194>,  <33.935566, 43.106564, 21.476583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727932, 43.887054, 21.688194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441662, 43.618782, 21.610222>,  <33.269901, 43.457817, 21.563438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441662, 43.618782, 21.610222>,  <33.727932, 43.887054, 21.688194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441662, 43.618782, 21.610222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404397, 0.170353, 0.898578,
		-0.569454, 0.721917, -0.393139,
		-0.715671, -0.670684, -0.194933,
		33.226959, 43.417576, 21.551743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985168, 44.132240, 21.813227>,  <33.727932, 43.887054, 21.688194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985168, 44.132240, 21.813227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952374, 43.736877, 21.864340>,  <32.932697, 43.499660, 21.895008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952374, 43.736877, 21.864340>,  <32.985168, 44.132240, 21.813227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952374, 43.736877, 21.864340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603432, 0.151272, 0.782935,
		-0.793189, -0.012920, -0.608839,
		-0.081984, -0.988408, 0.127784,
		32.927776, 43.440353, 21.902676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446495, 43.978786, 22.253304>,  <32.985168, 44.132240, 21.813227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446495, 43.978786, 22.253304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596375, 43.609505, 22.287466>,  <32.686302, 43.387936, 22.307962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596375, 43.609505, 22.287466>,  <32.446495, 43.978786, 22.253304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596375, 43.609505, 22.287466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406633, -0.080853, 0.910007,
		-0.833219, -0.375703, -0.405702,
		0.374695, -0.923207, 0.085405,
		32.708782, 43.332542, 22.313087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904367, 43.484390, 22.573195>,  <32.446495, 43.978786, 22.253304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904367, 43.484390, 22.573195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284599, 43.376770, 22.635180>,  <32.512737, 43.312199, 22.672371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284599, 43.376770, 22.635180>,  <31.904367, 43.484390, 22.573195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284599, 43.376770, 22.635180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228155, -0.266785, 0.936361,
		-0.210579, -0.925442, -0.314983,
		0.950580, -0.269043, 0.154965,
		32.569775, 43.296055, 22.681669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771441, 42.949684, 23.074051>,  <31.904367, 43.484390, 22.573195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771441, 42.949684, 23.074051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162991, 43.031322, 23.069267>,  <32.397923, 43.080307, 23.066397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162991, 43.031322, 23.069267>,  <31.771441, 42.949684, 23.074051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162991, 43.031322, 23.069267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019695, -0.035912, 0.999161,
		0.203499, -0.978291, -0.039173,
		0.978877, 0.204100, -0.011959,
		32.456654, 43.092552, 23.065680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180798, 42.305733, 23.394718>,  <31.771441, 42.949684, 23.074051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180798, 42.305733, 23.394718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449581, 42.598778, 23.438082>,  <32.610851, 42.774605, 23.464100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449581, 42.598778, 23.438082>,  <32.180798, 42.305733, 23.394718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449581, 42.598778, 23.438082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123960, -0.255576, 0.958809,
		0.730145, -0.630838, -0.262550,
		0.671955, 0.732615, 0.108409,
		32.651169, 42.818562, 23.470604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462402, 42.143009, 23.972775>,  <32.180798, 42.305733, 23.394718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462402, 42.143009, 23.972775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593674, 42.516613, 23.916309>,  <32.672436, 42.740776, 23.882431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593674, 42.516613, 23.916309>,  <32.462402, 42.143009, 23.972775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593674, 42.516613, 23.916309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227331, 0.066954, 0.971513,
		0.916852, -0.350923, -0.190356,
		0.328181, 0.934007, -0.141162,
		32.692127, 42.796814, 23.873960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281952, 42.201221, 24.044174>,  <32.462402, 42.143009, 23.972775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281952, 42.201221, 24.044174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042458, 42.507114, 24.139423>,  <32.898762, 42.690651, 24.196573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042458, 42.507114, 24.139423>,  <33.281952, 42.201221, 24.044174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042458, 42.507114, 24.139423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216456, -0.131749, 0.967362,
		0.771146, 0.630734, -0.086649,
		-0.598732, 0.764733, 0.238124,
		32.862839, 42.736534, 24.210861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518597, 42.273499, 24.648981>,  <33.281952, 42.201221, 24.044174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518597, 42.273499, 24.648981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195778, 42.509632, 24.643511>,  <33.002087, 42.651314, 24.640228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195778, 42.509632, 24.643511>,  <33.518597, 42.273499, 24.648981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195778, 42.509632, 24.643511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054532, 0.097574, 0.993733,
		0.587968, 0.801240, -0.110939,
		-0.807044, 0.590333, -0.013677,
		32.953663, 42.686733, 24.639408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615139, 42.963432, 25.132786>,  <33.518597, 42.273499, 24.648981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615139, 42.963432, 25.132786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221375, 42.907425, 25.090199>,  <32.985115, 42.873821, 25.064646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221375, 42.907425, 25.090199>,  <33.615139, 42.963432, 25.132786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221375, 42.907425, 25.090199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076232, -0.205879, 0.975604,
		-0.158518, 0.968509, 0.191996,
		-0.984409, -0.140015, -0.106467,
		32.926052, 42.865421, 25.058258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334385, 43.299408, 25.634420>,  <33.615139, 42.963432, 25.132786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334385, 43.299408, 25.634420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063164, 43.023857, 25.531895>,  <32.900433, 42.858528, 25.470379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063164, 43.023857, 25.531895>,  <33.334385, 43.299408, 25.634420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063164, 43.023857, 25.531895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186571, -0.175993, 0.966549,
		-0.710942, 0.703190, -0.009192,
		-0.678050, -0.688876, -0.256316,
		32.859749, 42.817196, 25.455000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721180, 43.328758, 26.095703>,  <33.334385, 43.299408, 25.634420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721180, 43.328758, 26.095703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713562, 42.947052, 25.976366>,  <32.708992, 42.718029, 25.904764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713562, 42.947052, 25.976366>,  <32.721180, 43.328758, 26.095703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713562, 42.947052, 25.976366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174990, -0.290609, 0.940704,
		-0.984386, 0.070127, -0.161451,
		-0.019049, -0.954268, -0.298343,
		32.707848, 42.660770, 25.886864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361069, 43.042812, 26.527908>,  <32.721180, 43.328758, 26.095703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361069, 43.042812, 26.527908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490250, 42.706814, 26.353502>,  <32.567757, 42.505215, 26.248859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490250, 42.706814, 26.353502>,  <32.361069, 43.042812, 26.527908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490250, 42.706814, 26.353502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286663, -0.525879, 0.800797,
		-0.901958, -0.133627, -0.410629,
		0.322950, -0.839997, -0.436015,
		32.587135, 42.454815, 26.222698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920118, 42.533333, 26.707094>,  <32.361069, 43.042812, 26.527908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920118, 42.533333, 26.707094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226261, 42.299610, 26.599154>,  <32.409946, 42.159378, 26.534389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226261, 42.299610, 26.599154>,  <31.920118, 42.533333, 26.707094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226261, 42.299610, 26.599154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284271, -0.683062, 0.672768,
		-0.577426, -0.438196, -0.688886,
		0.765356, -0.584304, -0.269851,
		32.455868, 42.124317, 26.518198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643776, 41.865730, 26.485205>,  <31.920118, 42.533333, 26.707094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643776, 41.865730, 26.485205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029476, 41.815029, 26.578291>,  <32.260895, 41.784607, 26.634142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029476, 41.815029, 26.578291>,  <31.643776, 41.865730, 26.485205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029476, 41.815029, 26.578291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244062, -0.766883, 0.593569,
		0.103227, -0.629146, -0.770402,
		0.964250, -0.126754, 0.232714,
		32.318752, 41.777004, 26.648106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754650, 41.209595, 26.363501>,  <31.643776, 41.865730, 26.485205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754650, 41.209595, 26.363501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076687, 41.286369, 26.587996>,  <32.269909, 41.332432, 26.722692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076687, 41.286369, 26.587996>,  <31.754650, 41.209595, 26.363501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076687, 41.286369, 26.587996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129477, -0.866515, 0.482066,
		0.578846, -0.460775, -0.672773,
		0.805092, 0.191933, 0.561239,
		32.318214, 41.343948, 26.756367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089821, 40.672356, 26.291878>,  <31.754650, 41.209595, 26.363501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089821, 40.672356, 26.291878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189018, 40.856419, 26.632875>,  <32.248539, 40.966858, 26.837475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189018, 40.856419, 26.632875>,  <32.089821, 40.672356, 26.291878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189018, 40.856419, 26.632875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184048, -0.841580, 0.507808,
		0.951117, -0.282836, -0.124018,
		0.247998, 0.460160, 0.852497,
		32.263416, 40.994465, 26.888624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373264, 40.189449, 26.704803>,  <32.089821, 40.672356, 26.291878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373264, 40.189449, 26.704803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313683, 40.470451, 26.983171>,  <32.277931, 40.639053, 27.150192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313683, 40.470451, 26.983171>,  <32.373264, 40.189449, 26.704803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313683, 40.470451, 26.983171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379886, -0.690419, 0.615637,
		0.912962, -0.172667, 0.369712,
		-0.148956, 0.702501, 0.695920,
		32.268997, 40.681202, 27.191948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577988, 39.895626, 27.293024>,  <32.373264, 40.189449, 26.704803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577988, 39.895626, 27.293024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352108, 40.203735, 27.411543>,  <32.216579, 40.388599, 27.482655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352108, 40.203735, 27.411543>,  <32.577988, 39.895626, 27.293024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352108, 40.203735, 27.411543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391183, -0.565944, 0.725730,
		0.726697, 0.293915, 0.620907,
		-0.564701, 0.770274, 0.296295,
		32.182697, 40.434818, 27.500431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626915, 39.911480, 28.056799>,  <32.577988, 39.895626, 27.293024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626915, 39.911480, 28.056799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298084, 40.127895, 27.985842>,  <32.100784, 40.257744, 27.943268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298084, 40.127895, 27.985842>,  <32.626915, 39.911480, 28.056799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298084, 40.127895, 27.985842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446429, -0.419101, 0.790605,
		0.353402, 0.729131, 0.586068,
		-0.822076, 0.541038, -0.177394,
		32.051460, 40.290207, 27.932623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398232, 40.255428, 28.707270>,  <32.626915, 39.911480, 28.056799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398232, 40.255428, 28.707270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083656, 40.230316, 28.461481>,  <31.894911, 40.215248, 28.314009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083656, 40.230316, 28.461481>,  <32.398232, 40.255428, 28.707270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083656, 40.230316, 28.461481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543436, -0.402526, 0.736648,
		-0.293589, 0.913253, 0.282444,
		-0.786437, -0.062782, -0.614472,
		31.847725, 40.211483, 28.277140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843855, 40.505108, 29.096571>,  <32.398232, 40.255428, 28.707270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843855, 40.505108, 29.096571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650003, 40.308773, 28.806961>,  <31.533691, 40.190971, 28.633194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650003, 40.308773, 28.806961>,  <31.843855, 40.505108, 29.096571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650003, 40.308773, 28.806961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600834, -0.414766, 0.683351,
		-0.635714, 0.766192, -0.093902,
		-0.484631, -0.490834, -0.724027,
		31.504614, 40.161522, 28.589752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120562, 40.547455, 29.143120>,  <31.843855, 40.505108, 29.096571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120562, 40.547455, 29.143120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129303, 40.213947, 28.922445>,  <31.134548, 40.013844, 28.790041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129303, 40.213947, 28.922445>,  <31.120562, 40.547455, 29.143120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129303, 40.213947, 28.922445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565428, -0.465394, 0.680955,
		-0.824508, 0.297058, -0.481604,
		0.021852, -0.833765, -0.551687,
		31.135859, 39.963818, 28.756939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389420, 40.313835, 29.115995>,  <31.120562, 40.547455, 29.143120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389420, 40.313835, 29.115995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614159, 39.999237, 29.013426>,  <30.749002, 39.810478, 28.951883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614159, 39.999237, 29.013426>,  <30.389420, 40.313835, 29.115995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614159, 39.999237, 29.013426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526598, -0.579097, 0.622368,
		-0.637985, -0.214641, -0.739530,
		0.561845, -0.786496, -0.256425,
		30.782713, 39.763287, 28.936499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876232, 39.777126, 28.988445>,  <30.389420, 40.313835, 29.115995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876232, 39.777126, 28.988445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225773, 39.588284, 29.034925>,  <30.435497, 39.474979, 29.062813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225773, 39.588284, 29.034925>,  <29.876232, 39.777126, 28.988445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225773, 39.588284, 29.034925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449690, -0.693958, 0.562318,
		-0.184837, -0.543635, -0.818717,
		0.873850, -0.472106, 0.116198,
		30.487928, 39.446651, 29.069784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625275, 39.035511, 29.077564>,  <29.876232, 39.777126, 28.988445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625275, 39.035511, 29.077564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003979, 39.051514, 29.205343>,  <30.231201, 39.061115, 29.282011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003979, 39.051514, 29.205343>,  <29.625275, 39.035511, 29.077564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003979, 39.051514, 29.205343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226090, -0.623775, 0.748190,
		0.229197, -0.780580, -0.581519,
		0.946759, 0.040007, 0.319449,
		30.288006, 39.063515, 29.301178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944693, 38.300873, 29.170620>,  <29.625275, 39.035511, 29.077564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944693, 38.300873, 29.170620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171190, 38.532463, 29.405279>,  <30.307089, 38.671417, 29.546076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171190, 38.532463, 29.405279>,  <29.944693, 38.300873, 29.170620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171190, 38.532463, 29.405279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066043, -0.677591, 0.732468,
		0.821586, -0.453501, -0.345446,
		0.566246, 0.578971, 0.586650,
		30.341064, 38.706154, 29.581274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403612, 37.818989, 29.448521>,  <29.944693, 38.300873, 29.170620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403612, 37.818989, 29.448521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454231, 38.108021, 29.720362>,  <30.484602, 38.281441, 29.883467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454231, 38.108021, 29.720362>,  <30.403612, 37.818989, 29.448521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454231, 38.108021, 29.720362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017855, -0.683343, 0.729879,
		0.991800, -0.104498, -0.073574,
		0.126547, 0.722581, 0.679605,
		30.492195, 38.324795, 29.924244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933060, 37.668480, 29.887917>,  <30.403612, 37.818989, 29.448521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933060, 37.668480, 29.887917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701389, 37.920818, 30.094444>,  <30.562387, 38.072224, 30.218361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701389, 37.920818, 30.094444>,  <30.933060, 37.668480, 29.887917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701389, 37.920818, 30.094444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073903, -0.590122, 0.803924,
		0.811845, 0.503772, 0.295163,
		-0.579177, 0.630849, 0.516318,
		30.527636, 38.110073, 30.249340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342287, 37.865578, 30.486698>,  <30.933060, 37.668480, 29.887917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342287, 37.865578, 30.486698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970444, 37.970020, 30.590738>,  <30.747337, 38.032684, 30.653162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970444, 37.970020, 30.590738>,  <31.342287, 37.865578, 30.486698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970444, 37.970020, 30.590738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132327, -0.422223, 0.896782,
		0.343973, 0.868075, 0.357951,
		-0.929609, 0.261102, 0.260102,
		30.691561, 38.048351, 30.668770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411184, 38.082199, 31.094694>,  <31.342287, 37.865578, 30.486698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411184, 38.082199, 31.094694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022480, 37.990505, 31.072308>,  <30.789257, 37.935490, 31.058876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022480, 37.990505, 31.072308>,  <31.411184, 38.082199, 31.094694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022480, 37.990505, 31.072308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075953, -0.528417, 0.845580,
		-0.223415, 0.817450, 0.530906,
		-0.971760, -0.229239, -0.055968,
		30.730951, 37.921734, 31.055517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045395, 38.221333, 31.860338>,  <31.411184, 38.082199, 31.094694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045395, 38.221333, 31.860338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788145, 37.986206, 31.664024>,  <30.633795, 37.845131, 31.546236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788145, 37.986206, 31.664024>,  <31.045395, 38.221333, 31.860338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788145, 37.986206, 31.664024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049013, -0.607995, 0.792426,
		-0.764192, 0.533683, 0.362205,
		-0.643123, -0.587813, -0.490783,
		30.595207, 37.809860, 31.516788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616907, 38.011513, 32.350304>,  <31.045395, 38.221333, 31.860338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616907, 38.011513, 32.350304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548086, 37.750179, 32.055401>,  <30.506794, 37.593380, 31.878460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548086, 37.750179, 32.055401>,  <30.616907, 38.011513, 32.350304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548086, 37.750179, 32.055401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034975, -0.751997, 0.658238,
		-0.984467, 0.087467, 0.152234,
		-0.172054, -0.653338, -0.737257,
		30.496469, 37.554176, 31.834225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993416, 37.656197, 32.578194>,  <30.616907, 38.011513, 32.350304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993416, 37.656197, 32.578194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209217, 37.425671, 32.332657>,  <30.338697, 37.287354, 32.185337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209217, 37.425671, 32.332657>,  <29.993416, 37.656197, 32.578194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209217, 37.425671, 32.332657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137892, -0.779670, 0.610820,
		-0.830617, -0.244894, -0.500102,
		0.539501, -0.576317, -0.613838,
		30.371067, 37.252777, 32.148506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660788, 37.058079, 32.712074>,  <29.993416, 37.656197, 32.578194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660788, 37.058079, 32.712074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983255, 36.946869, 32.503155>,  <30.176737, 36.880142, 32.377804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983255, 36.946869, 32.503155>,  <29.660788, 37.058079, 32.712074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983255, 36.946869, 32.503155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144416, -0.763575, 0.629363,
		-0.573790, -0.582801, -0.575420,
		0.806169, -0.278022, -0.522297,
		30.225105, 36.863461, 32.346466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482321, 36.334312, 32.509785>,  <29.660788, 37.058079, 32.712074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482321, 36.334312, 32.509785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879267, 36.380867, 32.493473>,  <30.117435, 36.408798, 32.483688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879267, 36.380867, 32.493473>,  <29.482321, 36.334312, 32.509785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879267, 36.380867, 32.493473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112519, -0.719192, 0.685640,
		0.050473, -0.684994, -0.726798,
		0.992367, 0.116385, -0.040775,
		30.176977, 36.415783, 32.481239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733685, 35.686954, 32.256321>,  <29.482321, 36.334312, 32.509785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733685, 35.686954, 32.256321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048410, 35.865311, 32.427017>,  <30.237246, 35.972324, 32.529434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048410, 35.865311, 32.427017>,  <29.733685, 35.686954, 32.256321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048410, 35.865311, 32.427017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014538, -0.704617, 0.709439,
		0.617019, -0.551993, -0.560885,
		0.786814, 0.445892, 0.426737,
		30.284454, 35.999077, 32.555038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364113, 35.230793, 32.268005>,  <29.733685, 35.686954, 32.256321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364113, 35.230793, 32.268005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444298, 35.484753, 32.566460>,  <30.492409, 35.637127, 32.745533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444298, 35.484753, 32.566460>,  <30.364113, 35.230793, 32.268005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444298, 35.484753, 32.566460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340681, -0.759240, 0.554518,
		0.918559, 0.143035, -0.368497,
		0.200462, 0.634898, 0.746136,
		30.504436, 35.675220, 32.790302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919613, 34.830318, 32.557949>,  <30.364113, 35.230793, 32.268005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919613, 34.830318, 32.557949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800076, 35.093819, 32.834133>,  <30.728354, 35.251919, 32.999844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800076, 35.093819, 32.834133>,  <30.919613, 34.830318, 32.557949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800076, 35.093819, 32.834133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100441, -0.697794, 0.709221,
		0.949002, 0.281297, 0.142365,
		-0.298843, 0.658753, 0.690462,
		30.710423, 35.291443, 33.041271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373739, 34.719624, 33.073147>,  <30.919613, 34.830318, 32.557949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373739, 34.719624, 33.073147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066656, 34.915730, 33.238197>,  <30.882406, 35.033394, 33.337227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066656, 34.915730, 33.238197>,  <31.373739, 34.719624, 33.073147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066656, 34.915730, 33.238197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039054, -0.606931, 0.793795,
		0.639609, 0.625517, 0.446799,
		-0.767708, 0.490269, 0.412627,
		30.836344, 35.062809, 33.361984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590616, 34.759830, 33.676414>,  <31.373739, 34.719624, 33.073147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590616, 34.759830, 33.676414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197077, 34.809177, 33.728302>,  <30.960953, 34.838783, 33.759434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197077, 34.809177, 33.728302>,  <31.590616, 34.759830, 33.676414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197077, 34.809177, 33.728302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029223, -0.604243, 0.796264,
		0.176614, 0.787192, 0.590877,
		-0.983846, 0.123364, 0.129722,
		30.901922, 34.846188, 33.767220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395849, 35.450851, 33.460793>,  <31.590616, 34.759830, 33.676414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395849, 35.450851, 33.460793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711355, 35.272366, 33.629902>,  <31.900660, 35.165276, 33.731369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711355, 35.272366, 33.629902>,  <31.395849, 35.450851, 33.460793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711355, 35.272366, 33.629902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512586, 0.857076, -0.051730,
		-0.339269, 0.257512, 0.904756,
		0.788766, -0.446215, 0.422777,
		31.947985, 35.138500, 33.756733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735020, 35.908787, 33.843708>,  <31.395849, 35.450851, 33.460793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735020, 35.908787, 33.843708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016090, 35.627403, 33.801006>,  <32.184734, 35.458572, 33.775383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016090, 35.627403, 33.801006>,  <31.735020, 35.908787, 33.843708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016090, 35.627403, 33.801006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628987, 0.684285, -0.368957,
		0.332597, 0.192109, 0.923295,
		0.702676, -0.703455, -0.106757,
		32.226894, 35.416367, 33.768978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374630, 36.143448, 34.094017>,  <31.735020, 35.908787, 33.843708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374630, 36.143448, 34.094017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499435, 35.846161, 33.857277>,  <32.574318, 35.667789, 33.715233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499435, 35.846161, 33.857277>,  <32.374630, 36.143448, 34.094017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499435, 35.846161, 33.857277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646033, 0.622729, -0.441419,
		0.696629, -0.244625, 0.674439,
		0.312011, -0.743214, -0.591846,
		32.593040, 35.623196, 33.679722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014767, 36.175404, 34.267357>,  <32.374630, 36.143448, 34.094017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014767, 36.175404, 34.267357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987316, 35.977215, 33.920994>,  <32.970844, 35.858303, 33.713177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987316, 35.977215, 33.920994>,  <33.014767, 36.175404, 34.267357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987316, 35.977215, 33.920994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733946, 0.562818, -0.380209,
		0.675732, -0.661624, 0.325024,
		-0.068626, -0.495469, -0.865911,
		32.966728, 35.828575, 33.661221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645618, 36.123474, 34.046314>,  <33.014767, 36.175404, 34.267357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645618, 36.123474, 34.046314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465336, 36.034882, 33.700409>,  <33.357166, 35.981724, 33.492867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465336, 36.034882, 33.700409>,  <33.645618, 36.123474, 34.046314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465336, 36.034882, 33.700409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746937, 0.436904, -0.501198,
		0.488825, -0.871814, -0.031479,
		-0.450704, -0.221485, -0.864760,
		33.330124, 35.968437, 33.440979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182426, 35.858738, 33.676945>,  <33.645618, 36.123474, 34.046314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182426, 35.858738, 33.676945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895168, 35.983696, 33.428211>,  <33.722813, 36.058670, 33.278973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895168, 35.983696, 33.428211>,  <34.182426, 35.858738, 33.676945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895168, 35.983696, 33.428211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668830, 0.556611, -0.492798,
		0.192170, -0.769801, -0.608668,
		-0.718148, 0.312394, -0.621830,
		33.679726, 36.077415, 33.241661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544540, 35.947735, 33.029408>,  <34.182426, 35.858738, 33.676945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544540, 35.947735, 33.029408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208836, 36.162983, 32.998280>,  <34.007412, 36.292133, 32.979603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208836, 36.162983, 32.998280>,  <34.544540, 35.947735, 33.029408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208836, 36.162983, 32.998280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508336, 0.725782, -0.463503,
		-0.192941, -0.428561, -0.882671,
		-0.839266, 0.538122, -0.077820,
		33.957054, 36.324421, 32.974934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598679, 36.253326, 32.280533>,  <34.544540, 35.947735, 33.029408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598679, 36.253326, 32.280533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313408, 36.446617, 32.483658>,  <34.142246, 36.562592, 32.605534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313408, 36.446617, 32.483658>,  <34.598679, 36.253326, 32.280533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313408, 36.446617, 32.483658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240454, 0.849117, -0.470300,
		-0.658453, -0.213301, -0.721763,
		-0.713177, 0.483222, 0.507815,
		34.099457, 36.591583, 32.636002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094704, 36.581501, 31.868376>,  <34.598679, 36.253326, 32.280533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094704, 36.581501, 31.868376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071579, 36.798229, 32.203777>,  <34.057705, 36.928268, 32.405018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071579, 36.798229, 32.203777>,  <34.094704, 36.581501, 31.868376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071579, 36.798229, 32.203777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001917, 0.839966, -0.542636,
		-0.998326, -0.029761, -0.049595,
		-0.057807, 0.541823, 0.838502,
		34.054237, 36.960777, 32.455330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658333, 37.010967, 31.663223>,  <34.094704, 36.581501, 31.868376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658333, 37.010967, 31.663223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818405, 37.170433, 31.993296>,  <33.914448, 37.266113, 32.191338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818405, 37.170433, 31.993296>,  <33.658333, 37.010967, 31.663223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818405, 37.170433, 31.993296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192908, 0.843604, -0.501117,
		-0.895904, 0.359720, 0.260686,
		0.400178, 0.398664, 0.825182,
		33.938457, 37.290031, 32.240849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255146, 37.645050, 31.793293>,  <33.658333, 37.010967, 31.663223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255146, 37.645050, 31.793293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609825, 37.665836, 31.977062>,  <33.822632, 37.678310, 32.087322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609825, 37.665836, 31.977062>,  <33.255146, 37.645050, 31.793293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609825, 37.665836, 31.977062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207510, 0.843234, -0.495880,
		-0.413171, 0.535029, 0.736908,
		0.886696, 0.051968, 0.459424,
		33.875835, 37.681427, 32.114891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254379, 38.317188, 31.944523>,  <33.255146, 37.645050, 31.793293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254379, 38.317188, 31.944523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626781, 38.173107, 31.968147>,  <33.850224, 38.086658, 31.982323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626781, 38.173107, 31.968147>,  <33.254379, 38.317188, 31.944523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626781, 38.173107, 31.968147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351932, 0.842899, -0.407021,
		0.096825, 0.399724, 0.911507,
		0.931004, -0.360198, 0.059062,
		33.906082, 38.065048, 31.985867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692345, 38.870262, 32.117680>,  <33.254379, 38.317188, 31.944523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692345, 38.870262, 32.117680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959465, 38.622360, 31.952780>,  <34.119736, 38.473621, 31.853840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959465, 38.622360, 31.952780>,  <33.692345, 38.870262, 32.117680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959465, 38.622360, 31.952780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424454, 0.772040, -0.473067,
		0.611460, 0.140931, 0.778624,
		0.667799, -0.619752, -0.412252,
		34.159805, 38.436436, 31.829103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283852, 39.305611, 32.026001>,  <33.692345, 38.870262, 32.117680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283852, 39.305611, 32.026001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342236, 39.004490, 31.769257>,  <34.377266, 38.823818, 31.615210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342236, 39.004490, 31.769257>,  <34.283852, 39.305611, 32.026001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342236, 39.004490, 31.769257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521458, 0.609905, -0.596739,
		0.840701, -0.247606, 0.481575,
		0.145959, -0.752800, -0.641863,
		34.386024, 38.778648, 31.576698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071079, 39.248596, 31.831518>,  <34.283852, 39.305611, 32.026001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071079, 39.248596, 31.831518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843555, 39.063694, 31.559406>,  <34.707043, 38.952755, 31.396139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843555, 39.063694, 31.559406>,  <35.071079, 39.248596, 31.831518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843555, 39.063694, 31.559406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370066, 0.594822, -0.713609,
		0.734514, -0.657654, -0.167274,
		-0.568805, -0.462253, -0.680281,
		34.672913, 38.925018, 31.355322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530811, 39.280727, 31.172579>,  <35.071079, 39.248596, 31.831518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530811, 39.280727, 31.172579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142731, 39.232868, 31.088295>,  <34.909882, 39.204155, 31.037725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142731, 39.232868, 31.088295>,  <35.530811, 39.280727, 31.172579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142731, 39.232868, 31.088295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104625, 0.577497, -0.809661,
		0.218554, -0.807578, -0.547770,
		-0.970200, -0.119644, -0.210707,
		34.851669, 39.196976, 31.025084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435940, 39.341602, 30.457100>,  <35.530811, 39.280727, 31.172579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435940, 39.341602, 30.457100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050705, 39.365993, 30.561975>,  <34.819565, 39.380627, 30.624901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050705, 39.365993, 30.561975>,  <35.435940, 39.341602, 30.457100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050705, 39.365993, 30.561975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201955, 0.480299, -0.853538,
		-0.177977, -0.874983, -0.450255,
		-0.963088, 0.060979, 0.262189,
		34.761780, 39.384289, 30.640633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022320, 39.063282, 29.850849>,  <35.435940, 39.341602, 30.457100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022320, 39.063282, 29.850849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778858, 39.305107, 30.056391>,  <34.632782, 39.450203, 30.179716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778858, 39.305107, 30.056391>,  <35.022320, 39.063282, 29.850849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778858, 39.305107, 30.056391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215638, 0.497212, -0.840405,
		-0.763568, -0.622325, -0.172266,
		-0.608658, 0.604559, 0.513852,
		34.596260, 39.486473, 30.210546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411324, 39.121925, 29.501978>,  <35.022320, 39.063282, 29.850849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411324, 39.121925, 29.501978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406689, 39.448040, 29.733555>,  <34.403908, 39.643707, 29.872501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406689, 39.448040, 29.733555>,  <34.411324, 39.121925, 29.501978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406689, 39.448040, 29.733555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068991, 0.576951, -0.813860,
		-0.997550, -0.049371, 0.049562,
		-0.011586, 0.815285, 0.578944,
		34.403214, 39.692627, 29.907238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841789, 39.520584, 29.261862>,  <34.411324, 39.121925, 29.501978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841789, 39.520584, 29.261862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076160, 39.773884, 29.464123>,  <34.216782, 39.925865, 29.585480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076160, 39.773884, 29.464123>,  <33.841789, 39.520584, 29.261862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076160, 39.773884, 29.464123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025152, 0.609470, -0.792410,
		-0.809976, 0.477010, 0.341176,
		0.585924, 0.633251, 0.505654,
		34.251938, 39.963860, 29.615818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569405, 40.125771, 29.111032>,  <33.841789, 39.520584, 29.261862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569405, 40.125771, 29.111032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928349, 40.204899, 29.268827>,  <34.143715, 40.252377, 29.363504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928349, 40.204899, 29.268827>,  <33.569405, 40.125771, 29.111032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928349, 40.204899, 29.268827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185657, 0.641734, -0.744117,
		-0.400356, 0.740977, 0.539137,
		0.897355, 0.197817, 0.394489,
		34.197556, 40.264244, 29.387175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647064, 40.808876, 29.226095>,  <33.569405, 40.125771, 29.111032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647064, 40.808876, 29.226095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021957, 40.675949, 29.183834>,  <34.246891, 40.596191, 29.158478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021957, 40.675949, 29.183834>,  <33.647064, 40.808876, 29.226095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021957, 40.675949, 29.183834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150528, 0.658857, -0.737054,
		0.314547, 0.674886, 0.667524,
		0.937231, -0.332319, -0.105653,
		34.303127, 40.576252, 29.152138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000130, 41.426109, 29.191036>,  <33.647064, 40.808876, 29.226095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000130, 41.426109, 29.191036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255783, 41.148659, 29.058136>,  <34.409176, 40.982189, 28.978395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255783, 41.148659, 29.058136>,  <34.000130, 41.426109, 29.191036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255783, 41.148659, 29.058136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319748, 0.632539, -0.705447,
		0.699479, 0.344637, 0.626062,
		0.639132, -0.693627, -0.332251,
		34.447521, 40.940571, 28.958460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659355, 41.776920, 29.094263>,  <34.000130, 41.426109, 29.191036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659355, 41.776920, 29.094263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655704, 41.458481, 28.852224>,  <34.653515, 41.267418, 28.707001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655704, 41.458481, 28.852224>,  <34.659355, 41.776920, 29.094263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655704, 41.458481, 28.852224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221143, 0.588533, -0.777641,
		0.975199, -0.140908, 0.170683,
		-0.009123, -0.796099, -0.605097,
		34.652969, 41.219650, 28.670694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387230, 41.734245, 28.732071>,  <34.659355, 41.776920, 29.094263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387230, 41.734245, 28.732071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115997, 41.539009, 28.512260>,  <34.953259, 41.421867, 28.380375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115997, 41.539009, 28.512260>,  <35.387230, 41.734245, 28.732071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115997, 41.539009, 28.512260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337157, 0.457796, -0.822647,
		0.653096, -0.743095, -0.145858,
		-0.678078, -0.488091, -0.549525,
		34.912575, 41.392582, 28.347403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723045, 41.683262, 28.200624>,  <35.387230, 41.734245, 28.732071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723045, 41.683262, 28.200624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372215, 41.576836, 28.040648>,  <35.161716, 41.512981, 27.944662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372215, 41.576836, 28.040648>,  <35.723045, 41.683262, 28.200624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372215, 41.576836, 28.040648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265006, 0.426418, -0.864835,
		0.400632, -0.864514, -0.303497,
		-0.877078, -0.266052, -0.399938,
		35.109093, 41.497017, 27.920666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835346, 41.516705, 27.513811>,  <35.723045, 41.683262, 28.200624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835346, 41.516705, 27.513811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446045, 41.608173, 27.505051>,  <35.212463, 41.663055, 27.499794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446045, 41.608173, 27.505051>,  <35.835346, 41.516705, 27.513811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446045, 41.608173, 27.505051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123924, 0.442359, -0.888235,
		-0.193428, -0.867195, -0.458867,
		-0.973256, 0.228674, -0.021902,
		35.154068, 41.676777, 27.498480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612251, 41.298111, 26.976616>,  <35.835346, 41.516705, 27.513811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612251, 41.298111, 26.976616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343590, 41.585205, 27.050091>,  <35.182392, 41.757462, 27.094175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343590, 41.585205, 27.050091>,  <35.612251, 41.298111, 26.976616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343590, 41.585205, 27.050091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041959, 0.284389, -0.957790,
		-0.739674, -0.635599, -0.221127,
		-0.671656, 0.717731, 0.183686,
		35.142094, 41.800526, 27.105196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310925, 41.265217, 26.338505>,  <35.612251, 41.298111, 26.976616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310925, 41.265217, 26.338505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188805, 41.607811, 26.504986>,  <35.115532, 41.813366, 26.604876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188805, 41.607811, 26.504986>,  <35.310925, 41.265217, 26.338505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188805, 41.607811, 26.504986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136334, 0.471881, -0.871057,
		-0.942447, -0.209188, -0.260832,
		-0.305296, 0.856486, 0.416204,
		35.097214, 41.864758, 26.629847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795612, 41.474873, 25.894083>,  <35.310925, 41.265217, 26.338505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795612, 41.474873, 25.894083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931824, 41.795914, 26.089989>,  <35.013550, 41.988537, 26.207533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931824, 41.795914, 26.089989>,  <34.795612, 41.474873, 25.894083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931824, 41.795914, 26.089989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169092, 0.460128, -0.871602,
		-0.924906, 0.379618, 0.020972,
		0.340525, 0.802604, 0.489765,
		35.033981, 42.036694, 26.236917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510319, 42.072788, 25.483366>,  <34.795612, 41.474873, 25.894083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510319, 42.072788, 25.483366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798058, 42.223221, 25.716982>,  <34.970699, 42.313480, 25.857151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798058, 42.223221, 25.716982>,  <34.510319, 42.072788, 25.483366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798058, 42.223221, 25.716982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381634, 0.488558, -0.784644,
		-0.580430, 0.787320, 0.207915,
		0.719344, 0.376084, 0.584042,
		35.013863, 42.336044, 25.892195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384701, 42.778847, 25.432394>,  <34.510319, 42.072788, 25.483366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384701, 42.778847, 25.432394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756908, 42.668274, 25.528496>,  <34.980232, 42.601929, 25.586157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756908, 42.668274, 25.528496>,  <34.384701, 42.778847, 25.432394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756908, 42.668274, 25.528496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346926, 0.455016, -0.820123,
		0.117392, 0.846489, 0.519303,
		0.930517, -0.276436, 0.240254,
		35.036064, 42.585342, 25.600573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829460, 43.336998, 25.195465>,  <34.384701, 42.778847, 25.432394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829460, 43.336998, 25.195465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107967, 43.056194, 25.255318>,  <35.275074, 42.887711, 25.291229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107967, 43.056194, 25.255318>,  <34.829460, 43.336998, 25.195465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107967, 43.056194, 25.255318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563263, 0.405166, -0.720122,
		0.444905, 0.585684, 0.677521,
		0.696272, -0.702008, 0.149634,
		35.316849, 42.845592, 25.300207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479469, 43.698883, 25.145685>,  <34.829460, 43.336998, 25.195465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479469, 43.698883, 25.145685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525898, 43.307747, 25.075991>,  <35.553757, 43.073067, 25.034174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525898, 43.307747, 25.075991>,  <35.479469, 43.698883, 25.145685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525898, 43.307747, 25.075991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429288, 0.207579, -0.878990,
		0.895678, 0.027227, 0.443868,
		0.116070, -0.977839, -0.174236,
		35.560719, 43.014397, 25.023720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938858, 43.670578, 24.686506>,  <35.479469, 43.698883, 25.145685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938858, 43.670578, 24.686506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826992, 43.289597, 24.638153>,  <35.759872, 43.061008, 24.609140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826992, 43.289597, 24.638153>,  <35.938858, 43.670578, 24.686506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826992, 43.289597, 24.638153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275307, 0.041064, -0.960479,
		0.919779, -0.301891, 0.250735,
		-0.279664, -0.952458, -0.120882,
		35.743092, 43.003860, 24.601889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463665, 43.450176, 24.294815>,  <35.938858, 43.670578, 24.686506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463665, 43.450176, 24.294815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160759, 43.197060, 24.230156>,  <35.979015, 43.045189, 24.191360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160759, 43.197060, 24.230156>,  <36.463665, 43.450176, 24.294815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160759, 43.197060, 24.230156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301627, -0.119315, -0.945931,
		0.579288, -0.765076, 0.281219,
		-0.757263, -0.632789, -0.161650,
		35.933578, 43.007221, 24.181662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761799, 42.929520, 23.843712>,  <36.463665, 43.450176, 24.294815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761799, 42.929520, 23.843712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362930, 42.950821, 23.822462>,  <36.123611, 42.963604, 23.809713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362930, 42.950821, 23.822462>,  <36.761799, 42.929520, 23.843712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362930, 42.950821, 23.822462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064273, 0.236320, -0.969547,
		-0.039082, -0.970215, -0.239073,
		-0.997167, 0.053257, -0.053123,
		36.063782, 42.966797, 23.806524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384132, 42.700993, 23.234982>,  <36.761799, 42.929520, 23.843712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384132, 42.700993, 23.234982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644104, 42.532833, 22.981726>,  <36.800087, 42.431938, 22.829773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644104, 42.532833, 22.981726>,  <36.384132, 42.700993, 23.234982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644104, 42.532833, 22.981726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256824, -0.662584, 0.703579,
		-0.715290, -0.619879, -0.322662,
		0.649925, -0.420395, -0.633139,
		36.839081, 42.406715, 22.791784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290466, 41.890713, 23.231874>,  <36.384132, 42.700993, 23.234982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290466, 41.890713, 23.231874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668266, 41.975887, 23.131815>,  <36.894947, 42.026993, 23.071779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668266, 41.975887, 23.131815>,  <36.290466, 41.890713, 23.231874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668266, 41.975887, 23.131815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326337, -0.695533, 0.640108,
		-0.037687, -0.686217, -0.726420,
		0.944502, 0.212934, -0.250150,
		36.951618, 42.039768, 23.056770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607254, 41.253483, 23.218412>,  <36.290466, 41.890713, 23.231874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607254, 41.253483, 23.218412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901436, 41.522232, 23.253490>,  <37.077946, 41.683483, 23.274538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901436, 41.522232, 23.253490>,  <36.607254, 41.253483, 23.218412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901436, 41.522232, 23.253490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432954, -0.565545, 0.701933,
		0.521207, -0.478271, -0.706824,
		0.735455, 0.671875, 0.087697,
		37.122074, 41.723793, 23.279800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172997, 40.865528, 23.205589>,  <36.607254, 41.253483, 23.218412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172997, 40.865528, 23.205589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280548, 41.211510, 23.375084>,  <37.345081, 41.419098, 23.476782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280548, 41.211510, 23.375084>,  <37.172997, 40.865528, 23.205589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280548, 41.211510, 23.375084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552575, -0.498867, 0.667677,
		0.788901, 0.054621, -0.612089,
		0.268881, 0.864956, 0.423738,
		37.361214, 41.470997, 23.502205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820980, 40.769562, 23.495275>,  <37.172997, 40.865528, 23.205589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820980, 40.769562, 23.495275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749882, 41.112751, 23.688061>,  <37.707222, 41.318665, 23.803732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749882, 41.112751, 23.688061>,  <37.820980, 40.769562, 23.495275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749882, 41.112751, 23.688061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333609, -0.408226, 0.849739,
		0.925803, 0.311826, -0.213667,
		-0.177746, 0.857972, 0.481964,
		37.696556, 41.370144, 23.832649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417694, 40.825481, 23.922194>,  <37.820980, 40.769562, 23.495275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417694, 40.825481, 23.922194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139713, 41.067345, 24.077847>,  <37.972923, 41.212463, 24.171238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139713, 41.067345, 24.077847>,  <38.417694, 40.825481, 23.922194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139713, 41.067345, 24.077847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250092, -0.304128, 0.919217,
		0.674158, 0.736135, 0.060135,
		-0.694957, 0.604659, 0.389132,
		37.931225, 41.248741, 24.194586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685509, 41.083824, 24.452738>,  <38.417694, 40.825481, 23.922194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685509, 41.083824, 24.452738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297943, 41.139893, 24.534281>,  <38.065403, 41.173534, 24.583206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297943, 41.139893, 24.534281>,  <38.685509, 41.083824, 24.452738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297943, 41.139893, 24.534281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163969, -0.253185, 0.953421,
		0.185256, 0.957209, 0.222330,
		-0.968914, 0.140172, 0.203856,
		38.007271, 41.181946, 24.595438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594025, 41.483131, 25.068798>,  <38.685509, 41.083824, 24.452738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594025, 41.483131, 25.068798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242409, 41.294762, 25.039059>,  <38.031441, 41.181740, 25.021215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242409, 41.294762, 25.039059>,  <38.594025, 41.483131, 25.068798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242409, 41.294762, 25.039059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008111, -0.170693, 0.985291,
		-0.476688, 0.865502, 0.153865,
		-0.879035, -0.470924, -0.074348,
		37.978699, 41.153484, 25.016754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370758, 41.531986, 25.789036>,  <38.594025, 41.483131, 25.068798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370758, 41.531986, 25.789036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108028, 41.267963, 25.643213>,  <37.950390, 41.109550, 25.555719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108028, 41.267963, 25.643213>,  <38.370758, 41.531986, 25.789036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108028, 41.267963, 25.643213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086665, -0.414186, 0.906057,
		-0.749043, 0.626718, 0.214845,
		-0.656828, -0.660056, -0.364558,
		37.910980, 41.069946, 25.533846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008602, 41.462406, 26.347235>,  <38.370758, 41.531986, 25.789036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008602, 41.462406, 26.347235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920879, 41.148666, 26.115131>,  <37.868248, 40.960423, 25.975870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920879, 41.148666, 26.115131>,  <38.008602, 41.462406, 26.347235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920879, 41.148666, 26.115131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136870, -0.564122, 0.814268,
		-0.966008, 0.257993, 0.016361,
		-0.219305, -0.784351, -0.580258,
		37.855087, 40.913361, 25.941053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311951, 41.092995, 26.547483>,  <38.008602, 41.462406, 26.347235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311951, 41.092995, 26.547483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523388, 40.807720, 26.363327>,  <37.650249, 40.636555, 26.252834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523388, 40.807720, 26.363327>,  <37.311951, 41.092995, 26.547483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523388, 40.807720, 26.363327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173019, -0.621482, 0.764084,
		-0.831058, -0.324231, -0.451904,
		0.528590, -0.713186, -0.460390,
		37.681965, 40.593765, 26.225210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885307, 40.533863, 26.542995>,  <37.311951, 41.092995, 26.547483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885307, 40.533863, 26.542995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254951, 40.396862, 26.475229>,  <37.476738, 40.314659, 26.434570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254951, 40.396862, 26.475229>,  <36.885307, 40.533863, 26.542995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254951, 40.396862, 26.475229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134539, -0.706619, 0.694686,
		-0.357645, -0.619177, -0.699078,
		0.924115, -0.342504, -0.169416,
		37.532185, 40.294109, 26.424404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849773, 39.720615, 26.618294>,  <36.885307, 40.533863, 26.542995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849773, 39.720615, 26.618294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246910, 39.765301, 26.635178>,  <37.485191, 39.792110, 26.645308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246910, 39.765301, 26.635178>,  <36.849773, 39.720615, 26.618294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246910, 39.765301, 26.635178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033315, -0.598534, 0.800405,
		0.114679, -0.793271, -0.597972,
		0.992844, 0.111711, 0.042211,
		37.544762, 39.798813, 26.647840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200935, 39.016788, 26.630939>,  <36.849773, 39.720615, 26.618294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200935, 39.016788, 26.630939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437214, 39.276134, 26.823065>,  <37.578983, 39.431740, 26.938341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437214, 39.276134, 26.823065>,  <37.200935, 39.016788, 26.630939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437214, 39.276134, 26.823065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065322, -0.554887, 0.829357,
		0.804243, -0.521276, -0.285419,
		0.590699, 0.648361, 0.480315,
		37.614422, 39.470642, 26.967159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710224, 38.554653, 26.949593>,  <37.200935, 39.016788, 26.630939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710224, 38.554653, 26.949593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683952, 38.912292, 27.126804>,  <37.668190, 39.126877, 27.233131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683952, 38.912292, 27.126804>,  <37.710224, 38.554653, 26.949593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683952, 38.912292, 27.126804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104360, -0.447706, 0.888070,
		0.992369, 0.012090, 0.122711,
		-0.065675, 0.894099, 0.443028,
		37.664249, 39.180523, 27.259712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059624, 38.420071, 27.626965>,  <37.710224, 38.554653, 26.949593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059624, 38.420071, 27.626965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837975, 38.751320, 27.660810>,  <37.704983, 38.950069, 27.681118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837975, 38.751320, 27.660810>,  <38.059624, 38.420071, 27.626965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837975, 38.751320, 27.660810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257848, -0.267399, 0.928446,
		0.791493, 0.492657, 0.361702,
		-0.554125, 0.828122, 0.084613,
		37.671738, 38.999756, 27.686195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160442, 38.628601, 28.296635>,  <38.059624, 38.420071, 27.626965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160442, 38.628601, 28.296635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835529, 38.837952, 28.193663>,  <37.640579, 38.963562, 28.131880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835529, 38.837952, 28.193663>,  <38.160442, 38.628601, 28.296635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835529, 38.837952, 28.193663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354725, -0.092932, 0.930341,
		0.462995, 0.847019, 0.261142,
		-0.812285, 0.523376, -0.257432,
		37.591843, 38.994965, 28.116432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147568, 39.131207, 28.793707>,  <38.160442, 38.628601, 28.296635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147568, 39.131207, 28.793707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785793, 39.102585, 28.625477>,  <37.568729, 39.085411, 28.524540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785793, 39.102585, 28.625477>,  <38.147568, 39.131207, 28.793707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785793, 39.102585, 28.625477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416541, -0.064871, 0.906799,
		-0.092170, 0.995325, 0.028866,
		-0.904432, -0.071556, -0.420573,
		37.514465, 39.081120, 28.499306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632854, 39.546913, 29.094902>,  <38.147568, 39.131207, 28.793707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632854, 39.546913, 29.094902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387169, 39.277088, 28.931099>,  <37.239758, 39.115192, 28.832817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387169, 39.277088, 28.931099>,  <37.632854, 39.546913, 29.094902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387169, 39.277088, 28.931099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444740, -0.132768, 0.885765,
		-0.651877, 0.726177, -0.218458,
		-0.614217, -0.674566, -0.409508,
		37.202904, 39.074718, 28.808247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045353, 39.599243, 29.556040>,  <37.632854, 39.546913, 29.094902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045353, 39.599243, 29.556040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049019, 39.254467, 29.353271>,  <37.051220, 39.047600, 29.231611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049019, 39.254467, 29.353271>,  <37.045353, 39.599243, 29.556040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049019, 39.254467, 29.353271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359154, -0.475952, 0.802794,
		-0.933233, 0.174703, -0.313935,
		0.009168, -0.861944, -0.506920,
		37.051769, 38.995884, 29.201195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377010, 39.343349, 29.650967>,  <37.045353, 39.599243, 29.556040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377010, 39.343349, 29.650967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621479, 39.046257, 29.541548>,  <36.768158, 38.868004, 29.475897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621479, 39.046257, 29.541548>,  <36.377010, 39.343349, 29.650967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621479, 39.046257, 29.541548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346790, -0.561946, 0.750968,
		-0.711486, -0.364101, -0.601013,
		0.611166, -0.742729, -0.273550,
		36.804829, 38.823437, 29.459482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940544, 38.807526, 29.630598>,  <36.377010, 39.343349, 29.650967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940544, 38.807526, 29.630598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308167, 38.657387, 29.678679>,  <36.528740, 38.567303, 29.707527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308167, 38.657387, 29.678679>,  <35.940544, 38.807526, 29.630598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308167, 38.657387, 29.678679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338563, -0.595762, 0.728315,
		-0.201759, -0.710059, -0.674618,
		0.919058, -0.375345, 0.120200,
		36.583885, 38.544785, 29.714739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868904, 38.041256, 29.696829>,  <35.940544, 38.807526, 29.630598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868904, 38.041256, 29.696829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218945, 38.139908, 29.863380>,  <36.428970, 38.199097, 29.963310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218945, 38.139908, 29.863380>,  <35.868904, 38.041256, 29.696829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218945, 38.139908, 29.863380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185366, -0.623952, 0.759160,
		0.447028, -0.741525, -0.500306,
		0.875103, 0.246626, 0.416378,
		36.481476, 38.213894, 29.988295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293346, 37.431042, 29.895142>,  <35.868904, 38.041256, 29.696829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293346, 37.431042, 29.895142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423363, 37.729496, 30.127563>,  <36.501373, 37.908569, 30.267017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423363, 37.729496, 30.127563>,  <36.293346, 37.431042, 29.895142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423363, 37.729496, 30.127563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156925, -0.648456, 0.744902,
		0.932588, -0.150945, -0.327865,
		0.325046, 0.746137, 0.581056,
		36.520878, 37.953339, 30.301880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867970, 37.232906, 30.185747>,  <36.293346, 37.431042, 29.895142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867970, 37.232906, 30.185747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765671, 37.524403, 30.439842>,  <36.704292, 37.699299, 30.592300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765671, 37.524403, 30.439842>,  <36.867970, 37.232906, 30.185747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765671, 37.524403, 30.439842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277077, -0.574272, 0.770351,
		0.926187, 0.373025, -0.055049,
		-0.255747, 0.728742, 0.635240,
		36.688946, 37.743027, 30.630415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264523, 37.106239, 30.760569>,  <36.867970, 37.232906, 30.185747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264523, 37.106239, 30.760569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993382, 37.362202, 30.905365>,  <36.830696, 37.515778, 30.992243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993382, 37.362202, 30.905365>,  <37.264523, 37.106239, 30.760569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993382, 37.362202, 30.905365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193959, -0.319276, 0.927601,
		0.709149, 0.698990, 0.092308,
		-0.677855, 0.639903, 0.361990,
		36.790024, 37.554173, 31.013962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546001, 37.246769, 31.373194>,  <37.264523, 37.106239, 30.760569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546001, 37.246769, 31.373194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186230, 37.415501, 31.418938>,  <36.970367, 37.516739, 31.446384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186230, 37.415501, 31.418938>,  <37.546001, 37.246769, 31.373194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186230, 37.415501, 31.418938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038507, -0.337126, 0.940672,
		0.435360, 0.841667, 0.319465,
		-0.899433, 0.421833, 0.114361,
		36.916401, 37.542049, 31.453245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531471, 37.742138, 31.948254>,  <37.546001, 37.246769, 31.373194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531471, 37.742138, 31.948254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147392, 37.634876, 31.916983>,  <36.916946, 37.570518, 31.898220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147392, 37.634876, 31.916983>,  <37.531471, 37.742138, 31.948254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147392, 37.634876, 31.916983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025824, -0.363907, 0.931077,
		-0.278123, 0.892000, 0.356347,
		-0.960198, -0.268157, -0.078176,
		36.859333, 37.554428, 31.893530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261189, 37.986134, 32.555000>,  <37.531471, 37.742138, 31.948254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261189, 37.986134, 32.555000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028385, 37.694817, 32.410305>,  <36.888702, 37.520027, 32.323490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028385, 37.694817, 32.410305>,  <37.261189, 37.986134, 32.555000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028385, 37.694817, 32.410305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178506, -0.319565, 0.930599,
		-0.793350, 0.606187, 0.055983,
		-0.582007, -0.728297, -0.361734,
		36.853783, 37.476326, 32.301785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799397, 37.929504, 33.037136>,  <37.261189, 37.986134, 32.555000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799397, 37.929504, 33.037136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708557, 37.588474, 32.848862>,  <36.654053, 37.383858, 32.735897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708557, 37.588474, 32.848862>,  <36.799397, 37.929504, 33.037136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708557, 37.588474, 32.848862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074360, -0.497084, 0.864510,
		-0.971030, 0.161325, 0.176283,
		-0.227095, -0.852573, -0.470687,
		36.640430, 37.332703, 32.707657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297794, 37.652981, 33.405743>,  <36.799397, 37.929504, 33.037136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297794, 37.652981, 33.405743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471516, 37.361164, 33.194408>,  <36.575748, 37.186073, 33.067608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471516, 37.361164, 33.194408>,  <36.297794, 37.652981, 33.405743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471516, 37.361164, 33.194408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185093, -0.501750, 0.844978,
		-0.881544, -0.464770, -0.082878,
		0.434305, -0.729545, -0.528340,
		36.601807, 37.142300, 33.035908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037380, 37.055130, 33.657406>,  <36.297794, 37.652981, 33.405743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037380, 37.055130, 33.657406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389221, 36.979042, 33.482998>,  <36.600327, 36.933388, 33.378353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389221, 36.979042, 33.482998>,  <36.037380, 37.055130, 33.657406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389221, 36.979042, 33.482998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249607, -0.595713, 0.763428,
		-0.404965, -0.780348, -0.476509,
		0.879602, -0.190221, -0.436023,
		36.653103, 36.921974, 33.352192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142521, 36.412743, 33.753044>,  <36.037380, 37.055130, 33.657406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142521, 36.412743, 33.753044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520988, 36.512897, 33.671005>,  <36.748070, 36.572990, 33.621780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520988, 36.512897, 33.671005>,  <36.142521, 36.412743, 33.753044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520988, 36.512897, 33.671005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323302, -0.701147, 0.635507,
		0.015319, -0.667608, -0.744356,
		0.946172, 0.250387, -0.205098,
		36.804840, 36.588013, 33.609474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602039, 35.752064, 33.700245>,  <36.142521, 36.412743, 33.753044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602039, 35.752064, 33.700245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855202, 36.049797, 33.785480>,  <37.007099, 36.228436, 33.836624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855202, 36.049797, 33.785480>,  <36.602039, 35.752064, 33.700245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855202, 36.049797, 33.785480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414731, -0.558345, 0.718505,
		0.653784, -0.366367, -0.662074,
		0.632902, 0.744329, 0.213093,
		37.045071, 36.273094, 33.849407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186020, 35.336784, 33.886425>,  <36.602039, 35.752064, 33.700245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186020, 35.336784, 33.886425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203129, 35.685890, 34.080929>,  <37.213394, 35.895355, 34.197632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203129, 35.685890, 34.080929>,  <37.186020, 35.336784, 33.886425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203129, 35.685890, 34.080929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221460, -0.482881, 0.847220,
		0.974231, 0.071453, -0.213934,
		0.042768, 0.872766, 0.486262,
		37.215958, 35.947720, 34.226807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883919, 35.254459, 34.179264>,  <37.186020, 35.336784, 33.886425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883919, 35.254459, 34.179264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682026, 35.549088, 34.359356>,  <37.560890, 35.725864, 34.467411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682026, 35.549088, 34.359356>,  <37.883919, 35.254459, 34.179264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682026, 35.549088, 34.359356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452711, -0.218235, 0.864538,
		0.735048, 0.640189, -0.223301,
		-0.504736, 0.736567, 0.450234,
		37.530605, 35.770058, 34.494427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380585, 35.670307, 34.517014>,  <37.883919, 35.254459, 34.179264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380585, 35.670307, 34.517014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032810, 35.704769, 34.711601>,  <37.824146, 35.725445, 34.828354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032810, 35.704769, 34.711601>,  <38.380585, 35.670307, 34.517014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032810, 35.704769, 34.711601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431708, -0.346293, 0.832892,
		0.240220, 0.934162, 0.263886,
		-0.869438, 0.086155, 0.486471,
		37.771980, 35.730618, 34.857544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671806, 35.841919, 35.089317>,  <38.380585, 35.670307, 34.517014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671806, 35.841919, 35.089317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292316, 35.770790, 35.193859>,  <38.064625, 35.728111, 35.256584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292316, 35.770790, 35.193859>,  <38.671806, 35.841919, 35.089317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292316, 35.770790, 35.193859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315111, -0.466269, 0.826619,
		-0.025135, 0.866586, 0.498394,
		-0.948722, -0.177827, 0.261351,
		38.007698, 35.717442, 35.272263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666183, 36.021885, 35.826466>,  <38.671806, 35.841919, 35.089317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666183, 36.021885, 35.826466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349895, 35.781284, 35.780949>,  <38.160122, 35.636925, 35.753639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349895, 35.781284, 35.780949>,  <38.666183, 36.021885, 35.826466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349895, 35.781284, 35.780949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227186, -0.460936, 0.857861,
		-0.568457, 0.652479, 0.501127,
		-0.790723, -0.601506, -0.113788,
		38.112679, 35.600834, 35.746811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342308, 36.001492, 36.386703>,  <38.666183, 36.021885, 35.826466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342308, 36.001492, 36.386703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234550, 35.653454, 36.221600>,  <38.169895, 35.444630, 36.122540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234550, 35.653454, 36.221600>,  <38.342308, 36.001492, 36.386703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234550, 35.653454, 36.221600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344502, -0.487306, 0.802403,
		-0.899304, 0.073964, 0.431024,
		-0.269390, -0.870093, -0.412756,
		38.153732, 35.392426, 36.097775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988377, 35.646507, 36.838997>,  <38.342308, 36.001492, 36.386703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988377, 35.646507, 36.838997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092628, 35.342972, 36.600254>,  <38.155178, 35.160851, 36.457008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092628, 35.342972, 36.600254>,  <37.988377, 35.646507, 36.838997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092628, 35.342972, 36.600254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140832, -0.581731, 0.801096,
		-0.955112, -0.292846, -0.044747,
		0.260629, -0.758834, -0.596861,
		38.170818, 35.115322, 36.421196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607010, 35.124187, 37.053860>,  <37.988377, 35.646507, 36.838997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607010, 35.124187, 37.053860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919842, 34.973621, 36.855198>,  <38.107540, 34.883282, 36.736000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919842, 34.973621, 36.855198>,  <37.607010, 35.124187, 37.053860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919842, 34.973621, 36.855198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104183, -0.706783, 0.699717,
		-0.614411, -0.598976, -0.513543,
		0.782077, -0.376412, -0.496659,
		38.154465, 34.860699, 36.706200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491566, 34.419941, 37.041924>,  <37.607010, 35.124187, 37.053860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491566, 34.419941, 37.041924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881077, 34.492863, 36.987495>,  <38.114784, 34.536617, 36.954838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881077, 34.492863, 36.987495>,  <37.491566, 34.419941, 37.041924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881077, 34.492863, 36.987495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221732, -0.626898, 0.746882,
		0.050856, -0.757472, -0.650884,
		0.973781, 0.182305, -0.136074,
		38.173210, 34.547554, 36.946674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749638, 33.806629, 37.368641>,  <37.491566, 34.419941, 37.041924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749638, 33.806629, 37.368641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056690, 34.062077, 37.347084>,  <38.240921, 34.215343, 37.334148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056690, 34.062077, 37.347084>,  <37.749638, 33.806629, 37.368641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056690, 34.062077, 37.347084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509391, -0.556945, 0.655998,
		0.388916, -0.531020, -0.752836,
		0.767636, 0.638616, -0.053891,
		38.286980, 34.253662, 37.330917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392296, 33.425976, 37.537350>,  <37.749638, 33.806629, 37.368641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392296, 33.425976, 37.537350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543812, 33.794430, 37.573185>,  <38.634720, 34.015503, 37.594685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543812, 33.794430, 37.573185>,  <38.392296, 33.425976, 37.537350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543812, 33.794430, 37.573185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584577, -0.313178, 0.748458,
		0.717489, -0.231138, -0.657104,
		0.378788, 0.921138, 0.089584,
		38.657448, 34.070770, 37.600060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158936, 33.369663, 37.589516>,  <38.392296, 33.425976, 37.537350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158936, 33.369663, 37.589516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062408, 33.721935, 37.752575>,  <39.004494, 33.933296, 37.850410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062408, 33.721935, 37.752575>,  <39.158936, 33.369663, 37.589516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062408, 33.721935, 37.752575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498243, -0.248034, 0.830803,
		0.832779, 0.403590, -0.378938,
		-0.241314, 0.880678, 0.407644,
		38.990013, 33.986137, 37.874866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697544, 33.468117, 37.984802>,  <39.158936, 33.369663, 37.589516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697544, 33.468117, 37.984802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419266, 33.716030, 38.130066>,  <39.252300, 33.864777, 38.217224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419266, 33.716030, 38.130066>,  <39.697544, 33.468117, 37.984802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419266, 33.716030, 38.130066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452034, -0.015190, 0.891871,
		0.558281, 0.784628, -0.269594,
		-0.695692, 0.619781, 0.363159,
		39.210560, 33.901966, 38.239014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060642, 34.029396, 38.268883>,  <39.697544, 33.468117, 37.984802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060642, 34.029396, 38.268883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697239, 34.059677, 38.433266>,  <39.479198, 34.077847, 38.531895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697239, 34.059677, 38.433266>,  <40.060642, 34.029396, 38.268883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697239, 34.059677, 38.433266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415024, 0.048746, 0.908504,
		0.048746, 0.995938, -0.075705,
		-0.908504, 0.075705, 0.410962,
		39.424686, 34.082390, 38.556553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233742, 34.551170, 38.834774>,  <40.060642, 34.029396, 38.268883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233742, 34.551170, 38.834774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896755, 34.357437, 38.929150>,  <39.694565, 34.241196, 38.985775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896755, 34.357437, 38.929150>,  <40.233742, 34.551170, 38.834774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896755, 34.357437, 38.929150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263210, 0.012095, 0.964663,
		-0.470074, 0.874799, 0.117293,
		-0.842467, -0.484335, 0.235942,
		39.644016, 34.212135, 38.999931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909710, 34.947903, 39.319084>,  <40.233742, 34.551170, 38.834774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909710, 34.947903, 39.319084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747166, 34.584759, 39.360401>,  <39.649639, 34.366875, 39.385193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747166, 34.584759, 39.360401>,  <39.909710, 34.947903, 39.319084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747166, 34.584759, 39.360401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223770, 0.010722, 0.974583,
		-0.885888, 0.419147, 0.198794,
		-0.406362, -0.907855, 0.103291,
		39.625256, 34.312401, 39.391388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384476, 34.947933, 39.916180>,  <39.909710, 34.947903, 39.319084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384476, 34.947933, 39.916180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531029, 34.580151, 39.859112>,  <39.618961, 34.359482, 39.824871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531029, 34.580151, 39.859112>,  <39.384476, 34.947933, 39.916180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531029, 34.580151, 39.859112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272721, -0.040478, 0.961241,
		-0.889598, -0.391094, 0.235926,
		0.366386, -0.919460, -0.142669,
		39.640945, 34.304314, 39.816311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176533, 34.657234, 40.524319>,  <39.384476, 34.947933, 39.916180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176533, 34.657234, 40.524319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455643, 34.423306, 40.358868>,  <39.623108, 34.282948, 40.259598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455643, 34.423306, 40.358868>,  <39.176533, 34.657234, 40.524319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455643, 34.423306, 40.358868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436834, -0.110221, 0.892763,
		-0.567702, -0.803636, 0.178562,
		0.697775, -0.584826, -0.413629,
		39.664974, 34.247856, 40.234779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541557, 34.397106, 41.039627>,  <39.176533, 34.657234, 40.524319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541557, 34.397106, 41.039627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765007, 34.205070, 40.769085>,  <39.899078, 34.089851, 40.606762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765007, 34.205070, 40.769085>,  <39.541557, 34.397106, 41.039627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765007, 34.205070, 40.769085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669193, -0.220886, 0.709500,
		-0.490018, -0.848956, 0.197878,
		0.558626, -0.480086, -0.676354,
		39.932594, 34.061047, 40.566177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570667, 33.640759, 41.210461>,  <39.541557, 34.397106, 41.039627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570667, 33.640759, 41.210461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884804, 33.815689, 41.035198>,  <40.073288, 33.920647, 40.930042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884804, 33.815689, 41.035198>,  <39.570667, 33.640759, 41.210461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884804, 33.815689, 41.035198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515482, -0.070050, 0.854032,
		0.342800, -0.896569, -0.280449,
		0.785344, 0.437329, -0.438152,
		40.120407, 33.946888, 40.903751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163086, 33.321815, 41.590160>,  <39.570667, 33.640759, 41.210461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163086, 33.321815, 41.590160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318939, 33.621014, 41.375240>,  <40.412453, 33.800533, 41.246288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318939, 33.621014, 41.375240>,  <40.163086, 33.321815, 41.590160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318939, 33.621014, 41.375240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828850, -0.030470, 0.558640,
		0.401486, -0.663009, -0.631845,
		0.389636, 0.747991, -0.537302,
		40.435829, 33.845409, 41.214050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832420, 33.103111, 41.231529>,  <40.163086, 33.321815, 41.590160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832420, 33.103111, 41.231529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834263, 33.500019, 41.281143>,  <40.835369, 33.738163, 41.310913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834263, 33.500019, 41.281143>,  <40.832420, 33.103111, 41.231529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834263, 33.500019, 41.281143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894222, -0.059612, 0.443636,
		0.447600, 0.108872, -0.887582,
		0.004611, 0.992267, 0.124038,
		40.835648, 33.797699, 41.318356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481838, 33.332569, 40.874550>,  <40.832420, 33.103111, 41.231529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481838, 33.332569, 40.874550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356258, 33.539600, 41.192932>,  <41.280910, 33.663818, 41.383961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356258, 33.539600, 41.192932>,  <41.481838, 33.332569, 40.874550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356258, 33.539600, 41.192932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798386, -0.309784, 0.516346,
		0.513824, 0.797589, -0.315969,
		-0.313949, 0.517577, 0.795959,
		41.262074, 33.694874, 41.431721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118538, 33.421600, 41.190857>,  <41.481838, 33.332569, 40.874550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118538, 33.421600, 41.190857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857738, 33.490017, 41.486328>,  <41.701260, 33.531067, 41.663609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857738, 33.490017, 41.486328>,  <42.118538, 33.421600, 41.190857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857738, 33.490017, 41.486328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751453, 0.015918, 0.659595,
		0.101058, 0.985136, -0.138906,
		-0.652002, 0.171039, 0.738674,
		41.662136, 33.541328, 41.707932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381847, 34.079144, 41.590939>,  <42.118538, 33.421600, 41.190857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381847, 34.079144, 41.590939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157009, 33.841045, 41.820629>,  <42.022106, 33.698185, 41.958443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157009, 33.841045, 41.820629>,  <42.381847, 34.079144, 41.590939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157009, 33.841045, 41.820629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748418, -0.070557, 0.659464,
		-0.352027, 0.800441, 0.485151,
		-0.562093, -0.595245, 0.574226,
		41.988380, 33.662472, 41.992897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464092, 34.354080, 42.267048>,  <42.381847, 34.079144, 41.590939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464092, 34.354080, 42.267048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338535, 33.978176, 42.321194>,  <42.263203, 33.752632, 42.353683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338535, 33.978176, 42.321194>,  <42.464092, 34.354080, 42.267048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338535, 33.978176, 42.321194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736104, -0.150819, 0.659852,
		-0.599686, 0.306767, 0.739101,
		-0.313891, -0.939759, 0.135368,
		42.244370, 33.696247, 42.361805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205898, 34.254715, 43.055946>,  <42.464092, 34.354080, 42.267048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205898, 34.254715, 43.055946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376175, 33.935204, 42.885895>,  <42.478340, 33.743496, 42.783863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376175, 33.935204, 42.885895>,  <42.205898, 34.254715, 43.055946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376175, 33.935204, 42.885895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674788, -0.032788, 0.737283,
		-0.602865, -0.600730, 0.525049,
		0.425693, -0.798779, -0.425132,
		42.503883, 33.695568, 42.758354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359077, 33.669086, 43.526485>,  <42.205898, 34.254715, 43.055946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359077, 33.669086, 43.526485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642349, 33.716938, 43.248154>,  <42.812313, 33.745651, 43.081154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642349, 33.716938, 43.248154>,  <42.359077, 33.669086, 43.526485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642349, 33.716938, 43.248154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700717, 0.001636, 0.713437,
		0.086489, -0.992817, -0.082670,
		0.708177, 0.119633, -0.695825,
		42.854801, 33.752827, 43.039406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989708, 33.502102, 43.626202>,  <42.359077, 33.669086, 43.526485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989708, 33.502102, 43.626202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130833, 33.856144, 43.747601>,  <43.215508, 34.068569, 43.820442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130833, 33.856144, 43.747601>,  <42.989708, 33.502102, 43.626202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130833, 33.856144, 43.747601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873975, -0.195867, -0.444751,
		-0.334207, 0.422163, -0.842665,
		0.352808, 0.885107, 0.303500,
		43.236675, 34.121677, 43.838650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636524, 33.538605, 43.318218>,  <42.989708, 33.502102, 43.626202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636524, 33.538605, 43.318218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582977, 33.171951, 43.167557>,  <43.550850, 32.951958, 43.077160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582977, 33.171951, 43.167557>,  <43.636524, 33.538605, 43.318218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.582977, 33.171951, 43.167557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955351, 0.220390, -0.196808,
		0.263411, 0.333489, -0.905207,
		-0.133865, -0.916632, -0.376652,
		43.542816, 32.896961, 43.054562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338665, 33.487465, 42.623413>,  <43.636524, 33.538605, 43.318218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338665, 33.487465, 42.623413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207592, 33.149204, 42.791931>,  <43.128948, 32.946247, 42.893044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207592, 33.149204, 42.791931>,  <43.338665, 33.487465, 42.623413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207592, 33.149204, 42.791931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901570, 0.146553, -0.407056,
		0.282487, -0.513214, -0.810440,
		-0.327679, -0.845656, 0.421299,
		43.109287, 32.895508, 42.918320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995171, 33.085796, 42.088299>,  <43.338665, 33.487465, 42.623413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995171, 33.085796, 42.088299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856415, 33.022984, 42.458164>,  <42.773163, 32.985294, 42.680084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856415, 33.022984, 42.458164>,  <42.995171, 33.085796, 42.088299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856415, 33.022984, 42.458164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916987, 0.263846, -0.299198,
		-0.196986, -0.951697, -0.235520,
		-0.346886, -0.157031, 0.924668,
		42.752350, 32.975876, 42.735565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410763, 32.517544, 42.103588>,  <42.995171, 33.085796, 42.088299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410763, 32.517544, 42.103588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408855, 32.773918, 42.410618>,  <42.407711, 32.927742, 42.594837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408855, 32.773918, 42.410618>,  <42.410763, 32.517544, 42.103588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408855, 32.773918, 42.410618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920292, 0.297474, -0.254111,
		-0.391204, -0.707607, 0.588432,
		-0.004767, 0.640938, 0.767577,
		42.407425, 32.966198, 42.640892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792152, 32.522221, 42.646851>,  <42.410763, 32.517544, 42.103588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792152, 32.522221, 42.646851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958836, 32.875214, 42.559605>,  <42.058846, 33.087009, 42.507259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958836, 32.875214, 42.559605>,  <41.792152, 32.522221, 42.646851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958836, 32.875214, 42.559605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874881, 0.324184, -0.359845,
		-0.246848, 0.340774, 0.907160,
		0.416712, 0.882484, -0.218113,
		42.083851, 33.139957, 42.494171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208931, 32.988075, 42.808971>,  <41.792152, 32.522221, 42.646851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208931, 32.988075, 42.808971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446114, 33.187134, 42.555752>,  <41.588425, 33.306568, 42.403820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446114, 33.187134, 42.555752>,  <41.208931, 32.988075, 42.808971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446114, 33.187134, 42.555752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789733, 0.512919, -0.336506,
		0.157246, 0.699476, 0.697142,
		0.592955, 0.497642, -0.633053,
		41.624001, 33.336426, 42.365837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845661, 33.651020, 42.733288>,  <41.208931, 32.988075, 42.808971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845661, 33.651020, 42.733288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105347, 33.637085, 42.429363>,  <41.261158, 33.628723, 42.247009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105347, 33.637085, 42.429363>,  <40.845661, 33.651020, 42.733288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105347, 33.637085, 42.429363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652116, 0.488676, -0.579604,
		0.391490, 0.871770, 0.294538,
		0.649215, -0.034836, -0.759807,
		41.300110, 33.626633, 42.201420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013577, 34.336823, 42.577412>,  <40.845661, 33.651020, 42.733288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013577, 34.336823, 42.577412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037525, 34.088310, 42.264893>,  <41.051895, 33.939201, 42.077381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037525, 34.088310, 42.264893>,  <41.013577, 34.336823, 42.577412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037525, 34.088310, 42.264893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497734, 0.659876, -0.562872,
		0.865260, 0.422580, -0.269723,
		0.059874, -0.621281, -0.781297,
		41.055489, 33.901924, 42.030502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807526, 34.882950, 42.118835>,  <41.013577, 34.336823, 42.577412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807526, 34.882950, 42.118835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894592, 34.547173, 41.919655>,  <40.946831, 34.345707, 41.800144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894592, 34.547173, 41.919655>,  <40.807526, 34.882950, 42.118835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894592, 34.547173, 41.919655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421692, 0.379231, -0.823626,
		0.880226, 0.389259, -0.271440,
		0.217665, -0.839441, -0.497956,
		40.959892, 34.295341, 41.770267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967411, 35.080719, 41.479485>,  <40.807526, 34.882950, 42.118835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967411, 35.080719, 41.479485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903118, 34.688290, 41.436279>,  <40.864544, 34.452831, 41.410355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903118, 34.688290, 41.436279>,  <40.967411, 35.080719, 41.479485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903118, 34.688290, 41.436279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465913, 0.171896, -0.867973,
		0.870109, -0.089186, -0.484723,
		-0.160733, -0.981070, -0.108015,
		40.854897, 34.393970, 41.403873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831757, 35.031395, 40.808632>,  <40.967411, 35.080719, 41.479485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831757, 35.031395, 40.808632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740211, 34.655079, 40.908661>,  <40.685284, 34.429291, 40.968678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740211, 34.655079, 40.908661>,  <40.831757, 35.031395, 40.808632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740211, 34.655079, 40.908661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506830, -0.104167, -0.855730,
		0.831110, -0.322590, -0.452980,
		-0.228865, -0.940790, 0.250072,
		40.671551, 34.372841, 40.983681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040791, 34.561108, 40.252750>,  <40.831757, 35.031395, 40.808632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040791, 34.561108, 40.252750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761539, 34.356216, 40.452847>,  <40.593987, 34.233284, 40.572903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761539, 34.356216, 40.452847>,  <41.040791, 34.561108, 40.252750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761539, 34.356216, 40.452847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418590, -0.274830, -0.865593,
		0.580860, -0.813691, -0.022546,
		-0.698129, -0.512225, 0.500241,
		40.552101, 34.202549, 40.602921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957886, 33.893402, 39.966255>,  <41.040791, 34.561108, 40.252750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957886, 33.893402, 39.966255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605892, 33.982876, 40.133873>,  <40.394695, 34.036560, 40.234444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605892, 33.982876, 40.133873>,  <40.957886, 33.893402, 39.966255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605892, 33.982876, 40.133873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457734, -0.163591, -0.873910,
		-0.126929, -0.960835, 0.246345,
		-0.879982, 0.223685, 0.419042,
		40.341896, 34.049984, 40.259586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508579, 33.485115, 39.610317>,  <40.957886, 33.893402, 39.966255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508579, 33.485115, 39.610317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253975, 33.725056, 39.804241>,  <40.101212, 33.869019, 39.920593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253975, 33.725056, 39.804241>,  <40.508579, 33.485115, 39.610317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253975, 33.725056, 39.804241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603824, 0.003511, -0.797110,
		-0.479848, -0.800105, 0.359969,
		-0.636508, 0.599849, 0.484808,
		40.063023, 33.905010, 39.949684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921143, 33.048496, 39.733891>,  <40.508579, 33.485115, 39.610317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921143, 33.048496, 39.733891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850479, 33.442173, 39.728859>,  <39.808083, 33.678379, 39.725842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850479, 33.442173, 39.728859>,  <39.921143, 33.048496, 39.733891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850479, 33.442173, 39.728859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519328, -0.104056, -0.848217,
		-0.836118, -0.143308, 0.529500,
		-0.176654, 0.984193, -0.012579,
		39.797482, 33.737431, 39.725086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251446, 33.049927, 39.494400>,  <39.921143, 33.048496, 39.733891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251446, 33.049927, 39.494400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375233, 33.429531, 39.470394>,  <39.449505, 33.657295, 39.455990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375233, 33.429531, 39.470394>,  <39.251446, 33.049927, 39.494400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375233, 33.429531, 39.470394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601380, 0.146441, -0.785428,
		-0.736593, 0.279157, 0.616037,
		0.309471, 0.949013, -0.060012,
		39.468075, 33.714233, 39.452389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643703, 33.413841, 39.244305>,  <39.251446, 33.049927, 39.494400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643703, 33.413841, 39.244305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935730, 33.678875, 39.177387>,  <39.110947, 33.837894, 39.137238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935730, 33.678875, 39.177387>,  <38.643703, 33.413841, 39.244305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935730, 33.678875, 39.177387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550783, 0.425596, -0.717987,
		-0.404530, 0.616318, 0.675653,
		0.730064, 0.662586, -0.167291,
		39.154751, 33.877651, 39.127201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346561, 34.105785, 39.262264>,  <38.643703, 33.413841, 39.244305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346561, 34.105785, 39.262264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672123, 34.095997, 39.030067>,  <38.867458, 34.090122, 38.890751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672123, 34.095997, 39.030067>,  <38.346561, 34.105785, 39.262264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672123, 34.095997, 39.030067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531041, 0.374010, -0.760337,
		0.235718, 0.927101, 0.291410,
		0.813900, -0.024474, -0.580490,
		38.916294, 34.088654, 38.855919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386795, 34.743290, 38.855335>,  <38.346561, 34.105785, 39.262264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386795, 34.743290, 38.855335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679688, 34.537926, 38.676338>,  <38.855423, 34.414707, 38.568939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679688, 34.537926, 38.676338>,  <38.386795, 34.743290, 38.855335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679688, 34.537926, 38.676338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314698, 0.327646, -0.890850,
		0.603989, 0.793133, 0.078344,
		0.732231, -0.513409, -0.447492,
		38.899357, 34.383904, 38.542091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737160, 35.162109, 38.300983>,  <38.386795, 34.743290, 38.855335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737160, 35.162109, 38.300983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815479, 34.784981, 38.193100>,  <38.862473, 34.558704, 38.128368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815479, 34.784981, 38.193100>,  <38.737160, 35.162109, 38.300983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815479, 34.784981, 38.193100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075734, 0.259674, -0.962722,
		0.977715, 0.208928, -0.020560,
		0.195800, -0.942825, -0.269711,
		38.874218, 34.502132, 38.112186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168781, 35.292793, 37.682049>,  <38.737160, 35.162109, 38.300983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168781, 35.292793, 37.682049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023891, 34.920284, 37.666409>,  <38.936958, 34.696781, 37.657024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023891, 34.920284, 37.666409>,  <39.168781, 35.292793, 37.682049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023891, 34.920284, 37.666409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056291, 0.063730, -0.996378,
		0.930389, -0.358713, -0.075507,
		-0.362226, -0.931270, -0.039101,
		38.915222, 34.640903, 37.654678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221214, 35.180359, 36.955544>,  <39.168781, 35.292793, 37.682049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221214, 35.180359, 36.955544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983315, 34.876465, 37.060680>,  <38.840576, 34.694130, 37.123764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983315, 34.876465, 37.060680>,  <39.221214, 35.180359, 36.955544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983315, 34.876465, 37.060680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320611, -0.075676, -0.944183,
		0.737216, -0.645819, -0.198571,
		-0.594744, -0.759731, 0.262846,
		38.804890, 34.648544, 37.139534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413536, 34.591702, 36.632530>,  <39.221214, 35.180359, 36.955544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413536, 34.591702, 36.632530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026779, 34.558586, 36.729080>,  <38.794724, 34.538715, 36.787010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026779, 34.558586, 36.729080>,  <39.413536, 34.591702, 36.632530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026779, 34.558586, 36.729080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248353, 0.088022, -0.964662,
		0.058603, -0.992673, -0.105666,
		-0.966895, -0.082774, 0.241375,
		38.736710, 34.533749, 36.801491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058788, 34.276524, 36.037708>,  <39.413536, 34.591702, 36.632530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058788, 34.276524, 36.037708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790443, 34.482334, 36.251328>,  <38.629436, 34.605820, 36.379498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790443, 34.482334, 36.251328>,  <39.058788, 34.276524, 36.037708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790443, 34.482334, 36.251328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421894, 0.327442, -0.845451,
		-0.609877, -0.792492, -0.002592,
		-0.670862, 0.514528, 0.534047,
		38.589184, 34.636692, 36.411541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585442, 33.893959, 35.699322>,  <39.058788, 34.276524, 36.037708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585442, 33.893959, 35.699322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591984, 33.663349, 35.372555>,  <39.595909, 33.524982, 35.176495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591984, 33.663349, 35.372555>,  <39.585442, 33.893959, 35.699322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591984, 33.663349, 35.372555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939176, -0.271454, 0.210381,
		-0.343045, -0.770669, 0.537019,
		0.016358, -0.576526, -0.816915,
		39.596889, 33.490391, 35.127480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892799, 33.184620, 35.770023>,  <39.585442, 33.893959, 35.699322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892799, 33.184620, 35.770023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946644, 33.340664, 35.405674>,  <39.978951, 33.434292, 35.187065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946644, 33.340664, 35.405674>,  <39.892799, 33.184620, 35.770023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946644, 33.340664, 35.405674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990166, -0.017633, 0.138781,
		0.038078, -0.920599, -0.388647,
		0.134614, 0.390110, -0.910875,
		39.987030, 33.457695, 35.132412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431931, 32.799202, 35.294083>,  <39.892799, 33.184620, 35.770023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431931, 32.799202, 35.294083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411366, 33.195374, 35.242855>,  <40.399029, 33.433079, 35.212120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411366, 33.195374, 35.242855>,  <40.431931, 32.799202, 35.294083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411366, 33.195374, 35.242855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977358, 0.076251, 0.197377,
		0.205254, -0.115020, -0.971927,
		-0.051408, 0.990432, -0.128067,
		40.395943, 33.492504, 35.204433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816635, 33.140079, 34.712433>,  <40.431931, 32.799202, 35.294083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816635, 33.140079, 34.712433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821724, 33.349453, 35.053223>,  <40.824776, 33.475079, 35.257694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821724, 33.349453, 35.053223>,  <40.816635, 33.140079, 34.712433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821724, 33.349453, 35.053223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995894, -0.083008, 0.036130,
		0.089632, 0.848012, -0.522342,
		0.012720, 0.523435, 0.851970,
		40.825539, 33.506485, 35.308815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154266, 33.727165, 34.616428>,  <40.816635, 33.140079, 34.712433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154266, 33.727165, 34.616428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181049, 33.604454, 34.996197>,  <41.197121, 33.530827, 35.224060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181049, 33.604454, 34.996197>,  <41.154266, 33.727165, 34.616428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181049, 33.604454, 34.996197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996040, -0.035228, -0.081627,
		0.058488, 0.951130, 0.303202,
		0.066956, -0.306776, 0.949424,
		41.201138, 33.512421, 35.281025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507725, 34.224316, 35.140762>,  <41.154266, 33.727165, 34.616428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507725, 34.224316, 35.140762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575161, 33.847950, 35.258244>,  <41.615623, 33.622131, 35.328732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575161, 33.847950, 35.258244>,  <41.507725, 34.224316, 35.140762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575161, 33.847950, 35.258244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985540, 0.155762, -0.066706,
		0.017017, 0.300702, 0.953566,
		0.168588, -0.940913, 0.293703,
		41.625736, 33.565678, 35.346355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009201, 34.135345, 35.764278>,  <41.507725, 34.224316, 35.140762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009201, 34.135345, 35.764278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027477, 33.829441, 35.507202>,  <42.038445, 33.645897, 35.352959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027477, 33.829441, 35.507202>,  <42.009201, 34.135345, 35.764278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027477, 33.829441, 35.507202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995068, 0.091551, -0.038197,
		0.088050, -0.637773, 0.765175,
		0.045691, -0.764764, -0.642688,
		42.041183, 33.600014, 35.314396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426701, 33.432755, 36.033714>,  <42.009201, 34.135345, 35.764278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426701, 33.432755, 36.033714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426331, 33.527645, 35.645134>,  <42.426109, 33.584579, 35.411983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426331, 33.527645, 35.645134>,  <42.426701, 33.432755, 36.033714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426331, 33.527645, 35.645134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945472, 0.316611, 0.076416,
		0.325701, -0.918413, -0.224580,
		-0.000924, 0.237223, -0.971455,
		42.426052, 33.598812, 35.353699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815960, 33.033230, 35.629238>,  <42.426701, 33.432755, 36.033714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815960, 33.033230, 35.629238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816994, 33.395779, 35.460251>,  <42.817616, 33.613308, 35.358860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816994, 33.395779, 35.460251>,  <42.815960, 33.033230, 35.629238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816994, 33.395779, 35.460251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993092, 0.047235, 0.107411,
		0.117310, -0.419828, -0.899990,
		0.002583, 0.906374, -0.422469,
		42.817768, 33.667690, 35.333511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206947, 32.957691, 35.136253>,  <42.815960, 33.033230, 35.629238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206947, 32.957691, 35.136253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195236, 33.349289, 35.216961>,  <43.188210, 33.584248, 35.265385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195236, 33.349289, 35.216961>,  <43.206947, 32.957691, 35.136253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195236, 33.349289, 35.216961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999552, 0.027403, 0.012070,
		0.006287, 0.202030, -0.979359,
		-0.029276, 0.978996, 0.201767,
		43.186455, 33.642986, 35.277493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812733, 33.272572, 34.841434>,  <43.206947, 32.957691, 35.136253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812733, 33.272572, 34.841434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700550, 33.536232, 35.120537>,  <43.633240, 33.694427, 35.287998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700550, 33.536232, 35.120537>,  <43.812733, 33.272572, 34.841434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700550, 33.536232, 35.120537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958875, 0.225416, 0.172468,
		-0.043604, 0.717434, -0.695261,
		-0.280458, 0.659148, 0.697759,
		43.616413, 33.733978, 35.329865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835003, 34.010303, 34.631649>,  <43.812733, 33.272572, 34.841434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835003, 34.010303, 34.631649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.908176, 33.937309, 35.018066>,  <43.952080, 33.893513, 35.249916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.908176, 33.937309, 35.018066>,  <43.835003, 34.010303, 34.631649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908176, 33.937309, 35.018066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913224, 0.395440, -0.098234,
		-0.364085, 0.900182, 0.238988,
		0.182934, -0.182484, 0.966041,
		43.963055, 33.882565, 35.307880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221542, 34.731152, 34.762012>,  <43.835003, 34.010303, 34.631649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221542, 34.731152, 34.762012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.289196, 34.426048, 35.011684>,  <44.329788, 34.242985, 35.161488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.289196, 34.426048, 35.011684>,  <44.221542, 34.731152, 34.762012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289196, 34.426048, 35.011684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970068, 0.240795, 0.031400,
		-0.174249, 0.600182, 0.780653,
		0.169131, -0.762758, 0.624176,
		44.339935, 34.197220, 35.198936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.699402, 35.065735, 35.268723>,  <44.221542, 34.731152, 34.762012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.699402, 35.065735, 35.268723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.738472, 34.669193, 35.233658>,  <44.761913, 34.431271, 35.212620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.738472, 34.669193, 35.233658>,  <44.699402, 35.065735, 35.268723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.738472, 34.669193, 35.233658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994323, 0.093471, 0.050843,
		-0.042209, -0.092132, 0.994852,
		0.097674, -0.991350, -0.087664,
		44.767773, 34.371788, 35.207359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063019, 34.852108, 35.827316>,  <44.699402, 35.065735, 35.268723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063019, 34.852108, 35.827316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.099388, 34.579319, 35.537037>,  <45.121208, 34.415646, 35.362869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.099388, 34.579319, 35.537037>,  <45.063019, 34.852108, 35.827316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.099388, 34.579319, 35.537037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988793, -0.024825, 0.147214,
		-0.118411, -0.730954, 0.672075,
		0.090923, -0.681975, -0.725702,
		45.126663, 34.374725, 35.319324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.824654, 34.706860, 35.698845>,  <45.063019, 34.852108, 35.827316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.824654, 34.706860, 35.698845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674843, 34.453983, 35.427532>,  <45.584957, 34.302258, 35.264744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674843, 34.453983, 35.427532>,  <45.824654, 34.706860, 35.698845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.674843, 34.453983, 35.427532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926181, -0.220509, -0.305882,
		0.043808, -0.742773, 0.668108,
		-0.374525, -0.632189, -0.678283,
		45.562485, 34.264328, 35.224049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.085644, 35.364868, 35.954079>,  <45.824654, 34.706860, 35.698845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.085644, 35.364868, 35.954079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091671, 35.148083, 35.617973>,  <46.095287, 35.018013, 35.416309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091671, 35.148083, 35.617973>,  <46.085644, 35.364868, 35.954079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091671, 35.148083, 35.617973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982916, 0.162201, -0.086987,
		0.183436, -0.824601, 0.535149,
		0.015072, -0.541963, -0.840267,
		46.096191, 34.985493, 35.365894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.527542, 34.729294, 36.045624>,  <46.085644, 35.364868, 35.954079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.527542, 34.729294, 36.045624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.523426, 34.861046, 35.667969>,  <46.520954, 34.940098, 35.441376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.523426, 34.861046, 35.667969>,  <46.527542, 34.729294, 36.045624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.523426, 34.861046, 35.667969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997054, 0.075151, 0.015346,
		0.076008, -0.941200, -0.329188,
		-0.010295, 0.329384, -0.944140,
		46.520336, 34.959862, 35.384727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.634708, 34.185043, 35.523651>,  <46.527542, 34.729294, 36.045624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.634708, 34.185043, 35.523651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.751579, 34.563694, 35.469208>,  <46.821701, 34.790886, 35.436543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.751579, 34.563694, 35.469208>,  <46.634708, 34.185043, 35.523651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.751579, 34.563694, 35.469208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949933, -0.303735, -0.073290,
		-0.110719, -0.107878, -0.987980,
		0.292177, 0.946630, -0.136106,
		46.839233, 34.847683, 35.428375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.911942, 34.340515, 34.796566>,  <46.634708, 34.185043, 35.523651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.911942, 34.340515, 34.796566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.069019, 34.552212, 35.097416>,  <47.163265, 34.679230, 35.277927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.069019, 34.552212, 35.097416>,  <46.911942, 34.340515, 34.796566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.069019, 34.552212, 35.097416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888697, -0.428824, -0.162259,
		0.236654, 0.732129, -0.638735,
		0.392699, 0.529242, 0.752124,
		47.186829, 34.710983, 35.323051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.426704, 34.841938, 34.581696>,  <46.911942, 34.340515, 34.796566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.426704, 34.841938, 34.581696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.492790, 34.747723, 34.964783>,  <47.532440, 34.691193, 35.194633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.492790, 34.747723, 34.964783>,  <47.426704, 34.841938, 34.581696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.492790, 34.747723, 34.964783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963264, -0.169926, -0.207962,
		0.211725, 0.956893, 0.198816,
		0.165213, -0.235543, 0.957718,
		47.542355, 34.677059, 35.252098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.341381, 35.744427, 26.492849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.947701, 35.677147, 26.470736>,  <35.711491, 35.636780, 26.457466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.947701, 35.677147, 26.470736>,  <36.341381, 35.744427, 26.492849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947701, 35.677147, 26.470736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004634, -0.336612, 0.941632,
		-0.176996, 0.926498, 0.332073,
		-0.984201, -0.168204, -0.055285,
		35.652439, 35.626686, 26.454149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959785, 36.074425, 27.159800>,  <36.341381, 35.744427, 26.492849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959785, 36.074425, 27.159800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.732708, 35.792049, 26.990389>,  <35.596462, 35.622623, 26.888742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.732708, 35.792049, 26.990389>,  <35.959785, 36.074425, 27.159800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732708, 35.792049, 26.990389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049390, -0.484331, 0.873490,
		-0.821755, 0.516795, 0.240087,
		-0.567696, -0.705937, -0.423526,
		35.562401, 35.580269, 26.863331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404209, 35.965275, 27.597979>,  <35.959785, 36.074425, 27.159800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404209, 35.965275, 27.597979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382046, 35.631565, 27.378553>,  <35.368748, 35.431339, 27.246899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382046, 35.631565, 27.378553>,  <35.404209, 35.965275, 27.597979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382046, 35.631565, 27.378553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274430, -0.515524, 0.811741,
		-0.960010, 0.195520, -0.200384,
		-0.055408, -0.834270, -0.548565,
		35.365425, 35.381283, 27.213984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759327, 35.650955, 27.837130>,  <35.404209, 35.965275, 27.597979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759327, 35.650955, 27.837130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.953434, 35.354012, 27.652338>,  <35.069897, 35.175846, 27.541464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.953434, 35.354012, 27.652338>,  <34.759327, 35.650955, 27.837130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953434, 35.354012, 27.652338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391796, -0.656959, 0.644128,
		-0.781675, -0.131571, -0.609651,
		0.485264, -0.742357, -0.461979,
		35.099014, 35.131306, 27.513744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319580, 35.216450, 27.969717>,  <34.759327, 35.650955, 27.837130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319580, 35.216450, 27.969717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651684, 35.012119, 27.880522>,  <34.850948, 34.889523, 27.827005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651684, 35.012119, 27.880522>,  <34.319580, 35.216450, 27.969717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651684, 35.012119, 27.880522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155663, -0.596660, 0.787252,
		-0.535191, -0.618917, -0.574902,
		0.830265, -0.510822, -0.222985,
		34.900764, 34.858871, 27.813625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081867, 34.665520, 28.248932>,  <34.319580, 35.216450, 27.969717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081867, 34.665520, 28.248932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.480278, 34.639874, 28.224182>,  <34.719322, 34.624485, 28.209332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.480278, 34.639874, 28.224182>,  <34.081867, 34.665520, 28.248932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480278, 34.639874, 28.224182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021804, -0.497936, 0.866939,
		-0.086392, -0.864840, -0.494558,
		0.996023, -0.064113, -0.061875,
		34.779083, 34.620640, 28.205620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248947, 33.938259, 28.346380>,  <34.081867, 34.665520, 28.248932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248947, 33.938259, 28.346380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.570751, 34.161797, 28.426834>,  <34.763836, 34.295918, 28.475107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.570751, 34.161797, 28.426834>,  <34.248947, 33.938259, 28.346380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570751, 34.161797, 28.426834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003572, -0.334088, 0.942535,
		0.593925, -0.759000, -0.266782,
		0.804513, 0.558842, 0.201135,
		34.812103, 34.329449, 28.487175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780430, 33.437683, 28.599581>,  <34.248947, 33.938259, 28.346380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780430, 33.437683, 28.599581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.900024, 33.798565, 28.723927>,  <34.971783, 34.015095, 28.798534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.900024, 33.798565, 28.723927>,  <34.780430, 33.437683, 28.599581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900024, 33.798565, 28.723927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136672, -0.362895, 0.921753,
		0.944420, -0.233104, -0.231807,
		0.298985, 0.902203, 0.310866,
		34.989719, 34.069225, 28.817186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351952, 33.241875, 28.934170>,  <34.780430, 33.437683, 28.599581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351952, 33.241875, 28.934170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287773, 33.616661, 29.058329>,  <35.249268, 33.841534, 29.132824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287773, 33.616661, 29.058329>,  <35.351952, 33.241875, 28.934170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287773, 33.616661, 29.058329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377179, -0.232407, 0.896506,
		0.912137, 0.260914, -0.316117,
		-0.160443, 0.936969, 0.310398,
		35.239639, 33.897751, 29.151447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923870, 33.485180, 29.289040>,  <35.351952, 33.241875, 28.934170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923870, 33.485180, 29.289040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.634953, 33.712265, 29.447029>,  <35.461601, 33.848515, 29.541822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.634953, 33.712265, 29.447029>,  <35.923870, 33.485180, 29.289040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634953, 33.712265, 29.447029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272094, -0.291783, 0.916967,
		0.635817, 0.769785, 0.056282,
		-0.722290, 0.567709, 0.394974,
		35.418266, 33.882576, 29.565521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085445, 33.811554, 29.869003>,  <35.923870, 33.485180, 29.289040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085445, 33.811554, 29.869003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.696136, 33.846130, 29.954103>,  <35.462551, 33.866879, 30.005163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.696136, 33.846130, 29.954103>,  <36.085445, 33.811554, 29.869003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696136, 33.846130, 29.954103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211815, -0.019981, 0.977105,
		0.088717, 0.996056, 0.001136,
		-0.973275, 0.086446, 0.212753,
		35.404156, 33.872063, 30.017929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013657, 34.328251, 30.422447>,  <36.085445, 33.811554, 29.869003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013657, 34.328251, 30.422447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676956, 34.112446, 30.430256>,  <35.474934, 33.982964, 30.434940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676956, 34.112446, 30.430256>,  <36.013657, 34.328251, 30.422447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676956, 34.112446, 30.430256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059685, -0.057065, 0.996585,
		-0.536553, 0.840044, 0.080236,
		-0.841753, -0.539509, 0.019520,
		35.424431, 33.950592, 30.436111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738129, 34.577721, 30.991827>,  <36.013657, 34.328251, 30.422447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738129, 34.577721, 30.991827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.531559, 34.240479, 30.931847>,  <35.407619, 34.038136, 30.895859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.531559, 34.240479, 30.931847>,  <35.738129, 34.577721, 30.991827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531559, 34.240479, 30.931847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040468, -0.150887, 0.987722,
		-0.855378, 0.516149, 0.043803,
		-0.516421, -0.843103, -0.149953,
		35.376633, 33.987549, 30.886860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368790, 34.492718, 31.619612>,  <35.738129, 34.577721, 30.991827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368790, 34.492718, 31.619612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.334736, 34.128113, 31.458666>,  <35.314304, 33.909351, 31.362099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.334736, 34.128113, 31.458666>,  <35.368790, 34.492718, 31.619612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334736, 34.128113, 31.458666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069030, -0.408257, 0.910253,
		-0.993976, 0.049717, 0.097678,
		-0.085133, -0.911512, -0.402366,
		35.309196, 33.854660, 31.337955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968266, 34.079163, 32.087841>,  <35.368790, 34.492718, 31.619612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968266, 34.079163, 32.087841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.157658, 33.812492, 31.857590>,  <35.271294, 33.652489, 31.719439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.157658, 33.812492, 31.857590>,  <34.968266, 34.079163, 32.087841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157658, 33.812492, 31.857590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223248, -0.541356, 0.810613,
		-0.852042, -0.512320, -0.107488,
		0.473482, -0.666680, -0.575632,
		35.299702, 33.612488, 31.684900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851170, 33.502205, 32.401505>,  <34.968266, 34.079163, 32.087841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851170, 33.502205, 32.401505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.189167, 33.464352, 32.190968>,  <35.391964, 33.441639, 32.064648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.189167, 33.464352, 32.190968>,  <34.851170, 33.502205, 32.401505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189167, 33.464352, 32.190968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426203, -0.475320, 0.769690,
		-0.323013, -0.874710, -0.361311,
		0.844993, -0.094628, -0.526338,
		35.442665, 33.435963, 32.033066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994263, 32.835545, 32.301327>,  <34.851170, 33.502205, 32.401505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994263, 32.835545, 32.301327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.343739, 33.029842, 32.290619>,  <35.553425, 33.146420, 32.284195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.343739, 33.029842, 32.290619>,  <34.994263, 32.835545, 32.301327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343739, 33.029842, 32.290619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370572, -0.628871, 0.683519,
		0.315183, -0.607103, -0.729442,
		0.873691, 0.485744, -0.026766,
		35.605846, 33.175564, 32.282589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513882, 32.304901, 32.234386>,  <34.994263, 32.835545, 32.301327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513882, 32.304901, 32.234386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.704849, 32.637264, 32.348686>,  <35.819431, 32.836685, 32.417267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.704849, 32.637264, 32.348686>,  <35.513882, 32.304901, 32.234386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704849, 32.637264, 32.348686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473369, -0.517201, 0.713039,
		0.740265, -0.205152, -0.640251,
		0.477420, 0.830913, 0.285753,
		35.848076, 32.886539, 32.434414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240452, 32.094776, 32.398109>,  <35.513882, 32.304901, 32.234386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240452, 32.094776, 32.398109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.223557, 32.459995, 32.560375>,  <36.213417, 32.679127, 32.657734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.223557, 32.459995, 32.560375>,  <36.240452, 32.094776, 32.398109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223557, 32.459995, 32.560375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533989, -0.322535, 0.781554,
		0.844435, 0.249634, -0.473932,
		-0.042243, 0.913047, 0.405662,
		36.210884, 32.733910, 32.682076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961140, 32.314651, 32.591702>,  <36.240452, 32.094776, 32.398109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961140, 32.314651, 32.591702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714321, 32.550911, 32.799698>,  <36.566231, 32.692665, 32.924496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714321, 32.550911, 32.799698>,  <36.961140, 32.314651, 32.591702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714321, 32.550911, 32.799698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454794, -0.271596, 0.848173,
		0.642199, 0.759850, -0.101036,
		-0.617044, 0.590646, 0.519994,
		36.529209, 32.728104, 32.955696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433384, 32.630360, 32.903595>,  <36.961140, 32.314651, 32.591702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433384, 32.630360, 32.903595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.096020, 32.668270, 33.115131>,  <36.893600, 32.691017, 33.242054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.096020, 32.668270, 33.115131>,  <37.433384, 32.630360, 32.903595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096020, 32.668270, 33.115131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490751, -0.264715, 0.830114,
		0.218670, 0.959658, 0.176751,
		-0.843414, 0.094780, 0.528838,
		36.842995, 32.696705, 33.273785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542049, 33.120399, 33.478840>,  <37.433384, 32.630360, 32.903595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542049, 33.120399, 33.478840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.242443, 32.875000, 33.578907>,  <37.062679, 32.727760, 33.638947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.242443, 32.875000, 33.578907>,  <37.542049, 33.120399, 33.478840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242443, 32.875000, 33.578907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486012, -0.252147, 0.836788,
		-0.450293, 0.748355, 0.487033,
		-0.749019, -0.613503, 0.250169,
		37.017738, 32.690948, 33.653957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147945, 33.304684, 33.807556>,  <37.542049, 33.120399, 33.478840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147945, 33.304684, 33.807556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.526562, 33.398727, 33.895905>,  <38.753731, 33.455154, 33.948914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.526562, 33.398727, 33.895905>,  <38.147945, 33.304684, 33.807556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526562, 33.398727, 33.895905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128584, 0.352953, -0.926763,
		-0.295850, 0.905619, 0.303852,
		0.946540, 0.235113, 0.220869,
		38.810524, 33.469261, 33.962166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271648, 33.877785, 33.410042>,  <38.147945, 33.304684, 33.807556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271648, 33.877785, 33.410042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.644176, 33.761696, 33.498058>,  <38.867695, 33.692043, 33.550869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.644176, 33.761696, 33.498058>,  <38.271648, 33.877785, 33.410042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644176, 33.761696, 33.498058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324331, 0.386021, -0.863595,
		0.165693, 0.875648, 0.453636,
		0.931319, -0.290220, 0.220039,
		38.923573, 33.674629, 33.564072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745247, 34.467903, 33.393589>,  <38.271648, 33.877785, 33.410042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745247, 34.467903, 33.393589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993782, 34.158051, 33.346443>,  <39.142902, 33.972137, 33.318157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993782, 34.158051, 33.346443>,  <38.745247, 34.467903, 33.393589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993782, 34.158051, 33.346443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387814, 0.434733, -0.812778,
		0.680841, 0.459297, 0.570527,
		0.621334, -0.774631, -0.117863,
		39.180183, 33.925663, 33.311085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419983, 34.757496, 33.292717>,  <38.745247, 34.467903, 33.393589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419983, 34.757496, 33.292717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.387287, 34.387241, 33.144924>,  <39.367668, 34.165089, 33.056248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.387287, 34.387241, 33.144924>,  <39.419983, 34.757496, 33.292717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387287, 34.387241, 33.144924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240050, 0.341529, -0.908699,
		0.967313, -0.162971, 0.194283,
		-0.081738, -0.925634, -0.369486,
		39.362766, 34.109550, 33.034077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973965, 34.716644, 32.887535>,  <39.419983, 34.757496, 33.292717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973965, 34.716644, 32.887535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.767883, 34.399376, 32.757641>,  <39.644234, 34.209015, 32.679703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.767883, 34.399376, 32.757641>,  <39.973965, 34.716644, 32.887535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767883, 34.399376, 32.757641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256519, 0.218826, -0.941442,
		0.817783, -0.568331, 0.090724,
		-0.515198, -0.793167, -0.324740,
		39.613323, 34.161427, 32.660217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454510, 34.297668, 32.617607>,  <39.973965, 34.716644, 32.887535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454510, 34.297668, 32.617607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.086414, 34.258270, 32.466106>,  <39.865555, 34.234631, 32.375206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.086414, 34.258270, 32.466106>,  <40.454510, 34.297668, 32.617607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086414, 34.258270, 32.466106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330222, 0.323950, -0.886572,
		0.210014, -0.940934, -0.265589,
		-0.920243, -0.098489, -0.378751,
		39.810341, 34.228722, 32.352482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570717, 33.933994, 31.999468>,  <40.454510, 34.297668, 32.617607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570717, 33.933994, 31.999468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.208725, 34.098892, 31.957396>,  <39.991528, 34.197830, 31.932152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.208725, 34.098892, 31.957396>,  <40.570717, 33.933994, 31.999468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208725, 34.098892, 31.957396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141921, 0.059445, -0.988092,
		-0.401080, -0.909133, -0.112303,
		-0.904983, 0.412241, -0.105183,
		39.937229, 34.222565, 31.925840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230042, 33.616272, 31.548012>,  <40.570717, 33.933994, 31.999468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230042, 33.616272, 31.548012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.048222, 33.972256, 31.533335>,  <39.939129, 34.185848, 31.524529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.048222, 33.972256, 31.533335>,  <40.230042, 33.616272, 31.548012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048222, 33.972256, 31.533335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118712, 0.019703, -0.992733,
		-0.882774, -0.455606, -0.114606,
		-0.454553, 0.889963, -0.036692,
		39.911854, 34.239246, 31.522327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691982, 33.536415, 31.049429>,  <40.230042, 33.616272, 31.548012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691982, 33.536415, 31.049429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.745949, 33.932140, 31.071543>,  <39.778328, 34.169575, 31.084810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.745949, 33.932140, 31.071543>,  <39.691982, 33.536415, 31.049429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745949, 33.932140, 31.071543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033727, 0.051178, -0.998120,
		-0.990283, 0.136526, -0.026462,
		0.134916, 0.989314, 0.055285,
		39.786423, 34.228935, 31.088129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258575, 33.636894, 30.421148>,  <39.691982, 33.536415, 31.049429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258575, 33.636894, 30.421148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.373199, 33.995853, 30.555346>,  <39.441975, 34.211231, 30.635864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.373199, 33.995853, 30.555346>,  <39.258575, 33.636894, 30.421148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373199, 33.995853, 30.555346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030216, 0.358471, -0.933052,
		-0.957586, 0.257237, 0.129839,
		0.286559, 0.897400, 0.335494,
		39.459167, 34.265072, 30.655994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689316, 34.138863, 30.305603>,  <39.258575, 33.636894, 30.421148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689316, 34.138863, 30.305603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.039017, 34.332218, 30.323599>,  <39.248837, 34.448231, 30.334396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.039017, 34.332218, 30.323599>,  <38.689316, 34.138863, 30.305603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039017, 34.332218, 30.323599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137857, 0.336045, -0.931702,
		-0.465491, 0.808339, 0.360426,
		0.874250, 0.483387, 0.044991,
		39.301292, 34.477234, 30.337095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548195, 34.854553, 30.246065>,  <38.689316, 34.138863, 30.305603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548195, 34.854553, 30.246065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920811, 34.783333, 30.119238>,  <39.144379, 34.740601, 30.043142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920811, 34.783333, 30.119238>,  <38.548195, 34.854553, 30.246065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920811, 34.783333, 30.119238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196425, 0.487405, -0.850796,
		0.306022, 0.854831, 0.419064,
		0.931541, -0.178047, -0.317067,
		39.200272, 34.729919, 30.024118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915817, 35.426102, 29.904833>,  <38.548195, 34.854553, 30.246065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915817, 35.426102, 29.904833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.092560, 35.100586, 29.753832>,  <39.198605, 34.905277, 29.663231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.092560, 35.100586, 29.753832>,  <38.915817, 35.426102, 29.904833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092560, 35.100586, 29.753832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148092, 0.348866, -0.925398,
		0.884776, 0.464802, 0.033635,
		0.441860, -0.813788, -0.377502,
		39.225117, 34.856449, 29.640581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351036, 35.606739, 29.324211>,  <38.915817, 35.426102, 29.904833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351036, 35.606739, 29.324211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.282494, 35.220333, 29.246809>,  <39.241367, 34.988487, 29.200367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.282494, 35.220333, 29.246809>,  <39.351036, 35.606739, 29.324211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282494, 35.220333, 29.246809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055381, 0.205547, -0.977079,
		0.983652, -0.156710, -0.088720,
		-0.171354, -0.966019, -0.193507,
		39.231087, 34.930527, 29.188757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892452, 35.359676, 28.887266>,  <39.351036, 35.606739, 29.324211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892452, 35.359676, 28.887266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.556995, 35.148960, 28.831900>,  <39.355721, 35.022530, 28.798679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.556995, 35.148960, 28.831900>,  <39.892452, 35.359676, 28.887266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556995, 35.148960, 28.831900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011864, 0.236395, -0.971585,
		0.544547, -0.816458, -0.192002,
		-0.838647, -0.526795, -0.138414,
		39.305401, 34.990921, 28.790375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020805, 35.050301, 28.281622>,  <39.892452, 35.359676, 28.887266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020805, 35.050301, 28.281622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623974, 35.023380, 28.324047>,  <39.385876, 35.007229, 28.349503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623974, 35.023380, 28.324047>,  <40.020805, 35.050301, 28.281622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623974, 35.023380, 28.324047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118928, 0.231477, -0.965543,
		0.040428, -0.970510, -0.237648,
		-0.992079, -0.067298, 0.106063,
		39.326351, 35.003189, 28.355865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798580, 34.890018, 27.580128>,  <40.020805, 35.050301, 28.281622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798580, 34.890018, 27.580128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.453732, 34.970242, 27.766258>,  <39.246822, 35.018375, 27.877937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.453732, 34.970242, 27.766258>,  <39.798580, 34.890018, 27.580128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453732, 34.970242, 27.766258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370932, 0.375822, -0.849216,
		-0.345201, -0.904728, -0.249607,
		-0.862117, 0.200562, 0.465327,
		39.195095, 35.030411, 27.905857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203392, 34.539345, 27.148411>,  <39.798580, 34.890018, 27.580128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203392, 34.539345, 27.148411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.072498, 34.837837, 27.380295>,  <38.993961, 35.016933, 27.519424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.072498, 34.837837, 27.380295>,  <39.203392, 34.539345, 27.148411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072498, 34.837837, 27.380295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458349, 0.411138, -0.787961,
		-0.826338, -0.523557, 0.207493,
		-0.327234, 0.746226, 0.579710,
		38.974327, 35.061707, 27.554209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.328876, 34.764977, 26.820423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.426201, 35.058453, 27.074194>,  <38.484596, 35.234539, 27.226458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.426201, 35.058453, 27.074194>,  <38.328876, 34.764977, 26.820423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426201, 35.058453, 27.074194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507366, 0.653733, -0.561438,
		-0.826669, -0.185285, 0.531308,
		0.243308, 0.733691, 0.634428,
		38.499191, 35.278561, 27.264523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724842, 35.187778, 27.027565>,  <38.328876, 34.764977, 26.820423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724842, 35.187778, 27.027565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.039520, 35.426937, 27.089048>,  <38.228329, 35.570431, 27.125938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.039520, 35.426937, 27.089048>,  <37.724842, 35.187778, 27.027565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039520, 35.426937, 27.089048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467209, 0.739377, -0.484807,
		-0.403511, 0.309584, 0.861009,
		0.786699, 0.597896, 0.153707,
		38.275528, 35.606304, 27.135160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398083, 35.628151, 27.467772>,  <37.724842, 35.187778, 27.027565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398083, 35.628151, 27.467772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.723484, 35.768826, 27.282501>,  <37.918724, 35.853230, 27.171339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.723484, 35.768826, 27.282501>,  <37.398083, 35.628151, 27.467772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723484, 35.768826, 27.282501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560896, 0.684901, -0.465086,
		0.153665, 0.638142, 0.754428,
		0.813500, 0.351689, -0.463177,
		37.967533, 35.874332, 27.143549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194664, 36.278458, 27.269949>,  <37.398083, 35.628151, 27.467772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194664, 36.278458, 27.269949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.511051, 36.261803, 27.025774>,  <37.700886, 36.251808, 26.879269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.511051, 36.261803, 27.025774>,  <37.194664, 36.278458, 27.269949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511051, 36.261803, 27.025774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505670, 0.517213, -0.690500,
		0.344476, 0.854844, 0.388045,
		0.790971, -0.041638, -0.610436,
		37.748341, 36.249310, 26.842644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589069, 36.912609, 27.163490>,  <37.194664, 36.278458, 27.269949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589069, 36.912609, 27.163490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.649635, 36.702721, 26.828411>,  <37.685974, 36.576786, 26.627363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.649635, 36.702721, 26.828411>,  <37.589069, 36.912609, 27.163490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649635, 36.702721, 26.828411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454074, 0.715838, -0.530464,
		0.878003, 0.460698, -0.129874,
		0.151415, -0.524721, -0.837700,
		37.695061, 36.545303, 26.577101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733582, 37.355129, 26.612057>,  <37.589069, 36.912609, 27.163490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733582, 37.355129, 26.612057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.663452, 37.041237, 26.374249>,  <37.621376, 36.852901, 26.231564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.663452, 37.041237, 26.374249>,  <37.733582, 37.355129, 26.612057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663452, 37.041237, 26.374249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414238, 0.606617, -0.678545,
		0.893123, 0.127307, -0.431421,
		-0.175324, -0.784735, -0.594518,
		37.610855, 36.805817, 26.195892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797821, 37.668079, 25.966024>,  <37.733582, 37.355129, 26.612057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797821, 37.668079, 25.966024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643429, 37.311554, 25.870876>,  <37.550793, 37.097641, 25.813787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643429, 37.311554, 25.870876>,  <37.797821, 37.668079, 25.966024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643429, 37.311554, 25.870876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441702, 0.404937, -0.800578,
		0.809886, -0.203943, -0.549993,
		-0.385985, -0.891310, -0.237871,
		37.527634, 37.044163, 25.799515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111988, 37.517525, 25.328676>,  <37.797821, 37.668079, 25.966024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111988, 37.517525, 25.328676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.753960, 37.344418, 25.371677>,  <37.539143, 37.240555, 25.397478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.753960, 37.344418, 25.371677>,  <38.111988, 37.517525, 25.328676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753960, 37.344418, 25.371677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330649, 0.482365, -0.811169,
		0.299191, -0.761601, -0.574846,
		-0.895073, -0.432767, 0.107504,
		37.485439, 37.214588, 25.403929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043537, 37.155521, 24.815447>,  <38.111988, 37.517525, 25.328676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043537, 37.155521, 24.815447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.663139, 37.209389, 24.926781>,  <37.434898, 37.241707, 24.993582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.663139, 37.209389, 24.926781>,  <38.043537, 37.155521, 24.815447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663139, 37.209389, 24.926781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192585, 0.446274, -0.873928,
		-0.241904, -0.884706, -0.398470,
		-0.950996, 0.134667, 0.278337,
		37.377842, 37.249790, 25.010283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688625, 36.960022, 24.251472>,  <38.043537, 37.155521, 24.815447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688625, 36.960022, 24.251472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.431309, 37.196030, 24.446638>,  <37.276920, 37.337635, 24.563738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.431309, 37.196030, 24.446638>,  <37.688625, 36.960022, 24.251472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431309, 37.196030, 24.446638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182726, 0.500545, -0.846207,
		-0.743501, -0.633508, -0.214182,
		-0.643286, 0.590019, 0.487914,
		37.238323, 37.373035, 24.593012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159149, 36.914440, 23.780289>,  <37.688625, 36.960022, 24.251472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159149, 36.914440, 23.780289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.112206, 37.237881, 24.010904>,  <37.084038, 37.431946, 24.149273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.112206, 37.237881, 24.010904>,  <37.159149, 36.914440, 23.780289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112206, 37.237881, 24.010904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087358, 0.569893, -0.817062,
		-0.989240, -0.146254, 0.003756,
		-0.117358, 0.808599, 0.576537,
		37.077000, 37.480461, 24.183865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554295, 37.367386, 23.518812>,  <37.159149, 36.914440, 23.780289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554295, 37.367386, 23.518812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768280, 37.622837, 23.740070>,  <36.896671, 37.776108, 23.872826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768280, 37.622837, 23.740070>,  <36.554295, 37.367386, 23.518812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768280, 37.622837, 23.740070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280446, 0.751810, -0.596767,
		-0.796972, 0.164120, 0.581291,
		0.534963, 0.638627, 0.553145,
		36.928768, 37.814426, 23.906013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132362, 37.847851, 23.584032>,  <36.554295, 37.367386, 23.518812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132362, 37.847851, 23.584032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.473282, 38.030163, 23.686674>,  <36.677834, 38.139549, 23.748260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.473282, 38.030163, 23.686674>,  <36.132362, 37.847851, 23.584032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473282, 38.030163, 23.686674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210020, 0.747520, -0.630163,
		-0.479035, 0.483196, 0.732835,
		0.852301, 0.455780, 0.256607,
		36.728973, 38.166897, 23.763657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969395, 38.570061, 23.753080>,  <36.132362, 37.847851, 23.584032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969395, 38.570061, 23.753080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.356525, 38.568653, 23.652439>,  <36.588802, 38.567806, 23.592054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.356525, 38.568653, 23.652439>,  <35.969395, 38.570061, 23.753080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356525, 38.568653, 23.652439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154418, 0.781168, -0.604923,
		0.198674, 0.624311, 0.755490,
		0.967824, -0.003521, -0.251603,
		36.646873, 38.567596, 23.576958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259056, 39.289562, 23.823292>,  <35.969395, 38.570061, 23.753080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259056, 39.289562, 23.823292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510227, 39.086842, 23.587034>,  <36.660931, 38.965210, 23.445280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510227, 39.086842, 23.587034>,  <36.259056, 39.289562, 23.823292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510227, 39.086842, 23.587034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170321, 0.830006, -0.531113,
		0.759407, 0.232900, 0.607502,
		0.627926, -0.506801, -0.590644,
		36.698605, 38.934803, 23.409842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755398, 39.742943, 23.518394>,  <36.259056, 39.289562, 23.823292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755398, 39.742943, 23.518394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.789059, 39.456429, 23.241310>,  <36.809258, 39.284519, 23.075060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.789059, 39.456429, 23.241310>,  <36.755398, 39.742943, 23.518394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789059, 39.456429, 23.241310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234165, 0.689924, -0.684961,
		0.968548, -0.104565, 0.225791,
		0.084156, -0.716289, -0.692710,
		36.814304, 39.241543, 23.033497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389977, 39.941345, 23.197666>,  <36.755398, 39.742943, 23.518394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389977, 39.941345, 23.197666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.194050, 39.716309, 22.931263>,  <37.076496, 39.581287, 22.771421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.194050, 39.716309, 22.931263>,  <37.389977, 39.941345, 23.197666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194050, 39.716309, 22.931263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205098, 0.668125, -0.715223,
		0.847359, -0.486923, -0.211869,
		-0.489813, -0.562597, -0.666009,
		37.047104, 39.547531, 22.731461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717690, 40.120514, 22.568302>,  <37.389977, 39.941345, 23.197666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717690, 40.120514, 22.568302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.377789, 39.933876, 22.470160>,  <37.173847, 39.821892, 22.411274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.377789, 39.933876, 22.470160>,  <37.717690, 40.120514, 22.568302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377789, 39.933876, 22.470160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038956, 0.519724, -0.853446,
		0.525742, -0.715659, -0.459813,
		-0.849752, -0.466605, -0.245361,
		37.122860, 39.793896, 22.396553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803577, 39.701077, 21.908575>,  <37.717690, 40.120514, 22.568302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803577, 39.701077, 21.908575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432724, 39.829273, 21.986242>,  <37.210213, 39.906193, 22.032843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432724, 39.829273, 21.986242>,  <37.803577, 39.701077, 21.908575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432724, 39.829273, 21.986242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071968, 0.660810, -0.747095,
		-0.367748, -0.678685, -0.635727,
		-0.927137, 0.320494, 0.194168,
		37.154583, 39.925423, 22.044493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663864, 39.877499, 21.221914>,  <37.803577, 39.701077, 21.908575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663864, 39.877499, 21.221914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.336216, 39.996666, 21.417992>,  <37.139629, 40.068165, 21.535639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.336216, 39.996666, 21.417992>,  <37.663864, 39.877499, 21.221914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336216, 39.996666, 21.417992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126938, 0.739231, -0.661380,
		-0.559403, -0.603973, -0.567701,
		-0.819118, 0.297915, 0.490196,
		37.090481, 40.086040, 21.565050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031242, 39.993404, 20.717981>,  <37.663864, 39.877499, 21.221914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031242, 39.993404, 20.717981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956020, 40.221008, 21.038197>,  <36.910889, 40.357571, 21.230326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956020, 40.221008, 21.038197>,  <37.031242, 39.993404, 20.717981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956020, 40.221008, 21.038197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274862, 0.752022, -0.599094,
		-0.942914, -0.332700, 0.014979,
		-0.188054, 0.569011, 0.800538,
		36.899605, 40.391712, 21.278358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388176, 40.272732, 20.552992>,  <37.031242, 39.993404, 20.717981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388176, 40.272732, 20.552992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579063, 40.495953, 20.824535>,  <36.693596, 40.629883, 20.987461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579063, 40.495953, 20.824535>,  <36.388176, 40.272732, 20.552992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579063, 40.495953, 20.824535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250189, 0.826802, -0.503790,
		-0.842419, 0.070573, 0.534180,
		0.477216, 0.558048, 0.678857,
		36.722229, 40.663368, 21.028193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004719, 40.902729, 20.626879>,  <36.388176, 40.272732, 20.552992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004719, 40.902729, 20.626879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.374313, 41.000084, 20.744871>,  <36.596069, 41.058498, 20.815666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.374313, 41.000084, 20.744871>,  <36.004719, 40.902729, 20.626879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374313, 41.000084, 20.744871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048722, 0.839968, -0.540444,
		-0.379314, 0.484989, 0.787976,
		0.923984, 0.243390, 0.294982,
		36.651508, 41.073101, 20.833366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268833, 40.602623, 20.566959>,  <36.004719, 40.902729, 20.626879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268833, 40.602623, 20.566959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927811, 40.492199, 20.389448>,  <34.723198, 40.425945, 20.282942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927811, 40.492199, 20.389448>,  <35.268833, 40.602623, 20.566959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927811, 40.492199, 20.389448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522177, -0.485477, -0.701173,
		-0.021881, -0.829521, 0.558047,
		-0.852556, -0.276057, -0.443779,
		34.672043, 40.409382, 20.256313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848396, 39.872406, 20.461538>,  <35.268833, 40.602623, 20.566959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848396, 39.872406, 20.461538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.802216, 40.101906, 20.137197>,  <34.774509, 40.239605, 19.942593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.802216, 40.101906, 20.137197>,  <34.848396, 39.872406, 20.461538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802216, 40.101906, 20.137197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611641, -0.602136, -0.513154,
		-0.782666, -0.555193, -0.281415,
		-0.115449, 0.573753, -0.810851,
		34.767582, 40.274033, 19.893942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237373, 39.998390, 20.195557>,  <34.848396, 39.872406, 20.461538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237373, 39.998390, 20.195557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.030781, 39.678864, 20.072178>,  <33.906826, 39.487148, 19.998150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.030781, 39.678864, 20.072178>,  <34.237373, 39.998390, 20.195557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030781, 39.678864, 20.072178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253913, -0.486877, 0.835750,
		-0.817789, 0.353327, 0.454291,
		-0.516477, -0.798818, -0.308449,
		33.875839, 39.439217, 19.979643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704403, 39.826450, 20.726841>,  <34.237373, 39.998390, 20.195557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704403, 39.826450, 20.726841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.777168, 39.498013, 20.510431>,  <33.820827, 39.300949, 20.380585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.777168, 39.498013, 20.510431>,  <33.704403, 39.826450, 20.726841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777168, 39.498013, 20.510431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263112, -0.489497, 0.831363,
		-0.947460, -0.293585, 0.126996,
		0.181912, -0.821097, -0.541025,
		33.831741, 39.251682, 20.348124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303188, 39.233837, 21.035931>,  <33.704403, 39.826450, 20.726841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303188, 39.233837, 21.035931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.561592, 39.007912, 20.830544>,  <33.716637, 38.872356, 20.707312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.561592, 39.007912, 20.830544>,  <33.303188, 39.233837, 21.035931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561592, 39.007912, 20.830544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173377, -0.546519, 0.819303,
		-0.743376, -0.618304, -0.255132,
		0.646013, -0.564816, -0.513469,
		33.755398, 38.838467, 20.676502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115795, 38.503036, 21.122059>,  <33.303188, 39.233837, 21.035931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115795, 38.503036, 21.122059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.502316, 38.513935, 21.019665>,  <33.734226, 38.520473, 20.958229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.502316, 38.513935, 21.019665>,  <33.115795, 38.503036, 21.122059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502316, 38.513935, 21.019665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243966, -0.414313, 0.876827,
		-0.082167, -0.909726, -0.406997,
		0.966297, 0.027247, -0.255986,
		33.792206, 38.522110, 20.942869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345432, 37.820763, 21.246742>,  <33.115795, 38.503036, 21.122059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345432, 37.820763, 21.246742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.672665, 38.049747, 21.224722>,  <33.869003, 38.187138, 21.211510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.672665, 38.049747, 21.224722>,  <33.345432, 37.820763, 21.246742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672665, 38.049747, 21.224722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357535, -0.431279, 0.828352,
		0.450459, -0.697341, -0.557496,
		0.818080, 0.572463, -0.055050,
		33.918087, 38.221485, 21.208206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874767, 37.360722, 21.611414>,  <33.345432, 37.820763, 21.246742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874767, 37.360722, 21.611414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.071907, 37.707127, 21.577639>,  <34.190189, 37.914970, 21.557373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.071907, 37.707127, 21.577639>,  <33.874767, 37.360722, 21.611414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071907, 37.707127, 21.577639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455102, -0.173851, 0.873303,
		0.741608, -0.468835, -0.479804,
		0.492849, 0.866008, -0.084439,
		34.219761, 37.966930, 21.552307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631214, 37.191532, 21.579094>,  <33.874767, 37.360722, 21.611414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631214, 37.191532, 21.579094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.543388, 37.554989, 21.721169>,  <34.490692, 37.773064, 21.806414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.543388, 37.554989, 21.721169>,  <34.631214, 37.191532, 21.579094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543388, 37.554989, 21.721169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423339, -0.239270, 0.873805,
		0.878963, 0.342220, -0.332129,
		-0.219565, 0.908645, 0.355185,
		34.477520, 37.827583, 21.827724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187210, 37.406174, 21.906029>,  <34.631214, 37.191532, 21.579094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187210, 37.406174, 21.906029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.894089, 37.621281, 22.072788>,  <34.718216, 37.750343, 22.172844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.894089, 37.621281, 22.072788>,  <35.187210, 37.406174, 21.906029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894089, 37.621281, 22.072788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468212, -0.046059, 0.882415,
		0.493736, 0.841834, -0.218037,
		-0.732804, 0.537768, 0.416898,
		34.674248, 37.782612, 22.197857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547367, 37.787514, 22.470449>,  <35.187210, 37.406174, 21.906029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547367, 37.787514, 22.470449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.163006, 37.811886, 22.578493>,  <34.932388, 37.826508, 22.643320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.163006, 37.811886, 22.578493>,  <35.547367, 37.787514, 22.470449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163006, 37.811886, 22.578493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230356, -0.365390, 0.901902,
		0.153647, 0.928858, 0.337068,
		-0.960900, 0.060929, 0.270109,
		34.874737, 37.830166, 22.659525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543667, 38.003044, 23.128038>,  <35.547367, 37.787514, 22.470449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543667, 38.003044, 23.128038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.158611, 37.895107, 23.119003>,  <34.927578, 37.830345, 23.113583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.158611, 37.895107, 23.119003>,  <35.543667, 38.003044, 23.128038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158611, 37.895107, 23.119003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104387, -0.446768, 0.888539,
		-0.249858, 0.852985, 0.458245,
		-0.962639, -0.269843, -0.022588,
		34.869820, 37.814156, 23.112226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349503, 38.179871, 23.795010>,  <35.543667, 38.003044, 23.128038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349503, 38.179871, 23.795010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117138, 37.895000, 23.637354>,  <34.977718, 37.724079, 23.542761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117138, 37.895000, 23.637354>,  <35.349503, 38.179871, 23.795010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117138, 37.895000, 23.637354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015202, -0.474645, 0.880046,
		-0.813822, 0.517224, 0.264902,
		-0.580915, -0.712174, -0.394139,
		34.942863, 37.681347, 23.519112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868198, 38.078896, 24.347296>,  <35.349503, 38.179871, 23.795010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868198, 38.078896, 24.347296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854511, 37.759785, 24.106506>,  <34.846298, 37.568317, 23.962032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854511, 37.759785, 24.106506>,  <34.868198, 38.078896, 24.347296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854511, 37.759785, 24.106506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099809, -0.596589, 0.796316,
		-0.994418, 0.087334, -0.059210,
		-0.034221, -0.797781, -0.601976,
		34.844246, 37.520451, 23.925913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498142, 37.733006, 24.673502>,  <34.868198, 38.078896, 24.347296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498142, 37.733006, 24.673502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.655102, 37.455418, 24.432032>,  <34.749279, 37.288864, 24.287149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.655102, 37.455418, 24.432032>,  <34.498142, 37.733006, 24.673502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655102, 37.455418, 24.432032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073841, -0.630429, 0.772727,
		-0.916826, -0.347794, -0.196136,
		0.392399, -0.693973, -0.603675,
		34.772823, 37.247227, 24.250929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028252, 37.051498, 24.704384>,  <34.498142, 37.733006, 24.673502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028252, 37.051498, 24.704384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400467, 36.954803, 24.594362>,  <34.623798, 36.896786, 24.528349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400467, 36.954803, 24.594362>,  <34.028252, 37.051498, 24.704384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400467, 36.954803, 24.594362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139822, -0.459663, 0.877017,
		-0.338442, -0.854560, -0.393935,
		0.930541, -0.241739, -0.275055,
		34.679630, 36.882282, 24.511845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126190, 36.307877, 24.654799>,  <34.028252, 37.051498, 24.704384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126190, 36.307877, 24.654799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.513706, 36.406998, 24.652246>,  <34.746216, 36.466473, 24.650715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.513706, 36.406998, 24.652246>,  <34.126190, 36.307877, 24.654799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513706, 36.406998, 24.652246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193047, -0.738064, 0.646525,
		0.155503, -0.627578, -0.762866,
		0.968789, 0.247806, -0.006381,
		34.804344, 36.481339, 24.650331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529453, 35.673920, 24.485245>,  <34.126190, 36.307877, 24.654799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529453, 35.673920, 24.485245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.732693, 35.948467, 24.693371>,  <34.854637, 36.113197, 24.818247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.732693, 35.948467, 24.693371>,  <34.529453, 35.673920, 24.485245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732693, 35.948467, 24.693371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204366, -0.682932, 0.701312,
		0.836699, -0.250004, -0.487271,
		0.508103, 0.686369, 0.520316,
		34.885124, 36.154377, 24.849466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186890, 35.322369, 24.865959>,  <34.529453, 35.673920, 24.485245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186890, 35.322369, 24.865959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173145, 35.666023, 25.070196>,  <35.164898, 35.872215, 25.192738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173145, 35.666023, 25.070196>,  <35.186890, 35.322369, 24.865959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173145, 35.666023, 25.070196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459280, -0.440176, 0.771561,
		0.887627, 0.261016, -0.379459,
		-0.034361, 0.859137, 0.510591,
		35.162838, 35.923763, 25.223373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757893, 35.214664, 25.269365>,  <35.186890, 35.322369, 24.865959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757893, 35.214664, 25.269365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.578300, 35.517895, 25.458569>,  <35.470547, 35.699833, 25.572090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.578300, 35.517895, 25.458569>,  <35.757893, 35.214664, 25.269365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578300, 35.517895, 25.458569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416907, -0.290485, 0.861282,
		0.790321, 0.583896, -0.185627,
		-0.448978, 0.758079, 0.473007,
		35.443607, 35.745319, 25.600471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247952, 35.488316, 25.767847>,  <35.757893, 35.214664, 25.269365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247952, 35.488316, 25.767847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899445, 35.623566, 25.910147>,  <35.690338, 35.704716, 25.995525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899445, 35.623566, 25.910147>,  <36.247952, 35.488316, 25.767847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899445, 35.623566, 25.910147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234262, -0.350437, 0.906816,
		0.431285, 0.873421, 0.226116,
		-0.871272, 0.338125, 0.355748,
		35.638062, 35.725002, 26.016870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.445084, 34.682392, 29.740782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.057323, 34.710339, 29.834909>,  <39.824665, 34.727108, 29.891386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.057323, 34.710339, 29.834909>,  <40.445084, 34.682392, 29.740782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057323, 34.710339, 29.834909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232875, -0.041413, 0.971624,
		0.077629, 0.996696, 0.023876,
		-0.969403, 0.069867, 0.235321,
		39.766502, 34.731300, 29.905506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481102, 35.058132, 30.380608>,  <40.445084, 34.682392, 29.740782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481102, 35.058132, 30.380608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.118851, 34.890850, 30.352484>,  <39.901501, 34.790482, 30.335609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.118851, 34.890850, 30.352484>,  <40.481102, 35.058132, 30.380608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118851, 34.890850, 30.352484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034611, -0.238129, 0.970616,
		-0.422656, 0.876585, 0.230131,
		-0.905629, -0.418202, -0.070308,
		39.847160, 34.765388, 30.331392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205593, 35.371166, 30.951466>,  <40.481102, 35.058132, 30.380608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205593, 35.371166, 30.951466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973785, 35.060425, 30.852949>,  <39.834702, 34.873981, 30.793840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973785, 35.060425, 30.852949>,  <40.205593, 35.371166, 30.951466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973785, 35.060425, 30.852949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004995, -0.298820, 0.954296,
		-0.814944, 0.554262, 0.169291,
		-0.579518, -0.776853, -0.246290,
		39.799931, 34.827370, 30.779062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621929, 35.504395, 31.371815>,  <40.205593, 35.371166, 30.951466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621929, 35.504395, 31.371815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.688847, 35.123127, 31.271030>,  <39.728996, 34.894367, 31.210560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.688847, 35.123127, 31.271030>,  <39.621929, 35.504395, 31.371815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688847, 35.123127, 31.271030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099248, -0.270544, 0.957578,
		-0.980899, -0.135191, -0.139860,
		0.167294, -0.953168, -0.251959,
		39.739037, 34.837177, 31.195442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025284, 35.155960, 31.532465>,  <39.621929, 35.504395, 31.371815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025284, 35.155960, 31.532465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.326328, 34.892765, 31.542532>,  <39.506954, 34.734848, 31.548573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.326328, 34.892765, 31.542532>,  <39.025284, 35.155960, 31.532465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326328, 34.892765, 31.542532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483609, -0.526414, 0.699293,
		-0.446875, -0.538467, -0.714392,
		0.752612, -0.657983, 0.025167,
		39.552113, 34.695370, 31.550081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653328, 34.580765, 31.759295>,  <39.025284, 35.155960, 31.532465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653328, 34.580765, 31.759295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.038979, 34.477085, 31.782169>,  <39.270370, 34.414879, 31.795895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.038979, 34.477085, 31.782169>,  <38.653328, 34.580765, 31.759295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038979, 34.477085, 31.782169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217526, -0.648110, 0.729819,
		-0.152104, -0.716079, -0.681245,
		0.964130, -0.259197, 0.057186,
		39.328217, 34.399326, 31.799326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658081, 33.900818, 31.819738>,  <38.653328, 34.580765, 31.759295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658081, 33.900818, 31.819738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.020763, 33.968208, 31.974396>,  <39.238373, 34.008644, 32.067192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.020763, 33.968208, 31.974396>,  <38.658081, 33.900818, 31.819738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020763, 33.968208, 31.974396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252041, -0.518596, 0.817027,
		0.338163, -0.838257, -0.427752,
		0.906709, 0.168477, 0.386645,
		39.292778, 34.018753, 32.090389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844166, 33.248222, 32.235321>,  <38.658081, 33.900818, 31.819738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844166, 33.248222, 32.235321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.105785, 33.518665, 32.371025>,  <39.262756, 33.680931, 32.452446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.105785, 33.518665, 32.371025>,  <38.844166, 33.248222, 32.235321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105785, 33.518665, 32.371025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128670, -0.342516, 0.930659,
		0.745432, -0.652346, -0.137026,
		0.654046, 0.676112, 0.339259,
		39.301998, 33.721500, 32.472801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300686, 32.853573, 32.625568>,  <38.844166, 33.248222, 32.235321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300686, 32.853573, 32.625568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.321083, 33.236744, 32.738548>,  <39.333321, 33.466644, 32.806335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.321083, 33.236744, 32.738548>,  <39.300686, 32.853573, 32.625568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321083, 33.236744, 32.738548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207316, -0.266504, 0.941274,
		0.976944, -0.106556, 0.185004,
		0.050994, 0.957926, 0.282450,
		39.336380, 33.524120, 32.823284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885700, 32.880543, 33.193840>,  <39.300686, 32.853573, 32.625568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885700, 32.880543, 33.193840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.643330, 33.197422, 33.222885>,  <39.497906, 33.387550, 33.240314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.643330, 33.197422, 33.222885>,  <39.885700, 32.880543, 33.193840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643330, 33.197422, 33.222885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112174, -0.175453, 0.978076,
		0.787572, 0.584497, 0.195176,
		-0.605927, 0.792199, 0.072616,
		39.461552, 33.435081, 33.244671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119984, 33.187542, 33.811073>,  <39.885700, 32.880543, 33.193840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119984, 33.187542, 33.811073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.754524, 33.328197, 33.729492>,  <39.535248, 33.412590, 33.680546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.754524, 33.328197, 33.729492>,  <40.119984, 33.187542, 33.811073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754524, 33.328197, 33.729492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268040, -0.143930, 0.952596,
		0.305619, 0.925004, 0.225755,
		-0.913648, 0.351642, -0.203950,
		39.480431, 33.433689, 33.668308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021423, 33.775032, 34.332867>,  <40.119984, 33.187542, 33.811073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021423, 33.775032, 34.332867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.667011, 33.651752, 34.194324>,  <39.454365, 33.577785, 34.111198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.667011, 33.651752, 34.194324>,  <40.021423, 33.775032, 34.332867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667011, 33.651752, 34.194324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351161, -0.041659, 0.935388,
		-0.302717, 0.950408, -0.071317,
		-0.886030, -0.308201, -0.346358,
		39.401203, 33.559292, 34.090416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504227, 34.090202, 34.706120>,  <40.021423, 33.775032, 34.332867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504227, 34.090202, 34.706120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.355762, 33.754528, 34.547119>,  <39.266685, 33.553123, 34.451717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.355762, 33.754528, 34.547119>,  <39.504227, 34.090202, 34.706120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355762, 33.754528, 34.547119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260491, -0.316790, 0.912024,
		-0.891283, 0.442051, -0.101021,
		-0.371159, -0.839187, -0.397500,
		39.244415, 33.502773, 34.427868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799068, 33.957535, 35.023594>,  <39.504227, 34.090202, 34.706120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799068, 33.957535, 35.023594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.040409, 33.662125, 34.903229>,  <39.185215, 33.484879, 34.831009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.040409, 33.662125, 34.903229>,  <38.799068, 33.957535, 35.023594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040409, 33.662125, 34.903229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052223, -0.339930, 0.939000,
		-0.795765, -0.582260, -0.166529,
		0.603350, -0.738526, -0.300911,
		39.221413, 33.440567, 34.812954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406174, 34.225868, 35.571186>,  <38.799068, 33.957535, 35.023594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406174, 34.225868, 35.571186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.323261, 34.501530, 35.848919>,  <38.273514, 34.666927, 36.015560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.323261, 34.501530, 35.848919>,  <38.406174, 34.225868, 35.571186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323261, 34.501530, 35.848919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475206, 0.549459, -0.687222,
		-0.855111, -0.472399, 0.213599,
		-0.207279, 0.689155, 0.694335,
		38.261078, 34.708275, 36.057220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670403, 34.298164, 35.673767>,  <38.406174, 34.225868, 35.571186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670403, 34.298164, 35.673767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.817421, 34.659111, 35.763786>,  <37.905632, 34.875679, 35.817799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.817421, 34.659111, 35.763786>,  <37.670403, 34.298164, 35.673767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817421, 34.659111, 35.763786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585340, 0.412504, -0.698009,
		-0.722693, 0.124820, 0.679805,
		0.367548, 0.902363, 0.225052,
		37.927685, 34.929821, 35.831303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117905, 34.732071, 35.464291>,  <37.670403, 34.298164, 35.673767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117905, 34.732071, 35.464291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.402153, 34.992908, 35.569954>,  <37.572704, 35.149410, 35.633354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.402153, 34.992908, 35.569954>,  <37.117905, 34.732071, 35.464291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402153, 34.992908, 35.569954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359057, 0.659011, -0.660896,
		-0.605054, 0.374800, 0.702450,
		0.710625, 0.652097, 0.264162,
		37.615341, 35.188538, 35.649204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786587, 35.357052, 35.533520>,  <37.117905, 34.732071, 35.464291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786587, 35.357052, 35.533520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.163158, 35.478638, 35.475117>,  <37.389103, 35.551590, 35.440075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.163158, 35.478638, 35.475117>,  <36.786587, 35.357052, 35.533520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163158, 35.478638, 35.475117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318476, 0.659133, -0.681261,
		-0.110845, 0.687857, 0.717332,
		0.941428, 0.303968, -0.146005,
		37.445587, 35.569828, 35.431316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710735, 36.119934, 35.467915>,  <36.786587, 35.357052, 35.533520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710735, 36.119934, 35.467915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.061668, 36.005238, 35.313992>,  <37.272228, 35.936420, 35.221638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.061668, 36.005238, 35.313992>,  <36.710735, 36.119934, 35.467915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061668, 36.005238, 35.313992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097909, 0.678044, -0.728471,
		0.469796, 0.676784, 0.566794,
		0.877329, -0.286738, -0.384805,
		37.324867, 35.919216, 35.198551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995335, 36.733772, 35.184181>,  <36.710735, 36.119934, 35.467915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995335, 36.733772, 35.184181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.145248, 36.429497, 34.972183>,  <37.235195, 36.246933, 34.844986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.145248, 36.429497, 34.972183>,  <36.995335, 36.733772, 35.184181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145248, 36.429497, 34.972183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041820, 0.584949, -0.809991,
		0.926168, 0.281409, 0.251043,
		0.374786, -0.760686, -0.529992,
		37.257683, 36.201290, 34.813187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540497, 37.076073, 34.817150>,  <36.995335, 36.733772, 35.184181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540497, 37.076073, 34.817150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.433266, 36.746082, 34.618134>,  <37.368927, 36.548088, 34.498722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.433266, 36.746082, 34.618134>,  <37.540497, 37.076073, 34.817150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433266, 36.746082, 34.618134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082173, 0.534146, -0.841389,
		0.959886, -0.184673, -0.210983,
		-0.268077, -0.824975, -0.497545,
		37.352844, 36.498589, 34.468868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945663, 37.118370, 34.184223>,  <37.540497, 37.076073, 34.817150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945663, 37.118370, 34.184223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.652576, 36.875473, 34.061340>,  <37.476723, 36.729736, 33.987610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.652576, 36.875473, 34.061340>,  <37.945663, 37.118370, 34.184223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652576, 36.875473, 34.061340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010266, 0.441514, -0.897195,
		0.680452, -0.660547, -0.317273,
		-0.732721, -0.607242, -0.307210,
		37.432758, 36.693302, 33.969177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053898, 36.962204, 33.430157>,  <37.945663, 37.118370, 34.184223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053898, 36.962204, 33.430157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.672287, 36.853355, 33.480392>,  <37.443321, 36.788044, 33.510532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.672287, 36.853355, 33.480392>,  <38.053898, 36.962204, 33.430157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672287, 36.853355, 33.480392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206340, 0.292468, -0.933748,
		0.217364, -0.916740, -0.335174,
		-0.954032, -0.272123, 0.125588,
		37.386078, 36.771717, 33.518070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798687, 36.727604, 32.762573>,  <38.053898, 36.962204, 33.430157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798687, 36.727604, 32.762573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.457623, 36.788601, 32.962460>,  <37.252983, 36.825199, 33.082390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.457623, 36.788601, 32.962460>,  <37.798687, 36.727604, 32.762573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457623, 36.788601, 32.962460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446052, 0.285538, -0.848237,
		-0.272034, -0.946158, -0.175450,
		-0.852664, 0.152490, 0.499712,
		37.201824, 36.834347, 33.112373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339359, 36.320038, 32.353558>,  <37.798687, 36.727604, 32.762573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339359, 36.320038, 32.353558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.095749, 36.555828, 32.565826>,  <36.949585, 36.697300, 32.693188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.095749, 36.555828, 32.565826>,  <37.339359, 36.320038, 32.353558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095749, 36.555828, 32.565826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539865, 0.182078, -0.821823,
		-0.581067, -0.787000, 0.207346,
		-0.609022, 0.589473, 0.530673,
		36.913044, 36.732670, 32.725029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649021, 36.161034, 32.132298>,  <37.339359, 36.320038, 32.353558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649021, 36.161034, 32.132298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.679012, 36.529648, 32.284695>,  <36.697006, 36.750816, 32.376133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.679012, 36.529648, 32.284695>,  <36.649021, 36.161034, 32.132298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679012, 36.529648, 32.284695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552434, 0.356462, -0.753493,
		-0.830178, -0.153978, 0.535813,
		0.074976, 0.921534, 0.380990,
		36.701504, 36.806107, 32.398991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049477, 36.551765, 31.863571>,  <36.649021, 36.161034, 32.132298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049477, 36.551765, 31.863571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.289295, 36.838196, 32.006554>,  <36.433186, 37.010056, 32.092342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.289295, 36.838196, 32.006554>,  <36.049477, 36.551765, 31.863571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289295, 36.838196, 32.006554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407085, 0.657386, -0.634133,
		-0.689078, 0.234675, 0.685638,
		0.599544, 0.716080, 0.357457,
		36.469158, 37.053020, 32.113792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619415, 37.192142, 31.755308>,  <36.049477, 36.551765, 31.863571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619415, 37.192142, 31.755308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.999485, 37.307278, 31.803181>,  <36.227528, 37.376358, 31.831905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.999485, 37.307278, 31.803181>,  <35.619415, 37.192142, 31.755308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999485, 37.307278, 31.803181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042579, 0.500172, -0.864879,
		-0.308806, 0.816687, 0.487505,
		0.950172, 0.287837, 0.119682,
		36.284538, 37.393627, 31.839085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101665, 37.566357, 32.085850>,  <35.619415, 37.192142, 31.755308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101665, 37.566357, 32.085850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.733391, 37.720425, 32.060596>,  <34.512428, 37.812866, 32.045444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.733391, 37.720425, 32.060596>,  <35.101665, 37.566357, 32.085850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733391, 37.720425, 32.060596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273907, -0.522363, 0.807535,
		0.278063, 0.760775, 0.586432,
		-0.920682, 0.385173, -0.063132,
		34.457188, 37.835976, 32.041656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005798, 37.871262, 32.745316>,  <35.101665, 37.566357, 32.085850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005798, 37.871262, 32.745316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.659943, 37.807785, 32.554646>,  <34.452431, 37.769699, 32.440243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.659943, 37.807785, 32.554646>,  <35.005798, 37.871262, 32.745316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659943, 37.807785, 32.554646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368891, -0.443561, 0.816807,
		-0.341057, 0.882082, 0.324979,
		-0.864639, -0.158696, -0.476672,
		34.400551, 37.760178, 32.411644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423481, 37.849201, 33.277424>,  <35.005798, 37.871262, 32.745316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423481, 37.849201, 33.277424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.284439, 37.660854, 32.953087>,  <34.201015, 37.547848, 32.758484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.284439, 37.660854, 32.953087>,  <34.423481, 37.849201, 33.277424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284439, 37.660854, 32.953087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428887, -0.689151, 0.584061,
		-0.833804, 0.550778, 0.037602,
		-0.347601, -0.470865, -0.810839,
		34.180161, 37.519596, 32.709835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857216, 37.559460, 33.548531>,  <34.423481, 37.849201, 33.277424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857216, 37.559460, 33.548531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.923603, 37.372482, 33.201210>,  <33.963436, 37.260296, 32.992817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.923603, 37.372482, 33.201210>,  <33.857216, 37.559460, 33.548531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923603, 37.372482, 33.201210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490156, -0.803148, 0.338676,
		-0.855688, 0.369396, -0.362414,
		0.165967, -0.467440, -0.868306,
		33.973392, 37.232250, 32.940720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264572, 37.292553, 33.335022>,  <33.857216, 37.559460, 33.548531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264572, 37.292553, 33.335022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.504562, 37.079365, 33.096367>,  <33.648556, 36.951454, 32.953175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.504562, 37.079365, 33.096367>,  <33.264572, 37.292553, 33.335022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504562, 37.079365, 33.096367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542152, -0.819284, 0.186665,
		-0.588301, 0.211473, -0.780501,
		0.599978, -0.532966, -0.596636,
		33.684555, 36.919476, 32.917377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818302, 37.014927, 32.834576>,  <33.264572, 37.292553, 33.335022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818302, 37.014927, 32.834576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.154377, 36.801804, 32.874962>,  <33.356022, 36.673931, 32.899193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.154377, 36.801804, 32.874962>,  <32.818302, 37.014927, 32.834576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154377, 36.801804, 32.874962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541746, -0.833012, 0.112261,
		0.024293, -0.149018, -0.988536,
		0.840191, -0.532808, 0.100966,
		33.406433, 36.641960, 32.905251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754890, 36.444183, 32.430336>,  <32.818302, 37.014927, 32.834576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754890, 36.444183, 32.430336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.043606, 36.342014, 32.687637>,  <33.216835, 36.280712, 32.842018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.043606, 36.342014, 32.687637>,  <32.754890, 36.444183, 32.430336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043606, 36.342014, 32.687637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481939, -0.852541, 0.202259,
		0.496742, -0.456000, -0.738452,
		0.721791, -0.255418, 0.643257,
		33.260143, 36.265388, 32.880615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818878, 35.731529, 32.284122>,  <32.754890, 36.444183, 32.430336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818878, 35.731529, 32.284122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.963238, 35.809456, 32.648933>,  <33.049854, 35.856213, 32.867821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.963238, 35.809456, 32.648933>,  <32.818878, 35.731529, 32.284122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963238, 35.809456, 32.648933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569245, -0.728614, 0.380896,
		0.738722, -0.656634, -0.152060,
		0.360903, 0.194817, 0.912028,
		33.071510, 35.867901, 32.922543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720833, 35.108479, 32.558941>,  <32.818878, 35.731529, 32.284122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720833, 35.108479, 32.558941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.816238, 35.310966, 32.890446>,  <32.873482, 35.432461, 33.089348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.816238, 35.310966, 32.890446>,  <32.720833, 35.108479, 32.558941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816238, 35.310966, 32.890446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471054, -0.685972, 0.554572,
		0.849245, -0.522668, 0.074841,
		0.238519, 0.506222, 0.828763,
		32.887794, 35.462833, 33.139076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996311, 34.592342, 33.072716>,  <32.720833, 35.108479, 32.558941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996311, 34.592342, 33.072716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.846306, 34.925312, 33.235905>,  <32.756302, 35.125095, 33.333817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.846306, 34.925312, 33.235905>,  <32.996311, 34.592342, 33.072716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846306, 34.925312, 33.235905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454423, -0.548653, 0.701769,
		0.808003, 0.077780, 0.584022,
		-0.375009, 0.832425, 0.407968,
		32.733803, 35.175041, 33.358295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147900, 34.446003, 33.748283>,  <32.996311, 34.592342, 33.072716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147900, 34.446003, 33.748283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.866631, 34.727413, 33.707100>,  <32.697868, 34.896259, 33.682388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.866631, 34.727413, 33.707100>,  <33.147900, 34.446003, 33.748283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866631, 34.727413, 33.707100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618018, -0.533158, 0.577751,
		0.351568, 0.469890, 0.809693,
		-0.703174, 0.703524, -0.102959,
		32.655678, 34.938469, 33.676212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939362, 34.714706, 34.411064>,  <33.147900, 34.446003, 33.748283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939362, 34.714706, 34.411064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.636845, 34.812183, 34.168201>,  <32.455334, 34.870670, 34.022484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.636845, 34.812183, 34.168201>,  <32.939362, 34.714706, 34.411064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636845, 34.812183, 34.168201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650803, -0.375209, 0.660055,
		-0.066960, 0.894333, 0.442363,
		-0.756288, 0.243694, -0.607159,
		32.409958, 34.885292, 33.986053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.437332, 40.344456, 29.740244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061321, 40.316639, 29.606674>,  <34.835712, 40.299950, 29.526533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061321, 40.316639, 29.606674>,  <35.437332, 40.344456, 29.740244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061321, 40.316639, 29.606674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288515, -0.360078, 0.887188,
		-0.181937, 0.930327, 0.318420,
		-0.940031, -0.069544, -0.333925,
		34.779312, 40.295776, 29.506496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985310, 40.785034, 30.298603>,  <35.437332, 40.344456, 29.740244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985310, 40.785034, 30.298603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788986, 40.514751, 30.078594>,  <34.671192, 40.352581, 29.946589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788986, 40.514751, 30.078594>,  <34.985310, 40.785034, 30.298603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788986, 40.514751, 30.078594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355864, -0.420759, 0.834460,
		-0.795277, 0.605295, -0.033947,
		-0.490811, -0.675707, -0.550022,
		34.641743, 40.312038, 29.913588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377438, 40.668148, 30.746548>,  <34.985310, 40.785034, 30.298603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377438, 40.668148, 30.746548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378407, 40.368839, 30.481194>,  <34.378990, 40.189255, 30.321981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378407, 40.368839, 30.481194>,  <34.377438, 40.668148, 30.746548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378407, 40.368839, 30.481194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293642, -0.634677, 0.714815,
		-0.955912, 0.193064, -0.221264,
		0.002426, -0.748273, -0.663387,
		34.379135, 40.144356, 30.282177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780045, 40.239876, 30.903551>,  <34.377438, 40.668148, 30.746548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780045, 40.239876, 30.903551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065277, 40.040520, 30.706324>,  <34.236416, 39.920906, 30.587986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065277, 40.040520, 30.706324>,  <33.780045, 40.239876, 30.903551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065277, 40.040520, 30.706324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021280, -0.718366, 0.695340,
		-0.700751, -0.485346, -0.522864,
		0.713088, -0.498386, -0.493067,
		34.279202, 39.891003, 30.558403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617008, 39.578724, 31.043638>,  <33.780045, 40.239876, 30.903551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617008, 39.578724, 31.043638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966984, 39.493496, 30.869703>,  <34.176968, 39.442360, 30.765343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966984, 39.493496, 30.869703>,  <33.617008, 39.578724, 31.043638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966984, 39.493496, 30.869703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016521, -0.884334, 0.466563,
		-0.483952, -0.415398, -0.770218,
		0.874939, -0.213069, -0.434837,
		34.229465, 39.429577, 30.739252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662384, 38.941162, 30.595255>,  <33.617008, 39.578724, 31.043638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662384, 38.941162, 30.595255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031048, 39.014904, 30.731812>,  <34.252247, 39.059151, 30.813745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031048, 39.014904, 30.731812>,  <33.662384, 38.941162, 30.595255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031048, 39.014904, 30.731812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045323, -0.822720, 0.566637,
		0.385333, -0.537721, -0.749916,
		0.921664, 0.184356, 0.341392,
		34.307549, 39.070210, 30.834229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060799, 38.366268, 30.373730>,  <33.662384, 38.941162, 30.595255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060799, 38.366268, 30.373730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244102, 38.542900, 30.682276>,  <34.354084, 38.648880, 30.867403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244102, 38.542900, 30.682276>,  <34.060799, 38.366268, 30.373730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244102, 38.542900, 30.682276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034457, -0.858375, 0.511864,
		0.888152, -0.261144, -0.378140,
		0.458257, 0.441584, 0.771366,
		34.381580, 38.675377, 30.913685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340248, 37.785385, 30.751169>,  <34.060799, 38.366268, 30.373730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340248, 37.785385, 30.751169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388336, 38.089512, 31.006504>,  <34.417187, 38.271988, 31.159704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388336, 38.089512, 31.006504>,  <34.340248, 37.785385, 30.751169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388336, 38.089512, 31.006504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001511, -0.642858, 0.765984,
		0.992747, -0.093049, -0.076133,
		0.120217, 0.760313, 0.638335,
		34.424400, 38.317604, 31.198004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950169, 37.655243, 31.201612>,  <34.340248, 37.785385, 30.751169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950169, 37.655243, 31.201612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694286, 37.893505, 31.395922>,  <34.540756, 38.036465, 31.512506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694286, 37.893505, 31.395922>,  <34.950169, 37.655243, 31.201612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694286, 37.893505, 31.395922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095655, -0.688784, 0.718628,
		0.762648, 0.413242, 0.497594,
		-0.639702, 0.595657, 0.485771,
		34.502377, 38.072201, 31.541653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610676, 37.815620, 31.328129>,  <34.950169, 37.655243, 31.201612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610676, 37.815620, 31.328129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001011, 37.758514, 31.394297>,  <36.235210, 37.724251, 31.433998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001011, 37.758514, 31.394297>,  <35.610676, 37.815620, 31.328129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001011, 37.758514, 31.394297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217419, 0.558937, -0.800199,
		0.021781, 0.816828, 0.576470,
		0.975836, -0.142764, 0.165420,
		36.293762, 37.715687, 31.443922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977421, 38.520195, 31.420094>,  <35.610676, 37.815620, 31.328129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977421, 38.520195, 31.420094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248741, 38.240124, 31.330963>,  <36.411533, 38.072083, 31.277485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248741, 38.240124, 31.330963>,  <35.977421, 38.520195, 31.420094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248741, 38.240124, 31.330963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173762, 0.447506, -0.877237,
		0.713939, 0.556316, 0.425210,
		0.678305, -0.700179, -0.222826,
		36.452232, 38.030071, 31.264116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561695, 38.796032, 31.325243>,  <35.977421, 38.520195, 31.420094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561695, 38.796032, 31.325243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569668, 38.452854, 31.119898>,  <36.574451, 38.246948, 30.996691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569668, 38.452854, 31.119898>,  <36.561695, 38.796032, 31.325243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569668, 38.452854, 31.119898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152936, 0.510036, -0.846447,
		0.988035, -0.061640, 0.141376,
		0.019932, -0.857941, -0.513361,
		36.575645, 38.195473, 30.965889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283890, 38.752968, 30.929186>,  <36.561695, 38.796032, 31.325243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283890, 38.752968, 30.929186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062634, 38.481155, 30.736406>,  <36.929878, 38.318069, 30.620739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062634, 38.481155, 30.736406>,  <37.283890, 38.752968, 30.929186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062634, 38.481155, 30.736406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329385, 0.352983, -0.875733,
		0.765207, -0.643149, 0.028578,
		-0.553140, -0.679531, -0.481949,
		36.896690, 38.277298, 30.591822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735435, 38.292801, 30.388948>,  <37.283890, 38.752968, 30.929186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735435, 38.292801, 30.388948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352924, 38.287991, 30.272057>,  <37.123417, 38.285103, 30.201921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352924, 38.287991, 30.272057>,  <37.735435, 38.292801, 30.388948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352924, 38.287991, 30.272057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257892, 0.436634, -0.861883,
		0.137963, -0.899559, -0.414439,
		-0.956273, -0.012028, -0.292228,
		37.066044, 38.284382, 30.184389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795921, 38.008419, 29.753582>,  <37.735435, 38.292801, 30.388948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795921, 38.008419, 29.753582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421696, 38.145660, 29.720114>,  <37.197163, 38.228004, 29.700033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421696, 38.145660, 29.720114>,  <37.795921, 38.008419, 29.753582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421696, 38.145660, 29.720114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195429, 0.305631, -0.931878,
		-0.294162, -0.888182, -0.352990,
		-0.935562, 0.343108, -0.083671,
		37.141026, 38.248592, 29.695013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446312, 37.753654, 29.162485>,  <37.795921, 38.008419, 29.753582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446312, 37.753654, 29.162485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278362, 38.107140, 29.245188>,  <37.177593, 38.319233, 29.294809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278362, 38.107140, 29.245188>,  <37.446312, 37.753654, 29.162485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278362, 38.107140, 29.245188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227019, 0.322835, -0.918825,
		-0.878731, -0.338853, -0.336171,
		-0.419875, 0.883717, 0.206759,
		37.152401, 38.372253, 29.307215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154713, 37.869778, 28.557055>,  <37.446312, 37.753654, 29.162485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154713, 37.869778, 28.557055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107086, 38.214149, 28.754896>,  <37.078510, 38.420773, 28.873600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107086, 38.214149, 28.754896>,  <37.154713, 37.869778, 28.557055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107086, 38.214149, 28.754896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136667, 0.507615, -0.850676,
		-0.983436, -0.033687, -0.178097,
		-0.119061, 0.860925, 0.494603,
		37.071369, 38.472427, 28.903276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624630, 38.262802, 28.095688>,  <37.154713, 37.869778, 28.557055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624630, 38.262802, 28.095688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807026, 38.503441, 28.358034>,  <36.916462, 38.647823, 28.515442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807026, 38.503441, 28.358034>,  <36.624630, 38.262802, 28.095688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807026, 38.503441, 28.358034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061718, 0.713789, -0.697637,
		-0.887842, 0.358595, 0.288352,
		0.455991, 0.601594, 0.655863,
		36.943825, 38.683918, 28.554792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343021, 38.943478, 28.078798>,  <36.624630, 38.262802, 28.095688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343021, 38.943478, 28.078798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708996, 39.010769, 28.225546>,  <36.928581, 39.051144, 28.313595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708996, 39.010769, 28.225546>,  <36.343021, 38.943478, 28.078798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708996, 39.010769, 28.225546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166961, 0.669806, -0.723522,
		-0.367450, 0.723228, 0.584740,
		0.914934, 0.168229, 0.366871,
		36.983475, 39.061237, 28.335608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504742, 39.643803, 27.838169>,  <36.343021, 38.943478, 28.078798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504742, 39.643803, 27.838169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840336, 39.442207, 27.920250>,  <37.041691, 39.321251, 27.969500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840336, 39.442207, 27.920250>,  <36.504742, 39.643803, 27.838169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840336, 39.442207, 27.920250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483865, 0.518405, -0.705075,
		0.248969, 0.690836, 0.678793,
		0.838981, -0.503986, 0.205204,
		37.092030, 39.291012, 27.981812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082367, 40.135426, 27.919353>,  <36.504742, 39.643803, 27.838169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082367, 40.135426, 27.919353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260967, 39.781921, 27.863354>,  <37.368130, 39.569820, 27.829754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260967, 39.781921, 27.863354>,  <37.082367, 40.135426, 27.919353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260967, 39.781921, 27.863354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613473, 0.416260, -0.671103,
		0.651371, 0.213764, 0.728025,
		0.446505, -0.883761, -0.140001,
		37.394920, 39.516792, 27.821354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733593, 40.211227, 28.005045>,  <37.082367, 40.135426, 27.919353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733593, 40.211227, 28.005045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705288, 39.890747, 27.767366>,  <37.688305, 39.698460, 27.624760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705288, 39.890747, 27.767366>,  <37.733593, 40.211227, 28.005045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705288, 39.890747, 27.767366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510437, 0.482704, -0.711653,
		0.856999, -0.353658, 0.374806,
		-0.070761, -0.801201, -0.594197,
		37.684059, 39.650387, 27.589108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404915, 40.242992, 27.633457>,  <37.733593, 40.211227, 28.005045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404915, 40.242992, 27.633457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148006, 40.024914, 27.417957>,  <37.993862, 39.894066, 27.288656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148006, 40.024914, 27.417957>,  <38.404915, 40.242992, 27.633457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148006, 40.024914, 27.417957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202054, 0.557598, -0.805146,
		0.739368, -0.625976, -0.247969,
		-0.642268, -0.545196, -0.538751,
		37.955326, 39.861355, 27.256332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.010159, 35.766953, 24.416550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.106121, 36.100243, 24.615816>,  <32.163700, 36.300217, 24.735376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.106121, 36.100243, 24.615816>,  <32.010159, 35.766953, 24.416550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106121, 36.100243, 24.615816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367302, -0.552915, 0.747913,
		0.898628, 0.003545, -0.438697,
		0.239911, 0.833230, 0.498167,
		32.178093, 36.350212, 24.765266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634071, 35.589516, 24.857718>,  <32.010159, 35.766953, 24.416550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634071, 35.589516, 24.857718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.451786, 35.901249, 25.029745>,  <32.342415, 36.088291, 25.132961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.451786, 35.901249, 25.029745>,  <32.634071, 35.589516, 24.857718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451786, 35.901249, 25.029745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095034, -0.437797, 0.894037,
		0.885038, 0.448297, 0.125447,
		-0.455715, 0.779335, 0.430070,
		32.315071, 36.135048, 25.158766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182465, 35.917679, 25.305721>,  <32.634071, 35.589516, 24.857718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182465, 35.917679, 25.305721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.830879, 36.061432, 25.431116>,  <32.619930, 36.147686, 25.506353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.830879, 36.061432, 25.431116>,  <33.182465, 35.917679, 25.305721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830879, 36.061432, 25.431116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211472, -0.295465, 0.931655,
		0.427447, 0.885180, 0.183702,
		-0.878959, 0.359385, 0.313487,
		32.567192, 36.169247, 25.525162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384998, 36.278053, 25.941111>,  <33.182465, 35.917679, 25.305721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384998, 36.278053, 25.941111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.990311, 36.225517, 25.979330>,  <32.753498, 36.193996, 26.002262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.990311, 36.225517, 25.979330>,  <33.384998, 36.278053, 25.941111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990311, 36.225517, 25.979330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134724, -0.333263, 0.933159,
		-0.090720, 0.933641, 0.346533,
		-0.986721, -0.131343, 0.095550,
		32.694294, 36.186115, 26.007996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163429, 36.610813, 26.619213>,  <33.384998, 36.278053, 25.941111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163429, 36.610813, 26.619213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.870964, 36.353485, 26.528404>,  <32.695484, 36.199089, 26.473919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.870964, 36.353485, 26.528404>,  <33.163429, 36.610813, 26.619213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870964, 36.353485, 26.528404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007499, -0.325176, 0.945624,
		-0.682163, 0.693106, 0.232931,
		-0.731161, -0.643323, -0.227021,
		32.651615, 36.160488, 26.460299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841076, 36.623741, 27.170633>,  <33.163429, 36.610813, 26.619213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841076, 36.623741, 27.170633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.730621, 36.284069, 26.990574>,  <32.664349, 36.080265, 26.882538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.730621, 36.284069, 26.990574>,  <32.841076, 36.623741, 27.170633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730621, 36.284069, 26.990574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060044, -0.482686, 0.873733,
		-0.959240, 0.214243, 0.184277,
		-0.276139, -0.849184, -0.450148,
		32.647781, 36.029312, 26.855530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290630, 36.350376, 27.581957>,  <32.841076, 36.623741, 27.170633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290630, 36.350376, 27.581957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.433228, 36.037754, 27.377178>,  <32.518787, 35.850182, 27.254311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.433228, 36.037754, 27.377178>,  <32.290630, 36.350376, 27.581957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433228, 36.037754, 27.377178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081294, -0.519921, 0.850338,
		-0.930754, -0.344759, -0.121814,
		0.356495, -0.781552, -0.511945,
		32.540176, 35.803288, 27.223595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867546, 35.713081, 27.823524>,  <32.290630, 36.350376, 27.581957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867546, 35.713081, 27.823524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.187187, 35.532299, 27.664946>,  <32.378971, 35.423828, 27.569798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.187187, 35.532299, 27.664946>,  <31.867546, 35.713081, 27.823524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187187, 35.532299, 27.664946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083711, -0.736659, 0.671064,
		-0.595337, -0.503062, -0.626500,
		0.799104, -0.451954, -0.396448,
		32.426918, 35.396713, 27.546011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629766, 35.042503, 27.708025>,  <31.867546, 35.713081, 27.823524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629766, 35.042503, 27.708025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.027103, 35.001808, 27.686424>,  <32.265507, 34.977390, 27.673464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.027103, 35.001808, 27.686424>,  <31.629766, 35.042503, 27.708025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027103, 35.001808, 27.686424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036560, -0.723093, 0.689783,
		-0.109226, -0.683217, -0.722000,
		0.993344, -0.101738, -0.054002,
		32.325108, 34.971287, 27.670223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856030, 34.323879, 27.607597>,  <31.629766, 35.042503, 27.708025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856030, 34.323879, 27.607597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.166698, 34.507919, 27.779686>,  <32.353100, 34.618343, 27.882938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.166698, 34.507919, 27.779686>,  <31.856030, 34.323879, 27.607597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166698, 34.507919, 27.779686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046014, -0.722608, 0.689725,
		0.628223, -0.515894, -0.582400,
		0.776671, 0.460099, 0.430220,
		32.399700, 34.645950, 27.908752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402260, 33.791595, 27.792959>,  <31.856030, 34.323879, 27.607597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402260, 33.791595, 27.792959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.528046, 34.104336, 28.008299>,  <32.603516, 34.291981, 28.137503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.528046, 34.104336, 28.008299>,  <32.402260, 33.791595, 27.792959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528046, 34.104336, 28.008299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042213, -0.555042, 0.830750,
		0.948331, -0.283965, -0.141535,
		0.314463, 0.781851, 0.538351,
		32.622383, 34.338890, 28.169804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037621, 33.629101, 28.173346>,  <32.402260, 33.791595, 27.792959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037621, 33.629101, 28.173346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.886078, 33.929729, 28.389349>,  <32.795151, 34.110107, 28.518951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.886078, 33.929729, 28.389349>,  <33.037621, 33.629101, 28.173346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886078, 33.929729, 28.389349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235416, -0.486046, 0.841629,
		0.895012, 0.445983, 0.007210,
		-0.378857, 0.751571, 0.540008,
		32.772419, 34.155201, 28.551352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571953, 33.689053, 28.747671>,  <33.037621, 33.629101, 28.173346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571953, 33.689053, 28.747671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.241386, 33.878937, 28.868788>,  <33.043045, 33.992867, 28.941458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.241386, 33.878937, 28.868788>,  <33.571953, 33.689053, 28.747671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241386, 33.878937, 28.868788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095128, -0.412320, 0.906059,
		0.554961, 0.777589, 0.295591,
		-0.826419, 0.474708, 0.302792,
		32.993462, 34.021351, 28.959625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749352, 33.951908, 29.398296>,  <33.571953, 33.689053, 28.747671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749352, 33.951908, 29.398296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.349373, 33.954399, 29.401567>,  <33.109386, 33.955894, 29.403530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.349373, 33.954399, 29.401567>,  <33.749352, 33.951908, 29.398296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349373, 33.954399, 29.401567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005626, -0.334197, 0.942486,
		0.008605, 0.942483, 0.334145,
		-0.999947, 0.006230, 0.008179,
		33.049389, 33.956268, 29.404020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252918, 34.451550, 29.742481>,  <33.749352, 33.951908, 29.398296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252918, 34.451550, 29.742481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.614643, 34.282413, 29.719059>,  <34.831676, 34.180931, 29.705006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.614643, 34.282413, 29.719059>,  <34.252918, 34.451550, 29.742481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614643, 34.282413, 29.719059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077771, 0.298076, -0.951369,
		0.419728, 0.855780, 0.302438,
		0.904312, -0.422837, -0.058556,
		34.885937, 34.155563, 29.701492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742474, 34.987770, 29.689194>,  <34.252918, 34.451550, 29.742481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742474, 34.987770, 29.689194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.899662, 34.660347, 29.521603>,  <34.993977, 34.463894, 29.421047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.899662, 34.660347, 29.521603>,  <34.742474, 34.987770, 29.689194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899662, 34.660347, 29.521603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090110, 0.487720, -0.868337,
		0.915125, 0.303476, 0.265419,
		0.392970, -0.818554, -0.418979,
		35.017551, 34.414780, 29.395908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319466, 35.248329, 29.258240>,  <34.742474, 34.987770, 29.689194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319466, 35.248329, 29.258240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.202908, 34.883347, 29.143339>,  <35.132973, 34.664356, 29.074398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.202908, 34.883347, 29.143339>,  <35.319466, 35.248329, 29.258240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202908, 34.883347, 29.143339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150159, 0.252931, -0.955761,
		0.944744, -0.321637, 0.063310,
		-0.291395, -0.912456, -0.287251,
		35.115490, 34.609612, 29.057163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913498, 35.018806, 28.777802>,  <35.319466, 35.248329, 29.258240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913498, 35.018806, 28.777802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.570618, 34.828617, 28.698668>,  <35.364891, 34.714504, 28.651188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.570618, 34.828617, 28.698668>,  <35.913498, 35.018806, 28.777802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570618, 34.828617, 28.698668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098974, 0.224890, -0.969345,
		0.505386, -0.850501, -0.145716,
		-0.857198, -0.475471, -0.197834,
		35.313457, 34.685974, 28.639317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047161, 34.607368, 28.249344>,  <35.913498, 35.018806, 28.777802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047161, 34.607368, 28.249344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.647991, 34.618233, 28.226021>,  <35.408489, 34.624752, 28.212027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.647991, 34.618233, 28.226021>,  <36.047161, 34.607368, 28.249344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647991, 34.618233, 28.226021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062073, 0.168897, -0.983677,
		-0.016874, -0.985259, -0.170234,
		-0.997929, 0.027165, -0.058308,
		35.348614, 34.626381, 28.208529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045097, 34.241104, 27.720715>,  <36.047161, 34.607368, 28.249344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045097, 34.241104, 27.720715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.708851, 34.457329, 27.734301>,  <35.507103, 34.587063, 27.742453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.708851, 34.457329, 27.734301>,  <36.045097, 34.241104, 27.720715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708851, 34.457329, 27.734301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191378, 0.355101, -0.915029,
		-0.506689, -0.762691, -0.401956,
		-0.840619, 0.540561, 0.033964,
		35.456665, 34.619495, 27.744490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940426, 34.220734, 27.064589>,  <36.045097, 34.241104, 27.720715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940426, 34.220734, 27.064589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.657551, 34.480915, 27.175438>,  <35.487827, 34.637024, 27.241947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.657551, 34.480915, 27.175438>,  <35.940426, 34.220734, 27.064589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657551, 34.480915, 27.175438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125087, 0.500879, -0.856430,
		-0.695874, -0.570991, -0.435578,
		-0.707186, 0.650453, 0.277126,
		35.445396, 34.676052, 27.258575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444435, 34.261417, 26.527575>,  <35.940426, 34.220734, 27.064589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444435, 34.261417, 26.527575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.420795, 34.601212, 26.737289>,  <35.406612, 34.805088, 26.863117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.420795, 34.601212, 26.737289>,  <35.444435, 34.261417, 26.527575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420795, 34.601212, 26.737289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144155, 0.512436, -0.846539,
		-0.987788, -0.125611, 0.092172,
		-0.059102, 0.849489, 0.524286,
		35.403065, 34.856060, 26.894575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852581, 34.643040, 26.299931>,  <35.444435, 34.261417, 26.527575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852581, 34.643040, 26.299931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.075546, 34.917953, 26.486235>,  <35.209324, 35.082901, 26.598017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.075546, 34.917953, 26.486235>,  <34.852581, 34.643040, 26.299931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075546, 34.917953, 26.486235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175946, 0.646044, -0.742745,
		-0.811379, 0.332065, 0.481036,
		0.557411, 0.687285, 0.465761,
		35.242771, 35.124138, 26.625963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395870, 35.348949, 26.384428>,  <34.852581, 34.643040, 26.299931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395870, 35.348949, 26.384428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.786777, 35.427250, 26.416979>,  <35.021324, 35.474232, 26.436510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.786777, 35.427250, 26.416979>,  <34.395870, 35.348949, 26.384428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786777, 35.427250, 26.416979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061420, 0.628858, -0.775090,
		-0.202899, 0.752475, 0.626588,
		0.977271, 0.195751, 0.081378,
		35.079960, 35.485973, 26.441393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398392, 36.005493, 26.349630>,  <34.395870, 35.348949, 26.384428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398392, 36.005493, 26.349630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.780682, 35.929783, 26.259510>,  <35.010056, 35.884357, 26.205439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.780682, 35.929783, 26.259510>,  <34.398392, 36.005493, 26.349630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780682, 35.929783, 26.259510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063866, 0.613983, -0.786732,
		0.287241, 0.766289, 0.574711,
		0.955727, -0.189278, -0.225301,
		35.067398, 35.873001, 26.191919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622475, 36.624809, 26.174351>,  <34.398392, 36.005493, 26.349630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622475, 36.624809, 26.174351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.885769, 36.375072, 26.006104>,  <35.043747, 36.225231, 25.905155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.885769, 36.375072, 26.006104>,  <34.622475, 36.624809, 26.174351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885769, 36.375072, 26.006104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121507, 0.639517, -0.759114,
		0.742942, 0.448567, 0.496815,
		0.658235, -0.624344, -0.420619,
		35.083241, 36.187771, 25.879917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214016, 37.019131, 25.917032>,  <34.622475, 36.624809, 26.174351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214016, 37.019131, 25.917032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.178661, 36.690556, 25.691671>,  <35.157448, 36.493408, 25.556454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.178661, 36.690556, 25.691671>,  <35.214016, 37.019131, 25.917032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178661, 36.690556, 25.691671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061029, 0.560089, -0.826181,
		0.994215, -0.107408, 0.000627,
		-0.088387, -0.821440, -0.563404,
		35.152145, 36.444122, 25.522650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796944, 36.813984, 25.491028>,  <35.214016, 37.019131, 25.917032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796944, 36.813984, 25.491028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.500771, 36.638523, 25.287325>,  <35.323067, 36.533245, 25.165104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.500771, 36.638523, 25.287325>,  <35.796944, 36.813984, 25.491028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500771, 36.638523, 25.287325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255619, 0.516964, -0.816950,
		0.621626, -0.735071, -0.270648,
		-0.740432, -0.438655, -0.509256,
		35.278641, 36.506927, 25.134548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399456, 36.500980, 25.418804>,  <35.796944, 36.813984, 25.491028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399456, 36.500980, 25.418804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.736904, 36.714905, 25.399670>,  <36.939373, 36.843258, 25.388189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.736904, 36.714905, 25.399670>,  <36.399456, 36.500980, 25.418804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736904, 36.714905, 25.399670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372151, -0.518151, 0.770080,
		0.387061, -0.667455, -0.636151,
		0.843616, 0.534812, -0.047838,
		36.989990, 36.875347, 25.385319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923561, 35.974361, 25.369215>,  <36.399456, 36.500980, 25.418804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923561, 35.974361, 25.369215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.129677, 36.284595, 25.515060>,  <37.253345, 36.470737, 25.602568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.129677, 36.284595, 25.515060>,  <36.923561, 35.974361, 25.369215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129677, 36.284595, 25.515060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411101, -0.596997, 0.688905,
		0.751977, -0.205094, -0.626472,
		0.515292, 0.775584, 0.364614,
		37.284264, 36.517269, 25.624445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518303, 35.658726, 25.475700>,  <36.923561, 35.974361, 25.369215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518303, 35.658726, 25.475700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.534988, 35.997871, 25.687126>,  <37.545002, 36.201359, 25.813982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.534988, 35.997871, 25.687126>,  <37.518303, 35.658726, 25.475700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534988, 35.997871, 25.687126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725404, -0.389491, 0.567526,
		0.687058, 0.359747, -0.631295,
		0.041718, 0.847868, 0.528564,
		37.547504, 36.252232, 25.845695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195499, 35.833820, 25.628971>,  <37.518303, 35.658726, 25.475700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195499, 35.833820, 25.628971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.983089, 36.033524, 25.902832>,  <37.855644, 36.153347, 26.067148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.983089, 36.033524, 25.902832>,  <38.195499, 35.833820, 25.628971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983089, 36.033524, 25.902832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587390, -0.365457, 0.722090,
		0.610722, 0.785608, -0.099191,
		-0.531030, 0.499260, 0.684651,
		37.823780, 36.183300, 26.108227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806755, 36.112961, 26.088564>,  <38.195499, 35.833820, 25.628971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806755, 36.112961, 26.088564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493988, 36.160358, 26.333372>,  <38.306328, 36.188797, 26.480257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493988, 36.160358, 26.333372>,  <38.806755, 36.112961, 26.088564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493988, 36.160358, 26.333372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546896, -0.340807, 0.764693,
		0.299190, 0.932636, 0.201679,
		-0.781915, 0.118491, 0.612021,
		38.259415, 36.195908, 26.516979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054775, 36.476917, 26.661772>,  <38.806755, 36.112961, 26.088564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054775, 36.476917, 26.661772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.733028, 36.296726, 26.816723>,  <38.539982, 36.188610, 26.909693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.733028, 36.296726, 26.816723>,  <39.054775, 36.476917, 26.661772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733028, 36.296726, 26.816723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580076, -0.454475, 0.675991,
		-0.128466, 0.768454, 0.626877,
		-0.804368, -0.450478, 0.387377,
		38.491718, 36.161583, 26.932936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343979, 36.304092, 27.340597>,  <39.054775, 36.476917, 26.661772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343979, 36.304092, 27.340597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.998779, 36.107834, 27.292423>,  <38.791660, 35.990078, 27.263519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.998779, 36.107834, 27.292423>,  <39.343979, 36.304092, 27.340597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998779, 36.107834, 27.292423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267200, -0.645586, 0.715418,
		-0.428764, 0.585225, 0.688239,
		-0.862998, -0.490643, -0.120432,
		38.739880, 35.960640, 27.256294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910557, 36.313255, 27.976252>,  <39.343979, 36.304092, 27.340597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910557, 36.313255, 27.976252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.805763, 35.998672, 27.752518>,  <38.742889, 35.809925, 27.618277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.805763, 35.998672, 27.752518>,  <38.910557, 36.313255, 27.976252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805763, 35.998672, 27.752518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186660, -0.609928, 0.770160,
		-0.946849, 0.097361, 0.306589,
		-0.261981, -0.786453, -0.559336,
		38.727169, 35.762737, 27.584717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427395, 35.919456, 28.368128>,  <38.910557, 36.313255, 27.976252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427395, 35.919456, 28.368128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.598675, 35.671238, 28.105354>,  <38.701443, 35.522305, 27.947691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.598675, 35.671238, 28.105354>,  <38.427395, 35.919456, 28.368128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598675, 35.671238, 28.105354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355945, -0.552365, 0.753787,
		-0.830630, -0.556605, -0.015642,
		0.428202, -0.620551, -0.656932,
		38.727135, 35.485073, 27.908276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054150, 35.431206, 28.402544>,  <38.427395, 35.919456, 28.368128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054150, 35.431206, 28.402544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.410194, 35.302368, 28.273569>,  <38.623821, 35.225067, 28.196184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.410194, 35.302368, 28.273569>,  <38.054150, 35.431206, 28.402544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410194, 35.302368, 28.273569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073633, -0.596557, 0.799186,
		-0.449761, -0.735104, -0.507284,
		0.890109, -0.322089, -0.322436,
		38.677227, 35.205742, 28.176838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040188, 34.698872, 28.521805>,  <38.054150, 35.431206, 28.402544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040188, 34.698872, 28.521805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.426762, 34.788979, 28.472406>,  <38.658707, 34.843044, 28.442766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.426762, 34.788979, 28.472406>,  <38.040188, 34.698872, 28.521805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426762, 34.788979, 28.472406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213793, -0.438690, 0.872836,
		0.142448, -0.869945, -0.472128,
		0.966438, 0.225271, -0.123497,
		38.716694, 34.856560, 28.435358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389839, 34.080982, 28.647289>,  <38.040188, 34.698872, 28.521805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389839, 34.080982, 28.647289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.642586, 34.387741, 28.692219>,  <38.794231, 34.571796, 28.719175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.642586, 34.387741, 28.692219>,  <38.389839, 34.080982, 28.647289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642586, 34.387741, 28.692219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310201, -0.383017, 0.870100,
		0.710299, -0.514941, -0.479907,
		0.631863, 0.766899, 0.112322,
		38.832146, 34.617809, 28.725916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926067, 33.721928, 28.867870>,  <38.389839, 34.080982, 28.647289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926067, 33.721928, 28.867870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.014767, 34.092102, 28.990767>,  <39.067986, 34.314205, 29.064505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.014767, 34.092102, 28.990767>,  <38.926067, 33.721928, 28.867870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014767, 34.092102, 28.990767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452189, -0.376750, 0.808446,
		0.863918, -0.040338, -0.502014,
		0.221745, 0.925436, 0.307241,
		39.081291, 34.369732, 29.082939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601074, 33.736328, 29.182478>,  <38.926067, 33.721928, 28.867870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601074, 33.736328, 29.182478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.474419, 34.085842, 29.330120>,  <39.398426, 34.295551, 29.418705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.474419, 34.085842, 29.330120>,  <39.601074, 33.736328, 29.182478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474419, 34.085842, 29.330120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356348, -0.251043, 0.899996,
		0.879064, 0.416506, -0.231881,
		-0.316642, 0.873785, 0.369104,
		39.379425, 34.347977, 29.440851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.761292, 40.074665, 26.870058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.376247, 39.987930, 26.805119>,  <38.145222, 39.935890, 26.766155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.376247, 39.987930, 26.805119>,  <38.761292, 40.074665, 26.870058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376247, 39.987930, 26.805119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071226, 0.375624, -0.924031,
		0.261346, -0.901048, -0.346136,
		-0.962614, -0.216838, -0.162346,
		38.087463, 39.922878, 26.756414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716114, 39.819645, 26.285294>,  <38.761292, 40.074665, 26.870058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716114, 39.819645, 26.285294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.341728, 39.954872, 26.324642>,  <38.117096, 40.036011, 26.348251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.341728, 39.954872, 26.324642>,  <38.716114, 39.819645, 26.285294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341728, 39.954872, 26.324642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059971, 0.428387, -0.901603,
		-0.346948, -0.837969, -0.421230,
		-0.935965, 0.338071, 0.098374,
		38.060940, 40.056293, 26.354155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472721, 39.828259, 25.588980>,  <38.716114, 39.819645, 26.285294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472721, 39.828259, 25.588980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.212456, 40.049107, 25.797518>,  <38.056297, 40.181614, 25.922640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.212456, 40.049107, 25.797518>,  <38.472721, 39.828259, 25.588980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212456, 40.049107, 25.797518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265162, 0.478141, -0.837299,
		-0.711562, -0.683044, -0.164711,
		-0.650667, 0.552116, 0.521345,
		38.017254, 40.214741, 25.953920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657314, 39.865940, 25.202335>,  <38.472721, 39.828259, 25.588980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657314, 39.865940, 25.202335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.755039, 40.191277, 25.413538>,  <37.813675, 40.386478, 25.540258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.755039, 40.191277, 25.413538>,  <37.657314, 39.865940, 25.202335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755039, 40.191277, 25.413538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324568, 0.581687, -0.745852,
		-0.913766, 0.010847, 0.406097,
		0.244312, 0.813340, 0.528005,
		37.828331, 40.435280, 25.571939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175983, 40.200668, 24.924448>,  <37.657314, 39.865940, 25.202335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175983, 40.200668, 24.924448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.382820, 40.475258, 25.128944>,  <37.506924, 40.640011, 25.251642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.382820, 40.475258, 25.128944>,  <37.175983, 40.200668, 24.924448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382820, 40.475258, 25.128944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315114, 0.708024, -0.631985,
		-0.795810, 0.165699, 0.582434,
		0.517096, 0.686474, 0.511239,
		37.537949, 40.681202, 25.282316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764709, 40.760582, 25.145184>,  <37.175983, 40.200668, 24.924448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764709, 40.760582, 25.145184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.146698, 40.860676, 25.081419>,  <37.375893, 40.920731, 25.043161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.146698, 40.860676, 25.081419>,  <36.764709, 40.760582, 25.145184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146698, 40.860676, 25.081419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271654, 0.521407, -0.808912,
		-0.119300, 0.815793, 0.565906,
		0.954972, 0.250233, -0.159409,
		37.433189, 40.935745, 25.033596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728935, 41.389576, 24.914320>,  <36.764709, 40.760582, 25.145184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728935, 41.389576, 24.914320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.114223, 41.336235, 24.821001>,  <37.345394, 41.304230, 24.765009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.114223, 41.336235, 24.821001>,  <36.728935, 41.389576, 24.914320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114223, 41.336235, 24.821001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086038, 0.669439, -0.737868,
		0.254574, 0.730801, 0.633342,
		0.963218, -0.133350, -0.233298,
		37.403191, 41.296230, 24.751011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942772, 41.985096, 24.638632>,  <36.728935, 41.389576, 24.914320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942772, 41.985096, 24.638632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.246162, 41.756908, 24.512594>,  <37.428196, 41.619995, 24.436972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.246162, 41.756908, 24.512594>,  <36.942772, 41.985096, 24.638632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246162, 41.756908, 24.512594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049320, 0.532353, -0.845084,
		0.649835, 0.625434, 0.431911,
		0.758474, -0.570467, -0.315095,
		37.473705, 41.585770, 24.418066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479343, 42.417053, 24.544552>,  <36.942772, 41.985096, 24.638632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479343, 42.417053, 24.544552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.530937, 42.091419, 24.318056>,  <37.561893, 41.896038, 24.182158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.530937, 42.091419, 24.318056>,  <37.479343, 42.417053, 24.544552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530937, 42.091419, 24.318056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195454, 0.538938, -0.819355,
		0.972193, 0.216361, -0.089599,
		0.128989, -0.814084, -0.566241,
		37.569633, 41.847195, 24.148184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832958, 42.617168, 23.877888>,  <37.479343, 42.417053, 24.544552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832958, 42.617168, 23.877888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.651310, 42.278519, 23.766888>,  <37.542320, 42.075329, 23.700287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.651310, 42.278519, 23.766888>,  <37.832958, 42.617168, 23.877888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651310, 42.278519, 23.766888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129820, 0.371024, -0.919504,
		0.881433, -0.381537, -0.278397,
		-0.454117, -0.846623, -0.277502,
		37.515076, 42.024532, 23.683638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105228, 42.522945, 23.222225>,  <37.832958, 42.617168, 23.877888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105228, 42.522945, 23.222225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792480, 42.274929, 23.248228>,  <37.604832, 42.126122, 23.263830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792480, 42.274929, 23.248228>,  <38.105228, 42.522945, 23.222225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792480, 42.274929, 23.248228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221971, 0.179426, -0.958402,
		0.582583, -0.763779, -0.277919,
		-0.781874, -0.620039, 0.065006,
		37.557919, 42.088917, 23.267731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187866, 42.102497, 22.682341>,  <38.105228, 42.522945, 23.222225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187866, 42.102497, 22.682341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.805069, 42.095139, 22.798157>,  <37.575390, 42.090721, 22.867645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.805069, 42.095139, 22.798157>,  <38.187866, 42.102497, 22.682341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805069, 42.095139, 22.798157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278722, 0.335329, -0.899927,
		-0.080532, -0.941921, -0.326035,
		-0.956989, -0.018400, 0.289539,
		37.517971, 42.089619, 22.885019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819538, 41.867687, 22.046465>,  <38.187866, 42.102497, 22.682341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819538, 41.867687, 22.046465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.532028, 42.038223, 22.266138>,  <37.359524, 42.140545, 22.397942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.532028, 42.038223, 22.266138>,  <37.819538, 41.867687, 22.046465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532028, 42.038223, 22.266138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489608, 0.250426, -0.835207,
		-0.493609, -0.869209, 0.028738,
		-0.718772, 0.426336, 0.549184,
		37.316395, 42.166122, 22.430893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492344, 41.684097, 21.318592>,  <37.819538, 41.867687, 22.046465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492344, 41.684097, 21.318592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.140106, 41.512104, 21.238934>,  <36.928764, 41.408909, 21.191139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.140106, 41.512104, 21.238934>,  <37.492344, 41.684097, 21.318592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140106, 41.512104, 21.238934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136039, -0.631964, 0.762964,
		-0.453919, 0.644772, 0.615001,
		-0.880597, -0.429988, -0.199146,
		36.875927, 41.383106, 21.179190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070137, 41.554394, 21.951550>,  <37.492344, 41.684097, 21.318592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070137, 41.554394, 21.951550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.924942, 41.289864, 21.688982>,  <36.837826, 41.131145, 21.531441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.924942, 41.289864, 21.688982>,  <37.070137, 41.554394, 21.951550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924942, 41.289864, 21.688982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033587, -0.694724, 0.718492,
		-0.931189, 0.282850, 0.229963,
		-0.362986, -0.661328, -0.656420,
		36.816048, 41.091465, 21.492056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603008, 41.043137, 22.341686>,  <37.070137, 41.554394, 21.951550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603008, 41.043137, 22.341686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.692043, 40.838387, 22.009798>,  <36.745464, 40.715538, 21.810665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.692043, 40.838387, 22.009798>,  <36.603008, 41.043137, 22.341686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692043, 40.838387, 22.009798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071899, -0.840136, 0.537589,
		-0.972258, -0.179317, -0.150200,
		0.222587, -0.511876, -0.829722,
		36.758820, 40.684822, 21.760881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061710, 40.523499, 22.196840>,  <36.603008, 41.043137, 22.341686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061710, 40.523499, 22.196840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.377651, 40.376694, 22.000292>,  <36.567215, 40.288612, 21.882362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.377651, 40.376694, 22.000292>,  <36.061710, 40.523499, 22.196840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377651, 40.376694, 22.000292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073244, -0.851900, 0.518558,
		-0.608914, -0.373592, -0.699752,
		0.789848, -0.367009, -0.491370,
		36.614605, 40.266590, 21.852880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866940, 39.886784, 22.064629>,  <36.061710, 40.523499, 22.196840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866940, 39.886784, 22.064629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.263611, 39.906403, 22.017029>,  <36.501614, 39.918175, 21.988470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.263611, 39.906403, 22.017029>,  <35.866940, 39.886784, 22.064629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263611, 39.906403, 22.017029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105243, -0.841255, 0.530296,
		-0.074096, -0.538409, -0.839420,
		0.991682, 0.049050, -0.118997,
		36.561115, 39.921116, 21.981329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059986, 39.258347, 21.955933>,  <35.866940, 39.886784, 22.064629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059986, 39.258347, 21.955933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.396534, 39.410000, 22.109997>,  <36.598465, 39.500992, 22.202435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.396534, 39.410000, 22.109997>,  <36.059986, 39.258347, 21.955933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396534, 39.410000, 22.109997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018539, -0.732487, 0.680529,
		0.540138, -0.565438, -0.623323,
		0.841372, 0.379136, 0.385161,
		36.648945, 39.523739, 22.225546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537487, 38.725739, 21.897661>,  <36.059986, 39.258347, 21.955933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537487, 38.725739, 21.897661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.677341, 38.985527, 22.167755>,  <36.761253, 39.141399, 22.329811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.677341, 38.985527, 22.167755>,  <36.537487, 38.725739, 21.897661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677341, 38.985527, 22.167755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257678, -0.759587, 0.597185,
		0.900754, -0.034804, -0.432932,
		0.349634, 0.649474, 0.675233,
		36.782230, 39.180370, 22.370325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132557, 38.414265, 22.136150>,  <36.537487, 38.725739, 21.897661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132557, 38.414265, 22.136150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.015656, 38.663006, 22.426773>,  <36.945515, 38.812252, 22.601147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.015656, 38.663006, 22.426773>,  <37.132557, 38.414265, 22.136150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015656, 38.663006, 22.426773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285441, -0.668374, 0.686877,
		0.912748, 0.408133, 0.017833,
		-0.292256, 0.621855, 0.726555,
		36.927979, 38.849564, 22.644739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496170, 38.192936, 22.661816>,  <37.132557, 38.414265, 22.136150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496170, 38.192936, 22.661816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.270218, 38.441982, 22.878431>,  <37.134647, 38.591408, 23.008400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.270218, 38.441982, 22.878431>,  <37.496170, 38.192936, 22.661816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270218, 38.441982, 22.878431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222913, -0.516734, 0.826617,
		0.794492, 0.587657, 0.153106,
		-0.564883, 0.622611, 0.541538,
		37.100754, 38.628765, 23.040892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909676, 38.480534, 23.284487>,  <37.496170, 38.192936, 22.661816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909676, 38.480534, 23.284487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.523670, 38.509991, 23.385151>,  <37.292068, 38.527664, 23.445549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.523670, 38.509991, 23.385151>,  <37.909676, 38.480534, 23.284487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523670, 38.509991, 23.385151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161701, -0.588408, 0.792230,
		0.206417, 0.805204, 0.555913,
		-0.965010, 0.073638, 0.251660,
		37.234169, 38.532082, 23.460649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906937, 38.680958, 23.942532>,  <37.909676, 38.480534, 23.284487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906937, 38.680958, 23.942532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548836, 38.514706, 23.878307>,  <37.333977, 38.414955, 23.839773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548836, 38.514706, 23.878307>,  <37.906937, 38.680958, 23.942532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548836, 38.514706, 23.878307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104157, -0.545584, 0.831558,
		-0.433218, 0.727729, 0.531725,
		-0.895251, -0.415629, -0.160559,
		37.280262, 38.390018, 23.830139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579918, 38.698654, 24.595148>,  <37.906937, 38.680958, 23.942532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579918, 38.698654, 24.595148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.353413, 38.430611, 24.403185>,  <37.217510, 38.269787, 24.288008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.353413, 38.430611, 24.403185>,  <37.579918, 38.698654, 24.595148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353413, 38.430611, 24.403185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058456, -0.548134, 0.834346,
		-0.822152, 0.500509, 0.271214,
		-0.566259, -0.670105, -0.479907,
		37.183537, 38.229580, 24.259212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893211, 38.583462, 24.979044>,  <37.579918, 38.698654, 24.595148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893211, 38.583462, 24.979044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.951492, 38.256813, 24.755653>,  <36.986462, 38.060822, 24.621618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.951492, 38.256813, 24.755653>,  <36.893211, 38.583462, 24.979044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951492, 38.256813, 24.755653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112768, -0.574530, 0.810678,
		-0.982880, -0.055142, -0.175801,
		0.145706, -0.816624, -0.558476,
		36.995205, 38.011826, 24.588110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426685, 38.078354, 25.221140>,  <36.893211, 38.583462, 24.979044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426685, 38.078354, 25.221140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.700001, 37.861988, 25.024967>,  <36.863991, 37.732166, 24.907265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.700001, 37.861988, 25.024967>,  <36.426685, 38.078354, 25.221140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700001, 37.861988, 25.024967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107800, -0.739065, 0.664953,
		-0.722147, -0.401486, -0.563306,
		0.683289, -0.540918, -0.490433,
		36.904987, 37.699715, 24.877838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151306, 37.458435, 25.275253>,  <36.426685, 38.078354, 25.221140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151306, 37.458435, 25.275253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.538029, 37.382305, 25.207052>,  <36.770061, 37.336628, 25.166132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.538029, 37.382305, 25.207052>,  <36.151306, 37.458435, 25.275253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538029, 37.382305, 25.207052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059562, -0.481022, 0.874683,
		-0.248488, -0.855801, -0.453717,
		0.966802, -0.190324, -0.170501,
		36.828068, 37.325207, 25.155901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012836, 36.947506, 24.685246>,  <36.151306, 37.458435, 25.275253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012836, 36.947506, 24.685246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.641541, 36.798748, 24.681963>,  <35.418762, 36.709492, 24.679993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.641541, 36.798748, 24.681963>,  <36.012836, 36.947506, 24.685246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641541, 36.798748, 24.681963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156502, 0.410452, -0.898352,
		0.337460, -0.832601, -0.439200,
		-0.928239, -0.371893, -0.008207,
		35.363068, 36.687180, 24.679501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890137, 36.495720, 24.101252>,  <36.012836, 36.947506, 24.685246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890137, 36.495720, 24.101252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.540318, 36.648026, 24.221380>,  <35.330425, 36.739410, 24.293457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.540318, 36.648026, 24.221380>,  <35.890137, 36.495720, 24.101252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540318, 36.648026, 24.221380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143016, 0.389238, -0.909967,
		-0.463380, -0.838756, -0.285950,
		-0.874543, 0.380765, 0.300320,
		35.277954, 36.762257, 24.311476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492802, 36.456806, 23.519674>,  <35.890137, 36.495720, 24.101252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492802, 36.456806, 23.519674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.259861, 36.692661, 23.743530>,  <35.120098, 36.834175, 23.877844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.259861, 36.692661, 23.743530>,  <35.492802, 36.456806, 23.519674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259861, 36.692661, 23.743530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365453, 0.425050, -0.828116,
		-0.726165, -0.686774, -0.032041,
		-0.582348, 0.589639, 0.559640,
		35.085155, 36.869553, 23.911423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826042, 36.428501, 23.081091>,  <35.492802, 36.456806, 23.519674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826042, 36.428501, 23.081091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.830200, 36.739544, 23.332558>,  <34.832695, 36.926170, 23.483437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.830200, 36.739544, 23.332558>,  <34.826042, 36.428501, 23.081091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830200, 36.739544, 23.332558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406760, 0.577622, -0.707742,
		-0.913476, -0.248358, 0.322304,
		0.010396, 0.777606, 0.628666,
		34.833321, 36.972824, 23.521158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229919, 36.745575, 22.934288>,  <34.826042, 36.428501, 23.081091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229919, 36.745575, 22.934288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.439796, 37.034142, 23.115068>,  <34.565723, 37.207279, 23.223536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.439796, 37.034142, 23.115068>,  <34.229919, 36.745575, 22.934288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439796, 37.034142, 23.115068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338318, 0.663884, -0.666932,
		-0.781175, 0.197034, 0.592404,
		0.524696, 0.721412, 0.451950,
		34.597206, 37.250565, 23.250654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662323, 37.311024, 22.985588>,  <34.229919, 36.745575, 22.934288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662323, 37.311024, 22.985588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.029736, 37.461632, 23.033798>,  <34.250183, 37.551998, 23.062725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.029736, 37.461632, 23.033798>,  <33.662323, 37.311024, 22.985588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029736, 37.461632, 23.033798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176068, 0.662565, -0.728017,
		-0.353968, 0.647488, 0.674882,
		0.918535, 0.376519, 0.120525,
		34.305298, 37.574589, 23.069956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653065, 38.085716, 22.957516>,  <33.662323, 37.311024, 22.985588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653065, 38.085716, 22.957516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.034172, 37.998123, 22.873346>,  <34.262836, 37.945568, 22.822845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.034172, 37.998123, 22.873346>,  <33.653065, 38.085716, 22.957516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034172, 37.998123, 22.873346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020303, 0.737258, -0.675306,
		0.303014, 0.639138, 0.706883,
		0.952770, -0.218979, -0.210423,
		34.320004, 37.932430, 22.810219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371796, 38.685997, 23.325022>,  <33.653065, 38.085716, 22.957516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371796, 38.685997, 23.325022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.982578, 38.703068, 23.234367>,  <32.749046, 38.713310, 23.179974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.982578, 38.703068, 23.234367>,  <33.371796, 38.685997, 23.325022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982578, 38.703068, 23.234367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152701, -0.855671, 0.494480,
		-0.172825, 0.515758, 0.839122,
		-0.973044, 0.042676, -0.226637,
		32.690666, 38.715870, 23.166376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038433, 38.598251, 23.945635>,  <33.371796, 38.685997, 23.325022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038433, 38.598251, 23.945635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.739429, 38.501133, 23.698318>,  <32.560028, 38.442860, 23.549929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.739429, 38.501133, 23.698318>,  <33.038433, 38.598251, 23.945635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739429, 38.501133, 23.698318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242304, -0.766999, 0.594139,
		-0.618485, 0.593936, 0.514505,
		-0.747505, -0.242800, -0.618291,
		32.515179, 38.428291, 23.512831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482880, 38.517448, 24.356020>,  <33.038433, 38.598251, 23.945635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482880, 38.517448, 24.356020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.359966, 38.353100, 24.012680>,  <32.286221, 38.254490, 23.806675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.359966, 38.353100, 24.012680>,  <32.482880, 38.517448, 24.356020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359966, 38.353100, 24.012680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228660, -0.843686, 0.485705,
		-0.923739, 0.345518, 0.165299,
		-0.307280, -0.410868, -0.858351,
		32.267784, 38.229839, 23.755175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750784, 38.385578, 24.433001>,  <32.482880, 38.517448, 24.356020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750784, 38.385578, 24.433001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.926804, 38.129684, 24.180939>,  <32.032417, 37.976147, 24.029701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.926804, 38.129684, 24.180939>,  <31.750784, 38.385578, 24.433001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926804, 38.129684, 24.180939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302818, -0.766365, 0.566556,
		-0.845374, -0.058491, -0.530963,
		0.440050, -0.639737, -0.630153,
		32.058819, 37.937763, 23.991894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396620, 37.875500, 24.624626>,  <31.750784, 38.385578, 24.433001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396620, 37.875500, 24.624626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.633091, 37.674122, 24.372578>,  <31.774973, 37.553295, 24.221348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.633091, 37.674122, 24.372578>,  <31.396620, 37.875500, 24.624626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633091, 37.674122, 24.372578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157572, -0.838302, 0.521939,
		-0.791001, -0.209269, -0.574913,
		0.591176, -0.503444, -0.630123,
		31.810444, 37.523090, 24.183540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043877, 37.130234, 24.540241>,  <31.396620, 37.875500, 24.624626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043877, 37.130234, 24.540241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.434170, 37.130318, 24.452660>,  <31.668346, 37.130367, 24.400110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.434170, 37.130318, 24.452660>,  <31.043877, 37.130234, 24.540241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434170, 37.130318, 24.452660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129367, -0.807328, 0.575747,
		-0.176650, -0.590102, -0.787765,
		0.975735, 0.000205, -0.218955,
		31.726891, 37.130379, 24.386972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269300, 36.297321, 24.418669>,  <31.043877, 37.130234, 24.540241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269300, 36.297321, 24.418669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.584391, 36.526527, 24.509130>,  <31.773445, 36.664051, 24.563408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.584391, 36.526527, 24.509130>,  <31.269300, 36.297321, 24.418669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584391, 36.526527, 24.509130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346864, -0.715962, 0.605875,
		0.509090, -0.398819, -0.762739,
		0.787727, 0.573011, 0.226153,
		31.820709, 36.698429, 24.576977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.001926, 43.473755, 23.228781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.295185, 43.205753, 23.275412>,  <35.471142, 43.044952, 23.303391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.295185, 43.205753, 23.275412>,  <35.001926, 43.473755, 23.228781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295185, 43.205753, 23.275412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062030, 0.104821, 0.992555,
		-0.677238, -0.734918, 0.035288,
		0.733145, -0.670007, 0.116575,
		35.515129, 43.004753, 23.310385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787811, 42.866455, 23.672306>,  <35.001926, 43.473755, 23.228781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787811, 42.866455, 23.672306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.182865, 42.917229, 23.709108>,  <35.419899, 42.947693, 23.731190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.182865, 42.917229, 23.709108>,  <34.787811, 42.866455, 23.672306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182865, 42.917229, 23.709108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091460, -0.010117, 0.995757,
		0.127333, -0.991859, 0.001618,
		0.987634, 0.126941, 0.092003,
		35.479156, 42.955311, 23.736710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880142, 42.218575, 23.985825>,  <34.787811, 42.866455, 23.672306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880142, 42.218575, 23.985825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.201698, 42.443398, 24.063652>,  <35.394630, 42.578293, 24.110348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.201698, 42.443398, 24.063652>,  <34.880142, 42.218575, 23.985825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201698, 42.443398, 24.063652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145020, -0.132033, 0.980580,
		0.576834, -0.816490, -0.024630,
		0.803886, 0.562060, 0.194568,
		35.442863, 42.612015, 24.122023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172447, 41.818733, 24.475716>,  <34.880142, 42.218575, 23.985825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172447, 41.818733, 24.475716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.360401, 42.170925, 24.500912>,  <35.473175, 42.382240, 24.516029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.360401, 42.170925, 24.500912>,  <35.172447, 41.818733, 24.475716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360401, 42.170925, 24.500912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002140, -0.070224, 0.997529,
		0.882723, -0.468862, -0.031114,
		0.469889, 0.880475, 0.062992,
		35.501369, 42.435066, 24.519810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645695, 41.688393, 24.941854>,  <35.172447, 41.818733, 24.475716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645695, 41.688393, 24.941854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.604767, 42.086269, 24.937565>,  <35.580208, 42.324997, 24.934990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.604767, 42.086269, 24.937565>,  <35.645695, 41.688393, 24.941854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604767, 42.086269, 24.937565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088419, 0.001645, 0.996082,
		0.990814, 0.102871, 0.087781,
		-0.102324, 0.994693, -0.010725,
		35.574070, 42.384678, 24.934347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157295, 41.905273, 25.364742>,  <35.645695, 41.688393, 24.941854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157295, 41.905273, 25.364742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.871563, 42.184467, 25.344545>,  <35.700123, 42.351986, 25.332428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.871563, 42.184467, 25.344545>,  <36.157295, 41.905273, 25.364742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871563, 42.184467, 25.344545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146435, -0.078531, 0.986098,
		0.684320, 0.711790, 0.158307,
		-0.714327, 0.697988, -0.050490,
		35.657265, 42.393864, 25.329399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298409, 42.395676, 25.956882>,  <36.157295, 41.905273, 25.364742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298409, 42.395676, 25.956882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.925785, 42.468006, 25.830709>,  <35.702209, 42.511402, 25.755005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.925785, 42.468006, 25.830709>,  <36.298409, 42.395676, 25.956882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925785, 42.468006, 25.830709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295685, 0.128083, 0.946660,
		0.211579, 0.975140, -0.065850,
		-0.931560, 0.180822, -0.315434,
		35.646317, 42.522251, 25.736080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052578, 42.822399, 26.474077>,  <36.298409, 42.395676, 25.956882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052578, 42.822399, 26.474077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.717281, 42.681770, 26.307346>,  <35.516102, 42.597393, 26.207308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.717281, 42.681770, 26.307346>,  <36.052578, 42.822399, 26.474077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717281, 42.681770, 26.307346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428388, -0.048388, 0.902299,
		-0.337392, 0.934910, -0.110048,
		-0.838243, -0.351572, -0.416829,
		35.465809, 42.576298, 26.182297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485237, 43.101692, 26.876076>,  <36.052578, 42.822399, 26.474077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485237, 43.101692, 26.876076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.340801, 42.784142, 26.680372>,  <35.254139, 42.593613, 26.562950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.340801, 42.784142, 26.680372>,  <35.485237, 43.101692, 26.876076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340801, 42.784142, 26.680372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456921, -0.306740, 0.834946,
		-0.812918, 0.525045, -0.251977,
		-0.361092, -0.793876, -0.489258,
		35.232475, 42.545979, 26.533594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812126, 43.087460, 26.994164>,  <35.485237, 43.101692, 26.876076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812126, 43.087460, 26.994164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.922947, 42.714214, 26.902479>,  <34.989441, 42.490265, 26.847469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.922947, 42.714214, 26.902479>,  <34.812126, 43.087460, 26.994164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922947, 42.714214, 26.902479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514854, -0.345580, 0.784538,
		-0.811275, -0.099349, -0.576163,
		0.277053, -0.933116, -0.229210,
		35.006062, 42.434280, 26.833715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210217, 42.646740, 27.107346>,  <34.812126, 43.087460, 26.994164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210217, 42.646740, 27.107346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.519768, 42.393425, 27.110498>,  <34.705498, 42.241436, 27.112391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.519768, 42.393425, 27.110498>,  <34.210217, 42.646740, 27.107346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519768, 42.393425, 27.110498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465197, -0.559943, 0.685606,
		-0.429770, -0.534243, -0.727930,
		0.773880, -0.633284, 0.007881,
		34.751930, 42.203442, 27.112864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815872, 42.121159, 27.324102>,  <34.210217, 42.646740, 27.107346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815872, 42.121159, 27.324102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.202236, 42.037338, 27.384903>,  <34.434055, 41.987045, 27.421383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.202236, 42.037338, 27.384903>,  <33.815872, 42.121159, 27.324102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202236, 42.037338, 27.384903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257946, -0.729250, 0.633765,
		-0.021960, -0.651369, -0.758444,
		0.965910, -0.209555, 0.152004,
		34.492008, 41.974472, 27.430504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594357, 41.513187, 26.861994>,  <33.815872, 42.121159, 27.324102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594357, 41.513187, 26.861994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.206425, 41.597996, 26.813869>,  <32.973663, 41.648880, 26.784994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.206425, 41.597996, 26.813869>,  <33.594357, 41.513187, 26.861994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206425, 41.597996, 26.813869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218794, 0.539408, -0.813122,
		-0.107500, -0.814915, -0.569524,
		-0.969831, 0.212019, -0.120312,
		32.915474, 41.661602, 26.777777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546761, 41.446350, 26.160269>,  <33.594357, 41.513187, 26.861994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546761, 41.446350, 26.160269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.220650, 41.639130, 26.288666>,  <33.024982, 41.754799, 26.365704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.220650, 41.639130, 26.288666>,  <33.546761, 41.446350, 26.160269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220650, 41.639130, 26.288666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042162, 0.503455, -0.862992,
		-0.577528, -0.717115, -0.390137,
		-0.815282, 0.481953, 0.320995,
		32.976067, 41.783714, 26.384964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096027, 41.386627, 25.681406>,  <33.546761, 41.446350, 26.160269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096027, 41.386627, 25.681406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.931915, 41.702877, 25.863211>,  <32.833450, 41.892628, 25.972294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.931915, 41.702877, 25.863211>,  <33.096027, 41.386627, 25.681406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931915, 41.702877, 25.863211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074303, 0.467753, -0.880730,
		-0.908929, -0.395114, -0.133162,
		-0.410276, 0.790627, 0.454513,
		32.808834, 41.940063, 25.999565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524204, 41.569313, 25.285969>,  <33.096027, 41.386627, 25.681406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524204, 41.569313, 25.285969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.577454, 41.908554, 25.491102>,  <32.609402, 42.112099, 25.614183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.577454, 41.908554, 25.491102>,  <32.524204, 41.569313, 25.285969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577454, 41.908554, 25.491102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130610, 0.527940, -0.839178,
		-0.982456, 0.044731, 0.181050,
		0.133121, 0.848103, 0.512836,
		32.617390, 42.162987, 25.644953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885265, 42.052383, 25.139482>,  <32.524204, 41.569313, 25.285969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885265, 42.052383, 25.139482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.188896, 42.288403, 25.249498>,  <32.371075, 42.430016, 25.315508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.188896, 42.288403, 25.249498>,  <31.885265, 42.052383, 25.139482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188896, 42.288403, 25.249498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076062, 0.499979, -0.862691,
		-0.646544, 0.633927, 0.424402,
		0.759075, 0.590049, 0.275041,
		32.416618, 42.465416, 25.332010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673113, 42.743668, 24.936897>,  <31.885265, 42.052383, 25.139482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673113, 42.743668, 24.936897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.071957, 42.742310, 24.967253>,  <32.311264, 42.741493, 24.985466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.071957, 42.742310, 24.967253>,  <31.673113, 42.743668, 24.936897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071957, 42.742310, 24.967253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069619, 0.440588, -0.895006,
		-0.030398, 0.897703, 0.439551,
		0.997110, -0.003395, 0.075890,
		32.371090, 42.741291, 24.990021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826321, 43.364098, 24.772282>,  <31.673113, 42.743668, 24.936897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826321, 43.364098, 24.772282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.154411, 43.147167, 24.699492>,  <32.351265, 43.017010, 24.655817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.154411, 43.147167, 24.699492>,  <31.826321, 43.364098, 24.772282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154411, 43.147167, 24.699492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039143, 0.370584, -0.927973,
		0.570699, 0.754025, 0.325191,
		0.820226, -0.542323, -0.181978,
		32.400478, 42.984470, 24.644897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267006, 43.829422, 24.430588>,  <31.826321, 43.364098, 24.772282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267006, 43.829422, 24.430588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.445213, 43.478222, 24.360594>,  <32.552139, 43.267502, 24.318598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.445213, 43.478222, 24.360594>,  <32.267006, 43.829422, 24.430588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445213, 43.478222, 24.360594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333315, 0.344073, -0.877790,
		0.830911, 0.332748, 0.445944,
		0.445520, -0.878005, -0.174984,
		32.578869, 43.214821, 24.308098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678535, 44.072712, 23.918392>,  <32.267006, 43.829422, 24.430588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678535, 44.072712, 23.918392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.725075, 43.676029, 23.896530>,  <32.752998, 43.438019, 23.883413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.725075, 43.676029, 23.896530>,  <32.678535, 44.072712, 23.918392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725075, 43.676029, 23.896530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210943, 0.078448, -0.974345,
		0.970549, 0.101836, 0.218320,
		0.116350, -0.991703, -0.054656,
		32.759979, 43.378517, 23.880133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384136, 43.874332, 23.563358>,  <32.678535, 44.072712, 23.918392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384136, 43.874332, 23.563358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.137917, 43.560036, 23.538998>,  <32.990185, 43.371456, 23.524382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.137917, 43.560036, 23.538998>,  <33.384136, 43.874332, 23.563358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137917, 43.560036, 23.538998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355807, -0.208122, -0.911091,
		0.703207, -0.582490, 0.407682,
		-0.615549, -0.785742, -0.060901,
		32.953251, 43.324314, 23.520727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756321, 43.292534, 23.218462>,  <33.384136, 43.874332, 23.563358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756321, 43.292534, 23.218462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.370827, 43.204369, 23.158289>,  <33.139530, 43.151470, 23.122185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.370827, 43.204369, 23.158289>,  <33.756321, 43.292534, 23.218462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370827, 43.204369, 23.158289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190396, -0.172948, -0.966353,
		0.186978, -0.959952, 0.208642,
		-0.963737, -0.220412, -0.150433,
		33.081707, 43.138245, 23.113159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744682, 42.667950, 22.873760>,  <33.756321, 43.292534, 23.218462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744682, 42.667950, 22.873760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.395580, 42.854145, 22.814941>,  <33.186119, 42.965862, 22.779650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.395580, 42.854145, 22.814941>,  <33.744682, 42.667950, 22.873760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395580, 42.854145, 22.814941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143849, -0.042621, -0.988681,
		-0.466485, -0.884028, -0.029762,
		-0.872754, 0.465487, -0.147049,
		33.133755, 42.993790, 22.770826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315853, 42.160789, 22.403101>,  <33.744682, 42.667950, 22.873760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315853, 42.160789, 22.403101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.151043, 42.523949, 22.372208>,  <33.052158, 42.741844, 22.353672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.151043, 42.523949, 22.372208>,  <33.315853, 42.160789, 22.403101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151043, 42.523949, 22.372208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155204, -0.153451, -0.975892,
		-0.897858, -0.390103, 0.204134,
		-0.412022, 0.907895, -0.077232,
		33.027435, 42.796318, 22.349037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117992, 41.756439, 21.783588>,  <33.315853, 42.160789, 22.403101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117992, 41.756439, 21.783588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.893375, 41.584866, 21.500553>,  <32.758606, 41.481922, 21.330732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.893375, 41.584866, 21.500553>,  <33.117992, 41.756439, 21.783588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893375, 41.584866, 21.500553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221860, -0.745785, 0.628159,
		-0.797150, 0.509723, 0.323626,
		-0.561542, -0.428937, -0.707590,
		32.724915, 41.456184, 21.288277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491642, 41.644321, 22.094131>,  <33.117992, 41.756439, 21.783588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491642, 41.644321, 22.094131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.536270, 41.376232, 21.800644>,  <32.563049, 41.215378, 21.624552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.536270, 41.376232, 21.800644>,  <32.491642, 41.644321, 22.094131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536270, 41.376232, 21.800644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390952, -0.708399, 0.587646,
		-0.913624, 0.221283, -0.341066,
		0.111575, -0.670227, -0.733721,
		32.569744, 41.175163, 21.580528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860233, 41.208614, 21.994877>,  <32.491642, 41.644321, 22.094131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860233, 41.208614, 21.994877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.153755, 40.992561, 21.830055>,  <32.329868, 40.862930, 21.731161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.153755, 40.992561, 21.830055>,  <31.860233, 41.208614, 21.994877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153755, 40.992561, 21.830055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226436, -0.766308, 0.601248,
		-0.640513, -0.347895, -0.684626,
		0.733806, -0.540131, -0.412054,
		32.373898, 40.830521, 21.706438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547136, 40.564766, 21.966984>,  <31.860233, 41.208614, 21.994877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547136, 40.564766, 21.966984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.941271, 40.503181, 21.937571>,  <32.177753, 40.466232, 21.919922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.941271, 40.503181, 21.937571>,  <31.547136, 40.564766, 21.966984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941271, 40.503181, 21.937571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107226, -0.894013, 0.435022,
		-0.132716, -0.420759, -0.897412,
		0.985337, -0.153960, -0.073533,
		32.236874, 40.456993, 21.915510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637135, 39.845219, 21.661196>,  <31.547136, 40.564766, 21.966984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637135, 39.845219, 21.661196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.984617, 39.931061, 21.839766>,  <32.193108, 39.982567, 21.946907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.984617, 39.931061, 21.839766>,  <31.637135, 39.845219, 21.661196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984617, 39.931061, 21.839766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001004, -0.900502, 0.434851,
		0.495327, -0.378206, -0.782056,
		0.868706, 0.214609, 0.446423,
		32.245228, 39.995445, 21.973692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105240, 39.334724, 21.509729>,  <31.637135, 39.845219, 21.661196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105240, 39.334724, 21.509729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.240135, 39.493649, 21.851120>,  <32.321072, 39.589001, 22.055954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.240135, 39.493649, 21.851120>,  <32.105240, 39.334724, 21.509729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240135, 39.493649, 21.851120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015322, -0.904146, 0.426949,
		0.941295, -0.157060, -0.298823,
		0.337236, 0.397307, 0.853475,
		32.341305, 39.612839, 22.107162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640869, 38.917091, 21.774746>,  <32.105240, 39.334724, 21.509729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640869, 38.917091, 21.774746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.550804, 39.111877, 22.112307>,  <32.496765, 39.228748, 22.314842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.550804, 39.111877, 22.112307>,  <32.640869, 38.917091, 21.774746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550804, 39.111877, 22.112307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095718, -0.850896, 0.516541,
		0.969609, 0.197080, 0.144974,
		-0.225158, 0.486966, 0.843900,
		32.483257, 39.257969, 22.365477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219620, 38.771683, 22.327942>,  <32.640869, 38.917091, 21.774746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219620, 38.771683, 22.327942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.899384, 38.895523, 22.533155>,  <32.707241, 38.969826, 22.656284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.899384, 38.895523, 22.533155>,  <33.219620, 38.771683, 22.327942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899384, 38.895523, 22.533155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102468, -0.772837, 0.626277,
		0.590385, 0.553962, 0.587002,
		-0.800591, 0.309596, 0.513035,
		32.659206, 38.988403, 22.687065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909615, 38.755898, 22.684780>,  <33.219620, 38.771683, 22.327942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909615, 38.755898, 22.684780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.099503, 38.436863, 22.535919>,  <34.213436, 38.245441, 22.446602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.099503, 38.436863, 22.535919>,  <33.909615, 38.755898, 22.684780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099503, 38.436863, 22.535919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006095, 0.425805, -0.904795,
		0.880115, 0.427258, 0.207000,
		0.474722, -0.797585, -0.372153,
		34.241920, 38.197586, 22.424273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240734, 39.092022, 22.218647>,  <33.909615, 38.755898, 22.684780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240734, 39.092022, 22.218647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.282513, 38.709785, 22.108419>,  <34.307579, 38.480442, 22.042282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.282513, 38.709785, 22.108419>,  <34.240734, 39.092022, 22.218647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282513, 38.709785, 22.108419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077652, 0.268404, -0.960172,
		0.991495, 0.121684, -0.046169,
		0.104446, -0.955590, -0.275570,
		34.313847, 38.423107, 22.025749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728821, 39.150726, 21.687080>,  <34.240734, 39.092022, 22.218647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728821, 39.150726, 21.687080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.579330, 38.785641, 21.621012>,  <34.489635, 38.566589, 21.581371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.579330, 38.785641, 21.621012>,  <34.728821, 39.150726, 21.687080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579330, 38.785641, 21.621012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050237, 0.197729, -0.978969,
		0.926178, -0.357567, -0.119748,
		-0.373724, -0.912715, -0.165169,
		34.467213, 38.511826, 21.571461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994839, 38.946930, 21.058592>,  <34.728821, 39.150726, 21.687080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994839, 38.946930, 21.058592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.668091, 38.719341, 21.096516>,  <34.472042, 38.582787, 21.119270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.668091, 38.719341, 21.096516>,  <34.994839, 38.946930, 21.058592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668091, 38.719341, 21.096516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269245, 0.230748, -0.935020,
		0.510122, -0.789321, -0.341685,
		-0.816874, -0.568971, 0.094811,
		34.423027, 38.548649, 21.124960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005589, 38.603359, 20.528624>,  <34.994839, 38.946930, 21.058592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005589, 38.603359, 20.528624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.624302, 38.572056, 20.645420>,  <34.395531, 38.553272, 20.715498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.624302, 38.572056, 20.645420>,  <35.005589, 38.603359, 20.528624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624302, 38.572056, 20.645420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302185, 0.220442, -0.927410,
		0.008209, -0.972256, -0.233776,
		-0.953214, -0.078257, 0.291991,
		34.338337, 38.548580, 20.733017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620384, 38.204769, 20.029310>,  <35.005589, 38.603359, 20.528624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620384, 38.204769, 20.029310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.341248, 38.417194, 20.221556>,  <34.173767, 38.544647, 20.336903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.341248, 38.417194, 20.221556>,  <34.620384, 38.204769, 20.029310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341248, 38.417194, 20.221556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435168, 0.218607, -0.873407,
		-0.568898, -0.818648, 0.078548,
		-0.697842, 0.531061, 0.480615,
		34.131893, 38.576511, 20.365740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961826, 38.155941, 19.652176>,  <34.620384, 38.204769, 20.029310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961826, 38.155941, 19.652176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.914684, 38.484997, 19.874662>,  <33.886398, 38.682430, 20.008154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.914684, 38.484997, 19.874662>,  <33.961826, 38.155941, 19.652176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914684, 38.484997, 19.874662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469520, 0.447398, -0.761174,
		-0.875021, -0.350860, 0.333519,
		-0.117850, 0.822637, 0.556218,
		33.879330, 38.731789, 20.041529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248844, 38.382824, 19.518396>,  <33.961826, 38.155941, 19.652176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248844, 38.382824, 19.518396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.463902, 38.701427, 19.629042>,  <33.592934, 38.892590, 19.695429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.463902, 38.701427, 19.629042>,  <33.248844, 38.382824, 19.518396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463902, 38.701427, 19.629042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556465, 0.581657, -0.593314,
		-0.633475, 0.165063, 0.755952,
		0.537639, 0.796511, 0.276614,
		33.625195, 38.940380, 19.712027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775696, 38.026844, 18.963209>,  <33.248844, 38.382824, 19.518396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775696, 38.026844, 18.963209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.547546, 37.766773, 18.762432>,  <32.410656, 37.610729, 18.641966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.547546, 37.766773, 18.762432>,  <32.775696, 38.026844, 18.963209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547546, 37.766773, 18.762432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070392, -0.647536, 0.758777,
		-0.818364, 0.397454, 0.415104,
		-0.570374, -0.650176, -0.501942,
		32.376434, 37.571720, 18.611849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.914555, 32.071598, 33.901352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.241875, 32.300663, 33.881557>,  <36.438267, 32.438103, 33.869682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.241875, 32.300663, 33.881557>,  <35.914555, 32.071598, 33.901352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241875, 32.300663, 33.881557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411390, 0.523366, -0.746221,
		-0.401434, 0.630988, 0.663856,
		0.818296, 0.572662, -0.049485,
		36.487362, 32.472462, 33.866711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779995, 32.808388, 34.043854>,  <35.914555, 32.071598, 33.901352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779995, 32.808388, 34.043854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.104488, 32.789242, 33.810749>,  <36.299183, 32.777756, 33.670883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.104488, 32.789242, 33.810749>,  <35.779995, 32.808388, 34.043854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104488, 32.789242, 33.810749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517070, 0.406649, -0.753176,
		0.273031, 0.912330, 0.305136,
		0.811229, -0.047863, -0.582766,
		36.347858, 32.774883, 33.635918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855705, 33.476051, 33.756527>,  <35.779995, 32.808388, 34.043854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855705, 33.476051, 33.756527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.044411, 33.226585, 33.507214>,  <36.157635, 33.076904, 33.357628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.044411, 33.226585, 33.507214>,  <35.855705, 33.476051, 33.756527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044411, 33.226585, 33.507214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487141, 0.404848, -0.773816,
		0.734936, 0.668686, -0.112820,
		0.471765, -0.623665, -0.623282,
		36.185940, 33.039486, 33.320229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041164, 33.919579, 33.179047>,  <35.855705, 33.476051, 33.756527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041164, 33.919579, 33.179047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.113663, 33.548267, 33.049156>,  <36.157162, 33.325481, 32.971222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.113663, 33.548267, 33.049156>,  <36.041164, 33.919579, 33.179047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113663, 33.548267, 33.049156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068831, 0.317411, -0.945786,
		0.981026, 0.193772, -0.006364,
		0.181247, -0.928279, -0.324726,
		36.168037, 33.269783, 32.951736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657578, 33.872166, 32.644325>,  <36.041164, 33.919579, 33.179047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657578, 33.872166, 32.644325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.428490, 33.551571, 32.575493>,  <36.291039, 33.359215, 32.534191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.428490, 33.551571, 32.575493>,  <36.657578, 33.872166, 32.644325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428490, 33.551571, 32.575493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167112, 0.319664, -0.932678,
		0.802540, -0.505402, -0.317015,
		-0.572716, -0.801488, -0.172085,
		36.256676, 33.311123, 32.523869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810234, 33.482510, 31.979406>,  <36.657578, 33.872166, 32.644325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810234, 33.482510, 31.979406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.422619, 33.427433, 32.061390>,  <36.190048, 33.394386, 32.110580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.422619, 33.427433, 32.061390>,  <36.810234, 33.482510, 31.979406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422619, 33.427433, 32.061390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227172, 0.171910, -0.958561,
		0.096745, -0.975443, -0.197865,
		-0.969037, -0.137685, 0.204962,
		36.131908, 33.386127, 32.122879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523396, 33.344284, 31.320930>,  <36.810234, 33.482510, 31.979406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523396, 33.344284, 31.320930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185863, 33.338577, 31.535498>,  <35.983345, 33.335152, 31.664238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185863, 33.338577, 31.535498>,  <36.523396, 33.344284, 31.320930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185863, 33.338577, 31.535498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535642, 0.082329, -0.840422,
		-0.032173, -0.996503, -0.077114,
		-0.843832, -0.014266, 0.536418,
		35.932713, 33.334297, 31.696423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096256, 32.873760, 30.934982>,  <36.523396, 33.344284, 31.320930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096256, 32.873760, 30.934982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.866978, 33.104565, 31.167704>,  <35.729408, 33.243050, 31.307337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.866978, 33.104565, 31.167704>,  <36.096256, 32.873760, 30.934982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866978, 33.104565, 31.167704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662042, 0.092271, -0.743765,
		-0.482847, -0.811504, 0.329118,
		-0.573201, 0.577015, 0.581803,
		35.695019, 33.277668, 31.342245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370277, 32.600418, 30.897636>,  <36.096256, 32.873760, 30.934982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370277, 32.600418, 30.897636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.336243, 32.985146, 31.001684>,  <35.315823, 33.215984, 31.064114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.336243, 32.985146, 31.001684>,  <35.370277, 32.600418, 30.897636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336243, 32.985146, 31.001684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448643, 0.196120, -0.871927,
		-0.889652, -0.190889, 0.414827,
		-0.085085, 0.961820, 0.260119,
		35.310719, 33.273693, 31.079720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728821, 32.897587, 30.739273>,  <35.370277, 32.600418, 30.897636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728821, 32.897587, 30.739273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938694, 33.235054, 30.784769>,  <35.064617, 33.437534, 30.812067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938694, 33.235054, 30.784769>,  <34.728821, 32.897587, 30.739273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938694, 33.235054, 30.784769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340892, 0.330648, -0.880037,
		-0.780063, 0.422970, 0.461084,
		0.524686, 0.843664, 0.113739,
		35.096100, 33.488152, 30.818892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328571, 33.251949, 30.453659>,  <34.728821, 32.897587, 30.739273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328571, 33.251949, 30.453659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.658844, 33.477177, 30.467512>,  <34.857006, 33.612312, 30.475824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.658844, 33.477177, 30.467512>,  <34.328571, 33.251949, 30.453659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658844, 33.477177, 30.467512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207833, 0.360687, -0.909236,
		-0.524458, 0.743542, 0.414838,
		0.825681, 0.563073, 0.034632,
		34.906548, 33.646099, 30.477901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113285, 33.832115, 30.158836>,  <34.328571, 33.251949, 30.453659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113285, 33.832115, 30.158836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.509575, 33.872616, 30.122587>,  <34.747349, 33.896915, 30.100838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.509575, 33.872616, 30.122587>,  <34.113285, 33.832115, 30.158836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509575, 33.872616, 30.122587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130681, 0.527140, -0.839670,
		-0.037247, 0.843725, 0.535483,
		0.990725, 0.101252, -0.090624,
		34.806793, 33.902992, 30.095400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443569, 34.114388, 30.181074>,  <34.113285, 33.832115, 30.158836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443569, 34.114388, 30.181074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126289, 33.950989, 30.000427>,  <32.935921, 33.852947, 29.892038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126289, 33.950989, 30.000427>,  <33.443569, 34.114388, 30.181074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126289, 33.950989, 30.000427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378966, -0.249385, 0.891175,
		-0.476673, 0.878029, 0.043004,
		-0.793201, -0.408501, -0.451617,
		32.888329, 33.828438, 29.864943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866890, 34.461327, 30.597738>,  <33.443569, 34.114388, 30.181074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866890, 34.461327, 30.597738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.728180, 34.136620, 30.409792>,  <32.644955, 33.941795, 30.297024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.728180, 34.136620, 30.409792>,  <32.866890, 34.461327, 30.597738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728180, 34.136620, 30.409792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500675, -0.263403, 0.824587,
		-0.793139, 0.521199, -0.315091,
		-0.346778, -0.811770, -0.469866,
		32.624146, 33.893089, 30.268831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154949, 34.572235, 30.715515>,  <32.866890, 34.461327, 30.597738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154949, 34.572235, 30.715515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.276806, 34.196697, 30.651306>,  <32.349918, 33.971375, 30.612782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.276806, 34.196697, 30.651306>,  <32.154949, 34.572235, 30.715515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276806, 34.196697, 30.651306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428154, -0.285530, 0.857413,
		-0.850809, -0.192477, -0.488954,
		0.304643, -0.938843, -0.160522,
		32.368198, 33.915043, 30.603149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617802, 34.130768, 30.784636>,  <32.154949, 34.572235, 30.715515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617802, 34.130768, 30.784636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927668, 33.879532, 30.814013>,  <32.113586, 33.728790, 30.831638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927668, 33.879532, 30.814013>,  <31.617802, 34.130768, 30.784636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927668, 33.879532, 30.814013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445129, -0.459102, 0.768821,
		-0.449166, -0.628276, -0.635231,
		0.774668, -0.628088, 0.073450,
		32.160069, 33.691105, 30.836046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284235, 33.560001, 30.898039>,  <31.617802, 34.130768, 30.784636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284235, 33.560001, 30.898039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.662619, 33.496449, 31.011116>,  <31.889648, 33.458317, 31.078962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.662619, 33.496449, 31.011116>,  <31.284235, 33.560001, 30.898039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662619, 33.496449, 31.011116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324267, -0.471729, 0.819952,
		0.003078, -0.867311, -0.497758,
		0.945961, -0.158883, 0.282693,
		31.946407, 33.448784, 31.095924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370846, 32.902130, 31.033905>,  <31.284235, 33.560001, 30.898039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370846, 32.902130, 31.033905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.683968, 33.042236, 31.239635>,  <31.871841, 33.126301, 31.363073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.683968, 33.042236, 31.239635>,  <31.370846, 32.902130, 31.033905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683968, 33.042236, 31.239635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233137, -0.601245, 0.764298,
		0.576944, -0.718204, -0.388997,
		0.782804, 0.350267, 0.514325,
		31.918808, 33.147316, 31.393932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778641, 32.367828, 31.339144>,  <31.370846, 32.902130, 31.033905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778641, 32.367828, 31.339144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.879860, 32.665821, 31.586033>,  <31.940592, 32.844616, 31.734167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.879860, 32.665821, 31.586033>,  <31.778641, 32.367828, 31.339144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879860, 32.665821, 31.586033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165756, -0.595167, 0.786321,
		0.953148, -0.301287, -0.027121,
		0.253050, 0.744985, 0.617222,
		31.955774, 32.889317, 31.771200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037830, 32.126774, 31.965714>,  <31.778641, 32.367828, 31.339144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037830, 32.126774, 31.965714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.994200, 32.487343, 32.133305>,  <31.968023, 32.703686, 32.233860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.994200, 32.487343, 32.133305>,  <32.037830, 32.126774, 31.965714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994200, 32.487343, 32.133305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129414, -0.430783, 0.893128,
		0.985574, 0.043194, 0.163643,
		-0.109072, 0.901421, 0.418978,
		31.961477, 32.757771, 32.258999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351597, 32.041393, 32.592075>,  <32.037830, 32.126774, 31.965714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351597, 32.041393, 32.592075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.092552, 32.345741, 32.608444>,  <31.937126, 32.528351, 32.618267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.092552, 32.345741, 32.608444>,  <32.351597, 32.041393, 32.592075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092552, 32.345741, 32.608444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258723, -0.270088, 0.927424,
		0.716704, 0.590022, 0.371766,
		-0.647610, 0.760873, 0.040921,
		31.898270, 32.574001, 32.620720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435623, 32.430054, 33.218651>,  <32.351597, 32.041393, 32.592075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435623, 32.430054, 33.218651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.055016, 32.521309, 33.136120>,  <31.826653, 32.576061, 33.086601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.055016, 32.521309, 33.136120>,  <32.435623, 32.430054, 33.218651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055016, 32.521309, 33.136120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256661, -0.219151, 0.941328,
		0.169537, 0.948644, 0.267080,
		-0.951516, 0.228139, -0.206325,
		31.769560, 32.589752, 33.074223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248356, 32.692703, 33.824253>,  <32.435623, 32.430054, 33.218651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248356, 32.692703, 33.824253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.900023, 32.638672, 33.635189>,  <31.691023, 32.606255, 33.521751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.900023, 32.638672, 33.635189>,  <32.248356, 32.692703, 33.824253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900023, 32.638672, 33.635189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386722, -0.405340, 0.828339,
		-0.303476, 0.904131, 0.300747,
		-0.870832, -0.135076, -0.472658,
		31.638773, 32.598148, 33.493393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558538, 33.092327, 34.105328>,  <32.248356, 32.692703, 33.824253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558538, 33.092327, 34.105328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.435926, 32.767197, 33.907192>,  <31.362360, 32.572121, 33.788311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.435926, 32.767197, 33.907192>,  <31.558538, 33.092327, 34.105328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435926, 32.767197, 33.907192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270809, -0.424410, 0.864025,
		-0.912525, 0.398990, -0.090026,
		-0.306529, -0.812824, -0.495335,
		31.343967, 32.523350, 33.758591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956886, 32.925697, 34.499207>,  <31.558538, 33.092327, 34.105328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956886, 32.925697, 34.499207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.022724, 32.611774, 34.260216>,  <31.062227, 32.423420, 34.116821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.022724, 32.611774, 34.260216>,  <30.956886, 32.925697, 34.499207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022724, 32.611774, 34.260216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452738, -0.598275, 0.661132,
		-0.876321, 0.161684, -0.453785,
		0.164593, -0.784809, -0.597481,
		31.072102, 32.376331, 34.080971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468660, 33.479858, 34.260006>,  <30.956886, 32.925697, 34.499207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468660, 33.479858, 34.260006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.292059, 33.794033, 34.433521>,  <30.186098, 33.982536, 34.537628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.292059, 33.794033, 34.433521>,  <30.468660, 33.479858, 34.260006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292059, 33.794033, 34.433521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320721, 0.589660, -0.741242,
		-0.837982, -0.188135, -0.512241,
		-0.441502, 0.785434, 0.433786,
		30.159609, 34.029663, 34.563656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053015, 33.752056, 33.709415>,  <30.468660, 33.479858, 34.260006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053015, 33.752056, 33.709415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.152369, 34.022568, 33.986820>,  <30.211981, 34.184875, 34.153263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.152369, 34.022568, 33.986820>,  <30.053015, 33.752056, 33.709415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152369, 34.022568, 33.986820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353882, 0.603104, -0.714865,
		-0.901706, 0.422980, -0.089523,
		0.248382, 0.676279, 0.693508,
		30.226883, 34.225452, 34.194874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796095, 34.391209, 33.465641>,  <30.053015, 33.752056, 33.709415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796095, 34.391209, 33.465641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.068123, 34.514263, 33.731834>,  <30.231339, 34.588097, 33.891548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.068123, 34.514263, 33.731834>,  <29.796095, 34.391209, 33.465641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068123, 34.514263, 33.731834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233600, 0.769470, -0.594429,
		-0.694937, 0.559709, 0.451429,
		0.680069, 0.307637, 0.665481,
		30.272144, 34.606556, 33.931480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650204, 35.006882, 33.778061>,  <29.796095, 34.391209, 33.465641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650204, 35.006882, 33.778061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.048191, 34.979958, 33.807747>,  <30.286983, 34.963802, 33.825558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.048191, 34.979958, 33.807747>,  <29.650204, 35.006882, 33.778061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048191, 34.979958, 33.807747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098487, 0.793306, -0.600804,
		-0.018434, 0.605090, 0.795944,
		0.994968, -0.067314, 0.074217,
		30.346682, 34.959763, 33.830013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842796, 35.671387, 33.946232>,  <29.650204, 35.006882, 33.778061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842796, 35.671387, 33.946232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.158865, 35.492508, 33.778591>,  <30.348505, 35.385181, 33.678005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.158865, 35.492508, 33.778591>,  <29.842796, 35.671387, 33.946232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158865, 35.492508, 33.778591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216829, 0.843564, -0.491310,
		0.573252, 0.297345, 0.763524,
		0.790169, -0.447198, -0.419102,
		30.395916, 35.358349, 33.652863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429638, 36.076714, 34.058079>,  <29.842796, 35.671387, 33.946232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429638, 36.076714, 34.058079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.490885, 35.841515, 33.740383>,  <30.527634, 35.700394, 33.549767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.490885, 35.841515, 33.740383>,  <30.429638, 36.076714, 34.058079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490885, 35.841515, 33.740383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230249, 0.802824, -0.549964,
		0.961010, -0.098664, 0.258311,
		0.153116, -0.587996, -0.794239,
		30.536819, 35.665115, 33.502113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926483, 36.516048, 33.669636>,  <30.429638, 36.076714, 34.058079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926483, 36.516048, 33.669636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.811069, 36.252365, 33.391876>,  <30.741821, 36.094154, 33.225220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.811069, 36.252365, 33.391876>,  <30.926483, 36.516048, 33.669636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811069, 36.252365, 33.391876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008097, 0.726899, -0.686697,
		0.957435, -0.192513, -0.215072,
		-0.288533, -0.659209, -0.694400,
		30.724510, 36.054604, 33.183556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316668, 36.598061, 33.100220>,  <30.926483, 36.516048, 33.669636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316668, 36.598061, 33.100220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.009558, 36.412876, 32.923046>,  <30.825293, 36.301765, 32.816742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.009558, 36.412876, 32.923046>,  <31.316668, 36.598061, 33.100220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009558, 36.412876, 32.923046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106650, 0.589317, -0.800832,
		0.631780, -0.662098, -0.403088,
		-0.767776, -0.462960, -0.442931,
		30.779224, 36.273987, 32.790165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447987, 36.560204, 32.376537>,  <31.316668, 36.598061, 33.100220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447987, 36.560204, 32.376537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.051706, 36.515175, 32.407093>,  <30.813938, 36.488155, 32.425426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.051706, 36.515175, 32.407093>,  <31.447987, 36.560204, 32.376537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051706, 36.515175, 32.407093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124430, 0.522799, -0.843326,
		0.055003, -0.844990, -0.531946,
		-0.990703, -0.112575, 0.076386,
		30.754496, 36.481403, 32.430008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249502, 36.425972, 31.747011>,  <31.447987, 36.560204, 32.376537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249502, 36.425972, 31.747011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.926802, 36.574306, 31.931026>,  <30.733181, 36.663307, 32.041435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.926802, 36.574306, 31.931026>,  <31.249502, 36.425972, 31.747011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926802, 36.574306, 31.931026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215104, 0.540812, -0.813174,
		-0.550350, -0.754984, -0.356531,
		-0.806750, 0.370839, 0.460036,
		30.684776, 36.685558, 32.069038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855236, 36.518963, 31.228119>,  <31.249502, 36.425972, 31.747011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855236, 36.518963, 31.228119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.708519, 36.758495, 31.512896>,  <30.620489, 36.902214, 31.683762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.708519, 36.758495, 31.512896>,  <30.855236, 36.518963, 31.228119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708519, 36.758495, 31.512896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219187, 0.688106, -0.691713,
		-0.904113, -0.409764, -0.121136,
		-0.366794, 0.598835, 0.711940,
		30.598480, 36.938145, 31.726479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276287, 36.732952, 30.872992>,  <30.855236, 36.518963, 31.228119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276287, 36.732952, 30.872992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.330965, 36.977791, 31.184542>,  <30.363771, 37.124695, 31.371471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.330965, 36.977791, 31.184542>,  <30.276287, 36.732952, 30.872992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330965, 36.977791, 31.184542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319340, 0.771510, -0.550268,
		-0.937729, -0.173507, 0.300930,
		0.136695, 0.612101, 0.778875,
		30.371973, 37.161423, 31.418203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726242, 37.110703, 30.837976>,  <30.276287, 36.732952, 30.872992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726242, 37.110703, 30.837976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.007856, 37.317135, 31.033112>,  <30.176825, 37.440994, 31.150192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.007856, 37.317135, 31.033112>,  <29.726242, 37.110703, 30.837976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007856, 37.317135, 31.033112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137445, 0.772974, -0.619371,
		-0.696735, 0.369009, 0.615136,
		0.704038, 0.516085, 0.487840,
		30.219069, 37.471962, 31.179464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457035, 37.724979, 30.987007>,  <29.726242, 37.110703, 30.837976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457035, 37.724979, 30.987007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.853273, 37.778156, 30.999973>,  <30.091017, 37.810062, 31.007753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.853273, 37.778156, 30.999973>,  <29.457035, 37.724979, 30.987007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853273, 37.778156, 30.999973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083565, 0.775321, -0.626014,
		-0.108353, 0.617417, 0.779137,
		0.990594, 0.132940, 0.032414,
		30.150452, 37.818039, 31.009697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521027, 38.400478, 31.119421>,  <29.457035, 37.724979, 30.987007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521027, 38.400478, 31.119421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.874243, 38.287029, 30.969864>,  <30.086172, 38.218960, 30.880129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.874243, 38.287029, 30.969864>,  <29.521027, 38.400478, 31.119421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874243, 38.287029, 30.969864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007666, 0.805328, -0.592780,
		0.469231, 0.520583, 0.713313,
		0.883042, -0.283619, -0.373895,
		30.139156, 38.201942, 30.857695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998810, 38.888367, 31.120110>,  <29.521027, 38.400478, 31.119421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998810, 38.888367, 31.120110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.121525, 38.660168, 30.815369>,  <30.195154, 38.523251, 30.632524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.121525, 38.660168, 30.815369>,  <29.998810, 38.888367, 31.120110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121525, 38.660168, 30.815369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152818, 0.819590, -0.552193,
		0.939429, 0.052981, 0.338623,
		0.306788, -0.570495, -0.761851,
		30.213562, 38.489017, 30.586813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475185, 39.251320, 30.788506>,  <29.998810, 38.888367, 31.120110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475185, 39.251320, 30.788506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.499355, 38.953880, 30.522152>,  <30.513857, 38.775417, 30.362339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.499355, 38.953880, 30.522152>,  <30.475185, 39.251320, 30.788506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499355, 38.953880, 30.522152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291551, 0.651162, -0.700704,
		0.954645, -0.151799, 0.256145,
		0.060426, -0.743603, -0.665885,
		30.517483, 38.730801, 30.322386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085762, 39.375549, 30.390802>,  <30.475185, 39.251320, 30.788506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085762, 39.375549, 30.390802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.882732, 39.141926, 30.137426>,  <30.760916, 39.001751, 29.985401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.882732, 39.141926, 30.137426>,  <31.085762, 39.375549, 30.390802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882732, 39.141926, 30.137426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402906, 0.488957, -0.773685,
		0.761601, -0.647918, -0.012861,
		-0.507573, -0.584057, -0.633440,
		30.730461, 38.966709, 29.947393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488056, 39.255348, 29.912821>,  <31.085762, 39.375549, 30.390802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488056, 39.255348, 29.912821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.140856, 39.193047, 29.724218>,  <30.932535, 39.155666, 29.611057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.140856, 39.193047, 29.724218>,  <31.488056, 39.255348, 29.912821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140856, 39.193047, 29.724218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377698, 0.409343, -0.830532,
		0.322363, -0.898988, -0.296483,
		-0.868001, -0.155752, -0.471503,
		30.880455, 39.146320, 29.582767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622484, 38.845268, 29.338694>,  <31.488056, 39.255348, 29.912821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622484, 38.845268, 29.338694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.277279, 39.035645, 29.270945>,  <31.070156, 39.149872, 29.230295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.277279, 39.035645, 29.270945>,  <31.622484, 38.845268, 29.338694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277279, 39.035645, 29.270945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417689, 0.483656, -0.769163,
		-0.284161, -0.734542, -0.616198,
		-0.863011, 0.475945, -0.169374,
		31.018375, 39.178429, 29.220133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418228, 38.679604, 28.662977>,  <31.622484, 38.845268, 29.338694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418228, 38.679604, 28.662977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.235249, 39.020603, 28.764156>,  <31.125462, 39.225204, 28.824863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.235249, 39.020603, 28.764156>,  <31.418228, 38.679604, 28.662977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235249, 39.020603, 28.764156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372332, 0.441945, -0.816121,
		-0.807533, -0.279152, -0.519581,
		-0.457448, 0.852501, 0.252948,
		31.098015, 39.276352, 28.840040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984919, 38.896301, 28.099195>,  <31.418228, 38.679604, 28.662977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984919, 38.896301, 28.099195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.057796, 39.234798, 28.299465>,  <31.101522, 39.437897, 28.419626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.057796, 39.234798, 28.299465>,  <30.984919, 38.896301, 28.099195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057796, 39.234798, 28.299465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556641, 0.330975, -0.761975,
		-0.810529, 0.417523, -0.410754,
		0.182193, 0.846245, 0.500675,
		31.112453, 39.488670, 28.449667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002148, 39.503967, 27.641441>,  <30.984919, 38.896301, 28.099195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002148, 39.503967, 27.641441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.122158, 39.739735, 27.941462>,  <31.194164, 39.881195, 28.121473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.122158, 39.739735, 27.941462>,  <31.002148, 39.503967, 27.641441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122158, 39.739735, 27.941462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441566, 0.611153, -0.656896,
		-0.845579, 0.528282, -0.076903,
		0.300027, 0.589415, 0.750049,
		31.212166, 39.916557, 28.166477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897614, 40.171078, 27.389902>,  <31.002148, 39.503967, 27.641441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897614, 40.171078, 27.389902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.165667, 40.186974, 27.686373>,  <31.326498, 40.196510, 27.864256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.165667, 40.186974, 27.686373>,  <30.897614, 40.171078, 27.389902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165667, 40.186974, 27.686373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516721, 0.691874, -0.504292,
		-0.532844, 0.720923, 0.443110,
		0.670132, 0.039744, 0.741177,
		31.366707, 40.198898, 27.908726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010265, 40.881439, 27.493526>,  <30.897614, 40.171078, 27.389902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010265, 40.881439, 27.493526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.330605, 40.683151, 27.627932>,  <31.522808, 40.564178, 27.708574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.330605, 40.683151, 27.627932>,  <31.010265, 40.881439, 27.493526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330605, 40.683151, 27.627932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598475, 0.642125, -0.479066,
		0.021719, 0.584755, 0.810919,
		0.800847, -0.495719, 0.336015,
		31.570858, 40.534435, 27.728737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386610, 41.320751, 27.932642>,  <31.010265, 40.881439, 27.493526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386610, 41.320751, 27.932642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.627407, 41.044304, 27.772661>,  <31.771885, 40.878437, 27.676672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.627407, 41.044304, 27.772661>,  <31.386610, 41.320751, 27.932642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627407, 41.044304, 27.772661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615946, 0.720665, -0.318203,
		0.508148, -0.054794, 0.859525,
		0.601994, -0.691115, -0.399954,
		31.808004, 40.836967, 27.652676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048164, 41.586899, 28.080111>,  <31.386610, 41.320751, 27.932642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048164, 41.586899, 28.080111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.136955, 41.313385, 27.802071>,  <32.190231, 41.149277, 27.635246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.136955, 41.313385, 27.802071>,  <32.048164, 41.586899, 28.080111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136955, 41.313385, 27.802071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692261, 0.612556, -0.381510,
		0.686658, -0.396502, 0.609334,
		0.221981, -0.683785, -0.695099,
		32.203548, 41.108250, 27.593540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730907, 41.680035, 27.947649>,  <32.048164, 41.586899, 28.080111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730907, 41.680035, 27.947649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.612793, 41.453518, 27.639851>,  <32.541924, 41.317608, 27.455172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.612793, 41.453518, 27.639851>,  <32.730907, 41.680035, 27.947649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612793, 41.453518, 27.639851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630922, 0.489239, -0.602149,
		0.717457, -0.663298, 0.212818,
		-0.295286, -0.566287, -0.769497,
		32.524208, 41.283630, 27.409002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315834, 41.604942, 27.522350>,  <32.730907, 41.680035, 27.947649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315834, 41.604942, 27.522350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.015690, 41.513626, 27.274206>,  <32.835606, 41.458836, 27.125320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.015690, 41.513626, 27.274206>,  <33.315834, 41.604942, 27.522350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015690, 41.513626, 27.274206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444364, 0.520595, -0.729055,
		0.489383, -0.822721, -0.289196,
		-0.750363, -0.228279, -0.620358,
		32.790581, 41.445141, 27.088099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915848, 41.219585, 27.525949>,  <33.315834, 41.604942, 27.522350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915848, 41.219585, 27.525949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.287868, 41.307949, 27.643389>,  <34.511082, 41.360966, 27.713852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.287868, 41.307949, 27.643389>,  <33.915848, 41.219585, 27.525949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287868, 41.307949, 27.643389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084774, -0.648497, 0.756482,
		0.357512, -0.728458, -0.584410,
		0.930053, 0.220909, 0.293600,
		34.566883, 41.374222, 27.731468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204254, 40.591267, 27.644073>,  <33.915848, 41.219585, 27.525949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204254, 40.591267, 27.644073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.426834, 40.839718, 27.864824>,  <34.560383, 40.988789, 27.997274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.426834, 40.839718, 27.864824>,  <34.204254, 40.591267, 27.644073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426834, 40.839718, 27.864824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019950, -0.674004, 0.738458,
		0.830643, -0.399903, -0.387439,
		0.556448, 0.621125, 0.551879,
		34.593769, 41.026054, 28.030388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657093, 40.127155, 27.925922>,  <34.204254, 40.591267, 27.644073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657093, 40.127155, 27.925922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669029, 40.463169, 28.142607>,  <34.676189, 40.664780, 28.272617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669029, 40.463169, 28.142607>,  <34.657093, 40.127155, 27.925922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669029, 40.463169, 28.142607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128047, -0.540697, 0.831415,
		0.991319, 0.044555, -0.123699,
		0.029840, 0.840037, 0.541709,
		34.677982, 40.715179, 28.305119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158516, 40.020668, 28.340576>,  <34.657093, 40.127155, 27.925922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158516, 40.020668, 28.340576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.947350, 40.309933, 28.518717>,  <34.820648, 40.483494, 28.625601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.947350, 40.309933, 28.518717>,  <35.158516, 40.020668, 28.340576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947350, 40.309933, 28.518717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080390, -0.479475, 0.873866,
		0.845484, 0.497129, 0.194987,
		-0.527915, 0.723164, 0.445353,
		34.788975, 40.526882, 28.652323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500645, 40.109547, 29.007814>,  <35.158516, 40.020668, 28.340576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500645, 40.109547, 29.007814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.127888, 40.248177, 29.050642>,  <34.904232, 40.331356, 29.076338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.127888, 40.248177, 29.050642>,  <35.500645, 40.109547, 29.007814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127888, 40.248177, 29.050642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117523, -0.567716, 0.814792,
		0.343173, 0.746714, 0.569780,
		-0.931891, 0.346577, 0.107068,
		34.848320, 40.352150, 29.082762>
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
