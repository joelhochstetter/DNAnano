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
	<3.736330, -0.373251, 2.792111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.360274, -0.508034, 2.771738>,  <3.134640, -0.588903, 2.759514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.360274, -0.508034, 2.771738>,  <3.736330, -0.373251, 2.792111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.360274, -0.508034, 2.771738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339693, 0.938558, 0.060975,
		0.027258, 0.074627, -0.996839,
		-0.940141, -0.336957, -0.050933,
		3.078231, -0.609121, 2.756458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.365597, -0.031740, 2.251654>,  <3.736330, -0.373251, 2.792111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.365597, -0.031740, 2.251654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.095156, -0.181717, 2.505363>,  <2.932891, -0.271703, 2.657589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.095156, -0.181717, 2.505363>,  <3.365597, -0.031740, 2.251654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.095156, -0.181717, 2.505363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410204, 0.906638, 0.098692,
		-0.612060, -0.193455, -0.766784,
		-0.676103, -0.374943, 0.634273,
		2.892325, -0.294200, 2.695645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.629385, 0.121518, 2.128718>,  <3.365597, -0.031740, 2.251654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.629385, 0.121518, 2.128718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.635725, 0.079071, 2.526409>,  <2.639529, 0.053603, 2.765024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.635725, 0.079071, 2.526409>,  <2.629385, 0.121518, 2.128718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.635725, 0.079071, 2.526409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487048, 0.867589, 0.100365,
		-0.873231, -0.485828, -0.037934,
		0.015849, -0.106118, 0.994227,
		2.640480, 0.047236, 2.824677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.977387, 0.314544, 2.268334>,  <2.629385, 0.121518, 2.128718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.977387, 0.314544, 2.268334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.177898, 0.318207, 2.614429>,  <2.298204, 0.320405, 2.822087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.177898, 0.318207, 2.614429>,  <1.977387, 0.314544, 2.268334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.177898, 0.318207, 2.614429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497351, 0.821311, 0.279448,
		-0.708071, -0.570408, 0.416257,
		0.501276, 0.009157, 0.865239,
		2.328280, 0.320954, 2.874001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.428417, 0.394641, 2.794235>,  <1.977387, 0.314544, 2.268334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.428417, 0.394641, 2.794235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.774102, 0.548203, 2.924314>,  <1.981513, 0.640339, 3.002362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.774102, 0.548203, 2.924314>,  <1.428417, 0.394641, 2.794235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.774102, 0.548203, 2.924314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462583, 0.860489, 0.213485,
		-0.197873, -0.334928, 0.921233,
		0.864213, 0.383903, 0.325199,
		2.033366, 0.663374, 3.021874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.204165, 0.698579, 3.324145>,  <1.428417, 0.394641, 2.794235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.204165, 0.698579, 3.324145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.552900, 0.861397, 3.215176>,  <1.762141, 0.959087, 3.149794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.552900, 0.861397, 3.215176>,  <1.204165, 0.698579, 3.324145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.552900, 0.861397, 3.215176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406253, 0.911653, 0.062019,
		0.273599, 0.056602, 0.960177,
		0.871838, 0.407043, -0.272423,
		1.814451, 0.983510, 3.133449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.282192, 1.353372, 3.737736>,  <1.204165, 0.698579, 3.324145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.282192, 1.353372, 3.737736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.524222, 1.413048, 3.424910>,  <1.669440, 1.448853, 3.237214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.524222, 1.413048, 3.424910>,  <1.282192, 1.353372, 3.737736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.524222, 1.413048, 3.424910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369276, 0.922827, -0.109662,
		0.705350, 0.355152, 0.613472,
		0.605076, 0.149190, -0.782065,
		1.705745, 1.457805, 3.190290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.588413, 1.992219, 3.835352>,  <1.282192, 1.353372, 3.737736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.588413, 1.992219, 3.835352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.607283, 1.923225, 3.441799>,  <1.618604, 1.881829, 3.205667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.607283, 1.923225, 3.441799>,  <1.588413, 1.992219, 3.835352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.607283, 1.923225, 3.441799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469603, 0.865511, -0.174249,
		0.881617, 0.470254, -0.040170,
		0.047174, -0.172485, -0.983882,
		1.621435, 1.871480, 3.146635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.598238, 3.272638, 2.571414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.590015, 3.017181, 2.263721>,  <0.585082, 2.863908, 2.079106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.590015, 3.017181, 2.263721>,  <0.598238, 3.272638, 2.571414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.590015, 3.017181, 2.263721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455018, -0.691069, 0.561589,
		-0.890245, -0.338469, 0.304800,
		-0.020557, -0.638641, -0.769230,
		0.583848, 2.825589, 2.032953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.802836, 2.633667, 2.819316>,  <0.598238, 3.272638, 2.571414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.802836, 2.633667, 2.819316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.868553, 2.544746, 2.434902>,  <0.907984, 2.491394, 2.204254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.868553, 2.544746, 2.434902>,  <0.802836, 2.633667, 2.819316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.868553, 2.544746, 2.434902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722732, -0.635929, 0.270654,
		-0.671317, -0.739037, 0.056186,
		0.164293, -0.222302, -0.961036,
		0.917841, 2.478056, 2.146591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.623873, 1.912101, 2.586866>,  <0.802836, 2.633667, 2.819316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.623873, 1.912101, 2.586866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.951248, 2.101006, 2.455944>,  <1.147673, 2.214349, 2.377391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.951248, 2.101006, 2.455944>,  <0.623873, 1.912101, 2.586866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.951248, 2.101006, 2.455944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574583, -0.676555, 0.460573,
		-0.003929, -0.565014, -0.825072,
		0.818437, 0.472263, -0.327305,
		1.196779, 2.242684, 2.357752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.109013, 1.496210, 2.177180>,  <0.623873, 1.912101, 2.586866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.109013, 1.496210, 2.177180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.303833, 1.783607, 2.375795>,  <1.420725, 1.956046, 2.494965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.303833, 1.783607, 2.375795>,  <1.109013, 1.496210, 2.177180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.303833, 1.783607, 2.375795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627796, -0.683255, 0.372874,
		0.607170, 0.130117, -0.783846,
		0.487049, 0.718493, 0.496539,
		1.449948, 1.999155, 2.524757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.894731, 1.516694, 1.934200>,  <1.109013, 1.496210, 2.177180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.894731, 1.516694, 1.934200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.836834, 1.664185, 2.301479>,  <1.802096, 1.752679, 2.521847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.836834, 1.664185, 2.301479>,  <1.894731, 1.516694, 1.934200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.836834, 1.664185, 2.301479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620327, -0.689145, 0.374531,
		0.770872, 0.623794, -0.128983,
		-0.144742, 0.368727, 0.918199,
		1.793411, 1.774803, 2.576939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.545947, 1.527547, 2.280983>,  <1.894731, 1.516694, 1.934200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.545947, 1.527547, 2.280983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.264297, 1.504128, 2.564047>,  <2.095308, 1.490076, 2.733885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.264297, 1.504128, 2.564047>,  <2.545947, 1.527547, 2.280983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.264297, 1.504128, 2.564047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547084, -0.680052, 0.488086,
		0.452669, 0.730823, 0.510871,
		-0.704123, -0.058548, 0.707660,
		2.053061, 1.486563, 2.776345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.945171, 1.598927, 2.794972>,  <2.545947, 1.527547, 2.280983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.945171, 1.598927, 2.794972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.617214, 1.392441, 2.894007>,  <2.420440, 1.268549, 2.953428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.617214, 1.392441, 2.894007>,  <2.945171, 1.598927, 2.794972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.617214, 1.392441, 2.894007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570616, -0.772027, 0.279950,
		0.046629, 0.370806, 0.927539,
		-0.819892, -0.516215, 0.247586,
		2.371247, 1.237576, 2.968283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.023749, 1.376531, 3.528535>,  <2.945171, 1.598927, 2.794972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.023749, 1.376531, 3.528535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.754997, 1.143097, 3.346104>,  <2.593746, 1.003036, 3.236645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.754997, 1.143097, 3.346104>,  <3.023749, 1.376531, 3.528535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.754997, 1.143097, 3.346104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538588, -0.807657, 0.240026,
		-0.508430, -0.084369, 0.856960,
		-0.671879, -0.583586, -0.456078,
		2.553434, 0.968021, 3.209280>
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
