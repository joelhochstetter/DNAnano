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
	<24.117729, 34.990158, 34.817085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.401384, 34.799168, 35.024601>,  <24.571577, 34.684574, 35.149109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.401384, 34.799168, 35.024601>,  <24.117729, 34.990158, 34.817085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.401384, 34.799168, 35.024601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704329, 0.446031, -0.552246,
		0.032287, 0.757017, 0.652597,
		0.709139, -0.477473, 0.518789,
		24.614126, 34.655926, 35.180237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.604864, 35.474712, 34.987251>,  <24.117729, 34.990158, 34.817085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.604864, 35.474712, 34.987251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.762371, 35.107136, 34.996140>,  <24.856874, 34.886589, 35.001472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.762371, 35.107136, 34.996140>,  <24.604864, 35.474712, 34.987251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.762371, 35.107136, 34.996140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683069, 0.276349, -0.676054,
		0.615114, 0.281385, 0.736517,
		0.393767, -0.918942, 0.022219,
		24.880501, 34.831451, 35.002804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.285152, 35.593307, 35.156982>,  <24.604864, 35.474712, 34.987251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.285152, 35.593307, 35.156982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.210039, 35.276134, 34.925125>,  <25.164970, 35.085831, 34.786011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.210039, 35.276134, 34.925125>,  <25.285152, 35.593307, 35.156982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.210039, 35.276134, 34.925125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576289, 0.388944, -0.718759,
		0.795379, -0.469016, 0.383922,
		-0.187785, -0.792936, -0.579646,
		25.153704, 35.038254, 34.751232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.280993, 35.831676, 35.709820>,  <25.285152, 35.593307, 35.156982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.280993, 35.831676, 35.709820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.194323, 35.686535, 36.072342>,  <25.142321, 35.599449, 36.289856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.194323, 35.686535, 36.072342>,  <25.280993, 35.831676, 35.709820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.194323, 35.686535, 36.072342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569061, 0.707382, 0.419261,
		-0.793235, 0.606586, 0.053216,
		-0.216674, -0.362855, 0.906305,
		25.129320, 35.577679, 36.344234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002499, 36.338154, 36.154270>,  <25.280993, 35.831676, 35.709820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002499, 36.338154, 36.154270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.192949, 36.058113, 36.367123>,  <25.307219, 35.890087, 36.494835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.192949, 36.058113, 36.367123>,  <25.002499, 36.338154, 36.154270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.192949, 36.058113, 36.367123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641635, 0.690377, 0.334192,
		-0.601339, 0.182317, 0.777915,
		0.476126, -0.700100, 0.532131,
		25.335787, 35.848083, 36.526764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.020641, 36.488117, 36.839722>,  <25.002499, 36.338154, 36.154270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.020641, 36.488117, 36.839722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.348940, 36.272396, 36.764320>,  <25.545919, 36.142963, 36.719078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.348940, 36.272396, 36.764320>,  <25.020641, 36.488117, 36.839722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.348940, 36.272396, 36.764320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568465, 0.803743, 0.175629,
		0.056792, -0.251304, 0.966241,
		0.820745, -0.539299, -0.188504,
		25.595163, 36.110607, 36.707767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498743, 36.477295, 37.434254>,  <25.020641, 36.488117, 36.839722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498743, 36.477295, 37.434254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.679356, 36.438667, 37.079449>,  <25.787724, 36.415493, 36.866566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.679356, 36.438667, 37.079449>,  <25.498743, 36.477295, 37.434254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.679356, 36.438667, 37.079449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622158, 0.746657, 0.235422,
		0.639561, -0.658163, 0.397220,
		0.451533, -0.096567, -0.887014,
		25.814816, 36.409698, 36.813343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154406, 36.357525, 37.595257>,  <25.498743, 36.477295, 37.434254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154406, 36.357525, 37.595257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.120836, 36.501350, 37.223522>,  <26.100695, 36.587646, 37.000481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.120836, 36.501350, 37.223522>,  <26.154406, 36.357525, 37.595257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.120836, 36.501350, 37.223522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495907, 0.824007, 0.274025,
		0.864311, -0.437869, -0.247462,
		-0.083923, 0.359560, -0.929340,
		26.095659, 36.609219, 36.944721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725113, 36.657238, 37.546528>,  <26.154406, 36.357525, 37.595257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725113, 36.657238, 37.546528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520136, 36.838573, 37.254803>,  <26.397150, 36.947372, 37.079769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520136, 36.838573, 37.254803>,  <26.725113, 36.657238, 37.546528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520136, 36.838573, 37.254803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389804, 0.879553, 0.272835,
		0.765151, -0.144476, -0.627432,
		-0.512441, 0.453335, -0.729308,
		26.366404, 36.974575, 37.036011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213987, 37.109024, 37.263607>,  <26.725113, 36.657238, 37.546528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213987, 37.109024, 37.263607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855864, 37.231552, 37.134243>,  <26.640989, 37.305069, 37.056625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855864, 37.231552, 37.134243>,  <27.213987, 37.109024, 37.263607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855864, 37.231552, 37.134243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291494, 0.951882, 0.094619,
		0.336827, -0.009557, -0.941518,
		-0.895310, 0.306317, -0.323405,
		26.587271, 37.323448, 37.037220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365191, 37.591103, 36.814465>,  <27.213987, 37.109024, 37.263607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365191, 37.591103, 36.814465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982981, 37.687016, 36.883137>,  <26.753654, 37.744564, 36.924339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982981, 37.687016, 36.883137>,  <27.365191, 37.591103, 36.814465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982981, 37.687016, 36.883137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252015, 0.966267, 0.053070,
		-0.153164, 0.093976, -0.983722,
		-0.955526, 0.239785, 0.171680,
		26.696323, 37.758949, 36.934639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146580, 38.012501, 36.272892>,  <27.365191, 37.591103, 36.814465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146580, 38.012501, 36.272892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935722, 38.081776, 36.605667>,  <26.809208, 38.123341, 36.805332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935722, 38.081776, 36.605667>,  <27.146580, 38.012501, 36.272892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935722, 38.081776, 36.605667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446755, 0.889278, 0.097958,
		-0.722862, 0.423312, -0.546148,
		-0.527144, 0.173184, 0.831941,
		26.777578, 38.133732, 36.855251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947783, 38.735321, 36.216240>,  <27.146580, 38.012501, 36.272892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947783, 38.735321, 36.216240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857798, 38.682999, 36.602459>,  <26.803806, 38.651608, 36.834190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857798, 38.682999, 36.602459>,  <26.947783, 38.735321, 36.216240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857798, 38.682999, 36.602459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266026, 0.945054, 0.190009,
		-0.937348, 0.299606, -0.177804,
		-0.224962, -0.130804, 0.965548,
		26.790308, 38.643757, 36.892124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672705, 39.343651, 36.358616>,  <26.947783, 38.735321, 36.216240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672705, 39.343651, 36.358616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793943, 39.192047, 36.708355>,  <26.866688, 39.101086, 36.918198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793943, 39.192047, 36.708355>,  <26.672705, 39.343651, 36.358616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793943, 39.192047, 36.708355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354079, 0.896615, 0.265913,
		-0.884737, 0.228991, 0.405960,
		0.303098, -0.379005, 0.874349,
		26.884872, 39.078346, 36.970661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.330473, 39.810986, 36.929207>,  <26.672705, 39.343651, 36.358616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.330473, 39.810986, 36.929207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644243, 39.620323, 37.087936>,  <26.832506, 39.505924, 37.183174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644243, 39.620323, 37.087936>,  <26.330473, 39.810986, 36.929207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644243, 39.620323, 37.087936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370456, 0.873228, 0.316599,
		-0.497430, -0.101342, 0.861564,
		0.784427, -0.476658, 0.396828,
		26.879572, 39.477325, 37.206985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.334400, 40.044491, 37.618843>,  <26.330473, 39.810986, 36.929207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.334400, 40.044491, 37.618843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698769, 39.912399, 37.519913>,  <26.917391, 39.833145, 37.460556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698769, 39.912399, 37.519913>,  <26.334400, 40.044491, 37.618843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698769, 39.912399, 37.519913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396455, 0.866551, 0.303173,
		0.114203, -0.374220, 0.920281,
		0.910923, -0.330227, -0.247324,
		26.972046, 39.813332, 37.445717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693180, 40.116402, 38.233761>,  <26.334400, 40.044491, 37.618843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693180, 40.116402, 38.233761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952646, 40.096355, 37.929993>,  <27.108326, 40.084328, 37.747730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952646, 40.096355, 37.929993>,  <26.693180, 40.116402, 38.233761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952646, 40.096355, 37.929993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352721, 0.903994, 0.241624,
		0.674406, -0.424598, 0.604064,
		0.648663, -0.050113, -0.759424,
		27.147245, 40.081322, 37.702164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292894, 40.317287, 38.530113>,  <26.693180, 40.116402, 38.233761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292894, 40.317287, 38.530113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390160, 40.333252, 38.142448>,  <27.448519, 40.342831, 37.909847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390160, 40.333252, 38.142448>,  <27.292894, 40.317287, 38.530113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390160, 40.333252, 38.142448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641741, 0.742603, 0.191595,
		0.727350, -0.668541, 0.154962,
		0.243165, 0.039911, -0.969163,
		27.463108, 40.345226, 37.851700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054394, 40.293694, 38.482883>,  <27.292894, 40.317287, 38.530113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054394, 40.293694, 38.482883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926542, 40.446846, 38.136185>,  <27.849831, 40.538738, 37.928165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926542, 40.446846, 38.136185>,  <28.054394, 40.293694, 38.482883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926542, 40.446846, 38.136185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705294, 0.706989, 0.052216,
		0.632770, -0.594619, -0.496014,
		-0.319628, 0.382877, -0.866743,
		27.830654, 40.561710, 37.876163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659494, 40.418163, 38.083397>,  <28.054394, 40.293694, 38.482883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659494, 40.418163, 38.083397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.395693, 40.667168, 37.914860>,  <28.237411, 40.816570, 37.813740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.395693, 40.667168, 37.914860>,  <28.659494, 40.418163, 38.083397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395693, 40.667168, 37.914860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708939, 0.701450, -0.073303,
		0.249916, -0.347049, -0.903935,
		-0.659505, 0.622516, -0.421340,
		28.197842, 40.853924, 37.788456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947649, 40.585751, 37.492374>,  <28.659494, 40.418163, 38.083397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947649, 40.585751, 37.492374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691893, 40.877193, 37.590603>,  <28.538439, 41.052059, 37.649540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691893, 40.877193, 37.590603>,  <28.947649, 40.585751, 37.492374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691893, 40.877193, 37.590603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730028, 0.675530, -0.103530,
		-0.241324, 0.113077, -0.963834,
		-0.639392, 0.728610, 0.245571,
		28.500074, 41.095776, 37.664272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108135, 41.037464, 37.004665>,  <28.947649, 40.585751, 37.492374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108135, 41.037464, 37.004665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937874, 41.264240, 37.286770>,  <28.835718, 41.400307, 37.456032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937874, 41.264240, 37.286770>,  <29.108135, 41.037464, 37.004665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937874, 41.264240, 37.286770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689226, 0.708146, -0.153285,
		-0.586334, 0.420841, -0.692174,
		-0.425651, 0.566941, 0.705265,
		28.810179, 41.434322, 37.498348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972599, 41.641010, 36.642960>,  <29.108135, 41.037464, 37.004665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972599, 41.641010, 36.642960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978910, 41.716190, 37.035782>,  <28.982697, 41.761299, 37.271473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978910, 41.716190, 37.035782>,  <28.972599, 41.641010, 36.642960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978910, 41.716190, 37.035782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582366, 0.796657, -0.161825,
		-0.812774, 0.574466, -0.096887,
		0.015777, 0.187951, 0.982052,
		28.983643, 41.772575, 37.330399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145052, 42.391163, 36.661213>,  <28.972599, 41.641010, 36.642960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145052, 42.391163, 36.661213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244982, 42.262482, 37.026527>,  <29.304939, 42.185272, 37.245716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244982, 42.262482, 37.026527>,  <29.145052, 42.391163, 36.661213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244982, 42.262482, 37.026527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713142, 0.699148, 0.051192,
		-0.654993, 0.638515, 0.404082,
		0.249827, -0.321699, 0.913289,
		29.319929, 42.165974, 37.300514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274797, 43.040348, 37.132881>,  <29.145052, 42.391163, 36.661213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274797, 43.040348, 37.132881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468954, 42.727711, 37.289600>,  <29.585447, 42.540127, 37.383633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468954, 42.727711, 37.289600>,  <29.274797, 43.040348, 37.132881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468954, 42.727711, 37.289600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780497, 0.589309, 0.208663,
		-0.393979, 0.204513, 0.896077,
		0.485392, -0.781594, 0.391797,
		29.614573, 42.493233, 37.407139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588446, 43.474747, 36.675961>,  <29.274797, 43.040348, 37.132881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588446, 43.474747, 36.675961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213369, 43.336708, 36.659740>,  <28.988323, 43.253887, 36.650009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213369, 43.336708, 36.659740>,  <29.588446, 43.474747, 36.675961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213369, 43.336708, 36.659740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268758, 0.794300, -0.544846,
		0.220233, -0.499999, -0.837555,
		-0.937693, -0.345093, -0.040552,
		28.932062, 43.233181, 36.647575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323441, 43.489643, 35.989090>,  <29.588446, 43.474747, 36.675961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323441, 43.489643, 35.989090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010559, 43.526093, 36.235619>,  <28.822830, 43.547962, 36.383537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010559, 43.526093, 36.235619>,  <29.323441, 43.489643, 35.989090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010559, 43.526093, 36.235619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335349, 0.772136, -0.539765,
		-0.525070, -0.628890, -0.573411,
		-0.782204, 0.091122, 0.616323,
		28.775898, 43.553429, 36.420517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733852, 43.341194, 35.685619>,  <29.323441, 43.489643, 35.989090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733852, 43.341194, 35.685619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650541, 43.628429, 35.951241>,  <28.600555, 43.800770, 36.110615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650541, 43.628429, 35.951241>,  <28.733852, 43.341194, 35.685619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650541, 43.628429, 35.951241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432485, 0.541344, -0.721043,
		-0.877255, -0.437370, 0.197814,
		-0.208277, 0.718091, 0.664053,
		28.588058, 43.843857, 36.150455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323502, 42.835266, 36.021206>,  <28.733852, 43.341194, 35.685619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323502, 42.835266, 36.021206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614571, 42.781628, 35.752129>,  <28.789211, 42.749443, 35.590683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614571, 42.781628, 35.752129>,  <28.323502, 42.835266, 36.021206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614571, 42.781628, 35.752129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060924, -0.989463, 0.131342,
		-0.683216, -0.054591, -0.728173,
		0.727671, -0.134098, -0.672691,
		28.832872, 42.741398, 35.550320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218576, 42.174175, 35.642193>,  <28.323502, 42.835266, 36.021206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218576, 42.174175, 35.642193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601847, 42.288467, 35.635712>,  <28.831808, 42.357040, 35.631821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601847, 42.288467, 35.635712>,  <28.218576, 42.174175, 35.642193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601847, 42.288467, 35.635712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278807, -0.919198, 0.278104,
		0.064565, -0.270991, -0.960414,
		0.958174, 0.285726, -0.016206,
		28.889299, 42.374184, 35.630852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559147, 41.514656, 35.749985>,  <28.218576, 42.174175, 35.642193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559147, 41.514656, 35.749985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864117, 41.772469, 35.772934>,  <29.047098, 41.927155, 35.786705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864117, 41.772469, 35.772934>,  <28.559147, 41.514656, 35.749985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864117, 41.772469, 35.772934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574028, -0.714612, 0.399778,
		0.298669, -0.271866, -0.914815,
		0.762423, 0.644531, 0.057374,
		29.092844, 41.965828, 35.790146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199772, 41.242241, 35.448612>,  <28.559147, 41.514656, 35.749985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199772, 41.242241, 35.448612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257425, 41.501297, 35.747887>,  <29.292017, 41.656731, 35.927452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257425, 41.501297, 35.747887>,  <29.199772, 41.242241, 35.448612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257425, 41.501297, 35.747887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319501, -0.746044, 0.584241,
		0.936560, 0.154839, -0.314452,
		0.144132, 0.647645, 0.748186,
		29.300665, 41.695591, 35.972343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738188, 41.527660, 34.981949>,  <29.199772, 41.242241, 35.448612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738188, 41.527660, 34.981949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617598, 41.205215, 34.778263>,  <29.545244, 41.011749, 34.656052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617598, 41.205215, 34.778263>,  <29.738188, 41.527660, 34.981949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617598, 41.205215, 34.778263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191025, 0.472172, -0.860559,
		0.934143, -0.356709, 0.011640,
		-0.301474, -0.806109, -0.509216,
		29.527155, 40.963383, 34.625500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250999, 41.323299, 34.513439>,  <29.738188, 41.527660, 34.981949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250999, 41.323299, 34.513439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885628, 41.231850, 34.378754>,  <29.666405, 41.176979, 34.297943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885628, 41.231850, 34.378754>,  <30.250999, 41.323299, 34.513439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885628, 41.231850, 34.378754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313150, 0.133655, -0.940252,
		0.259968, -0.964296, -0.050491,
		-0.913430, -0.228624, -0.336715,
		29.611599, 41.163261, 34.277740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239580, 40.563030, 34.106495>,  <30.250999, 41.323299, 34.513439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239580, 40.563030, 34.106495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023970, 40.887901, 34.017216>,  <29.894604, 41.082825, 33.963650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023970, 40.887901, 34.017216>,  <30.239580, 40.563030, 34.106495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023970, 40.887901, 34.017216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609897, 0.193594, -0.768470,
		-0.580925, -0.550353, -0.599698,
		-0.539028, 0.812178, -0.223195,
		29.862261, 41.131554, 33.950256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157160, 40.558167, 33.440304>,  <30.239580, 40.563030, 34.106495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157160, 40.558167, 33.440304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061209, 40.945084, 33.473286>,  <30.003637, 41.177235, 33.493076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061209, 40.945084, 33.473286>,  <30.157160, 40.558167, 33.440304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061209, 40.945084, 33.473286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595424, 0.213676, -0.774476,
		-0.766765, -0.136684, -0.627207,
		-0.239878, 0.967295, 0.082454,
		29.989244, 41.235271, 33.498020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995411, 40.748425, 32.711845>,  <30.157160, 40.558167, 33.440304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995411, 40.748425, 32.711845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102459, 41.067474, 32.928059>,  <30.166687, 41.258904, 33.057785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102459, 41.067474, 32.928059>,  <29.995411, 40.748425, 32.711845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102459, 41.067474, 32.928059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583535, 0.312240, -0.749662,
		-0.766725, 0.516043, -0.381881,
		0.267619, 0.797625, 0.540532,
		30.182745, 41.306763, 33.090218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580223, 41.367146, 32.978985>,  <29.995411, 40.748425, 32.711845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580223, 41.367146, 32.978985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265965, 41.566010, 32.831692>,  <29.077410, 41.685329, 32.743317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265965, 41.566010, 32.831692>,  <29.580223, 41.367146, 32.978985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265965, 41.566010, 32.831692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608559, -0.728206, 0.315234,
		-0.111427, 0.471752, 0.874662,
		-0.785646, 0.497159, -0.368231,
		29.030272, 41.715157, 32.721222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236221, 41.625305, 33.532013>,  <29.580223, 41.367146, 32.978985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236221, 41.625305, 33.532013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.014786, 41.544250, 33.208908>,  <28.881924, 41.495617, 33.015045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.014786, 41.544250, 33.208908>,  <29.236221, 41.625305, 33.532013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014786, 41.544250, 33.208908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439028, -0.753205, 0.489833,
		-0.707667, 0.625796, 0.328004,
		-0.553590, -0.202635, -0.807761,
		28.848709, 41.483459, 32.966579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486887, 41.513412, 33.728550>,  <29.236221, 41.625305, 33.532013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486887, 41.513412, 33.728550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537281, 41.317108, 33.383694>,  <28.567518, 41.199326, 33.176781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537281, 41.317108, 33.383694>,  <28.486887, 41.513412, 33.728550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537281, 41.317108, 33.383694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381849, -0.826093, 0.414442,
		-0.915597, 0.276993, -0.291473,
		0.125986, -0.490761, -0.862138,
		28.575077, 41.169880, 33.125053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806087, 41.214279, 33.441936>,  <28.486887, 41.513412, 33.728550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806087, 41.214279, 33.441936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101906, 40.999493, 33.279583>,  <28.279396, 40.870621, 33.182171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101906, 40.999493, 33.279583>,  <27.806087, 41.214279, 33.441936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101906, 40.999493, 33.279583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390607, -0.833445, 0.390891,
		-0.548177, -0.130540, -0.826112,
		0.739546, -0.536963, -0.405885,
		28.323769, 40.838406, 33.157818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637575, 40.550007, 33.565464>,  <27.806087, 41.214279, 33.441936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637575, 40.550007, 33.565464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.986979, 40.483612, 33.382412>,  <28.196621, 40.443775, 33.272579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.986979, 40.483612, 33.382412>,  <27.637575, 40.550007, 33.565464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986979, 40.483612, 33.382412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017740, -0.950304, 0.310819,
		-0.486482, -0.263385, -0.833045,
		0.873510, -0.165986, -0.457633,
		28.249031, 40.433815, 33.245121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394169, 39.947777, 33.321804>,  <27.637575, 40.550007, 33.565464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394169, 39.947777, 33.321804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794024, 39.957924, 33.325417>,  <28.033936, 39.964012, 33.327583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794024, 39.957924, 33.325417>,  <27.394169, 39.947777, 33.321804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794024, 39.957924, 33.325417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022750, -0.975057, 0.220787,
		0.014403, -0.220502, -0.975280,
		0.999637, 0.025368, 0.009027,
		28.093914, 39.965534, 33.328125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646582, 39.488255, 32.782196>,  <27.394169, 39.947777, 33.321804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646582, 39.488255, 32.782196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926521, 39.498901, 33.067715>,  <28.094484, 39.505291, 33.239025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926521, 39.498901, 33.067715>,  <27.646582, 39.488255, 32.782196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926521, 39.498901, 33.067715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020548, -0.999642, 0.017129,
		0.713995, 0.002679, -0.700146,
		0.699850, 0.026616, 0.713794,
		28.136477, 39.506886, 33.281853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951551, 38.866898, 32.680973>,  <27.646582, 39.488255, 32.782196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951551, 38.866898, 32.680973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101467, 38.964703, 33.038689>,  <28.191416, 39.023384, 33.253319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101467, 38.964703, 33.038689>,  <27.951551, 38.866898, 32.680973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101467, 38.964703, 33.038689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028274, -0.961132, 0.274637,
		0.926679, -0.128216, -0.353309,
		0.374790, 0.244511, 0.894286,
		28.213903, 39.038055, 33.306976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535427, 38.340866, 32.882584>,  <27.951551, 38.866898, 32.680973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535427, 38.340866, 32.882584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415260, 38.521049, 33.218876>,  <28.343161, 38.629162, 33.420650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415260, 38.521049, 33.218876>,  <28.535427, 38.340866, 32.882584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415260, 38.521049, 33.218876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133104, -0.892624, 0.430703,
		0.944476, 0.017485, 0.328116,
		-0.300415, 0.450462, 0.840735,
		28.325136, 38.656189, 33.471096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940935, 38.065029, 33.413021>,  <28.535427, 38.340866, 32.882584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940935, 38.065029, 33.413021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650126, 38.233196, 33.630161>,  <28.475639, 38.334099, 33.760445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650126, 38.233196, 33.630161>,  <28.940935, 38.065029, 33.413021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650126, 38.233196, 33.630161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019763, -0.777476, 0.628602,
		0.686328, 0.467737, 0.556934,
		-0.727023, 0.420421, 0.542848,
		28.432018, 38.359322, 33.793015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164810, 38.091316, 34.029228>,  <28.940935, 38.065029, 33.413021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164810, 38.091316, 34.029228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765406, 38.088196, 34.050808>,  <28.525763, 38.086323, 34.063755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765406, 38.088196, 34.050808>,  <29.164810, 38.091316, 34.029228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765406, 38.088196, 34.050808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037642, -0.814501, 0.578940,
		0.039427, 0.580110, 0.813584,
		-0.998513, -0.007800, 0.053950,
		28.465851, 38.085857, 34.066994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997225, 38.038551, 34.884186>,  <29.164810, 38.091316, 34.029228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997225, 38.038551, 34.884186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675070, 37.931774, 34.672493>,  <28.481777, 37.867706, 34.545479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675070, 37.931774, 34.672493>,  <28.997225, 38.038551, 34.884186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675070, 37.931774, 34.672493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045238, -0.862565, 0.503921,
		-0.591017, 0.429794, 0.682624,
		-0.805389, -0.266945, -0.529233,
		28.433453, 37.851692, 34.513721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546127, 37.711620, 35.291214>,  <28.997225, 38.038551, 34.884186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546127, 37.711620, 35.291214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403210, 37.583767, 34.940174>,  <28.317459, 37.507053, 34.729549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403210, 37.583767, 34.940174>,  <28.546127, 37.711620, 35.291214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403210, 37.583767, 34.940174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226590, -0.881884, 0.413446,
		-0.906089, 0.346577, 0.242667,
		-0.357296, -0.319633, -0.877596,
		28.296021, 37.487877, 34.676895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074846, 37.244946, 35.548382>,  <28.546127, 37.711620, 35.291214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074846, 37.244946, 35.548382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096560, 37.154823, 35.159271>,  <28.109587, 37.100750, 34.925804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096560, 37.154823, 35.159271>,  <28.074846, 37.244946, 35.548382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096560, 37.154823, 35.159271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313985, -0.928645, 0.197566,
		-0.947875, 0.294712, -0.121151,
		0.054281, -0.225307, -0.972775,
		28.112844, 37.087231, 34.867439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408735, 36.913078, 35.460773>,  <28.074846, 37.244946, 35.548382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408735, 36.913078, 35.460773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694769, 36.825039, 35.195381>,  <27.866390, 36.772217, 35.036144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694769, 36.825039, 35.195381>,  <27.408735, 36.913078, 35.460773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694769, 36.825039, 35.195381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257871, -0.965254, 0.042272,
		-0.649735, 0.140866, -0.746995,
		0.715085, -0.220094, -0.663484,
		27.909294, 36.759010, 34.996334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061304, 36.567036, 34.927917>,  <27.408735, 36.913078, 35.460773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061304, 36.567036, 34.927917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450132, 36.473206, 34.930992>,  <27.683430, 36.416908, 34.932838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450132, 36.473206, 34.930992>,  <27.061304, 36.567036, 34.927917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450132, 36.473206, 34.930992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234397, -0.968652, 0.082282,
		-0.011855, -0.081785, -0.996579,
		0.972069, -0.234571, 0.007687,
		27.741753, 36.402836, 34.933300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985973, 35.934559, 34.715668>,  <27.061304, 36.567036, 34.927917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985973, 35.934559, 34.715668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.358557, 35.946140, 34.860744>,  <27.582108, 35.953091, 34.947788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.358557, 35.946140, 34.860744>,  <26.985973, 35.934559, 34.715668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358557, 35.946140, 34.860744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069286, -0.964470, 0.254945,
		0.357184, -0.262600, -0.896360,
		0.931461, 0.028957, 0.362688,
		27.637995, 35.954826, 34.969551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280540, 35.406624, 34.365898>,  <26.985973, 35.934559, 34.715668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280540, 35.406624, 34.365898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488518, 35.488613, 34.697598>,  <27.613304, 35.537807, 34.896618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488518, 35.488613, 34.697598>,  <27.280540, 35.406624, 34.365898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488518, 35.488613, 34.697598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039157, -0.975482, 0.216566,
		0.853304, -0.080131, -0.515220,
		0.519942, 0.204972, 0.829245,
		27.644501, 35.550106, 34.946369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913586, 35.045055, 34.391571>,  <27.280540, 35.406624, 34.365898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913586, 35.045055, 34.391571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855974, 35.118114, 34.780598>,  <27.821407, 35.161949, 35.014015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855974, 35.118114, 34.780598>,  <27.913586, 35.045055, 34.391571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855974, 35.118114, 34.780598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012016, -0.982423, 0.186282,
		0.989501, 0.038516, 0.139301,
		-0.144027, 0.182652, 0.972571,
		27.812765, 35.172909, 35.072369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309668, 34.493752, 34.724888>,  <27.913586, 35.045055, 34.391571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309668, 34.493752, 34.724888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040304, 34.645489, 34.978699>,  <27.878687, 34.736530, 35.130985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040304, 34.645489, 34.978699>,  <28.309668, 34.493752, 34.724888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040304, 34.645489, 34.978699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382179, -0.913355, 0.140432,
		0.632820, -0.147935, 0.760035,
		-0.673407, 0.379338, 0.634527,
		27.838282, 34.759289, 35.169056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897043, 34.728947, 34.372875>,  <28.309668, 34.493752, 34.724888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897043, 34.728947, 34.372875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122419, 34.973770, 34.150913>,  <29.257645, 35.120663, 34.017735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122419, 34.973770, 34.150913>,  <28.897043, 34.728947, 34.372875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122419, 34.973770, 34.150913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711523, -0.700842, -0.050561,
		-0.419847, -0.366339, -0.830376,
		0.563440, 0.612059, -0.554905,
		29.291451, 35.157387, 33.984440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244419, 34.460922, 33.833130>,  <28.897043, 34.728947, 34.372875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244419, 34.460922, 33.833130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489525, 34.772678, 33.885395>,  <29.636589, 34.959732, 33.916752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489525, 34.772678, 33.885395>,  <29.244419, 34.460922, 33.833130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489525, 34.772678, 33.885395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790156, -0.606982, -0.085006,
		0.013055, 0.155330, -0.987776,
		0.612766, 0.779388, 0.130659,
		29.673355, 35.006496, 33.924591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691540, 34.220100, 33.464676>,  <29.244419, 34.460922, 33.833130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691540, 34.220100, 33.464676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846495, 34.484360, 33.721886>,  <29.939466, 34.642914, 33.876213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846495, 34.484360, 33.721886>,  <29.691540, 34.220100, 33.464676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846495, 34.484360, 33.721886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906133, -0.401364, -0.133531,
		0.169870, 0.634394, -0.754114,
		0.387386, 0.660644, 0.643025,
		29.962711, 34.682552, 33.914795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281252, 34.503086, 33.119453>,  <29.691540, 34.220100, 33.464676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281252, 34.503086, 33.119453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318573, 34.546017, 33.515388>,  <30.340965, 34.571774, 33.752949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318573, 34.546017, 33.515388>,  <30.281252, 34.503086, 33.119453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318573, 34.546017, 33.515388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951336, -0.302869, -0.056836,
		0.293691, 0.946970, -0.130363,
		0.093305, 0.107326, 0.989836,
		30.346565, 34.578213, 33.812340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065916, 34.612213, 33.321266>,  <30.281252, 34.503086, 33.119453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065916, 34.612213, 33.321266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909531, 34.500622, 33.672112>,  <30.815701, 34.433666, 33.882618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909531, 34.500622, 33.672112>,  <31.065916, 34.612213, 33.321266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909531, 34.500622, 33.672112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892541, -0.347629, 0.287272,
		0.224766, 0.895169, 0.384907,
		-0.390962, -0.278976, 0.877110,
		30.792242, 34.416927, 33.935246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519758, 34.911591, 33.841408>,  <31.065916, 34.612213, 33.321266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519758, 34.911591, 33.841408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316490, 34.607777, 34.003822>,  <31.194529, 34.425488, 34.101273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316490, 34.607777, 34.003822>,  <31.519758, 34.911591, 33.841408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316490, 34.607777, 34.003822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768824, -0.187576, 0.611330,
		-0.388166, 0.622831, 0.679271,
		-0.508170, -0.759538, 0.406037,
		31.164040, 34.379917, 34.125633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275360, 35.022064, 34.592964>,  <31.519758, 34.911591, 33.841408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275360, 35.022064, 34.592964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353432, 34.637989, 34.513023>,  <31.400274, 34.407543, 34.465057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353432, 34.637989, 34.513023>,  <31.275360, 35.022064, 34.592964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353432, 34.637989, 34.513023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753841, 0.016517, 0.656849,
		-0.627399, -0.278859, 0.727055,
		0.195177, -0.960190, -0.199852,
		31.411985, 34.349934, 34.453068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147388, 34.582371, 35.183849>,  <31.275360, 35.022064, 34.592964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147388, 34.582371, 35.183849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423037, 34.395367, 34.962383>,  <31.588427, 34.283165, 34.829502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423037, 34.395367, 34.962383>,  <31.147388, 34.582371, 35.183849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423037, 34.395367, 34.962383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650511, 0.062460, 0.756924,
		-0.319289, -0.881778, 0.347164,
		0.689122, -0.467512, -0.553663,
		31.629774, 34.255112, 34.796284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388044, 33.969311, 35.570000>,  <31.147388, 34.582371, 35.183849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388044, 33.969311, 35.570000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662937, 34.095505, 35.308254>,  <31.827873, 34.171219, 35.151207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662937, 34.095505, 35.308254>,  <31.388044, 33.969311, 35.570000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662937, 34.095505, 35.308254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683478, 0.024374, 0.729564,
		0.246113, -0.948619, -0.198874,
		0.687230, 0.315481, -0.654359,
		31.869106, 34.190147, 35.111946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939064, 33.550224, 35.700577>,  <31.388044, 33.969311, 35.570000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939064, 33.550224, 35.700577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085308, 33.871277, 35.512058>,  <32.173054, 34.063908, 35.398949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085308, 33.871277, 35.512058>,  <31.939064, 33.550224, 35.700577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085308, 33.871277, 35.512058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740060, 0.056409, 0.670171,
		0.564482, -0.593808, -0.573368,
		0.365610, 0.802627, -0.471296,
		32.194992, 34.112064, 35.370670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633053, 33.384914, 35.516338>,  <31.939064, 33.550224, 35.700577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633053, 33.384914, 35.516338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581783, 33.781349, 35.530815>,  <32.551022, 34.019211, 35.539501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581783, 33.781349, 35.530815>,  <32.633053, 33.384914, 35.516338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581783, 33.781349, 35.530815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731224, 0.069785, 0.678559,
		0.669988, 0.113437, -0.733654,
		-0.128172, 0.991091, 0.036192,
		32.543331, 34.078678, 35.541672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341965, 33.721733, 35.598404>,  <32.633053, 33.384914, 35.516338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341965, 33.721733, 35.598404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071182, 33.996498, 35.704151>,  <32.908714, 34.161358, 35.767601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071182, 33.996498, 35.704151>,  <33.341965, 33.721733, 35.598404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071182, 33.996498, 35.704151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480163, 0.139932, 0.865946,
		0.557833, 0.713145, -0.424556,
		-0.676954, 0.686909, 0.264367,
		32.868095, 34.202572, 35.783463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780319, 34.305664, 35.909519>,  <33.341965, 33.721733, 35.598404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780319, 34.305664, 35.909519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410076, 34.377731, 36.042660>,  <33.187931, 34.420971, 36.122543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410076, 34.377731, 36.042660>,  <33.780319, 34.305664, 35.909519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410076, 34.377731, 36.042660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359073, 0.139951, 0.922757,
		0.119671, 0.973628, -0.194234,
		-0.925605, 0.180172, 0.332856,
		33.132393, 34.431782, 36.142517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841141, 34.863525, 36.345314>,  <33.780319, 34.305664, 35.909519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841141, 34.863525, 36.345314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495033, 34.684200, 36.435055>,  <33.287369, 34.576607, 36.488899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495033, 34.684200, 36.435055>,  <33.841141, 34.863525, 36.345314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495033, 34.684200, 36.435055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122581, 0.244729, 0.961811,
		-0.486098, 0.859722, -0.156801,
		-0.865264, -0.448314, 0.224348,
		33.235455, 34.549706, 36.502357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623108, 35.252846, 36.886032>,  <33.841141, 34.863525, 36.345314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623108, 35.252846, 36.886032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381329, 34.935265, 36.912197>,  <33.236259, 34.744717, 36.927895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381329, 34.935265, 36.912197>,  <33.623108, 35.252846, 36.886032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381329, 34.935265, 36.912197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226194, 0.249777, 0.941514,
		-0.763856, 0.554302, -0.330565,
		-0.604451, -0.793953, 0.065413,
		33.199993, 34.697079, 36.931820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977329, 35.486694, 37.132805>,  <33.623108, 35.252846, 36.886032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977329, 35.486694, 37.132805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984791, 35.096321, 37.219719>,  <32.989265, 34.862099, 37.271866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984791, 35.096321, 37.219719>,  <32.977329, 35.486694, 37.132805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984791, 35.096321, 37.219719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356328, 0.196566, 0.913451,
		-0.934175, -0.094462, -0.344085,
		0.018651, -0.975929, 0.217286,
		32.990387, 34.803543, 37.284904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371872, 35.419323, 37.565872>,  <32.977329, 35.486694, 37.132805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371872, 35.419323, 37.565872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593006, 35.091709, 37.627266>,  <32.725685, 34.895142, 37.664101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593006, 35.091709, 37.627266>,  <32.371872, 35.419323, 37.565872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593006, 35.091709, 37.627266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173977, 0.066679, 0.982490,
		-0.814928, -0.569854, -0.105631,
		0.552833, -0.819036, 0.153480,
		32.758858, 34.845997, 37.673309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979177, 34.853107, 38.013885>,  <32.371872, 35.419323, 37.565872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979177, 34.853107, 38.013885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370586, 34.773327, 38.034710>,  <32.605431, 34.725460, 38.047207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370586, 34.773327, 38.034710>,  <31.979177, 34.853107, 38.013885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370586, 34.773327, 38.034710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077016, -0.119457, 0.989848,
		-0.191210, -0.972599, -0.132252,
		0.978523, -0.199455, 0.052064,
		32.664143, 34.713493, 38.050331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010395, 34.261044, 38.493702>,  <31.979177, 34.853107, 38.013885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010395, 34.261044, 38.493702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374802, 34.425846, 38.500683>,  <32.593445, 34.524727, 38.504871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374802, 34.425846, 38.500683>,  <32.010395, 34.261044, 38.493702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374802, 34.425846, 38.500683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028103, 0.019802, 0.999409,
		0.411417, -0.910966, 0.029619,
		0.911014, 0.412006, 0.017454,
		32.648106, 34.549446, 38.505920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290386, 33.853207, 39.023525>,  <32.010395, 34.261044, 38.493702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290386, 33.853207, 39.023525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543282, 34.154030, 38.949032>,  <32.695019, 34.334526, 38.904335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543282, 34.154030, 38.949032>,  <32.290386, 33.853207, 39.023525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543282, 34.154030, 38.949032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306459, -0.021979, 0.951630,
		0.711590, -0.658728, -0.244372,
		0.632236, 0.752061, -0.186233,
		32.732952, 34.379646, 38.893162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991573, 33.598183, 39.020267>,  <32.290386, 33.853207, 39.023525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991573, 33.598183, 39.020267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933037, 33.974014, 39.144054>,  <32.897915, 34.199512, 39.218327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933037, 33.974014, 39.144054>,  <32.991573, 33.598183, 39.020267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933037, 33.974014, 39.144054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189186, -0.280481, 0.941031,
		0.970975, 0.196257, -0.136711,
		-0.146339, 0.939582, 0.309469,
		32.889133, 34.255890, 39.236897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625877, 33.786438, 39.407982>,  <32.991573, 33.598183, 39.020267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625877, 33.786438, 39.407982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343102, 34.049580, 39.511883>,  <33.173435, 34.207462, 39.574223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343102, 34.049580, 39.511883>,  <33.625877, 33.786438, 39.407982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343102, 34.049580, 39.511883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195265, -0.171457, 0.965647,
		0.679787, 0.733374, -0.007245,
		-0.706938, 0.657850, 0.259756,
		33.131020, 34.246933, 39.589809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823589, 34.139977, 40.029469>,  <33.625877, 33.786438, 39.407982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823589, 34.139977, 40.029469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429550, 34.208622, 40.025047>,  <33.193127, 34.249809, 40.022392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429550, 34.208622, 40.025047>,  <33.823589, 34.139977, 40.029469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429550, 34.208622, 40.025047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065385, -0.314317, 0.947064,
		0.159053, 0.933678, 0.320856,
		-0.985103, 0.171613, -0.011055,
		33.134018, 34.260105, 40.021732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700851, 34.381126, 40.654305>,  <33.823589, 34.139977, 40.029469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700851, 34.381126, 40.654305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324768, 34.322395, 40.531372>,  <33.099117, 34.287159, 40.457611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324768, 34.322395, 40.531372>,  <33.700851, 34.381126, 40.654305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324768, 34.322395, 40.531372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252021, -0.307095, 0.917703,
		-0.229122, 0.940285, 0.251730,
		-0.940207, -0.146824, -0.307333,
		33.042706, 34.278347, 40.439171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159817, 34.746330, 41.154205>,  <33.700851, 34.381126, 40.654305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159817, 34.746330, 41.154205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967377, 34.459362, 40.952671>,  <32.851913, 34.287182, 40.831749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967377, 34.459362, 40.952671>,  <33.159817, 34.746330, 41.154205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967377, 34.459362, 40.952671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450653, -0.290582, 0.844082,
		-0.751968, 0.633141, -0.183509,
		-0.481098, -0.717422, -0.503836,
		32.823048, 34.244137, 40.801521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533558, 34.726707, 41.416836>,  <33.159817, 34.746330, 41.154205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533558, 34.726707, 41.416836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579956, 34.363358, 41.256134>,  <32.607796, 34.145348, 41.159714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579956, 34.363358, 41.256134>,  <32.533558, 34.726707, 41.416836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579956, 34.363358, 41.256134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411197, -0.412115, 0.813067,
		-0.904136, 0.070887, -0.421323,
		0.115997, -0.908370, -0.401756,
		32.614754, 34.090847, 41.135609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959255, 34.413616, 41.520706>,  <32.533558, 34.726707, 41.416836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959255, 34.413616, 41.520706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219276, 34.113056, 41.475403>,  <32.375290, 33.932720, 41.448219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219276, 34.113056, 41.475403>,  <31.959255, 34.413616, 41.520706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219276, 34.113056, 41.475403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504284, -0.538068, 0.675411,
		-0.568450, -0.381932, -0.728692,
		0.650047, -0.751405, -0.113263,
		32.414291, 33.887634, 41.441425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549561, 33.803143, 41.664856>,  <31.959255, 34.413616, 41.520706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549561, 33.803143, 41.664856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925310, 33.678272, 41.721596>,  <32.150761, 33.603352, 41.755642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925310, 33.678272, 41.721596>,  <31.549561, 33.803143, 41.664856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925310, 33.678272, 41.721596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299543, -0.545765, 0.782570,
		-0.166881, -0.777617, -0.606187,
		0.939374, -0.312175, 0.141852,
		32.207123, 33.584621, 41.764153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400867, 33.072891, 41.912231>,  <31.549561, 33.803143, 41.664856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400867, 33.072891, 41.912231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778620, 33.160107, 42.010708>,  <32.005272, 33.212437, 42.069794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778620, 33.160107, 42.010708>,  <31.400867, 33.072891, 41.912231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778620, 33.160107, 42.010708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117922, -0.474312, 0.872424,
		0.306987, -0.852930, -0.422220,
		0.944380, 0.218034, 0.246187,
		32.061935, 33.225517, 42.084564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584810, 32.454765, 42.327644>,  <31.400867, 33.072891, 41.912231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584810, 32.454765, 42.327644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856928, 32.725952, 42.439049>,  <32.020199, 32.888664, 42.505890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856928, 32.725952, 42.439049>,  <31.584810, 32.454765, 42.327644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856928, 32.725952, 42.439049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091049, -0.455212, 0.885715,
		0.727262, -0.577189, -0.371406,
		0.680294, 0.677964, 0.278506,
		32.061016, 32.929340, 42.522602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184258, 32.044754, 42.784149>,  <31.584810, 32.454765, 42.327644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184258, 32.044754, 42.784149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232536, 32.429287, 42.883167>,  <32.261501, 32.660007, 42.942577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232536, 32.429287, 42.883167>,  <32.184258, 32.044754, 42.784149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232536, 32.429287, 42.883167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086294, -0.238265, 0.967359,
		0.988932, -0.138117, 0.054199,
		0.120695, 0.961329, 0.247547,
		32.268745, 32.717686, 42.957432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707882, 32.080849, 43.358841>,  <32.184258, 32.044754, 42.784149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707882, 32.080849, 43.358841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508953, 32.427834, 43.364277>,  <32.389595, 32.636024, 43.367538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508953, 32.427834, 43.364277>,  <32.707882, 32.080849, 43.358841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508953, 32.427834, 43.364277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050296, 0.013190, 0.998647,
		0.866105, 0.497336, -0.050189,
		-0.497325, 0.867458, 0.013590,
		32.359756, 32.688072, 43.368355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072292, 32.410492, 43.815197>,  <32.707882, 32.080849, 43.358841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072292, 32.410492, 43.815197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736870, 32.628399, 43.812233>,  <32.535618, 32.759144, 43.810455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736870, 32.628399, 43.812233>,  <33.072292, 32.410492, 43.815197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736870, 32.628399, 43.812233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010886, -0.003161, 0.999936,
		0.544711, 0.838580, 0.008582,
		-0.838553, 0.544769, -0.007407,
		32.485302, 32.791828, 43.810009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188011, 32.944683, 44.217316>,  <33.072292, 32.410492, 43.815197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188011, 32.944683, 44.217316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796066, 32.865093, 44.210598>,  <32.560898, 32.817341, 44.206566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796066, 32.865093, 44.210598>,  <33.188011, 32.944683, 44.217316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796066, 32.865093, 44.210598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015928, -0.005976, 0.999855,
		-0.199046, 0.979986, 0.002686,
		-0.979861, -0.198975, -0.016799,
		32.502110, 32.805401, 44.205559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875443, 33.459156, 44.649521>,  <33.188011, 32.944683, 44.217316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875443, 33.459156, 44.649521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631908, 33.142448, 44.629852>,  <32.485786, 32.952423, 44.618053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631908, 33.142448, 44.629852>,  <32.875443, 33.459156, 44.649521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631908, 33.142448, 44.629852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011934, -0.052831, 0.998532,
		-0.793208, 0.608527, 0.022716,
		-0.608834, -0.791772, -0.049168,
		32.449257, 32.904915, 44.615101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277363, 33.627354, 45.098106>,  <32.875443, 33.459156, 44.649521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277363, 33.627354, 45.098106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275406, 33.229965, 45.052521>,  <32.274231, 32.991531, 45.025169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275406, 33.229965, 45.052521>,  <32.277363, 33.627354, 45.098106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275406, 33.229965, 45.052521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080935, -0.113196, 0.990270,
		-0.996707, 0.014064, -0.079854,
		-0.004888, -0.993473, -0.113962,
		32.273941, 32.931923, 45.018333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841486, 33.415676, 45.523968>,  <32.277363, 33.627354, 45.098106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841486, 33.415676, 45.523968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015171, 33.062088, 45.454632>,  <32.119381, 32.849934, 45.413029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015171, 33.062088, 45.454632>,  <31.841486, 33.415676, 45.523968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015171, 33.062088, 45.454632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011058, -0.187186, 0.982262,
		-0.900742, -0.428429, -0.071504,
		0.434214, -0.883974, -0.173344,
		32.145435, 32.796894, 45.402630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407881, 32.888077, 45.883888>,  <31.841486, 33.415676, 45.523968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407881, 32.888077, 45.883888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766872, 32.715767, 45.846012>,  <31.982267, 32.612381, 45.823288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766872, 32.715767, 45.846012>,  <31.407881, 32.888077, 45.883888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766872, 32.715767, 45.846012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009067, -0.232666, 0.972514,
		-0.440968, -0.871951, -0.212718,
		0.897477, -0.430777, -0.094692,
		32.036118, 32.586533, 45.817604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380419, 32.318069, 46.263176>,  <31.407881, 32.888077, 45.883888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380419, 32.318069, 46.263176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771355, 32.392345, 46.222527>,  <32.005917, 32.436913, 46.198135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771355, 32.392345, 46.222527>,  <31.380419, 32.318069, 46.263176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771355, 32.392345, 46.222527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157611, -0.317869, 0.934943,
		0.141310, -0.929773, -0.339933,
		0.977338, 0.185694, -0.101624,
		32.064556, 32.448055, 46.192039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618973, 31.979628, 46.762272>,  <31.380419, 32.318069, 46.263176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618973, 31.979628, 46.762272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944914, 32.201260, 46.694138>,  <32.140480, 32.334240, 46.653259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944914, 32.201260, 46.694138>,  <31.618973, 31.979628, 46.762272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944914, 32.201260, 46.694138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271409, -0.105039, 0.956715,
		0.512204, -0.825811, -0.235973,
		0.814852, 0.554078, -0.170332,
		32.189369, 32.367481, 46.643040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131218, 31.587229, 47.027283>,  <31.618973, 31.979628, 46.762272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131218, 31.587229, 47.027283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284168, 31.956715, 47.017971>,  <32.375938, 32.178406, 47.012386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284168, 31.956715, 47.017971>,  <32.131218, 31.587229, 47.027283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284168, 31.956715, 47.017971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500483, -0.185869, 0.845559,
		0.776729, -0.334967, -0.533375,
		0.382372, 0.923715, -0.023275,
		32.398880, 32.233829, 47.010990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783508, 31.603544, 46.923260>,  <32.131218, 31.587229, 47.027283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783508, 31.603544, 46.923260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702282, 31.931118, 47.137962>,  <32.653545, 32.127663, 47.266785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702282, 31.931118, 47.137962>,  <32.783508, 31.603544, 46.923260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702282, 31.931118, 47.137962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565319, -0.349532, 0.747156,
		0.799486, 0.455164, -0.391979,
		-0.203069, 0.818934, 0.536759,
		32.641361, 32.176800, 47.298988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264675, 31.617531, 47.299622>,  <32.783508, 31.603544, 46.923260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264675, 31.617531, 47.299622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051685, 31.893610, 47.495621>,  <32.923889, 32.059258, 47.613220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051685, 31.893610, 47.495621>,  <33.264675, 31.617531, 47.299622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051685, 31.893610, 47.495621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395577, -0.308868, 0.864939,
		0.748322, 0.654392, -0.108560,
		-0.532478, 0.690197, 0.489995,
		32.891941, 32.100670, 47.642620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710014, 31.886917, 47.722603>,  <33.264675, 31.617531, 47.299622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710014, 31.886917, 47.722603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339970, 31.955257, 47.858238>,  <33.117943, 31.996262, 47.939621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339970, 31.955257, 47.858238>,  <33.710014, 31.886917, 47.722603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339970, 31.955257, 47.858238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249930, -0.398301, 0.882549,
		0.285841, 0.901203, 0.325772,
		-0.925111, 0.170849, 0.339088,
		33.062435, 32.006512, 47.959965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854580, 32.081207, 48.421036>,  <33.710014, 31.886917, 47.722603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854580, 32.081207, 48.421036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464508, 31.992651, 48.422356>,  <33.230465, 31.939516, 48.423149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464508, 31.992651, 48.422356>,  <33.854580, 32.081207, 48.421036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464508, 31.992651, 48.422356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074870, -0.315689, 0.945904,
		-0.208375, 0.922673, 0.324429,
		-0.975179, -0.221393, 0.003298,
		33.171955, 31.926233, 48.423344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576954, 32.205566, 49.125896>,  <33.854580, 32.081207, 48.421036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576954, 32.205566, 49.125896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292542, 31.972050, 48.969116>,  <33.121895, 31.831940, 48.875050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292542, 31.972050, 48.969116>,  <33.576954, 32.205566, 49.125896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292542, 31.972050, 48.969116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099696, -0.468083, 0.878043,
		-0.696057, 0.663392, 0.274620,
		-0.711031, -0.583790, -0.391950,
		33.079231, 31.796913, 48.851532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005978, 32.189472, 49.643108>,  <33.576954, 32.205566, 49.125896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005978, 32.189472, 49.643108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985905, 31.888691, 49.380188>,  <32.973862, 31.708221, 49.222435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985905, 31.888691, 49.380188>,  <33.005978, 32.189472, 49.643108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985905, 31.888691, 49.380188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121517, -0.648644, 0.751329,
		-0.991320, 0.117574, -0.058827,
		-0.050179, -0.751956, -0.657301,
		32.970852, 31.663105, 49.182999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406136, 31.860535, 49.797359>,  <33.005978, 32.189472, 49.643108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406136, 31.860535, 49.797359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628071, 31.602499, 49.587208>,  <32.761230, 31.447678, 49.461117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628071, 31.602499, 49.587208>,  <32.406136, 31.860535, 49.797359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628071, 31.602499, 49.587208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239178, -0.728512, 0.641922,
		-0.796840, -0.230502, -0.558494,
		0.554834, -0.645088, -0.525377,
		32.794521, 31.408974, 49.429596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921867, 31.344038, 49.630768>,  <32.406136, 31.860535, 49.797359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921867, 31.344038, 49.630768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293999, 31.198153, 49.615414>,  <32.517277, 31.110620, 49.606201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293999, 31.198153, 49.615414>,  <31.921867, 31.344038, 49.630768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293999, 31.198153, 49.615414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254982, -0.718522, 0.647079,
		-0.263579, -0.592208, -0.761457,
		0.930328, -0.364714, -0.038385,
		32.573097, 31.088737, 49.603897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840685, 30.656174, 49.595520>,  <31.921867, 31.344038, 49.630768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840685, 30.656174, 49.595520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185806, 30.737659, 49.780590>,  <32.392879, 30.786551, 49.891632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185806, 30.737659, 49.780590>,  <31.840685, 30.656174, 49.595520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185806, 30.737659, 49.780590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190326, -0.716978, 0.670611,
		0.468341, -0.666665, -0.579840,
		0.862805, 0.203716, 0.462673,
		32.444649, 30.798775, 49.919392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446651, 30.109699, 49.663754>,  <31.840685, 30.656174, 49.595520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446651, 30.109699, 49.663754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430302, 30.354052, 49.980022>,  <32.420490, 30.500662, 50.169785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430302, 30.354052, 49.980022>,  <32.446651, 30.109699, 49.663754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430302, 30.354052, 49.980022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014140, -0.790897, 0.611786,
		0.999064, 0.036187, 0.023690,
		-0.040875, 0.610879, 0.790668,
		32.418037, 30.537315, 50.217224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012642, 30.020285, 50.210953>,  <32.446651, 30.109699, 49.663754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012642, 30.020285, 50.210953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703323, 30.181278, 50.406921>,  <32.517735, 30.277874, 50.524502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703323, 30.181278, 50.406921>,  <33.012642, 30.020285, 50.210953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703323, 30.181278, 50.406921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037053, -0.800057, 0.598778,
		0.632966, 0.444878, 0.633592,
		-0.773293, 0.402482, 0.489925,
		32.471336, 30.302023, 50.553898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120636, 29.869495, 50.938839>,  <33.012642, 30.020285, 50.210953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120636, 29.869495, 50.938839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730728, 29.928024, 50.871418>,  <32.496784, 29.963140, 50.830967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730728, 29.928024, 50.871418>,  <33.120636, 29.869495, 50.938839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730728, 29.928024, 50.871418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222112, -0.710459, 0.667769,
		-0.022040, 0.688359, 0.725035,
		-0.974772, 0.146321, -0.168551,
		32.438297, 29.971920, 50.820854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336647, 29.234161, 50.512375>,  <33.120636, 29.869495, 50.938839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336647, 29.234161, 50.512375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261395, 28.848429, 50.437897>,  <33.216244, 28.616989, 50.393211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261395, 28.848429, 50.437897>,  <33.336647, 29.234161, 50.512375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261395, 28.848429, 50.437897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973794, 0.207821, -0.092396,
		0.127795, 0.163928, -0.978160,
		-0.188135, -0.964333, -0.186190,
		33.204952, 28.559130, 50.382038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065746, 29.146795, 49.825382>,  <33.336647, 29.234161, 50.512375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065746, 29.146795, 49.825382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950851, 28.837288, 50.051224>,  <32.881916, 28.651583, 50.186729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950851, 28.837288, 50.051224>,  <33.065746, 29.146795, 49.825382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950851, 28.837288, 50.051224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957826, 0.236956, -0.162547,
		-0.008013, -0.587483, -0.809197,
		-0.287238, -0.773767, 0.564605,
		32.864681, 28.605158, 50.220604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046616, 28.458675, 49.372242>,  <33.065746, 29.146795, 49.825382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046616, 28.458675, 49.372242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425583, 28.511801, 49.255791>,  <33.652966, 28.543676, 49.185921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425583, 28.511801, 49.255791>,  <33.046616, 28.458675, 49.372242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425583, 28.511801, 49.255791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303936, 0.088916, -0.948534,
		-0.100093, 0.987145, 0.124608,
		0.947420, 0.132815, -0.291129,
		33.709808, 28.551645, 49.168453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655617, 27.902964, 48.870140>,  <33.046616, 28.458675, 49.372242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655617, 27.902964, 48.870140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947063, 27.739391, 49.089920>,  <33.121933, 27.641249, 49.221786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947063, 27.739391, 49.089920>,  <32.655617, 27.902964, 48.870140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947063, 27.739391, 49.089920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609690, -0.752759, 0.248259,
		0.312083, -0.515880, -0.797792,
		0.728617, -0.408929, 0.549450,
		33.165649, 27.616713, 49.254753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852146, 28.533548, 48.481812>,  <32.655617, 27.902964, 48.870140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852146, 28.533548, 48.481812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944103, 28.914927, 48.403744>,  <32.999279, 29.143753, 48.356903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944103, 28.914927, 48.403744>,  <32.852146, 28.533548, 48.481812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944103, 28.914927, 48.403744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050929, -0.188479, -0.980756,
		-0.971882, 0.235409, 0.005228,
		0.229894, 0.953445, -0.195169,
		33.013073, 29.200960, 48.345192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809155, 28.597965, 47.807560>,  <32.852146, 28.533548, 48.481812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809155, 28.597965, 47.807560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930176, 28.975689, 47.859318>,  <33.002789, 29.202322, 47.890373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930176, 28.975689, 47.859318>,  <32.809155, 28.597965, 47.807560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930176, 28.975689, 47.859318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206127, 0.197368, -0.958414,
		-0.930576, 0.263304, 0.254362,
		0.302557, 0.944308, 0.129392,
		33.020943, 29.258982, 47.898136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237774, 29.030005, 47.509895>,  <32.809155, 28.597965, 47.807560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237774, 29.030005, 47.509895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604961, 29.187990, 47.524498>,  <32.825275, 29.282782, 47.533260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604961, 29.187990, 47.524498>,  <32.237774, 29.030005, 47.509895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604961, 29.187990, 47.524498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028585, 0.025929, -0.999255,
		-0.395617, 0.918330, 0.012512,
		0.917971, 0.394965, 0.036508,
		32.880352, 29.306480, 47.535450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248272, 29.681042, 47.201447>,  <32.237774, 29.030005, 47.509895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248272, 29.681042, 47.201447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637440, 29.593363, 47.172092>,  <32.870941, 29.540754, 47.154480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637440, 29.593363, 47.172092>,  <32.248272, 29.681042, 47.201447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637440, 29.593363, 47.172092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000462, 0.319300, -0.947654,
		0.231155, 0.921954, 0.310753,
		0.972917, -0.219199, -0.073382,
		32.929314, 29.527603, 47.150078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478748, 30.286989, 46.845139>,  <32.248272, 29.681042, 47.201447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478748, 30.286989, 46.845139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769592, 30.014517, 46.810944>,  <32.944099, 29.851032, 46.790428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769592, 30.014517, 46.810944>,  <32.478748, 30.286989, 46.845139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769592, 30.014517, 46.810944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238622, 0.367513, -0.898884,
		0.643720, 0.633186, 0.429766,
		0.727106, -0.681182, -0.085484,
		32.987724, 29.810162, 46.785297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149963, 30.636703, 46.778542>,  <32.478748, 30.286989, 46.845139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149963, 30.636703, 46.778542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184532, 30.265921, 46.632507>,  <33.205273, 30.043451, 46.544888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184532, 30.265921, 46.632507>,  <33.149963, 30.636703, 46.778542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184532, 30.265921, 46.632507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452347, 0.363012, -0.814620,
		0.887645, -0.094746, 0.450676,
		0.086419, -0.926955, -0.365084,
		33.210457, 29.987835, 46.522984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759647, 30.672003, 46.527470>,  <33.149963, 30.636703, 46.778542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759647, 30.672003, 46.527470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604851, 30.341465, 46.363815>,  <33.511974, 30.143143, 46.265621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604851, 30.341465, 46.363815>,  <33.759647, 30.672003, 46.527470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604851, 30.341465, 46.363815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527717, 0.165378, -0.833165,
		0.756145, -0.538334, 0.372077,
		-0.386988, -0.826345, -0.409138,
		33.488754, 30.093561, 46.241074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252567, 30.320808, 46.244995>,  <33.759647, 30.672003, 46.527470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252567, 30.320808, 46.244995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933327, 30.185383, 46.045635>,  <33.741783, 30.104128, 45.926018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933327, 30.185383, 46.045635>,  <34.252567, 30.320808, 46.244995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933327, 30.185383, 46.045635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459858, 0.192200, -0.866942,
		0.389310, -0.921104, 0.002296,
		-0.798103, -0.338565, -0.498403,
		33.693897, 30.083813, 45.896114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586506, 29.900087, 45.719173>,  <34.252567, 30.320808, 46.244995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586506, 29.900087, 45.719173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221146, 30.036505, 45.630283>,  <34.001930, 30.118355, 45.576950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221146, 30.036505, 45.630283>,  <34.586506, 29.900087, 45.719173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221146, 30.036505, 45.630283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344073, 0.355158, -0.869181,
		-0.217505, -0.870374, -0.441747,
		-0.913403, 0.341044, -0.222224,
		33.947124, 30.138819, 45.563618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533241, 29.770512, 44.863941>,  <34.586506, 29.900087, 45.719173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533241, 29.770512, 44.863941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254189, 30.025888, 44.993984>,  <34.086758, 30.179113, 45.072010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254189, 30.025888, 44.993984>,  <34.533241, 29.770512, 44.863941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254189, 30.025888, 44.993984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080982, 0.521139, -0.849621,
		-0.711861, -0.566398, -0.415267,
		-0.697636, 0.638441, 0.325111,
		34.044899, 30.217421, 45.091518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060463, 29.853331, 44.325397>,  <34.533241, 29.770512, 44.863941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060463, 29.853331, 44.325397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034851, 30.181547, 44.552593>,  <34.019482, 30.378477, 44.688911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034851, 30.181547, 44.552593>,  <34.060463, 29.853331, 44.325397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034851, 30.181547, 44.552593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237487, 0.565333, -0.789936,
		-0.969278, 0.084307, -0.231069,
		-0.064034, 0.820543, 0.567986,
		34.015640, 30.427710, 44.722988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705048, 30.208048, 44.036861>,  <34.060463, 29.853331, 44.325397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705048, 30.208048, 44.036861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873096, 30.493496, 44.261093>,  <33.973927, 30.664764, 44.395634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873096, 30.493496, 44.261093>,  <33.705048, 30.208048, 44.036861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873096, 30.493496, 44.261093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343497, 0.446720, -0.826106,
		-0.839947, 0.539620, -0.057451,
		0.420119, 0.713619, 0.560578,
		33.999130, 30.707582, 44.429268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439583, 30.882822, 43.755390>,  <33.705048, 30.208048, 44.036861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439583, 30.882822, 43.755390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789394, 30.910212, 43.947437>,  <33.999283, 30.926645, 44.062664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789394, 30.910212, 43.947437>,  <33.439583, 30.882822, 43.755390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789394, 30.910212, 43.947437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386031, 0.500976, -0.774599,
		-0.293566, 0.862748, 0.411685,
		0.874528, 0.068473, 0.480117,
		34.051754, 30.930754, 44.091473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685013, 31.516283, 43.481712>,  <33.439583, 30.882822, 43.755390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685013, 31.516283, 43.481712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010876, 31.369022, 43.660957>,  <34.206394, 31.280666, 43.768505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010876, 31.369022, 43.660957>,  <33.685013, 31.516283, 43.481712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010876, 31.369022, 43.660957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574841, 0.614872, -0.539898,
		-0.076766, 0.697422, 0.712537,
		0.814656, -0.368150, 0.448108,
		34.255272, 31.258577, 43.795391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078503, 32.123131, 43.692074>,  <33.685013, 31.516283, 43.481712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078503, 32.123131, 43.692074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319424, 31.805590, 43.658550>,  <34.463978, 31.615065, 43.638435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319424, 31.805590, 43.658550>,  <34.078503, 32.123131, 43.692074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319424, 31.805590, 43.658550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508279, 0.462336, -0.726566,
		0.615536, 0.395015, 0.681967,
		0.602302, -0.793857, -0.083806,
		34.500114, 31.567432, 43.633408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662148, 32.422462, 43.565639>,  <34.078503, 32.123131, 43.692074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662148, 32.422462, 43.565639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730820, 32.046402, 43.447899>,  <34.772022, 31.820766, 43.377254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730820, 32.046402, 43.447899>,  <34.662148, 32.422462, 43.565639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730820, 32.046402, 43.447899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689841, 0.328032, -0.645379,
		0.703310, -0.092257, 0.704871,
		0.171680, -0.940151, -0.294351,
		34.782322, 31.764357, 43.359592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385342, 32.300892, 43.469978>,  <34.662148, 32.422462, 43.565639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385342, 32.300892, 43.469978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263168, 32.003117, 43.232483>,  <35.189865, 31.824451, 43.089985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263168, 32.003117, 43.232483>,  <35.385342, 32.300892, 43.469978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263168, 32.003117, 43.232483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643221, 0.298473, -0.705110,
		0.702125, -0.597269, 0.387674,
		-0.305430, -0.744435, -0.593741,
		35.171539, 31.779785, 43.054359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038486, 32.141369, 43.087536>,  <35.385342, 32.300892, 43.469978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038486, 32.141369, 43.087536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742596, 31.967688, 42.881908>,  <35.565060, 31.863480, 42.758530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742596, 31.967688, 42.881908>,  <36.038486, 32.141369, 43.087536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742596, 31.967688, 42.881908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489369, 0.177231, -0.853878,
		0.461865, -0.883209, 0.081382,
		-0.739729, -0.434202, -0.514072,
		35.520676, 31.837427, 42.727688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318306, 31.605639, 42.712730>,  <36.038486, 32.141369, 43.087536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318306, 31.605639, 42.712730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983536, 31.721531, 42.526997>,  <35.782673, 31.791067, 42.415558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983536, 31.721531, 42.526997>,  <36.318306, 31.605639, 42.712730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983536, 31.721531, 42.526997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532156, 0.232497, -0.814098,
		-0.127913, -0.928440, -0.348765,
		-0.836928, 0.289731, -0.464335,
		35.732456, 31.808451, 42.387695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363071, 31.415358, 42.062614>,  <36.318306, 31.605639, 42.712730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363071, 31.415358, 42.062614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060230, 31.673651, 42.022964>,  <35.878525, 31.828627, 41.999172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060230, 31.673651, 42.022964>,  <36.363071, 31.415358, 42.062614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060230, 31.673651, 42.022964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331445, 0.248906, -0.910049,
		-0.562974, -0.721856, -0.402472,
		-0.757103, 0.645731, -0.099128,
		35.833099, 31.867371, 41.993225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055481, 31.301836, 41.443027>,  <36.363071, 31.415358, 42.062614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055481, 31.301836, 41.443027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945610, 31.680593, 41.509892>,  <35.879688, 31.907848, 41.550011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945610, 31.680593, 41.509892>,  <36.055481, 31.301836, 41.443027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945610, 31.680593, 41.509892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067876, 0.192507, -0.978945,
		-0.959137, -0.257549, -0.117149,
		-0.274679, 0.946895, 0.167159,
		35.863205, 31.964663, 41.560040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773026, 31.376463, 40.849400>,  <36.055481, 31.301836, 41.443027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773026, 31.376463, 40.849400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828110, 31.750154, 40.981007>,  <35.861160, 31.974369, 41.059971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828110, 31.750154, 40.981007>,  <35.773026, 31.376463, 40.849400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828110, 31.750154, 40.981007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112180, 0.344758, -0.931964,
		-0.984100, 0.091430, 0.152278,
		0.137708, 0.934228, 0.329019,
		35.869423, 32.030422, 41.079712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334248, 31.764303, 40.488350>,  <35.773026, 31.376463, 40.849400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334248, 31.764303, 40.488350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591423, 32.043114, 40.615334>,  <35.745728, 32.210400, 40.691525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591423, 32.043114, 40.615334>,  <35.334248, 31.764303, 40.488350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591423, 32.043114, 40.615334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025345, 0.394899, -0.918375,
		-0.765495, 0.598508, 0.236232,
		0.642943, 0.697024, 0.317462,
		35.784306, 32.252220, 40.710571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065182, 32.319782, 40.181683>,  <35.334248, 31.764303, 40.488350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065182, 32.319782, 40.181683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445736, 32.410885, 40.264618>,  <35.674068, 32.465546, 40.314377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445736, 32.410885, 40.264618>,  <35.065182, 32.319782, 40.181683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445736, 32.410885, 40.264618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128387, 0.318638, -0.939142,
		-0.279963, 0.920107, 0.273907,
		0.951387, 0.227759, 0.207337,
		35.731152, 32.479214, 40.326820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133408, 32.979771, 39.723774>,  <35.065182, 32.319782, 40.181683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133408, 32.979771, 39.723774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511765, 32.900787, 39.826759>,  <35.738781, 32.853397, 39.888550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511765, 32.900787, 39.826759>,  <35.133408, 32.979771, 39.723774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511765, 32.900787, 39.826759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308399, 0.300516, -0.902541,
		0.100843, 0.933113, 0.345153,
		0.945897, -0.197460, 0.257466,
		35.795532, 32.841549, 39.903999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537483, 33.552162, 39.523006>,  <35.133408, 32.979771, 39.723774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537483, 33.552162, 39.523006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764847, 33.223503, 39.540028>,  <35.901264, 33.026306, 39.550240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764847, 33.223503, 39.540028>,  <35.537483, 33.552162, 39.523006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764847, 33.223503, 39.540028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211201, 0.095730, -0.972743,
		0.795179, 0.561899, 0.227946,
		0.568405, -0.821648, 0.042551,
		35.935368, 32.977009, 39.552792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109482, 33.794056, 39.272972>,  <35.537483, 33.552162, 39.523006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109482, 33.794056, 39.272972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123932, 33.398415, 39.215893>,  <36.132603, 33.161030, 39.181644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123932, 33.398415, 39.215893>,  <36.109482, 33.794056, 39.272972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123932, 33.398415, 39.215893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317491, 0.146750, -0.936837,
		0.947573, -0.011459, 0.319335,
		0.036127, -0.989107, -0.142695,
		36.134769, 33.101681, 39.173084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767761, 33.671051, 38.924305>,  <36.109482, 33.794056, 39.272972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767761, 33.671051, 38.924305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521969, 33.364998, 38.847385>,  <36.374493, 33.181366, 38.801231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521969, 33.364998, 38.847385>,  <36.767761, 33.671051, 38.924305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521969, 33.364998, 38.847385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328081, -0.026157, -0.944287,
		0.717476, -0.643339, 0.267099,
		-0.614484, -0.765134, -0.192301,
		36.337624, 33.135456, 38.789696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152248, 33.226524, 38.522324>,  <36.767761, 33.671051, 38.924305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152248, 33.226524, 38.522324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789955, 33.075722, 38.444847>,  <36.572578, 32.985241, 38.398361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789955, 33.075722, 38.444847>,  <37.152248, 33.226524, 38.522324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789955, 33.075722, 38.444847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213458, -0.010931, -0.976891,
		0.366178, -0.926145, 0.090376,
		-0.905731, -0.377008, -0.193690,
		36.518234, 32.962620, 38.386742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222824, 32.720390, 38.000187>,  <37.152248, 33.226524, 38.522324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222824, 32.720390, 38.000187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838207, 32.829742, 38.010750>,  <36.607437, 32.895355, 38.017086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838207, 32.829742, 38.010750>,  <37.222824, 32.720390, 38.000187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838207, 32.829742, 38.010750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003183, 0.107216, -0.994231,
		-0.274639, -0.955911, -0.103963,
		-0.961542, 0.273386, 0.026403,
		36.549744, 32.911758, 38.018669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810371, 32.308788, 37.547798>,  <37.222824, 32.720390, 38.000187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810371, 32.308788, 37.547798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581585, 32.633415, 37.595493>,  <36.444313, 32.828190, 37.624111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581585, 32.633415, 37.595493>,  <36.810371, 32.308788, 37.547798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581585, 32.633415, 37.595493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253030, -0.036287, -0.966778,
		-0.780279, -0.583131, 0.226106,
		-0.571963, 0.811568, 0.119236,
		36.409996, 32.876884, 37.631264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360989, 32.151318, 37.039360>,  <36.810371, 32.308788, 37.547798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360989, 32.151318, 37.039360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289196, 32.532021, 37.138916>,  <36.246120, 32.760441, 37.198650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289196, 32.532021, 37.138916>,  <36.360989, 32.151318, 37.039360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289196, 32.532021, 37.138916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088507, 0.236351, -0.967628,
		-0.979772, -0.195698, 0.041817,
		-0.179480, 0.951756, 0.248891,
		36.235352, 32.817547, 37.213585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853531, 32.318336, 36.624058>,  <36.360989, 32.151318, 37.039360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853531, 32.318336, 36.624058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018734, 32.663383, 36.740898>,  <36.117855, 32.870411, 36.811001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018734, 32.663383, 36.740898>,  <35.853531, 32.318336, 36.624058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018734, 32.663383, 36.740898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024482, 0.331131, -0.943267,
		-0.910398, 0.382427, 0.157879,
		0.413009, 0.862613, 0.292099,
		36.142635, 32.922169, 36.828529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399414, 32.771523, 36.368702>,  <35.853531, 32.318336, 36.624058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399414, 32.771523, 36.368702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734840, 32.984627, 36.414265>,  <35.936096, 33.112488, 36.441605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734840, 32.984627, 36.414265>,  <35.399414, 32.771523, 36.368702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734840, 32.984627, 36.414265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019284, 0.179928, -0.983491,
		-0.544462, 0.826916, 0.140607,
		0.838564, 0.532762, 0.113910,
		35.986408, 33.144455, 36.448437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316696, 33.388630, 36.144630>,  <35.399414, 32.771523, 36.368702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316696, 33.388630, 36.144630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716541, 33.386703, 36.133629>,  <35.956448, 33.385548, 36.127029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716541, 33.386703, 36.133629>,  <35.316696, 33.388630, 36.144630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716541, 33.386703, 36.133629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023636, 0.378390, -0.925345,
		0.014868, 0.925634, 0.378128,
		0.999610, -0.004820, -0.027504,
		36.016426, 33.385258, 36.125378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565895, 33.947742, 35.884201>,  <35.316696, 33.388630, 36.144630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565895, 33.947742, 35.884201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897339, 33.725639, 35.855652>,  <36.096207, 33.592377, 35.838524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897339, 33.725639, 35.855652>,  <35.565895, 33.947742, 35.884201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897339, 33.725639, 35.855652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122821, 0.304683, -0.944502,
		0.546189, 0.773857, 0.320660,
		0.828609, -0.555260, -0.071369,
		36.145920, 33.559063, 35.834240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126312, 34.449715, 35.750790>,  <35.565895, 33.947742, 35.884201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126312, 34.449715, 35.750790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244484, 34.087482, 35.629036>,  <36.315388, 33.870144, 35.555984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244484, 34.087482, 35.629036>,  <36.126312, 34.449715, 35.750790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244484, 34.087482, 35.629036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180622, 0.365803, -0.912997,
		0.938136, 0.214743, 0.271635,
		0.295425, -0.905579, -0.304386,
		36.333111, 33.815807, 35.537720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746235, 34.554733, 35.344608>,  <36.126312, 34.449715, 35.750790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746235, 34.554733, 35.344608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633915, 34.179035, 35.265648>,  <36.566525, 33.953617, 35.218273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633915, 34.179035, 35.265648>,  <36.746235, 34.554733, 35.344608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633915, 34.179035, 35.265648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225371, 0.135399, -0.964819,
		0.932930, -0.315410, 0.173659,
		-0.280800, -0.939246, -0.197402,
		36.549675, 33.897263, 35.206429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263371, 34.313122, 34.970963>,  <36.746235, 34.554733, 35.344608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263371, 34.313122, 34.970963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921253, 34.120243, 34.895111>,  <36.715984, 34.004517, 34.849598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921253, 34.120243, 34.895111>,  <37.263371, 34.313122, 34.970963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921253, 34.120243, 34.895111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091765, 0.219229, -0.971348,
		0.509958, -0.848187, -0.143255,
		-0.855291, -0.482201, -0.189632,
		36.664665, 33.975582, 34.838223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362354, 33.906933, 34.420807>,  <37.263371, 34.313122, 34.970963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362354, 33.906933, 34.420807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967163, 33.959831, 34.388790>,  <36.730049, 33.991570, 34.369579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967163, 33.959831, 34.388790>,  <37.362354, 33.906933, 34.420807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967163, 33.959831, 34.388790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122145, 0.350552, -0.928544,
		-0.094736, -0.927160, -0.362492,
		-0.987981, 0.132243, -0.080038,
		36.670769, 33.999504, 34.364780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971218, 33.603634, 34.727329>,  <37.362354, 33.906933, 34.420807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971218, 33.603634, 34.727329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324467, 33.472523, 34.593075>,  <38.536415, 33.393856, 34.512520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324467, 33.472523, 34.593075>,  <37.971218, 33.603634, 34.727329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324467, 33.472523, 34.593075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017924, -0.691341, 0.722306,
		-0.468794, -0.643904, -0.604666,
		0.883126, -0.327774, -0.335638,
		38.589405, 33.374191, 34.492382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011837, 32.860210, 34.545933>,  <37.971218, 33.603634, 34.727329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011837, 32.860210, 34.545933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365139, 32.974243, 34.694843>,  <38.577118, 33.042664, 34.784191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365139, 32.974243, 34.694843>,  <38.011837, 32.860210, 34.545933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365139, 32.974243, 34.694843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063714, -0.713617, 0.697633,
		0.464549, -0.639905, -0.612140,
		0.883252, 0.285083, 0.372280,
		38.630116, 33.059769, 34.806526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404922, 32.288460, 34.596649>,  <38.011837, 32.860210, 34.545933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404922, 32.288460, 34.596649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559315, 32.550842, 34.856110>,  <38.651951, 32.708271, 35.011784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559315, 32.550842, 34.856110>,  <38.404922, 32.288460, 34.596649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559315, 32.550842, 34.856110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045466, -0.715809, 0.696814,
		0.921384, -0.239468, -0.306115,
		0.385985, 0.655952, 0.648647,
		38.675110, 32.747627, 35.050705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135025, 32.072830, 34.757256>,  <38.404922, 32.288460, 34.596649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135025, 32.072830, 34.757256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999233, 32.318604, 35.042133>,  <38.917759, 32.466068, 35.213062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999233, 32.318604, 35.042133>,  <39.135025, 32.072830, 34.757256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999233, 32.318604, 35.042133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270660, -0.661328, 0.699563,
		0.900830, 0.430252, 0.058206,
		-0.339481, 0.614434, 0.712196,
		38.897388, 32.502934, 35.255791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561188, 31.894600, 35.291553>,  <39.135025, 32.072830, 34.757256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561188, 31.894600, 35.291553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255878, 32.081684, 35.469841>,  <39.072693, 32.193935, 35.576813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255878, 32.081684, 35.469841>,  <39.561188, 31.894600, 35.291553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255878, 32.081684, 35.469841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028056, -0.665239, 0.746103,
		0.645471, 0.581983, 0.494634,
		-0.763269, 0.467710, 0.445721,
		39.026897, 32.221996, 35.603558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813820, 31.805620, 35.951279>,  <39.561188, 31.894600, 35.291553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813820, 31.805620, 35.951279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440102, 31.936041, 36.008949>,  <39.215870, 32.014294, 36.043552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440102, 31.936041, 36.008949>,  <39.813820, 31.805620, 35.951279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440102, 31.936041, 36.008949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047156, -0.513883, 0.856563,
		0.353373, 0.793482, 0.495493,
		-0.934293, 0.326052, 0.144175,
		39.159813, 32.033855, 36.052200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787228, 32.224762, 36.568916>,  <39.813820, 31.805620, 35.951279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787228, 32.224762, 36.568916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417450, 32.087040, 36.503365>,  <39.195583, 32.004406, 36.464035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417450, 32.087040, 36.503365>,  <39.787228, 32.224762, 36.568916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417450, 32.087040, 36.503365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028537, -0.366092, 0.930141,
		-0.380249, 0.864540, 0.328606,
		-0.924444, -0.344307, -0.163877,
		39.140118, 31.983747, 36.454201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508362, 32.395222, 37.132996>,  <39.787228, 32.224762, 36.568916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508362, 32.395222, 37.132996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246399, 32.129059, 36.989704>,  <39.089222, 31.969360, 36.903728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246399, 32.129059, 36.989704>,  <39.508362, 32.395222, 37.132996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246399, 32.129059, 36.989704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247823, -0.258710, 0.933623,
		-0.713921, 0.700212, 0.004526,
		-0.654905, -0.665412, -0.358227,
		39.049927, 31.929436, 36.882236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871994, 32.455002, 37.572483>,  <39.508362, 32.395222, 37.132996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871994, 32.455002, 37.572483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863785, 32.090294, 37.408409>,  <38.858860, 31.871469, 37.309963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863785, 32.090294, 37.408409>,  <38.871994, 32.455002, 37.572483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863785, 32.090294, 37.408409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262146, -0.391012, 0.882264,
		-0.964810, 0.125638, -0.230991,
		-0.020526, -0.911770, -0.410188,
		38.857628, 31.816763, 37.285355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359589, 32.194359, 37.941399>,  <38.871994, 32.455002, 37.572483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359589, 32.194359, 37.941399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516212, 31.858974, 37.789791>,  <38.610188, 31.657743, 37.698826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516212, 31.858974, 37.789791>,  <38.359589, 32.194359, 37.941399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516212, 31.858974, 37.789791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160280, -0.467766, 0.869198,
		-0.906086, -0.279593, -0.317547,
		0.391559, -0.838465, -0.379023,
		38.633678, 31.607435, 37.676083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863125, 31.670183, 38.132687>,  <38.359589, 32.194359, 37.941399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863125, 31.670183, 38.132687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221447, 31.511118, 38.053291>,  <38.436440, 31.415680, 38.005653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221447, 31.511118, 38.053291>,  <37.863125, 31.670183, 38.132687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221447, 31.511118, 38.053291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074704, -0.574960, 0.814764,
		-0.438121, -0.715043, -0.544759,
		0.895806, -0.397661, -0.198486,
		38.490189, 31.391819, 37.993744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792473, 30.968992, 37.997860>,  <37.863125, 31.670183, 38.132687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792473, 30.968992, 37.997860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176868, 30.988838, 38.106693>,  <38.407505, 31.000746, 38.171993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176868, 30.988838, 38.106693>,  <37.792473, 30.968992, 37.997860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176868, 30.988838, 38.106693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225327, -0.430003, 0.874257,
		0.160372, -0.901463, -0.402051,
		0.960994, 0.049613, 0.272084,
		38.465168, 31.003721, 38.188320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013477, 30.251732, 38.185764>,  <37.792473, 30.968992, 37.997860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013477, 30.251732, 38.185764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255245, 30.503010, 38.381741>,  <38.400307, 30.653776, 38.499329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255245, 30.503010, 38.381741>,  <38.013477, 30.251732, 38.185764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255245, 30.503010, 38.381741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064033, -0.651312, 0.756103,
		0.794089, -0.425630, -0.433891,
		0.604419, 0.628197, 0.489945,
		38.436569, 30.691469, 38.528725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499619, 29.826801, 38.431576>,  <38.013477, 30.251732, 38.185764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499619, 29.826801, 38.431576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503780, 30.157967, 38.655880>,  <38.506279, 30.356667, 38.790462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503780, 30.157967, 38.655880>,  <38.499619, 29.826801, 38.431576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503780, 30.157967, 38.655880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019745, -0.560848, 0.827683,
		0.999751, 0.002461, -0.022182,
		0.010404, 0.827915, 0.560757,
		38.506901, 30.406342, 38.824108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810581, 29.614042, 38.992104>,  <38.499619, 29.826801, 38.431576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810581, 29.614042, 38.992104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665882, 29.963701, 39.121723>,  <38.579063, 30.173496, 39.199493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665882, 29.963701, 39.121723>,  <38.810581, 29.614042, 38.992104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665882, 29.963701, 39.121723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036777, -0.360698, 0.931957,
		0.931551, 0.325215, 0.162630,
		-0.361747, 0.874147, 0.324048,
		38.557358, 30.225945, 39.218937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062191, 29.799393, 39.589954>,  <38.810581, 29.614042, 38.992104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062191, 29.799393, 39.589954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735294, 30.028639, 39.614117>,  <38.539154, 30.166187, 39.628616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735294, 30.028639, 39.614117>,  <39.062191, 29.799393, 39.589954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735294, 30.028639, 39.614117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075791, -0.210802, 0.974586,
		0.571285, 0.791897, 0.215714,
		-0.817245, 0.573116, 0.060409,
		38.490120, 30.200573, 39.632240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083755, 30.141058, 40.224239>,  <39.062191, 29.799393, 39.589954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083755, 30.141058, 40.224239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698696, 30.173197, 40.120823>,  <38.467659, 30.192480, 40.058773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698696, 30.173197, 40.120823>,  <39.083755, 30.141058, 40.224239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698696, 30.173197, 40.120823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266811, -0.119437, 0.956319,
		0.045959, 0.989585, 0.136414,
		-0.962652, 0.080348, -0.258543,
		38.409901, 30.197302, 40.043259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808205, 30.484821, 40.805103>,  <39.083755, 30.141058, 40.224239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808205, 30.484821, 40.805103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495213, 30.332741, 40.607853>,  <38.307419, 30.241491, 40.489502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495213, 30.332741, 40.607853>,  <38.808205, 30.484821, 40.805103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495213, 30.332741, 40.607853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545199, 0.035735, 0.837545,
		-0.300815, 0.924212, -0.235248,
		-0.782476, -0.380203, -0.493130,
		38.260471, 30.218679, 40.459915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213242, 30.907946, 40.907043>,  <38.808205, 30.484821, 40.805103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213242, 30.907946, 40.907043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079292, 30.547617, 40.796497>,  <37.998920, 30.331419, 40.730171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079292, 30.547617, 40.796497>,  <38.213242, 30.907946, 40.907043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079292, 30.547617, 40.796497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564218, -0.043201, 0.824495,
		-0.754662, 0.432034, -0.493793,
		-0.334878, -0.900822, -0.276364,
		37.978828, 30.277370, 40.713589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500858, 30.982365, 40.892193>,  <38.213242, 30.907946, 40.907043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500858, 30.982365, 40.892193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549995, 30.586536, 40.922283>,  <37.579479, 30.349039, 40.940338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549995, 30.586536, 40.922283>,  <37.500858, 30.982365, 40.892193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549995, 30.586536, 40.922283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628551, -0.018921, 0.777538,
		-0.768006, -0.142797, -0.624321,
		0.122843, -0.989571, 0.075223,
		37.586849, 30.289665, 40.944851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902355, 30.683615, 41.118694>,  <37.500858, 30.982365, 40.892193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902355, 30.683615, 41.118694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140930, 30.382406, 41.229847>,  <37.284077, 30.201681, 41.296539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140930, 30.382406, 41.229847>,  <36.902355, 30.683615, 41.118694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140930, 30.382406, 41.229847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541565, -0.122013, 0.831758,
		-0.592425, -0.646586, -0.480582,
		0.596440, -0.753020, 0.277884,
		37.319862, 30.156500, 41.313213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490147, 30.232590, 41.408005>,  <36.902355, 30.683615, 41.118694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490147, 30.232590, 41.408005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846992, 30.104832, 41.535835>,  <37.061100, 30.028177, 41.612534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846992, 30.104832, 41.535835>,  <36.490147, 30.232590, 41.408005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846992, 30.104832, 41.535835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377695, -0.138999, 0.915438,
		-0.247963, -0.937373, -0.244635,
		0.892111, -0.319392, 0.319574,
		37.114624, 30.009014, 41.631706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503021, 29.480591, 41.590649>,  <36.490147, 30.232590, 41.408005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503021, 29.480591, 41.590649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790180, 29.658081, 41.805214>,  <36.962475, 29.764576, 41.933952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790180, 29.658081, 41.805214>,  <36.503021, 29.480591, 41.590649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790180, 29.658081, 41.805214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560783, -0.087965, 0.823276,
		0.412494, -0.891835, 0.185685,
		0.717893, 0.443726, 0.536411,
		37.005547, 29.791199, 41.966137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569157, 29.064634, 42.292606>,  <36.503021, 29.480591, 41.590649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569157, 29.064634, 42.292606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762718, 29.410328, 42.347652>,  <36.878857, 29.617744, 42.380680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762718, 29.410328, 42.347652>,  <36.569157, 29.064634, 42.292606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762718, 29.410328, 42.347652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259428, -0.008512, 0.965725,
		0.835782, -0.503021, 0.220087,
		0.483907, 0.864232, 0.137611,
		36.907890, 29.669598, 42.388935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040058, 29.039194, 42.951614>,  <36.569157, 29.064634, 42.292606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040058, 29.039194, 42.951614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996273, 29.426756, 42.862854>,  <36.970001, 29.659294, 42.809597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996273, 29.426756, 42.862854>,  <37.040058, 29.039194, 42.951614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996273, 29.426756, 42.862854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140518, 0.205912, 0.968429,
		0.984008, 0.137188, 0.113609,
		-0.109464, 0.968907, -0.221896,
		36.963432, 29.717428, 42.796284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360752, 29.277533, 43.545982>,  <37.040058, 29.039194, 42.951614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360752, 29.277533, 43.545982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126091, 29.565939, 43.398483>,  <36.985294, 29.738983, 43.309982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126091, 29.565939, 43.398483>,  <37.360752, 29.277533, 43.545982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126091, 29.565939, 43.398483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269206, 0.255817, 0.928486,
		0.763786, 0.643966, 0.044027,
		-0.586651, 0.721016, -0.368750,
		36.950096, 29.782244, 43.287857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551723, 29.730183, 44.000896>,  <37.360752, 29.277533, 43.545982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551723, 29.730183, 44.000896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205566, 29.856009, 43.844875>,  <36.997871, 29.931503, 43.751263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205566, 29.856009, 43.844875>,  <37.551723, 29.730183, 44.000896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205566, 29.856009, 43.844875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282627, 0.336375, 0.898318,
		0.413783, 0.887639, -0.202192,
		-0.865394, 0.314563, -0.390056,
		36.945950, 29.950378, 43.727859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486767, 30.492519, 44.058544>,  <37.551723, 29.730183, 44.000896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486767, 30.492519, 44.058544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120583, 30.331617, 44.054134>,  <36.900871, 30.235077, 44.051487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120583, 30.331617, 44.054134>,  <37.486767, 30.492519, 44.058544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120583, 30.331617, 44.054134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195945, 0.421664, 0.885328,
		-0.351478, 0.812644, -0.464837,
		-0.915461, -0.402256, -0.011028,
		36.845943, 30.210941, 44.050827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059868, 30.968281, 44.439846>,  <37.486767, 30.492519, 44.058544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059868, 30.968281, 44.439846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845196, 30.630917, 44.449951>,  <36.716393, 30.428499, 44.456013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845196, 30.630917, 44.449951>,  <37.059868, 30.968281, 44.439846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845196, 30.630917, 44.449951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166993, 0.135512, 0.976601,
		-0.827098, 0.519901, -0.213570,
		-0.536677, -0.843409, 0.025262,
		36.684193, 30.377893, 44.457531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411983, 31.095787, 44.841618>,  <37.059868, 30.968281, 44.439846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411983, 31.095787, 44.841618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432495, 30.696329, 44.838051>,  <36.444801, 30.456654, 44.835911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432495, 30.696329, 44.838051>,  <36.411983, 31.095787, 44.841618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432495, 30.696329, 44.838051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232111, -0.020600, 0.972471,
		-0.971337, -0.047800, -0.232852,
		0.051281, -0.998645, -0.008914,
		36.447880, 30.396736, 44.835377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935993, 30.910009, 45.295658>,  <36.411983, 31.095787, 44.841618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935993, 30.910009, 45.295658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116684, 30.555027, 45.259087>,  <36.225098, 30.342037, 45.237144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116684, 30.555027, 45.259087>,  <35.935993, 30.910009, 45.295658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116684, 30.555027, 45.259087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211430, -0.206052, 0.955427,
		-0.866740, -0.412264, -0.280714,
		0.451729, -0.887458, -0.091429,
		36.252201, 30.288790, 45.231659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480721, 30.429647, 45.609814>,  <35.935993, 30.910009, 45.295658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480721, 30.429647, 45.609814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839062, 30.251915, 45.611027>,  <36.054066, 30.145275, 45.611755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839062, 30.251915, 45.611027>,  <35.480721, 30.429647, 45.609814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839062, 30.251915, 45.611027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150443, -0.296885, 0.942988,
		-0.418099, -0.845239, -0.332813,
		0.895857, -0.444332, 0.003033,
		36.107819, 30.118616, 45.611938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304977, 29.756109, 45.861874>,  <35.480721, 30.429647, 45.609814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304977, 29.756109, 45.861874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691971, 29.842676, 45.914253>,  <35.924168, 29.894617, 45.945679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691971, 29.842676, 45.914253>,  <35.304977, 29.756109, 45.861874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691971, 29.842676, 45.914253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028619, -0.420702, 0.906747,
		0.251326, -0.881007, -0.400827,
		0.967479, 0.216418, 0.130947,
		35.982216, 29.907602, 45.953537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576157, 29.106689, 46.103798>,  <35.304977, 29.756109, 45.861874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576157, 29.106689, 46.103798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877834, 29.355562, 46.187782>,  <36.058842, 29.504887, 46.238174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877834, 29.355562, 46.187782>,  <35.576157, 29.106689, 46.103798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877834, 29.355562, 46.187782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014626, -0.303748, 0.952640,
		0.656492, -0.721544, -0.219984,
		0.754191, 0.622183, 0.209961,
		36.104092, 29.542217, 46.250771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237579, 28.801153, 46.268005>,  <35.576157, 29.106689, 46.103798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237579, 28.801153, 46.268005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237309, 29.164412, 46.435467>,  <36.237144, 29.382366, 46.535946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237309, 29.164412, 46.435467>,  <36.237579, 28.801153, 46.268005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237309, 29.164412, 46.435467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012881, -0.418631, 0.908065,
		0.999917, -0.004778, 0.011981,
		-0.000677, 0.908144, 0.418658,
		36.237106, 29.436855, 46.561066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820587, 28.841894, 46.767677>,  <36.237579, 28.801153, 46.268005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820587, 28.841894, 46.767677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550854, 29.116522, 46.876411>,  <36.389011, 29.281298, 46.941650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550854, 29.116522, 46.876411>,  <36.820587, 28.841894, 46.767677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550854, 29.116522, 46.876411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032949, -0.339787, 0.939925,
		0.737689, 0.642782, 0.206509,
		-0.674336, 0.686568, 0.271836,
		36.348553, 29.322493, 46.957962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052353, 28.985989, 47.445770>,  <36.820587, 28.841894, 46.767677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052353, 28.985989, 47.445770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685436, 29.143850, 47.424534>,  <36.465286, 29.238567, 47.411793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685436, 29.143850, 47.424534>,  <37.052353, 28.985989, 47.445770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685436, 29.143850, 47.424534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193796, -0.325957, 0.925308,
		0.347871, 0.859069, 0.375481,
		-0.917294, 0.394655, -0.053093,
		36.410248, 29.262247, 47.408607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926540, 29.360378, 48.054691>,  <37.052353, 28.985989, 47.445770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926540, 29.360378, 48.054691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578499, 29.239441, 47.898991>,  <36.369675, 29.166880, 47.805569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578499, 29.239441, 47.898991>,  <36.926540, 29.360378, 48.054691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578499, 29.239441, 47.898991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284917, -0.335890, 0.897775,
		-0.402180, 0.892058, 0.206115,
		-0.870100, -0.302342, -0.389251,
		36.317471, 29.148739, 47.782215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482594, 29.497013, 48.568188>,  <36.926540, 29.360378, 48.054691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482594, 29.497013, 48.568188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280941, 29.242088, 48.335056>,  <36.159950, 29.089132, 48.195179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280941, 29.242088, 48.335056>,  <36.482594, 29.497013, 48.568188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280941, 29.242088, 48.335056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323895, -0.486079, 0.811677,
		-0.800592, 0.597964, 0.038623,
		-0.504128, -0.637313, -0.582828,
		36.129704, 29.050894, 48.160210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350269, 30.159416, 48.967251>,  <36.482594, 29.497013, 48.568188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350269, 30.159416, 48.967251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515724, 30.480902, 49.138340>,  <36.614998, 30.673794, 49.240993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515724, 30.480902, 49.138340>,  <36.350269, 30.159416, 48.967251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515724, 30.480902, 49.138340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085361, 0.433493, -0.897105,
		-0.906431, 0.407587, 0.110703,
		0.413637, 0.803715, 0.427723,
		36.639816, 30.722015, 49.266659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104347, 30.754396, 48.611492>,  <36.350269, 30.159416, 48.967251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104347, 30.754396, 48.611492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453995, 30.866732, 48.770004>,  <36.663784, 30.934134, 48.865112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453995, 30.866732, 48.770004>,  <36.104347, 30.754396, 48.611492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453995, 30.866732, 48.770004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211182, 0.514980, -0.830782,
		-0.437395, 0.809892, 0.390846,
		0.874121, 0.280840, 0.396284,
		36.716232, 30.950983, 48.888889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195732, 31.544708, 48.514111>,  <36.104347, 30.754396, 48.611492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195732, 31.544708, 48.514111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552998, 31.371552, 48.562881>,  <36.767357, 31.267658, 48.592144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552998, 31.371552, 48.562881>,  <36.195732, 31.544708, 48.514111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552998, 31.371552, 48.562881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288959, 0.344622, -0.893162,
		0.344622, 0.832971, 0.432891,
		0.893162, -0.432891, 0.121930,
		36.820946, 31.241684, 48.599461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727882, 32.061584, 48.179920>,  <36.195732, 31.544708, 48.514111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727882, 32.061584, 48.179920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944786, 31.731148, 48.241268>,  <37.074928, 31.532885, 48.278076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944786, 31.731148, 48.241268>,  <36.727882, 32.061584, 48.179920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944786, 31.731148, 48.241268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481938, 0.156286, -0.862154,
		0.688253, 0.541424, 0.482875,
		0.542258, -0.826096, 0.153369,
		37.107464, 31.483318, 48.287277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404301, 32.321831, 48.124355>,  <36.727882, 32.061584, 48.179920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404301, 32.321831, 48.124355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393707, 31.928835, 48.050594>,  <37.387352, 31.693037, 48.006336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393707, 31.928835, 48.050594>,  <37.404301, 32.321831, 48.124355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393707, 31.928835, 48.050594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492512, 0.147702, -0.857681,
		0.869903, -0.113535, 0.479978,
		-0.026484, -0.982494, -0.184404,
		37.385761, 31.634087, 47.995274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093163, 32.058937, 48.237984>,  <37.404301, 32.321831, 48.124355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093163, 32.058937, 48.237984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905155, 31.789631, 48.009670>,  <37.792351, 31.628046, 47.872684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905155, 31.789631, 48.009670>,  <38.093163, 32.058937, 48.237984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905155, 31.789631, 48.009670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591971, 0.239215, -0.769640,
		0.654715, -0.699632, 0.286120,
		-0.470021, -0.673269, -0.570779,
		37.764149, 31.587650, 47.838436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618439, 31.897011, 47.770325>,  <38.093163, 32.058937, 48.237984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618439, 31.897011, 47.770325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283276, 31.768236, 47.594021>,  <38.082176, 31.690971, 47.488239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283276, 31.768236, 47.594021>,  <38.618439, 31.897011, 47.770325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283276, 31.768236, 47.594021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430374, 0.106964, -0.896290,
		0.335692, -0.940700, 0.048926,
		-0.837907, -0.321935, -0.440760,
		38.031902, 31.671656, 47.461792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826145, 31.459743, 47.171768>,  <38.618439, 31.897011, 47.770325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826145, 31.459743, 47.171768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448303, 31.514074, 47.052254>,  <38.221600, 31.546673, 46.980545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448303, 31.514074, 47.052254>,  <38.826145, 31.459743, 47.171768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448303, 31.514074, 47.052254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305891, 0.034357, -0.951446,
		-0.118969, -0.990136, -0.074003,
		-0.944604, 0.135829, -0.298787,
		38.164921, 31.554823, 46.962616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666431, 30.968956, 46.570633>,  <38.826145, 31.459743, 47.171768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666431, 30.968956, 46.570633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420322, 31.282997, 46.542202>,  <38.272655, 31.471422, 46.525143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420322, 31.282997, 46.542202>,  <38.666431, 30.968956, 46.570633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420322, 31.282997, 46.542202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198282, 0.066859, -0.977862,
		-0.762971, -0.615744, -0.196809,
		-0.615271, 0.785104, -0.071080,
		38.235741, 31.518528, 46.520878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346947, 30.869761, 45.968204>,  <38.666431, 30.968956, 46.570633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346947, 30.869761, 45.968204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253510, 31.253078, 46.034061>,  <38.197449, 31.483068, 46.073578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253510, 31.253078, 46.034061>,  <38.346947, 30.869761, 45.968204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253510, 31.253078, 46.034061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111208, 0.194549, -0.974568,
		-0.965955, -0.209340, -0.152014,
		-0.233590, 0.958294, 0.164645,
		38.183434, 31.540567, 46.083454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825912, 31.029839, 45.534843>,  <38.346947, 30.869761, 45.968204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825912, 31.029839, 45.534843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976711, 31.389080, 45.625420>,  <38.067192, 31.604626, 45.679768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976711, 31.389080, 45.625420>,  <37.825912, 31.029839, 45.534843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976711, 31.389080, 45.625420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022665, 0.253357, -0.967107,
		-0.925935, 0.359469, 0.115872,
		0.377002, 0.898105, 0.226445,
		38.089813, 31.658512, 45.693352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381313, 31.518017, 45.247345>,  <37.825912, 31.029839, 45.534843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381313, 31.518017, 45.247345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750240, 31.669237, 45.279381>,  <37.971596, 31.759970, 45.298603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750240, 31.669237, 45.279381>,  <37.381313, 31.518017, 45.247345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750240, 31.669237, 45.279381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019951, 0.160391, -0.986852,
		-0.385925, 0.911785, 0.140389,
		0.922314, 0.378050, 0.080090,
		38.026936, 31.782652, 45.303410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410633, 31.881859, 44.697113>,  <37.381313, 31.518017, 45.247345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410633, 31.881859, 44.697113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794807, 31.847973, 44.803234>,  <38.025311, 31.827642, 44.866905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794807, 31.847973, 44.803234>,  <37.410633, 31.881859, 44.697113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794807, 31.847973, 44.803234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273262, 0.102823, -0.956428,
		0.053744, 0.991086, 0.121905,
		0.960437, -0.084714, 0.265300,
		38.082939, 31.822559, 44.882824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758263, 32.469028, 44.389473>,  <37.410633, 31.881859, 44.697113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758263, 32.469028, 44.389473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038158, 32.196259, 44.474655>,  <38.206097, 32.032597, 44.525764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038158, 32.196259, 44.474655>,  <37.758263, 32.469028, 44.389473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038158, 32.196259, 44.474655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424006, 0.156511, -0.892033,
		0.574966, 0.714485, 0.398655,
		0.699738, -0.681921, 0.212957,
		38.248081, 31.991682, 44.538544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341484, 32.841541, 44.259499>,  <37.758263, 32.469028, 44.389473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341484, 32.841541, 44.259499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405621, 32.447739, 44.231133>,  <38.444103, 32.211456, 44.214115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405621, 32.447739, 44.231133>,  <38.341484, 32.841541, 44.259499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405621, 32.447739, 44.231133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486069, 0.141281, -0.862425,
		0.859085, 0.103815, 0.501193,
		0.160342, -0.984511, -0.070911,
		38.453724, 32.152386, 44.209858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997421, 32.792061, 43.963848>,  <38.341484, 32.841541, 44.259499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997421, 32.792061, 43.963848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866520, 32.417915, 43.910183>,  <38.787979, 32.193428, 43.877983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866520, 32.417915, 43.910183>,  <38.997421, 32.792061, 43.963848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866520, 32.417915, 43.910183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600059, -0.096034, -0.794170,
		0.729955, -0.340398, 0.592702,
		-0.327254, -0.935364, -0.134159,
		38.768345, 32.137306, 43.869934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607258, 32.433300, 43.881317>,  <38.997421, 32.792061, 43.963848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607258, 32.433300, 43.881317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313869, 32.221176, 43.711235>,  <39.137836, 32.093903, 43.609188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313869, 32.221176, 43.711235>,  <39.607258, 32.433300, 43.881317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313869, 32.221176, 43.711235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504163, -0.004875, -0.863594,
		0.455897, -0.847792, 0.270937,
		-0.733469, -0.530306, -0.425203,
		39.093830, 32.062084, 43.583675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906441, 31.867586, 43.484455>,  <39.607258, 32.433300, 43.881317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906441, 31.867586, 43.484455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542149, 31.922680, 43.328712>,  <39.323574, 31.955736, 43.235268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542149, 31.922680, 43.328712>,  <39.906441, 31.867586, 43.484455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542149, 31.922680, 43.328712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377016, -0.107633, -0.919932,
		-0.168617, -0.984604, 0.046095,
		-0.910729, 0.137737, -0.389360,
		39.268929, 31.963999, 43.211906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886871, 31.467018, 42.835949>,  <39.906441, 31.867586, 43.484455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886871, 31.467018, 42.835949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556675, 31.684702, 42.776081>,  <39.358559, 31.815313, 42.740158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556675, 31.684702, 42.776081>,  <39.886871, 31.467018, 42.835949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556675, 31.684702, 42.776081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203610, 0.039804, -0.978243,
		-0.526414, -0.838003, -0.143665,
		-0.825489, 0.544212, -0.149673,
		39.309029, 31.847965, 42.731178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567329, 31.153843, 42.330605>,  <39.886871, 31.467018, 42.835949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567329, 31.153843, 42.330605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450180, 31.536299, 42.328815>,  <39.379890, 31.765772, 42.327744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450180, 31.536299, 42.328815>,  <39.567329, 31.153843, 42.330605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450180, 31.536299, 42.328815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172045, 0.048101, -0.983914,
		-0.940545, -0.288933, -0.178587,
		-0.292875, 0.956140, -0.004469,
		39.362316, 31.823141, 42.327477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134083, 31.212673, 41.761417>,  <39.567329, 31.153843, 42.330605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134083, 31.212673, 41.761417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205399, 31.595049, 41.854706>,  <39.248188, 31.824474, 41.910679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205399, 31.595049, 41.854706>,  <39.134083, 31.212673, 41.761417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205399, 31.595049, 41.854706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079839, 0.222183, -0.971731,
		-0.980734, 0.191870, -0.036708,
		0.178290, 0.955940, 0.233221,
		39.258884, 31.881830, 41.924671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944130, 31.515602, 41.167500>,  <39.134083, 31.212673, 41.761417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944130, 31.515602, 41.167500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145340, 31.816359, 41.337971>,  <39.266064, 31.996813, 41.440254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145340, 31.816359, 41.337971>,  <38.944130, 31.515602, 41.167500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145340, 31.816359, 41.337971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206608, 0.374196, -0.904041,
		-0.839216, 0.542804, 0.032882,
		0.503021, 0.751892, 0.426179,
		39.296246, 32.041927, 41.465824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684261, 32.065220, 40.848816>,  <38.944130, 31.515602, 41.167500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684261, 32.065220, 40.848816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033234, 32.187729, 41.001163>,  <39.242619, 32.261234, 41.092571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033234, 32.187729, 41.001163>,  <38.684261, 32.065220, 40.848816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033234, 32.187729, 41.001163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269839, 0.347901, -0.897860,
		-0.407495, 0.886094, 0.220875,
		0.872430, 0.306273, 0.380871,
		39.294964, 32.279610, 41.115425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774433, 32.837925, 40.633148>,  <38.684261, 32.065220, 40.848816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774433, 32.837925, 40.633148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133289, 32.682518, 40.717243>,  <39.348602, 32.589275, 40.767700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133289, 32.682518, 40.717243>,  <38.774433, 32.837925, 40.633148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133289, 32.682518, 40.717243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360249, 0.368003, -0.857202,
		0.255670, 0.844765, 0.470112,
		0.897137, -0.388518, 0.210238,
		39.402431, 32.565964, 40.780315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293499, 33.339684, 40.708725>,  <38.774433, 32.837925, 40.633148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293499, 33.339684, 40.708725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441288, 32.989361, 40.584499>,  <39.529961, 32.779167, 40.509964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441288, 32.989361, 40.584499>,  <39.293499, 33.339684, 40.708725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441288, 32.989361, 40.584499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296306, 0.427805, -0.853924,
		0.880736, 0.223477, 0.417568,
		0.369470, -0.875809, -0.310565,
		39.552128, 32.726620, 40.491329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962772, 33.607639, 40.354130>,  <39.293499, 33.339684, 40.708725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962772, 33.607639, 40.354130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952065, 33.229282, 40.224781>,  <39.945641, 33.002270, 40.147171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952065, 33.229282, 40.224781>,  <39.962772, 33.607639, 40.354130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952065, 33.229282, 40.224781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438693, 0.279560, -0.854046,
		0.898238, -0.164725, 0.407472,
		-0.026770, -0.945892, -0.323375,
		39.944035, 32.945515, 40.127769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588810, 33.431839, 40.034393>,  <39.962772, 33.607639, 40.354130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588810, 33.431839, 40.034393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319565, 33.173462, 39.890347>,  <40.158016, 33.018436, 39.803917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319565, 33.173462, 39.890347>,  <40.588810, 33.431839, 40.034393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319565, 33.173462, 39.890347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335597, 0.167132, -0.927061,
		0.659011, -0.744870, 0.104276,
		-0.673111, -0.645938, -0.360117,
		40.117630, 32.979679, 39.782310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967930, 33.011574, 39.566460>,  <40.588810, 33.431839, 40.034393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967930, 33.011574, 39.566460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581783, 32.972404, 39.469730>,  <40.350094, 32.948902, 39.411694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581783, 32.972404, 39.469730>,  <40.967930, 33.011574, 39.566460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581783, 32.972404, 39.469730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206060, 0.282316, -0.936930,
		0.160017, -0.954311, -0.252361,
		-0.965367, -0.097923, -0.241821,
		40.292171, 32.943027, 39.397182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936054, 32.813286, 38.850636>,  <40.967930, 33.011574, 39.566460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936054, 32.813286, 38.850636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562302, 32.943401, 38.908768>,  <40.338051, 33.021473, 38.943645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562302, 32.943401, 38.908768>,  <40.936054, 32.813286, 38.850636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562302, 32.943401, 38.908768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042499, 0.506753, -0.861043,
		-0.353735, -0.798365, -0.487324,
		-0.934379, 0.325292, 0.145326,
		40.281986, 33.040989, 38.952366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673805, 32.888695, 38.205078>,  <40.936054, 32.813286, 38.850636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673805, 32.888695, 38.205078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419018, 33.114433, 38.415142>,  <40.266148, 33.249878, 38.541180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419018, 33.114433, 38.415142>,  <40.673805, 32.888695, 38.205078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419018, 33.114433, 38.415142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031254, 0.661765, -0.749059,
		-0.770258, -0.493539, -0.403884,
		-0.636966, 0.564346, 0.525155,
		40.227928, 33.283737, 38.572689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169724, 33.037655, 37.687363>,  <40.673805, 32.888695, 38.205078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169724, 33.037655, 37.687363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152611, 33.312550, 37.977432>,  <40.142342, 33.477486, 38.151474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152611, 33.312550, 37.977432>,  <40.169724, 33.037655, 37.687363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152611, 33.312550, 37.977432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071150, 0.721898, -0.688332,
		-0.996548, -0.081044, 0.018014,
		-0.042781, 0.687237, 0.725172,
		40.139778, 33.518723, 38.194984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710297, 33.540020, 37.434238>,  <40.169724, 33.037655, 37.687363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710297, 33.540020, 37.434238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914703, 33.717896, 37.728477>,  <40.037350, 33.824623, 37.905022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914703, 33.717896, 37.728477>,  <39.710297, 33.540020, 37.434238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914703, 33.717896, 37.728477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026998, 0.863660, -0.503352,
		-0.859145, 0.237363, 0.453353,
		0.511020, 0.444692, 0.735600,
		40.068008, 33.851303, 37.949158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442318, 34.165016, 37.375870>,  <39.710297, 33.540020, 37.434238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442318, 34.165016, 37.375870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771996, 34.210846, 37.597706>,  <39.969803, 34.238346, 37.730808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771996, 34.210846, 37.597706>,  <39.442318, 34.165016, 37.375870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771996, 34.210846, 37.597706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210345, 0.847318, -0.487655,
		-0.525792, 0.518579, 0.674254,
		0.824195, 0.114579, 0.554594,
		40.019253, 34.245220, 37.764084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473675, 34.894646, 37.578392>,  <39.442318, 34.165016, 37.375870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473675, 34.894646, 37.578392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844963, 34.746307, 37.590305>,  <40.067734, 34.657307, 37.597454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844963, 34.746307, 37.590305>,  <39.473675, 34.894646, 37.578392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844963, 34.746307, 37.590305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353977, 0.855685, -0.377495,
		0.114504, 0.360941, 0.925532,
		0.928218, -0.370842, 0.029786,
		40.123428, 34.635056, 37.599239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851486, 35.541008, 37.351131>,  <39.473675, 34.894646, 37.578392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851486, 35.541008, 37.351131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147877, 35.274975, 37.388248>,  <40.325710, 35.115353, 37.410519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147877, 35.274975, 37.388248>,  <39.851486, 35.541008, 37.351131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147877, 35.274975, 37.388248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596944, 0.589065, -0.544665,
		0.307587, 0.458979, 0.833504,
		0.740978, -0.665087, 0.092796,
		40.370171, 35.075447, 37.416088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438934, 35.788620, 37.673573>,  <39.851486, 35.541008, 37.351131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438934, 35.788620, 37.673573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553665, 35.505459, 37.415394>,  <40.622505, 35.335560, 37.260487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553665, 35.505459, 37.415394>,  <40.438934, 35.788620, 37.673573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553665, 35.505459, 37.415394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681836, 0.624128, -0.381528,
		0.672925, -0.330654, 0.661694,
		0.286828, -0.707907, -0.645443,
		40.639713, 35.293087, 37.221760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126827, 35.813667, 37.748123>,  <40.438934, 35.788620, 37.673573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126827, 35.813667, 37.748123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052830, 35.629440, 37.400871>,  <41.008430, 35.518902, 37.192520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052830, 35.629440, 37.400871>,  <41.126827, 35.813667, 37.748123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052830, 35.629440, 37.400871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707321, 0.550875, -0.442983,
		0.682257, -0.695996, 0.223863,
		-0.184994, -0.460571, -0.868131,
		40.997330, 35.491268, 37.140430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793407, 35.454311, 37.589718>,  <41.126827, 35.813667, 37.748123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793407, 35.454311, 37.589718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580521, 35.496708, 37.253738>,  <41.452789, 35.522148, 37.052151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580521, 35.496708, 37.253738>,  <41.793407, 35.454311, 37.589718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580521, 35.496708, 37.253738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626193, 0.716983, -0.306297,
		0.569763, -0.688985, -0.447962,
		-0.532215, 0.105993, -0.839948,
		41.420856, 35.528507, 37.001755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299809, 35.400543, 37.050312>,  <41.793407, 35.454311, 37.589718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299809, 35.400543, 37.050312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.989071, 35.568230, 36.862366>,  <41.802628, 35.668842, 36.749599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.989071, 35.568230, 36.862366>,  <42.299809, 35.400543, 37.050312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989071, 35.568230, 36.862366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584253, 0.758170, -0.289528,
		0.234861, -0.499437, -0.833908,
		-0.776846, 0.419214, -0.469862,
		41.756016, 35.693993, 36.721409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630592, 35.561523, 36.489891>,  <42.299809, 35.400543, 37.050312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630592, 35.561523, 36.489891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300270, 35.787090, 36.492455>,  <42.102077, 35.922432, 36.493992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300270, 35.787090, 36.492455>,  <42.630592, 35.561523, 36.489891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300270, 35.787090, 36.492455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543005, 0.798142, -0.260989,
		-0.152290, -0.212047, -0.965321,
		-0.825805, 0.563920, 0.006406,
		42.052528, 35.956264, 36.494377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710041, 35.880699, 35.895485>,  <42.630592, 35.561523, 36.489891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710041, 35.880699, 35.895485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456139, 36.104431, 36.108738>,  <42.303799, 36.238670, 36.236691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456139, 36.104431, 36.108738>,  <42.710041, 35.880699, 35.895485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456139, 36.104431, 36.108738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570064, 0.804746, -0.165565,
		-0.521642, 0.198826, -0.829673,
		-0.634757, 0.559332, 0.533133,
		42.265713, 36.272232, 36.268677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331993, 35.604393, 35.552979>,  <42.710041, 35.880699, 35.895485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331993, 35.604393, 35.552979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679516, 35.411472, 35.597790>,  <43.888031, 35.295719, 35.624676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679516, 35.411472, 35.597790>,  <43.331993, 35.604393, 35.552979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679516, 35.411472, 35.597790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044978, -0.148447, -0.987897,
		0.493096, 0.863335, -0.107279,
		0.868811, -0.482303, 0.112030,
		43.940159, 35.266781, 35.631397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999485, 35.938938, 35.160980>,  <43.331993, 35.604393, 35.552979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999485, 35.938938, 35.160980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.002609, 35.541965, 35.209999>,  <44.004486, 35.303783, 35.239410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.002609, 35.541965, 35.209999>,  <43.999485, 35.938938, 35.160980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002609, 35.541965, 35.209999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205278, -0.118350, -0.971522,
		0.978673, 0.032749, 0.202799,
		0.007815, -0.992432, 0.122549,
		44.004955, 35.244236, 35.246765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.656918, 35.670921, 34.905052>,  <43.999485, 35.938938, 35.160980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.656918, 35.670921, 34.905052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368164, 35.394806, 34.885513>,  <44.194912, 35.229137, 34.873791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368164, 35.394806, 34.885513>,  <44.656918, 35.670921, 34.905052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368164, 35.394806, 34.885513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133365, -0.069509, -0.988626,
		0.679045, -0.720185, 0.142238,
		-0.721881, -0.690291, -0.048847,
		44.151600, 35.187717, 34.870861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.890446, 35.144073, 34.465271>,  <44.656918, 35.670921, 34.905052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.890446, 35.144073, 34.465271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.490711, 35.155781, 34.473900>,  <44.250870, 35.162804, 34.479076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.490711, 35.155781, 34.473900>,  <44.890446, 35.144073, 34.465271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.490711, 35.155781, 34.473900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026693, -0.187732, -0.981857,
		-0.024686, -0.981784, 0.188389,
		-0.999339, 0.029267, 0.021572,
		44.190910, 35.164562, 34.480370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455708, 34.497108, 34.471272>,  <44.890446, 35.144073, 34.465271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455708, 34.497108, 34.471272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316738, 34.821438, 34.282860>,  <44.233356, 35.016033, 34.169811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316738, 34.821438, 34.282860>,  <44.455708, 34.497108, 34.471272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316738, 34.821438, 34.282860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189862, -0.431091, -0.882107,
		-0.918288, -0.395891, -0.004175,
		-0.347419, 0.810820, -0.471031,
		44.212513, 35.064686, 34.141552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822433, 34.350994, 34.079395>,  <44.455708, 34.497108, 34.471272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822433, 34.350994, 34.079395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034462, 34.640133, 33.902073>,  <44.161678, 34.813614, 33.795677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034462, 34.640133, 33.902073>,  <43.822433, 34.350994, 34.079395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034462, 34.640133, 33.902073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106674, -0.575490, -0.810822,
		-0.841216, 0.382504, -0.382160,
		0.530071, 0.722843, -0.443308,
		44.193481, 34.856987, 33.769081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565365, 34.761871, 33.367592>,  <43.822433, 34.350994, 34.079395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565365, 34.761871, 33.367592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956470, 34.698311, 33.422340>,  <44.191132, 34.660175, 33.455189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956470, 34.698311, 33.422340>,  <43.565365, 34.761871, 33.367592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956470, 34.698311, 33.422340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033663, -0.525238, -0.850289,
		0.207003, 0.835987, -0.508208,
		0.977761, -0.158905, 0.136868,
		44.249798, 34.650639, 33.463402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943321, 34.997585, 32.719288>,  <43.565365, 34.761871, 33.367592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943321, 34.997585, 32.719288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174805, 34.736012, 32.914211>,  <44.313694, 34.579067, 33.031166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174805, 34.736012, 32.914211>,  <43.943321, 34.997585, 32.719288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174805, 34.736012, 32.914211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053655, -0.626762, -0.777361,
		0.813771, 0.423716, -0.397797,
		0.578704, -0.653938, 0.487306,
		44.348415, 34.539829, 33.060402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.338623, 34.816784, 32.177418>,  <43.943321, 34.997585, 32.719288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.338623, 34.816784, 32.177418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365910, 34.534153, 32.459156>,  <44.382282, 34.364574, 32.628197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365910, 34.534153, 32.459156>,  <44.338623, 34.816784, 32.177418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365910, 34.534153, 32.459156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117283, -0.706773, -0.697651,
		0.990753, -0.035014, -0.131086,
		0.068220, -0.706573, 0.704344,
		44.386375, 34.322182, 32.670460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735840, 34.324345, 31.812475>,  <44.338623, 34.816784, 32.177418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735840, 34.324345, 31.812475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565685, 34.128452, 32.116898>,  <44.463593, 34.010918, 32.299553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565685, 34.128452, 32.116898>,  <44.735840, 34.324345, 31.812475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565685, 34.128452, 32.116898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204759, -0.767048, -0.608038,
		0.881544, -0.414484, 0.226015,
		-0.425386, -0.489734, 0.761056,
		44.438068, 33.981533, 32.345215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.832397, 33.549339, 31.611105>,  <44.735840, 34.324345, 31.812475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.832397, 33.549339, 31.611105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574928, 33.525826, 31.916321>,  <44.420448, 33.511715, 32.099449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574928, 33.525826, 31.916321>,  <44.832397, 33.549339, 31.611105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.574928, 33.525826, 31.916321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442595, -0.784799, -0.433820,
		0.624337, -0.616955, 0.479133,
		-0.643671, -0.058788, 0.763041,
		44.381828, 33.508190, 32.145233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.841625, 32.812618, 31.941463>,  <44.832397, 33.549339, 31.611105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.841625, 32.812618, 31.941463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488884, 32.989498, 32.006943>,  <44.277241, 33.095627, 32.046230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488884, 32.989498, 32.006943>,  <44.841625, 32.812618, 31.941463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488884, 32.989498, 32.006943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447558, -0.675669, -0.585801,
		-0.148436, -0.589854, 0.793750,
		-0.881850, 0.442203, 0.163701,
		44.224331, 33.122158, 32.056053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350185, 32.272358, 32.152977>,  <44.841625, 32.812618, 31.941463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350185, 32.272358, 32.152977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124954, 32.575523, 32.021214>,  <43.989815, 32.757423, 31.942156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124954, 32.575523, 32.021214>,  <44.350185, 32.272358, 32.152977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124954, 32.575523, 32.021214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560352, -0.643130, -0.521909,
		-0.607412, -0.109295, 0.786832,
		-0.563078, 0.757917, -0.329401,
		43.956032, 32.802898, 31.922392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577805, 32.120640, 32.302872>,  <44.350185, 32.272358, 32.152977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577805, 32.120640, 32.302872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594700, 32.371872, 31.992073>,  <43.604836, 32.522610, 31.805593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594700, 32.371872, 31.992073>,  <43.577805, 32.120640, 32.302872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594700, 32.371872, 31.992073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453869, -0.680756, -0.574955,
		-0.890067, 0.376942, 0.256312,
		0.042239, 0.628081, -0.777001,
		43.607372, 32.560295, 31.758972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809547, 32.219353, 31.995441>,  <43.577805, 32.120640, 32.302872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809547, 32.219353, 31.995441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066704, 32.322807, 31.707052>,  <43.220997, 32.384880, 31.534018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066704, 32.322807, 31.707052>,  <42.809547, 32.219353, 31.995441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066704, 32.322807, 31.707052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606455, -0.403090, -0.685370,
		-0.467878, 0.877854, -0.102291,
		0.642886, 0.258635, -0.720975,
		43.259571, 32.400398, 31.490759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380684, 32.112953, 31.437290>,  <42.809547, 32.219353, 31.995441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380684, 32.112953, 31.437290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700783, 32.235119, 31.230860>,  <42.892841, 32.308418, 31.107002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700783, 32.235119, 31.230860>,  <42.380684, 32.112953, 31.437290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700783, 32.235119, 31.230860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460307, -0.238746, -0.855054,
		-0.384354, 0.921805, -0.050472,
		0.800243, 0.305411, -0.516077,
		42.940857, 32.326740, 31.076036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170769, 32.619186, 30.779501>,  <42.380684, 32.112953, 31.437290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170769, 32.619186, 30.779501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522190, 32.441772, 30.708603>,  <42.733044, 32.335323, 30.666065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522190, 32.441772, 30.708603>,  <42.170769, 32.619186, 30.779501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522190, 32.441772, 30.708603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353280, -0.353673, -0.866088,
		0.321457, 0.823523, -0.467414,
		0.878555, -0.443538, -0.177244,
		42.785755, 32.308712, 30.655430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394428, 32.803589, 30.060862>,  <42.170769, 32.619186, 30.779501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394428, 32.803589, 30.060862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591927, 32.471870, 30.165535>,  <42.710426, 32.272839, 30.228340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591927, 32.471870, 30.165535>,  <42.394428, 32.803589, 30.060862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591927, 32.471870, 30.165535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221242, -0.410815, -0.884468,
		0.840993, 0.378804, -0.386313,
		0.493743, -0.829300, 0.261685,
		42.740051, 32.223080, 30.244040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817905, 32.528103, 29.366306>,  <42.394428, 32.803589, 30.060862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817905, 32.528103, 29.366306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810894, 32.214962, 29.615089>,  <42.806686, 32.027077, 29.764359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810894, 32.214962, 29.615089>,  <42.817905, 32.528103, 29.366306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810894, 32.214962, 29.615089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348469, -0.578265, -0.737685,
		0.937156, -0.229666, -0.262662,
		-0.017533, -0.782856, 0.621956,
		42.805634, 31.980104, 29.801676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007702, 31.913687, 28.968925>,  <42.817905, 32.528103, 29.366306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007702, 31.913687, 28.968925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799294, 31.778847, 29.282587>,  <42.674248, 31.697943, 29.470783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799294, 31.778847, 29.282587>,  <43.007702, 31.913687, 28.968925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799294, 31.778847, 29.282587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391569, -0.721926, -0.570523,
		0.758424, -0.604307, 0.244144,
		-0.521025, -0.337100, 0.784154,
		42.642986, 31.677717, 29.517834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085674, 31.131268, 29.038614>,  <43.007702, 31.913687, 28.968925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085674, 31.131268, 29.038614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735958, 31.253517, 29.189457>,  <42.526127, 31.326868, 29.279963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735958, 31.253517, 29.189457>,  <43.085674, 31.131268, 29.038614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735958, 31.253517, 29.189457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463500, -0.756380, -0.461581,
		0.144165, -0.578345, 0.802953,
		-0.874291, 0.305625, 0.377107,
		42.473671, 31.345205, 29.302589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869564, 30.566746, 29.198048>,  <43.085674, 31.131268, 29.038614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869564, 30.566746, 29.198048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528034, 30.773632, 29.221590>,  <42.323116, 30.897764, 29.235716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528034, 30.773632, 29.221590>,  <42.869564, 30.566746, 29.198048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528034, 30.773632, 29.221590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510608, -0.810147, -0.287997,
		-0.101275, -0.275952, 0.955821,
		-0.853829, 0.517216, 0.058856,
		42.271885, 30.928797, 29.239246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408150, 30.100340, 29.479549>,  <42.869564, 30.566746, 29.198048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408150, 30.100340, 29.479549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156273, 30.370649, 29.326283>,  <42.005146, 30.532835, 29.234322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156273, 30.370649, 29.326283>,  <42.408150, 30.100340, 29.479549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156273, 30.370649, 29.326283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611406, -0.735394, -0.292196,
		-0.479236, 0.050276, 0.876245,
		-0.629694, 0.675772, -0.383167,
		41.967365, 30.573381, 29.211332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653339, 29.980415, 29.791834>,  <42.408150, 30.100340, 29.479549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653339, 29.980415, 29.791834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631500, 30.173918, 29.442434>,  <41.618397, 30.290018, 29.232794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631500, 30.173918, 29.442434>,  <41.653339, 29.980415, 29.791834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631500, 30.173918, 29.442434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568345, -0.734323, -0.371152,
		-0.820977, 0.476184, 0.315032,
		-0.054598, 0.483754, -0.873499,
		41.615120, 30.319044, 29.180384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949024, 30.047703, 29.575068>,  <41.653339, 29.980415, 29.791834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949024, 30.047703, 29.575068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138180, 30.119905, 29.230095>,  <41.251675, 30.163227, 29.023111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138180, 30.119905, 29.230095>,  <40.949024, 30.047703, 29.575068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138180, 30.119905, 29.230095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583314, -0.669462, -0.459962,
		-0.660392, 0.720582, -0.211292,
		0.472892, 0.180505, -0.862433,
		41.280048, 30.174057, 28.971365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464172, 30.185375, 29.064606>,  <40.949024, 30.047703, 29.575068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464172, 30.185375, 29.064606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780006, 30.094612, 28.836546>,  <40.969505, 30.040154, 28.699711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780006, 30.094612, 28.836546>,  <40.464172, 30.185375, 29.064606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780006, 30.094612, 28.836546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552006, -0.668486, -0.498413,
		-0.268043, 0.708265, -0.653080,
		0.789583, -0.226908, -0.570150,
		41.016880, 30.026539, 28.665501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270653, 30.234552, 28.388720>,  <40.464172, 30.185375, 29.064606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270653, 30.234552, 28.388720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575432, 29.976347, 28.409668>,  <40.758301, 29.821423, 28.422237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575432, 29.976347, 28.409668>,  <40.270653, 30.234552, 28.388720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575432, 29.976347, 28.409668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524392, -0.662389, -0.535028,
		0.380060, 0.380200, -0.843210,
		0.761950, -0.645515, 0.052373,
		40.804016, 29.782692, 28.425381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192265, 29.713608, 27.849380>,  <40.270653, 30.234552, 28.388720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192265, 29.713608, 27.849380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464890, 29.498146, 28.047504>,  <40.628464, 29.368870, 28.166378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464890, 29.498146, 28.047504>,  <40.192265, 29.713608, 27.849380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464890, 29.498146, 28.047504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335073, -0.831467, -0.443158,
		0.650542, 0.136072, -0.747181,
		0.681558, -0.538653, 0.495310,
		40.669357, 29.336550, 28.196096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650860, 29.210674, 27.399612>,  <40.192265, 29.713608, 27.849380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650860, 29.210674, 27.399612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631641, 29.068235, 27.772898>,  <40.620110, 28.982773, 27.996868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631641, 29.068235, 27.772898>,  <40.650860, 29.210674, 27.399612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631641, 29.068235, 27.772898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266454, -0.895866, -0.355564,
		0.962649, -0.265743, -0.051837,
		-0.048049, -0.356095, 0.933213,
		40.617226, 28.961407, 28.052862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311180, 28.828405, 27.574436>,  <40.650860, 29.210674, 27.399612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311180, 28.828405, 27.574436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976727, 28.692265, 27.746498>,  <40.776054, 28.610580, 27.849735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976727, 28.692265, 27.746498>,  <41.311180, 28.828405, 27.574436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976727, 28.692265, 27.746498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152121, -0.897336, -0.414304,
		0.527003, -0.280980, 0.802071,
		-0.836138, -0.340351, 0.430155,
		40.725883, 28.590158, 27.875546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470356, 28.069393, 27.835686>,  <41.311180, 28.828405, 27.574436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470356, 28.069393, 27.835686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080742, 28.135542, 27.773846>,  <40.846973, 28.175230, 27.736742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080742, 28.135542, 27.773846>,  <41.470356, 28.069393, 27.835686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080742, 28.135542, 27.773846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071517, -0.872725, -0.482945,
		-0.214789, -0.459350, 0.861895,
		-0.974038, 0.165371, -0.154601,
		40.788528, 28.185154, 27.727465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550377, 27.652782, 28.513252>,  <41.470356, 28.069393, 27.835686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550377, 27.652782, 28.513252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816402, 27.723976, 28.223146>,  <41.976017, 27.766691, 28.049084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816402, 27.723976, 28.223146>,  <41.550377, 27.652782, 28.513252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816402, 27.723976, 28.223146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746768, -0.152024, 0.647477,
		0.004982, -0.972220, -0.234018,
		0.665066, 0.177982, -0.725265,
		42.015923, 27.777370, 28.005568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097595, 27.109089, 28.601898>,  <41.550377, 27.652782, 28.513252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097595, 27.109089, 28.601898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295605, 27.404247, 28.418394>,  <42.414410, 27.581343, 28.308292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295605, 27.404247, 28.418394>,  <42.097595, 27.109089, 28.601898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295605, 27.404247, 28.418394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721618, -0.055060, 0.690099,
		0.483961, -0.672665, -0.559735,
		0.495025, 0.737895, -0.458760,
		42.444111, 27.625616, 28.280766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654472, 26.924364, 29.009008>,  <42.097595, 27.109089, 28.601898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654472, 26.924364, 29.009008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833424, 26.664930, 29.255322>,  <42.940796, 26.509270, 29.403109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833424, 26.664930, 29.255322>,  <42.654472, 26.924364, 29.009008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833424, 26.664930, 29.255322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887989, 0.240203, -0.392145,
		0.106427, 0.722246, 0.683399,
		0.447380, -0.648586, 0.615782,
		42.967636, 26.470354, 29.440056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313690, 27.660604, 29.086472>,  <42.654472, 26.924364, 29.009008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313690, 27.660604, 29.086472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532204, 27.810417, 28.786793>,  <42.663311, 27.900305, 28.606985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532204, 27.810417, 28.786793>,  <42.313690, 27.660604, 29.086472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532204, 27.810417, 28.786793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515693, 0.554438, 0.653191,
		0.660024, -0.743186, 0.109740,
		0.546287, 0.374530, -0.749198,
		42.696091, 27.922775, 28.562033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953419, 27.615063, 29.358839>,  <42.313690, 27.660604, 29.086472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953419, 27.615063, 29.358839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923435, 27.907808, 29.087914>,  <42.905445, 28.083456, 28.925358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923435, 27.907808, 29.087914>,  <42.953419, 27.615063, 29.358839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923435, 27.907808, 29.087914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559998, 0.592902, 0.578679,
		0.825096, -0.335919, -0.454284,
		-0.074957, 0.731864, -0.677315,
		42.900948, 28.127367, 28.884718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610580, 27.953068, 29.444281>,  <42.953419, 27.615063, 29.358839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610580, 27.953068, 29.444281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400387, 28.227163, 29.242561>,  <43.274273, 28.391621, 29.121529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400387, 28.227163, 29.242561>,  <43.610580, 27.953068, 29.444281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.400387, 28.227163, 29.242561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470577, 0.727897, 0.498722,
		0.708822, 0.024757, -0.704953,
		-0.525479, 0.685240, -0.504299,
		43.242744, 28.432735, 29.091272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053623, 28.285488, 28.993473>,  <43.610580, 27.953068, 29.444281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053623, 28.285488, 28.993473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759399, 28.525042, 29.120146>,  <43.582863, 28.668774, 29.196150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759399, 28.525042, 29.120146>,  <44.053623, 28.285488, 28.993473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759399, 28.525042, 29.120146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670308, 0.575658, 0.468300,
		0.098158, 0.556738, -0.824869,
		-0.735562, 0.598883, 0.316680,
		43.538731, 28.704706, 29.215151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.244102, 28.937569, 28.827496>,  <44.053623, 28.285488, 28.993473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.244102, 28.937569, 28.827496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.982414, 28.990032, 29.125433>,  <43.825401, 29.021511, 29.304195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.982414, 28.990032, 29.125433>,  <44.244102, 28.937569, 28.827496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.982414, 28.990032, 29.125433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646592, 0.607872, 0.460881,
		-0.392322, 0.783128, -0.482487,
		-0.654219, 0.131158, 0.744846,
		43.786148, 29.029379, 29.348886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111393, 29.615305, 28.867987>,  <44.244102, 28.937569, 28.827496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111393, 29.615305, 28.867987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047657, 29.465445, 29.233335>,  <44.009415, 29.375528, 29.452545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047657, 29.465445, 29.233335>,  <44.111393, 29.615305, 28.867987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.047657, 29.465445, 29.233335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592278, 0.703913, 0.392062,
		-0.789820, 0.603442, 0.109736,
		-0.159342, -0.374652, 0.913371,
		43.999855, 29.353048, 29.507347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962261, 30.135290, 29.288425>,  <44.111393, 29.615305, 28.867987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962261, 30.135290, 29.288425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098690, 29.868410, 29.553307>,  <44.180550, 29.708282, 29.712234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098690, 29.868410, 29.553307>,  <43.962261, 30.135290, 29.288425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098690, 29.868410, 29.553307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563602, 0.708931, 0.423992,
		-0.752343, 0.228604, 0.617835,
		0.341076, -0.667201, 0.662201,
		44.201012, 29.668249, 29.751966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068428, 30.544771, 29.826233>,  <43.962261, 30.135290, 29.288425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.068428, 30.544771, 29.826233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271080, 30.210232, 29.909990>,  <44.392670, 30.009508, 29.960245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271080, 30.210232, 29.909990>,  <44.068428, 30.544771, 29.826233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271080, 30.210232, 29.909990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660334, 0.532566, 0.529464,
		-0.554334, -0.129971, 0.822084,
		0.506629, -0.836350, 0.209396,
		44.423069, 29.959328, 29.972809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.097080, 30.559469, 30.499565>,  <44.068428, 30.544771, 29.826233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.097080, 30.559469, 30.499565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381992, 30.303898, 30.383343>,  <44.552940, 30.150555, 30.313608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381992, 30.303898, 30.383343>,  <44.097080, 30.559469, 30.499565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381992, 30.303898, 30.383343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644776, 0.432053, 0.630551,
		-0.277341, -0.636475, 0.719710,
		0.712283, -0.638929, -0.290557,
		44.595676, 30.112219, 30.296175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.466137, 30.484163, 31.036512>,  <44.097080, 30.559469, 30.499565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.466137, 30.484163, 31.036512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729790, 30.337641, 30.773798>,  <44.887981, 30.249727, 30.616169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729790, 30.337641, 30.773798>,  <44.466137, 30.484163, 31.036512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.729790, 30.337641, 30.773798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743460, 0.448872, 0.495762,
		0.113213, -0.815066, 0.568199,
		0.659127, -0.366307, -0.656787,
		44.927528, 30.227749, 30.576761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.992054, 30.206936, 31.461407>,  <44.466137, 30.484163, 31.036512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.992054, 30.206936, 31.461407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156097, 30.261650, 31.100719>,  <45.254524, 30.294479, 30.884306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156097, 30.261650, 31.100719>,  <44.992054, 30.206936, 31.461407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.156097, 30.261650, 31.100719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777794, 0.463860, 0.424112,
		0.476283, -0.875285, 0.083846,
		0.410111, 0.136783, -0.901720,
		45.279129, 30.302685, 30.830204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.658798, 29.924570, 31.542706>,  <44.992054, 30.206936, 31.461407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.658798, 29.924570, 31.542706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.643291, 30.199764, 31.252831>,  <45.633987, 30.364882, 31.078905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.643291, 30.199764, 31.252831>,  <45.658798, 29.924570, 31.542706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.643291, 30.199764, 31.252831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673894, 0.553487, 0.489408,
		0.737811, -0.469390, -0.485086,
		-0.038766, 0.687987, -0.724687,
		45.631660, 30.406160, 31.035425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.412975, 30.101074, 31.523363>,  <45.658798, 29.924570, 31.542706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.412975, 30.101074, 31.523363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.160782, 30.375217, 31.377607>,  <46.009468, 30.539703, 31.290154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.160782, 30.375217, 31.377607>,  <46.412975, 30.101074, 31.523363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.160782, 30.375217, 31.377607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493007, 0.716176, 0.494000,
		0.599533, 0.131812, -0.789421,
		-0.630480, 0.685360, -0.364387,
		45.971638, 30.580826, 31.268291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.818180, 30.590490, 31.416384>,  <46.412975, 30.101074, 31.523363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.818180, 30.590490, 31.416384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.462463, 30.772236, 31.437197>,  <46.249031, 30.881283, 31.449684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.462463, 30.772236, 31.437197>,  <46.818180, 30.590490, 31.416384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.462463, 30.772236, 31.437197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422593, 0.772907, 0.473318,
		0.174843, 0.442907, -0.879354,
		-0.889295, 0.454365, 0.052032,
		46.195675, 30.908545, 31.452806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.042690, 31.359713, 31.375689>,  <46.818180, 30.590490, 31.416384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.042690, 31.359713, 31.375689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.668095, 31.365828, 31.515835>,  <46.443336, 31.369495, 31.599922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.668095, 31.365828, 31.515835>,  <47.042690, 31.359713, 31.375689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.668095, 31.365828, 31.515835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185806, 0.868931, 0.458732,
		-0.297430, 0.494698, -0.816584,
		-0.936489, 0.015286, 0.350364,
		46.387146, 31.370413, 31.620943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.846291, 32.027248, 31.338043>,  <47.042690, 31.359713, 31.375689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.846291, 32.027248, 31.338043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.572330, 31.895651, 31.598095>,  <46.407955, 31.816692, 31.754126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.572330, 31.895651, 31.598095>,  <46.846291, 32.027248, 31.338043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.572330, 31.895651, 31.598095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201858, 0.771661, 0.603153,
		-0.700115, 0.544335, -0.462102,
		-0.684904, -0.328997, 0.650129,
		46.366859, 31.796951, 31.793133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.484241, 32.591507, 31.683729>,  <46.846291, 32.027248, 31.338043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.484241, 32.591507, 31.683729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346695, 32.304733, 31.926302>,  <46.264168, 32.132668, 32.071846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346695, 32.304733, 31.926302>,  <46.484241, 32.591507, 31.683729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.346695, 32.304733, 31.926302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025105, 0.652604, 0.757283,
		-0.938684, 0.245177, -0.242406,
		-0.343863, -0.716935, 0.606434,
		46.243534, 32.089653, 32.108231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864689, 32.901703, 32.040375>,  <46.484241, 32.591507, 31.683729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.864689, 32.901703, 32.040375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.008156, 32.601448, 32.262329>,  <46.094234, 32.421295, 32.395500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.008156, 32.601448, 32.262329>,  <45.864689, 32.901703, 32.040375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.008156, 32.601448, 32.262329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101023, 0.622158, 0.776347,
		-0.927984, -0.222391, 0.298977,
		0.358663, -0.750641, 0.554886,
		46.115753, 32.376255, 32.428795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.475010, 32.730373, 32.713501>,  <45.864689, 32.901703, 32.040375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.475010, 32.730373, 32.713501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.859562, 32.636242, 32.770592>,  <46.090294, 32.579762, 32.804844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.859562, 32.636242, 32.770592>,  <45.475010, 32.730373, 32.713501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.859562, 32.636242, 32.770592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045555, 0.647468, 0.760730,
		-0.271432, -0.724848, 0.633183,
		0.961379, -0.235331, 0.142723,
		46.147976, 32.565643, 32.813408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.533009, 32.886074, 33.345348>,  <45.475010, 32.730373, 32.713501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.533009, 32.886074, 33.345348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917053, 32.821346, 33.254135>,  <46.147480, 32.782509, 33.199406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917053, 32.821346, 33.254135>,  <45.533009, 32.886074, 33.345348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.917053, 32.821346, 33.254135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276024, 0.678750, 0.680521,
		0.044658, -0.716320, 0.696342,
		0.960113, -0.161816, -0.228033,
		46.205086, 32.772800, 33.185726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.911530, 32.749626, 34.061474>,  <45.533009, 32.886074, 33.345348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.911530, 32.749626, 34.061474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174858, 32.847164, 33.776615>,  <46.332855, 32.905685, 33.605698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174858, 32.847164, 33.776615>,  <45.911530, 32.749626, 34.061474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.174858, 32.847164, 33.776615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499563, 0.566167, 0.655661,
		0.563065, -0.787401, 0.250913,
		0.658327, 0.243833, -0.712145,
		46.372353, 32.920319, 33.562969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.615482, 32.536659, 34.242214>,  <45.911530, 32.749626, 34.061474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.615482, 32.536659, 34.242214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.652912, 32.831364, 33.974354>,  <46.675369, 33.008186, 33.813637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.652912, 32.831364, 33.974354>,  <46.615482, 32.536659, 34.242214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.652912, 32.831364, 33.974354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625453, 0.479814, 0.615294,
		0.774630, -0.476411, -0.415909,
		0.093573, 0.736757, -0.669651,
		46.680984, 33.052391, 33.773457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.275612, 32.786583, 34.470657>,  <46.615482, 32.536659, 34.242214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.275612, 32.786583, 34.470657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.115681, 33.072113, 34.240669>,  <47.019722, 33.243431, 34.102676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.115681, 33.072113, 34.240669>,  <47.275612, 32.786583, 34.470657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.115681, 33.072113, 34.240669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564278, 0.686026, 0.459303,
		0.722305, -0.140799, -0.677090,
		-0.399832, 0.713824, -0.574970,
		46.995731, 33.286259, 34.068180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.848759, 33.236530, 34.163876>,  <47.275612, 32.786583, 34.470657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.848759, 33.236530, 34.163876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.513649, 33.454781, 34.172173>,  <47.312584, 33.585732, 34.177151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.513649, 33.454781, 34.172173>,  <47.848759, 33.236530, 34.163876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.513649, 33.454781, 34.172173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483499, 0.723659, 0.492490,
		0.253701, 0.422626, -0.870071,
		-0.837774, 0.545623, 0.020746,
		47.262318, 33.618469, 34.178398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.180683, 33.842640, 34.312840>,  <47.848759, 33.236530, 34.163876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.180683, 33.842640, 34.312840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.785213, 33.896988, 34.338360>,  <47.547932, 33.929596, 34.353672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.785213, 33.896988, 34.338360>,  <48.180683, 33.842640, 34.312840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.785213, 33.896988, 34.338360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147325, 0.796933, 0.585827,
		0.028751, 0.588589, -0.807921,
		-0.988670, 0.135870, 0.063801,
		47.488613, 33.937748, 34.357502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.050220, 34.508190, 34.210407>,  <48.180683, 33.842640, 34.312840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.050220, 34.508190, 34.210407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.741505, 34.376007, 34.427715>,  <47.556274, 34.296696, 34.558098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.741505, 34.376007, 34.427715>,  <48.050220, 34.508190, 34.210407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.741505, 34.376007, 34.427715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075265, 0.800875, 0.594083,
		-0.631409, 0.499396, -0.593234,
		-0.771788, -0.330460, 0.543267,
		47.509968, 34.276871, 34.590694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.466507, 35.026825, 34.342075>,  <48.050220, 34.508190, 34.210407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.466507, 35.026825, 34.342075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.494141, 34.757305, 34.636349>,  <47.510719, 34.595592, 34.812912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.494141, 34.757305, 34.636349>,  <47.466507, 35.026825, 34.342075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.494141, 34.757305, 34.636349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312689, 0.714906, 0.625408,
		-0.947340, 0.186833, 0.260078,
		0.069084, -0.673797, 0.735680,
		47.514866, 34.555164, 34.857052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.434196, 35.482922, 34.889404>,  <47.466507, 35.026825, 34.342075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.434196, 35.482922, 34.889404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.579876, 35.127087, 34.999676>,  <47.667282, 34.913586, 35.065838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.579876, 35.127087, 34.999676>,  <47.434196, 35.482922, 34.889404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.579876, 35.127087, 34.999676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269286, 0.383950, 0.883214,
		-0.891540, -0.247430, 0.379387,
		0.364199, -0.889585, 0.275677,
		47.689137, 34.860210, 35.082378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.248539, 35.805294, 43.557774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.861420, 35.710621, 43.592072>,  <34.629150, 35.653816, 43.612652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.861420, 35.710621, 43.592072>,  <35.248539, 35.805294, 43.557774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861420, 35.710621, 43.592072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088548, 0.001204, -0.996071,
		0.235649, -0.971586, -0.022123,
		-0.967796, -0.236682, 0.085748,
		34.571079, 35.639618, 43.617794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092934, 35.489967, 42.971760>,  <35.248539, 35.805294, 43.557774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092934, 35.489967, 42.971760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.722706, 35.552345, 43.109749>,  <34.500568, 35.589771, 43.192543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.722706, 35.552345, 43.109749>,  <35.092934, 35.489967, 42.971760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722706, 35.552345, 43.109749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361039, -0.089436, -0.928252,
		-0.113908, -0.983708, 0.139083,
		-0.925568, 0.155950, 0.344970,
		34.445034, 35.599129, 43.213242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656742, 35.030834, 42.582539>,  <35.092934, 35.489967, 42.971760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656742, 35.030834, 42.582539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.450180, 35.334934, 42.740192>,  <34.326244, 35.517395, 42.834785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.450180, 35.334934, 42.740192>,  <34.656742, 35.030834, 42.582539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450180, 35.334934, 42.740192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406972, 0.187080, -0.894078,
		-0.753458, -0.622110, 0.212792,
		-0.516406, 0.760250, 0.394138,
		34.295258, 35.563011, 42.858433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974361, 34.897610, 42.406151>,  <34.656742, 35.030834, 42.582539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974361, 34.897610, 42.406151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.040234, 35.286110, 42.474926>,  <34.079758, 35.519211, 42.516190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.040234, 35.286110, 42.474926>,  <33.974361, 34.897610, 42.406151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040234, 35.286110, 42.474926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255247, 0.210339, -0.943719,
		-0.952748, 0.111527, 0.282547,
		0.164681, 0.971246, 0.171933,
		34.089638, 35.577484, 42.526505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298595, 35.286541, 42.086487>,  <33.974361, 34.897610, 42.406151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298595, 35.286541, 42.086487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.571552, 35.576408, 42.124859>,  <33.735325, 35.750328, 42.147881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.571552, 35.576408, 42.124859>,  <33.298595, 35.286541, 42.086487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571552, 35.576408, 42.124859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217826, 0.326852, -0.919630,
		-0.697778, 0.606652, 0.380892,
		0.682391, 0.724666, 0.095926,
		33.776268, 35.793808, 42.153637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079548, 35.785519, 41.620090>,  <33.298595, 35.286541, 42.086487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079548, 35.785519, 41.620090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.470509, 35.851543, 41.672920>,  <33.705086, 35.891159, 41.704617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.470509, 35.851543, 41.672920>,  <33.079548, 35.785519, 41.620090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470509, 35.851543, 41.672920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090351, 0.238645, -0.966895,
		-0.191113, 0.956976, 0.218339,
		0.977401, 0.165059, 0.132072,
		33.763729, 35.901062, 41.712543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086693, 36.403332, 41.312626>,  <33.079548, 35.785519, 41.620090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086693, 36.403332, 41.312626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.475105, 36.307766, 41.314770>,  <33.708153, 36.250427, 41.316055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.475105, 36.307766, 41.314770>,  <33.086693, 36.403332, 41.312626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475105, 36.307766, 41.314770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063307, 0.235534, -0.969802,
		0.230433, 0.942043, 0.243835,
		0.971027, -0.238910, 0.005363,
		33.766415, 36.236092, 41.316380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349220, 36.865547, 40.809212>,  <33.086693, 36.403332, 41.312626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349220, 36.865547, 40.809212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.634571, 36.593044, 40.874905>,  <33.805782, 36.429543, 40.914322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.634571, 36.593044, 40.874905>,  <33.349220, 36.865547, 40.809212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634571, 36.593044, 40.874905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312149, 0.099083, -0.944852,
		0.627419, 0.725303, 0.283339,
		0.713379, -0.681262, 0.164236,
		33.848583, 36.388664, 40.924175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992680, 37.177074, 40.691486>,  <33.349220, 36.865547, 40.809212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992680, 37.177074, 40.691486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.043385, 36.784607, 40.633183>,  <34.073807, 36.549126, 40.598198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.043385, 36.784607, 40.633183>,  <33.992680, 37.177074, 40.691486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043385, 36.784607, 40.633183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515965, 0.190728, -0.835106,
		0.847178, 0.030653, 0.530424,
		0.126765, -0.981164, -0.145764,
		34.081413, 36.490257, 40.589455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643524, 37.127487, 40.508152>,  <33.992680, 37.177074, 40.691486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643524, 37.127487, 40.508152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.471466, 36.801399, 40.353027>,  <34.368233, 36.605747, 40.259953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.471466, 36.801399, 40.353027>,  <34.643524, 37.127487, 40.508152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471466, 36.801399, 40.353027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525757, 0.122995, -0.841696,
		0.733865, -0.565941, 0.375702,
		-0.430141, -0.815220, -0.387810,
		34.342422, 36.556835, 40.236683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075077, 36.675762, 40.442444>,  <34.643524, 37.127487, 40.508152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075077, 36.675762, 40.442444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.803356, 36.565624, 40.170345>,  <34.640324, 36.499542, 40.007088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.803356, 36.565624, 40.170345>,  <35.075077, 36.675762, 40.442444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803356, 36.565624, 40.170345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706539, 0.005162, -0.707655,
		0.198360, -0.961332, 0.191036,
		-0.679306, -0.275345, -0.680242,
		34.599564, 36.483021, 39.966274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483559, 36.311405, 40.076393>,  <35.075077, 36.675762, 40.442444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483559, 36.311405, 40.076393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.141853, 36.341805, 39.870689>,  <34.936832, 36.360046, 39.747265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.141853, 36.341805, 39.870689>,  <35.483559, 36.311405, 40.076393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141853, 36.341805, 39.870689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519658, 0.098121, -0.848722,
		-0.014044, -0.992268, -0.123315,
		-0.854259, 0.076001, -0.514262,
		34.885574, 36.364605, 39.716412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549606, 35.883724, 39.460938>,  <35.483559, 36.311405, 40.076393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549606, 35.883724, 39.460938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.286144, 36.163284, 39.349422>,  <35.128067, 36.331020, 39.282513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.286144, 36.163284, 39.349422>,  <35.549606, 35.883724, 39.460938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286144, 36.163284, 39.349422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470619, 0.093548, -0.877363,
		-0.587107, -0.709078, -0.390530,
		-0.658652, 0.698897, -0.278783,
		35.088547, 36.372952, 39.265789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579819, 35.879257, 38.722790>,  <35.549606, 35.883724, 39.460938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579819, 35.879257, 38.722790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.399509, 36.228970, 38.794830>,  <35.291325, 36.438797, 38.838055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.399509, 36.228970, 38.794830>,  <35.579819, 35.879257, 38.722790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399509, 36.228970, 38.794830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393062, 0.375558, -0.839320,
		-0.801440, -0.307552, -0.512938,
		-0.450773, 0.874281, 0.180100,
		35.264278, 36.491253, 38.848862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202843, 35.947998, 38.091118>,  <35.579819, 35.879257, 38.722790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202843, 35.947998, 38.091118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.258705, 36.295982, 38.280293>,  <35.292221, 36.504772, 38.393795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.258705, 36.295982, 38.280293>,  <35.202843, 35.947998, 38.091118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258705, 36.295982, 38.280293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479922, 0.358299, -0.800810,
		-0.866124, 0.338807, -0.367476,
		0.139654, 0.869961, 0.472932,
		35.300602, 36.556969, 38.422173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974037, 36.551640, 37.599144>,  <35.202843, 35.947998, 38.091118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974037, 36.551640, 37.599144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.236931, 36.698265, 37.862556>,  <35.394669, 36.786240, 38.020603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.236931, 36.698265, 37.862556>,  <34.974037, 36.551640, 37.599144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236931, 36.698265, 37.862556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370674, 0.603566, -0.705910,
		-0.656232, 0.708052, 0.260809,
		0.657237, 0.366566, 0.658536,
		35.434101, 36.808235, 38.060116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191341, 37.193401, 37.293640>,  <34.974037, 36.551640, 37.599144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191341, 37.193401, 37.293640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.441795, 37.136513, 37.600296>,  <35.592068, 37.102379, 37.784290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.441795, 37.136513, 37.600296>,  <35.191341, 37.193401, 37.293640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441795, 37.136513, 37.600296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616779, 0.691855, -0.375394,
		-0.477013, 0.707892, 0.520911,
		0.626133, -0.142219, 0.766636,
		35.629635, 37.093845, 37.830288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497818, 37.885017, 37.612110>,  <35.191341, 37.193401, 37.293640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497818, 37.885017, 37.612110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.783848, 37.617050, 37.691986>,  <35.955467, 37.456268, 37.739910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.783848, 37.617050, 37.691986>,  <35.497818, 37.885017, 37.612110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783848, 37.617050, 37.691986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688609, 0.625862, -0.366217,
		0.120359, 0.399379, 0.908851,
		0.715075, -0.669920, 0.199688,
		35.998371, 37.416073, 37.751892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054241, 38.303585, 37.786686>,  <35.497818, 37.885017, 37.612110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054241, 38.303585, 37.786686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.220112, 37.946510, 37.716095>,  <36.319633, 37.732265, 37.673740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.220112, 37.946510, 37.716095>,  <36.054241, 38.303585, 37.786686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220112, 37.946510, 37.716095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863852, 0.447146, -0.231993,
		0.286008, -0.056247, 0.956575,
		0.414679, -0.892691, -0.176476,
		36.344517, 37.678703, 37.663151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675201, 38.279068, 38.198921>,  <36.054241, 38.303585, 37.786686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675201, 38.279068, 38.198921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.735870, 38.014191, 37.905392>,  <36.772270, 37.855267, 37.729275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.735870, 38.014191, 37.905392>,  <36.675201, 38.279068, 38.198921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735870, 38.014191, 37.905392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804263, 0.514258, -0.297825,
		0.574592, -0.545017, 0.610574,
		0.151673, -0.662190, -0.733826,
		36.781372, 37.815533, 37.685246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361847, 38.150730, 38.157513>,  <36.675201, 38.279068, 38.198921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361847, 38.150730, 38.157513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.245041, 38.042648, 37.790531>,  <37.174957, 37.977798, 37.570343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.245041, 38.042648, 37.790531>,  <37.361847, 38.150730, 38.157513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245041, 38.042648, 37.790531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809857, 0.440438, -0.387488,
		0.508781, -0.856156, 0.090213,
		-0.292017, -0.270206, -0.917450,
		37.157436, 37.961586, 37.515297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934120, 37.827446, 37.883587>,  <37.361847, 38.150730, 38.157513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934120, 37.827446, 37.883587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698650, 37.939056, 37.580112>,  <37.557369, 38.006023, 37.398026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698650, 37.939056, 37.580112>,  <37.934120, 37.827446, 37.883587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698650, 37.939056, 37.580112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780131, 0.442004, -0.442750,
		0.211803, -0.852511, -0.477876,
		-0.588672, 0.279030, -0.758688,
		37.522049, 38.022766, 37.352505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340366, 37.732327, 37.204327>,  <37.934120, 37.827446, 37.883587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340366, 37.732327, 37.204327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066265, 38.016655, 37.140881>,  <37.901802, 38.187252, 37.102814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066265, 38.016655, 37.140881>,  <38.340366, 37.732327, 37.204327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066265, 38.016655, 37.140881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690930, 0.565616, -0.450216,
		-0.230307, -0.418105, -0.878719,
		-0.685256, 0.710821, -0.158616,
		37.860687, 38.229900, 37.093296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235733, 37.106804, 37.266800>,  <38.340366, 37.732327, 37.204327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235733, 37.106804, 37.266800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.632854, 37.136784, 37.304176>,  <38.871128, 37.154770, 37.326603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.632854, 37.136784, 37.304176>,  <38.235733, 37.106804, 37.266800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632854, 37.136784, 37.304176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060722, -0.357548, 0.931919,
		0.103259, -0.930882, -0.350422,
		0.992799, 0.074951, 0.093445,
		38.930695, 37.159267, 37.332211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563564, 36.424049, 37.346462>,  <38.235733, 37.106804, 37.266800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563564, 36.424049, 37.346462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.780777, 36.711697, 37.519894>,  <38.911106, 36.884285, 37.623951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.780777, 36.711697, 37.519894>,  <38.563564, 36.424049, 37.346462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780777, 36.711697, 37.519894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051324, -0.486949, 0.871921,
		0.838140, -0.495736, -0.227523,
		0.543035, 0.719115, 0.433574,
		38.943687, 36.927429, 37.649967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071709, 36.027725, 37.696056>,  <38.563564, 36.424049, 37.346462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071709, 36.027725, 37.696056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.084309, 36.395058, 37.853882>,  <39.091869, 36.615456, 37.948578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.084309, 36.395058, 37.853882>,  <39.071709, 36.027725, 37.696056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084309, 36.395058, 37.853882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202340, -0.392446, 0.897243,
		0.978809, 0.051576, -0.198176,
		0.031497, 0.918328, 0.394565,
		39.093758, 36.670555, 37.972252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648071, 36.025837, 38.093388>,  <39.071709, 36.027725, 37.696056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648071, 36.025837, 38.093388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.436481, 36.321987, 38.259296>,  <39.309528, 36.499676, 38.358841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.436481, 36.321987, 38.259296>,  <39.648071, 36.025837, 38.093388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436481, 36.321987, 38.259296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048453, -0.514301, 0.856240,
		0.847253, 0.432833, 0.307926,
		-0.528976, 0.740371, 0.414771,
		39.277790, 36.544098, 38.383728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007343, 36.189198, 38.701035>,  <39.648071, 36.025837, 38.093388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007343, 36.189198, 38.701035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.628700, 36.303146, 38.761402>,  <39.401512, 36.371517, 38.797623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.628700, 36.303146, 38.761402>,  <40.007343, 36.189198, 38.701035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628700, 36.303146, 38.761402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015345, -0.427799, 0.903744,
		0.322016, 0.857809, 0.400587,
		-0.946610, 0.284873, 0.150921,
		39.344719, 36.388607, 38.806679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022102, 36.463459, 39.409817>,  <40.007343, 36.189198, 38.701035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022102, 36.463459, 39.409817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.633560, 36.408722, 39.332115>,  <39.400433, 36.375881, 39.285492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.633560, 36.408722, 39.332115>,  <40.022102, 36.463459, 39.409817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633560, 36.408722, 39.332115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145617, -0.303222, 0.941728,
		-0.187769, 0.943044, 0.274611,
		-0.971359, -0.136840, -0.194258,
		39.342152, 36.367668, 39.273838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745167, 36.904308, 39.864586>,  <40.022102, 36.463459, 39.409817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745167, 36.904308, 39.864586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.452385, 36.662159, 39.739510>,  <39.276718, 36.516869, 39.664463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.452385, 36.662159, 39.739510>,  <39.745167, 36.904308, 39.864586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452385, 36.662159, 39.739510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221103, -0.223057, 0.949399,
		-0.644485, 0.764051, 0.029418,
		-0.731951, -0.605369, -0.312691,
		39.232800, 36.480549, 39.645702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150589, 37.019592, 40.217426>,  <39.745167, 36.904308, 39.864586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150589, 37.019592, 40.217426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.082317, 36.645012, 40.094841>,  <39.041355, 36.420261, 40.021290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.082317, 36.645012, 40.094841>,  <39.150589, 37.019592, 40.217426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082317, 36.645012, 40.094841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530160, -0.174891, 0.829665,
		-0.830542, 0.304081, -0.466620,
		-0.170677, -0.936455, -0.306466,
		39.031113, 36.364075, 40.002903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379105, 36.827385, 40.220463>,  <39.150589, 37.019592, 40.217426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379105, 36.827385, 40.220463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.572910, 36.478104, 40.241474>,  <38.689194, 36.268536, 40.254082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.572910, 36.478104, 40.241474>,  <38.379105, 36.827385, 40.220463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572910, 36.478104, 40.241474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479052, -0.214613, 0.851147,
		-0.731954, -0.437554, -0.522294,
		0.484514, -0.873206, 0.052524,
		38.718266, 36.216141, 40.257233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932545, 36.393166, 40.362492>,  <38.379105, 36.827385, 40.220463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932545, 36.393166, 40.362492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263531, 36.193775, 40.465889>,  <38.462124, 36.074142, 40.527927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263531, 36.193775, 40.465889>,  <37.932545, 36.393166, 40.362492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263531, 36.193775, 40.465889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480037, -0.389159, 0.786206,
		-0.291305, -0.774649, -0.561302,
		0.827470, -0.498472, 0.258497,
		38.511772, 36.044231, 40.543438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704880, 35.720428, 40.614677>,  <37.932545, 36.393166, 40.362492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704880, 35.720428, 40.614677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077450, 35.726044, 40.760147>,  <38.300991, 35.729412, 40.847427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077450, 35.726044, 40.760147>,  <37.704880, 35.720428, 40.614677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077450, 35.726044, 40.760147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313107, -0.478465, 0.820387,
		0.185517, -0.877995, -0.441258,
		0.931422, 0.014034, 0.363670,
		38.356876, 35.730255, 40.869247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841091, 35.012619, 40.859066>,  <37.704880, 35.720428, 40.614677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841091, 35.012619, 40.859066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.108116, 35.251228, 41.037289>,  <38.268330, 35.394394, 41.144222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.108116, 35.251228, 41.037289>,  <37.841091, 35.012619, 40.859066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108116, 35.251228, 41.037289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296622, -0.335815, 0.894004,
		0.682917, -0.728967, -0.047237,
		0.667563, 0.596519, 0.445561,
		38.308384, 35.430183, 41.170956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073242, 34.624615, 41.440918>,  <37.841091, 35.012619, 40.859066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073242, 34.624615, 41.440918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.159393, 35.007759, 41.516937>,  <38.211086, 35.237644, 41.562550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.159393, 35.007759, 41.516937>,  <38.073242, 34.624615, 41.440918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159393, 35.007759, 41.516937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019967, -0.198898, 0.979816,
		0.976326, -0.207240, -0.061965,
		0.215381, 0.957857, 0.190052,
		38.224007, 35.295116, 41.573952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474880, 34.553207, 42.106426>,  <38.073242, 34.624615, 41.440918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474880, 34.553207, 42.106426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356426, 34.933884, 42.073929>,  <38.285355, 35.162289, 42.054432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356426, 34.933884, 42.073929>,  <38.474880, 34.553207, 42.106426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356426, 34.933884, 42.073929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229992, 0.011504, 0.973125,
		0.927043, 0.306857, 0.215474,
		-0.296132, 0.951686, -0.081240,
		38.267586, 35.219391, 42.049557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786621, 34.840221, 42.657162>,  <38.474880, 34.553207, 42.106426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786621, 34.840221, 42.657162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.494991, 35.096241, 42.560173>,  <38.320015, 35.249851, 42.501980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.494991, 35.096241, 42.560173>,  <38.786621, 34.840221, 42.657162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494991, 35.096241, 42.560173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246496, 0.084955, 0.965413,
		0.638508, 0.763625, 0.095830,
		-0.729073, 0.640046, -0.242475,
		38.276268, 35.288254, 42.487431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802372, 35.417816, 43.190002>,  <38.786621, 34.840221, 42.657162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802372, 35.417816, 43.190002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435028, 35.407848, 43.032021>,  <38.214622, 35.401867, 42.937229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435028, 35.407848, 43.032021>,  <38.802372, 35.417816, 43.190002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435028, 35.407848, 43.032021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395425, 0.017689, 0.918328,
		-0.015894, 0.999533, -0.026097,
		-0.918361, -0.024916, -0.394959,
		38.159519, 35.400375, 42.913532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356525, 35.961658, 43.559464>,  <38.802372, 35.417816, 43.190002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356525, 35.961658, 43.559464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.122845, 35.679649, 43.398640>,  <37.982635, 35.510445, 43.302147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.122845, 35.679649, 43.398640>,  <38.356525, 35.961658, 43.559464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122845, 35.679649, 43.398640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517814, -0.057680, 0.853547,
		-0.624958, 0.706839, -0.331371,
		-0.584206, -0.705019, -0.402058,
		37.947582, 35.468143, 43.278023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.637939, 36.115295, 43.846546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.585602, 35.747753, 43.697639>,  <37.554199, 35.527225, 43.608295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.585602, 35.747753, 43.697639>,  <37.637939, 36.115295, 43.846546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585602, 35.747753, 43.697639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709942, -0.175253, 0.682106,
		-0.691999, 0.353534, -0.629406,
		-0.130842, -0.918858, -0.372263,
		37.546349, 35.472095, 43.585960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888760, 36.018051, 43.718445>,  <37.637939, 36.115295, 43.846546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888760, 36.018051, 43.718445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.038395, 35.647129, 43.723629>,  <37.128178, 35.424576, 43.726742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.038395, 35.647129, 43.723629>,  <36.888760, 36.018051, 43.718445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038395, 35.647129, 43.723629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609787, -0.235418, 0.756795,
		-0.698725, -0.291015, -0.653524,
		0.374090, -0.927302, 0.012965,
		37.150623, 35.368938, 43.727520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326714, 35.635193, 43.711933>,  <36.888760, 36.018051, 43.718445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326714, 35.635193, 43.711933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599766, 35.382957, 43.859653>,  <36.763596, 35.231617, 43.948284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599766, 35.382957, 43.859653>,  <36.326714, 35.635193, 43.711933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599766, 35.382957, 43.859653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588604, -0.174951, 0.789264,
		-0.433088, -0.756145, -0.490591,
		0.682627, -0.630585, 0.369300,
		36.804554, 35.193783, 43.970444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950401, 35.177410, 44.106930>,  <36.326714, 35.635193, 43.711933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950401, 35.177410, 44.106930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.321785, 35.144840, 44.251892>,  <36.544617, 35.125298, 44.338867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.321785, 35.144840, 44.251892>,  <35.950401, 35.177410, 44.106930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321785, 35.144840, 44.251892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368900, -0.316002, 0.874103,
		0.043347, -0.945258, -0.323432,
		0.928458, -0.081424, 0.362403,
		36.600323, 35.120411, 44.360615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736168, 34.726479, 44.581577>,  <35.950401, 35.177410, 44.106930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736168, 34.726479, 44.581577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.101574, 34.857430, 44.678169>,  <36.320816, 34.936001, 44.736126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.101574, 34.857430, 44.678169>,  <35.736168, 34.726479, 44.581577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101574, 34.857430, 44.678169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163183, -0.248863, 0.954693,
		0.372638, -0.911533, -0.173919,
		0.913516, 0.327375, 0.241483,
		36.375629, 34.955643, 44.750614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077011, 34.163006, 44.948360>,  <35.736168, 34.726479, 44.581577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077011, 34.163006, 44.948360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.288982, 34.491241, 45.033970>,  <36.416164, 34.688183, 45.085335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.288982, 34.491241, 45.033970>,  <36.077011, 34.163006, 44.948360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288982, 34.491241, 45.033970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030960, -0.233488, 0.971867,
		0.847476, -0.521648, -0.098327,
		0.529931, 0.820589, 0.214026,
		36.447960, 34.737419, 45.098179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638325, 34.021412, 45.432297>,  <36.077011, 34.163006, 44.948360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638325, 34.021412, 45.432297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.577469, 34.415062, 45.468861>,  <36.540955, 34.651253, 45.490799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.577469, 34.415062, 45.468861>,  <36.638325, 34.021412, 45.432297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577469, 34.415062, 45.468861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140319, -0.113054, 0.983631,
		0.978348, 0.136821, 0.155291,
		-0.152138, 0.984123, 0.091408,
		36.531826, 34.710300, 45.496284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883694, 34.123718, 46.111607>,  <36.638325, 34.021412, 45.432297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883694, 34.123718, 46.111607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.667019, 34.449574, 46.028721>,  <36.537014, 34.645088, 45.978989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.667019, 34.449574, 46.028721>,  <36.883694, 34.123718, 46.111607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667019, 34.449574, 46.028721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252594, 0.077371, 0.964474,
		0.801733, 0.574781, 0.163863,
		-0.541683, 0.814641, -0.207217,
		36.504513, 34.693966, 45.966557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115086, 34.675739, 46.397503>,  <36.883694, 34.123718, 46.111607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115086, 34.675739, 46.397503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.733410, 34.786499, 46.352165>,  <36.504406, 34.852955, 46.324963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.733410, 34.786499, 46.352165>,  <37.115086, 34.675739, 46.397503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733410, 34.786499, 46.352165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061933, 0.187822, 0.980249,
		0.292720, 0.942364, -0.162069,
		-0.954191, 0.276901, -0.113343,
		36.447151, 34.869568, 46.318161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014507, 35.401806, 46.704205>,  <37.115086, 34.675739, 46.397503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014507, 35.401806, 46.704205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.673077, 35.194176, 46.686409>,  <36.468220, 35.069599, 46.675732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.673077, 35.194176, 46.686409>,  <37.014507, 35.401806, 46.704205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673077, 35.194176, 46.686409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149482, 0.162218, 0.975367,
		-0.499068, 0.839197, -0.216056,
		-0.853573, -0.519071, -0.044488,
		36.417004, 35.038456, 46.673061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622078, 35.712635, 47.200207>,  <37.014507, 35.401806, 46.704205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622078, 35.712635, 47.200207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.412193, 35.376984, 47.142864>,  <36.286263, 35.175594, 47.108459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.412193, 35.376984, 47.142864>,  <36.622078, 35.712635, 47.200207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412193, 35.376984, 47.142864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313468, 0.033891, 0.948994,
		-0.791466, 0.542882, -0.280821,
		-0.524709, -0.839125, -0.143353,
		36.254780, 35.125248, 47.099857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988312, 35.817215, 47.589706>,  <36.622078, 35.712635, 47.200207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988312, 35.817215, 47.589706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.068157, 35.426136, 47.563591>,  <36.116066, 35.191490, 47.547920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.068157, 35.426136, 47.563591>,  <35.988312, 35.817215, 47.589706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068157, 35.426136, 47.563591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238394, -0.113084, 0.964562,
		-0.950433, -0.176976, -0.255650,
		0.199614, -0.977697, -0.065289,
		36.128040, 35.132828, 47.544003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430321, 35.568760, 47.917774>,  <35.988312, 35.817215, 47.589706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430321, 35.568760, 47.917774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667645, 35.247719, 47.893059>,  <35.810040, 35.055096, 47.878231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667645, 35.247719, 47.893059>,  <35.430321, 35.568760, 47.917774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667645, 35.247719, 47.893059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360566, -0.333597, 0.871037,
		-0.719705, -0.494517, -0.487316,
		0.593310, -0.802599, -0.061785,
		35.845638, 35.006939, 47.874523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067245, 35.100628, 48.187958>,  <35.430321, 35.568760, 47.917774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067245, 35.100628, 48.187958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.434383, 34.944740, 48.218109>,  <35.654667, 34.851208, 48.236202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.434383, 34.944740, 48.218109>,  <35.067245, 35.100628, 48.187958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434383, 34.944740, 48.218109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279424, -0.499478, 0.820027,
		-0.281925, -0.773722, -0.567339,
		0.917845, -0.389714, 0.075381,
		35.709736, 34.827827, 48.240723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011147, 34.464645, 48.420403>,  <35.067245, 35.100628, 48.187958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011147, 34.464645, 48.420403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.401134, 34.496803, 48.503319>,  <35.635128, 34.516098, 48.553066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.401134, 34.496803, 48.503319>,  <35.011147, 34.464645, 48.420403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401134, 34.496803, 48.503319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096472, -0.687012, 0.720213,
		0.200313, -0.722184, -0.662060,
		0.974971, 0.080398, 0.207288,
		35.693626, 34.520924, 48.565506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318436, 33.808804, 48.433990>,  <35.011147, 34.464645, 48.420403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318436, 33.808804, 48.433990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.557930, 34.042297, 48.653358>,  <35.701626, 34.182392, 48.784981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.557930, 34.042297, 48.653358>,  <35.318436, 33.808804, 48.433990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557930, 34.042297, 48.653358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121516, -0.742996, 0.658172,
		0.791674, -0.327430, -0.515793,
		0.598738, 0.583735, 0.548423,
		35.737553, 34.217419, 48.817886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758553, 33.361984, 48.749249>,  <35.318436, 33.808804, 48.433990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758553, 33.361984, 48.749249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.776127, 33.683598, 48.986431>,  <35.786671, 33.876568, 49.128738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.776127, 33.683598, 48.986431>,  <35.758553, 33.361984, 48.749249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776127, 33.683598, 48.986431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025877, -0.594243, 0.803869,
		0.998699, -0.019974, -0.046914,
		0.043934, 0.804037, 0.592954,
		35.789307, 33.924809, 49.164318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387306, 33.222843, 49.192631>,  <35.758553, 33.361984, 48.749249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387306, 33.222843, 49.192631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.150032, 33.499348, 49.357700>,  <36.007668, 33.665249, 49.456741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.150032, 33.499348, 49.357700>,  <36.387306, 33.222843, 49.192631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150032, 33.499348, 49.357700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084624, -0.456217, 0.885836,
		0.800609, 0.560383, 0.212123,
		-0.593182, 0.691257, 0.412673,
		35.972076, 33.706726, 49.481503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712971, 33.476254, 49.830326>,  <36.387306, 33.222843, 49.192631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712971, 33.476254, 49.830326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.331146, 33.578941, 49.890858>,  <36.102051, 33.640556, 49.927177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.331146, 33.578941, 49.890858>,  <36.712971, 33.476254, 49.830326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331146, 33.578941, 49.890858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041568, -0.388128, 0.920668,
		0.295088, 0.885128, 0.359822,
		-0.954565, 0.256721, 0.151325,
		36.044777, 33.655956, 49.936256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720371, 33.745876, 50.563698>,  <36.712971, 33.476254, 49.830326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720371, 33.745876, 50.563698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.340046, 33.666920, 50.468208>,  <36.111851, 33.619545, 50.410915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.340046, 33.666920, 50.468208>,  <36.720371, 33.745876, 50.563698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340046, 33.666920, 50.468208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104745, -0.520395, 0.847477,
		-0.291515, 0.830798, 0.474124,
		-0.950814, -0.197390, -0.238725,
		36.054802, 33.607704, 50.396591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251205, 33.835571, 51.090878>,  <36.720371, 33.745876, 50.563698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251205, 33.835571, 51.090878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.024391, 33.582535, 50.879860>,  <35.888302, 33.430714, 50.753250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.024391, 33.582535, 50.879860>,  <36.251205, 33.835571, 51.090878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024391, 33.582535, 50.879860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231936, -0.491925, 0.839176,
		-0.790365, 0.598198, 0.132218,
		-0.567035, -0.632589, -0.527544,
		35.854282, 33.392757, 50.721596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685886, 33.706051, 51.477680>,  <36.251205, 33.835571, 51.090878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685886, 33.706051, 51.477680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.687061, 33.399132, 51.221165>,  <35.687767, 33.214981, 51.067257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.687061, 33.399132, 51.221165>,  <35.685886, 33.706051, 51.477680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687061, 33.399132, 51.221165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300189, -0.612393, 0.731343,
		-0.953875, 0.190360, -0.232131,
		0.002937, -0.767293, -0.641290,
		35.687943, 33.168945, 51.028778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028660, 33.343067, 51.483646>,  <35.685886, 33.706051, 51.477680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028660, 33.343067, 51.483646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.321556, 33.089916, 51.383022>,  <35.497295, 32.938026, 51.322647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.321556, 33.089916, 51.383022>,  <35.028660, 33.343067, 51.483646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321556, 33.089916, 51.383022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299125, -0.630712, 0.716049,
		-0.611826, -0.449082, -0.651148,
		0.732252, -0.632873, -0.251555,
		35.541229, 32.900051, 51.307552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676720, 32.689167, 51.408726>,  <35.028660, 33.343067, 51.483646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676720, 32.689167, 51.408726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.065067, 32.698399, 51.504120>,  <35.298077, 32.703938, 51.561356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.065067, 32.698399, 51.504120>,  <34.676720, 32.689167, 51.408726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065067, 32.698399, 51.504120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165136, -0.656744, 0.735810,
		0.173605, -0.753760, -0.633804,
		0.970872, 0.023077, 0.238487,
		35.356327, 32.705322, 51.575665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333672, 33.266762, 50.954533>,  <34.676720, 32.689167, 51.408726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333672, 33.266762, 50.954533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.940006, 33.202450, 50.984394>,  <33.703808, 33.163864, 51.002312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.940006, 33.202450, 50.984394>,  <34.333672, 33.266762, 50.954533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940006, 33.202450, 50.984394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133268, 0.393373, -0.909669,
		0.116884, -0.905213, -0.408569,
		-0.984164, -0.160774, 0.074657,
		33.644756, 33.154217, 51.006790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064655, 32.980274, 50.348789>,  <34.333672, 33.266762, 50.954533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064655, 32.980274, 50.348789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.743717, 33.154179, 50.512363>,  <33.551155, 33.258522, 50.610508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.743717, 33.154179, 50.512363>,  <34.064655, 32.980274, 50.348789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743717, 33.154179, 50.512363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203362, 0.445026, -0.872121,
		-0.561151, -0.782903, -0.268650,
		-0.802342, 0.434759, 0.408939,
		33.503014, 33.284607, 50.635044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452503, 32.791176, 49.872498>,  <34.064655, 32.980274, 50.348789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452503, 32.791176, 49.872498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312958, 33.087334, 50.102318>,  <33.229229, 33.265030, 50.240208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312958, 33.087334, 50.102318>,  <33.452503, 32.791176, 49.872498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312958, 33.087334, 50.102318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136342, 0.566447, -0.812742,
		-0.927202, -0.361873, -0.096668,
		-0.348867, 0.740396, 0.574549,
		33.208298, 33.309452, 50.274681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826721, 33.009575, 49.530491>,  <33.452503, 32.791176, 49.872498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826721, 33.009575, 49.530491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.959160, 33.326477, 49.735512>,  <33.038624, 33.516617, 49.858524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.959160, 33.326477, 49.735512>,  <32.826721, 33.009575, 49.530491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959160, 33.326477, 49.735512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194985, 0.588909, -0.784326,
		-0.923231, 0.159749, 0.349463,
		0.331097, 0.792254, 0.512551,
		33.058491, 33.564152, 49.889278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325840, 33.497028, 49.451641>,  <32.826721, 33.009575, 49.530491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325840, 33.497028, 49.451641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.657036, 33.701801, 49.543175>,  <32.855751, 33.824665, 49.598095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.657036, 33.701801, 49.543175>,  <32.325840, 33.497028, 49.451641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657036, 33.701801, 49.543175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079523, 0.511166, -0.855795,
		-0.555082, 0.690388, 0.463948,
		0.827986, 0.511931, 0.228838,
		32.905430, 33.855381, 49.611828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193619, 33.994556, 49.076271>,  <32.325840, 33.497028, 49.451641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193619, 33.994556, 49.076271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.561771, 34.090759, 49.199593>,  <32.782665, 34.148479, 49.273586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.561771, 34.090759, 49.199593>,  <32.193619, 33.994556, 49.076271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561771, 34.090759, 49.199593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094423, 0.628428, -0.772115,
		-0.379444, 0.739753, 0.555686,
		0.920384, 0.240505, 0.308303,
		32.837887, 34.162910, 49.292084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222244, 34.691444, 49.052979>,  <32.193619, 33.994556, 49.076271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222244, 34.691444, 49.052979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.603645, 34.571594, 49.039970>,  <32.832485, 34.499683, 49.032166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.603645, 34.571594, 49.039970>,  <32.222244, 34.691444, 49.052979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603645, 34.571594, 49.039970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168581, 0.619673, -0.766541,
		0.249824, 0.725417, 0.641371,
		0.953503, -0.299624, -0.032518,
		32.889698, 34.481709, 49.030216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627186, 35.275177, 48.778343>,  <32.222244, 34.691444, 49.052979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627186, 35.275177, 48.778343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.884525, 34.977917, 48.704765>,  <33.038929, 34.799561, 48.660618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.884525, 34.977917, 48.704765>,  <32.627186, 35.275177, 48.778343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884525, 34.977917, 48.704765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310791, 0.473102, -0.824369,
		0.699655, 0.473184, 0.535332,
		0.643344, -0.743150, -0.183947,
		33.077530, 34.754971, 48.649582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164719, 35.596359, 48.397778>,  <32.627186, 35.275177, 48.778343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164719, 35.596359, 48.397778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.238804, 35.210083, 48.324966>,  <33.283257, 34.978317, 48.281281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.238804, 35.210083, 48.324966>,  <33.164719, 35.596359, 48.397778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238804, 35.210083, 48.324966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540455, 0.254801, -0.801864,
		0.820734, 0.050141, 0.569106,
		0.185214, -0.965693, -0.182025,
		33.294369, 34.920376, 48.270359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898640, 35.604382, 48.273262>,  <33.164719, 35.596359, 48.397778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898640, 35.604382, 48.273262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.703323, 35.304195, 48.095108>,  <33.586132, 35.124084, 47.988216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.703323, 35.304195, 48.095108>,  <33.898640, 35.604382, 48.273262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703323, 35.304195, 48.095108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441962, 0.227417, -0.867727,
		0.752488, -0.620552, 0.220631,
		-0.488294, -0.750464, -0.445389,
		33.556835, 35.079056, 47.961491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451794, 35.359631, 47.907146>,  <33.898640, 35.604382, 48.273262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451794, 35.359631, 47.907146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.094543, 35.255554, 47.760376>,  <33.880196, 35.193108, 47.672314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.094543, 35.255554, 47.760376>,  <34.451794, 35.359631, 47.907146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094543, 35.255554, 47.760376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296266, 0.273525, -0.915101,
		0.338468, -0.926003, -0.167204,
		-0.893121, -0.260196, -0.366923,
		33.826607, 35.177498, 47.650299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565609, 34.973122, 47.423447>,  <34.451794, 35.359631, 47.907146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565609, 34.973122, 47.423447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.193401, 35.073895, 47.317116>,  <33.970078, 35.134357, 47.253315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.193401, 35.073895, 47.317116>,  <34.565609, 34.973122, 47.423447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193401, 35.073895, 47.317116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335288, 0.293917, -0.895095,
		-0.147373, -0.922032, -0.357966,
		-0.930518, 0.251934, -0.265831,
		33.914246, 35.149475, 47.237366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303104, 34.486721, 46.836948>,  <34.565609, 34.973122, 47.423447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303104, 34.486721, 46.836948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087696, 34.823410, 46.821465>,  <33.958450, 35.025425, 46.812176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087696, 34.823410, 46.821465>,  <34.303104, 34.486721, 46.836948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087696, 34.823410, 46.821465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317401, 0.160084, -0.934682,
		-0.780546, -0.515632, -0.353372,
		-0.538521, 0.841723, -0.038709,
		33.926140, 35.075928, 46.809853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036961, 34.458363, 46.189381>,  <34.303104, 34.486721, 46.836948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036961, 34.458363, 46.189381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.965374, 34.839897, 46.285854>,  <33.922424, 35.068817, 46.343739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.965374, 34.839897, 46.285854>,  <34.036961, 34.458363, 46.189381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965374, 34.839897, 46.285854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181692, 0.272970, -0.944709,
		-0.966933, -0.125247, -0.222155,
		-0.178964, 0.953835, 0.241187,
		33.911686, 35.126049, 46.358212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624901, 34.673401, 45.622974>,  <34.036961, 34.458363, 46.189381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624901, 34.673401, 45.622974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.759296, 35.008957, 45.794266>,  <33.839931, 35.210289, 45.897041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.759296, 35.008957, 45.794266>,  <33.624901, 34.673401, 45.622974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759296, 35.008957, 45.794266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135084, 0.407037, -0.903367,
		-0.932130, 0.361365, 0.023438,
		0.335985, 0.838890, 0.428226,
		33.860092, 35.260624, 45.922733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360100, 35.287270, 45.294773>,  <33.624901, 34.673401, 45.622974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360100, 35.287270, 45.294773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.695900, 35.423397, 45.464207>,  <33.897381, 35.505074, 45.565868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.695900, 35.423397, 45.464207>,  <33.360100, 35.287270, 45.294773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695900, 35.423397, 45.464207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222213, 0.496362, -0.839194,
		-0.495844, 0.798629, 0.341073,
		0.839500, 0.340319, 0.423584,
		33.947750, 35.525494, 45.591282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321922, 36.017002, 45.153774>,  <33.360100, 35.287270, 45.294773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321922, 36.017002, 45.153774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.692581, 35.872986, 45.197025>,  <33.914978, 35.786575, 45.222977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.692581, 35.872986, 45.197025>,  <33.321922, 36.017002, 45.153774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692581, 35.872986, 45.197025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210784, 0.259457, -0.942471,
		0.311274, 0.896132, 0.316317,
		0.926649, -0.360041, 0.108128,
		33.970577, 35.764973, 45.229465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880379, 36.540421, 44.887196>,  <33.321922, 36.017002, 45.153774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880379, 36.540421, 44.887196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016876, 36.164677, 44.873558>,  <34.098774, 35.939232, 44.865376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016876, 36.164677, 44.873558>,  <33.880379, 36.540421, 44.887196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016876, 36.164677, 44.873558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359050, 0.163786, -0.918835,
		0.868697, 0.301304, 0.393167,
		0.341244, -0.939356, -0.034097,
		34.119251, 35.882870, 44.863327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512951, 36.489014, 44.622299>,  <33.880379, 36.540421, 44.887196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512951, 36.489014, 44.622299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.409718, 36.111103, 44.541508>,  <34.347778, 35.884357, 44.493034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.409718, 36.111103, 44.541508>,  <34.512951, 36.489014, 44.622299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409718, 36.111103, 44.541508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150706, 0.167133, -0.974348,
		0.954296, -0.281903, 0.099249,
		-0.258084, -0.944774, -0.201978,
		34.332291, 35.827671, 44.480915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004337, 36.243507, 44.095509>,  <34.512951, 36.489014, 44.622299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004337, 36.243507, 44.095509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.722481, 35.961292, 44.065338>,  <34.553368, 35.791962, 44.047237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.722481, 35.961292, 44.065338>,  <35.004337, 36.243507, 44.095509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722481, 35.961292, 44.065338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052224, 0.054440, -0.997151,
		0.707637, -0.706575, -0.001515,
		-0.704644, -0.705541, -0.075424,
		34.511089, 35.749630, 44.042709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.950760, 29.163509, 28.454956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.594925, 29.340868, 28.411076>,  <41.381424, 29.447283, 28.384747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.594925, 29.340868, 28.411076>,  <41.950760, 29.163509, 28.454956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594925, 29.340868, 28.411076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395701, 0.868066, 0.299805,
		0.228162, 0.223293, -0.947672,
		-0.889586, 0.443399, -0.109702,
		41.328049, 29.473888, 28.378164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078938, 29.651562, 28.069906>,  <41.950760, 29.163509, 28.454956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078938, 29.651562, 28.069906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.741570, 29.761757, 28.254404>,  <41.539150, 29.827875, 28.365103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.741570, 29.761757, 28.254404>,  <42.078938, 29.651562, 28.069906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741570, 29.761757, 28.254404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415636, 0.878575, 0.235273,
		-0.340422, 0.390143, -0.855512,
		-0.843421, 0.275489, 0.461244,
		41.488544, 29.844404, 28.392776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901623, 30.338219, 27.879562>,  <42.078938, 29.651562, 28.069906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901623, 30.338219, 27.879562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.722054, 30.269011, 28.230227>,  <41.614311, 30.227486, 28.440624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.722054, 30.269011, 28.230227>,  <41.901623, 30.338219, 27.879562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722054, 30.269011, 28.230227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335456, 0.876686, 0.344806,
		-0.828213, 0.448872, -0.335525,
		-0.448924, -0.173019, 0.876660,
		41.587376, 30.217106, 28.493225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510853, 31.009590, 28.044006>,  <41.901623, 30.338219, 27.879562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510853, 31.009590, 28.044006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.517712, 30.801348, 28.385456>,  <41.521828, 30.676401, 28.590326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.517712, 30.801348, 28.385456>,  <41.510853, 31.009590, 28.044006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517712, 30.801348, 28.385456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203680, 0.837665, 0.506785,
		-0.978888, 0.165178, 0.120398,
		0.017143, -0.520608, 0.853624,
		41.522854, 30.645164, 28.641542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167652, 31.413204, 28.562824>,  <41.510853, 31.009590, 28.044006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167652, 31.413204, 28.562824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.427189, 31.168711, 28.744110>,  <41.582909, 31.022015, 28.852882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.427189, 31.168711, 28.744110>,  <41.167652, 31.413204, 28.562824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427189, 31.168711, 28.744110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356365, 0.770344, 0.528747,
		-0.672319, -0.181561, 0.717651,
		0.648838, -0.611232, 0.453215,
		41.621841, 30.985340, 28.880075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226810, 31.651754, 29.257177>,  <41.167652, 31.413204, 28.562824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226810, 31.651754, 29.257177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.550293, 31.416590, 29.249586>,  <41.744381, 31.275492, 29.245031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.550293, 31.416590, 29.249586>,  <41.226810, 31.651754, 29.257177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550293, 31.416590, 29.249586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442651, 0.587012, 0.677847,
		-0.387374, -0.556577, 0.734958,
		0.808703, -0.587910, -0.018976,
		41.792904, 31.240217, 29.243893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398804, 31.481737, 29.985706>,  <41.226810, 31.651754, 29.257177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398804, 31.481737, 29.985706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.736374, 31.445959, 29.774126>,  <41.938915, 31.424492, 29.647179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.736374, 31.445959, 29.774126>,  <41.398804, 31.481737, 29.985706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736374, 31.445959, 29.774126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508107, 0.449564, 0.734656,
		0.172085, -0.888759, 0.424847,
		0.843927, -0.089444, -0.528948,
		41.989552, 31.419127, 29.615442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915169, 31.249010, 30.453686>,  <41.398804, 31.481737, 29.985706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915169, 31.249010, 30.453686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.158482, 31.364063, 30.157778>,  <42.304470, 31.433094, 29.980232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.158482, 31.364063, 30.157778>,  <41.915169, 31.249010, 30.453686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158482, 31.364063, 30.157778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677737, 0.296878, 0.672708,
		0.413113, -0.910567, -0.014352,
		0.608285, 0.287631, -0.739769,
		42.340965, 31.450352, 29.935846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666306, 31.000956, 30.650560>,  <41.915169, 31.249010, 30.453686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666306, 31.000956, 30.650560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.699802, 31.306170, 30.394197>,  <42.719902, 31.489298, 30.240379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.699802, 31.306170, 30.394197>,  <42.666306, 31.000956, 30.650560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699802, 31.306170, 30.394197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682189, 0.424923, 0.595028,
		0.726364, -0.487051, -0.484949,
		0.083743, 0.763035, -0.640910,
		42.724926, 31.535080, 30.201925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294342, 31.146355, 30.660355>,  <42.666306, 31.000956, 30.650560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.294342, 31.146355, 30.660355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.128597, 31.479315, 30.513161>,  <43.029152, 31.679090, 30.424845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.128597, 31.479315, 30.513161>,  <43.294342, 31.146355, 30.660355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128597, 31.479315, 30.513161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673387, 0.552405, 0.491323,
		0.612255, -0.044211, -0.789423,
		-0.414360, 0.832402, -0.367984,
		43.004288, 31.729036, 30.402765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.855553, 31.620216, 30.440170>,  <43.294342, 31.146355, 30.660355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.855553, 31.620216, 30.440170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.515381, 31.817101, 30.514463>,  <43.311279, 31.935230, 30.559040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.515381, 31.817101, 30.514463>,  <43.855553, 31.620216, 30.440170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515381, 31.817101, 30.514463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500640, 0.648706, 0.573185,
		0.161642, 0.580439, -0.798099,
		-0.850430, 0.492211, 0.185732,
		43.260250, 31.964764, 30.570183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994148, 32.303200, 30.336531>,  <43.855553, 31.620216, 30.440170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994148, 32.303200, 30.336531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.680897, 32.318890, 30.584782>,  <43.492947, 32.328304, 30.733732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.680897, 32.318890, 30.584782>,  <43.994148, 32.303200, 30.336531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680897, 32.318890, 30.584782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507973, 0.616039, 0.602045,
		-0.358716, 0.786738, -0.502360,
		-0.783126, 0.039222, 0.620625,
		43.445957, 32.330658, 30.770969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807434, 32.954536, 30.501373>,  <43.994148, 32.303200, 30.336531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807434, 32.954536, 30.501373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663326, 32.757275, 30.818108>,  <43.576862, 32.638920, 31.008148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663326, 32.757275, 30.818108>,  <43.807434, 32.954536, 30.501373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663326, 32.757275, 30.818108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487583, 0.624109, 0.610533,
		-0.795278, 0.606045, 0.015602,
		-0.360273, -0.493150, 0.791837,
		43.555244, 32.609329, 31.055658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.639847, 33.496304, 30.877035>,  <43.807434, 32.954536, 30.501373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.639847, 33.496304, 30.877035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.649738, 33.196110, 31.141205>,  <43.655674, 33.015995, 31.299707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.649738, 33.196110, 31.141205>,  <43.639847, 33.496304, 30.877035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649738, 33.196110, 31.141205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348601, 0.625635, 0.697896,
		-0.936945, 0.212963, 0.277094,
		0.024733, -0.750485, 0.660425,
		43.657158, 32.970963, 31.339333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127373, 33.717148, 31.571699>,  <43.639847, 33.496304, 30.877035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127373, 33.717148, 31.571699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.405426, 33.445770, 31.666782>,  <43.572258, 33.282944, 31.723833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.405426, 33.445770, 31.666782>,  <43.127373, 33.717148, 31.571699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.405426, 33.445770, 31.666782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261792, 0.546862, 0.795240,
		-0.669520, -0.490566, 0.557752,
		0.695131, -0.678445, 0.237709,
		43.613964, 33.242237, 31.738094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072666, 33.762207, 32.187073>,  <43.127373, 33.717148, 31.571699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072666, 33.762207, 32.187073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.420189, 33.567848, 32.148941>,  <43.628700, 33.451233, 32.126064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.420189, 33.567848, 32.148941>,  <43.072666, 33.762207, 32.187073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420189, 33.567848, 32.148941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391981, 0.557281, 0.731976,
		-0.302538, -0.673310, 0.674629,
		0.868805, -0.485892, -0.095326,
		43.680832, 33.422081, 32.120342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277195, 33.650696, 32.869526>,  <43.072666, 33.762207, 32.187073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277195, 33.650696, 32.869526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.608185, 33.619961, 32.647038>,  <43.806778, 33.601521, 32.513542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.608185, 33.619961, 32.647038>,  <43.277195, 33.650696, 32.869526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608185, 33.619961, 32.647038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494144, 0.570091, 0.656367,
		0.266668, -0.817981, 0.509702,
		0.827472, -0.076834, -0.556225,
		43.856426, 33.596912, 32.480171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792709, 33.425259, 33.275055>,  <43.277195, 33.650696, 32.869526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792709, 33.425259, 33.275055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.993164, 33.604584, 32.978981>,  <44.113438, 33.712181, 32.801338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.993164, 33.604584, 32.978981>,  <43.792709, 33.425259, 33.275055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993164, 33.604584, 32.978981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495203, 0.552883, 0.670145,
		0.709672, -0.702377, 0.055064,
		0.501138, 0.448315, -0.740185,
		44.143505, 33.739079, 32.756924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500423, 33.345272, 33.530479>,  <43.792709, 33.425259, 33.275055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500423, 33.345272, 33.530479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.475903, 33.644012, 33.265614>,  <44.461189, 33.823257, 33.106697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.475903, 33.644012, 33.265614>,  <44.500423, 33.345272, 33.530479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475903, 33.644012, 33.265614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510580, 0.593503, 0.622144,
		0.857642, -0.299947, -0.417710,
		-0.061302, 0.746851, -0.662160,
		44.457512, 33.868069, 33.066967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093414, 33.709244, 33.671928>,  <44.500423, 33.345272, 33.530479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093414, 33.709244, 33.671928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.883224, 33.985420, 33.473064>,  <44.757111, 34.151127, 33.353745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.883224, 33.985420, 33.473064>,  <45.093414, 33.709244, 33.671928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.883224, 33.985420, 33.473064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246886, 0.682936, 0.687493,
		0.814203, 0.238516, -0.529324,
		-0.525472, 0.690441, -0.497162,
		44.725582, 34.192551, 33.323917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.498337, 34.293423, 33.530010>,  <45.093414, 33.709244, 33.671928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.498337, 34.293423, 33.530010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.126244, 34.439728, 33.518181>,  <44.902988, 34.527512, 33.511086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.126244, 34.439728, 33.518181>,  <45.498337, 34.293423, 33.530010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126244, 34.439728, 33.518181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260992, 0.716108, 0.647358,
		0.257956, 0.594479, -0.761612,
		-0.930237, 0.365765, -0.029570,
		44.847172, 34.549458, 33.509308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.097206, 34.324169, 33.973095>,  <45.498337, 34.293423, 33.530010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.097206, 34.324169, 33.973095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.458961, 34.155525, 33.999390>,  <46.676014, 34.054337, 34.015167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.458961, 34.155525, 33.999390>,  <46.097206, 34.324169, 33.973095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.458961, 34.155525, 33.999390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293086, -0.725736, -0.622420,
		0.310130, 0.543643, -0.779917,
		0.904389, -0.421614, 0.065738,
		46.730278, 34.029041, 34.019112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.364178, 34.150410, 33.253475>,  <46.097206, 34.324169, 33.973095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.364178, 34.150410, 33.253475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.576851, 33.919762, 33.501610>,  <46.704456, 33.781372, 33.650490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.576851, 33.919762, 33.501610>,  <46.364178, 34.150410, 33.253475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.576851, 33.919762, 33.501610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116157, -0.775170, -0.620982,
		0.838938, 0.258111, -0.479127,
		0.531687, -0.576619, 0.620337,
		46.736359, 33.746777, 33.687710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.945480, 33.870419, 32.813541>,  <46.364178, 34.150410, 33.253475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.945480, 33.870419, 32.813541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.838875, 33.619904, 33.106590>,  <46.774910, 33.469597, 33.282421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.838875, 33.619904, 33.106590>,  <46.945480, 33.870419, 32.813541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.838875, 33.619904, 33.106590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044368, -0.751337, -0.658425,
		0.962808, -0.207987, 0.172458,
		-0.266518, -0.626286, 0.732622,
		46.758919, 33.432018, 33.326378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.313812, 33.274601, 32.627434>,  <46.945480, 33.870419, 32.813541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.313812, 33.274601, 32.627434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.023926, 33.184135, 32.887783>,  <46.849995, 33.129856, 33.043991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.023926, 33.184135, 32.887783>,  <47.313812, 33.274601, 32.627434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.023926, 33.184135, 32.887783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219999, -0.819210, -0.529619,
		0.652981, -0.527015, 0.543940,
		-0.724718, -0.226165, 0.650871,
		46.806511, 33.116287, 33.083046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.406975, 32.588749, 32.733273>,  <47.313812, 33.274601, 32.627434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.406975, 32.588749, 32.733273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.038792, 32.617638, 32.886917>,  <46.817883, 32.634972, 32.979103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.038792, 32.617638, 32.886917>,  <47.406975, 32.588749, 32.733273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.038792, 32.617638, 32.886917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295096, -0.772824, -0.561837,
		0.256276, -0.630497, 0.732664,
		-0.920457, 0.072221, 0.384113,
		46.762653, 32.639305, 33.002151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.309444, 31.946136, 33.008743>,  <47.406975, 32.588749, 32.733273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.309444, 31.946136, 33.008743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.956680, 32.125179, 32.949574>,  <46.745022, 32.232605, 32.914074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.956680, 32.125179, 32.949574>,  <47.309444, 31.946136, 33.008743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.956680, 32.125179, 32.949574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348758, -0.830612, -0.434109,
		-0.317175, -0.331257, 0.888633,
		-0.881911, 0.447607, -0.147921,
		46.692108, 32.259460, 32.905197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.732658, 31.466364, 33.149170>,  <47.309444, 31.946136, 33.008743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.732658, 31.466364, 33.149170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.553326, 31.736279, 32.914680>,  <46.445724, 31.898228, 32.773987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.553326, 31.736279, 32.914680>,  <46.732658, 31.466364, 33.149170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553326, 31.736279, 32.914680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332352, -0.734655, -0.591459,
		-0.829781, -0.070339, 0.553638,
		-0.448336, 0.674785, -0.586226,
		46.418823, 31.938713, 32.738811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.045761, 31.215471, 33.034275>,  <46.732658, 31.466364, 33.149170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.045761, 31.215471, 33.034275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.087044, 31.474167, 32.731998>,  <46.111813, 31.629385, 32.550632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.087044, 31.474167, 32.731998>,  <46.045761, 31.215471, 33.034275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.087044, 31.474167, 32.731998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244641, -0.719908, -0.649525,
		-0.964105, 0.251912, 0.083917,
		0.103210, 0.646740, -0.755695,
		46.118008, 31.668188, 32.505291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.479298, 31.351826, 32.580746>,  <46.045761, 31.215471, 33.034275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.479298, 31.351826, 32.580746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.768227, 31.457720, 32.325195>,  <45.941582, 31.521257, 32.171864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.768227, 31.457720, 32.325195>,  <45.479298, 31.351826, 32.580746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.768227, 31.457720, 32.325195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393651, -0.602158, -0.694582,
		-0.568588, 0.753206, -0.330738,
		0.722320, 0.264736, -0.638880,
		45.984924, 31.537140, 32.133530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.137241, 31.451151, 31.964376>,  <45.479298, 31.351826, 32.580746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.137241, 31.451151, 31.964376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.523804, 31.416761, 31.867485>,  <45.755741, 31.396128, 31.809351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.523804, 31.416761, 31.867485>,  <45.137241, 31.451151, 31.964376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523804, 31.416761, 31.867485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243254, -0.610334, -0.753870,
		-0.083027, 0.787465, -0.610741,
		0.966402, -0.085974, -0.242229,
		45.813725, 31.390968, 31.794817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.137463, 31.627674, 31.245119>,  <45.137241, 31.451151, 31.964376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.137463, 31.627674, 31.245119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.462891, 31.407681, 31.320614>,  <45.658146, 31.275684, 31.365911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.462891, 31.407681, 31.320614>,  <45.137463, 31.627674, 31.245119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.462891, 31.407681, 31.320614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194440, -0.563227, -0.803099,
		0.547996, 0.616678, -0.565163,
		0.813568, -0.549986, 0.188739,
		45.706963, 31.242685, 31.377235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.431381, 31.559238, 30.502628>,  <45.137463, 31.627674, 31.245119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.431381, 31.559238, 30.502628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.598766, 31.271250, 30.724089>,  <45.699196, 31.098455, 30.856964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.598766, 31.271250, 30.724089>,  <45.431381, 31.559238, 30.502628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598766, 31.271250, 30.724089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159681, -0.658416, -0.735520,
		0.894087, 0.219380, -0.390488,
		0.418462, -0.719973, 0.553650,
		45.724304, 31.055258, 30.890184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953972, 31.161478, 30.007839>,  <45.431381, 31.559238, 30.502628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953972, 31.161478, 30.007839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.838039, 30.941353, 30.321054>,  <45.768478, 30.809277, 30.508984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.838039, 30.941353, 30.321054>,  <45.953972, 31.161478, 30.007839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838039, 30.941353, 30.321054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305234, -0.722284, -0.620595,
		0.907099, -0.418879, 0.041367,
		-0.289833, -0.550315, 0.783039,
		45.751091, 30.776258, 30.555965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.923439, 30.554855, 29.716831>,  <45.953972, 31.161478, 30.007839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.923439, 30.554855, 29.716831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.721104, 30.459782, 30.048527>,  <45.599701, 30.402739, 30.247543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.721104, 30.459782, 30.048527>,  <45.923439, 30.554855, 29.716831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.721104, 30.459782, 30.048527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534142, -0.668535, -0.517449,
		0.677363, -0.704676, 0.211215,
		-0.505839, -0.237682, 0.829237,
		45.569351, 30.388477, 30.297298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.862656, 29.779175, 29.749016>,  <45.923439, 30.554855, 29.716831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.862656, 29.779175, 29.749016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.574429, 29.917088, 29.989649>,  <45.401493, 29.999836, 30.134029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.574429, 29.917088, 29.989649>,  <45.862656, 29.779175, 29.749016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.574429, 29.917088, 29.989649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579135, -0.776361, -0.248730,
		0.381288, -0.527625, 0.759099,
		-0.720571, 0.344783, 0.601583,
		45.358257, 30.020523, 30.170124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513939, 29.220806, 29.825869>,  <45.862656, 29.779175, 29.749016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513939, 29.220806, 29.825869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.257107, 29.475746, 29.996288>,  <45.103008, 29.628710, 30.098539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.257107, 29.475746, 29.996288>,  <45.513939, 29.220806, 29.825869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.257107, 29.475746, 29.996288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751259, -0.633844, -0.183991,
		0.152782, -0.438210, 0.885793,
		-0.642081, 0.637349, 0.426049,
		45.064484, 29.666950, 30.124104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062855, 28.817045, 30.296604>,  <45.513939, 29.220806, 29.825869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062855, 28.817045, 30.296604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.876633, 29.160267, 30.209885>,  <44.764900, 29.366199, 30.157854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.876633, 29.160267, 30.209885>,  <45.062855, 28.817045, 30.296604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.876633, 29.160267, 30.209885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878278, -0.478109, -0.006255,
		-0.109020, 0.187497, 0.976196,
		-0.465555, 0.858054, -0.216798,
		44.736965, 29.417683, 30.144846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443359, 28.821959, 30.684101>,  <45.062855, 28.817045, 30.296604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443359, 28.821959, 30.684101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.354710, 29.086725, 30.397676>,  <44.301521, 29.245586, 30.225821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.354710, 29.086725, 30.397676>,  <44.443359, 28.821959, 30.684101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354710, 29.086725, 30.397676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864772, -0.472746, -0.169352,
		-0.450613, 0.581700, 0.677180,
		-0.221623, 0.661919, -0.716063,
		44.288223, 29.285301, 30.182858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718830, 28.755796, 30.622671>,  <44.443359, 28.821959, 30.684101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718830, 28.755796, 30.622671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.799507, 28.949909, 30.282360>,  <43.847912, 29.066376, 30.078173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.799507, 28.949909, 30.282360>,  <43.718830, 28.755796, 30.622671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799507, 28.949909, 30.282360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858525, -0.330505, -0.392047,
		-0.471439, 0.809487, 0.349965,
		0.201692, 0.485280, -0.850778,
		43.860016, 29.095493, 30.027126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002445, 29.124907, 30.366066>,  <43.718830, 28.755796, 30.622671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.002445, 29.124907, 30.366066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.244530, 29.114450, 30.047813>,  <43.389782, 29.108177, 29.856861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.244530, 29.114450, 30.047813>,  <43.002445, 29.124907, 30.366066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244530, 29.114450, 30.047813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793252, -0.103706, -0.599997,
		-0.066826, 0.994264, -0.083501,
		0.605216, -0.026142, -0.795632,
		43.426094, 29.106607, 29.809124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542744, 29.290365, 29.790333>,  <43.002445, 29.124907, 30.366066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542744, 29.290365, 29.790333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.845673, 29.109598, 29.601765>,  <43.027428, 29.001137, 29.488625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.845673, 29.109598, 29.601765>,  <42.542744, 29.290365, 29.790333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845673, 29.109598, 29.601765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653045, -0.523683, -0.547073,
		0.000359, 0.722167, -0.691719,
		0.757319, -0.451919, -0.471419,
		43.072868, 28.974022, 29.460339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.537083, 35.700043, 41.326122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160313, 35.730915, 41.195385>,  <38.934250, 35.749439, 41.116943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160313, 35.730915, 41.195385>,  <39.537083, 35.700043, 41.326122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160313, 35.730915, 41.195385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313784, -0.144584, -0.938422,
		-0.119680, -0.986478, 0.111970,
		-0.941921, 0.077176, -0.326845,
		38.877735, 35.754070, 41.097332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602638, 35.310963, 40.742378>,  <39.537083, 35.700043, 41.326122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602638, 35.310963, 40.742378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262589, 35.512402, 40.680840>,  <39.058559, 35.633266, 40.643917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262589, 35.512402, 40.680840>,  <39.602638, 35.310963, 40.742378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262589, 35.512402, 40.680840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183109, 0.008789, -0.983053,
		-0.493716, -0.863891, -0.099686,
		-0.850127, 0.503602, -0.153847,
		39.007549, 35.663483, 40.634686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284412, 35.091484, 40.148216>,  <39.602638, 35.310963, 40.742378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284412, 35.091484, 40.148216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094540, 35.442581, 40.174274>,  <38.980618, 35.653240, 40.189907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094540, 35.442581, 40.174274>,  <39.284412, 35.091484, 40.148216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094540, 35.442581, 40.174274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101189, 0.127945, -0.986606,
		-0.874321, -0.461732, -0.149551,
		-0.474682, 0.877743, 0.065142,
		38.952133, 35.705906, 40.193817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724487, 35.166122, 39.667618>,  <39.284412, 35.091484, 40.148216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724487, 35.166122, 39.667618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864784, 35.527786, 39.765175>,  <38.948963, 35.744785, 39.823708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864784, 35.527786, 39.765175>,  <38.724487, 35.166122, 39.667618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864784, 35.527786, 39.765175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158696, 0.199281, -0.967007,
		-0.922929, 0.377870, -0.073590,
		0.350738, 0.904158, 0.243889,
		38.970005, 35.799034, 39.838341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285385, 35.641312, 39.392731>,  <38.724487, 35.166122, 39.667618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285385, 35.641312, 39.392731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567329, 35.913052, 39.474369>,  <38.736496, 36.076096, 39.523354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567329, 35.913052, 39.474369>,  <38.285385, 35.641312, 39.392731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567329, 35.913052, 39.474369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024700, 0.311056, -0.950071,
		-0.708913, 0.664629, 0.236032,
		0.704863, 0.679348, 0.204095,
		38.778790, 36.116856, 39.535599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076214, 36.271530, 39.133720>,  <38.285385, 35.641312, 39.392731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076214, 36.271530, 39.133720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474068, 36.300873, 39.162910>,  <38.712780, 36.318478, 39.180424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474068, 36.300873, 39.162910>,  <38.076214, 36.271530, 39.133720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474068, 36.300873, 39.162910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016657, 0.582559, -0.812618,
		-0.102123, 0.809472, 0.578210,
		0.994632, 0.073355, 0.072976,
		38.772457, 36.322880, 39.184803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250134, 36.971062, 39.058857>,  <38.076214, 36.271530, 39.133720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250134, 36.971062, 39.058857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609009, 36.803673, 39.002377>,  <38.824333, 36.703239, 38.968487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609009, 36.803673, 39.002377>,  <38.250134, 36.971062, 39.058857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609009, 36.803673, 39.002377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184973, 0.646366, -0.740268,
		0.401047, 0.638041, 0.657317,
		0.897188, -0.418468, -0.141203,
		38.878166, 36.678131, 38.960014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607975, 37.538502, 38.918488>,  <38.250134, 36.971062, 39.058857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607975, 37.538502, 38.918488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795204, 37.222649, 38.759796>,  <38.907543, 37.033138, 38.664581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795204, 37.222649, 38.759796>,  <38.607975, 37.538502, 38.918488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795204, 37.222649, 38.759796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204025, 0.533381, -0.820901,
		0.859815, 0.303299, 0.410765,
		0.468072, -0.789629, -0.396729,
		38.935627, 36.985760, 38.640778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096344, 37.832813, 38.544781>,  <38.607975, 37.538502, 38.918488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096344, 37.832813, 38.544781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091465, 37.469856, 38.376740>,  <39.088539, 37.252083, 38.275913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091465, 37.469856, 38.376740>,  <39.096344, 37.832813, 38.544781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091465, 37.469856, 38.376740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246632, 0.404423, -0.880690,
		0.969032, -0.114352, 0.218860,
		-0.012196, -0.907395, -0.420102,
		39.087807, 37.197639, 38.250710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764732, 37.740841, 38.164261>,  <39.096344, 37.832813, 38.544781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764732, 37.740841, 38.164261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502834, 37.488461, 37.997791>,  <39.345695, 37.337032, 37.897911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502834, 37.488461, 37.997791>,  <39.764732, 37.740841, 38.164261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502834, 37.488461, 37.997791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182335, 0.402498, -0.897078,
		0.733526, -0.663243, -0.148489,
		-0.654747, -0.630955, -0.416176,
		39.306412, 37.299175, 37.872940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106236, 37.321857, 37.747993>,  <39.764732, 37.740841, 38.164261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106236, 37.321857, 37.747993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733093, 37.318180, 37.603939>,  <39.509209, 37.315975, 37.517506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733093, 37.318180, 37.603939>,  <40.106236, 37.321857, 37.747993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733093, 37.318180, 37.603939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354095, 0.160675, -0.921303,
		0.066331, -0.986965, -0.146633,
		-0.932854, -0.009189, -0.360137,
		39.453236, 37.315422, 37.495899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010056, 36.671577, 37.319580>,  <40.106236, 37.321857, 37.747993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010056, 36.671577, 37.319580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792099, 36.998028, 37.242599>,  <39.661327, 37.193897, 37.196411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792099, 36.998028, 37.242599>,  <40.010056, 36.671577, 37.319580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792099, 36.998028, 37.242599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452120, 0.092666, -0.887131,
		-0.706177, -0.570396, -0.419479,
		-0.544887, 0.816126, -0.192448,
		39.628632, 37.242867, 37.184864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606548, 36.439270, 36.845379>,  <40.010056, 36.671577, 37.319580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606548, 36.439270, 36.845379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665234, 36.834774, 36.833820>,  <39.700443, 37.072075, 36.826885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665234, 36.834774, 36.833820>,  <39.606548, 36.439270, 36.845379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665234, 36.834774, 36.833820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461914, -0.094314, -0.881896,
		-0.874706, 0.116037, -0.470558,
		0.146713, 0.988757, -0.028898,
		39.709248, 37.131401, 36.825150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143036, 36.870659, 36.632084>,  <39.606548, 36.439270, 36.845379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143036, 36.870659, 36.632084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441383, 36.748322, 36.868774>,  <40.620392, 36.674919, 37.010788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441383, 36.748322, 36.868774>,  <40.143036, 36.870659, 36.632084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441383, 36.748322, 36.868774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152748, 0.786145, 0.598869,
		-0.648347, -0.537061, 0.539640,
		0.745865, -0.305846, 0.591730,
		40.665142, 36.656567, 37.046295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892586, 36.671791, 36.514996>,  <40.143036, 36.870659, 36.632084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892586, 36.671791, 36.514996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228500, 36.456738, 36.484783>,  <41.430050, 36.327705, 36.466656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228500, 36.456738, 36.484783>,  <40.892586, 36.671791, 36.514996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228500, 36.456738, 36.484783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494966, -0.815341, 0.300377,
		-0.223074, -0.214869, -0.950825,
		0.839789, -0.537633, -0.075529,
		41.480438, 36.295448, 36.462124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697838, 36.241333, 36.112343>,  <40.892586, 36.671791, 36.514996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697838, 36.241333, 36.112343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020992, 36.075016, 36.279408>,  <41.214886, 35.975227, 36.379646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020992, 36.075016, 36.279408>,  <40.697838, 36.241333, 36.112343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020992, 36.075016, 36.279408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503697, -0.855071, 0.123060,
		0.305963, -0.309793, -0.900230,
		0.807884, -0.415792, 0.417662,
		41.263359, 35.950279, 36.404705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587955, 35.592388, 35.929169>,  <40.697838, 36.241333, 36.112343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587955, 35.592388, 35.929169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844124, 35.583202, 36.236240>,  <40.997826, 35.577690, 36.420483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844124, 35.583202, 36.236240>,  <40.587955, 35.592388, 35.929169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844124, 35.583202, 36.236240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337668, -0.906183, 0.254582,
		0.689814, -0.422261, -0.588092,
		0.640419, -0.022966, 0.767682,
		41.036251, 35.576313, 36.466545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754749, 34.838455, 36.049328>,  <40.587955, 35.592388, 35.929169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754749, 34.838455, 36.049328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856590, 35.024052, 36.388714>,  <40.917694, 35.135410, 36.592346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856590, 35.024052, 36.388714>,  <40.754749, 34.838455, 36.049328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856590, 35.024052, 36.388714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337873, -0.779402, 0.527612,
		0.906101, -0.421005, -0.041669,
		0.254604, 0.463991, 0.848463,
		40.932972, 35.163250, 36.643253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114113, 34.309715, 36.527245>,  <40.754749, 34.838455, 36.049328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114113, 34.309715, 36.527245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983086, 34.604759, 36.763424>,  <40.904469, 34.781788, 36.905132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983086, 34.604759, 36.763424>,  <41.114113, 34.309715, 36.527245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983086, 34.604759, 36.763424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351383, -0.675204, 0.648559,
		0.877056, 0.004976, 0.480361,
		-0.327569, 0.737614, 0.590444,
		40.884815, 34.826042, 36.940556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218868, 34.105423, 37.176941>,  <41.114113, 34.309715, 36.527245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218868, 34.105423, 37.176941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977329, 34.407356, 37.279385>,  <40.832405, 34.588516, 37.340851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977329, 34.407356, 37.279385>,  <41.218868, 34.105423, 37.176941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977329, 34.407356, 37.279385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383456, -0.556773, 0.736862,
		0.698802, 0.346748, 0.625653,
		-0.603852, 0.754831, 0.256112,
		40.796173, 34.633804, 37.356216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315838, 34.317871, 37.946102>,  <41.218868, 34.105423, 37.176941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315838, 34.317871, 37.946102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944202, 34.418945, 37.838066>,  <40.721222, 34.479591, 37.773243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944202, 34.418945, 37.838066>,  <41.315838, 34.317871, 37.946102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944202, 34.418945, 37.838066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365581, -0.516584, 0.774269,
		0.056123, 0.818102, 0.572328,
		-0.929086, 0.252686, -0.270090,
		40.665478, 34.494751, 37.757038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006126, 34.527893, 38.520504>,  <41.315838, 34.317871, 37.946102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006126, 34.527893, 38.520504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708076, 34.416908, 38.277916>,  <40.529247, 34.350315, 38.132362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708076, 34.416908, 38.277916>,  <41.006126, 34.527893, 38.520504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708076, 34.416908, 38.277916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382596, -0.567005, 0.729470,
		-0.546274, 0.775577, 0.316331,
		-0.745121, -0.277464, -0.606472,
		40.484539, 34.333668, 38.095974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596764, 34.441769, 38.934269>,  <41.006126, 34.527893, 38.520504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596764, 34.441769, 38.934269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409489, 34.263092, 38.629303>,  <40.297123, 34.155888, 38.446323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409489, 34.263092, 38.629303>,  <40.596764, 34.441769, 38.934269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409489, 34.263092, 38.629303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312064, -0.723634, 0.615605,
		-0.826691, 0.526138, 0.199400,
		-0.468186, -0.446690, -0.762411,
		40.269032, 34.129086, 38.400581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878296, 34.336838, 39.153530>,  <40.596764, 34.441769, 38.934269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878296, 34.336838, 39.153530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945862, 34.090263, 38.845901>,  <39.986401, 33.942318, 38.661324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945862, 34.090263, 38.845901>,  <39.878296, 34.336838, 39.153530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945862, 34.090263, 38.845901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341149, -0.768623, 0.541144,
		-0.924708, 0.170961, -0.340128,
		0.168915, -0.616434, -0.769075,
		39.996536, 33.905334, 38.615181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380360, 33.985435, 39.289528>,  <39.878296, 34.336838, 39.153530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380360, 33.985435, 39.289528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623825, 33.761913, 39.064228>,  <39.769905, 33.627800, 38.929047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623825, 33.761913, 39.064228>,  <39.380360, 33.985435, 39.289528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623825, 33.761913, 39.064228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177040, -0.787658, 0.590129,
		-0.773414, -0.259480, -0.578360,
		0.608677, -0.558807, -0.563248,
		39.806427, 33.594269, 38.895252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038998, 33.385780, 39.178852>,  <39.380360, 33.985435, 39.289528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038998, 33.385780, 39.178852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422356, 33.295052, 39.109528>,  <39.652370, 33.240612, 39.067932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422356, 33.295052, 39.109528>,  <39.038998, 33.385780, 39.178852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422356, 33.295052, 39.109528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055728, -0.744126, 0.665711,
		-0.279967, -0.628353, -0.725804,
		0.958391, -0.226825, -0.173313,
		39.709873, 33.227005, 39.057533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040859, 32.712208, 39.223427>,  <39.038998, 33.385780, 39.178852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040859, 32.712208, 39.223427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427471, 32.808315, 39.259388>,  <39.659439, 32.865982, 39.280964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427471, 32.808315, 39.259388>,  <39.040859, 32.712208, 39.223427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427471, 32.808315, 39.259388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064871, -0.567968, 0.820490,
		0.248204, -0.787199, -0.564546,
		0.966533, 0.240272, 0.089905,
		39.717430, 32.880398, 39.286358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236160, 32.067574, 39.308434>,  <39.040859, 32.712208, 39.223427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236160, 32.067574, 39.308434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481422, 32.346439, 39.457027>,  <39.628578, 32.513760, 39.546185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481422, 32.346439, 39.457027>,  <39.236160, 32.067574, 39.308434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481422, 32.346439, 39.457027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099000, -0.398734, 0.911707,
		0.783734, -0.595795, -0.175466,
		0.613155, 0.697165, 0.371486,
		39.665367, 32.555588, 39.568474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441391, 31.384165, 39.011993>,  <39.236160, 32.067574, 39.308434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441391, 31.384165, 39.011993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144485, 31.159559, 38.865707>,  <38.966343, 31.024796, 38.777935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144485, 31.159559, 38.865707>,  <39.441391, 31.384165, 39.011993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144485, 31.159559, 38.865707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343137, 0.150281, -0.927185,
		0.575589, -0.813705, 0.081129,
		-0.742263, -0.561516, -0.365712,
		38.921806, 30.991104, 38.755993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729248, 31.092060, 38.428955>,  <39.441391, 31.384165, 39.011993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729248, 31.092060, 38.428955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340256, 31.036676, 38.354012>,  <39.106861, 31.003447, 38.309044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340256, 31.036676, 38.354012>,  <39.729248, 31.092060, 38.428955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340256, 31.036676, 38.354012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143765, 0.276178, -0.950293,
		0.183320, -0.951081, -0.248673,
		-0.972484, -0.138457, -0.187361,
		39.048512, 30.995138, 38.297802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706196, 30.938286, 37.734608>,  <39.729248, 31.092060, 38.428955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706196, 30.938286, 37.734608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330818, 31.050201, 37.815643>,  <39.105591, 31.117352, 37.864265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330818, 31.050201, 37.815643>,  <39.706196, 30.938286, 37.734608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330818, 31.050201, 37.815643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139217, 0.230395, -0.963087,
		-0.316135, -0.932007, -0.177261,
		-0.938444, 0.279788, 0.202588,
		39.049286, 31.134138, 37.876419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402599, 30.621347, 37.218571>,  <39.706196, 30.938286, 37.734608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402599, 30.621347, 37.218571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163578, 30.910492, 37.357368>,  <39.020164, 31.083979, 37.440647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163578, 30.910492, 37.357368>,  <39.402599, 30.621347, 37.218571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163578, 30.910492, 37.357368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115517, 0.350627, -0.929364,
		-0.793465, -0.595427, -0.126016,
		-0.597553, 0.722860, 0.346992,
		38.984314, 31.127350, 37.461468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754951, 30.643047, 36.790268>,  <39.402599, 30.621347, 37.218571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754951, 30.643047, 36.790268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783360, 31.010973, 36.944618>,  <38.800404, 31.231728, 37.037228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783360, 31.010973, 36.944618>,  <38.754951, 30.643047, 36.790268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783360, 31.010973, 36.944618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152457, 0.372295, -0.915507,
		-0.985755, 0.123852, -0.113791,
		0.071023, 0.919814, 0.385874,
		38.804665, 31.286917, 37.060379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292339, 31.005310, 36.379387>,  <38.754951, 30.643047, 36.790268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292339, 31.005310, 36.379387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487167, 31.311600, 36.547401>,  <38.604065, 31.495373, 36.648209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487167, 31.311600, 36.547401>,  <38.292339, 31.005310, 36.379387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487167, 31.311600, 36.547401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060098, 0.450413, -0.890795,
		-0.871293, 0.459123, 0.173364,
		0.487070, 0.765725, 0.420034,
		38.633289, 31.541317, 36.673412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919903, 31.615023, 36.184418>,  <38.292339, 31.005310, 36.379387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919903, 31.615023, 36.184418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287411, 31.740015, 36.280937>,  <38.507915, 31.815010, 36.338848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287411, 31.740015, 36.280937>,  <37.919903, 31.615023, 36.184418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287411, 31.740015, 36.280937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106266, 0.392891, -0.913424,
		-0.380232, 0.864865, 0.327769,
		0.918766, 0.312483, 0.241295,
		38.563042, 31.833759, 36.353325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882141, 32.341557, 36.317993>,  <37.919903, 31.615023, 36.184418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882141, 32.341557, 36.317993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262306, 32.260166, 36.223911>,  <38.490406, 32.211330, 36.167461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262306, 32.260166, 36.223911>,  <37.882141, 32.341557, 36.317993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262306, 32.260166, 36.223911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082147, 0.565177, -0.820870,
		0.299961, 0.799483, 0.520433,
		0.950408, -0.203477, -0.235206,
		38.547428, 32.199123, 36.153351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161808, 32.893852, 36.153194>,  <37.882141, 32.341557, 36.317993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161808, 32.893852, 36.153194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486160, 32.715481, 36.001602>,  <38.680771, 32.608459, 35.910648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486160, 32.715481, 36.001602>,  <38.161808, 32.893852, 36.153194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486160, 32.715481, 36.001602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040542, 0.688837, -0.723782,
		0.583807, 0.571535, 0.576642,
		0.810879, -0.445927, -0.378977,
		38.729424, 32.581703, 35.887909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771126, 33.338284, 36.279007>,  <38.161808, 32.893852, 36.153194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771126, 33.338284, 36.279007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807354, 33.097588, 35.961594>,  <38.829090, 32.953171, 35.771145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807354, 33.097588, 35.961594>,  <38.771126, 33.338284, 36.279007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807354, 33.097588, 35.961594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137644, 0.796730, -0.588452,
		0.986332, -0.055927, 0.154989,
		0.090574, -0.601743, -0.793538,
		38.834526, 32.917065, 35.723534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143383, 33.699146, 35.846039>,  <38.771126, 33.338284, 36.279007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143383, 33.699146, 35.846039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002594, 33.413998, 35.603413>,  <38.918121, 33.242908, 35.457836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002594, 33.413998, 35.603413>,  <39.143383, 33.699146, 35.846039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002594, 33.413998, 35.603413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181748, 0.583650, -0.791405,
		0.918195, -0.388795, -0.075865,
		-0.351973, -0.712876, -0.606567,
		38.897003, 33.200134, 35.421444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741390, 33.829235, 35.486721>,  <39.143383, 33.699146, 35.846039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741390, 33.829235, 35.486721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702137, 33.832760, 35.884773>,  <39.678585, 33.834873, 36.123604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702137, 33.832760, 35.884773>,  <39.741390, 33.829235, 35.486721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702137, 33.832760, 35.884773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173113, -0.984867, -0.008350,
		0.980001, -0.173090, 0.098169,
		-0.098129, 0.008811, 0.995135,
		39.672699, 33.835403, 36.183315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.255020, 29.567236, 42.014004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.908676, 29.718872, 41.883419>,  <37.700871, 29.809855, 41.805069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.908676, 29.718872, 41.883419>,  <38.255020, 29.567236, 42.014004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908676, 29.718872, 41.883419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278674, -0.176460, -0.944035,
		-0.415484, -0.908378, 0.047147,
		-0.865860, 0.379093, -0.326458,
		37.648918, 29.832600, 41.785480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986492, 29.114859, 41.619354>,  <38.255020, 29.567236, 42.014004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986492, 29.114859, 41.619354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.772301, 29.435226, 41.512180>,  <37.643787, 29.627447, 41.447876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.772301, 29.435226, 41.512180>,  <37.986492, 29.114859, 41.619354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772301, 29.435226, 41.512180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274048, -0.135307, -0.952150,
		-0.798851, -0.583281, -0.147038,
		-0.535475, 0.800922, -0.267938,
		37.611660, 29.675503, 41.431801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761509, 28.995134, 40.920280>,  <37.986492, 29.114859, 41.619354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761509, 28.995134, 40.920280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.733902, 29.393927, 40.934513>,  <37.717339, 29.633202, 40.943050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.733902, 29.393927, 40.934513>,  <37.761509, 28.995134, 40.920280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733902, 29.393927, 40.934513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162958, 0.046451, -0.985539,
		-0.984216, -0.062222, -0.165672,
		-0.069018, 0.996981, 0.035579,
		37.713196, 29.693022, 40.945187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378178, 29.255821, 40.298985>,  <37.761509, 28.995134, 40.920280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378178, 29.255821, 40.298985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.572731, 29.574284, 40.442966>,  <37.689465, 29.765362, 40.529354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.572731, 29.574284, 40.442966>,  <37.378178, 29.255821, 40.298985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572731, 29.574284, 40.442966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114134, 0.350543, -0.929566,
		-0.866260, 0.493207, 0.079629,
		0.486382, 0.796157, 0.359953,
		37.718647, 29.813131, 40.550953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218079, 29.748497, 39.818604>,  <37.378178, 29.255821, 40.298985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218079, 29.748497, 39.818604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.530769, 29.896795, 40.019180>,  <37.718384, 29.985775, 40.139526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.530769, 29.896795, 40.019180>,  <37.218079, 29.748497, 39.818604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530769, 29.896795, 40.019180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350547, 0.403782, -0.845031,
		-0.515767, 0.836365, 0.185683,
		0.781730, 0.370748, 0.501443,
		37.765289, 30.008020, 40.169613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186985, 30.382488, 39.654324>,  <37.218079, 29.748497, 39.818604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186985, 30.382488, 39.654324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.561954, 30.332903, 39.784473>,  <37.786938, 30.303152, 39.862564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.561954, 30.332903, 39.784473>,  <37.186985, 30.382488, 39.654324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561954, 30.332903, 39.784473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343651, 0.479794, -0.807281,
		-0.056039, 0.868580, 0.492370,
		0.937424, -0.123964, 0.325375,
		37.843182, 30.295713, 39.882088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541679, 31.044376, 39.537804>,  <37.186985, 30.382488, 39.654324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541679, 31.044376, 39.537804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.826294, 30.765026, 39.568737>,  <37.997063, 30.597416, 39.587296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.826294, 30.765026, 39.568737>,  <37.541679, 31.044376, 39.537804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826294, 30.765026, 39.568737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522236, 0.452001, -0.723163,
		0.470086, 0.554945, 0.686335,
		0.711540, -0.698377, 0.077333,
		38.039757, 30.555513, 39.591938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147797, 31.326828, 39.733082>,  <37.541679, 31.044376, 39.537804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147797, 31.326828, 39.733082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.293716, 31.006397, 39.543262>,  <38.381268, 30.814138, 39.429371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.293716, 31.006397, 39.543262>,  <38.147797, 31.326828, 39.733082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293716, 31.006397, 39.543262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514384, 0.598228, -0.614436,
		0.776097, -0.019951, 0.630297,
		0.364803, -0.801077, -0.474546,
		38.403156, 30.766073, 39.400898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965328, 31.451878, 39.523643>,  <38.147797, 31.326828, 39.733082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965328, 31.451878, 39.523643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.819248, 31.144230, 39.313847>,  <38.731602, 30.959641, 39.187969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.819248, 31.144230, 39.313847>,  <38.965328, 31.451878, 39.523643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819248, 31.144230, 39.313847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478669, 0.328079, -0.814396,
		0.798440, -0.548471, 0.248339,
		-0.365197, -0.769119, -0.524487,
		38.709690, 30.913494, 39.156502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750160, 31.641930, 39.809029>,  <38.965328, 31.451878, 39.523643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750160, 31.641930, 39.809029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.801964, 32.030365, 39.889244>,  <39.833046, 32.263428, 39.937374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.801964, 32.030365, 39.889244>,  <39.750160, 31.641930, 39.809029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801964, 32.030365, 39.889244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116712, -0.185904, 0.975612,
		0.984686, -0.149751, 0.089262,
		0.129504, 0.971089, 0.200535,
		39.840816, 32.321693, 39.949406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319443, 31.728878, 40.365826>,  <39.750160, 31.641930, 39.809029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319443, 31.728878, 40.365826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.084850, 32.051395, 40.396610>,  <39.944096, 32.244907, 40.415081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.084850, 32.051395, 40.396610>,  <40.319443, 31.728878, 40.365826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084850, 32.051395, 40.396610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113441, -0.175852, 0.977859,
		0.801976, 0.564770, 0.194602,
		-0.586486, 0.806295, 0.076961,
		39.908905, 32.293285, 40.419697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539055, 31.889879, 40.967934>,  <40.319443, 31.728878, 40.365826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539055, 31.889879, 40.967934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.202469, 32.101437, 40.923737>,  <40.000519, 32.228371, 40.897217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.202469, 32.101437, 40.923737>,  <40.539055, 31.889879, 40.967934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202469, 32.101437, 40.923737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287417, -0.264980, 0.920422,
		0.457528, 0.806260, 0.374985,
		-0.841463, 0.528896, -0.110497,
		39.950031, 32.260105, 40.890587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489834, 32.453529, 41.561695>,  <40.539055, 31.889879, 40.967934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489834, 32.453529, 41.561695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.121731, 32.390095, 41.418602>,  <39.900867, 32.352036, 41.332748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.121731, 32.390095, 41.418602>,  <40.489834, 32.453529, 41.561695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121731, 32.390095, 41.418602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333260, -0.161492, 0.928901,
		-0.205083, 0.974048, 0.095764,
		-0.920260, -0.158588, -0.357731,
		39.845654, 32.342518, 41.311283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131859, 32.921715, 41.942528>,  <40.489834, 32.453529, 41.561695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131859, 32.921715, 41.942528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.867451, 32.655979, 41.802982>,  <39.708805, 32.496540, 41.719254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.867451, 32.655979, 41.802982>,  <40.131859, 32.921715, 41.942528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867451, 32.655979, 41.802982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458026, -0.011034, 0.888871,
		-0.594358, 0.747353, -0.296989,
		-0.661023, -0.664336, -0.348865,
		39.669144, 32.456680, 41.698322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549721, 33.177155, 42.125908>,  <40.131859, 32.921715, 41.942528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549721, 33.177155, 42.125908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.490234, 32.785179, 42.072849>,  <39.454544, 32.549992, 42.041012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.490234, 32.785179, 42.072849>,  <39.549721, 33.177155, 42.125908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490234, 32.785179, 42.072849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524458, -0.035563, 0.850693,
		-0.838348, 0.196083, -0.508650,
		-0.148717, -0.979942, -0.132651,
		39.445618, 32.491196, 42.033054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818356, 33.109825, 42.227261>,  <39.549721, 33.177155, 42.125908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818356, 33.109825, 42.227261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.980785, 32.745872, 42.261227>,  <39.078243, 32.527500, 42.281605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.980785, 32.745872, 42.261227>,  <38.818356, 33.109825, 42.227261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980785, 32.745872, 42.261227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502210, -0.144567, 0.852576,
		-0.763471, -0.388855, -0.515658,
		0.406076, -0.909886, 0.084914,
		39.102608, 32.472908, 42.286701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352951, 32.687943, 42.512104>,  <38.818356, 33.109825, 42.227261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352951, 32.687943, 42.512104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.653229, 32.435234, 42.589386>,  <38.833397, 32.283611, 42.635754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.653229, 32.435234, 42.589386>,  <38.352951, 32.687943, 42.512104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653229, 32.435234, 42.589386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367410, -0.156190, 0.916850,
		-0.549061, -0.759258, -0.349369,
		0.750694, -0.631769, 0.193201,
		38.878437, 32.245705, 42.647346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048100, 32.108513, 42.819759>,  <38.352951, 32.687943, 42.512104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048100, 32.108513, 42.819759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.423870, 32.050388, 42.943932>,  <38.649330, 32.015514, 43.018436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.423870, 32.050388, 42.943932>,  <38.048100, 32.108513, 42.819759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423870, 32.050388, 42.943932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341912, -0.333608, 0.878523,
		-0.024098, -0.931445, -0.363083,
		0.939423, -0.145313, 0.310433,
		38.705696, 32.006794, 43.037060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108444, 31.377718, 43.022293>,  <38.048100, 32.108513, 42.819759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108444, 31.377718, 43.022293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.385662, 31.601168, 43.204559>,  <38.551991, 31.735237, 43.313919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.385662, 31.601168, 43.204559>,  <38.108444, 31.377718, 43.022293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385662, 31.601168, 43.204559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328167, -0.318327, 0.889367,
		0.641873, -0.765904, -0.037292,
		0.693041, 0.558623, 0.455670,
		38.593575, 31.768755, 43.341259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357475, 30.975000, 43.620533>,  <38.108444, 31.377718, 43.022293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357475, 30.975000, 43.620533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478237, 31.348753, 43.696201>,  <38.550694, 31.573004, 43.741604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478237, 31.348753, 43.696201>,  <38.357475, 30.975000, 43.620533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478237, 31.348753, 43.696201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226142, -0.122576, 0.966351,
		0.926129, -0.334522, 0.174297,
		0.301902, 0.934382, 0.189171,
		38.568810, 31.629068, 43.752953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680897, 30.867727, 44.136444>,  <38.357475, 30.975000, 43.620533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680897, 30.867727, 44.136444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.642384, 31.265175, 44.159950>,  <38.619274, 31.503643, 44.174053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.642384, 31.265175, 44.159950>,  <38.680897, 30.867727, 44.136444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642384, 31.265175, 44.159950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066139, -0.065294, 0.995672,
		0.993154, 0.091982, 0.072004,
		-0.096285, 0.993618, 0.058764,
		38.613499, 31.563261, 44.177578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148647, 31.094166, 44.698391>,  <38.680897, 30.867727, 44.136444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148647, 31.094166, 44.698391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.858952, 31.361465, 44.630363>,  <38.685135, 31.521845, 44.589546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.858952, 31.361465, 44.630363>,  <39.148647, 31.094166, 44.698391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858952, 31.361465, 44.630363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169696, 0.066323, 0.983262,
		0.668345, 0.740974, 0.065366,
		-0.724236, 0.668251, -0.170067,
		38.641682, 31.561941, 44.579342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368492, 31.652157, 45.213272>,  <39.148647, 31.094166, 44.698391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368492, 31.652157, 45.213272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.984032, 31.704838, 45.116238>,  <38.753357, 31.736446, 45.058018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.984032, 31.704838, 45.116238>,  <39.368492, 31.652157, 45.213272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984032, 31.704838, 45.116238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231329, 0.095149, 0.968211,
		0.150597, 0.986712, -0.060985,
		-0.961149, 0.131702, -0.242584,
		38.695686, 31.744349, 45.043461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.215309, 32.776447, 44.171352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.614546, 32.795162, 44.187469>,  <31.854088, 32.806393, 44.197140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.614546, 32.795162, 44.187469>,  <31.215309, 32.776447, 44.171352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614546, 32.795162, 44.187469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023240, 0.319967, -0.947144,
		-0.057207, 0.946273, 0.318269,
		0.998092, 0.046787, 0.040296,
		31.913973, 32.809196, 44.199558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405880, 33.410374, 43.908466>,  <31.215309, 32.776447, 44.171352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405880, 33.410374, 43.908466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.741484, 33.200199, 43.851917>,  <31.942846, 33.074097, 43.817989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.741484, 33.200199, 43.851917>,  <31.405880, 33.410374, 43.908466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741484, 33.200199, 43.851917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127271, 0.442116, -0.887883,
		0.529026, 0.726947, 0.437811,
		0.839007, -0.525434, -0.141372,
		31.993185, 33.042568, 43.809505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899673, 33.908981, 43.565075>,  <31.405880, 33.410374, 43.908466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899673, 33.908981, 43.565075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.030685, 33.539196, 43.487003>,  <32.109291, 33.317326, 43.440163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.030685, 33.539196, 43.487003>,  <31.899673, 33.908981, 43.565075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030685, 33.539196, 43.487003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239827, 0.281149, -0.929214,
		0.913896, 0.257538, 0.313796,
		0.327531, -0.924462, -0.195177,
		32.128944, 33.261856, 43.428452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577484, 33.862988, 43.370670>,  <31.899673, 33.908981, 43.565075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577484, 33.862988, 43.370670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.445118, 33.522476, 43.207787>,  <32.365700, 33.318169, 43.110054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.445118, 33.522476, 43.207787>,  <32.577484, 33.862988, 43.370670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445118, 33.522476, 43.207787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313248, 0.307961, -0.898352,
		0.890152, -0.424837, 0.164752,
		-0.330916, -0.851278, -0.407211,
		32.345844, 33.267094, 43.085625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929703, 33.890038, 42.774616>,  <32.577484, 33.862988, 43.370670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929703, 33.890038, 42.774616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.727886, 33.556732, 42.684189>,  <32.606796, 33.356747, 42.629932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.727886, 33.556732, 42.684189>,  <32.929703, 33.890038, 42.774616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727886, 33.556732, 42.684189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270025, 0.096415, -0.958014,
		0.820078, -0.544399, 0.176358,
		-0.504538, -0.833267, -0.226070,
		32.576523, 33.306751, 42.616367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327320, 33.425686, 42.421436>,  <32.929703, 33.890038, 42.774616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327320, 33.425686, 42.421436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.946968, 33.351875, 42.322014>,  <32.718758, 33.307587, 42.262360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.946968, 33.351875, 42.322014>,  <33.327320, 33.425686, 42.421436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946968, 33.351875, 42.322014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232958, 0.102214, -0.967100,
		0.203865, -0.977497, -0.054205,
		-0.950879, -0.184531, -0.248554,
		32.661705, 33.296516, 42.247448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322929, 32.887222, 41.900101>,  <33.327320, 33.425686, 42.421436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322929, 32.887222, 41.900101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.007290, 33.128456, 41.853420>,  <32.817905, 33.273197, 41.825413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.007290, 33.128456, 41.853420>,  <33.322929, 32.887222, 41.900101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007290, 33.128456, 41.853420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262401, 0.159159, -0.951743,
		-0.555404, -0.781639, -0.283841,
		-0.789095, 0.603082, -0.116706,
		32.770561, 33.309380, 41.818409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054169, 32.783714, 41.254768>,  <33.322929, 32.887222, 41.900101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054169, 32.783714, 41.254768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.885384, 33.141674, 41.312859>,  <32.784111, 33.356449, 41.347713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.885384, 33.141674, 41.312859>,  <33.054169, 32.783714, 41.254768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885384, 33.141674, 41.312859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146939, 0.225577, -0.963080,
		-0.894625, -0.385048, -0.226682,
		-0.421966, 0.894904, 0.145229,
		32.758793, 33.410145, 41.356426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690914, 32.858089, 40.656479>,  <33.054169, 32.783714, 41.254768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690914, 32.858089, 40.656479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.663300, 33.230156, 40.800716>,  <32.646732, 33.453396, 40.887257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.663300, 33.230156, 40.800716>,  <32.690914, 32.858089, 40.656479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663300, 33.230156, 40.800716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043009, 0.363892, -0.930448,
		-0.996687, -0.048725, -0.065126,
		-0.069034, 0.930166, 0.360591,
		32.642590, 33.509205, 40.908894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253937, 33.256954, 40.223789>,  <32.690914, 32.858089, 40.656479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253937, 33.256954, 40.223789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.450958, 33.553802, 40.405624>,  <32.569172, 33.731911, 40.514725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.450958, 33.553802, 40.405624>,  <32.253937, 33.256954, 40.223789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450958, 33.553802, 40.405624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142402, 0.446582, -0.883338,
		-0.858553, 0.499825, 0.114285,
		0.492553, 0.742118, 0.454590,
		32.598724, 33.776440, 40.542000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864700, 33.938747, 40.087345>,  <32.253937, 33.256954, 40.223789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864700, 33.938747, 40.087345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.239811, 34.040611, 40.181770>,  <32.464878, 34.101730, 40.238426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.239811, 34.040611, 40.181770>,  <31.864700, 33.938747, 40.087345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239811, 34.040611, 40.181770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015634, 0.710105, -0.703922,
		-0.346890, 0.656431, 0.669900,
		0.937776, 0.254656, 0.236066,
		32.521145, 34.117008, 40.252590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913427, 34.621685, 40.060719>,  <31.864700, 33.938747, 40.087345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913427, 34.621685, 40.060719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.296627, 34.509144, 40.038513>,  <32.526546, 34.441620, 40.025188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.296627, 34.509144, 40.038513>,  <31.913427, 34.621685, 40.060719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296627, 34.509144, 40.038513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115785, 0.556574, -0.822690,
		0.262360, 0.781709, 0.565773,
		0.957999, -0.281349, -0.055512,
		32.584026, 34.424740, 40.021858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373047, 35.295826, 39.995251>,  <31.913427, 34.621685, 40.060719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373047, 35.295826, 39.995251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.573589, 34.977169, 39.860195>,  <32.693916, 34.785976, 39.779163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.573589, 34.977169, 39.860195>,  <32.373047, 35.295826, 39.995251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573589, 34.977169, 39.860195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134813, 0.457384, -0.878991,
		0.854672, 0.395172, 0.336712,
		0.501359, -0.796642, -0.337639,
		32.723999, 34.738178, 39.758904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959793, 35.528515, 39.612099>,  <32.373047, 35.295826, 39.995251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959793, 35.528515, 39.612099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.921783, 35.146538, 39.499626>,  <32.898975, 34.917351, 39.432144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.921783, 35.146538, 39.499626>,  <32.959793, 35.528515, 39.612099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921783, 35.146538, 39.499626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028985, 0.284991, -0.958092,
		0.995053, -0.082895, -0.054761,
		-0.095027, -0.954939, -0.281178,
		32.893276, 34.860058, 39.415272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707829, 35.488571, 39.819088>,  <32.959793, 35.528515, 39.612099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707829, 35.488571, 39.819088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.909157, 35.805527, 39.956955>,  <34.029953, 35.995701, 40.039673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.909157, 35.805527, 39.956955>,  <33.707829, 35.488571, 39.819088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909157, 35.805527, 39.956955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245730, -0.251151, 0.936237,
		0.828424, -0.555920, 0.068304,
		0.503319, 0.792386, 0.344665,
		34.060154, 36.043243, 40.060356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194099, 35.258862, 40.393993>,  <33.707829, 35.488571, 39.819088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194099, 35.258862, 40.393993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.161114, 35.653099, 40.453068>,  <34.141323, 35.889641, 40.488510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.161114, 35.653099, 40.453068>,  <34.194099, 35.258862, 40.393993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161114, 35.653099, 40.453068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152349, -0.158912, 0.975468,
		0.984881, 0.057942, 0.163258,
		-0.082464, 0.985591, 0.147682,
		34.136375, 35.948776, 40.497372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678471, 35.410206, 40.935497>,  <34.194099, 35.258862, 40.393993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678471, 35.410206, 40.935497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.426666, 35.720249, 40.957146>,  <34.275585, 35.906277, 40.970135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.426666, 35.720249, 40.957146>,  <34.678471, 35.410206, 40.935497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426666, 35.720249, 40.957146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013196, -0.058982, 0.998172,
		0.776882, 0.629071, 0.026902,
		-0.629508, 0.775107, 0.054124,
		34.237812, 35.952782, 40.973381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984291, 35.862438, 41.384907>,  <34.678471, 35.410206, 40.935497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984291, 35.862438, 41.384907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.604870, 35.986885, 41.361427>,  <34.377216, 36.061554, 41.347340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.604870, 35.986885, 41.361427>,  <34.984291, 35.862438, 41.384907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604870, 35.986885, 41.361427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099464, -0.116805, 0.988162,
		0.300575, 0.943167, 0.141741,
		-0.948558, 0.311114, -0.058702,
		34.320301, 36.080219, 41.343815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986824, 36.280483, 41.897461>,  <34.984291, 35.862438, 41.384907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986824, 36.280483, 41.897461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.607784, 36.165867, 41.840969>,  <34.380360, 36.097095, 41.807076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.607784, 36.165867, 41.840969>,  <34.986824, 36.280483, 41.897461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607784, 36.165867, 41.840969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143909, -0.011790, 0.989521,
		-0.285202, 0.957996, -0.030063,
		-0.947602, -0.286540, -0.141227,
		34.323505, 36.079906, 41.798599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697334, 36.685608, 42.303207>,  <34.986824, 36.280483, 41.897461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697334, 36.685608, 42.303207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.406410, 36.416668, 42.248112>,  <34.231857, 36.255306, 42.215054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.406410, 36.416668, 42.248112>,  <34.697334, 36.685608, 42.303207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406410, 36.416668, 42.248112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005667, -0.206565, 0.978417,
		-0.686287, 0.710831, 0.154047,
		-0.727309, -0.672347, -0.137735,
		34.188217, 36.214962, 42.206791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029175, 36.829887, 42.821571>,  <34.697334, 36.685608, 42.303207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029175, 36.829887, 42.821571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067257, 36.441475, 42.733902>,  <34.090107, 36.208427, 42.681301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067257, 36.441475, 42.733902>,  <34.029175, 36.829887, 42.821571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067257, 36.441475, 42.733902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114410, -0.229384, 0.966589,
		-0.988861, -0.066953, -0.132935,
		0.095209, -0.971031, -0.219169,
		34.095821, 36.150166, 42.668152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608654, 36.595623, 43.243073>,  <34.029175, 36.829887, 42.821571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608654, 36.595623, 43.243073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.838940, 36.286728, 43.135593>,  <33.977112, 36.101391, 43.071106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.838940, 36.286728, 43.135593>,  <33.608654, 36.595623, 43.243073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838940, 36.286728, 43.135593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159608, -0.428440, 0.889362,
		-0.801921, -0.469133, -0.369915,
		0.575716, -0.772239, -0.268697,
		34.011654, 36.055058, 43.054985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257851, 35.900703, 43.463623>,  <33.608654, 36.595623, 43.243073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257851, 35.900703, 43.463623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650585, 35.837772, 43.421211>,  <33.886227, 35.800014, 43.395763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650585, 35.837772, 43.421211>,  <33.257851, 35.900703, 43.463623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650585, 35.837772, 43.421211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044172, -0.353960, 0.934217,
		-0.184513, -0.921932, -0.340582,
		0.981837, -0.157331, -0.106034,
		33.945137, 35.790573, 43.389400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327835, 35.308758, 43.717770>,  <33.257851, 35.900703, 43.463623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327835, 35.308758, 43.717770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.711506, 35.420673, 43.701324>,  <33.941708, 35.487823, 43.691456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.711506, 35.420673, 43.701324>,  <33.327835, 35.308758, 43.717770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711506, 35.420673, 43.701324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096918, -0.188650, 0.977250,
		0.265665, -0.941345, -0.208066,
		0.959182, 0.279787, -0.041116,
		33.999260, 35.504608, 43.688992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647148, 34.748882, 43.835701>,  <33.327835, 35.308758, 43.717770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647148, 34.748882, 43.835701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.906876, 35.038322, 43.929325>,  <34.062714, 35.211987, 43.985500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.906876, 35.038322, 43.929325>,  <33.647148, 34.748882, 43.835701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906876, 35.038322, 43.929325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020646, -0.324424, 0.945686,
		0.760235, -0.609220, -0.225595,
		0.649320, 0.723602, 0.234061,
		34.101673, 35.255402, 43.999542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035603, 34.517139, 44.445793>,  <33.647148, 34.748882, 43.835701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035603, 34.517139, 44.445793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.149364, 34.900597, 44.450146>,  <34.217621, 35.130672, 44.452759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.149364, 34.900597, 44.450146>,  <34.035603, 34.517139, 44.445793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149364, 34.900597, 44.450146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060480, -0.029272, 0.997740,
		0.956795, -0.283103, -0.066304,
		0.284404, 0.958643, 0.010885,
		34.234684, 35.188190, 44.453411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652576, 34.680294, 44.846462>,  <34.035603, 34.517139, 44.445793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652576, 34.680294, 44.846462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.477329, 35.039841, 44.850117>,  <34.372181, 35.255569, 44.852310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.477329, 35.039841, 44.850117>,  <34.652576, 34.680294, 44.846462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477329, 35.039841, 44.850117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104196, 0.040690, 0.993724,
		0.892857, 0.436323, -0.111486,
		-0.438121, 0.898870, 0.009133,
		34.345894, 35.309502, 44.852856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087795, 35.139675, 45.273392>,  <34.652576, 34.680294, 44.846462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087795, 35.139675, 45.273392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.720032, 35.296764, 45.264786>,  <34.499374, 35.391018, 45.259624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.720032, 35.296764, 45.264786>,  <35.087795, 35.139675, 45.273392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720032, 35.296764, 45.264786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002948, 0.061575, 0.998098,
		0.393298, 0.917594, -0.057770,
		-0.919406, 0.392720, -0.021512,
		34.444210, 35.414581, 45.258331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561649, 35.555893, 45.711311>,  <35.087795, 35.139675, 45.273392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561649, 35.555893, 45.711311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.874687, 35.324097, 45.802284>,  <36.062511, 35.185017, 45.856869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.874687, 35.324097, 45.802284>,  <35.561649, 35.555893, 45.711311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874687, 35.324097, 45.802284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398097, 0.184990, -0.898497,
		0.478601, 0.793704, 0.375468,
		0.782598, -0.579494, 0.227435,
		36.109467, 35.150249, 45.870514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199253, 35.966072, 45.560490>,  <35.561649, 35.555893, 45.711311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199253, 35.966072, 45.560490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.312878, 35.582554, 45.558525>,  <36.381054, 35.352444, 45.557346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.312878, 35.582554, 45.558525>,  <36.199253, 35.966072, 45.560490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312878, 35.582554, 45.558525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518505, 0.157922, -0.840365,
		0.806512, 0.236169, 0.541999,
		0.284062, -0.958794, -0.004911,
		36.398098, 35.294914, 45.557053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897617, 35.964176, 45.421047>,  <36.199253, 35.966072, 45.560490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897617, 35.964176, 45.421047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.771435, 35.594494, 45.334957>,  <36.695724, 35.372684, 45.283302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.771435, 35.594494, 45.334957>,  <36.897617, 35.964176, 45.421047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771435, 35.594494, 45.334957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546618, 0.008419, -0.837340,
		0.775689, -0.381793, 0.502534,
		-0.315460, -0.924210, -0.215226,
		36.676796, 35.317230, 45.270390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457909, 35.507492, 45.238686>,  <36.897617, 35.964176, 45.421047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457909, 35.507492, 45.238686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.129723, 35.339386, 45.083656>,  <36.932812, 35.238522, 44.990639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.129723, 35.339386, 45.083656>,  <37.457909, 35.507492, 45.238686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129723, 35.339386, 45.083656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451116, -0.059482, -0.890481,
		0.351181, -0.905451, 0.238390,
		-0.820467, -0.420262, -0.387574,
		36.883583, 35.213306, 44.967384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680202, 34.912151, 44.977055>,  <37.457909, 35.507492, 45.238686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680202, 34.912151, 44.977055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.339706, 34.978745, 44.777988>,  <37.135410, 35.018700, 44.658550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.339706, 34.978745, 44.777988>,  <37.680202, 34.912151, 44.977055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339706, 34.978745, 44.777988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488932, -0.092853, -0.867366,
		-0.190615, -0.981662, -0.002361,
		-0.851241, 0.166487, -0.497665,
		37.084335, 35.028690, 44.628689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864708, 34.604843, 44.406639>,  <37.680202, 34.912151, 44.977055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864708, 34.604843, 44.406639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.532036, 34.784447, 44.275982>,  <37.332432, 34.892208, 44.197586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.532036, 34.784447, 44.275982>,  <37.864708, 34.604843, 44.406639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532036, 34.784447, 44.275982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386479, 0.045726, -0.921164,
		-0.398677, -0.892355, -0.211563,
		-0.831679, 0.449012, -0.326646,
		37.282532, 34.919151, 44.177986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607368, 34.178070, 43.771927>,  <37.864708, 34.604843, 44.406639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607368, 34.178070, 43.771927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.479801, 34.557037, 43.761475>,  <37.403263, 34.784420, 43.755203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.479801, 34.557037, 43.761475>,  <37.607368, 34.178070, 43.771927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479801, 34.557037, 43.761475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427314, 0.119120, -0.896222,
		-0.845988, -0.296986, -0.442836,
		-0.318916, 0.947423, -0.026133,
		37.384125, 34.841263, 43.753635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451572, 34.289967, 43.143036>,  <37.607368, 34.178070, 43.771927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451572, 34.289967, 43.143036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.472092, 34.668968, 43.269279>,  <37.484402, 34.896370, 43.345028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.472092, 34.668968, 43.269279>,  <37.451572, 34.289967, 43.143036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472092, 34.668968, 43.269279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285635, 0.288909, -0.913753,
		-0.956965, 0.137021, -0.255819,
		0.051295, 0.947500, 0.315613,
		37.487480, 34.953217, 43.363964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111362, 34.734367, 42.638138>,  <37.451572, 34.289967, 43.143036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111362, 34.734367, 42.638138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.359268, 34.973606, 42.841381>,  <37.508011, 35.117149, 42.963329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.359268, 34.973606, 42.841381>,  <37.111362, 34.734367, 42.638138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359268, 34.973606, 42.841381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325683, 0.393054, -0.859907,
		-0.714023, 0.698419, 0.048810,
		0.619760, 0.598096, 0.508112,
		37.545197, 35.153034, 42.993816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985462, 35.377090, 42.355484>,  <37.111362, 34.734367, 42.638138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985462, 35.377090, 42.355484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.348598, 35.389900, 42.522720>,  <37.566479, 35.397587, 42.623062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.348598, 35.389900, 42.522720>,  <36.985462, 35.377090, 42.355484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348598, 35.389900, 42.522720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367895, 0.417577, -0.830832,
		-0.201195, 0.908077, 0.367311,
		0.907840, 0.032027, 0.418091,
		37.620949, 35.399509, 42.648148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281654, 36.091106, 42.206932>,  <36.985462, 35.377090, 42.355484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281654, 36.091106, 42.206932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.600452, 35.866013, 42.294682>,  <37.791733, 35.730957, 42.347332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.600452, 35.866013, 42.294682>,  <37.281654, 36.091106, 42.206932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600452, 35.866013, 42.294682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452154, 0.315087, -0.834432,
		0.400441, 0.764232, 0.505566,
		0.796997, -0.562734, 0.219376,
		37.839550, 35.697193, 42.360493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848888, 36.458035, 41.999577>,  <37.281654, 36.091106, 42.206932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848888, 36.458035, 41.999577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.997280, 36.086914, 42.015366>,  <38.086315, 35.864243, 42.024837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.997280, 36.086914, 42.015366>,  <37.848888, 36.458035, 41.999577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997280, 36.086914, 42.015366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448950, 0.141980, -0.882205,
		0.812907, 0.345002, 0.469209,
		0.370981, -0.927801, 0.039473,
		38.108574, 35.808575, 42.027206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548267, 36.511257, 41.949116>,  <37.848888, 36.458035, 41.999577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548267, 36.511257, 41.949116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.438931, 36.148670, 41.820370>,  <38.373329, 35.931118, 41.743122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.438931, 36.148670, 41.820370>,  <38.548267, 36.511257, 41.949116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438931, 36.148670, 41.820370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601016, 0.100311, -0.792917,
		0.751042, -0.410185, 0.517383,
		-0.273344, -0.906469, -0.321866,
		38.356926, 35.876728, 41.723808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203526, 36.099899, 41.810390>,  <38.548267, 36.511257, 41.949116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203526, 36.099899, 41.810390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.903465, 35.945553, 41.595581>,  <38.723431, 35.852947, 41.466698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.903465, 35.945553, 41.595581>,  <39.203526, 36.099899, 41.810390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903465, 35.945553, 41.595581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527515, 0.140528, -0.837843,
		0.398758, -0.911791, 0.098131,
		-0.750147, -0.385862, -0.537020,
		38.678421, 35.829796, 41.434475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.032938, 41.521446, 38.075993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.890978, 41.852188, 37.901474>,  <29.805801, 42.050632, 37.796761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.890978, 41.852188, 37.901474>,  <30.032938, 41.521446, 38.075993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890978, 41.852188, 37.901474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932935, -0.343489, 0.107920,
		-0.060631, 0.445341, 0.893306,
		-0.354901, 0.826853, -0.436300,
		29.784508, 42.100243, 37.770584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412197, 41.750305, 38.482407>,  <30.032938, 41.521446, 38.075993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412197, 41.750305, 38.482407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.385605, 41.907780, 38.115673>,  <29.369650, 42.002266, 37.895634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.385605, 41.907780, 38.115673>,  <29.412197, 41.750305, 38.482407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385605, 41.907780, 38.115673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980411, -0.196513, -0.013294,
		-0.185405, 0.897994, 0.399040,
		-0.066479, 0.393688, -0.916837,
		29.365662, 42.025887, 37.840622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900581, 42.257168, 38.544693>,  <29.412197, 41.750305, 38.482407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900581, 42.257168, 38.544693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.912594, 42.096912, 38.178394>,  <28.919802, 42.000759, 37.958614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.912594, 42.096912, 38.178394>,  <28.900581, 42.257168, 38.544693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912594, 42.096912, 38.178394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989295, -0.142808, 0.030033,
		-0.142808, 0.905040, -0.400635,
		-0.030033, 0.400635, 0.915745,
		28.921604, 41.976723, 37.903671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294172, 42.149734, 38.396301>,  <28.900581, 42.257168, 38.544693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294172, 42.149734, 38.396301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.432165, 41.959820, 38.072433>,  <28.514961, 41.845871, 37.878113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.432165, 41.959820, 38.072433>,  <28.294172, 42.149734, 38.396301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432165, 41.959820, 38.072433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830559, -0.556241, -0.027701,
		-0.437219, 0.682034, -0.586233,
		0.344980, -0.474790, -0.809669,
		28.535660, 41.817383, 37.829533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740393, 42.092972, 37.859772>,  <28.294172, 42.149734, 38.396301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740393, 42.092972, 37.859772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.978132, 41.778820, 37.790573>,  <28.120775, 41.590328, 37.749054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.978132, 41.778820, 37.790573>,  <27.740393, 42.092972, 37.859772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978132, 41.778820, 37.790573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804012, -0.575544, -0.149376,
		0.017747, 0.227876, -0.973528,
		0.594347, -0.785380, -0.173001,
		28.156437, 41.543205, 37.738674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428696, 41.742615, 37.250633>,  <27.740393, 42.092972, 37.859772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428696, 41.742615, 37.250633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.662893, 41.455494, 37.401344>,  <27.803411, 41.283222, 37.491772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.662893, 41.455494, 37.401344>,  <27.428696, 41.742615, 37.250633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662893, 41.455494, 37.401344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767360, -0.640606, -0.027976,
		0.261448, -0.272745, -0.925881,
		0.585494, -0.717798, 0.376778,
		27.838541, 41.240154, 37.514378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439602, 41.098030, 36.760845>,  <27.428696, 41.742615, 37.250633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439602, 41.098030, 36.760845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.567348, 40.930332, 37.100784>,  <27.643997, 40.829712, 37.304749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.567348, 40.930332, 37.100784>,  <27.439602, 41.098030, 36.760845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567348, 40.930332, 37.100784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533311, -0.820824, -0.204518,
		0.783316, -0.387915, -0.485734,
		0.319366, -0.419249, 0.849844,
		27.663158, 40.804558, 37.355736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669783, 40.515152, 36.546116>,  <27.439602, 41.098030, 36.760845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669783, 40.515152, 36.546116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.604059, 40.473324, 36.938457>,  <27.564625, 40.448227, 37.173862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.604059, 40.473324, 36.938457>,  <27.669783, 40.515152, 36.546116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604059, 40.473324, 36.938457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360003, -0.919418, -0.158330,
		0.918368, -0.379125, 0.113422,
		-0.164309, -0.104573, 0.980850,
		27.554766, 40.441952, 37.232712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056444, 39.910965, 36.775864>,  <27.669783, 40.515152, 36.546116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056444, 39.910965, 36.775864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.767614, 39.970562, 37.046097>,  <27.594316, 40.006321, 37.208237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.767614, 39.970562, 37.046097>,  <28.056444, 39.910965, 36.775864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767614, 39.970562, 37.046097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274666, -0.958012, -0.082293,
		0.634957, -0.244981, 0.732676,
		-0.722072, 0.148989, 0.675584,
		27.550993, 40.015259, 37.248772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134203, 39.307468, 37.121674>,  <28.056444, 39.910965, 36.775864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134203, 39.307468, 37.121674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.803747, 39.489594, 37.254452>,  <27.605473, 39.598869, 37.334118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.803747, 39.489594, 37.254452>,  <28.134203, 39.307468, 37.121674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803747, 39.489594, 37.254452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445944, -0.888430, 0.108744,
		0.344420, -0.058190, 0.937011,
		-0.826141, 0.455308, 0.331942,
		27.555904, 39.626186, 37.354034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963898, 38.930271, 37.714493>,  <28.134203, 39.307468, 37.121674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963898, 38.930271, 37.714493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.622900, 39.082916, 37.571594>,  <27.418301, 39.174503, 37.485855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.622900, 39.082916, 37.571594>,  <27.963898, 38.930271, 37.714493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622900, 39.082916, 37.571594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410290, -0.911942, 0.004937,
		-0.323908, 0.150785, 0.933995,
		-0.852494, 0.381610, -0.357251,
		27.367151, 39.197399, 37.464420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396397, 38.614563, 38.073666>,  <27.963898, 38.930271, 37.714493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396397, 38.614563, 38.073666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.242861, 38.758362, 37.733448>,  <27.150740, 38.844639, 37.529316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.242861, 38.758362, 37.733448>,  <27.396397, 38.614563, 38.073666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242861, 38.758362, 37.733448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577288, -0.812330, -0.082820,
		-0.720699, 0.459221, 0.519336,
		-0.383839, 0.359494, -0.850547,
		27.127708, 38.866211, 37.478283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580759, 38.536278, 38.176399>,  <27.396397, 38.614563, 38.073666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580759, 38.536278, 38.176399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.646397, 38.548298, 37.782005>,  <26.685780, 38.555511, 37.545368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.646397, 38.548298, 37.782005>,  <26.580759, 38.536278, 38.176399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646397, 38.548298, 37.782005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480406, -0.870557, -0.106488,
		-0.861558, 0.491148, -0.128417,
		0.164095, 0.030053, -0.985987,
		26.695625, 38.557312, 37.486210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023951, 38.375225, 37.872601>,  <26.580759, 38.536278, 38.176399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023951, 38.375225, 37.872601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.256645, 38.301212, 37.555779>,  <26.396263, 38.256805, 37.365685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.256645, 38.301212, 37.555779>,  <26.023951, 38.375225, 37.872601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256645, 38.301212, 37.555779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518666, -0.834500, -0.186000,
		-0.626552, 0.519014, -0.581428,
		0.581738, -0.185028, -0.792052,
		26.431166, 38.245705, 37.318165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.544483, 38.061264, 37.439903>,  <26.023951, 38.375225, 37.872601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.544483, 38.061264, 37.439903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.898056, 37.969852, 37.276718>,  <26.110201, 37.915005, 37.178806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.898056, 37.969852, 37.276718>,  <25.544483, 38.061264, 37.439903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898056, 37.969852, 37.276718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383825, -0.852918, -0.353850,
		-0.267096, 0.469367, -0.841638,
		0.883933, -0.228530, -0.407965,
		26.163237, 37.901295, 37.154327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449045, 37.831734, 36.709614>,  <25.544483, 38.061264, 37.439903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449045, 37.831734, 36.709614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.796705, 37.675632, 36.831127>,  <26.005301, 37.581974, 36.904037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.796705, 37.675632, 36.831127>,  <25.449045, 37.831734, 36.709614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.796705, 37.675632, 36.831127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321675, -0.912671, -0.252103,
		0.375641, 0.121394, -0.918780,
		0.869148, -0.390249, 0.303787,
		26.057449, 37.558559, 36.922264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659966, 37.491905, 36.038250>,  <25.449045, 37.831734, 36.709614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.659966, 37.491905, 36.038250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.845997, 37.338936, 36.357613>,  <25.957617, 37.247154, 36.549229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.845997, 37.338936, 36.357613>,  <25.659966, 37.491905, 36.038250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845997, 37.338936, 36.357613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234683, -0.922872, -0.305338,
		0.853595, -0.045366, -0.518958,
		0.465080, -0.382425, 0.798405,
		25.985521, 37.224209, 36.597134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095343, 37.016819, 35.723602>,  <25.659966, 37.491905, 36.038250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095343, 37.016819, 35.723602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.098835, 36.885159, 36.101295>,  <26.100931, 36.806164, 36.327911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.098835, 36.885159, 36.101295>,  <26.095343, 37.016819, 35.723602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098835, 36.885159, 36.101295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065134, -0.942454, -0.327929,
		0.997838, -0.058638, -0.029669,
		0.008732, -0.329153, 0.944237,
		26.101454, 36.786411, 36.384567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456350, 36.440498, 35.633381>,  <26.095343, 37.016819, 35.723602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456350, 36.440498, 35.633381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.234179, 36.396610, 35.963097>,  <26.100876, 36.370277, 36.160927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.234179, 36.396610, 35.963097>,  <26.456350, 36.440498, 35.633381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234179, 36.396610, 35.963097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308592, -0.893279, -0.326838,
		0.772183, -0.435906, 0.462298,
		-0.555432, -0.109718, 0.824292,
		26.067549, 36.363693, 36.210384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786604, 36.018559, 36.274448>,  <26.456350, 36.440498, 35.633381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786604, 36.018559, 36.274448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.389648, 35.984684, 36.238682>,  <26.151476, 35.964359, 36.217224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.389648, 35.984684, 36.238682>,  <26.786604, 36.018559, 36.274448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389648, 35.984684, 36.238682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089035, -0.994976, -0.045787,
		-0.085087, -0.053400, 0.994941,
		-0.992387, -0.084689, -0.089414,
		26.091932, 35.959278, 36.211857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037811, 35.395893, 35.921982>,  <26.786604, 36.018559, 36.274448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037811, 35.395893, 35.921982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.285805, 35.178471, 35.695648>,  <27.434601, 35.048016, 35.559849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.285805, 35.178471, 35.695648>,  <27.037811, 35.395893, 35.921982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285805, 35.178471, 35.695648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602845, 0.791582, -0.099880,
		0.502195, -0.279187, 0.818447,
		0.619983, -0.543555, -0.565835,
		27.471800, 35.015404, 35.525898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643469, 35.585007, 36.247883>,  <27.037811, 35.395893, 35.921982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643469, 35.585007, 36.247883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.689161, 35.444473, 35.876179>,  <27.716576, 35.360153, 35.653156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.689161, 35.444473, 35.876179>,  <27.643469, 35.585007, 36.247883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689161, 35.444473, 35.876179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596345, 0.772360, -0.218709,
		0.794559, -0.529174, 0.297743,
		0.114230, -0.351334, -0.929255,
		27.723431, 35.339073, 35.597401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365290, 35.829163, 36.077133>,  <27.643469, 35.585007, 36.247883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365290, 35.829163, 36.077133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.151588, 35.727566, 35.754627>,  <28.023369, 35.666607, 35.561123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.151588, 35.727566, 35.754627>,  <28.365290, 35.829163, 36.077133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151588, 35.727566, 35.754627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263829, 0.856048, -0.444496,
		0.803100, -0.450189, -0.390335,
		-0.534252, -0.253993, -0.806264,
		27.991312, 35.651367, 35.512749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880312, 35.943939, 35.439682>,  <28.365290, 35.829163, 36.077133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880312, 35.943939, 35.439682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.502260, 35.946812, 35.309036>,  <28.275429, 35.948536, 35.230648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.502260, 35.946812, 35.309036>,  <28.880312, 35.943939, 35.439682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502260, 35.946812, 35.309036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199708, 0.803911, -0.560218,
		0.258546, -0.594706, -0.761235,
		-0.945130, 0.007182, -0.326616,
		28.218721, 35.948967, 35.211052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945711, 35.916058, 34.752193>,  <28.880312, 35.943939, 35.439682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945711, 35.916058, 34.752193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.588640, 36.079681, 34.827869>,  <28.374397, 36.177856, 34.873276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.588640, 36.079681, 34.827869>,  <28.945711, 35.916058, 34.752193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588640, 36.079681, 34.827869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282693, 0.835133, -0.471845,
		-0.351015, -0.367723, -0.861144,
		-0.892678, 0.409064, 0.189191,
		28.320837, 36.202400, 34.884628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835224, 36.274155, 34.195919>,  <28.945711, 35.916058, 34.752193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835224, 36.274155, 34.195919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.568411, 36.427582, 34.451401>,  <28.408323, 36.519638, 34.604691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.568411, 36.427582, 34.451401>,  <28.835224, 36.274155, 34.195919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568411, 36.427582, 34.451401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062702, 0.883146, -0.464889,
		-0.742383, -0.270049, -0.613140,
		-0.667035, 0.383571, 0.638700,
		28.368299, 36.542652, 34.643009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396690, 36.582382, 33.706142>,  <28.835224, 36.274155, 34.195919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396690, 36.582382, 33.706142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.285519, 36.759377, 34.047192>,  <28.218815, 36.865574, 34.251820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.285519, 36.759377, 34.047192>,  <28.396690, 36.582382, 33.706142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285519, 36.759377, 34.047192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161598, 0.853406, -0.495565,
		-0.946912, -0.275514, -0.165682,
		-0.277929, 0.442482, 0.852622,
		28.202139, 36.892120, 34.302979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720921, 36.898563, 33.611057>,  <28.396690, 36.582382, 33.706142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720921, 36.898563, 33.611057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.888990, 37.103386, 33.910725>,  <27.989832, 37.226280, 34.090523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.888990, 37.103386, 33.910725>,  <27.720921, 36.898563, 33.611057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888990, 37.103386, 33.910725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179576, 0.856172, -0.484481,
		-0.889497, 0.069036, 0.451697,
		0.420177, 0.512058, 0.749165,
		28.015043, 37.257004, 34.135475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335720, 37.468475, 33.903427>,  <27.720921, 36.898563, 33.611057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335720, 37.468475, 33.903427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685085, 37.589344, 34.056187>,  <27.894705, 37.661865, 34.147842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685085, 37.589344, 34.056187>,  <27.335720, 37.468475, 33.903427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685085, 37.589344, 34.056187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188196, 0.932723, -0.307587,
		-0.449147, 0.196779, 0.871519,
		0.873412, 0.302168, 0.381897,
		27.947109, 37.679993, 34.170757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210150, 38.097488, 34.203220>,  <27.335720, 37.468475, 33.903427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210150, 38.097488, 34.203220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.606403, 38.102699, 34.148846>,  <27.844154, 38.105827, 34.116222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.606403, 38.102699, 34.148846>,  <27.210150, 38.097488, 34.203220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606403, 38.102699, 34.148846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045309, 0.970404, -0.237198,
		0.128819, 0.241135, 0.961904,
		0.990633, 0.013027, -0.135933,
		27.903593, 38.106609, 34.108067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315077, 38.723827, 34.331333>,  <27.210150, 38.097488, 34.203220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315077, 38.723827, 34.331333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.670233, 38.620884, 34.178799>,  <27.883327, 38.559116, 34.087280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.670233, 38.620884, 34.178799>,  <27.315077, 38.723827, 34.331333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670233, 38.620884, 34.178799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124220, 0.932215, -0.339919,
		0.442965, 0.254442, 0.859675,
		0.887892, -0.257361, -0.381332,
		27.936600, 38.543674, 34.064400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835976, 39.255039, 34.474998>,  <27.315077, 38.723827, 34.331333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835976, 39.255039, 34.474998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.021973, 39.056610, 34.181686>,  <28.133572, 38.937553, 34.005699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.021973, 39.056610, 34.181686>,  <27.835976, 39.255039, 34.474998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021973, 39.056610, 34.181686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359283, 0.862734, -0.355818,
		0.809134, -0.098002, 0.579394,
		0.464992, -0.496071, -0.733278,
		28.161470, 38.907787, 33.961704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600470, 39.357132, 34.471901>,  <27.835976, 39.255039, 34.474998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600470, 39.357132, 34.471901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.495811, 39.250244, 34.100929>,  <28.433016, 39.186111, 33.878345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.495811, 39.250244, 34.100929>,  <28.600470, 39.357132, 34.471901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495811, 39.250244, 34.100929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351208, 0.868671, -0.349376,
		0.898996, -0.417135, -0.133433,
		-0.261646, -0.267225, -0.927433,
		28.417318, 39.170078, 33.822701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106905, 39.702377, 34.051235>,  <28.600470, 39.357132, 34.471901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106905, 39.702377, 34.051235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.819921, 39.609814, 33.788418>,  <28.647732, 39.554276, 33.630730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.819921, 39.609814, 33.788418>,  <29.106905, 39.702377, 34.051235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819921, 39.609814, 33.788418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266449, 0.780323, -0.565774,
		0.643627, -0.580989, -0.498194,
		-0.717460, -0.231404, -0.657041,
		28.604683, 39.540394, 33.591305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409061, 39.927456, 33.416042>,  <29.106905, 39.702377, 34.051235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409061, 39.927456, 33.416042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.011587, 39.936375, 33.372066>,  <28.773102, 39.941727, 33.345680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.011587, 39.936375, 33.372066>,  <29.409061, 39.927456, 33.416042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011587, 39.936375, 33.372066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081163, 0.819433, -0.567400,
		0.077437, -0.572741, -0.816070,
		-0.993688, 0.022297, -0.109940,
		28.713480, 39.943062, 33.339085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451328, 40.211494, 32.779774>,  <29.409061, 39.927456, 33.416042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451328, 40.211494, 32.779774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.083473, 40.269295, 32.925861>,  <28.862761, 40.303974, 33.013515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.083473, 40.269295, 32.925861>,  <29.451328, 40.211494, 32.779774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083473, 40.269295, 32.925861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102714, 0.809028, -0.578726,
		-0.379101, -0.569731, -0.729170,
		-0.919637, 0.144499, 0.365223,
		28.807583, 40.312645, 33.035427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994875, 40.265301, 32.273666>,  <29.451328, 40.211494, 32.779774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994875, 40.265301, 32.273666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.801710, 40.467598, 32.559608>,  <28.685810, 40.588978, 32.731174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.801710, 40.467598, 32.559608>,  <28.994875, 40.265301, 32.273666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801710, 40.467598, 32.559608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040655, 0.828423, -0.558626,
		-0.874724, -0.240705, -0.420618,
		-0.482914, 0.505743, 0.714855,
		28.656836, 40.619320, 32.774067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883986, 40.843102, 31.938629>,  <28.994875, 40.265301, 32.273666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883986, 40.843102, 31.938629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.750877, 40.961666, 32.296715>,  <28.671013, 41.032803, 32.511566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.750877, 40.961666, 32.296715>,  <28.883986, 40.843102, 31.938629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750877, 40.961666, 32.296715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117181, 0.954956, -0.272632,
		-0.935698, 0.014177, -0.352517,
		-0.332773, 0.296409, 0.895212,
		28.651045, 41.050591, 32.565277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379112, 41.326912, 31.792814>,  <28.883986, 40.843102, 31.938629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379112, 41.326912, 31.792814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.501219, 41.386150, 32.169086>,  <28.574482, 41.421692, 32.394852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.501219, 41.386150, 32.169086>,  <28.379112, 41.326912, 31.792814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501219, 41.386150, 32.169086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080655, 0.980263, -0.180497,
		-0.948845, 0.130971, 0.287297,
		0.305266, 0.148091, 0.940681,
		28.592798, 41.430576, 32.451290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986361, 41.794262, 32.050060>,  <28.379112, 41.326912, 31.792814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986361, 41.794262, 32.050060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.343119, 41.808182, 32.230423>,  <28.557173, 41.816532, 32.338638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.343119, 41.808182, 32.230423>,  <27.986361, 41.794262, 32.050060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343119, 41.808182, 32.230423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115106, 0.946734, -0.300741,
		-0.437350, 0.320131, 0.840382,
		0.891894, 0.034796, 0.450903,
		28.610687, 41.818619, 32.365692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020973, 42.457596, 32.507969>,  <27.986361, 41.794262, 32.050060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020973, 42.457596, 32.507969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.395475, 42.364330, 32.402851>,  <28.620176, 42.308369, 32.339779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.395475, 42.364330, 32.402851>,  <28.020973, 42.457596, 32.507969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395475, 42.364330, 32.402851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114834, 0.910032, -0.398314,
		0.332028, 0.342745, 0.878796,
		0.936253, -0.233167, -0.262797,
		28.676352, 42.294380, 32.324013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405153, 42.998722, 32.803566>,  <28.020973, 42.457596, 32.507969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405153, 42.998722, 32.803566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.567247, 42.835606, 32.476276>,  <28.664503, 42.737736, 32.279903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.567247, 42.835606, 32.476276>,  <28.405153, 42.998722, 32.803566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567247, 42.835606, 32.476276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012346, 0.897361, -0.441124,
		0.914129, 0.168658, 0.368677,
		0.405235, -0.407796, -0.818222,
		28.688818, 42.713268, 32.230808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.135529, 32.385448, 45.468113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.789032, 32.203785, 45.384815>,  <38.581135, 32.094788, 45.334839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.789032, 32.203785, 45.384815>,  <39.135529, 32.385448, 45.468113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789032, 32.203785, 45.384815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308770, 0.158954, 0.937761,
		-0.392789, 0.876628, -0.277923,
		-0.866244, -0.454156, -0.208241,
		38.529160, 32.067539, 45.322342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686508, 32.779461, 45.887897>,  <39.135529, 32.385448, 45.468113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686508, 32.779461, 45.887897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.500847, 32.429264, 45.834114>,  <38.389450, 32.219147, 45.801846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.500847, 32.429264, 45.834114>,  <38.686508, 32.779461, 45.887897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500847, 32.429264, 45.834114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273954, -0.002465, 0.961740,
		-0.842325, 0.483231, -0.238700,
		-0.464154, -0.875490, -0.134459,
		38.361599, 32.166618, 45.793777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030880, 32.833241, 46.252075>,  <38.686508, 32.779461, 45.887897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030880, 32.833241, 46.252075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.067360, 32.436573, 46.215694>,  <38.089249, 32.198570, 46.193867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.067360, 32.436573, 46.215694>,  <38.030880, 32.833241, 46.252075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067360, 32.436573, 46.215694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426308, -0.121418, 0.896392,
		-0.899969, -0.042973, -0.433830,
		0.091196, -0.991671, -0.090953,
		38.094719, 32.139072, 46.188408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433304, 32.510162, 46.455280>,  <38.030880, 32.833241, 46.252075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433304, 32.510162, 46.455280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.701397, 32.214043, 46.476227>,  <37.862251, 32.036369, 46.488796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.701397, 32.214043, 46.476227>,  <37.433304, 32.510162, 46.455280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701397, 32.214043, 46.476227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348523, -0.251672, 0.902880,
		-0.655224, -0.623391, -0.426691,
		0.670234, -0.740300, 0.052365,
		37.902466, 31.991953, 46.491936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019775, 31.999985, 46.628998>,  <37.433304, 32.510162, 46.455280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019775, 31.999985, 46.628998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.382885, 31.861517, 46.723743>,  <37.600750, 31.778437, 46.780590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.382885, 31.861517, 46.723743>,  <37.019775, 31.999985, 46.628998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382885, 31.861517, 46.723743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358219, -0.346022, 0.867149,
		-0.218217, -0.872030, -0.438116,
		0.907777, -0.346168, 0.236870,
		37.655216, 31.757666, 46.794804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983627, 31.267830, 46.828465>,  <37.019775, 31.999985, 46.628998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983627, 31.267830, 46.828465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.301094, 31.412416, 47.024197>,  <37.491573, 31.499168, 47.141636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.301094, 31.412416, 47.024197>,  <36.983627, 31.267830, 46.828465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301094, 31.412416, 47.024197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359946, -0.369430, 0.856715,
		0.490446, -0.856074, -0.163095,
		0.793664, 0.361467, 0.489326,
		37.539192, 31.520857, 47.170994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291664, 30.639881, 47.101028>,  <36.983627, 31.267830, 46.828465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291664, 30.639881, 47.101028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399700, 30.962030, 47.312092>,  <37.464523, 31.155319, 47.438732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399700, 30.962030, 47.312092>,  <37.291664, 30.639881, 47.101028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399700, 30.962030, 47.312092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444363, -0.381909, 0.810362,
		0.854161, -0.453346, 0.254727,
		0.270092, 0.805371, 0.527662,
		37.480728, 31.203642, 47.470390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342926, 30.318487, 47.781517>,  <37.291664, 30.639881, 47.101028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342926, 30.318487, 47.781517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.387665, 30.709932, 47.850578>,  <37.414509, 30.944799, 47.892017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.387665, 30.709932, 47.850578>,  <37.342926, 30.318487, 47.781517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387665, 30.709932, 47.850578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250342, -0.140392, 0.957924,
		0.961675, -0.150368, 0.229285,
		0.111851, 0.978611, 0.172655,
		37.421219, 31.003515, 47.902374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820889, 30.390953, 48.395508>,  <37.342926, 30.318487, 47.781517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820889, 30.390953, 48.395508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.608788, 30.728514, 48.362869>,  <37.481525, 30.931051, 48.343285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.608788, 30.728514, 48.362869>,  <37.820889, 30.390953, 48.395508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608788, 30.728514, 48.362869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305032, -0.100089, 0.947068,
		0.791067, 0.527075, 0.310491,
		-0.530253, 0.843904, -0.081597,
		37.449711, 30.981686, 48.338390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984074, 30.714855, 48.956749>,  <37.820889, 30.390953, 48.395508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984074, 30.714855, 48.956749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.644802, 30.881794, 48.826267>,  <37.441238, 30.981956, 48.747978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.644802, 30.881794, 48.826267>,  <37.984074, 30.714855, 48.956749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644802, 30.881794, 48.826267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416648, -0.145359, 0.897371,
		0.327098, 0.897046, 0.297177,
		-0.848181, 0.417347, -0.326206,
		37.390347, 31.006998, 48.728405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877880, 31.345932, 49.442532>,  <37.984074, 30.714855, 48.956749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877880, 31.345932, 49.442532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.545227, 31.206690, 49.269459>,  <37.345634, 31.123144, 49.165615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.545227, 31.206690, 49.269459>,  <37.877880, 31.345932, 49.442532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545227, 31.206690, 49.269459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390601, -0.187174, 0.901331,
		-0.394744, 0.918580, 0.019689,
		-0.831630, -0.348104, -0.432684,
		37.295738, 31.102259, 49.139652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284348, 31.777048, 49.623379>,  <37.877880, 31.345932, 49.442532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284348, 31.777048, 49.623379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105049, 31.431015, 49.533310>,  <36.997471, 31.223394, 49.479267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105049, 31.431015, 49.533310>,  <37.284348, 31.777048, 49.623379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105049, 31.431015, 49.533310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252298, -0.119223, 0.960277,
		-0.857566, 0.487253, -0.164817,
		-0.448247, -0.865084, -0.225175,
		36.970573, 31.171490, 49.465759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612206, 31.779692, 49.983082>,  <37.284348, 31.777048, 49.623379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612206, 31.779692, 49.983082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.752102, 31.410065, 49.921406>,  <36.836040, 31.188288, 49.884399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.752102, 31.410065, 49.921406>,  <36.612206, 31.779692, 49.983082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752102, 31.410065, 49.921406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050150, -0.182812, 0.981868,
		-0.935502, -0.335671, -0.110280,
		0.349746, -0.924070, -0.154187,
		36.857025, 31.132843, 49.875149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198814, 32.207432, 50.485214>,  <36.612206, 31.779692, 49.983082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198814, 32.207432, 50.485214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.926888, 32.350182, 50.741493>,  <35.763733, 32.435833, 50.895260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.926888, 32.350182, 50.741493>,  <36.198814, 32.207432, 50.485214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926888, 32.350182, 50.741493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045411, 0.851456, -0.522457,
		-0.731976, -0.384269, -0.562626,
		-0.679815, 0.356877, 0.640696,
		35.722942, 32.457245, 50.933701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594143, 32.108681, 50.251797>,  <36.198814, 32.207432, 50.485214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594143, 32.108681, 50.251797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608589, 32.435490, 50.481987>,  <35.617256, 32.631573, 50.620102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608589, 32.435490, 50.481987>,  <35.594143, 32.108681, 50.251797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608589, 32.435490, 50.481987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141710, 0.574224, -0.806340,
		-0.989249, -0.052426, 0.136521,
		0.036120, 0.817018, 0.575480,
		35.619427, 32.680595, 50.654633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224541, 32.611225, 49.911598>,  <35.594143, 32.108681, 50.251797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224541, 32.611225, 49.911598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.406254, 32.846603, 50.179134>,  <35.515282, 32.987831, 50.339657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.406254, 32.846603, 50.179134>,  <35.224541, 32.611225, 49.911598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406254, 32.846603, 50.179134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036112, 0.762334, -0.646176,
		-0.890124, 0.269395, 0.367566,
		0.454285, 0.588450, 0.668844,
		35.542538, 33.023140, 50.379787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855995, 33.253826, 49.906036>,  <35.224541, 32.611225, 49.911598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855995, 33.253826, 49.906036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.212002, 33.340900, 50.066277>,  <35.425606, 33.393147, 50.162422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.212002, 33.340900, 50.066277>,  <34.855995, 33.253826, 49.906036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212002, 33.340900, 50.066277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130215, 0.720690, -0.680919,
		-0.436937, 0.658194, 0.613080,
		0.890017, 0.217686, 0.400603,
		35.479008, 33.406208, 50.186459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795486, 34.041733, 49.868980>,  <34.855995, 33.253826, 49.906036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795486, 34.041733, 49.868980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.174149, 33.921444, 49.915298>,  <35.401348, 33.849270, 49.943089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.174149, 33.921444, 49.915298>,  <34.795486, 34.041733, 49.868980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174149, 33.921444, 49.915298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309810, 0.750493, -0.583762,
		0.088645, 0.588496, 0.803626,
		0.946657, -0.300719, 0.115794,
		35.458145, 33.831226, 49.950035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224613, 34.670582, 50.042004>,  <34.795486, 34.041733, 49.868980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224613, 34.670582, 50.042004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.459141, 34.386452, 49.886223>,  <35.599857, 34.215973, 49.792755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.459141, 34.386452, 49.886223>,  <35.224613, 34.670582, 50.042004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459141, 34.386452, 49.886223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459200, 0.687483, -0.562585,
		0.667358, 0.151019, 0.729265,
		0.586318, -0.710324, -0.389449,
		35.635036, 34.173355, 49.769386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894588, 34.934021, 49.931583>,  <35.224613, 34.670582, 50.042004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894588, 34.934021, 49.931583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881271, 34.613125, 49.693157>,  <35.873280, 34.420586, 49.550102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881271, 34.613125, 49.693157>,  <35.894588, 34.934021, 49.931583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881271, 34.613125, 49.693157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348980, 0.549528, -0.759100,
		0.936539, -0.233287, 0.261672,
		-0.033292, -0.802244, -0.596067,
		35.871284, 34.372452, 49.514336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396648, 35.054794, 49.474091>,  <35.894588, 34.934021, 49.931583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396648, 35.054794, 49.474091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.164028, 34.785393, 49.291580>,  <36.024456, 34.623753, 49.182076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.164028, 34.785393, 49.291580>,  <36.396648, 35.054794, 49.474091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164028, 34.785393, 49.291580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236057, 0.397036, -0.886927,
		0.778506, -0.623504, -0.071913,
		-0.581554, -0.673502, -0.456277,
		35.989563, 34.583344, 49.154697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841404, 34.904182, 48.926590>,  <36.396648, 35.054794, 49.474091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841404, 34.904182, 48.926590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.480793, 34.774956, 48.811432>,  <36.264427, 34.697418, 48.742336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.480793, 34.774956, 48.811432>,  <36.841404, 34.904182, 48.926590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480793, 34.774956, 48.811432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150353, 0.389986, -0.908463,
		0.405779, -0.862283, -0.303004,
		-0.901519, -0.323078, -0.287895,
		36.210335, 34.678036, 48.725063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917496, 34.266796, 48.316917>,  <36.841404, 34.904182, 48.926590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917496, 34.266796, 48.316917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.557430, 34.439285, 48.292385>,  <36.341393, 34.542778, 48.277664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.557430, 34.439285, 48.292385>,  <36.917496, 34.266796, 48.316917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557430, 34.439285, 48.292385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180488, 0.241143, -0.953559,
		-0.396403, -0.869425, -0.294897,
		-0.900160, 0.431219, -0.061331,
		36.287384, 34.568649, 48.273987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595539, 33.936020, 47.802181>,  <36.917496, 34.266796, 48.316917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595539, 33.936020, 47.802181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.405144, 34.286671, 47.830349>,  <36.290905, 34.497063, 47.847248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.405144, 34.286671, 47.830349>,  <36.595539, 33.936020, 47.802181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405144, 34.286671, 47.830349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025489, 0.066282, -0.997475,
		-0.879081, -0.476584, -0.009205,
		-0.475991, 0.876626, 0.070415,
		36.262348, 34.549660, 47.851475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139885, 33.861443, 47.369221>,  <36.595539, 33.936020, 47.802181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139885, 33.861443, 47.369221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.143639, 34.256580, 47.431293>,  <36.145893, 34.493664, 47.468536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.143639, 34.256580, 47.431293>,  <36.139885, 33.861443, 47.369221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143639, 34.256580, 47.431293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185982, 0.154210, -0.970376,
		-0.982508, -0.019751, 0.185168,
		0.009388, 0.987840, 0.155186,
		36.146454, 34.552933, 47.477848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699112, 33.967720, 46.899837>,  <36.139885, 33.861443, 47.369221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699112, 33.967720, 46.899837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.854271, 34.330570, 46.965137>,  <35.947369, 34.548283, 47.004318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.854271, 34.330570, 46.965137>,  <35.699112, 33.967720, 46.899837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854271, 34.330570, 46.965137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211648, 0.260051, -0.942114,
		-0.897072, 0.330895, 0.292866,
		0.387900, 0.907129, 0.163251,
		35.970642, 34.602707, 47.014114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326454, 34.435230, 46.504932>,  <35.699112, 33.967720, 46.899837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326454, 34.435230, 46.504932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.670372, 34.630768, 46.563972>,  <35.876720, 34.748093, 46.599396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.670372, 34.630768, 46.563972>,  <35.326454, 34.435230, 46.504932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670372, 34.630768, 46.563972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043864, 0.358683, -0.932429,
		-0.508757, 0.795220, 0.329835,
		0.859792, 0.488847, 0.147601,
		35.928310, 34.777424, 46.608253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208588, 35.135876, 46.220051>,  <35.326454, 34.435230, 46.504932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208588, 35.135876, 46.220051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596992, 35.041405, 46.234772>,  <35.830036, 34.984722, 46.243607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596992, 35.041405, 46.234772>,  <35.208588, 35.135876, 46.220051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596992, 35.041405, 46.234772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065131, 0.113277, -0.991426,
		0.229985, 0.965084, 0.125376,
		0.971012, -0.236179, 0.036805,
		35.888298, 34.970551, 46.245811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966053, 35.898792, 46.229210>,  <35.208588, 35.135876, 46.220051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966053, 35.898792, 46.229210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632515, 35.819389, 46.023182>,  <34.432392, 35.771748, 45.899567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632515, 35.819389, 46.023182>,  <34.966053, 35.898792, 46.229210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632515, 35.819389, 46.023182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492876, -0.152379, 0.856652,
		-0.248536, 0.968182, 0.029222,
		-0.833848, -0.198506, -0.515066,
		34.382362, 35.759838, 45.868664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387814, 36.332748, 46.414928>,  <34.966053, 35.898792, 46.229210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387814, 36.332748, 46.414928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.213142, 36.007374, 46.261230>,  <34.108341, 35.812149, 46.169014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.213142, 36.007374, 46.261230>,  <34.387814, 36.332748, 46.414928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213142, 36.007374, 46.261230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548591, -0.097736, 0.830359,
		-0.712995, 0.573390, -0.403562,
		-0.436677, -0.813432, -0.384242,
		34.082138, 35.763344, 46.145958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676659, 36.439079, 46.575191>,  <34.387814, 36.332748, 46.414928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676659, 36.439079, 46.575191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.733715, 36.049156, 46.506603>,  <33.767948, 35.815201, 46.465450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.733715, 36.049156, 46.506603>,  <33.676659, 36.439079, 46.575191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733715, 36.049156, 46.506603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378482, -0.213793, 0.900580,
		-0.914551, -0.063566, -0.399444,
		0.142644, -0.974809, -0.171466,
		33.776508, 35.756714, 46.455162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191681, 36.149078, 46.834381>,  <33.676659, 36.439079, 46.575191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191681, 36.149078, 46.834381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.418488, 35.820045, 46.817162>,  <33.554569, 35.622627, 46.806831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.418488, 35.820045, 46.817162>,  <33.191681, 36.149078, 46.834381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418488, 35.820045, 46.817162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361683, -0.295586, 0.884203,
		-0.740055, -0.485783, -0.465116,
		0.567013, -0.822583, -0.043051,
		33.588593, 35.573269, 46.804245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732430, 35.575012, 46.895821>,  <33.191681, 36.149078, 46.834381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732430, 35.575012, 46.895821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.100136, 35.458004, 47.001183>,  <33.320759, 35.387798, 47.064400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.100136, 35.458004, 47.001183>,  <32.732430, 35.575012, 46.895821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100136, 35.458004, 47.001183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356867, -0.336897, 0.871290,
		-0.166128, -0.894948, -0.414088,
		0.919265, -0.292520, 0.263409,
		33.375916, 35.370247, 47.080204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733994, 34.875248, 46.993080>,  <32.732430, 35.575012, 46.895821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733994, 34.875248, 46.993080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068520, 34.957870, 47.196224>,  <33.269234, 35.007442, 47.318111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068520, 34.957870, 47.196224>,  <32.733994, 34.875248, 46.993080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068520, 34.957870, 47.196224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325492, -0.558347, 0.763088,
		0.441179, -0.803483, -0.399720,
		0.836311, 0.206553, 0.507858,
		33.319412, 35.019836, 47.348583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889565, 34.132801, 47.336586>,  <32.733994, 34.875248, 46.993080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889565, 34.132801, 47.336586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.097759, 34.411629, 47.533844>,  <33.222675, 34.578926, 47.652199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.097759, 34.411629, 47.533844>,  <32.889565, 34.132801, 47.336586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097759, 34.411629, 47.533844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126002, -0.508522, 0.851780,
		0.844524, -0.505475, -0.176846,
		0.520484, 0.697065, 0.493150,
		33.253906, 34.620747, 47.681789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846821, 33.434704, 46.939507>,  <32.889565, 34.132801, 47.336586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846821, 33.434704, 46.939507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.726463, 33.053986, 46.963326>,  <32.654247, 32.825554, 46.977615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.726463, 33.053986, 46.963326>,  <32.846821, 33.434704, 46.939507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726463, 33.053986, 46.963326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092591, -0.032990, -0.995157,
		0.949152, -0.304949, -0.078201,
		-0.300893, -0.951797, 0.059548,
		32.636196, 32.768448, 46.981190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322975, 33.016876, 46.617237>,  <32.846821, 33.434704, 46.939507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322975, 33.016876, 46.617237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.978664, 32.813347, 46.612137>,  <32.772079, 32.691231, 46.609077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.978664, 32.813347, 46.612137>,  <33.322975, 33.016876, 46.617237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978664, 32.813347, 46.612137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038111, 0.089410, -0.995265,
		0.507552, -0.856216, -0.096354,
		-0.860777, -0.508821, -0.012749,
		32.720432, 32.660702, 46.608311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351414, 32.623013, 46.045200>,  <33.322975, 33.016876, 46.617237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351414, 32.623013, 46.045200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.959484, 32.563869, 46.099003>,  <32.724327, 32.528385, 46.131287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.959484, 32.563869, 46.099003>,  <33.351414, 32.623013, 46.045200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959484, 32.563869, 46.099003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106860, -0.181226, -0.977619,
		0.168922, -0.972263, 0.161769,
		-0.979820, -0.147855, 0.134509,
		32.665539, 32.519512, 46.139355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219574, 32.133896, 45.558937>,  <33.351414, 32.623013, 46.045200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219574, 32.133896, 45.558937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.850471, 32.264370, 45.641041>,  <32.629009, 32.342655, 45.690304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.850471, 32.264370, 45.641041>,  <33.219574, 32.133896, 45.558937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850471, 32.264370, 45.641041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269300, -0.164720, -0.948865,
		-0.275697, -0.930843, 0.239838,
		-0.922750, 0.326187, 0.205263,
		32.573647, 32.362225, 45.702621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808464, 31.735407, 45.059811>,  <33.219574, 32.133896, 45.558937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808464, 31.735407, 45.059811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.591404, 32.051575, 45.173489>,  <32.461166, 32.241276, 45.241695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.591404, 32.051575, 45.173489>,  <32.808464, 31.735407, 45.059811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591404, 32.051575, 45.173489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328821, 0.111440, -0.937794,
		-0.772922, -0.602343, 0.199435,
		-0.542649, 0.790421, 0.284197,
		32.428608, 32.288700, 45.258747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136402, 31.691626, 44.706799>,  <32.808464, 31.735407, 45.059811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136402, 31.691626, 44.706799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.154060, 32.073364, 44.824970>,  <32.164658, 32.302406, 44.895874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.154060, 32.073364, 44.824970>,  <32.136402, 31.691626, 44.706799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154060, 32.073364, 44.824970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239566, 0.297201, -0.924273,
		-0.969876, -0.029968, 0.241749,
		0.044150, 0.954345, 0.295428,
		32.167305, 32.359669, 44.913597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508814, 32.043362, 44.506870>,  <32.136402, 31.691626, 44.706799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508814, 32.043362, 44.506870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.807304, 32.308254, 44.533985>,  <31.986399, 32.467190, 44.550255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.807304, 32.308254, 44.533985>,  <31.508814, 32.043362, 44.506870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807304, 32.308254, 44.533985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177617, 0.296202, -0.938465,
		-0.641560, 0.688267, 0.338657,
		0.746226, 0.662233, 0.067784,
		32.031174, 32.506924, 44.554321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.408020, 28.239500, 47.408016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.635700, 28.481192, 47.631058>,  <35.772308, 28.626207, 47.764881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.635700, 28.481192, 47.631058>,  <35.408020, 28.239500, 47.408016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635700, 28.481192, 47.631058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099531, 0.723832, -0.682759,
		-0.816153, 0.333128, 0.472145,
		0.569200, 0.604229, 0.557601,
		35.806461, 28.662460, 47.798340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095325, 28.977068, 47.532242>,  <35.408020, 28.239500, 47.408016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095325, 28.977068, 47.532242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.491253, 29.007391, 47.580414>,  <35.728809, 29.025585, 47.609318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.491253, 29.007391, 47.580414>,  <35.095325, 28.977068, 47.532242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491253, 29.007391, 47.580414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015468, 0.783974, -0.620601,
		-0.141463, 0.616147, 0.774823,
		0.989823, 0.075807, 0.120434,
		35.788200, 29.030132, 47.616543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217812, 29.725582, 47.391808>,  <35.095325, 28.977068, 47.532242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217812, 29.725582, 47.391808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.582809, 29.563484, 47.369423>,  <35.801807, 29.466227, 47.355991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.582809, 29.563484, 47.369423>,  <35.217812, 29.725582, 47.391808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582809, 29.563484, 47.369423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226608, 0.614600, -0.755590,
		0.340591, 0.676790, 0.652651,
		0.912495, -0.405243, -0.055962,
		35.856560, 29.441912, 47.352634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600845, 30.316179, 47.204540>,  <35.217812, 29.725582, 47.391808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600845, 30.316179, 47.204540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.841125, 30.003029, 47.139706>,  <35.985294, 29.815140, 47.100803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.841125, 30.003029, 47.139706>,  <35.600845, 30.316179, 47.204540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841125, 30.003029, 47.139706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442430, 0.494389, -0.748221,
		0.665898, 0.377741, 0.643344,
		0.600696, -0.782874, -0.162089,
		36.021336, 29.768167, 47.091080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281284, 30.595257, 47.118004>,  <35.600845, 30.316179, 47.204540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281284, 30.595257, 47.118004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.284187, 30.234728, 46.944771>,  <36.285931, 30.018410, 46.840832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.284187, 30.234728, 46.944771>,  <36.281284, 30.595257, 47.118004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284187, 30.234728, 46.944771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322488, 0.412068, -0.852175,
		0.946546, -0.133478, 0.293657,
		0.007260, -0.901323, -0.433086,
		36.286366, 29.964331, 46.814846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780006, 30.632452, 46.507492>,  <36.281284, 30.595257, 47.118004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780006, 30.632452, 46.507492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.561646, 30.300507, 46.461334>,  <36.430630, 30.101339, 46.433640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.561646, 30.300507, 46.461334>,  <36.780006, 30.632452, 46.507492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561646, 30.300507, 46.461334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112984, 0.063557, -0.991562,
		0.830195, -0.554336, 0.059065,
		-0.545904, -0.829863, -0.115395,
		36.397873, 30.051548, 46.426716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265774, 30.213953, 46.122616>,  <36.780006, 30.632452, 46.507492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265774, 30.213953, 46.122616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.880802, 30.114944, 46.077961>,  <36.649818, 30.055540, 46.051170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.880802, 30.114944, 46.077961>,  <37.265774, 30.213953, 46.122616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880802, 30.114944, 46.077961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103096, 0.047226, -0.993550,
		0.251197, -0.967731, -0.019933,
		-0.962430, -0.247522, -0.111633,
		36.592072, 30.040688, 46.044472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300037, 29.644981, 45.613117>,  <37.265774, 30.213953, 46.122616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300037, 29.644981, 45.613117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.923195, 29.779102, 45.613831>,  <36.697090, 29.859575, 45.614258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.923195, 29.779102, 45.613831>,  <37.300037, 29.644981, 45.613117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923195, 29.779102, 45.613831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035960, 0.106317, -0.993682,
		-0.333373, -0.936093, -0.112220,
		-0.942109, 0.335302, 0.001781,
		36.640564, 29.879692, 45.614365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009315, 29.214157, 45.192829>,  <37.300037, 29.644981, 45.613117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009315, 29.214157, 45.192829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.753399, 29.521511, 45.199181>,  <36.599850, 29.705923, 45.202991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.753399, 29.521511, 45.199181>,  <37.009315, 29.214157, 45.192829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753399, 29.521511, 45.199181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040787, -0.013318, -0.999079,
		-0.767464, -0.639851, 0.039861,
		-0.639793, 0.768383, 0.015876,
		36.561462, 29.752026, 45.203945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426262, 29.068213, 44.754520>,  <37.009315, 29.214157, 45.192829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426262, 29.068213, 44.754520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.441887, 29.466942, 44.782284>,  <36.451263, 29.706179, 44.798943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.441887, 29.466942, 44.782284>,  <36.426262, 29.068213, 44.754520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441887, 29.466942, 44.782284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055370, 0.071512, -0.995902,
		-0.997701, 0.035060, 0.057988,
		0.039063, 0.996823, 0.069406,
		36.453606, 29.765989, 44.803104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806011, 29.452139, 44.400757>,  <36.426262, 29.068213, 44.754520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806011, 29.452139, 44.400757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.088219, 29.734612, 44.424595>,  <36.257542, 29.904095, 44.438896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.088219, 29.734612, 44.424595>,  <35.806011, 29.452139, 44.400757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088219, 29.734612, 44.424595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092551, -0.008438, -0.995672,
		-0.702624, 0.707980, -0.071311,
		0.705517, 0.706183, 0.059596,
		36.299873, 29.946466, 44.442474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655540, 29.862843, 43.839954>,  <35.806011, 29.452139, 44.400757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655540, 29.862843, 43.839954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.026119, 29.994640, 43.912750>,  <36.248466, 30.073719, 43.956429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.026119, 29.994640, 43.912750>,  <35.655540, 29.862843, 43.839954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026119, 29.994640, 43.912750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169132, 0.067550, -0.983276,
		-0.336278, 0.941738, 0.006853,
		0.926451, 0.329495, 0.181994,
		36.304054, 30.093489, 43.967350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394577, 30.589895, 43.726543>,  <35.655540, 29.862843, 43.839954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394577, 30.589895, 43.726543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.132591, 30.891111, 43.701397>,  <34.975399, 31.071840, 43.686310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.132591, 30.891111, 43.701397>,  <35.394577, 30.589895, 43.726543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132591, 30.891111, 43.701397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415201, -0.289116, 0.862566,
		0.631369, 0.591055, 0.502024,
		-0.654967, 0.753038, -0.062867,
		34.936100, 31.117023, 43.682537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392834, 30.975481, 44.346977>,  <35.394577, 30.589895, 43.726543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392834, 30.975481, 44.346977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.028053, 31.053032, 44.202339>,  <34.809185, 31.099562, 44.115555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.028053, 31.053032, 44.202339>,  <35.392834, 30.975481, 44.346977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028053, 31.053032, 44.202339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408161, -0.338928, 0.847663,
		0.041786, 0.920619, 0.388219,
		-0.911953, 0.193876, -0.361599,
		34.754467, 31.111195, 44.093861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019398, 31.391981, 44.858467>,  <35.392834, 30.975481, 44.346977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019398, 31.391981, 44.858467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.744003, 31.209164, 44.633221>,  <34.578766, 31.099474, 44.498074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.744003, 31.209164, 44.633221>,  <35.019398, 31.391981, 44.858467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744003, 31.209164, 44.633221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494953, -0.271413, 0.825443,
		-0.530098, 0.847023, -0.039350,
		-0.688489, -0.457042, -0.563112,
		34.537457, 31.072050, 44.464287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530586, 31.579632, 45.276237>,  <35.019398, 31.391981, 44.858467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530586, 31.579632, 45.276237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.371143, 31.314655, 45.022533>,  <34.275478, 31.155668, 44.870312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.371143, 31.314655, 45.022533>,  <34.530586, 31.579632, 45.276237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371143, 31.314655, 45.022533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468618, -0.447363, 0.761750,
		-0.788359, 0.600863, -0.132111,
		-0.398606, -0.662443, -0.634258,
		34.251560, 31.115923, 44.832256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758961, 31.500542, 45.453342>,  <34.530586, 31.579632, 45.276237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758961, 31.500542, 45.453342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.890762, 31.183867, 45.247562>,  <33.969841, 30.993862, 45.124096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.890762, 31.183867, 45.247562>,  <33.758961, 31.500542, 45.453342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890762, 31.183867, 45.247562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505106, -0.608159, 0.612381,
		-0.797683, 0.058074, -0.600274,
		0.329499, -0.791688, -0.514452,
		33.989613, 30.946360, 45.093227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212154, 31.146326, 45.426193>,  <33.758961, 31.500542, 45.453342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212154, 31.146326, 45.426193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.470280, 30.858545, 45.323460>,  <33.625156, 30.685877, 45.261822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.470280, 30.858545, 45.323460>,  <33.212154, 31.146326, 45.426193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470280, 30.858545, 45.323460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460709, -0.634706, 0.620399,
		-0.609355, -0.282032, -0.741043,
		0.645317, -0.719448, -0.256827,
		33.663876, 30.642710, 45.246410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725574, 30.600080, 45.260838>,  <33.212154, 31.146326, 45.426193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725574, 30.600080, 45.260838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.088596, 30.460186, 45.353817>,  <33.306408, 30.376249, 45.409603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.088596, 30.460186, 45.353817>,  <32.725574, 30.600080, 45.260838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088596, 30.460186, 45.353817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403409, -0.572303, 0.713954,
		-0.116664, -0.741723, -0.660482,
		0.907552, -0.349737, 0.232450,
		33.360863, 30.355265, 45.423553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552944, 29.950415, 45.340172>,  <32.725574, 30.600080, 45.260838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552944, 29.950415, 45.340172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.923355, 29.973438, 45.489388>,  <33.145603, 29.987251, 45.578918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.923355, 29.973438, 45.489388>,  <32.552944, 29.950415, 45.340172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923355, 29.973438, 45.489388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246985, -0.654951, 0.714169,
		0.285427, -0.753476, -0.592288,
		0.926029, 0.057557, 0.373038,
		33.201164, 29.990705, 45.601299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813179, 29.191563, 45.548359>,  <32.552944, 29.950415, 45.340172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813179, 29.191563, 45.548359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.040424, 29.444464, 45.759071>,  <33.176773, 29.596205, 45.885498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.040424, 29.444464, 45.759071>,  <32.813179, 29.191563, 45.548359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040424, 29.444464, 45.759071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189600, -0.522337, 0.831394,
		0.800809, -0.572207, -0.176874,
		0.568117, 0.632253, 0.526782,
		33.210861, 29.634140, 45.917107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230492, 28.825115, 45.972172>,  <32.813179, 29.191563, 45.548359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230492, 28.825115, 45.972172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.229935, 29.187561, 46.141384>,  <33.229603, 29.405027, 46.242912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.229935, 29.187561, 46.141384>,  <33.230492, 28.825115, 45.972172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229935, 29.187561, 46.141384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096843, -0.421168, 0.901797,
		0.995299, -0.039716, 0.088336,
		-0.001389, 0.906113, 0.423034,
		33.229519, 29.459394, 46.268295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784084, 28.798521, 46.529152>,  <33.230492, 28.825115, 45.972172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784084, 28.798521, 46.529152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.589581, 29.135937, 46.620365>,  <33.472878, 29.338387, 46.675091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.589581, 29.135937, 46.620365>,  <33.784084, 28.798521, 46.529152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589581, 29.135937, 46.620365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048232, -0.234650, 0.970883,
		0.872485, 0.483095, 0.073414,
		-0.486255, 0.843539, 0.228029,
		33.443703, 29.388998, 46.688774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196449, 29.219633, 47.050179>,  <33.784084, 28.798521, 46.529152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196449, 29.219633, 47.050179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.807789, 29.306524, 47.087498>,  <33.574593, 29.358660, 47.109890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.807789, 29.306524, 47.087498>,  <34.196449, 29.219633, 47.050179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807789, 29.306524, 47.087498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099509, 0.017823, 0.994877,
		0.214453, 0.975958, -0.038934,
		-0.971652, 0.217229, 0.093294,
		33.516293, 29.371693, 47.115486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122517, 29.823999, 47.526985>,  <34.196449, 29.219633, 47.050179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122517, 29.823999, 47.526985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.766201, 29.642241, 47.528271>,  <33.552410, 29.533186, 47.529041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.766201, 29.642241, 47.528271>,  <34.122517, 29.823999, 47.526985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766201, 29.642241, 47.528271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008739, -0.010063, 0.999911,
		-0.454324, 0.890743, 0.012935,
		-0.890794, -0.454397, 0.003213,
		33.498962, 29.505922, 47.529236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598625, 30.128210, 47.970314>,  <34.122517, 29.823999, 47.526985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598625, 30.128210, 47.970314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.566730, 29.729883, 47.952469>,  <33.547592, 29.490887, 47.941761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.566730, 29.729883, 47.952469>,  <33.598625, 30.128210, 47.970314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566730, 29.729883, 47.952469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078627, -0.050898, 0.995604,
		-0.993710, 0.075879, 0.082357,
		-0.079737, -0.995817, -0.044612,
		33.542809, 29.431137, 47.939087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460285, 30.447748, 48.614651>,  <33.598625, 30.128210, 47.970314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460285, 30.447748, 48.614651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.250404, 30.694893, 48.848892>,  <33.124477, 30.843180, 48.989437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.250404, 30.694893, 48.848892>,  <33.460285, 30.447748, 48.614651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250404, 30.694893, 48.848892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244468, 0.549567, -0.798882,
		-0.815429, -0.562335, -0.137310,
		-0.524700, 0.617864, 0.585606,
		33.092995, 30.880253, 49.024574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638103, 30.617384, 48.301155>,  <33.460285, 30.447748, 48.614651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638103, 30.617384, 48.301155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.768467, 30.897943, 48.554714>,  <32.846684, 31.066278, 48.706848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.768467, 30.897943, 48.554714>,  <32.638103, 30.617384, 48.301155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768467, 30.897943, 48.554714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308494, 0.712704, -0.629988,
		-0.893654, 0.009763, 0.448651,
		0.325906, 0.701397, 0.633898,
		32.866238, 31.108362, 48.744884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120010, 31.014574, 48.344219>,  <32.638103, 30.617384, 48.301155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120010, 31.014574, 48.344219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.411545, 31.247532, 48.488228>,  <32.586464, 31.387306, 48.574635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.411545, 31.247532, 48.488228>,  <32.120010, 31.014574, 48.344219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411545, 31.247532, 48.488228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260898, 0.722378, -0.640392,
		-0.633035, 0.372809, 0.678439,
		0.728834, 0.582394, 0.360026,
		32.630196, 31.422251, 48.596237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870371, 31.648817, 48.490623>,  <32.120010, 31.014574, 48.344219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870371, 31.648817, 48.490623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.261585, 31.727552, 48.463200>,  <32.496315, 31.774794, 48.446743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.261585, 31.727552, 48.463200>,  <31.870371, 31.648817, 48.490623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261585, 31.727552, 48.463200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189714, 0.704385, -0.683995,
		-0.086342, 0.681979, 0.726257,
		0.978036, 0.196839, -0.068563,
		32.554996, 31.786604, 48.442631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989767, 32.383389, 48.626274>,  <31.870371, 31.648817, 48.490623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989767, 32.383389, 48.626274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.299145, 32.235573, 48.420277>,  <32.484772, 32.146885, 48.296677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.299145, 32.235573, 48.420277>,  <31.989767, 32.383389, 48.626274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299145, 32.235573, 48.420277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144155, 0.688637, -0.710632,
		0.617253, 0.623874, 0.479352,
		0.773445, -0.369539, -0.514998,
		32.531178, 32.124710, 48.265778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252052, 33.000156, 48.287273>,  <31.989767, 32.383389, 48.626274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252052, 33.000156, 48.287273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.425755, 32.707497, 48.077087>,  <32.529976, 32.531898, 47.950977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.425755, 32.707497, 48.077087>,  <32.252052, 33.000156, 48.287273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425755, 32.707497, 48.077087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057719, 0.604736, -0.794332,
		0.898940, 0.314611, 0.304838,
		0.434252, -0.731652, -0.525462,
		32.556030, 32.488003, 47.919449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515495, 33.423550, 47.792068>,  <32.252052, 33.000156, 48.287273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515495, 33.423550, 47.792068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.571415, 33.059868, 47.635201>,  <32.604965, 32.841660, 47.541080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.571415, 33.059868, 47.635201>,  <32.515495, 33.423550, 47.792068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571415, 33.059868, 47.635201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115549, 0.378373, -0.918413,
		0.983415, 0.173704, -0.052164,
		0.139795, -0.909209, -0.392169,
		32.613354, 32.787106, 47.517551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266788, 33.705002, 47.902969>,  <32.515495, 33.423550, 47.792068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266788, 33.705002, 47.902969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.295918, 34.087574, 48.016060>,  <33.313396, 34.317116, 48.083916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.295918, 34.087574, 48.016060>,  <33.266788, 33.705002, 47.902969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295918, 34.087574, 48.016060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091836, -0.275846, 0.956805,
		0.993108, -0.095643, 0.067746,
		0.072824, 0.956432, 0.282729,
		33.317764, 34.374504, 48.100880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701218, 33.663933, 48.342934>,  <33.266788, 33.705002, 47.902969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701218, 33.663933, 48.342934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.518940, 34.007648, 48.435852>,  <33.409573, 34.213879, 48.491604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.518940, 34.007648, 48.435852>,  <33.701218, 33.663933, 48.342934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518940, 34.007648, 48.435852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069006, -0.294282, 0.953224,
		0.887458, 0.418348, 0.193398,
		-0.455693, 0.859292, 0.232294,
		33.382233, 34.265434, 48.505539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044163, 33.927288, 48.942421>,  <33.701218, 33.663933, 48.342934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044163, 33.927288, 48.942421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.679268, 34.090317, 48.958939>,  <33.460331, 34.188133, 48.968849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.679268, 34.090317, 48.958939>,  <34.044163, 33.927288, 48.942421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679268, 34.090317, 48.958939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094035, -0.306441, 0.947233,
		0.398717, 0.860221, 0.317874,
		-0.912240, 0.407570, 0.041292,
		33.405598, 34.212589, 48.971325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104069, 34.373943, 49.537666>,  <34.044163, 33.927288, 48.942421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104069, 34.373943, 49.537666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.716743, 34.302723, 49.467621>,  <33.484348, 34.259991, 49.425594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.716743, 34.302723, 49.467621>,  <34.104069, 34.373943, 49.537666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716743, 34.302723, 49.467621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119933, -0.283510, 0.951440,
		-0.219051, 0.942295, 0.253173,
		-0.968314, -0.178050, -0.175115,
		33.426250, 34.249310, 49.415085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785286, 34.657097, 50.087448>,  <34.104069, 34.373943, 49.537666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785286, 34.657097, 50.087448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.527992, 34.394581, 49.929703>,  <33.373615, 34.237072, 49.835056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.527992, 34.394581, 49.929703>,  <33.785286, 34.657097, 50.087448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527992, 34.394581, 49.929703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152985, -0.394514, 0.906065,
		-0.750228, 0.643147, 0.153363,
		-0.643237, -0.656293, -0.394367,
		33.335022, 34.197693, 49.811394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399708, 34.610291, 50.611443>,  <33.785286, 34.657097, 50.087448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399708, 34.610291, 50.611443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.276852, 34.291641, 50.403187>,  <33.203136, 34.100452, 50.278233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.276852, 34.291641, 50.403187>,  <33.399708, 34.610291, 50.611443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276852, 34.291641, 50.403187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064679, -0.528341, 0.846565,
		-0.949464, 0.293688, 0.110750,
		-0.307140, -0.796620, -0.520637,
		33.184711, 34.052654, 50.246994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914223, 34.359329, 50.978634>,  <33.399708, 34.610291, 50.611443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914223, 34.359329, 50.978634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.011459, 34.048443, 50.746479>,  <33.069801, 33.861912, 50.607185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.011459, 34.048443, 50.746479>,  <32.914223, 34.359329, 50.978634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011459, 34.048443, 50.746479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006020, -0.599532, 0.800328,
		-0.969985, -0.191056, -0.150418,
		0.243088, -0.777212, -0.580387,
		33.084385, 33.815281, 50.572365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485104, 33.900059, 51.137062>,  <32.914223, 34.359329, 50.978634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485104, 33.900059, 51.137062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.808872, 33.722237, 50.983597>,  <33.003136, 33.615543, 50.891518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.808872, 33.722237, 50.983597>,  <32.485104, 33.900059, 51.137062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808872, 33.722237, 50.983597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104079, -0.751617, 0.651337,
		-0.577925, -0.487278, -0.654647,
		0.809426, -0.444559, -0.383663,
		33.051701, 33.588867, 50.868496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323242, 33.161575, 51.105118>,  <32.485104, 33.900059, 51.137062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323242, 33.161575, 51.105118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.722862, 33.176182, 51.114674>,  <32.962635, 33.184948, 51.120407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.722862, 33.176182, 51.114674>,  <32.323242, 33.161575, 51.105118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722862, 33.176182, 51.114674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006215, -0.660966, 0.750390,
		0.043195, -0.749527, -0.660563,
		0.999047, 0.036519, 0.023892,
		33.022575, 33.187138, 51.121841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.744492, 38.249626, 36.363342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992039, 38.177723, 36.669201>,  <37.140568, 38.134583, 36.852718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992039, 38.177723, 36.669201>,  <36.744492, 38.249626, 36.363342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992039, 38.177723, 36.669201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552693, -0.791365, 0.261288,
		0.558149, -0.584320, -0.589101,
		0.618870, -0.179754, 0.764649,
		37.177700, 38.123798, 36.898594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812584, 37.561127, 36.340157>,  <36.744492, 38.249626, 36.363342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812584, 37.561127, 36.340157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910168, 37.685539, 36.707581>,  <36.968716, 37.760185, 36.928036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910168, 37.685539, 36.707581>,  <36.812584, 37.561127, 36.340157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910168, 37.685539, 36.707581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592059, -0.702407, 0.395082,
		0.768083, -0.640222, 0.012791,
		0.243956, 0.311029, 0.918557,
		36.983353, 37.778847, 36.983147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905613, 36.982594, 36.696381>,  <36.812584, 37.561127, 36.340157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905613, 36.982594, 36.696381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854729, 37.236641, 37.001129>,  <36.824200, 37.389069, 37.183979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854729, 37.236641, 37.001129>,  <36.905613, 36.982594, 36.696381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854729, 37.236641, 37.001129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570335, -0.675265, 0.467691,
		0.811502, -0.375026, 0.448130,
		-0.127210, 0.635117, 0.761869,
		36.816566, 37.427177, 37.229691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891060, 36.538853, 37.286835>,  <36.905613, 36.982594, 36.696381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891060, 36.538853, 37.286835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721359, 36.869785, 37.434090>,  <36.619537, 37.068344, 37.522442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721359, 36.869785, 37.434090>,  <36.891060, 36.538853, 37.286835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721359, 36.869785, 37.434090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558809, -0.559092, 0.612493,
		0.712559, 0.054135, 0.699520,
		-0.424254, 0.827336, 0.368135,
		36.594082, 37.117985, 37.544529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721985, 36.369411, 37.910603>,  <36.891060, 36.538853, 37.286835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721985, 36.369411, 37.910603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502804, 36.699596, 37.856403>,  <36.371296, 36.897709, 37.823883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502804, 36.699596, 37.856403>,  <36.721985, 36.369411, 37.910603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502804, 36.699596, 37.856403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685114, -0.349915, 0.638889,
		0.479967, 0.442911, 0.757272,
		-0.547951, 0.825463, -0.135497,
		36.338417, 36.947235, 37.815754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550915, 36.676216, 38.622627>,  <36.721985, 36.369411, 37.910603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550915, 36.676216, 38.622627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273129, 36.827122, 38.377552>,  <36.106457, 36.917667, 38.230507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273129, 36.827122, 38.377552>,  <36.550915, 36.676216, 38.622627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273129, 36.827122, 38.377552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702916, -0.173811, 0.689710,
		0.153713, 0.909648, 0.385893,
		-0.694465, 0.377268, -0.612688,
		36.064789, 36.940304, 38.193745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182442, 37.315742, 38.943043>,  <36.550915, 36.676216, 38.622627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182442, 37.315742, 38.943043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948154, 37.158855, 38.659325>,  <35.807583, 37.064724, 38.489094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948154, 37.158855, 38.659325>,  <36.182442, 37.315742, 38.943043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948154, 37.158855, 38.659325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725340, -0.136865, 0.674648,
		-0.361685, 0.909634, -0.204325,
		-0.585719, -0.392215, -0.709296,
		35.772438, 37.041191, 38.446537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534840, 37.631641, 39.070850>,  <36.182442, 37.315742, 38.943043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534840, 37.631641, 39.070850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451481, 37.298698, 38.865425>,  <35.401466, 37.098930, 38.742168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451481, 37.298698, 38.865425>,  <35.534840, 37.631641, 39.070850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451481, 37.298698, 38.865425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780542, -0.174863, 0.600147,
		-0.589341, 0.525928, -0.613251,
		-0.208399, -0.832359, -0.513563,
		35.388962, 37.048992, 38.711357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854507, 37.648956, 39.168434>,  <35.534840, 37.631641, 39.070850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854507, 37.648956, 39.168434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942307, 37.284843, 39.028034>,  <34.994984, 37.066376, 38.943794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942307, 37.284843, 39.028034>,  <34.854507, 37.648956, 39.168434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942307, 37.284843, 39.028034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694651, -0.398441, 0.598920,
		-0.685042, 0.112364, -0.719786,
		0.219495, -0.910286, -0.351002,
		35.008156, 37.011757, 38.922733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281693, 37.268780, 38.864517>,  <34.854507, 37.648956, 39.168434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281693, 37.268780, 38.864517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527424, 36.996014, 39.023308>,  <34.674862, 36.832352, 39.118580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527424, 36.996014, 39.023308>,  <34.281693, 37.268780, 38.864517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527424, 36.996014, 39.023308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746470, -0.339233, 0.572454,
		-0.255701, -0.648002, -0.717433,
		0.614328, -0.681919, 0.396972,
		34.711723, 36.791439, 39.142399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775471, 36.873226, 39.152287>,  <34.281693, 37.268780, 38.864517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775471, 36.873226, 39.152287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123203, 36.720798, 39.278172>,  <34.331844, 36.629341, 39.353703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123203, 36.720798, 39.278172>,  <33.775471, 36.873226, 39.152287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123203, 36.720798, 39.278172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483097, -0.520856, 0.703794,
		-0.104276, -0.763868, -0.636892,
		0.869335, -0.381069, 0.314710,
		34.384003, 36.606476, 39.372585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692528, 36.049381, 39.166264>,  <33.775471, 36.873226, 39.152287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692528, 36.049381, 39.166264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985130, 36.163162, 39.414127>,  <34.160694, 36.231430, 39.562847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985130, 36.163162, 39.414127>,  <33.692528, 36.049381, 39.166264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985130, 36.163162, 39.414127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479376, -0.431713, 0.764083,
		0.484863, -0.855984, -0.179441,
		0.731510, 0.284456, 0.619659,
		34.204582, 36.248501, 39.600025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398731, 35.456089, 38.895142>,  <33.692528, 36.049381, 39.166264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398731, 35.456089, 38.895142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248795, 35.085487, 38.908298>,  <33.158833, 34.863125, 38.916191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248795, 35.085487, 38.908298>,  <33.398731, 35.456089, 38.895142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248795, 35.085487, 38.908298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066357, -0.008572, -0.997759,
		0.924709, -0.376189, -0.058267,
		-0.374846, -0.926504, 0.032889,
		33.136341, 34.807537, 38.918167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847401, 34.954361, 38.490005>,  <33.398731, 35.456089, 38.895142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847401, 34.954361, 38.490005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479221, 34.799652, 38.512581>,  <33.258316, 34.706825, 38.526127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479221, 34.799652, 38.512581>,  <33.847401, 34.954361, 38.490005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479221, 34.799652, 38.512581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005882, -0.158081, -0.987409,
		0.390825, -0.908525, 0.147779,
		-0.920446, -0.386773, 0.056438,
		33.203087, 34.683620, 38.529510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890491, 34.359035, 38.189037>,  <33.847401, 34.954361, 38.490005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890491, 34.359035, 38.189037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510487, 34.477001, 38.148045>,  <33.282482, 34.547779, 38.123447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510487, 34.477001, 38.148045>,  <33.890491, 34.359035, 38.189037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510487, 34.477001, 38.148045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051528, -0.175637, -0.983106,
		-0.307931, -0.939243, 0.151661,
		-0.950013, 0.294914, -0.102481,
		33.225483, 34.565475, 38.117302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706314, 33.876221, 37.777145>,  <33.890491, 34.359035, 38.189037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706314, 33.876221, 37.777145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419144, 34.154541, 37.768726>,  <33.246841, 34.321533, 37.763676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419144, 34.154541, 37.768726>,  <33.706314, 33.876221, 37.777145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419144, 34.154541, 37.768726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067810, -0.099990, -0.992675,
		-0.692812, -0.711237, 0.118967,
		-0.717923, 0.695805, -0.021046,
		33.203766, 34.363281, 37.762413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157722, 33.481758, 37.458164>,  <33.706314, 33.876221, 37.777145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157722, 33.481758, 37.458164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102669, 33.876358, 37.422646>,  <33.069637, 34.113117, 37.401337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102669, 33.876358, 37.422646>,  <33.157722, 33.481758, 37.458164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102669, 33.876358, 37.422646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314637, -0.128548, -0.940467,
		-0.939181, -0.101501, 0.328080,
		-0.137632, 0.986495, -0.088794,
		33.061378, 34.172306, 37.396008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549145, 33.561832, 37.083160>,  <33.157722, 33.481758, 37.458164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549145, 33.561832, 37.083160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724419, 33.919189, 37.043495>,  <32.829582, 34.133606, 37.019695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724419, 33.919189, 37.043495>,  <32.549145, 33.561832, 37.083160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724419, 33.919189, 37.043495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379002, 0.083592, -0.921613,
		-0.815075, 0.441425, 0.375228,
		0.438189, 0.893396, -0.099167,
		32.855877, 34.187210, 37.013744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096073, 34.039364, 36.827110>,  <32.549145, 33.561832, 37.083160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096073, 34.039364, 36.827110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446865, 34.193806, 36.712681>,  <32.657341, 34.286472, 36.644024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446865, 34.193806, 36.712681>,  <32.096073, 34.039364, 36.827110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446865, 34.193806, 36.712681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364122, 0.145457, -0.919923,
		-0.313575, 0.910915, 0.268151,
		0.876976, 0.386104, -0.286072,
		32.709957, 34.309635, 36.626858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957272, 34.809742, 36.484741>,  <32.096073, 34.039364, 36.827110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957272, 34.809742, 36.484741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320812, 34.679554, 36.380386>,  <32.538937, 34.601440, 36.317772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320812, 34.679554, 36.380386>,  <31.957272, 34.809742, 36.484741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320812, 34.679554, 36.380386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270308, 0.016811, -0.962627,
		0.317690, 0.945404, -0.072698,
		0.908849, -0.325468, -0.260891,
		32.593468, 34.581913, 36.302120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111610, 35.209229, 35.951550>,  <31.957272, 34.809742, 36.484741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111610, 35.209229, 35.951550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339230, 34.882393, 35.914543>,  <32.475800, 34.686291, 35.892342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339230, 34.882393, 35.914543>,  <32.111610, 35.209229, 35.951550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339230, 34.882393, 35.914543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322582, -0.118330, -0.939116,
		0.756390, 0.564244, -0.330912,
		0.569047, -0.817084, -0.092511,
		32.509945, 34.637268, 35.886791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425594, 35.357937, 35.404724>,  <32.111610, 35.209229, 35.951550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425594, 35.357937, 35.404724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475651, 34.963211, 35.445770>,  <32.505684, 34.726376, 35.470398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475651, 34.963211, 35.445770>,  <32.425594, 35.357937, 35.404724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475651, 34.963211, 35.445770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366433, -0.142089, -0.919531,
		0.921991, 0.077467, -0.379384,
		0.125140, -0.986818, 0.102618,
		32.513191, 34.667164, 35.476555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827991, 35.107868, 34.726627>,  <32.425594, 35.357937, 35.404724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827991, 35.107868, 34.726627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627296, 34.818420, 34.916210>,  <32.506878, 34.644753, 35.029961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627296, 34.818420, 34.916210>,  <32.827991, 35.107868, 34.726627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627296, 34.818420, 34.916210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396217, -0.294801, -0.869543,
		0.768939, -0.624074, -0.138796,
		-0.501741, -0.723619, 0.473953,
		32.476772, 34.601334, 35.058395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816994, 34.513744, 34.228340>,  <32.827991, 35.107868, 34.726627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816994, 34.513744, 34.228340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533894, 34.399475, 34.486790>,  <32.364033, 34.330914, 34.641861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533894, 34.399475, 34.486790>,  <32.816994, 34.513744, 34.228340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533894, 34.399475, 34.486790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581482, -0.283849, -0.762436,
		0.401212, -0.915325, 0.034778,
		-0.707748, -0.285676, 0.646129,
		32.321568, 34.313774, 34.680630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862331, 33.925022, 34.738331>,  <32.816994, 34.513744, 34.228340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862331, 33.925022, 34.738331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525784, 33.709171, 34.750294>,  <32.323853, 33.579662, 34.757473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525784, 33.709171, 34.750294>,  <32.862331, 33.925022, 34.738331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525784, 33.709171, 34.750294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285514, 0.490785, 0.823172,
		-0.458884, 0.684056, -0.567004,
		-0.841373, -0.539628, 0.029906,
		32.273373, 33.547283, 34.759266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451530, 34.275894, 35.035076>,  <32.862331, 33.925022, 34.738331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451530, 34.275894, 35.035076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787453, 34.451794, 34.907734>,  <33.989006, 34.557335, 34.831329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787453, 34.451794, 34.907734>,  <33.451530, 34.275894, 35.035076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787453, 34.451794, 34.907734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542703, -0.695478, 0.470940,
		-0.014313, -0.568269, -0.822718,
		0.839803, 0.439751, -0.318355,
		34.039394, 34.583717, 34.812229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854427, 33.742485, 34.840176>,  <33.451530, 34.275894, 35.035076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854427, 33.742485, 34.840176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124641, 34.032108, 34.895874>,  <34.286770, 34.205883, 34.929291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124641, 34.032108, 34.895874>,  <33.854427, 33.742485, 34.840176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124641, 34.032108, 34.895874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610651, -0.655245, 0.444701,
		0.413230, -0.215381, -0.884789,
		0.675534, 0.724061, 0.139244,
		34.327301, 34.249329, 34.937649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484154, 33.600544, 34.462639>,  <33.854427, 33.742485, 34.840176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484154, 33.600544, 34.462639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585629, 33.844555, 34.762909>,  <34.646511, 33.990963, 34.943069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585629, 33.844555, 34.762909>,  <34.484154, 33.600544, 34.462639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585629, 33.844555, 34.762909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767423, -0.599343, 0.227707,
		0.588818, 0.518319, -0.620192,
		0.253683, 0.610027, 0.750674,
		34.661732, 34.027565, 34.988110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668064, 34.283405, 34.237831>,  <34.484154, 33.600544, 34.462639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668064, 34.283405, 34.237831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921135, 34.220493, 33.934521>,  <35.072975, 34.182747, 33.752533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921135, 34.220493, 33.934521>,  <34.668064, 34.283405, 34.237831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921135, 34.220493, 33.934521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773928, -0.093562, -0.626324,
		0.027560, 0.983112, -0.180915,
		0.632674, -0.157277, -0.758280,
		35.110935, 34.173309, 33.707035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424950, 33.965683, 34.273762>,  <34.668064, 34.283405, 34.237831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424950, 33.965683, 34.273762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823990, 33.938385, 34.278553>,  <36.063412, 33.922009, 34.281425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823990, 33.938385, 34.278553>,  <35.424950, 33.965683, 34.273762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823990, 33.938385, 34.278553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031476, -0.292397, 0.955779,
		-0.061721, -0.953859, -0.293842,
		0.997597, -0.068241, 0.011977,
		36.123268, 33.917912, 34.282146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564602, 33.381332, 34.475609>,  <35.424950, 33.965683, 34.273762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564602, 33.381332, 34.475609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897518, 33.564453, 34.600643>,  <36.097267, 33.674324, 34.675663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897518, 33.564453, 34.600643>,  <35.564602, 33.381332, 34.475609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897518, 33.564453, 34.600643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041928, -0.510284, 0.858983,
		0.552748, -0.728032, -0.405511,
		0.832293, 0.457799, 0.312583,
		36.147205, 33.701794, 34.694420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055950, 32.814571, 34.700977>,  <35.564602, 33.381332, 34.475609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055950, 32.814571, 34.700977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174751, 33.154743, 34.874668>,  <36.246033, 33.358849, 34.978882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174751, 33.154743, 34.874668>,  <36.055950, 32.814571, 34.700977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174751, 33.154743, 34.874668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069142, -0.472710, 0.878501,
		0.952371, -0.230891, -0.199195,
		0.296999, 0.850432, 0.434231,
		36.263851, 33.409874, 35.004936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694736, 32.709515, 35.055336>,  <36.055950, 32.814571, 34.700977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694736, 32.709515, 35.055336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581760, 33.050377, 35.231541>,  <36.513973, 33.254894, 35.337265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581760, 33.050377, 35.231541>,  <36.694736, 32.709515, 35.055336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581760, 33.050377, 35.231541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249882, -0.377999, 0.891446,
		0.926167, 0.361858, -0.106177,
		-0.282442, 0.852159, 0.440512,
		36.497028, 33.306026, 35.363693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117424, 32.777699, 35.596153>,  <36.694736, 32.709515, 35.055336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117424, 32.777699, 35.596153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840813, 33.052814, 35.684460>,  <36.674847, 33.217884, 35.737442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840813, 33.052814, 35.684460>,  <37.117424, 32.777699, 35.596153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840813, 33.052814, 35.684460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063339, -0.246706, 0.967018,
		0.719571, 0.682700, 0.127039,
		-0.691524, 0.687792, 0.220764,
		36.633354, 33.259151, 35.750690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327507, 33.253212, 36.178040>,  <37.117424, 32.777699, 35.596153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327507, 33.253212, 36.178040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928638, 33.280613, 36.165642>,  <36.689320, 33.297054, 36.158203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928638, 33.280613, 36.165642>,  <37.327507, 33.253212, 36.178040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928638, 33.280613, 36.165642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037331, -0.093214, 0.994946,
		0.065265, 0.993287, 0.095507,
		-0.997169, 0.068500, -0.030997,
		36.629486, 33.301163, 36.156342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167721, 33.746246, 36.702679>,  <37.327507, 33.253212, 36.178040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167721, 33.746246, 36.702679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812809, 33.584980, 36.613064>,  <36.599861, 33.488220, 36.559296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812809, 33.584980, 36.613064>,  <37.167721, 33.746246, 36.702679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812809, 33.584980, 36.613064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291424, 0.113558, 0.949830,
		-0.357495, 0.908056, -0.218249,
		-0.887282, -0.403162, -0.224033,
		36.546623, 33.464031, 36.545853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609646, 34.085316, 37.095947>,  <37.167721, 33.746246, 36.702679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609646, 34.085316, 37.095947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436863, 33.729740, 37.035015>,  <36.333195, 33.516396, 36.998455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436863, 33.729740, 37.035015>,  <36.609646, 34.085316, 37.095947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436863, 33.729740, 37.035015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141371, -0.100081, 0.984885,
		-0.890745, 0.446964, -0.082439,
		-0.431957, -0.888936, -0.152334,
		36.307278, 33.463058, 36.989315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074707, 34.046375, 37.593864>,  <36.609646, 34.085316, 37.095947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074707, 34.046375, 37.593864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107811, 33.674541, 37.450191>,  <36.127674, 33.451439, 37.363987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107811, 33.674541, 37.450191>,  <36.074707, 34.046375, 37.593864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107811, 33.674541, 37.450191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061223, -0.364485, 0.929195,
		-0.994687, -0.054914, -0.087079,
		0.082764, -0.929589, -0.359186,
		36.132641, 33.395664, 37.342434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457062, 33.684116, 37.623837>,  <36.074707, 34.046375, 37.593864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457062, 33.684116, 37.623837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782253, 33.452068, 37.643921>,  <35.977367, 33.312840, 37.655972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782253, 33.452068, 37.643921>,  <35.457062, 33.684116, 37.623837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782253, 33.452068, 37.643921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150627, -0.126227, 0.980499,
		-0.562472, -0.804689, -0.190002,
		0.812980, -0.580122, 0.050209,
		36.026146, 33.278030, 37.658985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286278, 33.146328, 37.969017>,  <35.457062, 33.684116, 37.623837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286278, 33.146328, 37.969017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677486, 33.066700, 37.993809>,  <35.912212, 33.018925, 38.008682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677486, 33.066700, 37.993809>,  <35.286278, 33.146328, 37.969017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677486, 33.066700, 37.993809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135331, -0.379977, 0.915043,
		-0.158607, -0.903321, -0.398566,
		0.978024, -0.199070, 0.061980,
		35.970894, 33.006977, 38.012402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356327, 32.462776, 38.130272>,  <35.286278, 33.146328, 37.969017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356327, 32.462776, 38.130272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695366, 32.648376, 38.233257>,  <35.898788, 32.759735, 38.295048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695366, 32.648376, 38.233257>,  <35.356327, 32.462776, 38.130272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695366, 32.648376, 38.233257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014203, -0.465173, 0.885106,
		0.530452, -0.753869, -0.387688,
		0.847596, 0.463999, 0.257459,
		35.949646, 32.787575, 38.310493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699516, 32.031097, 38.567917>,  <35.356327, 32.462776, 38.130272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699516, 32.031097, 38.567917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908466, 32.363579, 38.644039>,  <36.033836, 32.563068, 38.689713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908466, 32.363579, 38.644039>,  <35.699516, 32.031097, 38.567917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908466, 32.363579, 38.644039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121877, -0.293668, 0.948106,
		0.843960, -0.472075, -0.254711,
		0.522377, 0.831207, 0.190309,
		36.065178, 32.612942, 38.701134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286934, 31.834299, 38.909084>,  <35.699516, 32.031097, 38.567917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286934, 31.834299, 38.909084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238232, 32.220654, 39.000504>,  <36.209011, 32.452465, 39.055355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238232, 32.220654, 39.000504>,  <36.286934, 31.834299, 38.909084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238232, 32.220654, 39.000504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198773, -0.201873, 0.959029,
		0.972453, 0.162195, -0.167414,
		-0.121753, 0.965888, 0.228552,
		36.201706, 32.510422, 39.069069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744137, 31.982523, 39.442371>,  <36.286934, 31.834299, 38.909084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744137, 31.982523, 39.442371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473511, 32.273903, 39.485489>,  <36.311134, 32.448730, 39.511360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473511, 32.273903, 39.485489>,  <36.744137, 31.982523, 39.442371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473511, 32.273903, 39.485489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022113, -0.166415, 0.985808,
		0.736052, 0.664578, 0.128699,
		-0.676563, 0.728452, 0.107795,
		36.270542, 32.492439, 39.517826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020172, 32.442303, 39.904854>,  <36.744137, 31.982523, 39.442371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020172, 32.442303, 39.904854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626213, 32.505707, 39.932728>,  <36.389839, 32.543751, 39.949451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626213, 32.505707, 39.932728>,  <37.020172, 32.442303, 39.904854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626213, 32.505707, 39.932728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055206, -0.093998, 0.994040,
		0.164118, 0.982872, 0.083828,
		-0.984895, 0.158512, 0.069688,
		36.330746, 32.553261, 39.953632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964325, 32.844948, 40.515629>,  <37.020172, 32.442303, 39.904854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964325, 32.844948, 40.515629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586662, 32.723141, 40.465298>,  <36.360065, 32.650059, 40.435101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586662, 32.723141, 40.465298>,  <36.964325, 32.844948, 40.515629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586662, 32.723141, 40.465298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025692, -0.312673, 0.949513,
		-0.328483, 0.899726, 0.287390,
		-0.944161, -0.304515, -0.125823,
		36.303413, 32.631786, 40.427551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619991, 33.152569, 41.080070>,  <36.964325, 32.844948, 40.515629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619991, 33.152569, 41.080070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375439, 32.858971, 40.961777>,  <36.228706, 32.682812, 40.890800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375439, 32.858971, 40.961777>,  <36.619991, 33.152569, 41.080070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375439, 32.858971, 40.961777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287900, -0.141791, 0.947106,
		-0.737106, 0.664185, -0.124629,
		-0.611382, -0.733998, -0.295734,
		36.192024, 32.638771, 40.873058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984863, 33.251984, 41.471077>,  <36.619991, 33.152569, 41.080070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984863, 33.251984, 41.471077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969242, 32.871754, 41.347866>,  <35.959869, 32.643616, 41.273937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969242, 32.871754, 41.347866>,  <35.984863, 33.251984, 41.471077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969242, 32.871754, 41.347866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261286, -0.287825, 0.921350,
		-0.964471, 0.116464, -0.237132,
		-0.039052, -0.950575, -0.308029,
		35.957527, 32.586582, 41.255459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341248, 33.110386, 41.797890>,  <35.984863, 33.251984, 41.471077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341248, 33.110386, 41.797890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497517, 32.754330, 41.704067>,  <35.591278, 32.540695, 41.647774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497517, 32.754330, 41.704067>,  <35.341248, 33.110386, 41.797890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497517, 32.754330, 41.704067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473476, -0.412828, 0.778071,
		-0.789428, -0.192913, -0.582742,
		0.390673, -0.890145, -0.234558,
		35.614719, 32.487286, 41.633701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889576, 32.663452, 41.824677>,  <35.341248, 33.110386, 41.797890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889576, 32.663452, 41.824677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197063, 32.409279, 41.853794>,  <35.381554, 32.256775, 41.871265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197063, 32.409279, 41.853794>,  <34.889576, 32.663452, 41.824677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197063, 32.409279, 41.853794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499190, -0.524919, 0.689398,
		-0.399859, -0.566286, -0.720717,
		0.768714, -0.635437, 0.072791,
		35.427677, 32.218647, 41.875629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574696, 32.090332, 41.869934>,  <34.889576, 32.663452, 41.824677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574696, 32.090332, 41.869934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936512, 31.978893, 41.999043>,  <35.153603, 31.912029, 42.076508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936512, 31.978893, 41.999043>,  <34.574696, 32.090332, 41.869934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936512, 31.978893, 41.999043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419305, -0.443926, 0.791905,
		-0.077337, -0.851653, -0.518369,
		0.904545, -0.278599, 0.322770,
		35.207874, 31.895313, 42.095875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514957, 31.324286, 42.081474>,  <34.574696, 32.090332, 41.869934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514957, 31.324286, 42.081474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825783, 31.476656, 42.281902>,  <35.012276, 31.568079, 42.402161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825783, 31.476656, 42.281902>,  <34.514957, 31.324286, 42.081474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825783, 31.476656, 42.281902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230523, -0.568530, 0.789704,
		0.585694, -0.729156, -0.353970,
		0.777060, 0.380926, 0.501072,
		35.058899, 31.590935, 42.432224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806061, 30.746418, 42.378307>,  <34.514957, 31.324286, 42.081474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806061, 30.746418, 42.378307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907528, 31.077749, 42.578117>,  <34.968410, 31.276548, 42.698002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907528, 31.077749, 42.578117>,  <34.806061, 30.746418, 42.378307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907528, 31.077749, 42.578117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065168, -0.500608, 0.863218,
		0.965093, -0.251526, -0.073009,
		0.253671, 0.828328, 0.499524,
		34.983631, 31.326248, 42.727974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175381, 30.614485, 42.988537>,  <34.806061, 30.746418, 42.378307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175381, 30.614485, 42.988537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042057, 30.979147, 43.084694>,  <34.962063, 31.197945, 43.142387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042057, 30.979147, 43.084694>,  <35.175381, 30.614485, 42.988537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042057, 30.979147, 43.084694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276084, -0.338174, 0.899676,
		0.901489, 0.233502, 0.364410,
		-0.333310, 0.911655, 0.240394,
		34.942062, 31.252644, 43.156811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840313, 30.341406, 43.222061>,  <35.175381, 30.614485, 42.988537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840313, 30.341406, 43.222061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195976, 30.264851, 43.388317>,  <36.409374, 30.218918, 43.488071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195976, 30.264851, 43.388317>,  <35.840313, 30.341406, 43.222061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195976, 30.264851, 43.388317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445598, 0.155544, -0.881617,
		0.104080, 0.969111, 0.223587,
		0.889163, -0.191389, 0.415645,
		36.462727, 30.207434, 43.513012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173859, 30.702818, 42.860130>,  <35.840313, 30.341406, 43.222061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173859, 30.702818, 42.860130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417591, 30.413685, 42.990505>,  <36.563831, 30.240206, 43.068729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417591, 30.413685, 42.990505>,  <36.173859, 30.702818, 42.860130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417591, 30.413685, 42.990505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400141, -0.074560, -0.913416,
		0.684548, 0.686990, 0.243803,
		0.609329, -0.722832, 0.325933,
		36.600391, 30.196835, 43.088284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809101, 30.964333, 42.505539>,  <36.173859, 30.702818, 42.860130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809101, 30.964333, 42.505539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843887, 30.582563, 42.619743>,  <36.864758, 30.353502, 42.688267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843887, 30.582563, 42.619743>,  <36.809101, 30.964333, 42.505539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843887, 30.582563, 42.619743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323285, -0.244045, -0.914291,
		0.942297, 0.171813, 0.287327,
		0.086966, -0.954423, 0.285507,
		36.869976, 30.296236, 42.705395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536121, 30.822519, 42.463226>,  <36.809101, 30.964333, 42.505539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536121, 30.822519, 42.463226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342369, 30.473558, 42.437012>,  <37.226120, 30.264183, 42.421284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342369, 30.473558, 42.437012>,  <37.536121, 30.822519, 42.463226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342369, 30.473558, 42.437012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457893, -0.188971, -0.868691,
		0.745461, -0.450785, 0.490999,
		-0.484377, -0.872401, -0.065541,
		37.197056, 30.211838, 42.417351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004868, 30.361837, 42.536106>,  <37.536121, 30.822519, 42.463226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004868, 30.361837, 42.536106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700951, 30.197115, 42.334862>,  <37.518600, 30.098282, 42.214115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700951, 30.197115, 42.334862>,  <38.004868, 30.361837, 42.536106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700951, 30.197115, 42.334862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603984, -0.160644, -0.780639,
		0.240650, -0.897000, 0.370781,
		-0.759797, -0.411806, -0.503115,
		37.473011, 30.073572, 42.183926>
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
