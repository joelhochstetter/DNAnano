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
	<1.775135, 4.180882, 0.371343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.552147, 3.900074, 0.194077>,  <1.418354, 3.731589, 0.087717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.552147, 3.900074, 0.194077>,  <1.775135, 4.180882, 0.371343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.552147, 3.900074, 0.194077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652529, 0.040498, 0.756681,
		-0.513258, 0.711005, -0.480664,
		-0.557470, -0.702020, -0.443165,
		1.384906, 3.689468, 0.061127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.148069, 4.388741, 0.474644>,  <1.775135, 4.180882, 0.371343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.148069, 4.388741, 0.474644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.114529, 3.992321, 0.433102>,  <1.094405, 3.754469, 0.408176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.114529, 3.992321, 0.433102>,  <1.148069, 4.388741, 0.474644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.114529, 3.992321, 0.433102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520902, -0.045256, 0.852416,
		-0.849488, 0.125574, -0.512446,
		-0.083850, -0.991051, -0.103856,
		1.089374, 3.695006, 0.401945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.373829, 4.156996, 0.488043>,  <1.148069, 4.388741, 0.474644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.373829, 4.156996, 0.488043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.601501, 3.843273, 0.586750>,  <0.738105, 3.655039, 0.645974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.601501, 3.843273, 0.586750>,  <0.373829, 4.156996, 0.488043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.601501, 3.843273, 0.586750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681473, -0.282084, 0.675295,
		-0.460031, -0.552529, -0.695041,
		0.569180, -0.784308, 0.246767,
		0.772256, 3.607981, 0.660780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.066846, 3.654984, 0.542942>,  <0.373829, 4.156996, 0.488043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.066846, 3.654984, 0.542942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.259537, 3.546314, 0.747063>,  <0.455366, 3.481112, 0.869535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.259537, 3.546314, 0.747063>,  <-0.066846, 3.654984, 0.542942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.259537, 3.546314, 0.747063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577111, -0.330838, 0.746652,
		-0.034019, -0.903736, -0.426736,
		0.815957, -0.271674, 0.510301,
		0.504324, 3.464812, 0.900153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.316217, 3.099419, 0.921054>,  <-0.066846, 3.654984, 0.542942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.316217, 3.099419, 0.921054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.024136, 3.182796, 1.113949>,  <0.228347, 3.232823, 1.229686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.024136, 3.182796, 1.113949>,  <-0.316217, 3.099419, 0.921054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.024136, 3.182796, 1.113949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439725, -0.219715, 0.870843,
		0.287477, -0.953035, -0.095293,
		0.850881, 0.208445, 0.482237,
		0.279400, 3.245330, 1.258620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.111454, 2.487508, 1.398526>,  <-0.316217, 3.099419, 0.921054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.111454, 2.487508, 1.398526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.055149, 2.822487, 1.540062>,  <0.155111, 3.023474, 1.624984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.055149, 2.822487, 1.540062>,  <-0.111454, 2.487508, 1.398526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.055149, 2.822487, 1.540062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399235, -0.181188, 0.898767,
		0.816783, -0.515608, 0.258872,
		0.416506, 0.837448, 0.353840,
		0.180101, 3.073721, 1.646214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.046901, 2.338259, 2.128804>,  <-0.111454, 2.487508, 1.398526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.046901, 2.338259, 2.128804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.075161, 2.736820, 2.110088>,  <0.092117, 2.975957, 2.098859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.075161, 2.736820, 2.110088>,  <0.046901, 2.338259, 2.128804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.075161, 2.736820, 2.110088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365444, 0.069500, 0.928236,
		0.928149, -0.048482, 0.369039,
		0.070651, 0.996403, -0.046789,
		0.096356, 3.035741, 2.096052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.225275, 2.533848, 2.778861>,  <0.046901, 2.338259, 2.128804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.225275, 2.533848, 2.778861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.082256, 2.871929, 2.619968>,  <-0.003555, 3.074778, 2.524633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.082256, 2.871929, 2.619968>,  <0.225275, 2.533848, 2.778861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.082256, 2.871929, 2.619968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497769, 0.187418, 0.846818,
		0.790181, 0.500507, 0.353704,
		-0.357548, 0.845203, -0.397231,
		-0.025008, 3.125490, 2.500799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.442962, 3.191353, 3.032820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.654369, 3.530891, 3.037331>,  <3.781214, 3.734615, 3.040037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.654369, 3.530891, 3.037331>,  <3.442962, 3.191353, 3.032820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.654369, 3.530891, 3.037331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630380, -0.383528, -0.674928,
		-0.568585, 0.363821, -0.737798,
		0.528519, 0.848847, 0.011277,
		3.812925, 3.785545, 3.040714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.492552, 3.572747, 2.436926>,  <3.442962, 3.191353, 3.032820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.492552, 3.572747, 2.436926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.831350, 3.615677, 2.645187>,  <4.034629, 3.641435, 2.770144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.831350, 3.615677, 2.645187>,  <3.492552, 3.572747, 2.436926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.831350, 3.615677, 2.645187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531541, -0.185632, -0.826441,
		0.007952, 0.976741, -0.214277,
		0.846995, 0.107325, 0.520654,
		4.085449, 3.647874, 2.801383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.011915, 3.643878, 1.965772>,  <3.492552, 3.572747, 2.436926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.011915, 3.643878, 1.965772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.254436, 3.640244, 2.283844>,  <4.399950, 3.638062, 2.474687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.254436, 3.640244, 2.283844>,  <4.011915, 3.643878, 1.965772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.254436, 3.640244, 2.283844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791903, -0.084507, -0.604771,
		0.072694, 0.996381, -0.044040,
		0.606304, -0.009088, 0.795181,
		4.436328, 3.637517, 2.522398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.542305, 4.265999, 1.991092>,  <4.011915, 3.643878, 1.965772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.542305, 4.265999, 1.991092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.694992, 3.944679, 2.173958>,  <4.786604, 3.751887, 2.283677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.694992, 3.944679, 2.173958>,  <4.542305, 4.265999, 1.991092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.694992, 3.944679, 2.173958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777106, 0.011147, -0.629272,
		0.500398, 0.595470, 0.628504,
		0.381718, -0.803300, 0.457165,
		4.809507, 3.703689, 2.311107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.324911, 4.298928, 2.149074>,  <4.542305, 4.265999, 1.991092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.324911, 4.298928, 2.149074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.252926, 3.907623, 2.107861>,  <5.209735, 3.672840, 2.083133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.252926, 3.907623, 2.107861>,  <5.324911, 4.298928, 2.149074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.252926, 3.907623, 2.107861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832104, -0.095534, -0.546330,
		0.524611, -0.184053, 0.831209,
		-0.179962, -0.978263, -0.103033,
		5.198937, 3.614145, 2.076951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.955455, 4.044230, 2.145188>,  <5.324911, 4.298928, 2.149074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.955455, 4.044230, 2.145188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.731104, 3.744789, 2.003761>,  <5.596493, 3.565124, 1.918905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.731104, 3.744789, 2.003761>,  <5.955455, 4.044230, 2.145188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.731104, 3.744789, 2.003761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704012, -0.206542, -0.679491,
		0.435643, -0.630026, 0.642871,
		-0.560877, -0.748604, -0.353567,
		5.562841, 3.520208, 1.897691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.371536, 3.461538, 1.957842>,  <5.955455, 4.044230, 2.145188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.371536, 3.461538, 1.957842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.042719, 3.408905, 1.736237>,  <5.845428, 3.377325, 1.603273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.042719, 3.408905, 1.736237>,  <6.371536, 3.461538, 1.957842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.042719, 3.408905, 1.736237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568871, -0.232700, -0.788820,
		-0.025123, -0.963606, 0.266144,
		-0.822043, -0.131584, -0.554014,
		5.796106, 3.369430, 1.570032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.593379, 2.909872, 1.465870>,  <6.371536, 3.461538, 1.957842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.593379, 2.909872, 1.465870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.268389, 3.089493, 1.317150>,  <6.073395, 3.197266, 1.227918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.268389, 3.089493, 1.317150>,  <6.593379, 2.909872, 1.465870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.268389, 3.089493, 1.317150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424062, 0.017569, -0.905463,
		-0.400069, -0.893332, -0.204701,
		-0.812476, 0.449053, -0.371799,
		6.024646, 3.224209, 1.205610>
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
