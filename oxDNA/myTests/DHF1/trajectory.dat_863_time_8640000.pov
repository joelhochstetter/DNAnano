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
	<0.310206, 3.535328, 3.706134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.460068, 3.201477, 3.867643>,  <0.549985, 3.001167, 3.964549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.460068, 3.201477, 3.867643>,  <0.310206, 3.535328, 3.706134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.460068, 3.201477, 3.867643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420122, 0.541040, 0.728542,
		-0.826518, -0.103316, 0.553347,
		0.374653, -0.834626, 0.403774,
		0.572464, 2.951089, 3.988775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.203997, 3.497465, 4.483936>,  <0.310206, 3.535328, 3.706134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.203997, 3.497465, 4.483936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.529831, 3.287903, 4.384356>,  <0.725331, 3.162166, 4.324607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.529831, 3.287903, 4.384356>,  <0.203997, 3.497465, 4.483936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.529831, 3.287903, 4.384356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506826, 0.434138, 0.744749,
		-0.282099, -0.732835, 0.619171,
		0.814584, -0.523905, -0.248950,
		0.774206, 3.130731, 4.309670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.391234, 3.315183, 5.154774>,  <0.203997, 3.497465, 4.483936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.391234, 3.315183, 5.154774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.715851, 3.319336, 4.921093>,  <0.910621, 3.321827, 4.780884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.715851, 3.319336, 4.921093>,  <0.391234, 3.315183, 5.154774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.715851, 3.319336, 4.921093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479580, 0.559316, 0.676143,
		0.333773, -0.828889, 0.448930,
		0.811541, 0.010380, -0.584203,
		0.959313, 3.322450, 4.745832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.013954, 3.225223, 5.561596>,  <0.391234, 3.315183, 5.154774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.013954, 3.225223, 5.561596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.140419, 3.403580, 5.226641>,  <1.216298, 3.510594, 5.025667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.140419, 3.403580, 5.226641>,  <1.013954, 3.225223, 5.561596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.140419, 3.403580, 5.226641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591470, 0.597482, 0.541460,
		0.741758, -0.666480, -0.074831,
		0.316162, 0.445893, -0.837390,
		1.235268, 3.537347, 4.975424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.823657, 3.257733, 5.576294>,  <1.013954, 3.225223, 5.561596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.823657, 3.257733, 5.576294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.709023, 3.541756, 5.319019>,  <1.640242, 3.712169, 5.164654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.709023, 3.541756, 5.319019>,  <1.823657, 3.257733, 5.576294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.709023, 3.541756, 5.319019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681032, 0.623174, 0.384513,
		0.673843, -0.327835, -0.662163,
		-0.286586, 0.710056, -0.643187,
		1.623047, 3.754772, 5.126063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.388036, 3.587668, 5.279740>,  <1.823657, 3.257733, 5.576294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.388036, 3.587668, 5.279740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.096428, 3.858185, 5.237484>,  <1.921463, 4.020494, 5.212131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.096428, 3.858185, 5.237484>,  <2.388036, 3.587668, 5.279740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.096428, 3.858185, 5.237484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596357, 0.703298, 0.386951,
		0.335988, 0.219096, -0.916029,
		-0.729021, 0.676291, -0.105640,
		1.877722, 4.061072, 5.205792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.768427, 4.190800, 5.209857>,  <2.388036, 3.587668, 5.279740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.768427, 4.190800, 5.209857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.396210, 4.316422, 5.285181>,  <2.172879, 4.391795, 5.330376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.396210, 4.316422, 5.285181>,  <2.768427, 4.190800, 5.209857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.396210, 4.316422, 5.285181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366182, 0.799952, 0.475382,
		-0.001343, 0.511319, -0.859390,
		-0.930542, 0.314054, 0.188310,
		2.117047, 4.410638, 5.341674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.784715, 4.799162, 5.025012>,  <2.768427, 4.190800, 5.209857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.784715, 4.799162, 5.025012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.473892, 4.782372, 5.276224>,  <2.287399, 4.772297, 5.426951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.473892, 4.782372, 5.276224>,  <2.784715, 4.799162, 5.025012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.473892, 4.782372, 5.276224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308733, 0.844086, 0.438410,
		-0.548513, 0.534563, -0.642943,
		-0.777057, -0.041976, 0.628029,
		2.240775, 4.769779, 5.464633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.124888, 5.195977, 1.369025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.769096, 5.373421, 1.412909>,  <2.555621, 5.479887, 1.439239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.769096, 5.373421, 1.412909>,  <3.124888, 5.195977, 1.369025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.769096, 5.373421, 1.412909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376012, -0.574053, -0.727378,
		-0.259691, -0.688241, 0.677410,
		-0.889481, 0.443608, 0.109710,
		2.502252, 5.506503, 1.445822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.623879, 4.731761, 1.242525>,  <3.124888, 5.195977, 1.369025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.623879, 4.731761, 1.242525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.399590, 5.059570, 1.195246>,  <2.265016, 5.256256, 1.166878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.399590, 5.059570, 1.195246>,  <2.623879, 4.731761, 1.242525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.399590, 5.059570, 1.195246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583214, -0.492237, -0.646192,
		-0.587750, -0.293401, 0.753967,
		-0.560724, 0.819524, -0.118197,
		2.231373, 5.305428, 1.159787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.931871, 4.563597, 1.444889>,  <2.623879, 4.731761, 1.242525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.931871, 4.563597, 1.444889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.946106, 4.858620, 1.175150>,  <1.954647, 5.035633, 1.013307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.946106, 4.858620, 1.175150>,  <1.931871, 4.563597, 1.444889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.946106, 4.858620, 1.175150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412743, -0.603689, -0.682057,
		-0.910152, 0.302605, 0.282938,
		0.035587, 0.737556, -0.674347,
		1.956782, 5.079886, 0.972846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.279071, 4.711486, 1.249470>,  <1.931871, 4.563597, 1.444889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.279071, 4.711486, 1.249470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.566612, 4.770988, 0.977846>,  <1.739137, 4.806690, 0.814872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.566612, 4.770988, 0.977846>,  <1.279071, 4.711486, 1.249470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.566612, 4.770988, 0.977846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509057, -0.552580, -0.659936,
		-0.473405, 0.820077, -0.321498,
		0.718852, 0.148756, -0.679061,
		1.782268, 4.815615, 0.774128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.903720, 4.892876, 0.686576>,  <1.279071, 4.711486, 1.249470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.903720, 4.892876, 0.686576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.261719, 4.757278, 0.570602>,  <1.476518, 4.675920, 0.501018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.261719, 4.757278, 0.570602>,  <0.903720, 4.892876, 0.686576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.261719, 4.757278, 0.570602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442762, -0.596095, -0.669800,
		0.054230, 0.727841, -0.683598,
		0.894998, -0.338995, -0.289935,
		1.530218, 4.655580, 0.483622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.967290, 4.946220, -0.006656>,  <0.903720, 4.892876, 0.686576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.967290, 4.946220, -0.006656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.252060, 4.677238, 0.074308>,  <1.422922, 4.515850, 0.122887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.252060, 4.677238, 0.074308>,  <0.967290, 4.946220, -0.006656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.252060, 4.677238, 0.074308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278659, -0.535074, -0.797525,
		0.644603, 0.511373, -0.568317,
		0.711924, -0.672454, 0.202412,
		1.465637, 4.475502, 0.135032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.212774, 4.684030, -0.706816>,  <0.967290, 4.946220, -0.006656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.212774, 4.684030, -0.706816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.342148, 4.412666, -0.442951>,  <1.419772, 4.249848, -0.284632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.342148, 4.412666, -0.442951>,  <1.212774, 4.684030, -0.706816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.342148, 4.412666, -0.442951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380171, -0.731556, -0.565946,
		0.866522, -0.067738, -0.494521,
		0.323434, -0.678408, 0.659662,
		1.439178, 4.209144, -0.245053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.764388, 4.173629, -1.091311>,  <1.212774, 4.684030, -0.706816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.764388, 4.173629, -1.091311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.557289, 4.015900, -0.787615>,  <1.433030, 3.921262, -0.605397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.557289, 4.015900, -0.787615>,  <1.764388, 4.173629, -1.091311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.557289, 4.015900, -0.787615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415279, -0.660052, -0.625999,
		0.747985, -0.639406, 0.177985,
		-0.517747, -0.394324, 0.759241,
		1.401965, 3.897602, -0.559843>
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
