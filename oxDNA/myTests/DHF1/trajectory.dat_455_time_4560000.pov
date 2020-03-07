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
	<2.739001, 4.414505, 5.258047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.407476, 4.556961, 5.085426>,  <2.208562, 4.642435, 4.981853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.407476, 4.556961, 5.085426>,  <2.739001, 4.414505, 5.258047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.407476, 4.556961, 5.085426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157685, -0.591348, -0.790850,
		-0.536849, -0.723515, 0.433958,
		-0.828812, 0.356138, -0.431551,
		2.158833, 4.663803, 4.955961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.201710, 3.901716, 4.984993>,  <2.739001, 4.414505, 5.258047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.201710, 3.901716, 4.984993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.247085, 4.218369, 4.744843>,  <2.274309, 4.408360, 4.600752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.247085, 4.218369, 4.744843>,  <2.201710, 3.901716, 4.984993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.247085, 4.218369, 4.744843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055211, -0.608367, -0.791733,
		-0.992010, 0.056664, -0.112717,
		0.113436, 0.791630, -0.600378,
		2.281116, 4.455858, 4.564729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.647701, 4.004227, 4.512350>,  <2.201710, 3.901716, 4.984993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.647701, 4.004227, 4.512350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.994874, 4.127197, 4.356308>,  <2.203178, 4.200980, 4.262682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.994874, 4.127197, 4.356308>,  <1.647701, 4.004227, 4.512350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.994874, 4.127197, 4.356308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131360, -0.615376, -0.777211,
		-0.478996, 0.725811, -0.493721,
		0.867933, 0.307426, -0.390106,
		2.255254, 4.219425, 4.239276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.531447, 4.278037, 3.813914>,  <1.647701, 4.004227, 4.512350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.531447, 4.278037, 3.813914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.903797, 4.136757, 3.851273>,  <2.127207, 4.051989, 3.873688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.903797, 4.136757, 3.851273>,  <1.531447, 4.278037, 3.813914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.903797, 4.136757, 3.851273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158143, -0.620007, -0.768493,
		0.329338, 0.700601, -0.633005,
		0.930875, -0.353199, 0.093397,
		2.183059, 4.030797, 3.879292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.771268, 4.177832, 3.097508>,  <1.531447, 4.278037, 3.813914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.771268, 4.177832, 3.097508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.993818, 3.939644, 3.329323>,  <2.127348, 3.796731, 3.468411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.993818, 3.939644, 3.329323>,  <1.771268, 4.177832, 3.097508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.993818, 3.939644, 3.329323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086967, -0.735354, -0.672080,
		0.826367, 0.323528, -0.460919,
		0.556376, -0.595470, 0.579536,
		2.160731, 3.761003, 3.503184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.295730, 3.908699, 2.615609>,  <1.771268, 4.177832, 3.097508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.295730, 3.908699, 2.615609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.264746, 3.660912, 2.928085>,  <2.246155, 3.512239, 3.115571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.264746, 3.660912, 2.928085>,  <2.295730, 3.908699, 2.615609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.264746, 3.660912, 2.928085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035477, -0.781335, -0.623103,
		0.996364, -0.075980, 0.038546,
		-0.077461, -0.619469, 0.781190,
		2.241507, 3.475071, 3.162442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.733126, 3.406547, 2.424158>,  <2.295730, 3.908699, 2.615609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.733126, 3.406547, 2.424158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.508581, 3.238472, 2.709343>,  <2.373854, 3.137627, 2.880454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.508581, 3.238472, 2.709343>,  <2.733126, 3.406547, 2.424158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.508581, 3.238472, 2.709343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008561, -0.864415, -0.502707,
		0.827526, -0.276097, 0.488847,
		-0.561363, -0.420188, 0.712962,
		2.340172, 3.112416, 2.923231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.991712, 2.743506, 2.533825>,  <2.733126, 3.406547, 2.424158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.991712, 2.743506, 2.533825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.624450, 2.733696, 2.692009>,  <2.404093, 2.727810, 2.786920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.624450, 2.733696, 2.692009>,  <2.991712, 2.743506, 2.533825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.624450, 2.733696, 2.692009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161058, -0.888802, -0.429058,
		0.362010, -0.457634, 0.812108,
		-0.918155, -0.024526, 0.395461,
		2.349003, 2.726338, 2.810647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.294600, 1.549368, 2.047502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.345427, 1.615234, 1.656250>,  <1.375922, 1.654754, 1.421499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.345427, 1.615234, 1.656250>,  <1.294600, 1.549368, 2.047502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.345427, 1.615234, 1.656250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453639, 0.867302, 0.204938,
		0.882081, -0.469758, 0.035506,
		0.127066, 0.164665, -0.978131,
		1.383546, 1.664634, 1.362811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.421396, 2.341344, 2.151795>,  <1.294600, 1.549368, 2.047502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.421396, 2.341344, 2.151795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.681334, 2.124466, 2.364861>,  <1.837296, 1.994339, 2.492700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.681334, 2.124466, 2.364861>,  <1.421396, 2.341344, 2.151795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.681334, 2.124466, 2.364861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068746, 0.739865, 0.669234,
		-0.756954, -0.398278, 0.518069,
		0.649842, -0.542194, 0.532663,
		1.876286, 1.961808, 2.524660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.155675, 2.495319, 2.754814>,  <1.421396, 2.341344, 2.151795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.155675, 2.495319, 2.754814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.535797, 2.385719, 2.813934>,  <1.763870, 2.319960, 2.849406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.535797, 2.385719, 2.813934>,  <1.155675, 2.495319, 2.754814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.535797, 2.385719, 2.813934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086492, 0.688431, 0.720126,
		-0.299064, -0.671556, 0.677918,
		0.950305, -0.273998, 0.147801,
		1.820889, 2.303520, 2.858275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.260245, 2.522766, 3.474612>,  <1.155675, 2.495319, 2.754814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.260245, 2.522766, 3.474612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.595324, 2.582169, 3.264389>,  <1.796371, 2.617810, 3.138256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.595324, 2.582169, 3.264389>,  <1.260245, 2.522766, 3.474612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.595324, 2.582169, 3.264389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274825, 0.716971, 0.640644,
		0.471947, -0.681102, 0.559792,
		0.837698, 0.148505, -0.525556,
		1.846633, 2.626720, 3.106722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.788136, 2.547963, 3.922138>,  <1.260245, 2.522766, 3.474612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.788136, 2.547963, 3.922138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.970123, 2.727455, 3.614464>,  <2.079316, 2.835150, 3.429859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.970123, 2.727455, 3.614464>,  <1.788136, 2.547963, 3.922138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.970123, 2.727455, 3.614464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448882, 0.630431, 0.633294,
		0.769096, -0.633402, 0.085399,
		0.454968, 0.448730, -0.769185,
		2.106614, 2.862074, 3.383708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.434312, 2.811721, 4.222096>,  <1.788136, 2.547963, 3.922138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.434312, 2.811721, 4.222096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.383173, 3.017975, 3.883209>,  <2.352490, 3.141727, 3.679877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.383173, 3.017975, 3.883209>,  <2.434312, 2.811721, 4.222096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.383173, 3.017975, 3.883209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434280, 0.797085, 0.419590,
		0.891659, -0.314287, -0.325835,
		-0.127847, 0.515635, -0.847217,
		2.344819, 3.172665, 3.629044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.072643, 3.191324, 4.147829>,  <2.434312, 2.811721, 4.222096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.072643, 3.191324, 4.147829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.790699, 3.380104, 3.936005>,  <2.621532, 3.493372, 3.808910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.790699, 3.380104, 3.936005>,  <3.072643, 3.191324, 4.147829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.790699, 3.380104, 3.936005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287303, 0.872516, 0.395187,
		0.648559, 0.126407, -0.750595,
		-0.704860, 0.471950, -0.529561,
		2.579241, 3.521689, 3.777136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.442907, 3.799842, 3.766166>,  <3.072643, 3.191324, 4.147829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.442907, 3.799842, 3.766166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.054729, 3.879883, 3.820129>,  <2.821823, 3.927907, 3.852507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.054729, 3.879883, 3.820129>,  <3.442907, 3.799842, 3.766166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.054729, 3.879883, 3.820129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239959, 0.859622, 0.451077,
		-0.025707, 0.470117, -0.882230,
		-0.970443, 0.200103, 0.134907,
		2.763597, 3.939914, 3.860601>
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
