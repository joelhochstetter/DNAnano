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
	<2.152647, 2.414963, 1.420117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.166298, 2.788233, 1.276997>,  <2.174489, 3.012195, 1.191124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.166298, 2.788233, 1.276997>,  <2.152647, 2.414963, 1.420117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.166298, 2.788233, 1.276997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760927, 0.256366, 0.596042,
		0.647939, 0.251919, 0.718827,
		0.034128, 0.933174, -0.357801,
		2.176536, 3.068185, 1.169656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.209959, 2.800835, 1.962015>,  <2.152647, 2.414963, 1.420117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.209959, 2.800835, 1.962015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.016998, 2.939892, 1.640411>,  <1.901222, 3.023326, 1.447449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.016998, 2.939892, 1.640411>,  <2.209959, 2.800835, 1.962015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.016998, 2.939892, 1.640411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800734, 0.197105, 0.565663,
		0.355123, 0.916676, 0.183286,
		-0.482403, 0.347643, -0.804010,
		1.872277, 3.044185, 1.399208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.024074, 3.542947, 2.144461>,  <2.209959, 2.800835, 1.962015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.024074, 3.542947, 2.144461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.792992, 3.356133, 1.876690>,  <1.654342, 3.244044, 1.716027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.792992, 3.356133, 1.876690>,  <2.024074, 3.542947, 2.144461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.792992, 3.356133, 1.876690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728737, -0.074331, 0.680747,
		-0.367693, 0.881109, -0.297405,
		-0.577706, -0.467036, -0.669428,
		1.619680, 3.216022, 1.675862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.316392, 3.739678, 2.262224>,  <2.024074, 3.542947, 2.144461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.316392, 3.739678, 2.262224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.336517, 3.375683, 2.097595>,  <1.348592, 3.157286, 1.998818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.336517, 3.375683, 2.097595>,  <1.316392, 3.739678, 2.262224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.336517, 3.375683, 2.097595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726603, -0.316081, 0.610034,
		-0.685213, 0.268357, -0.677102,
		0.050312, -0.909987, -0.411572,
		1.351611, 3.102687, 1.974124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.639856, 3.604671, 2.170512>,  <1.316392, 3.739678, 2.262224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.639856, 3.604671, 2.170512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.819283, 3.248178, 2.143692>,  <0.926938, 3.034283, 2.127600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.819283, 3.248178, 2.143692>,  <0.639856, 3.604671, 2.170512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.819283, 3.248178, 2.143692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675228, -0.387087, 0.627878,
		-0.585539, -0.236370, -0.775418,
		0.448566, -0.891231, -0.067051,
		0.953852, 2.980809, 2.123577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.230833, 3.138552, 1.862244>,  <0.639856, 3.604671, 2.170512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.230833, 3.138552, 1.862244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.486778, 2.931944, 2.089851>,  <0.640345, 2.807979, 2.226415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.486778, 2.931944, 2.089851>,  <0.230833, 3.138552, 1.862244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.486778, 2.931944, 2.089851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760790, -0.321218, 0.563930,
		-0.108502, -0.793741, -0.598500,
		0.639863, -0.516521, 0.569018,
		0.678737, 2.776988, 2.260556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.202174, 2.677104, 2.079931>,  <0.230833, 3.138552, 1.862244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.202174, 2.677104, 2.079931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.103790, 2.647875, 2.335922>,  <0.287369, 2.630337, 2.489517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.103790, 2.647875, 2.335922>,  <-0.202174, 2.677104, 2.079931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.103790, 2.647875, 2.335922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616702, -0.369951, 0.694849,
		0.185985, -0.926173, -0.328045,
		0.764911, -0.073075, 0.639978,
		0.333263, 2.625953, 2.527916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.252959, 1.984113, 2.266324>,  <-0.202174, 2.677104, 2.079931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.252959, 1.984113, 2.266324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.066078, 2.211967, 2.536800>,  <0.046050, 2.348680, 2.699086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.066078, 2.211967, 2.536800>,  <-0.252959, 1.984113, 2.266324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.066078, 2.211967, 2.536800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621231, -0.332695, 0.709497,
		0.629121, -0.751550, 0.198440,
		0.467202, 0.569637, 0.676192,
		0.074083, 2.382859, 2.739658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.861399, 2.146310, 3.837947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.520126, 2.163273, 4.045902>,  <-0.315363, 2.173450, 4.170675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.520126, 2.163273, 4.045902>,  <-0.861399, 2.146310, 3.837947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.520126, 2.163273, 4.045902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493221, 0.258766, -0.830526,
		-0.169749, 0.965009, 0.199858,
		0.853181, 0.042407, 0.519888,
		-0.264172, 2.175995, 4.201869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.613948, 2.752376, 3.632665>,  <-0.861399, 2.146310, 3.837947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.613948, 2.752376, 3.632665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.315735, 2.525486, 3.772629>,  <-0.136807, 2.389352, 3.856607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.315735, 2.525486, 3.772629>,  <-0.613948, 2.752376, 3.632665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.315735, 2.525486, 3.772629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540564, 0.207548, -0.815300,
		0.389835, 0.796982, 0.461355,
		0.745533, -0.567225, 0.349910,
		-0.092075, 2.355319, 3.877602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.029817, 3.138644, 3.507225>,  <-0.613948, 2.752376, 3.632665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.029817, 3.138644, 3.507225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.116440, 2.748528, 3.524719>,  <0.168413, 2.514458, 3.535216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.116440, 2.748528, 3.524719>,  <0.029817, 3.138644, 3.507225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.116440, 2.748528, 3.524719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601279, 0.097949, -0.793013,
		0.769134, 0.198030, 0.607633,
		0.216557, -0.975290, 0.043736,
		0.181407, 2.455940, 3.537840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.780980, 3.064686, 3.522498>,  <0.029817, 3.138644, 3.507225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.780980, 3.064686, 3.522498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.607040, 2.736523, 3.373993>,  <0.502677, 2.539624, 3.284890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.607040, 2.736523, 3.373993>,  <0.780980, 3.064686, 3.522498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.607040, 2.736523, 3.373993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631731, 0.015884, -0.775025,
		0.641735, -0.571557, 0.511370,
		-0.434848, -0.820409, -0.371264,
		0.476586, 2.490400, 3.262614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.280841, 2.533957, 3.472698>,  <0.780980, 3.064686, 3.522498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.280841, 2.533957, 3.472698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.000305, 2.533062, 3.187569>,  <0.831984, 2.532525, 3.016491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.000305, 2.533062, 3.187569>,  <1.280841, 2.533957, 3.472698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.000305, 2.533062, 3.187569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712259, 0.037737, -0.700902,
		0.028456, -0.999285, -0.024886,
		-0.701340, -0.002220, -0.712824,
		0.789903, 2.532391, 2.973722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.485607, 2.109684, 2.947205>,  <1.280841, 2.533957, 3.472698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.485607, 2.109684, 2.947205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.207916, 2.302212, 2.733147>,  <1.041302, 2.417728, 2.604712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.207916, 2.302212, 2.733147>,  <1.485607, 2.109684, 2.947205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.207916, 2.302212, 2.733147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651817, 0.105090, -0.751060,
		-0.305261, -0.870223, -0.386688,
		-0.694227, 0.481319, -0.535146,
		0.999648, 2.446607, 2.572603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.530374, 1.853697, 2.171862>,  <1.485607, 2.109684, 2.947205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.530374, 1.853697, 2.171862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.349747, 2.208385, 2.132244>,  <1.241370, 2.421199, 2.108473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.349747, 2.208385, 2.132244>,  <1.530374, 1.853697, 2.171862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.349747, 2.208385, 2.132244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674219, 0.266413, -0.688805,
		-0.584391, -0.377821, -0.718149,
		-0.451569, 0.886721, -0.099045,
		1.214276, 2.474402, 2.102530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.361558, 1.910639, 1.417510>,  <1.530374, 1.853697, 2.171862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.361558, 1.910639, 1.417510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.386505, 2.270176, 1.591034>,  <1.401474, 2.485898, 1.695148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.386505, 2.270176, 1.591034>,  <1.361558, 1.910639, 1.417510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.386505, 2.270176, 1.591034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657240, 0.290117, -0.695606,
		-0.751096, 0.328501, -0.572662,
		0.062368, 0.898843, 0.433810,
		1.405216, 2.539829, 1.721177>
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
