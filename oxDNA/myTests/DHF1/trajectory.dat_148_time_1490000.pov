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
	<1.414777, 4.759263, -0.252240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.414951, 4.890434, 0.125641>,  <1.415056, 4.969137, 0.352369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.414951, 4.890434, 0.125641>,  <1.414777, 4.759263, -0.252240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.414951, 4.890434, 0.125641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287280, -0.904839, 0.314223,
		0.957847, -0.271531, 0.093813,
		0.000436, 0.327928, 0.944703,
		1.415082, 4.988813, 0.409052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.846751, 4.270249, 0.215442>,  <1.414777, 4.759263, -0.252240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.846751, 4.270249, 0.215442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.567581, 4.465843, 0.424744>,  <1.400079, 4.583200, 0.550325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.567581, 4.465843, 0.424744>,  <1.846751, 4.270249, 0.215442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.567581, 4.465843, 0.424744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266453, -0.855470, 0.444042,
		0.664758, 0.170486, 0.727346,
		-0.697925, 0.488984, 0.523254,
		1.358204, 4.612538, 0.581720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.817930, 3.981946, 0.838311>,  <1.846751, 4.270249, 0.215442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.817930, 3.981946, 0.838311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.454548, 4.148888, 0.847458>,  <1.236519, 4.249053, 0.852946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.454548, 4.148888, 0.847458>,  <1.817930, 3.981946, 0.838311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.454548, 4.148888, 0.847458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333258, -0.756251, 0.563049,
		0.252285, 0.503884, 0.826107,
		-0.908456, 0.417355, 0.022867,
		1.182011, 4.274094, 0.854318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.563047, 4.108002, 1.568783>,  <1.817930, 3.981946, 0.838311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.563047, 4.108002, 1.568783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.284233, 4.028664, 1.293159>,  <1.116945, 3.981061, 1.127785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.284233, 4.028664, 1.293159>,  <1.563047, 4.108002, 1.568783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.284233, 4.028664, 1.293159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407770, -0.680808, 0.608461,
		-0.589802, 0.705095, 0.393667,
		-0.697035, -0.198346, -0.689059,
		1.075123, 3.969160, 1.086442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.876766, 4.085784, 1.812605>,  <1.563047, 4.108002, 1.568783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.876766, 4.085784, 1.812605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.869316, 3.826691, 1.507950>,  <0.864846, 3.671234, 1.325157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.869316, 3.826691, 1.507950>,  <0.876766, 4.085784, 1.812605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.869316, 3.826691, 1.507950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523984, -0.642455, 0.559189,
		-0.851524, 0.409501, -0.327437,
		-0.018624, -0.647735, -0.761638,
		0.863729, 3.632370, 1.279458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.234827, 3.804641, 1.754275>,  <0.876766, 4.085784, 1.812605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.234827, 3.804641, 1.754275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.425137, 3.524010, 1.542076>,  <0.539322, 3.355631, 1.414757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.425137, 3.524010, 1.542076>,  <0.234827, 3.804641, 1.754275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.425137, 3.524010, 1.542076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475921, -0.712557, 0.515521,
		-0.739690, 0.007206, -0.672910,
		0.475772, -0.701577, -0.530501,
		0.567869, 3.313537, 1.382927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.283931, 3.273956, 1.595662>,  <0.234827, 3.804641, 1.754275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.283931, 3.273956, 1.595662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.076008, 3.103508, 1.558357>,  <0.291971, 3.001239, 1.535975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.076008, 3.103508, 1.558357>,  <-0.283931, 3.273956, 1.595662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.076008, 3.103508, 1.558357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364625, -0.852141, 0.375373,
		-0.239425, -0.303773, -0.922170,
		0.899847, -0.426120, -0.093260,
		0.345962, 2.975672, 1.530379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.501114, 2.580345, 1.439905>,  <-0.283931, 3.273956, 1.595662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.501114, 2.580345, 1.439905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.129414, 2.549385, 1.584404>,  <0.093607, 2.530809, 1.671104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.129414, 2.549385, 1.584404>,  <-0.501114, 2.580345, 1.439905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.129414, 2.549385, 1.584404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303477, -0.717562, 0.626902,
		0.210696, -0.692180, -0.690285,
		0.929252, -0.077400, 0.361249,
		0.149362, 2.526165, 1.692779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.571700, 0.957045, 2.286099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.177725, 0.893677, 2.313820>,  <0.058660, 0.855656, 2.330452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.177725, 0.893677, 2.313820>,  <-0.571700, 0.957045, 2.286099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.177725, 0.893677, 2.313820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172741, 0.919490, -0.353126,
		-0.007780, 0.359778, 0.933006,
		0.984937, -0.158421, 0.069302,
		0.117756, 0.846150, 2.334610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.317206, 1.559050, 2.755010>,  <-0.571700, 0.957045, 2.286099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.317206, 1.559050, 2.755010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.060493, 1.387306, 2.500839>,  <0.093534, 1.284260, 2.348337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.060493, 1.387306, 2.500839>,  <-0.317206, 1.559050, 2.755010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.060493, 1.387306, 2.500839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324941, 0.902771, -0.281813,
		0.694644, -0.025615, 0.718897,
		0.641781, -0.429359, -0.635428,
		0.132041, 1.258499, 2.310211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.101439, 2.016443, 2.816292>,  <-0.317206, 1.559050, 2.755010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.101439, 2.016443, 2.816292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.227932, 1.835403, 2.482788>,  <0.303827, 1.726780, 2.282686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.227932, 1.835403, 2.482788>,  <0.101439, 2.016443, 2.816292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.227932, 1.835403, 2.482788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438518, 0.849071, -0.294587,
		0.841249, -0.272460, 0.466975,
		0.316231, -0.452598, -0.833758,
		0.322801, 1.699624, 2.232661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.821051, 2.187480, 2.630969>,  <0.101439, 2.016443, 2.816292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.821051, 2.187480, 2.630969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.629972, 2.103157, 2.289825>,  <0.515325, 2.052563, 2.085140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.629972, 2.103157, 2.289825>,  <0.821051, 2.187480, 2.630969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.629972, 2.103157, 2.289825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359635, 0.838792, -0.408767,
		0.801540, -0.501985, -0.324876,
		-0.477698, -0.210807, -0.852857,
		0.486664, 2.039915, 2.033968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.316612, 2.431666, 2.134659>,  <0.821051, 2.187480, 2.630969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.316612, 2.431666, 2.134659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.965628, 2.418053, 1.943283>,  <0.755037, 2.409885, 1.828458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.965628, 2.418053, 1.943283>,  <1.316612, 2.431666, 2.134659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.965628, 2.418053, 1.943283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218059, 0.860134, -0.461107,
		0.427215, -0.508931, -0.747313,
		-0.877461, -0.034034, -0.478439,
		0.702389, 2.407843, 1.799752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.460823, 2.362392, 1.434231>,  <1.316612, 2.431666, 2.134659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.460823, 2.362392, 1.434231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.105299, 2.545204, 1.447739>,  <0.891985, 2.654891, 1.455843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.105299, 2.545204, 1.447739>,  <1.460823, 2.362392, 1.434231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.105299, 2.545204, 1.447739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364532, 0.749731, -0.552286,
		-0.277728, -0.478568, -0.832970,
		-0.888810, 0.457030, 0.033768,
		0.838656, 2.682313, 1.457869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.355197, 2.531727, 0.743814>,  <1.460823, 2.362392, 1.434231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.355197, 2.531727, 0.743814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.111849, 2.777580, 0.944656>,  <0.965840, 2.925092, 1.065162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.111849, 2.777580, 0.944656>,  <1.355197, 2.531727, 0.743814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.111849, 2.777580, 0.944656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276698, 0.757217, -0.591659,
		-0.743857, -0.221016, -0.630736,
		-0.608370, 0.614634, 0.502107,
		0.929338, 2.961970, 1.095288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.970441, 2.870586, 0.245590>,  <1.355197, 2.531727, 0.743814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.970441, 2.870586, 0.245590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.010139, 3.084572, 0.581200>,  <1.033959, 3.212963, 0.782566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.010139, 3.084572, 0.581200>,  <0.970441, 2.870586, 0.245590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.010139, 3.084572, 0.581200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623651, 0.623591, -0.471374,
		-0.775377, 0.570041, -0.271742,
		0.099247, 0.534964, 0.839025,
		1.039913, 3.245061, 0.832907>
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
