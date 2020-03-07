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
	<2.587984, 0.916001, 4.069657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.474987, 0.532619, 4.085469>,  <2.407189, 0.302590, 4.094956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.474987, 0.532619, 4.085469>,  <2.587984, 0.916001, 4.069657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.474987, 0.532619, 4.085469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923233, 0.260460, -0.282492,
		0.260460, -0.116297, -0.958455,
		0.282492, 0.958455, -0.039530,
		2.390239, 0.245083, 4.097328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.204370, 0.703632, 3.387916>,  <2.587984, 0.916001, 4.069657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.204370, 0.703632, 3.387916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.071964, 0.505821, 3.709381>,  <1.992521, 0.387135, 3.902260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.071964, 0.505821, 3.709381>,  <2.204370, 0.703632, 3.387916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.071964, 0.505821, 3.709381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941261, 0.112775, -0.318293,
		0.066772, -0.861815, -0.502809,
		-0.331014, -0.494527, 0.803662,
		1.972660, 0.357463, 3.950480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.910643, 0.017155, 3.297401>,  <2.204370, 0.703632, 3.387916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.910643, 0.017155, 3.297401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.731319, 0.223206, 3.589610>,  <1.623725, 0.346836, 3.764935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.731319, 0.223206, 3.589610>,  <1.910643, 0.017155, 3.297401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.731319, 0.223206, 3.589610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861081, -0.029525, -0.507610,
		-0.239916, -0.856604, 0.456804,
		-0.448309, 0.515129, 0.730522,
		1.596827, 0.377744, 3.808766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.342608, -0.441872, 3.645040>,  <1.910643, 0.017155, 3.297401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.342608, -0.441872, 3.645040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.303888, -0.043774, 3.649309>,  <1.280657, 0.195086, 3.651870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.303888, -0.043774, 3.649309>,  <1.342608, -0.441872, 3.645040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.303888, -0.043774, 3.649309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919992, -0.085377, -0.382526,
		-0.379797, -0.046846, 0.923883,
		-0.096798, 0.995247, 0.010672,
		1.274849, 0.254800, 3.652510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.684341, -0.360394, 3.974594>,  <1.342608, -0.441872, 3.645040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.684341, -0.360394, 3.974594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.732199, 0.002964, 3.814342>,  <0.760913, 0.220979, 3.718190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.732199, 0.002964, 3.814342>,  <0.684341, -0.360394, 3.974594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.732199, 0.002964, 3.814342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938032, -0.028765, -0.345353,
		-0.325241, 0.417124, 0.848661,
		0.119644, 0.908394, -0.400631,
		0.768092, 0.275482, 3.694152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.093181, 0.121155, 4.258098>,  <0.684341, -0.360394, 3.974594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.093181, 0.121155, 4.258098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.246069, 0.257374, 3.914485>,  <0.337802, 0.339105, 3.708318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.246069, 0.257374, 3.914485>,  <0.093181, 0.121155, 4.258098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.246069, 0.257374, 3.914485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900390, -0.071861, -0.429109,
		-0.207863, 0.937477, 0.279159,
		0.382219, 0.340548, -0.859032,
		0.360735, 0.359538, 3.656776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.479458, 0.509261, 4.056230>,  <0.093181, 0.121155, 4.258098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.479458, 0.509261, 4.056230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.269405, 0.506844, 3.715830>,  <-0.143374, 0.505393, 3.511590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.269405, 0.506844, 3.715830>,  <-0.479458, 0.509261, 4.056230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.269405, 0.506844, 3.715830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851014, 0.000470, -0.525142,
		0.003574, 0.999982, -0.004896,
		0.525130, -0.006043, -0.851000,
		-0.111866, 0.505031, 3.460530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.745768, 1.081125, 3.574667>,  <-0.479458, 0.509261, 4.056230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.745768, 1.081125, 3.574667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.588757, 0.783108, 3.358950>,  <-0.494550, 0.604298, 3.229520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.588757, 0.783108, 3.358950>,  <-0.745768, 1.081125, 3.574667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.588757, 0.783108, 3.358950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849220, -0.068420, -0.523588,
		0.353197, 0.663499, -0.659561,
		0.392528, -0.745042, -0.539291,
		-0.470998, 0.559595, 3.197163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-1.684770, 0.136187, 2.751071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.422348, 0.123894, 2.449436>,  <-1.264895, 0.116518, 2.268456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.422348, 0.123894, 2.449436>,  <-1.684770, 0.136187, 2.751071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.422348, 0.123894, 2.449436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754644, 0.040179, 0.654903,
		0.010168, -0.998720, 0.049556,
		0.656056, -0.030738, -0.754086,
		-1.225531, 0.114674, 2.223210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.097316, -0.402910, 2.817188>,  <-1.684770, 0.136187, 2.751071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.097316, -0.402910, 2.817188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.970253, -0.083393, 2.612825>,  <-0.894015, 0.108317, 2.490208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.970253, -0.083393, 2.612825>,  <-1.097316, -0.402910, 2.817188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.970253, -0.083393, 2.612825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797574, 0.066308, 0.599565,
		0.512805, -0.597942, -0.616033,
		0.317657, 0.798792, -0.510906,
		-0.874956, 0.156245, 2.459554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.387892, -0.493264, 2.726721>,  <-1.097316, -0.402910, 2.817188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.387892, -0.493264, 2.726721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.454865, -0.102592, 2.672960>,  <-0.495048, 0.131811, 2.640704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.454865, -0.102592, 2.672960>,  <-0.387892, -0.493264, 2.726721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.454865, -0.102592, 2.672960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781143, 0.214595, 0.586314,
		0.601483, -0.006820, -0.798857,
		-0.167432, 0.976679, -0.134402,
		-0.505094, 0.190411, 2.632640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.270094, -0.277711, 2.481741>,  <-0.387892, -0.493264, 2.726721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.270094, -0.277711, 2.481741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.041405, 0.004597, 2.649084>,  <-0.095809, 0.173981, 2.749490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.041405, 0.004597, 2.649084>,  <0.270094, -0.277711, 2.481741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.041405, 0.004597, 2.649084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762204, 0.268203, 0.589163,
		0.303609, 0.655711, -0.691278,
		-0.571723, 0.705770, 0.418356,
		-0.130112, 0.216328, 2.774591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.572001, 0.290274, 2.333271>,  <0.270094, -0.277711, 2.481741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.572001, 0.290274, 2.333271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.381920, 0.361454, 2.677948>,  <0.267871, 0.404162, 2.884754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.381920, 0.361454, 2.677948>,  <0.572001, 0.290274, 2.333271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.381920, 0.361454, 2.677948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858841, 0.306669, 0.410299,
		-0.191242, 0.935033, -0.298562,
		-0.475203, 0.177951, 0.861693,
		0.239359, 0.414839, 2.936456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.796866, 0.930706, 2.542729>,  <0.572001, 0.290274, 2.333271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.796866, 0.930706, 2.542729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.668221, 0.735828, 2.867495>,  <0.591033, 0.618902, 3.062354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.668221, 0.735828, 2.867495>,  <0.796866, 0.930706, 2.542729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.668221, 0.735828, 2.867495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819452, 0.286404, 0.496459,
		-0.474408, 0.824994, 0.307120,
		-0.321615, -0.487194, 0.811915,
		0.571736, 0.589670, 3.111069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.961411, 1.399198, 3.051848>,  <0.796866, 0.930706, 2.542729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.961411, 1.399198, 3.051848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.907349, 1.062847, 3.261479>,  <0.874911, 0.861036, 3.387258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.907349, 1.062847, 3.261479>,  <0.961411, 1.399198, 3.051848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.907349, 1.062847, 3.261479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803478, 0.216494, 0.554574,
		-0.579789, 0.496039, 0.646367,
		-0.135156, -0.840878, 0.524077,
		0.866802, 0.810584, 3.418703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.029691, 1.529423, 3.827801>,  <0.961411, 1.399198, 3.051848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.029691, 1.529423, 3.827801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.125610, 1.153049, 3.732185>,  <1.183162, 0.927225, 3.674816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.125610, 1.153049, 3.732185>,  <1.029691, 1.529423, 3.827801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.125610, 1.153049, 3.732185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891332, 0.115808, 0.438311,
		-0.384739, -0.318168, 0.866455,
		0.239799, -0.940934, -0.239038,
		1.197550, 0.870769, 3.660474>
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
