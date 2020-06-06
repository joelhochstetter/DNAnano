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
	<24.694305, 35.609428, 35.145977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.697649, 35.214024, 35.085617>,  <24.699656, 34.976780, 35.049400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.697649, 35.214024, 35.085617>,  <24.694305, 35.609428, 35.145977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.697649, 35.214024, 35.085617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590964, 0.126616, -0.796699,
		0.806655, -0.082517, 0.585235,
		0.008359, -0.988514, -0.150900,
		24.700157, 34.917469, 35.040348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.380930, 35.448635, 35.108135>,  <24.694305, 35.609428, 35.145977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.380930, 35.448635, 35.108135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119751, 35.230019, 34.898392>,  <24.963043, 35.098850, 34.772545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119751, 35.230019, 34.898392>,  <25.380930, 35.448635, 35.108135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.119751, 35.230019, 34.898392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414575, 0.321498, -0.851332,
		0.633866, -0.773263, 0.016659,
		-0.652948, -0.546537, -0.524362,
		24.923866, 35.066059, 34.741081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.714233, 34.981789, 34.565041>,  <25.380930, 35.448635, 35.108135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.714233, 34.981789, 34.565041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379042, 35.171574, 34.457207>,  <25.177927, 35.285446, 34.392506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379042, 35.171574, 34.457207>,  <25.714233, 34.981789, 34.565041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379042, 35.171574, 34.457207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485133, 0.421501, -0.766148,
		-0.249877, -0.772801, -0.583386,
		-0.837978, 0.474463, -0.269588,
		25.127647, 35.313911, 34.376331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795462, 34.734486, 35.252224>,  <25.714233, 34.981789, 34.565041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.795462, 34.734486, 35.252224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920910, 35.064980, 35.439400>,  <25.996178, 35.263275, 35.551704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920910, 35.064980, 35.439400>,  <25.795462, 34.734486, 35.252224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920910, 35.064980, 35.439400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377227, -0.560661, 0.737129,
		0.871403, -0.054656, -0.487514,
		0.313619, 0.826239, 0.467944,
		26.014996, 35.312851, 35.579784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568550, 34.743298, 35.335976>,  <25.795462, 34.734486, 35.252224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568550, 34.743298, 35.335976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352114, 34.916191, 35.624531>,  <26.222252, 35.019928, 35.797665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352114, 34.916191, 35.624531>,  <26.568550, 34.743298, 35.335976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352114, 34.916191, 35.624531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416061, -0.607877, 0.676298,
		0.730830, 0.666080, 0.149083,
		-0.541092, 0.432231, 0.721384,
		26.189787, 35.045860, 35.840946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107113, 35.000065, 35.753159>,  <26.568550, 34.743298, 35.335976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107113, 35.000065, 35.753159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455000, 34.999126, 35.950577>,  <27.663733, 34.998562, 36.069027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455000, 34.999126, 35.950577>,  <27.107113, 35.000065, 35.753159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455000, 34.999126, 35.950577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227083, -0.885952, -0.404380,
		0.438204, 0.463772, -0.769995,
		0.869718, -0.002348, 0.493543,
		27.715916, 34.998421, 36.098640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695045, 34.997734, 35.264420>,  <27.107113, 35.000065, 35.753159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695045, 34.997734, 35.264420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.779270, 34.811169, 35.608074>,  <27.829805, 34.699230, 35.814266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.779270, 34.811169, 35.608074>,  <27.695045, 34.997734, 35.264420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779270, 34.811169, 35.608074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085579, -0.866675, -0.491478,
		0.973828, 0.177010, -0.142572,
		0.210560, -0.466414, 0.859141,
		27.842438, 34.671246, 35.865818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142883, 34.481895, 35.098053>,  <27.695045, 34.997734, 35.264420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142883, 34.481895, 35.098053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023054, 34.371662, 35.463413>,  <27.951157, 34.305523, 35.682629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023054, 34.371662, 35.463413>,  <28.142883, 34.481895, 35.098053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023054, 34.371662, 35.463413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111042, -0.940797, -0.320267,
		0.947589, -0.197370, 0.251237,
		-0.299574, -0.275584, 0.913405,
		27.933182, 34.288986, 35.737434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343615, 33.814018, 35.023354>,  <28.142883, 34.481895, 35.098053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343615, 33.814018, 35.023354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145985, 33.806530, 35.371040>,  <28.027407, 33.802036, 35.579651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145985, 33.806530, 35.371040>,  <28.343615, 33.814018, 35.023354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145985, 33.806530, 35.371040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234361, -0.959893, -0.153886,
		0.837235, -0.279742, 0.469874,
		-0.494077, -0.018719, 0.869217,
		27.997761, 33.800915, 35.631805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546827, 33.269039, 35.334732>,  <28.343615, 33.814018, 35.023354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546827, 33.269039, 35.334732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181307, 33.345753, 35.477947>,  <27.961994, 33.391781, 35.563877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181307, 33.345753, 35.477947>,  <28.546827, 33.269039, 35.334732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181307, 33.345753, 35.477947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277519, -0.938461, -0.205604,
		0.296571, -0.287243, 0.910789,
		-0.913799, 0.191785, 0.358036,
		27.907167, 33.403290, 35.585358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415726, 32.629070, 35.834091>,  <28.546827, 33.269039, 35.334732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415726, 32.629070, 35.834091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073109, 32.800873, 35.719650>,  <27.867538, 32.903954, 35.650986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073109, 32.800873, 35.719650>,  <28.415726, 32.629070, 35.834091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073109, 32.800873, 35.719650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407681, -0.903062, -0.135186,
		-0.316428, 0.000844, 0.948616,
		-0.856545, 0.429510, -0.286098,
		27.816145, 32.929726, 35.633820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808208, 32.377831, 36.202034>,  <28.415726, 32.629070, 35.834091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808208, 32.377831, 36.202034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661327, 32.526768, 35.861088>,  <27.573198, 32.616131, 35.656521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661327, 32.526768, 35.861088>,  <27.808208, 32.377831, 36.202034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661327, 32.526768, 35.861088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468411, -0.865725, -0.176385,
		-0.803587, 0.334486, 0.492308,
		-0.367205, 0.372343, -0.852362,
		27.551167, 32.638470, 35.605381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135645, 32.251953, 36.287216>,  <27.808208, 32.377831, 36.202034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135645, 32.251953, 36.287216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221476, 32.291203, 35.898510>,  <27.272974, 32.314754, 35.665287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221476, 32.291203, 35.898510>,  <27.135645, 32.251953, 36.287216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221476, 32.291203, 35.898510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377415, -0.909328, -0.175159,
		-0.900842, 0.404344, -0.158085,
		0.214575, 0.098127, -0.971766,
		27.285849, 32.320641, 35.606979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730211, 31.747950, 35.946640>,  <27.135645, 32.251953, 36.287216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730211, 31.747950, 35.946640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942711, 31.859005, 35.626469>,  <27.070210, 31.925638, 35.434364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942711, 31.859005, 35.626469>,  <26.730211, 31.747950, 35.946640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942711, 31.859005, 35.626469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218344, -0.867997, -0.445989,
		-0.818597, 0.411700, -0.400501,
		0.531248, 0.277638, -0.800433,
		27.102085, 31.942297, 35.386337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217773, 31.614929, 35.308266>,  <26.730211, 31.747950, 35.946640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217773, 31.614929, 35.308266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608282, 31.638803, 35.224998>,  <26.842587, 31.653128, 35.175037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608282, 31.638803, 35.224998>,  <26.217773, 31.614929, 35.308266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608282, 31.638803, 35.224998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036341, -0.902480, -0.429196,
		-0.213482, 0.426576, -0.878896,
		0.976271, 0.059686, -0.208165,
		26.901163, 31.656710, 35.162548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.212729, 31.213861, 34.692345>,  <26.217773, 31.614929, 35.308266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.212729, 31.213861, 34.692345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592222, 31.205132, 34.818474>,  <26.819918, 31.199894, 34.894154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592222, 31.205132, 34.818474>,  <26.212729, 31.213861, 34.692345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592222, 31.205132, 34.818474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165101, -0.816485, -0.553257,
		0.269534, 0.576954, -0.771022,
		0.948732, -0.021825, 0.315326,
		26.876842, 31.198584, 34.913071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626867, 31.094400, 33.952362>,  <26.212729, 31.213861, 34.692345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626867, 31.094400, 33.952362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875887, 30.997852, 34.250134>,  <27.025299, 30.939924, 34.428795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875887, 30.997852, 34.250134>,  <26.626867, 31.094400, 33.952362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875887, 30.997852, 34.250134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146176, -0.898641, -0.413614,
		0.768807, 0.366313, -0.524166,
		0.622550, -0.241369, 0.744428,
		27.062653, 30.925442, 34.473461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154406, 30.712761, 33.629112>,  <26.626867, 31.094400, 33.952362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154406, 30.712761, 33.629112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147459, 30.611912, 34.016129>,  <27.143291, 30.551403, 34.248337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147459, 30.611912, 34.016129>,  <27.154406, 30.712761, 33.629112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147459, 30.611912, 34.016129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108764, -0.962420, -0.248835,
		0.993916, 0.100912, 0.044137,
		-0.017368, -0.252121, 0.967540,
		27.142248, 30.536276, 34.306389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738169, 30.277998, 33.673851>,  <27.154406, 30.712761, 33.629112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738169, 30.277998, 33.673851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522314, 30.212080, 34.004097>,  <27.392801, 30.172529, 34.202244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522314, 30.212080, 34.004097>,  <27.738169, 30.277998, 33.673851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522314, 30.212080, 34.004097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264114, -0.964287, -0.019846,
		0.799398, 0.207346, 0.563888,
		-0.539635, -0.164796, 0.825612,
		27.360424, 30.162642, 34.251781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153696, 29.813095, 34.096561>,  <27.738169, 30.277998, 33.673851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153696, 29.813095, 34.096561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786491, 29.736387, 34.235401>,  <27.566168, 29.690363, 34.318703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786491, 29.736387, 34.235401>,  <28.153696, 29.813095, 34.096561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786491, 29.736387, 34.235401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141160, -0.975990, -0.165886,
		0.370575, -0.103290, 0.923041,
		-0.918013, -0.191770, 0.347097,
		27.511087, 29.678856, 34.339531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197140, 29.351648, 34.542568>,  <28.153696, 29.813095, 34.096561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197140, 29.351648, 34.542568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812675, 29.286583, 34.453384>,  <27.581997, 29.247543, 34.399872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812675, 29.286583, 34.453384>,  <28.197140, 29.351648, 34.542568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812675, 29.286583, 34.453384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185763, -0.978759, -0.086737,
		-0.204118, -0.124787, 0.970960,
		-0.961160, -0.162663, -0.222963,
		27.524328, 29.237783, 34.386494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013264, 28.684193, 34.821087>,  <28.197140, 29.351648, 34.542568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013264, 28.684193, 34.821087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679537, 28.749554, 34.610485>,  <27.479300, 28.788771, 34.484123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679537, 28.749554, 34.610485>,  <28.013264, 28.684193, 34.821087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679537, 28.749554, 34.610485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063773, -0.977258, -0.202235,
		-0.547580, -0.135151, 0.825766,
		-0.834319, 0.163401, -0.526508,
		27.429241, 28.798574, 34.452534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475666, 28.260782, 35.089825>,  <28.013264, 28.684193, 34.821087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475666, 28.260782, 35.089825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350594, 28.352728, 34.721176>,  <27.275549, 28.407896, 34.499985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350594, 28.352728, 34.721176>,  <27.475666, 28.260782, 35.089825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350594, 28.352728, 34.721176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289027, -0.947292, -0.138208,
		-0.904816, 0.223159, 0.362640,
		-0.312684, 0.229865, -0.921624,
		27.256788, 28.421688, 34.444691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822037, 27.965549, 34.942245>,  <27.475666, 28.260782, 35.089825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822037, 27.965549, 34.942245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927843, 28.014668, 34.559631>,  <26.991327, 28.044138, 34.330063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927843, 28.014668, 34.559631>,  <26.822037, 27.965549, 34.942245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927843, 28.014668, 34.559631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278211, -0.939974, -0.197604,
		-0.923380, 0.318387, -0.214475,
		0.264515, 0.122795, -0.956532,
		27.007198, 28.051506, 34.272671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304632, 27.655617, 34.490650>,  <26.822037, 27.965549, 34.942245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304632, 27.655617, 34.490650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652424, 27.644346, 34.293385>,  <26.861099, 27.637583, 34.175026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652424, 27.644346, 34.293385>,  <26.304632, 27.655617, 34.490650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652424, 27.644346, 34.293385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295421, -0.829810, -0.473436,
		-0.395891, 0.557334, -0.729828,
		0.869481, -0.028178, -0.493163,
		26.913267, 27.635893, 34.145435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219872, 27.605747, 33.735703>,  <26.304632, 27.655617, 34.490650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219872, 27.605747, 33.735703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554501, 27.428669, 33.864803>,  <26.755278, 27.322422, 33.942265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554501, 27.428669, 33.864803>,  <26.219872, 27.605747, 33.735703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554501, 27.428669, 33.864803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207303, -0.801100, -0.561484,
		0.507123, 0.402814, -0.761949,
		0.836571, -0.442696, 0.322752,
		26.805471, 27.295860, 33.961628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423119, 27.152628, 33.181648>,  <26.219872, 27.605747, 33.735703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423119, 27.152628, 33.181648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635401, 27.042801, 33.502388>,  <26.762770, 26.976904, 33.694832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635401, 27.042801, 33.502388>,  <26.423119, 27.152628, 33.181648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635401, 27.042801, 33.502388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140845, -0.961489, -0.236014,
		0.835773, 0.012317, -0.548937,
		0.530703, -0.274569, 0.801852,
		26.794611, 26.960430, 33.742943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938845, 26.534105, 32.960705>,  <26.423119, 27.152628, 33.181648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938845, 26.534105, 32.960705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851473, 26.540747, 33.350990>,  <26.799049, 26.544731, 33.585159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851473, 26.540747, 33.350990>,  <26.938845, 26.534105, 32.960705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851473, 26.540747, 33.350990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188507, -0.981741, -0.025495,
		0.957472, -0.189498, 0.217571,
		-0.218430, 0.016603, 0.975711,
		26.785944, 26.545727, 33.643703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435343, 26.166145, 33.366497>,  <26.938845, 26.534105, 32.960705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435343, 26.166145, 33.366497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058399, 26.145765, 33.498775>,  <26.832233, 26.133537, 33.578144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058399, 26.145765, 33.498775>,  <27.435343, 26.166145, 33.366497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058399, 26.145765, 33.498775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046412, -0.958880, -0.279992,
		0.331369, -0.279202, 0.901244,
		-0.942359, -0.050952, 0.330701,
		26.775692, 26.130480, 33.597984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456026, 25.540510, 33.659439>,  <27.435343, 26.166145, 33.366497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456026, 25.540510, 33.659439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094868, 25.620152, 33.507050>,  <26.878174, 25.667936, 33.415615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094868, 25.620152, 33.507050>,  <27.456026, 25.540510, 33.659439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094868, 25.620152, 33.507050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042713, -0.923436, -0.381370,
		-0.427734, -0.328064, 0.842269,
		-0.902895, 0.199101, -0.380973,
		26.823999, 25.679882, 33.392757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238173, 25.514860, 33.938457>,  <27.456026, 25.540510, 33.659439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238173, 25.514860, 33.938457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171143, 25.395094, 34.314175>,  <28.130924, 25.323235, 34.539604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171143, 25.395094, 34.314175>,  <28.238173, 25.514860, 33.938457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171143, 25.395094, 34.314175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809008, 0.502727, 0.304586,
		-0.563405, 0.810935, 0.157984,
		-0.167576, -0.299416, 0.939291,
		28.120869, 25.305269, 34.595963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871456, 25.825333, 34.034409>,  <28.238173, 25.514860, 33.938457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871456, 25.825333, 34.034409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189808, 25.708033, 34.246288>,  <29.380819, 25.637651, 34.373417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189808, 25.708033, 34.246288>,  <28.871456, 25.825333, 34.034409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189808, 25.708033, 34.246288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378138, 0.924017, -0.056604,
		-0.472852, 0.245350, 0.846294,
		0.795878, -0.293251, 0.529700,
		29.428572, 25.620058, 34.405197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026716, 26.237619, 34.581055>,  <28.871456, 25.825333, 34.034409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026716, 26.237619, 34.581055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389076, 26.101423, 34.480328>,  <29.606491, 26.019705, 34.419891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389076, 26.101423, 34.480328>,  <29.026716, 26.237619, 34.581055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389076, 26.101423, 34.480328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377172, 0.919085, 0.114125,
		0.192585, -0.198365, 0.961022,
		0.905899, -0.340491, -0.251820,
		29.660847, 25.999275, 34.404781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391899, 26.221445, 35.165813>,  <29.026716, 26.237619, 34.581055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391899, 26.221445, 35.165813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655300, 26.281551, 34.870842>,  <29.813341, 26.317616, 34.693859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655300, 26.281551, 34.870842>,  <29.391899, 26.221445, 35.165813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655300, 26.281551, 34.870842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270015, 0.867451, 0.417876,
		0.702471, -0.474288, 0.530646,
		0.658503, 0.150264, -0.737424,
		29.852850, 26.326630, 34.649616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144499, 26.477346, 35.421158>,  <29.391899, 26.221445, 35.165813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144499, 26.477346, 35.421158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047577, 26.593552, 35.050884>,  <29.989424, 26.663275, 34.828720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047577, 26.593552, 35.050884>,  <30.144499, 26.477346, 35.421158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047577, 26.593552, 35.050884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299402, 0.929938, 0.213479,
		0.922847, -0.225425, -0.312308,
		-0.242303, 0.290514, -0.925684,
		29.974886, 26.680706, 34.773178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647497, 26.847446, 35.143677>,  <30.144499, 26.477346, 35.421158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647497, 26.847446, 35.143677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339426, 26.959822, 34.914627>,  <30.154583, 27.027246, 34.777195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339426, 26.959822, 34.914627>,  <30.647497, 26.847446, 35.143677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339426, 26.959822, 34.914627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218711, 0.959664, 0.176664,
		0.599162, 0.010823, -0.800555,
		-0.770176, 0.280940, -0.572627,
		30.108374, 27.044104, 34.742840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892673, 27.192091, 34.572899>,  <30.647497, 26.847446, 35.143677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892673, 27.192091, 34.572899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514486, 27.318039, 34.606243>,  <30.287575, 27.393608, 34.626247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514486, 27.318039, 34.606243>,  <30.892673, 27.192091, 34.572899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514486, 27.318039, 34.606243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317688, 0.947923, 0.022718,
		-0.071865, 0.047961, -0.996261,
		-0.945468, 0.314868, 0.083359,
		30.230846, 27.412498, 34.631252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773035, 27.760027, 33.956753>,  <30.892673, 27.192091, 34.572899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773035, 27.760027, 33.956753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504728, 27.808279, 34.249470>,  <30.343744, 27.837231, 34.425098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504728, 27.808279, 34.249470>,  <30.773035, 27.760027, 33.956753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504728, 27.808279, 34.249470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099534, 0.992400, -0.072355,
		-0.734960, 0.024305, -0.677675,
		-0.670766, 0.120630, 0.731794,
		30.303499, 27.844469, 34.469009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341059, 28.379925, 33.745102>,  <30.773035, 27.760027, 33.956753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341059, 28.379925, 33.745102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270784, 28.326294, 34.135212>,  <30.228621, 28.294115, 34.369278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270784, 28.326294, 34.135212>,  <30.341059, 28.379925, 33.745102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270784, 28.326294, 34.135212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135008, 0.978040, 0.158778,
		-0.975145, 0.159564, -0.153725,
		-0.175684, -0.134078, 0.975273,
		30.218079, 28.286070, 34.427795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894596, 28.948751, 33.884167>,  <30.341059, 28.379925, 33.745102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894596, 28.948751, 33.884167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053150, 28.851061, 34.238167>,  <30.148283, 28.792446, 34.450569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053150, 28.851061, 34.238167>,  <29.894596, 28.948751, 33.884167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053150, 28.851061, 34.238167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027077, 0.960438, 0.277173,
		-0.917684, -0.133830, 0.374092,
		0.396387, -0.244228, 0.885003,
		30.172066, 28.777792, 34.503666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453684, 29.355206, 34.383327>,  <29.894596, 28.948751, 33.884167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453684, 29.355206, 34.383327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786661, 29.244816, 34.575527>,  <29.986446, 29.178581, 34.690845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786661, 29.244816, 34.575527>,  <29.453684, 29.355206, 34.383327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786661, 29.244816, 34.575527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060077, 0.817085, 0.573378,
		-0.550846, -0.506171, 0.663596,
		0.832442, -0.275976, 0.480497,
		30.036394, 29.162024, 34.719677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402615, 29.315516, 34.990662>,  <29.453684, 29.355206, 34.383327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402615, 29.315516, 34.990662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799109, 29.354322, 35.026543>,  <30.037004, 29.377605, 35.048069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799109, 29.354322, 35.026543>,  <29.402615, 29.315516, 34.990662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799109, 29.354322, 35.026543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132061, 0.749295, 0.648935,
		-0.004254, -0.655092, 0.755537,
		0.991233, 0.097016, 0.089700,
		30.096478, 29.383427, 35.053452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485636, 29.616882, 35.688648>,  <29.402615, 29.315516, 34.990662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485636, 29.616882, 35.688648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860044, 29.648352, 35.551434>,  <30.084690, 29.667233, 35.469105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860044, 29.648352, 35.551434>,  <29.485636, 29.616882, 35.688648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860044, 29.648352, 35.551434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173785, 0.744252, 0.644893,
		0.306039, -0.663249, 0.682965,
		0.936023, 0.078673, -0.343033,
		30.140852, 29.671953, 35.448524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958838, 29.611431, 36.307343>,  <29.485636, 29.616882, 35.688648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958838, 29.611431, 36.307343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121721, 29.793951, 35.990868>,  <30.219452, 29.903463, 35.800983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121721, 29.793951, 35.990868>,  <29.958838, 29.611431, 36.307343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121721, 29.793951, 35.990868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069332, 0.848316, 0.524932,
		0.910701, -0.268610, 0.313803,
		0.407207, 0.456299, -0.791185,
		30.243883, 29.930841, 35.753513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492796, 30.006536, 36.582344>,  <29.958838, 29.611431, 36.307343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492796, 30.006536, 36.582344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463877, 30.205927, 36.236790>,  <30.446526, 30.325562, 36.029457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463877, 30.205927, 36.236790>,  <30.492796, 30.006536, 36.582344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463877, 30.205927, 36.236790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190922, 0.857050, 0.478554,
		0.978939, -0.130335, -0.157135,
		-0.072300, 0.498476, -0.863884,
		30.442186, 30.355469, 35.977623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008892, 30.514357, 36.680092>,  <30.492796, 30.006536, 36.582344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008892, 30.514357, 36.680092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759457, 30.618540, 36.385258>,  <30.609795, 30.681049, 36.208359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759457, 30.618540, 36.385258>,  <31.008892, 30.514357, 36.680092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759457, 30.618540, 36.385258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007514, 0.940825, 0.338809,
		0.781715, 0.216816, -0.584733,
		-0.623591, 0.260458, -0.737086,
		30.572380, 30.696678, 36.164131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304701, 31.036657, 36.230625>,  <31.008892, 30.514357, 36.680092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304701, 31.036657, 36.230625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909725, 31.073357, 36.179176>,  <30.672739, 31.095377, 36.148308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909725, 31.073357, 36.179176>,  <31.304701, 31.036657, 36.230625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909725, 31.073357, 36.179176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058826, 0.969072, 0.239663,
		0.146634, 0.229087, -0.962298,
		-0.987440, 0.091751, -0.128623,
		30.613493, 31.100882, 36.140591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181601, 31.585295, 35.878204>,  <31.304701, 31.036657, 36.230625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181601, 31.585295, 35.878204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847027, 31.534601, 36.091488>,  <30.646282, 31.504185, 36.219460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847027, 31.534601, 36.091488>,  <31.181601, 31.585295, 35.878204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847027, 31.534601, 36.091488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125915, 0.902436, 0.412012,
		-0.533404, 0.411761, -0.738873,
		-0.836436, -0.126734, 0.533210,
		30.596096, 31.496580, 36.251450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875378, 32.226276, 35.902088>,  <31.181601, 31.585295, 35.878204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875378, 32.226276, 35.902088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622595, 32.055492, 36.160801>,  <30.470924, 31.953022, 36.316029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622595, 32.055492, 36.160801>,  <30.875378, 32.226276, 35.902088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622595, 32.055492, 36.160801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199722, 0.896094, 0.396392,
		-0.748825, 0.121326, -0.651568,
		-0.631959, -0.426961, 0.646786,
		30.433006, 31.927404, 36.354836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205227, 32.445656, 35.741673>,  <30.875378, 32.226276, 35.902088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205227, 32.445656, 35.741673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207884, 32.357628, 36.131855>,  <30.209478, 32.304810, 36.365967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207884, 32.357628, 36.131855>,  <30.205227, 32.445656, 35.741673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207884, 32.357628, 36.131855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222695, 0.950659, 0.215995,
		-0.974865, -0.218666, -0.042693,
		0.006645, -0.220074, 0.975460,
		30.209877, 32.291607, 36.424492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579451, 32.843151, 36.020817>,  <30.205227, 32.445656, 35.741673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579451, 32.843151, 36.020817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853720, 32.769730, 36.302570>,  <30.018282, 32.725677, 36.471622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853720, 32.769730, 36.302570>,  <29.579451, 32.843151, 36.020817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853720, 32.769730, 36.302570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079894, 0.942858, 0.323473,
		-0.723510, -0.278073, 0.631829,
		0.685675, -0.183556, 0.704384,
		30.059422, 32.714664, 36.513885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385319, 33.253708, 36.629852>,  <29.579451, 32.843151, 36.020817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385319, 33.253708, 36.629852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758272, 33.177422, 36.752678>,  <29.982044, 33.131649, 36.826374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758272, 33.177422, 36.752678>,  <29.385319, 33.253708, 36.629852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758272, 33.177422, 36.752678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055832, 0.915276, 0.398940,
		-0.357127, -0.354822, 0.864038,
		0.932386, -0.190713, 0.307059,
		30.037989, 33.120209, 36.844795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327713, 33.370720, 37.319450>,  <29.385319, 33.253708, 36.629852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327713, 33.370720, 37.319450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709841, 33.421131, 37.212502>,  <29.939117, 33.451378, 37.148335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709841, 33.421131, 37.212502>,  <29.327713, 33.370720, 37.319450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709841, 33.421131, 37.212502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100909, 0.711151, 0.695760,
		0.277824, -0.691651, 0.666657,
		0.955318, 0.126027, -0.267369,
		29.996435, 33.458939, 37.132290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801327, 33.511608, 37.919701>,  <29.327713, 33.370720, 37.319450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801327, 33.511608, 37.919701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048929, 33.633213, 37.630035>,  <30.197491, 33.706177, 37.456238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048929, 33.633213, 37.630035>,  <29.801327, 33.511608, 37.919701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048929, 33.633213, 37.630035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178751, 0.843310, 0.506829,
		0.764773, -0.443175, 0.467672,
		0.619007, 0.304012, -0.724159,
		30.234631, 33.724419, 37.412788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270109, 33.728844, 38.279072>,  <29.801327, 33.511608, 37.919701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270109, 33.728844, 38.279072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350159, 33.896053, 37.924625>,  <30.398188, 33.996380, 37.711956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350159, 33.896053, 37.924625>,  <30.270109, 33.728844, 38.279072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350159, 33.896053, 37.924625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102498, 0.908383, 0.405382,
		0.974395, 0.009699, 0.224636,
		0.200123, 0.418026, -0.886117,
		30.410196, 34.021461, 37.658791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791063, 34.208675, 38.392231>,  <30.270109, 33.728844, 38.279072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791063, 34.208675, 38.392231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624548, 34.334164, 38.050873>,  <30.524639, 34.409454, 37.846058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624548, 34.334164, 38.050873>,  <30.791063, 34.208675, 38.392231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624548, 34.334164, 38.050873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214819, 0.878083, 0.427579,
		0.883492, 0.361322, -0.298142,
		-0.416286, 0.313716, -0.853398,
		30.499662, 34.428280, 37.794853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007084, 34.914974, 38.316189>,  <30.791063, 34.208675, 38.392231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007084, 34.914974, 38.316189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672907, 34.865788, 38.101933>,  <30.472401, 34.836273, 37.973377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672907, 34.865788, 38.101933>,  <31.007084, 34.914974, 38.316189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672907, 34.865788, 38.101933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415411, 0.779419, 0.468977,
		0.359821, 0.614316, -0.702243,
		-0.835442, -0.122972, -0.535645,
		30.422274, 34.828896, 37.941238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460409, 35.028263, 38.812389>,  <31.007084, 34.914974, 38.316189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460409, 35.028263, 38.812389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507446, 35.407536, 38.694321>,  <31.535669, 35.635098, 38.623478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507446, 35.407536, 38.694321>,  <31.460409, 35.028263, 38.812389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507446, 35.407536, 38.694321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447166, 0.214836, 0.868267,
		0.886687, -0.234092, -0.398731,
		0.117593, 0.948180, -0.295171,
		31.542725, 35.691990, 38.605770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276844, 35.306156, 38.779636>,  <31.460409, 35.028263, 38.812389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276844, 35.306156, 38.779636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018711, 35.608181, 38.825985>,  <31.863831, 35.789394, 38.853794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018711, 35.608181, 38.825985>,  <32.276844, 35.306156, 38.779636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018711, 35.608181, 38.825985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419838, 0.223852, 0.879560,
		0.638183, 0.616258, -0.461463,
		-0.645335, 0.755060, 0.115870,
		31.825111, 35.834698, 38.860744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826847, 35.815868, 38.507862>,  <32.276844, 35.306156, 38.779636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826847, 35.815868, 38.507862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986073, 36.181889, 38.481831>,  <33.081608, 36.401501, 38.466213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986073, 36.181889, 38.481831>,  <32.826847, 35.815868, 38.507862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986073, 36.181889, 38.481831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356817, -0.089088, 0.929916,
		0.845121, -0.393382, -0.361968,
		0.398060, 0.915048, -0.065076,
		33.105492, 36.456402, 38.462307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490807, 36.013367, 38.482796>,  <32.826847, 35.815868, 38.507862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490807, 36.013367, 38.482796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483253, 36.322937, 38.229595>,  <33.478722, 36.508678, 38.077675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483253, 36.322937, 38.229595>,  <33.490807, 36.013367, 38.482796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483253, 36.322937, 38.229595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563334, 0.531285, 0.632765,
		0.826013, -0.344642, -0.446009,
		-0.018881, 0.773924, -0.632996,
		33.477589, 36.555115, 38.039696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130657, 36.155910, 38.262009>,  <33.490807, 36.013367, 38.482796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130657, 36.155910, 38.262009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884277, 36.468498, 38.301815>,  <33.736450, 36.656052, 38.325699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884277, 36.468498, 38.301815>,  <34.130657, 36.155910, 38.262009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884277, 36.468498, 38.301815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646795, 0.429551, 0.630192,
		0.449731, 0.452534, -0.770036,
		-0.615953, 0.781472, 0.099514,
		33.699493, 36.702938, 38.331669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525127, 36.730480, 38.037834>,  <34.130657, 36.155910, 38.262009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525127, 36.730480, 38.037834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255623, 36.786304, 38.328094>,  <34.093922, 36.819801, 38.502251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255623, 36.786304, 38.328094>,  <34.525127, 36.730480, 38.037834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255623, 36.786304, 38.328094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678748, 0.505118, 0.533064,
		-0.292143, 0.851692, -0.435056,
		-0.673761, 0.139562, 0.725651,
		34.053493, 36.828175, 38.545788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266148, 37.464924, 38.140388>,  <34.525127, 36.730480, 38.037834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266148, 37.464924, 38.140388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250954, 37.251087, 38.478092>,  <34.241837, 37.122787, 38.680714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250954, 37.251087, 38.478092>,  <34.266148, 37.464924, 38.140388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250954, 37.251087, 38.478092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712652, 0.577754, 0.397905,
		-0.700489, 0.616777, 0.359028,
		-0.037989, -0.534590, 0.844258,
		34.239555, 37.090710, 38.731369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244743, 37.922924, 38.673283>,  <34.266148, 37.464924, 38.140388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244743, 37.922924, 38.673283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388012, 37.575951, 38.811428>,  <34.473972, 37.367767, 38.894314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388012, 37.575951, 38.811428>,  <34.244743, 37.922924, 38.673283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388012, 37.575951, 38.811428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792520, 0.478016, 0.378698,
		-0.493584, 0.138068, 0.858669,
		0.358171, -0.867432, 0.345363,
		34.495464, 37.315720, 38.915035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150333, 38.067238, 39.330357>,  <34.244743, 37.922924, 38.673283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150333, 38.067238, 39.330357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430569, 37.784115, 39.294170>,  <34.598709, 37.614243, 39.272457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430569, 37.784115, 39.294170>,  <34.150333, 38.067238, 39.330357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430569, 37.784115, 39.294170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643951, 0.572520, 0.507492,
		-0.307411, -0.413801, 0.856894,
		0.700589, -0.707806, -0.090469,
		34.640747, 37.571774, 39.267029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353233, 37.936615, 40.034649>,  <34.150333, 38.067238, 39.330357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353233, 37.936615, 40.034649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643551, 37.799026, 39.796352>,  <34.817741, 37.716473, 39.653374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643551, 37.799026, 39.796352>,  <34.353233, 37.936615, 40.034649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643551, 37.799026, 39.796352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685080, 0.439907, 0.580643,
		0.062348, -0.829559, 0.554928,
		0.725795, -0.343968, -0.595742,
		34.861290, 37.695835, 39.617630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779728, 37.801910, 40.467972>,  <34.353233, 37.936615, 40.034649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779728, 37.801910, 40.467972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997879, 37.826683, 40.133614>,  <35.128769, 37.841545, 39.932999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997879, 37.826683, 40.133614>,  <34.779728, 37.801910, 40.467972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997879, 37.826683, 40.133614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701023, 0.512988, 0.495389,
		0.459483, -0.856159, 0.236362,
		0.545382, 0.061928, -0.835897,
		35.161495, 37.845261, 39.882843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415321, 37.408035, 40.637802>,  <34.779728, 37.801910, 40.467972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415321, 37.408035, 40.637802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478825, 37.672176, 40.344208>,  <35.516926, 37.830662, 40.168053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478825, 37.672176, 40.344208>,  <35.415321, 37.408035, 40.637802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478825, 37.672176, 40.344208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717880, 0.433169, 0.544989,
		0.677823, -0.613435, -0.405282,
		0.158760, 0.660350, -0.733985,
		35.526451, 37.870281, 40.124012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163353, 37.345009, 40.422306>,  <35.415321, 37.408035, 40.637802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163353, 37.345009, 40.422306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020706, 37.697231, 40.297440>,  <35.935116, 37.908566, 40.222519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020706, 37.697231, 40.297440>,  <36.163353, 37.345009, 40.422306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020706, 37.697231, 40.297440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729995, 0.471158, 0.495093,
		0.583034, -0.051316, -0.810825,
		-0.356621, 0.880555, -0.312162,
		35.913719, 37.961399, 40.203793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774506, 37.715473, 40.180347>,  <36.163353, 37.345009, 40.422306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774506, 37.715473, 40.180347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483120, 37.978611, 40.256844>,  <36.308289, 38.136494, 40.302742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483120, 37.978611, 40.256844>,  <36.774506, 37.715473, 40.180347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483120, 37.978611, 40.256844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632627, 0.538829, 0.556278,
		0.262902, 0.526212, -0.808692,
		-0.728468, 0.657848, 0.191237,
		36.264580, 38.175964, 40.314213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077091, 38.342396, 40.245266>,  <36.774506, 37.715473, 40.180347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077091, 38.342396, 40.245266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719894, 38.439899, 40.396603>,  <36.505577, 38.498402, 40.487404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719894, 38.439899, 40.396603>,  <37.077091, 38.342396, 40.245266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719894, 38.439899, 40.396603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424175, 0.736857, 0.526419,
		-0.150463, 0.630572, -0.761407,
		-0.892993, 0.243763, 0.378343,
		36.451996, 38.513027, 40.510105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076939, 39.171700, 40.235619>,  <37.077091, 38.342396, 40.245266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076939, 39.171700, 40.235619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824886, 39.034096, 40.514069>,  <36.673653, 38.951534, 40.681137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824886, 39.034096, 40.514069>,  <37.076939, 39.171700, 40.235619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824886, 39.034096, 40.514069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430163, 0.591707, 0.681794,
		-0.646443, 0.729069, -0.224876,
		-0.630135, -0.344008, 0.696124,
		36.635845, 38.930893, 40.722904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892982, 39.767155, 40.729805>,  <37.076939, 39.171700, 40.235619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892982, 39.767155, 40.729805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783756, 39.429363, 40.914108>,  <36.718220, 39.226688, 41.024689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783756, 39.429363, 40.914108>,  <36.892982, 39.767155, 40.729805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783756, 39.429363, 40.914108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076404, 0.458405, 0.885453,
		-0.958957, 0.276988, -0.060652,
		-0.273063, -0.844478, 0.460754,
		36.701836, 39.176022, 41.052334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273212, 39.958996, 41.190586>,  <36.892982, 39.767155, 40.729805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273212, 39.958996, 41.190586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444736, 39.625381, 41.329437>,  <36.547649, 39.425213, 41.412750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444736, 39.625381, 41.329437>,  <36.273212, 39.958996, 41.190586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444736, 39.625381, 41.329437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044828, 0.403424, 0.913915,
		-0.902283, -0.376332, 0.210380,
		0.428807, -0.834040, 0.347132,
		36.573380, 39.375168, 41.433578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935295, 39.907925, 41.827858>,  <36.273212, 39.958996, 41.190586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935295, 39.907925, 41.827858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268219, 39.687801, 41.854450>,  <36.467976, 39.555729, 41.870407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268219, 39.687801, 41.854450>,  <35.935295, 39.907925, 41.827858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268219, 39.687801, 41.854450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071449, 0.225450, 0.971631,
		-0.549684, -0.803950, 0.226963,
		0.832312, -0.550306, 0.066485,
		36.517914, 39.522709, 41.874397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883488, 39.492580, 42.518700>,  <35.935295, 39.907925, 41.827858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883488, 39.492580, 42.518700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271080, 39.478466, 42.420864>,  <36.503635, 39.469997, 42.362164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271080, 39.478466, 42.420864>,  <35.883488, 39.492580, 42.518700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271080, 39.478466, 42.420864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244845, 0.003106, 0.969557,
		-0.033459, -0.999372, 0.011651,
		0.968985, -0.035293, -0.244588,
		36.561775, 39.467880, 42.347488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195381, 38.886856, 42.841911>,  <35.883488, 39.492580, 42.518700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195381, 38.886856, 42.841911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492908, 39.142418, 42.763401>,  <36.671425, 39.295757, 42.716293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492908, 39.142418, 42.763401>,  <36.195381, 38.886856, 42.841911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492908, 39.142418, 42.763401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238122, 0.021082, 0.971006,
		0.624523, -0.768993, -0.136457,
		0.743821, 0.638909, -0.196280,
		36.716053, 39.334091, 42.704517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728355, 38.668449, 43.315762>,  <36.195381, 38.886856, 42.841911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728355, 38.668449, 43.315762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823757, 39.037102, 43.193306>,  <36.880997, 39.258293, 43.119831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823757, 39.037102, 43.193306>,  <36.728355, 38.668449, 43.315762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823757, 39.037102, 43.193306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269382, 0.240083, 0.932627,
		0.933033, -0.304902, -0.191009,
		0.238502, 0.921626, -0.306141,
		36.895309, 39.313591, 43.101463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387554, 38.833488, 43.654255>,  <36.728355, 38.668449, 43.315762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387554, 38.833488, 43.654255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243958, 39.190937, 43.546509>,  <37.157799, 39.405407, 43.481861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243958, 39.190937, 43.546509>,  <37.387554, 38.833488, 43.654255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243958, 39.190937, 43.546509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287053, 0.380331, 0.879175,
		0.888102, 0.238294, -0.393053,
		-0.358992, 0.893625, -0.269370,
		37.136261, 39.459023, 43.465698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830265, 39.303009, 43.817322>,  <37.387554, 38.833488, 43.654255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830265, 39.303009, 43.817322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483959, 39.501698, 43.792927>,  <37.276176, 39.620911, 43.778290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483959, 39.501698, 43.792927>,  <37.830265, 39.303009, 43.817322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483959, 39.501698, 43.792927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100085, 0.291253, 0.951396,
		0.490340, 0.817582, -0.301871,
		-0.865765, 0.496721, -0.060986,
		37.224228, 39.650715, 43.774632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962006, 39.868534, 44.314308>,  <37.830265, 39.303009, 43.817322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962006, 39.868534, 44.314308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566143, 39.871296, 44.257004>,  <37.328625, 39.872955, 44.222622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566143, 39.871296, 44.257004>,  <37.962006, 39.868534, 44.314308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566143, 39.871296, 44.257004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136529, 0.260724, 0.955711,
		0.043955, 0.965389, -0.257085,
		-0.989660, 0.006909, -0.143263,
		37.269245, 39.873367, 44.214024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724007, 40.543629, 44.576290>,  <37.962006, 39.868534, 44.314308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724007, 40.543629, 44.576290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396633, 40.313828, 44.580589>,  <37.200211, 40.175945, 44.583168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396633, 40.313828, 44.580589>,  <37.724007, 40.543629, 44.576290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396633, 40.313828, 44.580589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106030, 0.169383, 0.979830,
		-0.564739, 0.800782, -0.199543,
		-0.818430, -0.574506, 0.010750,
		37.151104, 40.141476, 44.583813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335186, 40.936832, 44.962685>,  <37.724007, 40.543629, 44.576290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335186, 40.936832, 44.962685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178902, 40.568897, 44.976784>,  <37.085129, 40.348137, 44.985245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178902, 40.568897, 44.976784>,  <37.335186, 40.936832, 44.962685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178902, 40.568897, 44.976784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282311, 0.156189, 0.946523,
		-0.876152, 0.359870, -0.320705,
		-0.390716, -0.919836, 0.035251,
		37.061687, 40.292946, 44.987358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696514, 41.079426, 45.271717>,  <37.335186, 40.936832, 44.962685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696514, 41.079426, 45.271717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745136, 40.684868, 45.315998>,  <36.774311, 40.448135, 45.342567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745136, 40.684868, 45.315998>,  <36.696514, 41.079426, 45.271717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745136, 40.684868, 45.315998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457198, 0.043353, 0.888308,
		-0.881018, -0.158595, -0.445706,
		0.121558, -0.986392, 0.110704,
		36.781605, 40.388950, 45.349209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066570, 40.849644, 45.496914>,  <36.696514, 41.079426, 45.271717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066570, 40.849644, 45.496914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330475, 40.562538, 45.585934>,  <36.488815, 40.390274, 45.639343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330475, 40.562538, 45.585934>,  <36.066570, 40.849644, 45.496914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330475, 40.562538, 45.585934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362364, -0.044424, 0.930977,
		-0.658339, -0.694864, -0.289402,
		0.659759, -0.717768, 0.222548,
		36.528404, 40.347206, 45.652699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697472, 40.358692, 45.867432>,  <36.066570, 40.849644, 45.496914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697472, 40.358692, 45.867432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085983, 40.328926, 45.957832>,  <36.319092, 40.311066, 46.012074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085983, 40.328926, 45.957832>,  <35.697472, 40.358692, 45.867432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085983, 40.328926, 45.957832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233064, -0.106341, 0.966630,
		-0.047902, -0.991541, -0.120631,
		0.971281, -0.074418, 0.225999,
		36.377369, 40.306602, 46.025631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623524, 40.091824, 46.471878>,  <35.697472, 40.358692, 45.867432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623524, 40.091824, 46.471878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014343, 40.175266, 46.489082>,  <36.248837, 40.225330, 46.499405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014343, 40.175266, 46.489082>,  <35.623524, 40.091824, 46.471878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014343, 40.175266, 46.489082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042154, -0.008570, 0.999074,
		0.208783, -0.977962, 0.000420,
		0.977053, 0.208607, 0.043014,
		36.307461, 40.237846, 46.501987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886127, 39.657940, 46.991467>,  <35.623524, 40.091824, 46.471878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886127, 39.657940, 46.991467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180878, 39.926102, 46.956680>,  <36.357727, 40.086998, 46.935810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180878, 39.926102, 46.956680>,  <35.886127, 39.657940, 46.991467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180878, 39.926102, 46.956680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012824, 0.114757, 0.993311,
		0.675904, -0.733065, 0.075965,
		0.736878, 0.670408, -0.086965,
		36.401939, 40.127224, 46.930592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331490, 39.370304, 47.407204>,  <35.886127, 39.657940, 46.991467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331490, 39.370304, 47.407204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443905, 39.753590, 47.385872>,  <36.511356, 39.983562, 47.373074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443905, 39.753590, 47.385872>,  <36.331490, 39.370304, 47.407204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443905, 39.753590, 47.385872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049852, 0.040914, 0.997918,
		0.958400, -0.283114, -0.036270,
		0.281041, 0.958213, -0.053326,
		36.528217, 40.041054, 47.369873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005264, 39.440254, 47.810612>,  <36.331490, 39.370304, 47.407204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005264, 39.440254, 47.810612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831753, 39.799023, 47.776268>,  <36.727646, 40.014282, 47.755661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831753, 39.799023, 47.776268>,  <37.005264, 39.440254, 47.810612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831753, 39.799023, 47.776268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166312, 0.173354, 0.970716,
		0.885539, 0.406794, -0.224365,
		-0.433775, 0.896921, -0.085857,
		36.701622, 40.068100, 47.750511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541290, 39.806900, 48.202187>,  <37.005264, 39.440254, 47.810612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541290, 39.806900, 48.202187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183022, 39.983547, 48.181240>,  <36.968060, 40.089535, 48.168671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183022, 39.983547, 48.181240>,  <37.541290, 39.806900, 48.202187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183022, 39.983547, 48.181240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062261, 0.241116, 0.968497,
		0.440332, 0.864197, -0.243457,
		-0.895673, 0.441619, -0.052365,
		36.914318, 40.116032, 48.165531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502949, 40.435871, 48.598389>,  <37.541290, 39.806900, 48.202187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502949, 40.435871, 48.598389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114895, 40.340469, 48.580750>,  <36.882061, 40.283230, 48.570168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114895, 40.340469, 48.580750>,  <37.502949, 40.435871, 48.598389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114895, 40.340469, 48.580750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071017, 0.105476, 0.991883,
		-0.231918, 0.965396, -0.119265,
		-0.970139, -0.238505, -0.044098,
		36.823853, 40.268917, 48.567520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232426, 40.742207, 49.166519>,  <37.502949, 40.435871, 48.598389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232426, 40.742207, 49.166519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950539, 40.471066, 49.082726>,  <36.781406, 40.308380, 49.032448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950539, 40.471066, 49.082726>,  <37.232426, 40.742207, 49.166519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950539, 40.471066, 49.082726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308095, 0.026414, 0.950989,
		-0.639096, 0.734724, -0.227458,
		-0.704722, -0.677852, -0.209483,
		36.739120, 40.267712, 49.019882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618153, 40.938175, 49.364136>,  <37.232426, 40.742207, 49.166519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618153, 40.938175, 49.364136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573330, 40.541130, 49.345531>,  <36.546436, 40.302902, 49.334370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573330, 40.541130, 49.345531>,  <36.618153, 40.938175, 49.364136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573330, 40.541130, 49.345531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205132, -0.022689, 0.978471,
		-0.972298, 0.119187, -0.201075,
		-0.112059, -0.992613, -0.046509,
		36.539711, 40.243347, 49.331577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084583, 40.842751, 49.909134>,  <36.618153, 40.938175, 49.364136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084583, 40.842751, 49.909134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263653, 40.489151, 49.855263>,  <36.371094, 40.276993, 49.822941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263653, 40.489151, 49.855263>,  <36.084583, 40.842751, 49.909134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263653, 40.489151, 49.855263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015688, -0.142824, 0.989624,
		-0.894061, -0.445138, -0.050070,
		0.447670, -0.883998, -0.134677,
		36.397953, 40.223953, 49.814861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722557, 40.305191, 50.388844>,  <36.084583, 40.842751, 49.909134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722557, 40.305191, 50.388844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078667, 40.156677, 50.283348>,  <36.292332, 40.067570, 50.220051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078667, 40.156677, 50.283348>,  <35.722557, 40.305191, 50.388844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078667, 40.156677, 50.283348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183086, -0.238477, 0.953734,
		-0.417003, -0.897372, -0.144333,
		0.890274, -0.371284, -0.263742,
		36.345749, 40.045292, 50.204224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757179, 39.800892, 50.845478>,  <35.722557, 40.305191, 50.388844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757179, 39.800892, 50.845478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138695, 39.826977, 50.728157>,  <36.367603, 39.842628, 50.657764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138695, 39.826977, 50.728157>,  <35.757179, 39.800892, 50.845478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138695, 39.826977, 50.728157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300319, -0.237217, 0.923870,
		-0.009326, -0.969265, -0.245841,
		0.953793, 0.065215, -0.293301,
		36.424831, 39.846542, 50.640167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084305, 39.184540, 51.131191>,  <35.757179, 39.800892, 50.845478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084305, 39.184540, 51.131191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348537, 39.475109, 51.055367>,  <36.507076, 39.649452, 51.009872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348537, 39.475109, 51.055367>,  <36.084305, 39.184540, 51.131191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348537, 39.475109, 51.055367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341655, -0.066043, 0.937502,
		0.668507, -0.684063, -0.291814,
		0.660583, 0.726427, -0.189563,
		36.546711, 39.693039, 50.998497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708183, 38.939739, 51.345505>,  <36.084305, 39.184540, 51.131191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708183, 38.939739, 51.345505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760777, 39.336082, 51.333424>,  <36.792332, 39.573887, 51.326176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760777, 39.336082, 51.333424>,  <36.708183, 38.939739, 51.345505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760777, 39.336082, 51.333424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215403, 0.001186, 0.976525,
		0.967633, -0.134903, -0.213277,
		0.131483, 0.990858, -0.030206,
		36.800220, 39.633339, 51.324360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261974, 39.027214, 51.833302>,  <36.708183, 38.939739, 51.345505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261974, 39.027214, 51.833302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087360, 39.385284, 51.797302>,  <36.982590, 39.600124, 51.775703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087360, 39.385284, 51.797302>,  <37.261974, 39.027214, 51.833302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087360, 39.385284, 51.797302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266997, 0.224422, 0.937202,
		0.859156, 0.385095, -0.336977,
		-0.436537, 0.895174, -0.089995,
		36.956398, 39.653835, 51.770306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749374, 39.550426, 51.956272>,  <37.261974, 39.027214, 51.833302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749374, 39.550426, 51.956272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398968, 39.732998, 52.018589>,  <37.188725, 39.842541, 52.055981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398968, 39.732998, 52.018589>,  <37.749374, 39.550426, 51.956272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398968, 39.732998, 52.018589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353621, 0.388217, 0.851023,
		0.327952, 0.800600, -0.501486,
		-0.876014, 0.456430, 0.155792,
		37.136162, 39.869926, 52.065327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887764, 40.213196, 52.317921>,  <37.749374, 39.550426, 51.956272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887764, 40.213196, 52.317921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498024, 40.167210, 52.395309>,  <37.264179, 40.139618, 52.441742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498024, 40.167210, 52.395309>,  <37.887764, 40.213196, 52.317921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498024, 40.167210, 52.395309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124239, 0.442026, 0.888357,
		-0.187644, 0.889605, -0.416405,
		-0.974348, -0.114961, 0.193467,
		37.205719, 40.132721, 52.453350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563534, 40.923794, 52.410038>,  <37.887764, 40.213196, 52.317921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563534, 40.923794, 52.410038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308533, 40.664982, 52.577339>,  <37.155533, 40.509693, 52.677719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308533, 40.664982, 52.577339>,  <37.563534, 40.923794, 52.410038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308533, 40.664982, 52.577339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019457, 0.529179, 0.848287,
		-0.770200, 0.548926, -0.324765,
		-0.637505, -0.647032, 0.418254,
		37.117283, 40.470871, 52.702816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005623, 41.457748, 52.639942>,  <37.563534, 40.923794, 52.410038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005623, 41.457748, 52.639942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954517, 41.123623, 52.853832>,  <36.923855, 40.923149, 52.982166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954517, 41.123623, 52.853832>,  <37.005623, 41.457748, 52.639942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954517, 41.123623, 52.853832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252444, 0.493999, 0.832008,
		-0.959140, 0.241286, 0.147756,
		-0.127761, -0.835312, 0.534725,
		36.916187, 40.873028, 53.014252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568047, 41.593700, 53.160706>,  <37.005623, 41.457748, 52.639942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568047, 41.593700, 53.160706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827560, 41.312664, 53.277622>,  <36.983269, 41.144043, 53.347775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827560, 41.312664, 53.277622>,  <36.568047, 41.593700, 53.160706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827560, 41.312664, 53.277622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293526, 0.585441, 0.755712,
		-0.702080, -0.404501, 0.586056,
		0.648788, -0.702594, 0.292295,
		37.022198, 41.101887, 53.365311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495232, 41.344860, 53.889076>,  <36.568047, 41.593700, 53.160706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495232, 41.344860, 53.889076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872292, 41.291382, 53.766739>,  <37.098526, 41.259293, 53.693336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872292, 41.291382, 53.766739>,  <36.495232, 41.344860, 53.889076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872292, 41.291382, 53.766739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316449, 0.649458, 0.691422,
		0.106189, -0.748551, 0.654519,
		0.942647, -0.133700, -0.305844,
		37.155087, 41.251270, 53.674984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988056, 41.127918, 54.421169>,  <36.495232, 41.344860, 53.889076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988056, 41.127918, 54.421169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208969, 41.313725, 54.144268>,  <37.341515, 41.425209, 53.978127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208969, 41.313725, 54.144268>,  <36.988056, 41.127918, 54.421169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208969, 41.313725, 54.144268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433023, 0.549727, 0.714347,
		0.712376, -0.694279, 0.102456,
		0.552280, 0.464518, -0.692251,
		37.374653, 41.453079, 53.936592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671253, 41.194500, 54.701195>,  <36.988056, 41.127918, 54.421169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671253, 41.194500, 54.701195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593250, 41.478535, 54.430569>,  <37.546448, 41.648956, 54.268192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593250, 41.478535, 54.430569>,  <37.671253, 41.194500, 54.701195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593250, 41.478535, 54.430569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328967, 0.697206, 0.636934,
		0.923988, -0.098363, -0.369555,
		-0.195005, 0.710091, -0.676568,
		37.534748, 41.691563, 54.227600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932304, 40.513725, 54.436195>,  <37.671253, 41.194500, 54.701195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932304, 40.513725, 54.436195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799721, 40.187176, 54.247017>,  <37.720169, 39.991245, 54.133511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799721, 40.187176, 54.247017>,  <37.932304, 40.513725, 54.436195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799721, 40.187176, 54.247017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036840, -0.489699, 0.871113,
		-0.942750, 0.306163, 0.132241,
		-0.331460, -0.816370, -0.472942,
		37.700283, 39.942265, 54.105133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376949, 40.338417, 54.834843>,  <37.932304, 40.513725, 54.436195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376949, 40.338417, 54.834843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513607, 40.014877, 54.643414>,  <37.595604, 39.820751, 54.528557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513607, 40.014877, 54.643414>,  <37.376949, 40.338417, 54.834843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513607, 40.014877, 54.643414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118179, -0.468197, 0.875686,
		-0.932368, -0.355734, -0.064369,
		0.341649, -0.808854, -0.478573,
		37.616100, 39.772221, 54.499844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017929, 39.749332, 55.107937>,  <37.376949, 40.338417, 54.834843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017929, 39.749332, 55.107937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381279, 39.649040, 54.974075>,  <37.599289, 39.588867, 54.893761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381279, 39.649040, 54.974075>,  <37.017929, 39.749332, 55.107937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381279, 39.649040, 54.974075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168946, -0.512011, 0.842201,
		-0.382507, -0.821572, -0.422739,
		0.908376, -0.250727, -0.334649,
		37.653793, 39.573822, 54.873680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072289, 38.990414, 55.185295>,  <37.017929, 39.749332, 55.107937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072289, 38.990414, 55.185295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700470, 38.849545, 55.141613>,  <36.477379, 38.765022, 55.115402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700470, 38.849545, 55.141613>,  <37.072289, 38.990414, 55.185295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700470, 38.849545, 55.141613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276682, -0.470455, -0.837926,
		0.243719, -0.809102, 0.534747,
		-0.929542, -0.352173, -0.109205,
		36.421608, 38.743893, 55.108852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066578, 38.230499, 55.182632>,  <37.072289, 38.990414, 55.185295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066578, 38.230499, 55.182632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784306, 38.416927, 54.969166>,  <36.614944, 38.528782, 54.841087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784306, 38.416927, 54.969166>,  <37.066578, 38.230499, 55.182632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784306, 38.416927, 54.969166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316826, -0.466140, -0.826036,
		-0.633752, -0.751995, 0.181282,
		-0.705677, 0.466066, -0.533668,
		36.572601, 38.556747, 54.809067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843468, 37.714668, 54.894821>,  <37.066578, 38.230499, 55.182632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843468, 37.714668, 54.894821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758926, 38.048035, 54.690567>,  <36.708202, 38.248055, 54.568012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758926, 38.048035, 54.690567>,  <36.843468, 37.714668, 54.894821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758926, 38.048035, 54.690567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029094, -0.527574, -0.849010,
		-0.976977, -0.164583, 0.135750,
		-0.211351, 0.833413, -0.510640,
		36.695522, 38.298058, 54.537376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261471, 37.518753, 54.418839>,  <36.843468, 37.714668, 54.894821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261471, 37.518753, 54.418839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483814, 37.818691, 54.275307>,  <36.617222, 37.998653, 54.189186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483814, 37.818691, 54.275307>,  <36.261471, 37.518753, 54.418839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483814, 37.818691, 54.275307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000677, -0.432067, -0.901841,
		-0.831277, 0.501053, -0.240675,
		0.555858, 0.749843, -0.358828,
		36.650570, 38.043644, 54.167660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983322, 37.817425, 53.793270>,  <36.261471, 37.518753, 54.418839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983322, 37.817425, 53.793270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369419, 37.918159, 53.765293>,  <36.601078, 37.978600, 53.748505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369419, 37.918159, 53.765293>,  <35.983322, 37.817425, 53.793270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369419, 37.918159, 53.765293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000702, -0.270115, -0.962828,
		-0.261367, 0.929310, -0.260902,
		0.965239, 0.251835, -0.069947,
		36.658989, 37.993710, 53.744308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040707, 38.193314, 53.088348>,  <35.983322, 37.817425, 53.793270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040707, 38.193314, 53.088348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418671, 38.108555, 53.188141>,  <36.645451, 38.057701, 53.248016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418671, 38.108555, 53.188141>,  <36.040707, 38.193314, 53.088348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418671, 38.108555, 53.188141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196181, -0.243486, -0.949857,
		0.262015, 0.946475, -0.188503,
		0.944913, -0.211896, 0.249477,
		36.702145, 38.044987, 53.262985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328678, 38.390682, 52.511715>,  <36.040707, 38.193314, 53.088348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328678, 38.390682, 52.511715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561909, 38.124382, 52.697964>,  <36.701847, 37.964603, 52.809711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561909, 38.124382, 52.697964>,  <36.328678, 38.390682, 52.511715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561909, 38.124382, 52.697964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324524, -0.334554, -0.884736,
		0.744788, 0.666971, 0.020982,
		0.583074, -0.665750, 0.465620,
		36.736832, 37.924656, 52.837650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975761, 38.388378, 52.105419>,  <36.328678, 38.390682, 52.511715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975761, 38.388378, 52.105419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003265, 38.029716, 52.280365>,  <37.019768, 37.814522, 52.385334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003265, 38.029716, 52.280365>,  <36.975761, 38.388378, 52.105419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003265, 38.029716, 52.280365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078639, -0.441910, -0.893606,
		0.994529, 0.027049, -0.100897,
		0.068758, -0.896652, 0.437365,
		37.023891, 37.760719, 52.411575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425282, 38.009254, 51.777554>,  <36.975761, 38.388378, 52.105419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425282, 38.009254, 51.777554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205177, 37.726906, 51.955975>,  <37.073116, 37.557495, 52.063026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205177, 37.726906, 51.955975>,  <37.425282, 38.009254, 51.777554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205177, 37.726906, 51.955975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135306, -0.451756, -0.881821,
		0.823957, -0.545585, 0.153075,
		-0.550261, -0.705871, 0.446048,
		37.040100, 37.515144, 52.089790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594109, 37.365208, 51.401478>,  <37.425282, 38.009254, 51.777554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594109, 37.365208, 51.401478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253017, 37.272308, 51.588627>,  <37.048363, 37.216568, 51.700916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253017, 37.272308, 51.588627>,  <37.594109, 37.365208, 51.401478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253017, 37.272308, 51.588627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288427, -0.537428, -0.792452,
		0.435497, -0.810697, 0.391295,
		-0.852732, -0.232251, 0.467875,
		36.997196, 37.202633, 51.728989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561264, 36.731842, 51.340328>,  <37.594109, 37.365208, 51.401478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561264, 36.731842, 51.340328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187092, 36.859249, 51.401665>,  <36.962589, 36.935696, 51.438469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187092, 36.859249, 51.401665>,  <37.561264, 36.731842, 51.340328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187092, 36.859249, 51.401665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330744, -0.635400, -0.697764,
		-0.124817, -0.703428, 0.699721,
		-0.935430, 0.318521, 0.153346,
		36.906464, 36.954807, 51.447670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242107, 36.182980, 51.360489>,  <37.561264, 36.731842, 51.340328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242107, 36.182980, 51.360489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958870, 36.454506, 51.282700>,  <36.788929, 36.617420, 51.236027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958870, 36.454506, 51.282700>,  <37.242107, 36.182980, 51.360489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958870, 36.454506, 51.282700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364272, -0.587091, -0.722931,
		-0.604911, -0.441058, 0.662986,
		-0.708088, 0.678817, -0.194473,
		36.746445, 36.658150, 51.224358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580757, 35.772701, 51.254227>,  <37.242107, 36.182980, 51.360489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580757, 35.772701, 51.254227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529068, 36.133274, 51.088959>,  <36.498055, 36.349617, 50.989796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529068, 36.133274, 51.088959>,  <36.580757, 35.772701, 51.254227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529068, 36.133274, 51.088959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274875, -0.432903, -0.858510,
		-0.952756, 0.002630, 0.303725,
		-0.129226, 0.901437, -0.413174,
		36.490299, 36.403706, 50.965008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852554, 35.837048, 50.977318>,  <36.580757, 35.772701, 51.254227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852554, 35.837048, 50.977318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065308, 36.109432, 50.775967>,  <36.192959, 36.272861, 50.655155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065308, 36.109432, 50.775967>,  <35.852554, 35.837048, 50.977318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065308, 36.109432, 50.775967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346722, -0.367201, -0.863103,
		-0.772581, 0.633604, 0.040795,
		0.531886, 0.680962, -0.503377,
		36.224873, 36.313721, 50.624954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407585, 35.892330, 50.406548>,  <35.852554, 35.837048, 50.977318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407585, 35.892330, 50.406548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732391, 36.099072, 50.298115>,  <35.927277, 36.223118, 50.233055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732391, 36.099072, 50.298115>,  <35.407585, 35.892330, 50.406548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732391, 36.099072, 50.298115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201378, -0.187820, -0.961338,
		-0.547787, 0.835215, -0.048430,
		0.812020, 0.516856, -0.271080,
		35.975998, 36.254128, 50.216789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160542, 36.309753, 49.900356>,  <35.407585, 35.892330, 50.406548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160542, 36.309753, 49.900356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554886, 36.336346, 49.838837>,  <35.791492, 36.352299, 49.801926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554886, 36.336346, 49.838837>,  <35.160542, 36.309753, 49.900356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554886, 36.336346, 49.838837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159333, 0.087975, -0.983297,
		-0.051836, 0.993902, 0.097323,
		0.985863, 0.066477, -0.153801,
		35.850643, 36.356289, 49.792698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350468, 36.993626, 49.502430>,  <35.160542, 36.309753, 49.900356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350468, 36.993626, 49.502430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653503, 36.742260, 49.431828>,  <35.835323, 36.591438, 49.389465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653503, 36.742260, 49.431828>,  <35.350468, 36.993626, 49.502430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653503, 36.742260, 49.431828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012712, 0.256155, -0.966552,
		0.652612, 0.734489, 0.186071,
		0.757585, -0.628418, -0.176507,
		35.880779, 36.553734, 49.378876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687569, 37.358189, 49.031532>,  <35.350468, 36.993626, 49.502430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687569, 37.358189, 49.031532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802837, 36.978165, 48.983620>,  <35.871998, 36.750149, 48.954872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802837, 36.978165, 48.983620>,  <35.687569, 37.358189, 49.031532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802837, 36.978165, 48.983620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105644, 0.092787, -0.990066,
		0.951735, 0.297960, -0.073629,
		0.288168, -0.950059, -0.119786,
		35.889286, 36.693146, 48.947685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083801, 37.405575, 48.451218>,  <35.687569, 37.358189, 49.031532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083801, 37.405575, 48.451218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002247, 37.015984, 48.490799>,  <35.953316, 36.782227, 48.514545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002247, 37.015984, 48.490799>,  <36.083801, 37.405575, 48.451218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002247, 37.015984, 48.490799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269973, -0.041217, -0.961985,
		0.941035, -0.222844, -0.254545,
		-0.203881, -0.973982, 0.098949,
		35.941082, 36.723789, 48.520485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420444, 37.131176, 47.922592>,  <36.083801, 37.405575, 48.451218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420444, 37.131176, 47.922592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147602, 36.852188, 48.010471>,  <35.983894, 36.684795, 48.063198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147602, 36.852188, 48.010471>,  <36.420444, 37.131176, 47.922592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147602, 36.852188, 48.010471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131389, -0.178657, -0.975099,
		0.719349, -0.693991, 0.030224,
		-0.682109, -0.697466, 0.219700,
		35.942970, 36.642948, 48.076382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576118, 36.512531, 47.538727>,  <36.420444, 37.131176, 47.922592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576118, 36.512531, 47.538727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188629, 36.476013, 47.631016>,  <35.956135, 36.454102, 47.686390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188629, 36.476013, 47.631016>,  <36.576118, 36.512531, 47.538727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188629, 36.476013, 47.631016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194945, -0.295231, -0.935326,
		0.153508, -0.951054, 0.268200,
		-0.968727, -0.091296, 0.230724,
		35.898010, 36.448624, 47.700233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404606, 35.869087, 47.350304>,  <36.576118, 36.512531, 47.538727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404606, 35.869087, 47.350304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062595, 36.076504, 47.347301>,  <35.857391, 36.200954, 47.345501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062595, 36.076504, 47.347301>,  <36.404606, 35.869087, 47.350304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062595, 36.076504, 47.347301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167987, -0.290628, -0.941974,
		-0.490630, -0.804148, 0.335601,
		-0.855022, 0.518538, -0.007505,
		35.806087, 36.232063, 47.345051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927189, 35.366554, 47.088417>,  <36.404606, 35.869087, 47.350304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927189, 35.366554, 47.088417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705116, 35.698277, 47.063042>,  <35.571873, 35.897312, 47.047817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705116, 35.698277, 47.063042>,  <35.927189, 35.366554, 47.088417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705116, 35.698277, 47.063042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494846, -0.390651, -0.776221,
		-0.668509, -0.399549, 0.627261,
		-0.555178, 0.829308, -0.063439,
		35.538563, 35.947067, 47.044010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215595, 35.173115, 47.009869>,  <35.927189, 35.366554, 47.088417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215595, 35.173115, 47.009869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197708, 35.544811, 46.863167>,  <35.186974, 35.767830, 46.775146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197708, 35.544811, 46.863167>,  <35.215595, 35.173115, 47.009869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197708, 35.544811, 46.863167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585357, -0.321870, -0.744149,
		-0.809542, 0.181402, 0.558333,
		-0.044720, 0.929244, -0.366752,
		35.184292, 35.823586, 46.753139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453354, 35.251652, 46.757168>,  <35.215595, 35.173115, 47.009869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453354, 35.251652, 46.757168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670082, 35.541668, 46.587112>,  <34.800117, 35.715679, 46.485081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670082, 35.541668, 46.587112>,  <34.453354, 35.251652, 46.757168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670082, 35.541668, 46.587112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372364, -0.246396, -0.894782,
		-0.753509, 0.643116, 0.136478,
		0.541821, 0.725045, -0.425135,
		34.832630, 35.759182, 46.459572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922577, 35.579655, 46.393143>,  <34.453354, 35.251652, 46.757168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922577, 35.579655, 46.393143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261929, 35.682373, 46.207970>,  <34.465538, 35.744003, 46.096867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261929, 35.682373, 46.207970>,  <33.922577, 35.579655, 46.393143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261929, 35.682373, 46.207970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437439, -0.152462, -0.886229,
		-0.298164, 0.954363, -0.017011,
		0.848378, 0.256800, -0.462935,
		34.516441, 35.759415, 46.069088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702320, 35.939903, 45.859982>,  <33.922577, 35.579655, 46.393143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702320, 35.939903, 45.859982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083664, 35.855579, 45.773567>,  <34.312469, 35.804985, 45.721718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083664, 35.855579, 45.773567>,  <33.702320, 35.939903, 45.859982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083664, 35.855579, 45.773567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232924, -0.058558, -0.970730,
		0.191988, 0.975772, -0.104929,
		0.953356, -0.210809, -0.216038,
		34.369671, 35.792336, 45.708755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771492, 36.257393, 45.213131>,  <33.702320, 35.939903, 45.859982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771492, 36.257393, 45.213131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076775, 35.999592, 45.231655>,  <34.259945, 35.844913, 45.242771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076775, 35.999592, 45.231655>,  <33.771492, 36.257393, 45.213131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076775, 35.999592, 45.231655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187474, -0.289452, -0.938654,
		0.618366, 0.707701, -0.341737,
		0.763202, -0.644498, 0.046312,
		34.305737, 35.806244, 45.245548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215904, 36.378483, 44.677025>,  <33.771492, 36.257393, 45.213131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215904, 36.378483, 44.677025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299881, 35.997532, 44.765484>,  <34.350269, 35.768963, 44.818558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299881, 35.997532, 44.765484>,  <34.215904, 36.378483, 44.677025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299881, 35.997532, 44.765484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218284, -0.266135, -0.938896,
		0.953035, 0.148843, -0.263761,
		0.209944, -0.952375, 0.221145,
		34.362865, 35.711819, 44.831829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618732, 36.091625, 44.060253>,  <34.215904, 36.378483, 44.677025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618732, 36.091625, 44.060253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467346, 35.782299, 44.263721>,  <34.376514, 35.596703, 44.385803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467346, 35.782299, 44.263721>,  <34.618732, 36.091625, 44.060253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467346, 35.782299, 44.263721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184477, -0.475507, -0.860152,
		0.907046, -0.419375, 0.037303,
		-0.378464, -0.773316, 0.508672,
		34.353806, 35.550304, 44.416325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945923, 35.636806, 43.811470>,  <34.618732, 36.091625, 44.060253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945923, 35.636806, 43.811470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610241, 35.470734, 43.951962>,  <34.408833, 35.371090, 44.036255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610241, 35.470734, 43.951962>,  <34.945923, 35.636806, 43.811470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610241, 35.470734, 43.951962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210175, -0.348048, -0.913613,
		0.501562, -0.840526, 0.204822,
		-0.839204, -0.415185, 0.351225,
		34.358479, 35.346180, 44.057327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871178, 35.134361, 43.333523>,  <34.945923, 35.636806, 43.811470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871178, 35.134361, 43.333523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507534, 35.165531, 43.497208>,  <34.289349, 35.184235, 43.595417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507534, 35.165531, 43.497208>,  <34.871178, 35.134361, 43.333523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507534, 35.165531, 43.497208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408267, -0.361747, -0.838127,
		0.082719, -0.929014, 0.360681,
		-0.909107, 0.077925, 0.409209,
		34.234802, 35.188908, 43.619968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513393, 34.471180, 43.158318>,  <34.871178, 35.134361, 43.333523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513393, 34.471180, 43.158318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245438, 34.753288, 43.251129>,  <34.084663, 34.922554, 43.306816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245438, 34.753288, 43.251129>,  <34.513393, 34.471180, 43.158318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245438, 34.753288, 43.251129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490555, -0.185851, -0.851361,
		-0.557320, -0.684140, 0.470475,
		-0.669888, 0.705274, 0.232030,
		34.044472, 34.964870, 43.320740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898106, 34.161858, 42.932945>,  <34.513393, 34.471180, 43.158318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898106, 34.161858, 42.932945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824600, 34.553749, 42.964855>,  <33.780499, 34.788883, 42.984001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824600, 34.553749, 42.964855>,  <33.898106, 34.161858, 42.932945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824600, 34.553749, 42.964855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515161, -0.026873, -0.856672,
		-0.837163, -0.198517, 0.509656,
		-0.183760, 0.979729, 0.079771,
		33.769474, 34.847668, 42.988785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241688, 34.244347, 42.559986>,  <33.898106, 34.161858, 42.932945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241688, 34.244347, 42.559986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367123, 34.621746, 42.602840>,  <33.442383, 34.848186, 42.628551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367123, 34.621746, 42.602840>,  <33.241688, 34.244347, 42.559986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367123, 34.621746, 42.602840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531341, 0.267857, -0.803698,
		-0.786983, 0.195103, 0.585314,
		0.313584, 0.943497, 0.107133,
		33.461197, 34.904797, 42.634979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633965, 34.703815, 42.494194>,  <33.241688, 34.244347, 42.559986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633965, 34.703815, 42.494194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972561, 34.895138, 42.400669>,  <33.175720, 35.009933, 42.344555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972561, 34.895138, 42.400669>,  <32.633965, 34.703815, 42.494194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972561, 34.895138, 42.400669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408491, 0.301854, -0.861406,
		-0.341441, 0.824685, 0.450903,
		0.846495, 0.478309, -0.233811,
		33.226509, 35.038631, 42.330524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443638, 35.383076, 42.150990>,  <32.633965, 34.703815, 42.494194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443638, 35.383076, 42.150990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822334, 35.306229, 42.047634>,  <33.049553, 35.260120, 41.985622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822334, 35.306229, 42.047634>,  <32.443638, 35.383076, 42.150990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822334, 35.306229, 42.047634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231660, 0.150910, -0.961020,
		0.223625, 0.969699, 0.098366,
		0.946745, -0.192121, -0.258388,
		33.106358, 35.248592, 41.970119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586361, 35.931168, 41.679073>,  <32.443638, 35.383076, 42.150990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586361, 35.931168, 41.679073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850418, 35.636101, 41.622417>,  <33.008854, 35.459061, 41.588425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850418, 35.636101, 41.622417>,  <32.586361, 35.931168, 41.679073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850418, 35.636101, 41.622417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089887, 0.109633, -0.989900,
		0.745741, 0.666208, 0.006068,
		0.660144, -0.737664, -0.141641,
		33.048462, 35.414803, 41.579926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910194, 36.203640, 41.134552>,  <32.586361, 35.931168, 41.679073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910194, 36.203640, 41.134552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016968, 35.818279, 41.124729>,  <33.081032, 35.587063, 41.118835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016968, 35.818279, 41.124729>,  <32.910194, 36.203640, 41.134552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016968, 35.818279, 41.124729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055018, 0.040679, -0.997656,
		0.962144, 0.264955, 0.063862,
		0.266932, -0.963402, -0.024562,
		33.097046, 35.529259, 41.117359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647861, 36.147591, 40.870331>,  <32.910194, 36.203640, 41.134552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647861, 36.147591, 40.870331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547657, 35.762653, 40.828106>,  <33.487534, 35.531693, 40.802773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547657, 35.762653, 40.828106>,  <33.647861, 36.147591, 40.870331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547657, 35.762653, 40.828106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367066, 0.006478, -0.930173,
		0.895827, -0.271768, 0.351620,
		-0.250513, -0.962341, -0.105559,
		33.472504, 35.473949, 40.796436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181492, 35.797230, 40.768776>,  <33.647861, 36.147591, 40.870331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181492, 35.797230, 40.768776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886097, 35.597424, 40.587616>,  <33.708858, 35.477539, 40.478920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886097, 35.597424, 40.587616>,  <34.181492, 35.797230, 40.768776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886097, 35.597424, 40.587616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586626, -0.144828, -0.796803,
		0.332425, -0.854112, 0.399983,
		-0.738487, -0.499518, -0.452900,
		33.664551, 35.447567, 40.451744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467304, 35.410221, 40.215088>,  <34.181492, 35.797230, 40.768776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467304, 35.410221, 40.215088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085052, 35.354862, 40.111080>,  <33.855701, 35.321648, 40.048676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085052, 35.354862, 40.111080>,  <34.467304, 35.410221, 40.215088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085052, 35.354862, 40.111080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279610, -0.148576, -0.948548,
		0.092643, -0.979169, 0.180681,
		-0.955634, -0.138397, -0.260020,
		33.798363, 35.313343, 40.033073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506660, 34.680237, 39.945644>,  <34.467304, 35.410221, 40.215088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506660, 34.680237, 39.945644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180641, 34.866787, 39.808128>,  <33.985031, 34.978718, 39.725620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180641, 34.866787, 39.808128>,  <34.506660, 34.680237, 39.945644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180641, 34.866787, 39.808128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160539, -0.388345, -0.907423,
		-0.556712, -0.794783, 0.241647,
		-0.815046, 0.466379, -0.343790,
		33.936127, 35.006702, 39.704990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877632, 34.719528, 39.292114>,  <34.506660, 34.680237, 39.945644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877632, 34.719528, 39.292114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188454, 34.544537, 39.111099>,  <35.374947, 34.439541, 39.002491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188454, 34.544537, 39.111099>,  <34.877632, 34.719528, 39.292114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188454, 34.544537, 39.111099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390481, -0.228835, 0.891717,
		-0.493666, -0.869624, -0.006990,
		0.777057, -0.437481, -0.452540,
		35.421570, 34.413292, 38.975338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978394, 34.069752, 39.594131>,  <34.877632, 34.719528, 39.292114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978394, 34.069752, 39.594131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337929, 34.192020, 39.468498>,  <35.553650, 34.265381, 39.393116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337929, 34.192020, 39.468498>,  <34.978394, 34.069752, 39.594131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337929, 34.192020, 39.468498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392992, -0.244876, 0.886337,
		0.194016, -0.920109, -0.340231,
		0.898841, 0.305672, -0.314085,
		35.607582, 34.283722, 39.374271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406235, 33.511658, 39.786854>,  <34.978394, 34.069752, 39.594131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406235, 33.511658, 39.786854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648983, 33.826923, 39.745850>,  <35.794632, 34.016083, 39.721245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648983, 33.826923, 39.745850>,  <35.406235, 33.511658, 39.786854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648983, 33.826923, 39.745850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429577, -0.216743, 0.876633,
		0.668711, -0.576038, -0.470112,
		0.606868, 0.788164, -0.102515,
		35.831043, 34.063374, 39.715096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050076, 33.277622, 39.882107>,  <35.406235, 33.511658, 39.786854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050076, 33.277622, 39.882107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126774, 33.664444, 39.949085>,  <36.172794, 33.896538, 39.989273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126774, 33.664444, 39.949085>,  <36.050076, 33.277622, 39.882107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126774, 33.664444, 39.949085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442023, -0.237422, 0.865012,
		0.876270, -0.091845, -0.472985,
		0.191745, 0.967055, 0.167448,
		36.184296, 33.954559, 39.999321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812599, 33.412598, 40.109047>,  <36.050076, 33.277622, 39.882107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812599, 33.412598, 40.109047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613491, 33.720669, 40.268574>,  <36.494026, 33.905510, 40.364288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613491, 33.720669, 40.268574>,  <36.812599, 33.412598, 40.109047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613491, 33.720669, 40.268574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347616, -0.244119, 0.905300,
		0.794600, 0.589265, -0.146211,
		-0.497769, 0.770177, 0.398815,
		36.464161, 33.951721, 40.388218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248436, 33.735004, 40.568031>,  <36.812599, 33.412598, 40.109047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248436, 33.735004, 40.568031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893608, 33.871567, 40.692322>,  <36.680710, 33.953503, 40.766895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893608, 33.871567, 40.692322>,  <37.248436, 33.735004, 40.568031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893608, 33.871567, 40.692322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272518, -0.156013, 0.949418,
		0.372609, 0.926879, 0.045356,
		-0.887072, 0.341401, 0.310723,
		36.627487, 33.973988, 40.785538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399925, 34.163689, 41.076954>,  <37.248436, 33.735004, 40.568031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399925, 34.163689, 41.076954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026592, 34.056068, 41.172035>,  <36.802593, 33.991497, 41.229084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026592, 34.056068, 41.172035>,  <37.399925, 34.163689, 41.076954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026592, 34.056068, 41.172035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306427, -0.251982, 0.917937,
		-0.187077, 0.929578, 0.317628,
		-0.933330, -0.269054, 0.237708,
		36.746593, 33.975353, 41.243347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460548, 34.302059, 41.889732>,  <37.399925, 34.163689, 41.076954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460548, 34.302059, 41.889732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126331, 34.096680, 41.811523>,  <36.925800, 33.973450, 41.764599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126331, 34.096680, 41.811523>,  <37.460548, 34.302059, 41.889732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126331, 34.096680, 41.811523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032598, -0.308918, 0.950530,
		-0.548451, 0.800586, 0.241378,
		-0.835547, -0.513450, -0.195524,
		36.875668, 33.942646, 41.752865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849449, 34.556690, 42.327679>,  <37.460548, 34.302059, 41.889732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849449, 34.556690, 42.327679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784805, 34.176167, 42.222694>,  <36.746017, 33.947853, 42.159702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784805, 34.176167, 42.222694>,  <36.849449, 34.556690, 42.327679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784805, 34.176167, 42.222694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212824, -0.293297, 0.932031,
		-0.963632, 0.094770, 0.249863,
		-0.161613, -0.951312, -0.262461,
		36.736320, 33.890774, 42.143955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433445, 34.262077, 42.827068>,  <36.849449, 34.556690, 42.327679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433445, 34.262077, 42.827068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617203, 33.953327, 42.651264>,  <36.727455, 33.768078, 42.545780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617203, 33.953327, 42.651264>,  <36.433445, 34.262077, 42.827068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617203, 33.953327, 42.651264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261862, -0.355133, 0.897390,
		-0.848757, -0.527345, 0.038979,
		0.459391, -0.771873, -0.439513,
		36.755020, 33.721764, 42.519409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158440, 33.723915, 43.251385>,  <36.433445, 34.262077, 42.827068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158440, 33.723915, 43.251385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471058, 33.563179, 43.060509>,  <36.658630, 33.466736, 42.945984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471058, 33.563179, 43.060509>,  <36.158440, 33.723915, 43.251385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471058, 33.563179, 43.060509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181918, -0.584867, 0.790466,
		-0.596739, -0.704593, -0.383995,
		0.781542, -0.401846, -0.477191,
		36.705521, 33.442627, 42.917351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117462, 33.011208, 43.520363>,  <36.158440, 33.723915, 43.251385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117462, 33.011208, 43.520363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478878, 33.069218, 43.359081>,  <36.695728, 33.104023, 43.262310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478878, 33.069218, 43.359081>,  <36.117462, 33.011208, 43.520363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478878, 33.069218, 43.359081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425077, -0.421977, 0.800777,
		-0.054009, -0.894931, -0.442923,
		0.903544, 0.145028, -0.403205,
		36.749943, 33.112724, 43.238121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491814, 32.281860, 43.606102>,  <36.117462, 33.011208, 43.520363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491814, 32.281860, 43.606102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711811, 32.615181, 43.583744>,  <36.843807, 32.815174, 43.570332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711811, 32.615181, 43.583744>,  <36.491814, 32.281860, 43.606102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711811, 32.615181, 43.583744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555389, -0.314942, 0.769646,
		0.623743, -0.454338, -0.636020,
		0.549989, 0.833299, -0.055892,
		36.876808, 32.865170, 43.566975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975971, 32.099300, 43.960987>,  <36.491814, 32.281860, 43.606102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975971, 32.099300, 43.960987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058102, 32.490250, 43.940628>,  <37.107380, 32.724819, 43.928413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058102, 32.490250, 43.940628>,  <36.975971, 32.099300, 43.960987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058102, 32.490250, 43.940628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455369, -0.049372, 0.888933,
		0.866303, -0.205696, -0.455201,
		0.205325, 0.977370, -0.050896,
		37.119698, 32.783459, 43.925358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464546, 32.214649, 44.594109>,  <36.975971, 32.099300, 43.960987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464546, 32.214649, 44.594109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414516, 32.594627, 44.479591>,  <37.384499, 32.822613, 44.410881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414516, 32.594627, 44.479591>,  <37.464546, 32.214649, 44.594109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414516, 32.594627, 44.479591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362712, 0.312363, 0.877992,
		0.923469, 0.005977, -0.383626,
		-0.125078, 0.949944, -0.286289,
		37.376991, 32.879612, 44.393703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042519, 32.537491, 44.703121>,  <37.464546, 32.214649, 44.594109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042519, 32.537491, 44.703121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741581, 32.800846, 44.712135>,  <37.561020, 32.958858, 44.717545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741581, 32.800846, 44.712135>,  <38.042519, 32.537491, 44.703121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741581, 32.800846, 44.712135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300938, 0.313056, 0.900795,
		0.586015, 0.684489, -0.433659,
		-0.752344, 0.658385, 0.022533,
		37.515877, 32.998360, 44.718895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318054, 33.105492, 45.078709>,  <38.042519, 32.537491, 44.703121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318054, 33.105492, 45.078709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920536, 33.147388, 45.093628>,  <37.682026, 33.172527, 45.102577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920536, 33.147388, 45.093628>,  <38.318054, 33.105492, 45.078709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920536, 33.147388, 45.093628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073921, 0.371904, 0.925323,
		0.083050, 0.922343, -0.377340,
		-0.993800, 0.104741, 0.037294,
		37.622395, 33.178810, 45.104816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104908, 33.764862, 45.365402>,  <38.318054, 33.105492, 45.078709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104908, 33.764862, 45.365402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771694, 33.548462, 45.411652>,  <37.571766, 33.418621, 45.439400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771694, 33.548462, 45.411652>,  <38.104908, 33.764862, 45.365402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771694, 33.548462, 45.411652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254171, 0.559909, 0.788606,
		-0.491376, 0.627548, -0.603931,
		-0.833035, -0.541003, 0.115621,
		37.521782, 33.386162, 45.446339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538448, 34.270512, 45.531731>,  <38.104908, 33.764862, 45.365402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538448, 34.270512, 45.531731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395130, 33.920422, 45.661720>,  <37.309139, 33.710369, 45.739716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395130, 33.920422, 45.661720>,  <37.538448, 34.270512, 45.531731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395130, 33.920422, 45.661720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350805, 0.448786, 0.821905,
		-0.865194, 0.180482, -0.467831,
		-0.358295, -0.875224, 0.324973,
		37.287643, 33.657856, 45.759212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889790, 34.410053, 45.849522>,  <37.538448, 34.270512, 45.531731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889790, 34.410053, 45.849522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059166, 34.084488, 46.008644>,  <37.160789, 33.889149, 46.104118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059166, 34.084488, 46.008644>,  <36.889790, 34.410053, 45.849522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059166, 34.084488, 46.008644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255667, 0.313901, 0.914385,
		-0.869100, -0.488891, -0.075172,
		0.423438, -0.813911, 0.397805,
		37.186199, 33.840313, 46.127987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409569, 34.246304, 46.398617>,  <36.889790, 34.410053, 45.849522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409569, 34.246304, 46.398617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755669, 34.066425, 46.487267>,  <36.963329, 33.958500, 46.540459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755669, 34.066425, 46.487267>,  <36.409569, 34.246304, 46.398617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755669, 34.066425, 46.487267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099082, 0.279962, 0.954884,
		-0.491455, -0.848171, 0.197680,
		0.865248, -0.449696, 0.221627,
		37.015244, 33.931515, 46.553753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303112, 33.990864, 47.046844>,  <36.409569, 34.246304, 46.398617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303112, 33.990864, 47.046844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700218, 33.954121, 47.015915>,  <36.938480, 33.932076, 46.997356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700218, 33.954121, 47.015915>,  <36.303112, 33.990864, 47.046844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700218, 33.954121, 47.015915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105708, 0.363203, 0.925694,
		-0.056947, -0.927171, 0.370285,
		0.992765, -0.091858, -0.077326,
		36.998047, 33.926563, 46.992718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529949, 33.629726, 47.700703>,  <36.303112, 33.990864, 47.046844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529949, 33.629726, 47.700703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823822, 33.840752, 47.530090>,  <37.000145, 33.967365, 47.427723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823822, 33.840752, 47.530090>,  <36.529949, 33.629726, 47.700703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823822, 33.840752, 47.530090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265978, 0.354388, 0.896474,
		0.624099, -0.772069, 0.120043,
		0.734681, 0.527560, -0.426526,
		37.044228, 33.999020, 47.402134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063988, 33.449459, 48.070198>,  <36.529949, 33.629726, 47.700703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063988, 33.449459, 48.070198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142448, 33.793972, 47.882702>,  <37.189526, 34.000679, 47.770206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142448, 33.793972, 47.882702>,  <37.063988, 33.449459, 48.070198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142448, 33.793972, 47.882702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435638, 0.351714, 0.828563,
		0.878489, -0.366724, -0.306219,
		0.196152, 0.861284, -0.468736,
		37.201294, 34.052357, 47.742081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734406, 33.541920, 48.300819>,  <37.063988, 33.449459, 48.070198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734406, 33.541920, 48.300819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578197, 33.885811, 48.169144>,  <37.484474, 34.092144, 48.090137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578197, 33.885811, 48.169144>,  <37.734406, 33.541920, 48.300819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578197, 33.885811, 48.169144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493451, 0.497355, 0.713543,
		0.777175, 0.116215, -0.618460,
		-0.390519, 0.859728, -0.329186,
		37.461040, 34.143730, 48.070389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275429, 33.971134, 48.292084>,  <37.734406, 33.541920, 48.300819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275429, 33.971134, 48.292084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970390, 34.229885, 48.291328>,  <37.787369, 34.385136, 48.290874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970390, 34.229885, 48.291328>,  <38.275429, 33.971134, 48.292084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970390, 34.229885, 48.291328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491660, 0.581505, 0.648169,
		0.420385, 0.493358, -0.761494,
		-0.762592, 0.646877, -0.001892,
		37.741611, 34.423946, 48.290760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648376, 34.549530, 48.381138>,  <38.275429, 33.971134, 48.292084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648376, 34.549530, 48.381138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276653, 34.646294, 48.492752>,  <38.053619, 34.704353, 48.559723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276653, 34.646294, 48.492752>,  <38.648376, 34.549530, 48.381138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276653, 34.646294, 48.492752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369218, 0.592614, 0.715882,
		0.007817, 0.768302, -0.640039,
		-0.929310, 0.241910, 0.279038,
		37.997860, 34.718868, 48.576462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577202, 35.182030, 48.418758>,  <38.648376, 34.549530, 48.381138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577202, 35.182030, 48.418758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298199, 35.077072, 48.685478>,  <38.130795, 35.014095, 48.845512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298199, 35.077072, 48.685478>,  <38.577202, 35.182030, 48.418758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298199, 35.077072, 48.685478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405732, 0.622391, 0.669336,
		-0.590644, 0.737413, -0.327662,
		-0.697511, -0.262396, 0.666804,
		38.088947, 34.998352, 48.885521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486053, 35.829853, 48.777897>,  <38.577202, 35.182030, 48.418758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486053, 35.829853, 48.777897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317348, 35.570629, 49.031551>,  <38.216125, 35.415096, 49.183746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317348, 35.570629, 49.031551>,  <38.486053, 35.829853, 48.777897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317348, 35.570629, 49.031551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215996, 0.607443, 0.764434,
		-0.880601, 0.459385, -0.116222,
		-0.421767, -0.648058, 0.634140,
		38.190819, 35.376213, 49.221794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019356, 36.202518, 49.191341>,  <38.486053, 35.829853, 48.777897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019356, 36.202518, 49.191341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131187, 35.870895, 49.385044>,  <38.198284, 35.671921, 49.501266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131187, 35.870895, 49.385044>,  <38.019356, 36.202518, 49.191341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131187, 35.870895, 49.385044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240330, 0.548739, 0.800704,
		-0.929558, -0.107476, 0.352662,
		0.279576, -0.829056, 0.484255,
		38.215061, 35.622177, 49.530319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852642, 36.328362, 49.900196>,  <38.019356, 36.202518, 49.191341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852642, 36.328362, 49.900196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102028, 36.018127, 49.939716>,  <38.251659, 35.831985, 49.963428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102028, 36.018127, 49.939716>,  <37.852642, 36.328362, 49.900196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102028, 36.018127, 49.939716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363657, 0.399524, 0.841507,
		-0.692132, -0.488721, 0.531136,
		0.623464, -0.775585, 0.098796,
		38.289066, 35.785454, 49.969357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797112, 36.152084, 50.544174>,  <37.852642, 36.328362, 49.900196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797112, 36.152084, 50.544174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137703, 35.958637, 50.463081>,  <38.342056, 35.842567, 50.414425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137703, 35.958637, 50.463081>,  <37.797112, 36.152084, 50.544174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137703, 35.958637, 50.463081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398952, 0.346522, 0.848975,
		-0.340330, -0.803763, 0.487996,
		0.851476, -0.483619, -0.202731,
		38.393147, 35.813553, 50.402264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956905, 35.823582, 51.185017>,  <37.797112, 36.152084, 50.544174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956905, 35.823582, 51.185017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273674, 35.911190, 50.957024>,  <38.463737, 35.963757, 50.820229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273674, 35.911190, 50.957024>,  <37.956905, 35.823582, 51.185017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273674, 35.911190, 50.957024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436831, 0.449019, 0.779462,
		0.426648, -0.866264, 0.259917,
		0.791928, 0.219016, -0.569984,
		38.511253, 35.976898, 50.786026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443241, 35.417538, 51.604973>,  <37.956905, 35.823582, 51.185017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443241, 35.417538, 51.604973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629803, 35.683277, 51.371357>,  <38.741741, 35.842720, 51.231186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629803, 35.683277, 51.371357>,  <38.443241, 35.417538, 51.604973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629803, 35.683277, 51.371357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431157, 0.405777, 0.805884,
		0.772380, -0.627682, -0.097184,
		0.466404, 0.664350, -0.584044,
		38.769722, 35.882584, 51.196144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035221, 35.505341, 51.927219>,  <38.443241, 35.417538, 51.604973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035221, 35.505341, 51.927219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020279, 35.829193, 51.692917>,  <39.011314, 36.023502, 51.552334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020279, 35.829193, 51.692917>,  <39.035221, 35.505341, 51.927219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020279, 35.829193, 51.692917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323290, 0.564433, 0.759539,
		0.945563, -0.160996, -0.282828,
		-0.037354, 0.809627, -0.585755,
		39.009071, 36.072083, 51.517189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718826, 35.857082, 52.009865>,  <39.035221, 35.505341, 51.927219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718826, 35.857082, 52.009865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480110, 36.143410, 51.864841>,  <39.336880, 36.315205, 51.777828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480110, 36.143410, 51.864841>,  <39.718826, 35.857082, 52.009865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480110, 36.143410, 51.864841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370270, 0.646538, 0.667000,
		0.711859, 0.263812, -0.650892,
		-0.596788, 0.715816, -0.362562,
		39.301075, 36.358154, 51.756073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142727, 36.470394, 51.977821>,  <39.718826, 35.857082, 52.009865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142727, 36.470394, 51.977821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761066, 36.590107, 51.980110>,  <39.532070, 36.661934, 51.981483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761066, 36.590107, 51.980110>,  <40.142727, 36.470394, 51.977821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761066, 36.590107, 51.980110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255995, 0.805942, 0.533784,
		0.155140, 0.510773, -0.845602,
		-0.954148, 0.299281, 0.005722,
		39.474823, 36.679890, 51.981827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203205, 37.197502, 51.746696>,  <40.142727, 36.470394, 51.977821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203205, 37.197502, 51.746696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847244, 37.143612, 51.921017>,  <39.633667, 37.111279, 52.025612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847244, 37.143612, 51.921017>,  <40.203205, 37.197502, 51.746696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847244, 37.143612, 51.921017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289411, 0.571714, 0.767714,
		-0.352590, 0.809315, -0.469776,
		-0.889900, -0.134730, 0.435805,
		39.580273, 37.103191, 52.051758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822742, 37.303070, 51.963646>,  <40.203205, 37.197502, 51.746696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822742, 37.303070, 51.963646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191826, 37.429752, 51.875736>,  <41.413277, 37.505760, 51.822990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191826, 37.429752, 51.875736>,  <40.822742, 37.303070, 51.963646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191826, 37.429752, 51.875736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178504, -0.154278, -0.971769,
		-0.341668, 0.935894, -0.085822,
		0.922713, 0.316703, -0.219773,
		41.468639, 37.524765, 51.809803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808285, 37.959530, 51.500286>,  <40.822742, 37.303070, 51.963646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808285, 37.959530, 51.500286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147915, 37.754704, 51.448338>,  <41.351692, 37.631809, 51.417168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147915, 37.754704, 51.448338>,  <40.808285, 37.959530, 51.500286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147915, 37.754704, 51.448338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184916, -0.057806, -0.981053,
		0.494854, 0.857001, -0.143770,
		0.849074, -0.512063, -0.129867,
		41.402637, 37.601086, 51.409378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209248, 38.347691, 50.954830>,  <40.808285, 37.959530, 51.500286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209248, 38.347691, 50.954830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332695, 37.968071, 50.980328>,  <41.406761, 37.740299, 50.995628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332695, 37.968071, 50.980328>,  <41.209248, 38.347691, 50.954830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332695, 37.968071, 50.980328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062025, -0.086956, -0.994279,
		0.949162, 0.302897, -0.085701,
		0.308616, -0.949048, 0.063748,
		41.425282, 37.683357, 50.999451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594540, 38.402702, 50.435463>,  <41.209248, 38.347691, 50.954830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594540, 38.402702, 50.435463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531418, 38.014004, 50.505672>,  <41.493546, 37.780785, 50.547798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531418, 38.014004, 50.505672>,  <41.594540, 38.402702, 50.435463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531418, 38.014004, 50.505672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450958, -0.087216, -0.888273,
		0.878484, -0.219328, -0.424453,
		-0.157804, -0.971745, 0.175526,
		41.484077, 37.722481, 50.558331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763271, 38.048508, 49.767273>,  <41.594540, 38.402702, 50.435463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763271, 38.048508, 49.767273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564137, 37.767937, 49.971294>,  <41.444656, 37.599594, 50.093708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564137, 37.767937, 49.971294>,  <41.763271, 38.048508, 49.767273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564137, 37.767937, 49.971294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455865, -0.288677, -0.841934,
		0.737801, -0.651658, -0.176046,
		-0.497832, -0.701432, 0.510054,
		41.414787, 37.557507, 50.124310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885887, 37.402199, 49.388672>,  <41.763271, 38.048508, 49.767273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885887, 37.402199, 49.388672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548599, 37.345196, 49.596004>,  <41.346226, 37.310993, 49.720402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548599, 37.345196, 49.596004>,  <41.885887, 37.402199, 49.388672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548599, 37.345196, 49.596004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453284, -0.329834, -0.828096,
		0.288975, -0.933220, 0.213525,
		-0.843224, -0.142512, 0.518328,
		41.295631, 37.302441, 49.751503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630306, 36.819103, 49.108822>,  <41.885887, 37.402199, 49.388672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630306, 36.819103, 49.108822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305607, 36.957058, 49.297337>,  <41.110786, 37.039833, 49.410446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305607, 36.957058, 49.297337>,  <41.630306, 36.819103, 49.108822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305607, 36.957058, 49.297337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533752, -0.110656, -0.838370,
		-0.236998, -0.932096, 0.273913,
		-0.811752, 0.344893, 0.471283,
		41.062080, 37.060524, 49.438721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081295, 36.331062, 49.026985>,  <41.630306, 36.819103, 49.108822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081295, 36.331062, 49.026985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875172, 36.648609, 49.156128>,  <40.751499, 36.839138, 49.233612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875172, 36.648609, 49.156128>,  <41.081295, 36.331062, 49.026985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875172, 36.648609, 49.156128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771212, -0.265260, -0.578679,
		-0.373755, -0.547184, 0.748931,
		-0.515305, 0.793868, 0.322852,
		40.720581, 36.886768, 49.252983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397503, 36.129921, 49.335911>,  <41.081295, 36.331062, 49.026985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397503, 36.129921, 49.335911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370831, 36.509548, 49.212738>,  <40.354828, 36.737324, 49.138836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370831, 36.509548, 49.212738>,  <40.397503, 36.129921, 49.335911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370831, 36.509548, 49.212738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670457, -0.271178, -0.690615,
		-0.738946, 0.160401, 0.654393,
		-0.066682, 0.949070, -0.307928,
		40.350826, 36.794270, 49.120361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732887, 36.197834, 49.300358>,  <40.397503, 36.129921, 49.335911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732887, 36.197834, 49.300358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890434, 36.496071, 49.085335>,  <39.984962, 36.675011, 48.956322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890434, 36.496071, 49.085335>,  <39.732887, 36.197834, 49.300358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890434, 36.496071, 49.085335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627894, -0.208860, -0.749751,
		-0.671279, 0.632831, 0.385888,
		0.393869, 0.745589, -0.537554,
		40.008595, 36.719749, 48.924068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167957, 36.277870, 48.850643>,  <39.732887, 36.197834, 49.300358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167957, 36.277870, 48.850643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464062, 36.483246, 48.677025>,  <39.641724, 36.606472, 48.572853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464062, 36.483246, 48.677025>,  <39.167957, 36.277870, 48.850643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464062, 36.483246, 48.677025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449490, -0.102145, -0.887426,
		-0.499979, 0.852022, 0.155175,
		0.740256, 0.513444, -0.434046,
		39.686138, 36.637280, 48.546810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861374, 36.805328, 48.338177>,  <39.167957, 36.277870, 48.850643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861374, 36.805328, 48.338177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239922, 36.706055, 48.255428>,  <39.467049, 36.646488, 48.205780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239922, 36.706055, 48.255428>,  <38.861374, 36.805328, 48.338177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239922, 36.706055, 48.255428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264704, -0.228431, -0.936884,
		0.185267, 0.941394, -0.281875,
		0.946366, -0.248187, -0.206870,
		39.523830, 36.631599, 48.193367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000969, 37.154629, 47.738750>,  <38.861374, 36.805328, 48.338177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000969, 37.154629, 47.738750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261913, 36.851597, 47.747734>,  <39.418480, 36.669777, 47.753124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261913, 36.851597, 47.747734>,  <39.000969, 37.154629, 47.738750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261913, 36.851597, 47.747734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237495, -0.232471, -0.943161,
		0.719737, 0.609948, -0.331576,
		0.652361, -0.757575, 0.022458,
		39.457623, 36.624325, 47.754471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171818, 37.024780, 47.063511>,  <39.000969, 37.154629, 47.738750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171818, 37.024780, 47.063511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291328, 36.675621, 47.217796>,  <39.363033, 36.466125, 47.310368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291328, 36.675621, 47.217796>,  <39.171818, 37.024780, 47.063511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291328, 36.675621, 47.217796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096586, -0.429761, -0.897762,
		0.949423, 0.230974, -0.212712,
		0.298775, -0.872901, 0.385717,
		39.380962, 36.413750, 47.333511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536098, 36.745132, 46.532330>,  <39.171818, 37.024780, 47.063511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536098, 36.745132, 46.532330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487667, 36.427036, 46.769962>,  <39.458611, 36.236179, 46.912540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487667, 36.427036, 46.769962>,  <39.536098, 36.745132, 46.532330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487667, 36.427036, 46.769962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044970, -0.593476, -0.803594,
		0.991624, -0.124012, 0.036094,
		-0.121076, -0.795240, 0.594082,
		39.451344, 36.188465, 46.948189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108101, 36.352066, 46.392025>,  <39.536098, 36.745132, 46.532330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108101, 36.352066, 46.392025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822830, 36.109356, 46.532425>,  <39.651669, 35.963730, 46.616665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822830, 36.109356, 46.532425>,  <40.108101, 36.352066, 46.392025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822830, 36.109356, 46.532425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029770, -0.474060, -0.879989,
		0.700347, -0.638041, 0.320027,
		-0.713181, -0.606771, 0.351001,
		39.608875, 35.927326, 46.637726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345814, 35.666653, 46.260948>,  <40.108101, 36.352066, 46.392025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345814, 35.666653, 46.260948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948814, 35.636471, 46.299442>,  <39.710617, 35.618362, 46.322536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948814, 35.636471, 46.299442>,  <40.345814, 35.666653, 46.260948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948814, 35.636471, 46.299442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031129, -0.605135, -0.795514,
		0.118257, -0.792539, 0.598244,
		-0.992495, -0.075453, 0.096232,
		39.651066, 35.613834, 46.328312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171764, 34.975750, 46.252342>,  <40.345814, 35.666653, 46.260948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171764, 34.975750, 46.252342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820400, 35.148922, 46.171375>,  <39.609581, 35.252823, 46.122795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820400, 35.148922, 46.171375>,  <40.171764, 34.975750, 46.252342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820400, 35.148922, 46.171375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110853, -0.596571, -0.794867,
		-0.464877, -0.675779, 0.572024,
		-0.878408, 0.432927, -0.202420,
		39.556877, 35.278801, 46.110649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641228, 34.443371, 46.082054>,  <40.171764, 34.975750, 46.252342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641228, 34.443371, 46.082054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488117, 34.778214, 45.925728>,  <39.396252, 34.979118, 45.831932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488117, 34.778214, 45.925728>,  <39.641228, 34.443371, 46.082054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488117, 34.778214, 45.925728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338796, -0.520755, -0.783602,
		-0.859478, -0.167533, 0.482939,
		-0.382772, 0.837107, -0.390818,
		39.373287, 35.029346, 45.808483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031464, 34.241978, 45.701744>,  <39.641228, 34.443371, 46.082054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031464, 34.241978, 45.701744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138721, 34.598526, 45.555561>,  <39.203075, 34.812454, 45.467850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138721, 34.598526, 45.555561>,  <39.031464, 34.241978, 45.701744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138721, 34.598526, 45.555561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107694, -0.349237, -0.930825,
		-0.957340, 0.288955, 0.002349,
		0.268146, 0.891369, -0.365458,
		39.219166, 34.865936, 45.445923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541157, 34.329220, 45.225349>,  <39.031464, 34.241978, 45.701744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541157, 34.329220, 45.225349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835884, 34.580280, 45.124828>,  <39.012722, 34.730915, 45.064518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835884, 34.580280, 45.124828>,  <38.541157, 34.329220, 45.225349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835884, 34.580280, 45.124828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073462, -0.295169, -0.952617,
		-0.672084, 0.720369, -0.171379,
		0.736822, 0.627649, -0.251298,
		39.056931, 34.768574, 45.049438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334751, 34.704254, 44.714092>,  <38.541157, 34.329220, 45.225349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334751, 34.704254, 44.714092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721340, 34.803272, 44.686825>,  <38.953293, 34.862682, 44.670464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721340, 34.803272, 44.686825>,  <38.334751, 34.704254, 44.714092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721340, 34.803272, 44.686825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081101, 0.042419, -0.995803,
		-0.243617, 0.967947, 0.061073,
		0.966475, 0.247547, -0.068167,
		39.011284, 34.877537, 44.666374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357422, 35.292072, 44.324493>,  <38.334751, 34.704254, 44.714092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357422, 35.292072, 44.324493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714439, 35.113281, 44.300591>,  <38.928650, 35.006004, 44.286247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714439, 35.113281, 44.300591>,  <38.357422, 35.292072, 44.324493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714439, 35.113281, 44.300591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061422, 0.010788, -0.998053,
		0.446755, 0.894479, -0.017826,
		0.892545, -0.446980, -0.059760,
		38.982204, 34.979187, 44.282661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741337, 35.629360, 43.751976>,  <38.357422, 35.292072, 44.324493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741337, 35.629360, 43.751976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916351, 35.271404, 43.787163>,  <39.021358, 35.056629, 43.808273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916351, 35.271404, 43.787163>,  <38.741337, 35.629360, 43.751976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916351, 35.271404, 43.787163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115593, -0.041037, -0.992449,
		0.891741, 0.444398, 0.085488,
		0.437534, -0.894889, 0.087964,
		39.047611, 35.002937, 43.813553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357655, 35.595829, 43.338497>,  <38.741337, 35.629360, 43.751976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357655, 35.595829, 43.338497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260479, 35.213341, 43.403763>,  <39.202171, 34.983849, 43.442921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260479, 35.213341, 43.403763>,  <39.357655, 35.595829, 43.338497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260479, 35.213341, 43.403763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150350, -0.203284, -0.967507,
		0.958318, -0.210517, 0.193154,
		-0.242942, -0.956221, 0.163160,
		39.187595, 34.926476, 43.452709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681736, 35.324329, 42.897736>,  <39.357655, 35.595829, 43.338497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681736, 35.324329, 42.897736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468952, 35.000156, 42.995892>,  <39.341282, 34.805653, 43.054787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468952, 35.000156, 42.995892>,  <39.681736, 35.324329, 42.897736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468952, 35.000156, 42.995892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221669, -0.412975, -0.883354,
		0.817241, -0.415511, 0.399334,
		-0.531958, -0.810433, 0.245394,
		39.309364, 34.757027, 43.069511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075722, 34.768707, 42.719193>,  <39.681736, 35.324329, 42.897736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075722, 34.768707, 42.719193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698921, 34.635712, 42.737453>,  <39.472839, 34.555912, 42.748409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698921, 34.635712, 42.737453>,  <40.075722, 34.768707, 42.719193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698921, 34.635712, 42.737453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117615, -0.454446, -0.882976,
		0.314326, -0.826395, 0.467194,
		-0.942001, -0.332491, 0.045648,
		39.416321, 34.535965, 42.751148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092232, 34.050900, 42.698486>,  <40.075722, 34.768707, 42.719193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092232, 34.050900, 42.698486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736008, 34.171341, 42.562111>,  <39.522274, 34.243607, 42.480286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736008, 34.171341, 42.562111>,  <40.092232, 34.050900, 42.698486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736008, 34.171341, 42.562111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217376, -0.376684, -0.900476,
		-0.399565, -0.876039, 0.270007,
		-0.890559, 0.301105, -0.340940,
		39.468838, 34.261673, 42.459827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957829, 33.601955, 42.149620>,  <40.092232, 34.050900, 42.698486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957829, 33.601955, 42.149620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678326, 33.879128, 42.078537>,  <39.510624, 34.045429, 42.035889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678326, 33.879128, 42.078537>,  <39.957829, 33.601955, 42.149620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678326, 33.879128, 42.078537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159495, -0.393076, -0.905568,
		-0.697349, -0.604431, 0.385185,
		-0.698760, 0.692931, -0.177707,
		39.468697, 34.087006, 42.025227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550453, 33.339058, 41.658985>,  <39.957829, 33.601955, 42.149620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550453, 33.339058, 41.658985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417397, 33.713272, 41.611446>,  <39.337563, 33.937801, 41.582924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417397, 33.713272, 41.611446>,  <39.550453, 33.339058, 41.658985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417397, 33.713272, 41.611446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217202, -0.198634, -0.955703,
		-0.917701, -0.292090, 0.269274,
		-0.332638, 0.935536, -0.118845,
		39.317604, 33.993935, 41.575794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985226, 33.313988, 41.121559>,  <39.550453, 33.339058, 41.658985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985226, 33.313988, 41.121559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139492, 33.683002, 41.116161>,  <39.232052, 33.904411, 41.112923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139492, 33.683002, 41.116161>,  <38.985226, 33.313988, 41.121559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139492, 33.683002, 41.116161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192616, 0.066206, -0.979038,
		-0.902307, 0.380185, 0.203229,
		0.385671, 0.922538, -0.013491,
		39.255192, 33.959763, 41.112114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427483, 33.753014, 40.889927>,  <38.985226, 33.313988, 41.121559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427483, 33.753014, 40.889927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783138, 33.922874, 40.821686>,  <38.996532, 34.024792, 40.780743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783138, 33.922874, 40.821686>,  <38.427483, 33.753014, 40.889927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783138, 33.922874, 40.821686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226248, 0.083848, -0.970454,
		-0.397805, 0.901464, 0.170630,
		0.889136, 0.424656, -0.170599,
		39.049881, 34.050270, 40.770508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415871, 34.225433, 40.390366>,  <38.427483, 33.753014, 40.889927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415871, 34.225433, 40.390366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810406, 34.176441, 40.346306>,  <39.047127, 34.147045, 40.319870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810406, 34.176441, 40.346306>,  <38.415871, 34.225433, 40.390366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810406, 34.176441, 40.346306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090266, 0.157497, -0.983385,
		0.137796, 0.979894, 0.144289,
		0.986339, -0.122483, -0.110154,
		39.106308, 34.139698, 40.313259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591904, 34.725777, 39.914268>,  <38.415871, 34.225433, 40.390366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591904, 34.725777, 39.914268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893696, 34.463913, 39.895603>,  <39.074772, 34.306793, 39.884403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893696, 34.463913, 39.895603>,  <38.591904, 34.725777, 39.914268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893696, 34.463913, 39.895603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019473, 0.048743, -0.998621,
		0.656034, 0.754349, 0.024027,
		0.754480, -0.654662, -0.046666,
		39.120041, 34.267513, 39.881603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148521, 35.047443, 39.649906>,  <38.591904, 34.725777, 39.914268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148521, 35.047443, 39.649906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232887, 34.662483, 39.581444>,  <39.283508, 34.431507, 39.540367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232887, 34.662483, 39.581444>,  <39.148521, 35.047443, 39.649906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232887, 34.662483, 39.581444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260055, 0.224031, -0.939245,
		0.942277, 0.153592, 0.297530,
		0.210917, -0.962403, -0.171157,
		39.296162, 34.373764, 39.530098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781483, 35.054352, 39.305759>,  <39.148521, 35.047443, 39.649906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781483, 35.054352, 39.305759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654774, 34.682236, 39.231773>,  <39.578751, 34.458965, 39.187382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654774, 34.682236, 39.231773>,  <39.781483, 35.054352, 39.305759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654774, 34.682236, 39.231773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341318, 0.070142, -0.937327,
		0.884963, -0.360047, 0.295307,
		-0.316768, -0.930294, -0.184964,
		39.559742, 34.403149, 39.176285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231300, 34.800987, 38.813671>,  <39.781483, 35.054352, 39.305759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231300, 34.800987, 38.813671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927593, 34.546654, 38.758205>,  <39.745369, 34.394054, 38.724926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927593, 34.546654, 38.758205>,  <40.231300, 34.800987, 38.813671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927593, 34.546654, 38.758205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085196, 0.114119, -0.989807,
		0.645172, -0.763347, -0.032477,
		-0.759272, -0.635829, -0.138661,
		39.699810, 34.355904, 38.716606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540962, 34.398483, 38.480618>,  <40.231300, 34.800987, 38.813671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540962, 34.398483, 38.480618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149288, 34.365242, 38.406548>,  <39.914284, 34.345299, 38.362106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149288, 34.365242, 38.406548>,  <40.540962, 34.398483, 38.480618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149288, 34.365242, 38.406548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183080, 0.032198, -0.982571,
		0.087616, -0.996021, -0.016313,
		-0.979186, -0.083103, -0.185172,
		39.855534, 34.340313, 38.350994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498558, 33.774475, 38.001686>,  <40.540962, 34.398483, 38.480618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498558, 33.774475, 38.001686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167847, 33.996361, 37.964317>,  <39.969421, 34.129494, 37.941895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167847, 33.996361, 37.964317>,  <40.498558, 33.774475, 38.001686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167847, 33.996361, 37.964317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285367, 0.270478, -0.919461,
		-0.484770, -0.786850, -0.381923,
		-0.826779, 0.554715, -0.093421,
		39.919811, 34.162777, 37.936291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216820, 33.499149, 37.410122>,  <40.498558, 33.774475, 38.001686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216820, 33.499149, 37.410122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026054, 33.849514, 37.439339>,  <39.911594, 34.059731, 37.456871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026054, 33.849514, 37.439339>,  <40.216820, 33.499149, 37.410122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026054, 33.849514, 37.439339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240461, 0.209956, -0.947680,
		-0.845419, -0.434396, -0.310753,
		-0.476913, 0.875910, 0.073045,
		39.882980, 34.112286, 37.461250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926895, 33.644367, 36.727650>,  <40.216820, 33.499149, 37.410122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926895, 33.644367, 36.727650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987549, 33.970623, 36.950985>,  <40.023941, 34.166378, 37.084984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987549, 33.970623, 36.950985>,  <39.926895, 33.644367, 36.727650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987549, 33.970623, 36.950985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461220, 0.441216, -0.769808,
		-0.874233, 0.374245, -0.309286,
		0.151635, 0.815640, 0.558335,
		40.033039, 34.215317, 37.118484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595921, 34.239708, 36.432186>,  <39.926895, 33.644367, 36.727650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595921, 34.239708, 36.432186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908310, 34.334938, 36.663151>,  <40.095745, 34.392075, 36.801727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908310, 34.334938, 36.663151>,  <39.595921, 34.239708, 36.432186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908310, 34.334938, 36.663151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416255, 0.490832, -0.765386,
		-0.465631, 0.838095, 0.284226,
		0.780973, 0.238077, 0.577408,
		40.142601, 34.406361, 36.836372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680019, 34.920479, 36.327766>,  <39.595921, 34.239708, 36.432186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680019, 34.920479, 36.327766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030117, 34.753582, 36.425632>,  <40.240173, 34.653442, 36.484352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030117, 34.753582, 36.425632>,  <39.680019, 34.920479, 36.327766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030117, 34.753582, 36.425632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463181, 0.577276, -0.672470,
		0.139342, 0.701899, 0.698514,
		0.875241, -0.417242, 0.244668,
		40.292690, 34.628410, 36.499031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128414, 35.426937, 36.358662>,  <39.680019, 34.920479, 36.327766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128414, 35.426937, 36.358662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345692, 35.101059, 36.277458>,  <40.476059, 34.905533, 36.228737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345692, 35.101059, 36.277458>,  <40.128414, 35.426937, 36.358662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345692, 35.101059, 36.277458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580011, 0.538928, -0.610855,
		0.607068, 0.214064, 0.765275,
		0.543190, -0.814698, -0.203006,
		40.508648, 34.856651, 36.216557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823967, 35.535530, 36.590401>,  <40.128414, 35.426937, 36.358662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823967, 35.535530, 36.590401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764305, 35.296852, 36.275009>,  <40.728508, 35.153645, 36.085773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764305, 35.296852, 36.275009>,  <40.823967, 35.535530, 36.590401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764305, 35.296852, 36.275009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475190, 0.656035, -0.586355,
		0.867149, -0.462135, 0.185696,
		-0.149152, -0.596698, -0.788483,
		40.719559, 35.117844, 36.038464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469284, 35.361839, 36.160564>,  <40.823967, 35.535530, 36.590401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469284, 35.361839, 36.160564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172085, 35.310638, 35.897789>,  <40.993763, 35.279919, 35.740124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172085, 35.310638, 35.897789>,  <41.469284, 35.361839, 36.160564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172085, 35.310638, 35.897789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530615, 0.485569, -0.694745,
		0.407918, -0.864776, -0.292857,
		-0.743001, -0.128004, -0.656936,
		40.949184, 35.272236, 35.700706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987400, 35.495022, 35.767242>,  <41.469284, 35.361839, 36.160564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987400, 35.495022, 35.767242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382328, 35.442913, 35.730968>,  <42.619286, 35.411648, 35.709202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382328, 35.442913, 35.730968>,  <41.987400, 35.495022, 35.767242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382328, 35.442913, 35.730968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035464, 0.375859, -0.925998,
		0.154718, 0.917474, 0.366474,
		0.987322, -0.130272, -0.090690,
		42.678524, 35.403831, 35.703762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259159, 36.109631, 35.465767>,  <41.987400, 35.495022, 35.767242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259159, 36.109631, 35.465767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501049, 35.797825, 35.400455>,  <42.646183, 35.610741, 35.361267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501049, 35.797825, 35.400455>,  <42.259159, 36.109631, 35.465767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501049, 35.797825, 35.400455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188537, 0.059073, -0.980288,
		0.773796, 0.623589, -0.111245,
		0.604725, -0.779517, -0.163281,
		42.682468, 35.563969, 35.351471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572670, 36.327538, 34.956684>,  <42.259159, 36.109631, 35.465767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572670, 36.327538, 34.956684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599472, 35.928535, 34.947815>,  <42.615551, 35.689133, 34.942493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599472, 35.928535, 34.947815>,  <42.572670, 36.327538, 34.956684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599472, 35.928535, 34.947815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154081, 0.011610, -0.987990,
		0.985784, 0.069613, -0.152919,
		0.067001, -0.997506, -0.022171,
		42.619572, 35.629284, 34.941162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997272, 36.130325, 34.432137>,  <42.572670, 36.327538, 34.956684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997272, 36.130325, 34.432137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793571, 35.790401, 34.486530>,  <42.671352, 35.586449, 34.519165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793571, 35.790401, 34.486530>,  <42.997272, 36.130325, 34.432137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793571, 35.790401, 34.486530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218602, -0.025097, -0.975491,
		0.832393, -0.526494, -0.172989,
		-0.509249, -0.849808, 0.135983,
		42.640797, 35.535458, 34.527325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074711, 35.735500, 33.778412>,  <42.997272, 36.130325, 34.432137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074711, 35.735500, 33.778412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761330, 35.584156, 33.975609>,  <42.573299, 35.493351, 34.093925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761330, 35.584156, 33.975609>,  <43.074711, 35.735500, 33.778412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761330, 35.584156, 33.975609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517532, -0.041932, -0.854636,
		0.344031, -0.924709, -0.162960,
		-0.783456, -0.378358, 0.492992,
		42.526291, 35.470650, 34.123505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862049, 35.055550, 33.432495>,  <43.074711, 35.735500, 33.778412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862049, 35.055550, 33.432495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547543, 35.219410, 33.617523>,  <42.358837, 35.317726, 33.728539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547543, 35.219410, 33.617523>,  <42.862049, 35.055550, 33.432495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547543, 35.219410, 33.617523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488870, 0.045397, -0.871175,
		-0.377878, -0.911111, 0.164573,
		-0.786266, 0.409652, 0.462569,
		42.311665, 35.342304, 33.756294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381092, 34.547176, 33.329834>,  <42.862049, 35.055550, 33.432495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381092, 34.547176, 33.329834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178249, 34.878590, 33.424801>,  <42.056541, 35.077438, 33.481781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178249, 34.878590, 33.424801>,  <42.381092, 34.547176, 33.329834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178249, 34.878590, 33.424801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601505, -0.142928, -0.785980,
		-0.617278, -0.541388, 0.570848,
		-0.507110, 0.828535, 0.237421,
		42.026115, 35.127151, 33.496029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607250, 34.515793, 33.067043>,  <42.381092, 34.547176, 33.329834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607250, 34.515793, 33.067043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670811, 34.909573, 33.096992>,  <41.708946, 35.145840, 33.114964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670811, 34.909573, 33.096992>,  <41.607250, 34.515793, 33.067043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670811, 34.909573, 33.096992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345331, 0.126466, -0.929921,
		-0.924931, 0.121907, 0.360057,
		0.158899, 0.984452, 0.074874,
		41.718479, 35.204906, 33.119453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125259, 34.716755, 32.699581>,  <41.607250, 34.515793, 33.067043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125259, 34.716755, 32.699581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398056, 35.008579, 32.720135>,  <41.561733, 35.183674, 32.732468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398056, 35.008579, 32.720135>,  <41.125259, 34.716755, 32.699581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398056, 35.008579, 32.720135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037515, 0.035267, -0.998674,
		-0.730401, 0.683010, -0.003318,
		0.681987, 0.729557, 0.051382,
		41.602654, 35.227448, 32.735550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048840, 35.246807, 32.184162>,  <41.125259, 34.716755, 32.699581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048840, 35.246807, 32.184162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435535, 35.282291, 32.280109>,  <41.667553, 35.303581, 32.337677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435535, 35.282291, 32.280109>,  <41.048840, 35.246807, 32.184162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435535, 35.282291, 32.280109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228587, 0.120883, -0.965989,
		-0.114687, 0.988695, 0.096585,
		0.966744, 0.088709, 0.239867,
		41.725559, 35.308903, 32.352070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268639, 35.875458, 31.737213>,  <41.048840, 35.246807, 32.184162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268639, 35.875458, 31.737213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573044, 35.629818, 31.820871>,  <41.755688, 35.482433, 31.871067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573044, 35.629818, 31.820871>,  <41.268639, 35.875458, 31.737213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573044, 35.629818, 31.820871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426031, 0.229950, -0.874997,
		0.489242, 0.754987, 0.436620,
		0.761012, -0.614099, 0.209147,
		41.801346, 35.445587, 31.883615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855061, 36.087219, 31.413773>,  <41.268639, 35.875458, 31.737213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855061, 36.087219, 31.413773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035313, 35.745041, 31.515863>,  <42.143463, 35.539734, 31.577118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035313, 35.745041, 31.515863>,  <41.855061, 36.087219, 31.413773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035313, 35.745041, 31.515863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376198, -0.077299, -0.923309,
		0.809572, 0.512088, 0.286985,
		0.450631, -0.855448, 0.255226,
		42.170502, 35.488407, 31.592432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589493, 36.118683, 31.200214>,  <41.855061, 36.087219, 31.413773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589493, 36.118683, 31.200214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527130, 35.724422, 31.226086>,  <42.489712, 35.487865, 31.241610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527130, 35.724422, 31.226086>,  <42.589493, 36.118683, 31.200214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527130, 35.724422, 31.226086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413938, -0.124647, -0.901731,
		0.896855, -0.113808, 0.427432,
		-0.155902, -0.985653, 0.064680,
		42.480358, 35.428726, 31.245489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188148, 35.752739, 30.875565>,  <42.589493, 36.118683, 31.200214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188148, 35.752739, 30.875565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911251, 35.464848, 30.896698>,  <42.745113, 35.292114, 30.909378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911251, 35.464848, 30.896698>,  <43.188148, 35.752739, 30.875565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911251, 35.464848, 30.896698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384046, -0.429381, -0.817399,
		0.610991, -0.545548, 0.573645,
		-0.692242, -0.719729, 0.052832,
		42.703579, 35.248928, 30.912548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512836, 35.120586, 30.770285>,  <43.188148, 35.752739, 30.875565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512836, 35.120586, 30.770285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126904, 35.077503, 30.674368>,  <42.895344, 35.051655, 30.616817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126904, 35.077503, 30.674368>,  <43.512836, 35.120586, 30.770285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126904, 35.077503, 30.674368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262225, -0.330571, -0.906621,
		0.018381, -0.937615, 0.347188,
		-0.964832, -0.107706, -0.239790,
		42.837456, 35.045193, 30.602430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608448, 34.506050, 30.471218>,  <43.512836, 35.120586, 30.770285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.608448, 34.506050, 30.471218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274879, 34.704506, 30.374544>,  <43.074738, 34.823582, 30.316540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274879, 34.704506, 30.374544>,  <43.608448, 34.506050, 30.471218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274879, 34.704506, 30.374544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269906, -0.015327, -0.962765,
		-0.481374, -0.868105, -0.121131,
		-0.833924, 0.496144, -0.241685,
		43.024704, 34.853348, 30.302038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354645, 34.131775, 29.868292>,  <43.608448, 34.506050, 30.471218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354645, 34.131775, 29.868292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.174042, 34.488628, 29.862103>,  <43.065681, 34.702740, 29.858389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.174042, 34.488628, 29.862103>,  <43.354645, 34.131775, 29.868292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174042, 34.488628, 29.862103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097775, 0.032229, -0.994687,
		-0.886895, -0.450619, -0.101780,
		-0.451505, 0.892134, -0.015475,
		43.038589, 34.756268, 29.857460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925144, 34.084370, 29.300474>,  <43.354645, 34.131775, 29.868292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925144, 34.084370, 29.300474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942627, 34.476875, 29.375528>,  <42.953117, 34.712379, 29.420561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942627, 34.476875, 29.375528>,  <42.925144, 34.084370, 29.300474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942627, 34.476875, 29.375528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188701, 0.176325, -0.966075,
		-0.981062, 0.077627, -0.177459,
		0.043703, 0.981266, 0.187635,
		42.955738, 34.771255, 29.431818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489845, 34.395744, 28.846310>,  <42.925144, 34.084370, 29.300474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489845, 34.395744, 28.846310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.709660, 34.708431, 28.964247>,  <42.841549, 34.896042, 29.035009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.709660, 34.708431, 28.964247>,  <42.489845, 34.395744, 28.846310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709660, 34.708431, 28.964247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031914, 0.372291, -0.927567,
		-0.834860, 0.500323, 0.229535,
		0.549537, 0.781714, 0.294844,
		42.874519, 34.942944, 29.052700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217213, 34.989143, 28.516893>,  <42.489845, 34.395744, 28.846310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217213, 34.989143, 28.516893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590221, 35.095638, 28.614477>,  <42.814026, 35.159534, 28.673027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590221, 35.095638, 28.614477>,  <42.217213, 34.989143, 28.516893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590221, 35.095638, 28.614477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084765, 0.495331, -0.864559,
		-0.351016, 0.826902, 0.439341,
		0.932525, 0.266233, 0.243962,
		42.869980, 35.175507, 28.687666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318752, 35.732658, 28.349422>,  <42.217213, 34.989143, 28.516893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318752, 35.732658, 28.349422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688919, 35.581234, 28.342613>,  <42.911018, 35.490379, 28.338528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688919, 35.581234, 28.342613>,  <42.318752, 35.732658, 28.349422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688919, 35.581234, 28.342613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140856, 0.385345, -0.911959,
		0.351792, 0.841547, 0.409929,
		0.925420, -0.378560, -0.017024,
		42.966545, 35.467667, 28.337505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811096, 36.221638, 28.004654>,  <42.318752, 35.732658, 28.349422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811096, 36.221638, 28.004654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994846, 35.866344, 28.003229>,  <43.105099, 35.653168, 28.002375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994846, 35.866344, 28.003229>,  <42.811096, 36.221638, 28.004654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994846, 35.866344, 28.003229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347348, 0.183329, -0.919641,
		0.817510, 0.421226, 0.392743,
		0.459378, -0.888234, -0.003561,
		43.132660, 35.599873, 28.002161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502022, 36.313816, 27.938009>,  <42.811096, 36.221638, 28.004654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502022, 36.313816, 27.938009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403656, 35.949383, 27.805670>,  <43.344635, 35.730724, 27.726267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403656, 35.949383, 27.805670>,  <43.502022, 36.313816, 27.938009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403656, 35.949383, 27.805670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491376, 0.177039, -0.852764,
		0.835508, -0.372281, 0.404146,
		-0.245918, -0.911079, -0.330847,
		43.329880, 35.676060, 27.706415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006042, 36.883942, 27.514544>,  <43.502022, 36.313816, 27.938009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006042, 36.883942, 27.514544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947224, 37.109699, 27.189623>,  <43.911930, 37.245155, 26.994671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947224, 37.109699, 27.189623>,  <44.006042, 36.883942, 27.514544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947224, 37.109699, 27.189623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941715, -0.331096, -0.059571,
		-0.302572, 0.756197, 0.580187,
		-0.147050, 0.564396, -0.812302,
		43.903111, 37.279018, 26.945932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170971, 37.374130, 28.179466>,  <44.006042, 36.883942, 27.514544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170971, 37.374130, 28.179466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471256, 37.635574, 28.217880>,  <44.651428, 37.792439, 28.240929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471256, 37.635574, 28.217880>,  <44.170971, 37.374130, 28.179466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.471256, 37.635574, 28.217880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430287, -0.373464, -0.821814,
		-0.501277, 0.658273, -0.561603,
		0.750716, 0.653607, 0.096037,
		44.696472, 37.831657, 28.246691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302612, 37.583244, 27.509134>,  <44.170971, 37.374130, 28.179466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302612, 37.583244, 27.509134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651554, 37.587879, 27.704632>,  <44.860920, 37.590660, 27.821930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651554, 37.587879, 27.704632>,  <44.302612, 37.583244, 27.509134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651554, 37.587879, 27.704632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469196, -0.300671, -0.830333,
		0.137329, 0.953658, -0.267727,
		0.872351, 0.011588, 0.488743,
		44.913258, 37.591354, 27.851255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809685, 37.622532, 26.895010>,  <44.302612, 37.583244, 27.509134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809685, 37.622532, 26.895010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.029846, 37.554008, 27.221863>,  <45.161945, 37.512894, 27.417974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.029846, 37.554008, 27.221863>,  <44.809685, 37.622532, 26.895010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.029846, 37.554008, 27.221863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724312, -0.388797, -0.569393,
		0.415241, 0.905257, -0.089915,
		0.550406, -0.171309, 0.817133,
		45.194969, 37.502617, 27.467003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.534851, 37.882137, 26.819841>,  <44.809685, 37.622532, 26.895010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.534851, 37.882137, 26.819841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.567429, 37.596279, 27.097733>,  <45.586975, 37.424763, 27.264467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.567429, 37.596279, 27.097733>,  <45.534851, 37.882137, 26.819841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.567429, 37.596279, 27.097733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936594, -0.183483, -0.298539,
		0.340822, 0.674990, 0.654393,
		0.081441, -0.714649, 0.694726,
		45.591862, 37.381886, 27.306150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.799282, 38.463379, 27.198895>,  <45.534851, 37.882137, 26.819841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.799282, 38.463379, 27.198895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.765556, 38.108635, 27.380610>,  <45.745319, 37.895790, 27.489639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.765556, 38.108635, 27.380610>,  <45.799282, 38.463379, 27.198895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.765556, 38.108635, 27.380610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994666, -0.047722, 0.091449,
		-0.059422, 0.459574, 0.886149,
		-0.084316, -0.886856, 0.454287,
		45.740261, 37.842579, 27.516895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.350723, 38.491283, 27.700603>,  <45.799282, 38.463379, 27.198895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.350723, 38.491283, 27.700603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.225922, 38.114956, 27.647657>,  <46.151039, 37.889160, 27.615889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.225922, 38.114956, 27.647657>,  <46.350723, 38.491283, 27.700603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.225922, 38.114956, 27.647657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943435, -0.323249, 0.073759,
		-0.112181, -0.101867, 0.988453,
		-0.312003, -0.940815, -0.132367,
		46.132320, 37.832710, 27.607946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.735096, 38.209072, 28.268379>,  <46.350723, 38.491283, 27.700603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.735096, 38.209072, 28.268379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701328, 37.927162, 28.550137>,  <46.681068, 37.758018, 28.719191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701328, 37.927162, 28.550137>,  <46.735096, 38.209072, 28.268379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.701328, 37.927162, 28.550137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695909, -0.547646, -0.464537,
		0.713151, 0.450976, 0.536691,
		-0.084422, -0.704773, 0.704392,
		46.676003, 37.715729, 28.761454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719772, 39.000839, 28.519596>,  <46.735096, 38.209072, 28.268379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719772, 39.000839, 28.519596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.355053, 39.159286, 28.476299>,  <46.136223, 39.254356, 28.450321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.355053, 39.159286, 28.476299>,  <46.719772, 39.000839, 28.519596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.355053, 39.159286, 28.476299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280954, -0.409528, 0.867959,
		0.299486, 0.821813, 0.484697,
		-0.911797, 0.396119, -0.108244,
		46.081512, 39.278122, 28.443827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.532448, 39.283836, 29.207834>,  <46.719772, 39.000839, 28.519596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.532448, 39.283836, 29.207834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.181950, 39.299679, 29.015739>,  <45.971649, 39.309185, 28.900482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.181950, 39.299679, 29.015739>,  <46.532448, 39.283836, 29.207834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.181950, 39.299679, 29.015739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464243, -0.336447, 0.819318,
		-0.129124, 0.940869, 0.313197,
		-0.876245, 0.039606, -0.480235,
		45.919075, 39.311562, 28.871670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.114613, 39.765610, 29.527626>,  <46.532448, 39.283836, 29.207834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.114613, 39.765610, 29.527626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854836, 39.533287, 29.331301>,  <45.698971, 39.393894, 29.213505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854836, 39.533287, 29.331301>,  <46.114613, 39.765610, 29.527626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.854836, 39.533287, 29.331301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506179, -0.151479, 0.849021,
		-0.567462, 0.799826, -0.195614,
		-0.649438, -0.580803, -0.490814,
		45.660004, 39.359047, 29.184057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549252, 39.913040, 29.790758>,  <46.114613, 39.765610, 29.527626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549252, 39.913040, 29.790758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451054, 39.566895, 29.616001>,  <45.392136, 39.359207, 29.511147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451054, 39.566895, 29.616001>,  <45.549252, 39.913040, 29.790758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451054, 39.566895, 29.616001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549621, -0.246998, 0.798066,
		-0.798531, 0.436045, -0.414986,
		-0.245492, -0.865365, -0.436895,
		45.377407, 39.307285, 29.484932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.828102, 39.808720, 29.947838>,  <45.549252, 39.913040, 29.790758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.828102, 39.808720, 29.947838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.992741, 39.457455, 29.850327>,  <45.091522, 39.246696, 29.791819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.992741, 39.457455, 29.850327>,  <44.828102, 39.808720, 29.947838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.992741, 39.457455, 29.850327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495367, -0.440091, 0.748954,
		-0.764985, -0.187503, -0.616149,
		0.411593, -0.878158, -0.243780,
		45.116219, 39.194008, 29.777193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324978, 39.374672, 30.028605>,  <44.828102, 39.808720, 29.947838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324978, 39.374672, 30.028605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652027, 39.145580, 30.052197>,  <44.848255, 39.008125, 30.066353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652027, 39.145580, 30.052197>,  <44.324978, 39.374672, 30.028605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652027, 39.145580, 30.052197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390554, -0.476431, 0.787706,
		-0.423044, -0.667078, -0.613222,
		0.817619, -0.572731, 0.058979,
		44.897312, 38.973763, 30.069891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.098038, 38.655392, 29.967314>,  <44.324978, 39.374672, 30.028605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.098038, 38.655392, 29.967314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453449, 38.659210, 30.150803>,  <44.666695, 38.661499, 30.260895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453449, 38.659210, 30.150803>,  <44.098038, 38.655392, 29.967314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453449, 38.659210, 30.150803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407754, -0.441961, 0.799004,
		0.210362, -0.896984, -0.388803,
		0.888529, 0.009544, 0.458720,
		44.720009, 38.662075, 30.288418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.193394, 37.900749, 30.189627>,  <44.098038, 38.655392, 29.967314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.193394, 37.900749, 30.189627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480133, 38.079868, 30.403395>,  <44.652176, 38.187340, 30.531654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480133, 38.079868, 30.403395>,  <44.193394, 37.900749, 30.189627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480133, 38.079868, 30.403395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152199, -0.647502, 0.746710,
		0.680415, -0.616616, -0.396005,
		0.716848, 0.447801, 0.534419,
		44.695187, 38.214211, 30.563721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638100, 37.349697, 30.404421>,  <44.193394, 37.900749, 30.189627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638100, 37.349697, 30.404421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.686771, 37.674217, 30.633154>,  <44.715973, 37.868927, 30.770393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.686771, 37.674217, 30.633154>,  <44.638100, 37.349697, 30.404421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.686771, 37.674217, 30.633154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166641, -0.551237, 0.817538,
		0.978481, -0.194767, 0.068122,
		0.121677, 0.811297, 0.571831,
		44.723274, 37.917606, 30.804703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.185097, 37.208031, 30.858391>,  <44.638100, 37.349697, 30.404421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.185097, 37.208031, 30.858391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.979450, 37.506451, 31.027668>,  <44.856060, 37.685501, 31.129234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.979450, 37.506451, 31.027668>,  <45.185097, 37.208031, 30.858391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.979450, 37.506451, 31.027668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054356, -0.464062, 0.884133,
		0.855995, 0.477552, 0.198031,
		-0.514118, 0.746050, 0.423193,
		44.825214, 37.730267, 31.154625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616459, 37.443626, 31.402248>,  <45.185097, 37.208031, 30.858391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.616459, 37.443626, 31.402248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240849, 37.553688, 31.484726>,  <45.015484, 37.619724, 31.534212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240849, 37.553688, 31.484726>,  <45.616459, 37.443626, 31.402248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240849, 37.553688, 31.484726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001569, -0.596240, 0.802805,
		0.343840, 0.754179, 0.559453,
		-0.939027, 0.275159, 0.206195,
		44.959141, 37.636234, 31.546585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.532154, 37.610550, 32.131535>,  <45.616459, 37.443626, 31.402248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.532154, 37.610550, 32.131535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142475, 37.589729, 32.043690>,  <44.908669, 37.577236, 31.990984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142475, 37.589729, 32.043690>,  <45.532154, 37.610550, 32.131535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142475, 37.589729, 32.043690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168854, -0.477528, 0.862238,
		-0.149753, 0.877073, 0.456418,
		-0.974198, -0.052055, -0.219608,
		44.850216, 37.574112, 31.977808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159149, 37.813965, 32.853477>,  <45.532154, 37.610550, 32.131535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159149, 37.813965, 32.853477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.898285, 37.612717, 32.626652>,  <44.741768, 37.491970, 32.490559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.898285, 37.612717, 32.626652>,  <45.159149, 37.813965, 32.853477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898285, 37.612717, 32.626652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207653, -0.600853, 0.771917,
		-0.729086, 0.621166, 0.287379,
		-0.652161, -0.503118, -0.567060,
		44.702637, 37.461781, 32.456535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488285, 37.712627, 33.260109>,  <45.159149, 37.813965, 32.853477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488285, 37.712627, 33.260109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544460, 37.432632, 32.980026>,  <44.578167, 37.264633, 32.811977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544460, 37.432632, 32.980026>,  <44.488285, 37.712627, 33.260109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544460, 37.432632, 32.980026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165950, -0.713854, 0.680348,
		-0.976082, 0.020650, -0.216418,
		0.140442, -0.699991, -0.700207,
		44.586594, 37.222633, 32.769966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921780, 37.298412, 33.465740>,  <44.488285, 37.712627, 33.260109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921780, 37.298412, 33.465740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134876, 37.060181, 33.225250>,  <44.262733, 36.917240, 33.080956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134876, 37.060181, 33.225250>,  <43.921780, 37.298412, 33.465740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.134876, 37.060181, 33.225250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227417, -0.785051, 0.576174,
		-0.815151, -0.170222, -0.553673,
		0.532739, -0.595583, -0.601224,
		44.294701, 36.881508, 33.044884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537952, 36.637447, 33.355675>,  <43.921780, 37.298412, 33.465740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537952, 36.637447, 33.355675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926220, 36.578114, 33.279991>,  <44.159180, 36.542511, 33.234581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926220, 36.578114, 33.279991>,  <43.537952, 36.637447, 33.355675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926220, 36.578114, 33.279991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006719, -0.803413, 0.595384,
		-0.240331, -0.576649, -0.780844,
		0.970668, -0.148336, -0.189211,
		44.217419, 36.533611, 33.223228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.568531, 35.915634, 33.124039>,  <43.537952, 36.637447, 33.355675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.568531, 35.915634, 33.124039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.919975, 36.019646, 33.284256>,  <44.130840, 36.082054, 33.380386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.919975, 36.019646, 33.284256>,  <43.568531, 35.915634, 33.124039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.919975, 36.019646, 33.284256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052576, -0.780982, 0.622337,
		0.474645, -0.567848, -0.672504,
		0.878606, 0.260032, 0.400544,
		44.183556, 36.097656, 33.404419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936825, 35.302544, 33.110077>,  <43.568531, 35.915634, 33.124039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936825, 35.302544, 33.110077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182636, 35.514175, 33.344147>,  <44.330124, 35.641155, 33.484589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182636, 35.514175, 33.344147>,  <43.936825, 35.302544, 33.110077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182636, 35.514175, 33.344147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281496, -0.839998, 0.463857,
		0.736963, -0.120329, -0.665137,
		0.614529, 0.529078, 0.585175,
		44.366997, 35.672897, 33.519699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605461, 34.943325, 33.168076>,  <43.936825, 35.302544, 33.110077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605461, 34.943325, 33.168076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581116, 35.183472, 33.487038>,  <44.566509, 35.327560, 33.678417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581116, 35.183472, 33.487038>,  <44.605461, 34.943325, 33.168076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.581116, 35.183472, 33.487038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297634, -0.751630, 0.588615,
		0.952738, 0.273163, -0.132939,
		-0.060867, 0.600363, 0.797408,
		44.562855, 35.363579, 33.726261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.213352, 34.784798, 33.608482>,  <44.605461, 34.943325, 33.168076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.213352, 34.784798, 33.608482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.938469, 34.959408, 33.840755>,  <44.773540, 35.064175, 33.980118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.938469, 34.959408, 33.840755>,  <45.213352, 34.784798, 33.608482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.938469, 34.959408, 33.840755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158685, -0.689826, 0.706371,
		0.708916, 0.577570, 0.404785,
		-0.687210, 0.436524, 0.580680,
		44.732307, 35.090366, 34.014961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.544422, 34.856155, 34.222195>,  <45.213352, 34.784798, 33.608482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.544422, 34.856155, 34.222195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.157124, 34.826153, 34.317589>,  <44.924744, 34.808151, 34.374825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.157124, 34.826153, 34.317589>,  <45.544422, 34.856155, 34.222195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.157124, 34.826153, 34.317589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228750, -0.650664, 0.724092,
		0.100862, 0.755653, 0.647160,
		-0.968246, -0.075004, 0.238483,
		44.866650, 34.803650, 34.389133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.013260, 35.022018, 33.686462>,  <45.544422, 34.856155, 34.222195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.013260, 35.022018, 33.686462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.387478, 34.987934, 33.549358>,  <46.612011, 34.967484, 33.467094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.387478, 34.987934, 33.549358>,  <46.013260, 35.022018, 33.686462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.387478, 34.987934, 33.549358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053994, 0.924550, -0.377217,
		0.349045, 0.371412, 0.860361,
		0.935549, -0.085211, -0.342763,
		46.668144, 34.962372, 33.446529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.389938, 35.520527, 34.043079>,  <46.013260, 35.022018, 33.686462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.389938, 35.520527, 34.043079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.603645, 35.449215, 33.712559>,  <46.731869, 35.406425, 33.514248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.603645, 35.449215, 33.712559>,  <46.389938, 35.520527, 34.043079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.603645, 35.449215, 33.712559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149991, 0.981989, -0.114892,
		0.831900, -0.062554, 0.551388,
		0.534270, -0.178282, -0.826300,
		46.763927, 35.395729, 33.464668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.489162, 35.142071, 34.639904>,  <46.389938, 35.520527, 34.043079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.489162, 35.142071, 34.639904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548466, 35.526913, 34.548355>,  <46.584045, 35.757816, 34.493427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548466, 35.526913, 34.548355>,  <46.489162, 35.142071, 34.639904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.548466, 35.526913, 34.548355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492992, 0.272519, 0.826251,
		0.857309, -0.009665, 0.514711,
		0.148255, 0.962102, -0.228869,
		46.592941, 35.815544, 34.479694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.986031, 35.553284, 35.183205>,  <46.489162, 35.142071, 34.639904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.986031, 35.553284, 35.183205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.713219, 35.771954, 34.988895>,  <46.549530, 35.903156, 34.872311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.713219, 35.771954, 34.988895>,  <46.986031, 35.553284, 35.183205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.713219, 35.771954, 34.988895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357843, 0.329828, 0.873591,
		0.637792, 0.769650, -0.029331,
		-0.682034, 0.546674, -0.485776,
		46.508610, 35.935955, 34.843163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.666847, 35.310333, 34.962715>,  <46.986031, 35.553284, 35.183205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.666847, 35.310333, 34.962715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.790218, 34.938648, 34.881290>,  <47.864243, 34.715637, 34.832436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.790218, 34.938648, 34.881290>,  <47.666847, 35.310333, 34.962715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.790218, 34.938648, 34.881290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388849, 0.072139, -0.918473,
		0.868141, 0.362436, -0.339073,
		0.308427, -0.929213, -0.203560,
		47.882748, 34.659885, 34.820221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.420280, 41.011238, 45.684956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.029793, 40.975113, 45.606133>,  <39.795498, 40.953438, 45.558838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.029793, 40.975113, 45.606133>,  <40.420280, 41.011238, 45.684956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029793, 40.975113, 45.606133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215998, -0.481648, -0.849329,
		-0.018210, -0.871699, 0.489703,
		-0.976224, -0.090308, -0.197056,
		39.736927, 40.948021, 45.547016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258991, 40.272209, 45.511581>,  <40.420280, 41.011238, 45.684956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258991, 40.272209, 45.511581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.969662, 40.507404, 45.366764>,  <39.796066, 40.648521, 45.279873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.969662, 40.507404, 45.366764>,  <40.258991, 40.272209, 45.511581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969662, 40.507404, 45.366764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133318, -0.395528, -0.908726,
		-0.677522, -0.705566, 0.207703,
		-0.723319, 0.587992, -0.362044,
		39.752666, 40.683804, 45.258152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861763, 39.794472, 45.023098>,  <40.258991, 40.272209, 45.511581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861763, 39.794472, 45.023098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.781147, 40.174564, 44.928074>,  <39.732777, 40.402622, 44.871059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.781147, 40.174564, 44.928074>,  <39.861763, 39.794472, 45.023098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781147, 40.174564, 44.928074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074439, -0.226973, -0.971052,
		-0.976648, -0.213389, -0.024991,
		-0.201539, 0.950236, -0.237557,
		39.720684, 40.459637, 44.856808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263924, 39.795635, 44.462128>,  <39.861763, 39.794472, 45.023098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263924, 39.795635, 44.462128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.383705, 40.176472, 44.437340>,  <39.455574, 40.404976, 44.422466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.383705, 40.176472, 44.437340>,  <39.263924, 39.795635, 44.462128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383705, 40.176472, 44.437340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128357, -0.024161, -0.991434,
		-0.945436, 0.304847, 0.114973,
		0.299458, 0.952095, -0.061972,
		39.473541, 40.462101, 44.418747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799915, 40.133144, 44.077217>,  <39.263924, 39.795635, 44.462128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799915, 40.133144, 44.077217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.125484, 40.359261, 44.023575>,  <39.320824, 40.494930, 43.991390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.125484, 40.359261, 44.023575>,  <38.799915, 40.133144, 44.077217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125484, 40.359261, 44.023575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125796, -0.053869, -0.990592,
		-0.567193, 0.823134, 0.027266,
		0.813921, 0.565287, -0.134101,
		39.369659, 40.528847, 43.983345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591248, 40.728794, 43.695816>,  <38.799915, 40.133144, 44.077217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591248, 40.728794, 43.695816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.984009, 40.692375, 43.629387>,  <39.219666, 40.670525, 43.589527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.984009, 40.692375, 43.629387>,  <38.591248, 40.728794, 43.695816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984009, 40.692375, 43.629387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160379, 0.066725, -0.984797,
		0.100747, 0.993608, 0.050915,
		0.981900, -0.091050, -0.166077,
		39.278580, 40.665062, 43.579563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725723, 41.184158, 43.180058>,  <38.591248, 40.728794, 43.695816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725723, 41.184158, 43.180058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.047970, 40.948425, 43.155800>,  <39.241318, 40.806988, 43.141247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.047970, 40.948425, 43.155800>,  <38.725723, 41.184158, 43.180058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047970, 40.948425, 43.155800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034258, 0.055848, -0.997851,
		0.591450, 0.805960, 0.024803,
		0.805614, -0.589329, -0.060642,
		39.289654, 40.771626, 43.137608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129707, 41.247379, 42.478012>,  <38.725723, 41.184158, 43.180058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129707, 41.247379, 42.478012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.287991, 40.914661, 42.633724>,  <39.382961, 40.715031, 42.727154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.287991, 40.914661, 42.633724>,  <39.129707, 41.247379, 42.478012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287991, 40.914661, 42.633724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185902, -0.342560, -0.920920,
		0.899366, 0.436780, 0.019079,
		0.395704, -0.831790, 0.389285,
		39.406700, 40.665123, 42.750511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844803, 41.132011, 42.064816>,  <39.129707, 41.247379, 42.478012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844803, 41.132011, 42.064816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.688553, 40.798771, 42.221462>,  <39.594803, 40.598827, 42.315449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.688553, 40.798771, 42.221462>,  <39.844803, 41.132011, 42.064816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688553, 40.798771, 42.221462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183371, -0.487307, -0.853760,
		0.902102, -0.261688, 0.343120,
		-0.390624, -0.833097, 0.391615,
		39.571365, 40.548843, 42.338947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262066, 40.600349, 41.775940>,  <39.844803, 41.132011, 42.064816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262066, 40.600349, 41.775940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.941971, 40.424995, 41.939617>,  <39.749916, 40.319782, 42.037823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.941971, 40.424995, 41.939617>,  <40.262066, 40.600349, 41.775940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941971, 40.424995, 41.939617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105195, -0.569153, -0.815474,
		0.590388, -0.695616, 0.409341,
		-0.800235, -0.438386, 0.409197,
		39.701900, 40.293480, 42.062378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333939, 39.948326, 41.733223>,  <40.262066, 40.600349, 41.775940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333939, 39.948326, 41.733223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.935986, 39.985420, 41.749256>,  <39.697212, 40.007675, 41.758877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.935986, 39.985420, 41.749256>,  <40.333939, 39.948326, 41.733223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935986, 39.985420, 41.749256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091404, -0.657256, -0.748104,
		-0.043027, -0.747941, 0.662369,
		-0.994884, 0.092732, 0.040085,
		39.637520, 40.013241, 41.761280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040207, 39.264259, 41.643654>,  <40.333939, 39.948326, 41.733223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040207, 39.264259, 41.643654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.740551, 39.517174, 41.564667>,  <39.560757, 39.668922, 41.517273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.740551, 39.517174, 41.564667>,  <40.040207, 39.264259, 41.643654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740551, 39.517174, 41.564667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362810, -0.641078, -0.676305,
		-0.554213, -0.435005, 0.709660,
		-0.749144, 0.632289, -0.197470,
		39.515808, 39.706860, 41.505424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463749, 38.853481, 41.479156>,  <40.040207, 39.264259, 41.643654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463749, 38.853481, 41.479156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.340824, 39.197254, 41.315727>,  <39.267071, 39.403519, 41.217670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.340824, 39.197254, 41.315727>,  <39.463749, 38.853481, 41.479156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340824, 39.197254, 41.315727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410236, -0.507052, -0.758027,
		-0.858643, -0.065336, 0.508393,
		-0.307308, 0.859436, -0.408574,
		39.248631, 39.455086, 41.193153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796978, 38.828308, 41.295822>,  <39.463749, 38.853481, 41.479156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796978, 38.828308, 41.295822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.919666, 39.125484, 41.057842>,  <38.993279, 39.303791, 40.915054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.919666, 39.125484, 41.057842>,  <38.796978, 38.828308, 41.295822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919666, 39.125484, 41.057842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308855, -0.513564, -0.800537,
		-0.900296, 0.429292, 0.071941,
		0.306718, 0.742940, -0.594949,
		39.011681, 39.348366, 40.879356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222050, 38.965443, 40.840199>,  <38.796978, 38.828308, 41.295822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222050, 38.965443, 40.840199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.555973, 39.102139, 40.667545>,  <38.756329, 39.184155, 40.563953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.555973, 39.102139, 40.667545>,  <38.222050, 38.965443, 40.840199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555973, 39.102139, 40.667545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191442, -0.554893, -0.809594,
		-0.516176, 0.758492, -0.397810,
		0.834813, 0.341736, -0.431630,
		38.806416, 39.204659, 40.538055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000751, 38.973961, 40.187458>,  <38.222050, 38.965443, 40.840199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000751, 38.973961, 40.187458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.392513, 39.029102, 40.128437>,  <38.627571, 39.062187, 40.093025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.392513, 39.029102, 40.128437>,  <38.000751, 38.973961, 40.187458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392513, 39.029102, 40.128437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099082, -0.308609, -0.946014,
		-0.175944, 0.941147, -0.288593,
		0.979401, 0.137851, -0.147548,
		38.686333, 39.070457, 40.084171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105343, 39.377808, 39.516766>,  <38.000751, 38.973961, 40.187458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105343, 39.377808, 39.516766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.422817, 39.153473, 39.611012>,  <38.613304, 39.018871, 39.667561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.422817, 39.153473, 39.611012>,  <38.105343, 39.377808, 39.516766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422817, 39.153473, 39.611012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059346, -0.456857, -0.887558,
		0.605421, 0.690463, -0.395886,
		0.793690, -0.560841, 0.235615,
		38.660923, 38.985222, 39.681694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340942, 39.345383, 38.991276>,  <38.105343, 39.377808, 39.516766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340942, 39.345383, 38.991276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.521286, 39.043011, 39.181137>,  <38.629494, 38.861588, 39.295052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.521286, 39.043011, 39.181137>,  <38.340942, 39.345383, 38.991276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521286, 39.043011, 39.181137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060905, -0.556580, -0.828559,
		0.890513, 0.344657, -0.296981,
		0.450862, -0.755930, 0.474650,
		38.656544, 38.816231, 39.323532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877296, 39.081692, 38.587082>,  <38.340942, 39.345383, 38.991276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877296, 39.081692, 38.587082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.840366, 38.761181, 38.823536>,  <38.818207, 38.568874, 38.965408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.840366, 38.761181, 38.823536>,  <38.877296, 39.081692, 38.587082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840366, 38.761181, 38.823536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039938, -0.596171, -0.801864,
		0.994928, -0.050423, 0.087042,
		-0.092324, -0.801273, 0.591133,
		38.812668, 38.520798, 39.000877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232857, 38.640774, 38.233768>,  <38.877296, 39.081692, 38.587082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232857, 38.640774, 38.233768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.056091, 38.386635, 38.487083>,  <38.950031, 38.234154, 38.639072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.056091, 38.386635, 38.487083>,  <39.232857, 38.640774, 38.233768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056091, 38.386635, 38.487083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054686, -0.723728, -0.687915,
		0.895391, -0.269363, 0.354567,
		-0.441909, -0.635343, 0.633290,
		38.923519, 38.196033, 38.677071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645073, 38.028687, 38.159275>,  <39.232857, 38.640774, 38.233768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645073, 38.028687, 38.159275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.277065, 37.944214, 38.291313>,  <39.056259, 37.893528, 38.370537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.277065, 37.944214, 38.291313>,  <39.645073, 38.028687, 38.159275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277065, 37.944214, 38.291313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049571, -0.772871, -0.632625,
		0.388721, -0.598391, 0.700588,
		-0.920021, -0.211185, 0.330094,
		39.001060, 37.880859, 38.390343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642281, 37.293404, 38.415691>,  <39.645073, 38.028687, 38.159275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642281, 37.293404, 38.415691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.278397, 37.404362, 38.292091>,  <39.060066, 37.470936, 38.217934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.278397, 37.404362, 38.292091>,  <39.642281, 37.293404, 38.415691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278397, 37.404362, 38.292091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058291, -0.822071, -0.566394,
		-0.411134, -0.497243, 0.764015,
		-0.909709, 0.277399, -0.308996,
		39.005486, 37.487583, 38.199394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140099, 37.006645, 37.967140>,  <39.642281, 37.293404, 38.415691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140099, 37.006645, 37.967140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.506424, 36.847267, 37.947044>,  <39.726219, 36.751640, 37.934986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.506424, 36.847267, 37.947044>,  <39.140099, 37.006645, 37.967140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506424, 36.847267, 37.947044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099587, 0.104127, 0.989565,
		-0.389052, -0.911264, 0.135041,
		0.915817, -0.398441, -0.050240,
		39.781170, 36.727734, 37.931973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227528, 36.510677, 38.571163>,  <39.140099, 37.006645, 37.967140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227528, 36.510677, 38.571163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.600880, 36.586491, 38.449253>,  <39.824890, 36.631977, 38.376106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.600880, 36.586491, 38.449253>,  <39.227528, 36.510677, 38.571163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600880, 36.586491, 38.449253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310469, -0.000374, 0.950583,
		0.180054, -0.981874, -0.059193,
		0.933376, 0.189534, -0.304774,
		39.880894, 36.643353, 38.357822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720112, 35.946232, 38.819080>,  <39.227528, 36.510677, 38.571163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720112, 35.946232, 38.819080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.944233, 36.264282, 38.726265>,  <40.078705, 36.455112, 38.670578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.944233, 36.264282, 38.726265>,  <39.720112, 35.946232, 38.819080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944233, 36.264282, 38.726265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359307, 0.019082, 0.933024,
		0.746297, -0.606147, -0.275002,
		0.560302, 0.795123, -0.232034,
		40.112324, 36.502819, 38.656654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295654, 35.823074, 39.276787>,  <39.720112, 35.946232, 38.819080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295654, 35.823074, 39.276787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.326290, 36.201721, 39.151531>,  <40.344673, 36.428909, 39.076378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.326290, 36.201721, 39.151531>,  <40.295654, 35.823074, 39.276787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326290, 36.201721, 39.151531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510962, 0.232424, 0.827585,
		0.856184, -0.223391, -0.465881,
		0.076593, 0.946612, -0.313143,
		40.349270, 36.485706, 39.057587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955952, 35.942936, 39.287670>,  <40.295654, 35.823074, 39.276787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955952, 35.942936, 39.287670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.815029, 36.316849, 39.305820>,  <40.730476, 36.541195, 39.316711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.815029, 36.316849, 39.305820>,  <40.955952, 35.942936, 39.287670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815029, 36.316849, 39.305820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549283, 0.167279, 0.818722,
		0.757738, 0.313367, -0.572394,
		-0.352310, 0.934783, 0.045373,
		40.709335, 36.597282, 39.319431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579422, 36.364838, 39.457870>,  <40.955952, 35.942936, 39.287670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579422, 36.364838, 39.457870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.252224, 36.570927, 39.560188>,  <41.055904, 36.694580, 39.621578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.252224, 36.570927, 39.560188>,  <41.579422, 36.364838, 39.457870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252224, 36.570927, 39.560188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420215, 0.231569, 0.877380,
		0.392810, 0.825181, -0.405926,
		-0.817997, 0.515220, 0.255791,
		41.006824, 36.725494, 39.636925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818249, 37.060951, 39.616646>,  <41.579422, 36.364838, 39.457870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818249, 37.060951, 39.616646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.456188, 37.020607, 39.781830>,  <41.238953, 36.996403, 39.880939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.456188, 37.020607, 39.781830>,  <41.818249, 37.060951, 39.616646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456188, 37.020607, 39.781830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341022, 0.407699, 0.847045,
		-0.253794, 0.907529, -0.334633,
		-0.905148, -0.100858, 0.412959,
		41.184643, 36.990349, 39.905716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646736, 37.613396, 39.976395>,  <41.818249, 37.060951, 39.616646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646736, 37.613396, 39.976395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.381298, 37.360294, 40.136024>,  <41.222034, 37.208431, 40.231800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.381298, 37.360294, 40.136024>,  <41.646736, 37.613396, 39.976395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381298, 37.360294, 40.136024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173322, 0.388895, 0.904832,
		-0.727735, 0.669612, -0.148399,
		-0.663597, -0.632757, 0.399071,
		41.182220, 37.170467, 40.255745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104218, 38.078396, 40.191753>,  <41.646736, 37.613396, 39.976395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104218, 38.078396, 40.191753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.073559, 37.753197, 40.422630>,  <41.055164, 37.558075, 40.561157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.073559, 37.753197, 40.422630>,  <41.104218, 38.078396, 40.191753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073559, 37.753197, 40.422630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028022, 0.580425, 0.813832,
		-0.996664, 0.046205, -0.067271,
		-0.076648, -0.813002, 0.577194,
		41.050564, 37.509296, 40.595787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527512, 38.272224, 40.596279>,  <41.104218, 38.078396, 40.191753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527512, 38.272224, 40.596279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.725468, 37.979130, 40.783119>,  <40.844242, 37.803272, 40.895222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.725468, 37.979130, 40.783119>,  <40.527512, 38.272224, 40.596279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725468, 37.979130, 40.783119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117050, 0.476429, 0.871386,
		-0.861035, -0.485915, 0.150014,
		0.494891, -0.732735, 0.467099,
		40.873936, 37.759308, 40.923248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225956, 38.288467, 41.150127>,  <40.527512, 38.272224, 40.596279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225956, 38.288467, 41.150127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.555267, 38.076336, 41.231079>,  <40.752853, 37.949059, 41.279652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.555267, 38.076336, 41.231079>,  <40.225956, 38.288467, 41.150127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555267, 38.076336, 41.231079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035981, 0.404571, 0.913798,
		-0.566491, -0.745032, 0.352158,
		0.823282, -0.530330, 0.202379,
		40.802254, 37.917236, 41.291794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104813, 37.913010, 41.760681>,  <40.225956, 38.288467, 41.150127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104813, 37.913010, 41.760681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.502712, 37.943836, 41.733757>,  <40.741451, 37.962334, 41.717602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.502712, 37.943836, 41.733757>,  <40.104813, 37.913010, 41.760681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502712, 37.943836, 41.733757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038237, 0.330176, 0.943145,
		0.094910, -0.940768, 0.325496,
		0.994751, 0.077068, -0.067309,
		40.801136, 37.966957, 41.713566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396015, 37.359447, 42.157539>,  <40.104813, 37.913010, 41.760681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396015, 37.359447, 42.157539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.624496, 37.686428, 42.127861>,  <40.761585, 37.882614, 42.110054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.624496, 37.686428, 42.127861>,  <40.396015, 37.359447, 42.157539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624496, 37.686428, 42.127861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048148, 0.056866, 0.997220,
		0.819394, -0.573189, -0.006877,
		0.571205, 0.817447, -0.074193,
		40.795856, 37.931664, 42.105602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717934, 37.354706, 42.795132>,  <40.396015, 37.359447, 42.157539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717934, 37.354706, 42.795132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.886459, 37.696316, 42.673054>,  <40.987576, 37.901279, 42.599808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.886459, 37.696316, 42.673054>,  <40.717934, 37.354706, 42.795132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886459, 37.696316, 42.673054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310615, 0.180283, 0.933282,
		0.852064, -0.488002, -0.189316,
		0.421313, 0.854021, -0.305194,
		41.012852, 37.952522, 42.581497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412819, 37.387497, 43.011116>,  <40.717934, 37.354706, 42.795132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412819, 37.387497, 43.011116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.305241, 37.766060, 42.939590>,  <41.240692, 37.993198, 42.896675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.305241, 37.766060, 42.939590>,  <41.412819, 37.387497, 43.011116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305241, 37.766060, 42.939590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347394, 0.268475, 0.898465,
		0.898323, 0.179522, -0.400983,
		-0.268948, 0.946411, -0.178812,
		41.224556, 38.049984, 42.885948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943062, 37.886063, 43.307747>,  <41.412819, 37.387497, 43.011116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943062, 37.886063, 43.307747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.589542, 38.072662, 43.293472>,  <41.377430, 38.184620, 43.284908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.589542, 38.072662, 43.293472>,  <41.943062, 37.886063, 43.307747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589542, 38.072662, 43.293472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123642, 0.306442, 0.943825,
		0.451226, 0.829744, -0.328513,
		-0.883803, 0.466496, -0.035684,
		41.324402, 38.212612, 43.282768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011700, 38.480858, 43.628723>,  <41.943062, 37.886063, 43.307747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011700, 38.480858, 43.628723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.613552, 38.443668, 43.638561>,  <41.374664, 38.421356, 43.644463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.613552, 38.443668, 43.638561>,  <42.011700, 38.480858, 43.628723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613552, 38.443668, 43.638561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003621, 0.291772, 0.956481,
		-0.096104, 0.951958, -0.290756,
		-0.995365, -0.092974, 0.024593,
		41.314941, 38.415775, 43.645939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767796, 39.131916, 43.935528>,  <42.011700, 38.480858, 43.628723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767796, 39.131916, 43.935528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.469425, 38.867851, 43.970818>,  <41.290405, 38.709412, 43.991993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.469425, 38.867851, 43.970818>,  <41.767796, 39.131916, 43.935528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469425, 38.867851, 43.970818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237985, 0.387900, 0.890448,
		-0.622062, 0.643210, -0.446452,
		-0.745924, -0.660162, 0.088223,
		41.245647, 38.669804, 43.997284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.190491, 39.564247, 44.249531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.128517, 39.178230, 44.334084>,  <41.091335, 38.946621, 44.384815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.128517, 39.178230, 44.334084>,  <41.190491, 39.564247, 44.249531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128517, 39.178230, 44.334084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154663, 0.187633, 0.969986,
		-0.975744, 0.182973, 0.120186,
		-0.154931, -0.965046, 0.211381,
		41.082039, 38.888718, 44.397499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714508, 39.562115, 44.797997>,  <41.190491, 39.564247, 44.249531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714508, 39.562115, 44.797997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.870232, 39.194641, 44.824718>,  <40.963665, 38.974159, 44.840752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.870232, 39.194641, 44.824718>,  <40.714508, 39.562115, 44.797997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870232, 39.194641, 44.824718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059716, 0.097552, 0.993437,
		-0.919168, -0.382769, 0.092838,
		0.389313, -0.918679, 0.066809,
		40.987026, 38.919037, 44.844761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336536, 39.240437, 45.279430>,  <40.714508, 39.562115, 44.797997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336536, 39.240437, 45.279430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.670341, 39.020061, 45.282600>,  <40.870625, 38.887836, 45.284504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.670341, 39.020061, 45.282600>,  <40.336536, 39.240437, 45.279430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670341, 39.020061, 45.282600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052355, 0.093602, 0.994232,
		-0.548503, -0.829280, 0.106956,
		0.834508, -0.550939, 0.007924,
		40.920692, 38.854778, 45.284977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263802, 38.760830, 45.803047>,  <40.336536, 39.240437, 45.279430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263802, 38.760830, 45.803047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.655712, 38.793812, 45.730125>,  <40.890858, 38.813599, 45.686371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.655712, 38.793812, 45.730125>,  <40.263802, 38.760830, 45.803047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655712, 38.793812, 45.730125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170764, 0.130238, 0.976667,
		0.104273, -0.988048, 0.113524,
		0.979779, 0.082454, -0.182303,
		40.949646, 38.818546, 45.675434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567486, 38.527023, 46.474468>,  <40.263802, 38.760830, 45.803047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567486, 38.527023, 46.474468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.869678, 38.711597, 46.288425>,  <41.050995, 38.822342, 46.176800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.869678, 38.711597, 46.288425>,  <40.567486, 38.527023, 46.474468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869678, 38.711597, 46.288425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375620, 0.276596, 0.884536,
		0.536806, -0.842953, 0.035637,
		0.755479, 0.461438, -0.465109,
		41.096321, 38.850029, 46.148891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216270, 38.321796, 46.866417>,  <40.567486, 38.527023, 46.474468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216270, 38.321796, 46.866417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.309433, 38.644314, 46.648922>,  <41.365330, 38.837822, 46.518425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.309433, 38.644314, 46.648922>,  <41.216270, 38.321796, 46.866417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309433, 38.644314, 46.648922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497355, 0.381709, 0.779061,
		0.835699, -0.451881, -0.312109,
		0.232908, 0.806289, -0.543739,
		41.379307, 38.886200, 46.485802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866238, 38.384483, 47.010761>,  <41.216270, 38.321796, 46.866417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866238, 38.384483, 47.010761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.768284, 38.755688, 46.898457>,  <41.709511, 38.978409, 46.831074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.768284, 38.755688, 46.898457>,  <41.866238, 38.384483, 47.010761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768284, 38.755688, 46.898457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390882, 0.359498, 0.847332,
		0.887266, 0.097757, -0.450779,
		-0.244887, 0.928011, -0.280759,
		41.694817, 39.034092, 46.814228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414860, 38.816978, 47.209301>,  <41.866238, 38.384483, 47.010761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414860, 38.816978, 47.209301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.104721, 39.066418, 47.169376>,  <41.918636, 39.216080, 47.145420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.104721, 39.066418, 47.169376>,  <42.414860, 38.816978, 47.209301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104721, 39.066418, 47.169376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250196, 0.448427, 0.858088,
		0.579863, 0.640342, -0.503708,
		-0.775346, 0.623599, -0.099816,
		41.872116, 39.253498, 47.139431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701237, 39.420338, 47.472679>,  <42.414860, 38.816978, 47.209301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701237, 39.420338, 47.472679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.306664, 39.455990, 47.527828>,  <42.069920, 39.477383, 47.560917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.306664, 39.455990, 47.527828>,  <42.701237, 39.420338, 47.472679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306664, 39.455990, 47.527828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162189, 0.398790, 0.902586,
		0.025463, 0.912701, -0.407835,
		-0.986431, 0.089129, 0.137876,
		42.010735, 39.482727, 47.569191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733723, 40.089214, 47.745060>,  <42.701237, 39.420338, 47.472679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733723, 40.089214, 47.745060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.381104, 39.924297, 47.837048>,  <42.169533, 39.825348, 47.892239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.381104, 39.924297, 47.837048>,  <42.733723, 40.089214, 47.745060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381104, 39.924297, 47.837048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000711, 0.485971, 0.873975,
		-0.472088, 0.770617, -0.428115,
		-0.881551, -0.412288, 0.229969,
		42.116638, 39.800610, 47.906036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364677, 40.602520, 48.011833>,  <42.733723, 40.089214, 47.745060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364677, 40.602520, 48.011833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.182796, 40.274986, 48.151985>,  <42.073669, 40.078468, 48.236076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.182796, 40.274986, 48.151985>,  <42.364677, 40.602520, 48.011833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182796, 40.274986, 48.151985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010672, 0.398381, 0.917158,
		-0.890582, 0.413290, -0.189881,
		-0.454698, -0.818831, 0.350380,
		42.046387, 40.029339, 48.257099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983513, 40.879707, 48.514126>,  <42.364677, 40.602520, 48.011833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983513, 40.879707, 48.514126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.972691, 40.496628, 48.628723>,  <41.966198, 40.266781, 48.697483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.972691, 40.496628, 48.628723>,  <41.983513, 40.879707, 48.514126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972691, 40.496628, 48.628723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176833, 0.286663, 0.941570,
		-0.983869, -0.025190, -0.177107,
		-0.027052, -0.957700, 0.286494,
		41.964577, 40.209316, 48.714672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489571, 40.909687, 48.961792>,  <41.983513, 40.879707, 48.514126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489571, 40.909687, 48.961792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.681038, 40.574459, 49.066494>,  <41.795918, 40.373322, 49.129314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.681038, 40.574459, 49.066494>,  <41.489571, 40.909687, 48.961792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681038, 40.574459, 49.066494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009777, 0.303199, 0.952877,
		-0.877941, -0.453554, 0.153326,
		0.478670, -0.838069, 0.261756,
		41.824638, 40.323040, 49.145020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156353, 40.715454, 49.574928>,  <41.489571, 40.909687, 48.961792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156353, 40.715454, 49.574928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.493797, 40.500729, 49.569984>,  <41.696262, 40.371891, 49.567020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.493797, 40.500729, 49.569984>,  <41.156353, 40.715454, 49.574928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493797, 40.500729, 49.569984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068280, 0.084418, 0.994088,
		-0.532601, -0.839464, 0.107870,
		0.843608, -0.536818, -0.012358,
		41.746880, 40.339684, 49.566277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086353, 40.212761, 50.080811>,  <41.156353, 40.715454, 49.574928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086353, 40.212761, 50.080811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.482235, 40.225243, 50.024948>,  <41.719765, 40.232731, 49.991432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.482235, 40.225243, 50.024948>,  <41.086353, 40.212761, 50.080811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482235, 40.225243, 50.024948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140682, -0.033619, 0.989484,
		0.026184, -0.998947, -0.037663,
		0.989709, 0.031207, -0.139654,
		41.779148, 40.234604, 49.983051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394623, 39.588295, 50.417545>,  <41.086353, 40.212761, 50.080811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394623, 39.588295, 50.417545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.703835, 39.834183, 50.354885>,  <41.889362, 39.981716, 50.317291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.703835, 39.834183, 50.354885>,  <41.394623, 39.588295, 50.417545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703835, 39.834183, 50.354885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315775, -0.158713, 0.935466,
		0.550189, -0.772611, -0.316804,
		0.773032, 0.614721, -0.156649,
		41.935745, 40.018600, 50.307892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074482, 39.262192, 50.578999>,  <41.394623, 39.588295, 50.417545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074482, 39.262192, 50.578999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.071945, 39.656940, 50.643559>,  <42.070423, 39.893787, 50.682293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.071945, 39.656940, 50.643559>,  <42.074482, 39.262192, 50.578999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071945, 39.656940, 50.643559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326081, -0.150540, 0.933278,
		0.945320, 0.058548, -0.320845,
		-0.006341, 0.986869, 0.161400,
		42.070042, 39.953003, 50.691978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611729, 39.290951, 51.044296>,  <42.074482, 39.262192, 50.578999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611729, 39.290951, 51.044296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.476357, 39.667164, 51.056061>,  <42.395134, 39.892891, 51.063118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.476357, 39.667164, 51.056061>,  <42.611729, 39.290951, 51.044296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476357, 39.667164, 51.056061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157871, 0.025941, 0.987119,
		0.927652, 0.338719, -0.157262,
		-0.338435, 0.940530, 0.029410,
		42.374825, 39.949322, 51.064884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059139, 39.605690, 51.463959>,  <42.611729, 39.290951, 51.044296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059139, 39.605690, 51.463959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.716812, 39.811405, 51.486187>,  <42.511417, 39.934834, 51.499523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.716812, 39.811405, 51.486187>,  <43.059139, 39.605690, 51.463959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716812, 39.811405, 51.486187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032861, -0.053167, 0.998045,
		0.516236, 0.855969, 0.028601,
		-0.855816, 0.514287, 0.055574,
		42.460068, 39.965691, 51.502861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227768, 40.299416, 51.781151>,  <43.059139, 39.605690, 51.463959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227768, 40.299416, 51.781151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.836552, 40.229641, 51.826763>,  <42.601822, 40.187775, 51.854130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.836552, 40.229641, 51.826763>,  <43.227768, 40.299416, 51.781151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836552, 40.229641, 51.826763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130768, -0.087648, 0.987531,
		-0.162271, 0.980759, 0.108535,
		-0.978043, -0.174441, 0.114029,
		42.543140, 40.177307, 51.860973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114189, 40.762691, 52.284950>,  <43.227768, 40.299416, 51.781151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114189, 40.762691, 52.284950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.809883, 40.503078, 52.284931>,  <42.627300, 40.347313, 52.284920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.809883, 40.503078, 52.284931>,  <43.114189, 40.762691, 52.284950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809883, 40.503078, 52.284931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025458, -0.029918, 0.999228,
		-0.648530, 0.760175, 0.039283,
		-0.760763, -0.649030, -0.000050,
		42.581654, 40.308369, 52.284916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643559, 41.105633, 52.730133>,  <43.114189, 40.762691, 52.284950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643559, 41.105633, 52.730133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.531342, 40.722008, 52.714680>,  <42.464012, 40.491833, 52.705410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.531342, 40.722008, 52.714680>,  <42.643559, 41.105633, 52.730133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531342, 40.722008, 52.714680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057042, -0.023516, 0.998095,
		-0.958145, 0.282211, -0.048109,
		-0.280542, -0.959064, -0.038629,
		42.447178, 40.434288, 52.703091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879875, 40.903439, 52.953030>,  <42.643559, 41.105633, 52.730133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879875, 40.903439, 52.953030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.161514, 40.645905, 53.072845>,  <42.330498, 40.491383, 53.144737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.161514, 40.645905, 53.072845>,  <41.879875, 40.903439, 52.953030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161514, 40.645905, 53.072845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126547, 0.301308, 0.945092,
		-0.698739, -0.703341, 0.130675,
		0.704095, -0.643836, 0.299541,
		42.372742, 40.452755, 53.162708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426620, 41.510803, 52.857773>,  <41.879875, 40.903439, 52.953030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426620, 41.510803, 52.857773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.086296, 41.383144, 53.024754>,  <40.882103, 41.306549, 53.124943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.086296, 41.383144, 53.024754>,  <41.426620, 41.510803, 52.857773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086296, 41.383144, 53.024754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441257, 0.002561, -0.897377,
		0.285329, -0.947701, -0.143006,
		-0.850811, -0.319150, 0.417449,
		40.831051, 41.287399, 53.149990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092171, 40.825962, 52.592632>,  <41.426620, 41.510803, 52.857773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092171, 40.825962, 52.592632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.828285, 41.089157, 52.737862>,  <40.669952, 41.247074, 52.825001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.828285, 41.089157, 52.737862>,  <41.092171, 40.825962, 52.592632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828285, 41.089157, 52.737862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536326, -0.073796, -0.840779,
		-0.526431, -0.749401, 0.401582,
		-0.659716, 0.657991, 0.363075,
		40.630371, 41.286552, 52.846783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387238, 40.472534, 52.592037>,  <41.092171, 40.825962, 52.592632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387238, 40.472534, 52.592037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.319752, 40.866795, 52.594433>,  <40.279263, 41.103352, 52.595871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.319752, 40.866795, 52.594433>,  <40.387238, 40.472534, 52.592037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319752, 40.866795, 52.594433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770721, -0.128131, -0.624157,
		-0.614431, -0.109916, 0.781276,
		-0.168710, 0.985648, 0.005987,
		40.269138, 41.162487, 52.596230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708828, 40.547737, 52.472523>,  <40.387238, 40.472534, 52.592037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708828, 40.547737, 52.472523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.875385, 40.897766, 52.373840>,  <39.975319, 41.107784, 52.314632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.875385, 40.897766, 52.373840>,  <39.708828, 40.547737, 52.472523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875385, 40.897766, 52.373840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678315, 0.118319, -0.725182,
		-0.605398, 0.469303, 0.642844,
		0.416390, 0.875075, -0.246705,
		40.000301, 41.160290, 52.299828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172333, 41.008644, 52.499760>,  <39.708828, 40.547737, 52.472523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172333, 41.008644, 52.499760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447842, 41.186424, 52.270657>,  <39.613148, 41.293091, 52.133194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447842, 41.186424, 52.270657>,  <39.172333, 41.008644, 52.499760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447842, 41.186424, 52.270657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666399, 0.077030, -0.741606,
		-0.285487, 0.892486, 0.349237,
		0.688774, 0.444450, -0.572760,
		39.654472, 41.319759, 52.098827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899445, 41.623093, 52.191391>,  <39.172333, 41.008644, 52.499760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899445, 41.623093, 52.191391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.185505, 41.485184, 51.948185>,  <39.357143, 41.402439, 51.802261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.185505, 41.485184, 51.948185>,  <38.899445, 41.623093, 52.191391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185505, 41.485184, 51.948185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614907, 0.103250, -0.781811,
		0.332328, 0.932989, -0.138166,
		0.715155, -0.344777, -0.608015,
		39.400051, 41.381752, 51.765781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708870, 41.910542, 51.613369>,  <38.899445, 41.623093, 52.191391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708870, 41.910542, 51.613369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.005875, 41.668072, 51.499359>,  <39.184078, 41.522591, 51.430954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.005875, 41.668072, 51.499359>,  <38.708870, 41.910542, 51.613369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005875, 41.668072, 51.499359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395529, -0.053364, -0.916902,
		0.540591, 0.793541, -0.279382,
		0.742508, -0.606172, -0.285020,
		39.228626, 41.486221, 51.413853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747482, 42.094788, 50.975010>,  <38.708870, 41.910542, 51.613369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747482, 42.094788, 50.975010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.936092, 41.742050, 50.973347>,  <39.049259, 41.530407, 50.972347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.936092, 41.742050, 50.973347>,  <38.747482, 42.094788, 50.975010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936092, 41.742050, 50.973347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222320, -0.114309, -0.968250,
		0.853369, 0.457478, -0.249951,
		0.471524, -0.881843, -0.004158,
		39.077549, 41.477497, 50.972099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054825, 42.077896, 50.266159>,  <38.747482, 42.094788, 50.975010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054825, 42.077896, 50.266159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.040890, 41.701309, 50.400284>,  <39.032528, 41.475357, 50.480759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.040890, 41.701309, 50.400284>,  <39.054825, 42.077896, 50.266159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040890, 41.701309, 50.400284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193065, -0.322853, -0.926548,
		0.980567, -0.097018, -0.170516,
		-0.034841, -0.941463, 0.335310,
		39.030437, 41.418869, 50.500877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570858, 41.620541, 49.902695>,  <39.054825, 42.077896, 50.266159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570858, 41.620541, 49.902695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.277519, 41.386879, 50.041813>,  <39.101517, 41.246681, 50.125282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.277519, 41.386879, 50.041813>,  <39.570858, 41.620541, 49.902695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277519, 41.386879, 50.041813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008231, -0.519165, -0.854634,
		0.679804, -0.623881, 0.385537,
		-0.733348, -0.584157, 0.347796,
		39.057514, 41.211632, 50.146152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801384, 40.957226, 49.813976>,  <39.570858, 41.620541, 49.902695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801384, 40.957226, 49.813976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.410812, 40.871998, 49.827774>,  <39.176468, 40.820862, 49.836052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.410812, 40.871998, 49.827774>,  <39.801384, 40.957226, 49.813976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410812, 40.871998, 49.827774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062491, -0.432025, -0.899694,
		0.206596, -0.876331, 0.435156,
		-0.976429, -0.213067, 0.034492,
		39.117886, 40.808079, 49.838123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736965, 40.287392, 49.574383>,  <39.801384, 40.957226, 49.813976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736965, 40.287392, 49.574383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.368576, 40.433659, 49.520569>,  <39.147541, 40.521420, 49.488281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.368576, 40.433659, 49.520569>,  <39.736965, 40.287392, 49.574383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368576, 40.433659, 49.520569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037162, -0.261273, -0.964549,
		-0.387853, -0.893322, 0.227037,
		-0.920972, 0.365666, -0.134533,
		39.092285, 40.543358, 49.480209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275654, 39.709320, 49.240299>,  <39.736965, 40.287392, 49.574383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275654, 39.709320, 49.240299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.140427, 40.080585, 49.178047>,  <39.059292, 40.303345, 49.140697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.140427, 40.080585, 49.178047>,  <39.275654, 39.709320, 49.240299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140427, 40.080585, 49.178047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119748, -0.206446, -0.971103,
		-0.933473, -0.309661, 0.180938,
		-0.338067, 0.928165, -0.155630,
		39.039005, 40.359035, 49.131359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890934, 39.597599, 48.742538>,  <39.275654, 39.709320, 49.240299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890934, 39.597599, 48.742538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.931751, 39.995113, 48.724728>,  <38.956242, 40.233620, 48.714043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.931751, 39.995113, 48.724728>,  <38.890934, 39.597599, 48.742538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931751, 39.995113, 48.724728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131535, -0.030888, -0.990830,
		-0.986045, 0.106965, 0.127565,
		0.102044, 0.993783, -0.044527,
		38.962364, 40.293247, 48.711369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476803, 39.800617, 48.214775>,  <38.890934, 39.597599, 48.742538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476803, 39.800617, 48.214775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.709126, 40.124062, 48.252338>,  <38.848518, 40.318127, 48.274876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.709126, 40.124062, 48.252338>,  <38.476803, 39.800617, 48.214775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709126, 40.124062, 48.252338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043067, 0.145721, -0.988388,
		-0.812903, 0.570017, 0.119460,
		0.580805, 0.808608, 0.093908,
		38.883366, 40.366646, 48.280510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333164, 40.126671, 47.630440>,  <38.476803, 39.800617, 48.214775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333164, 40.126671, 47.630440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.669163, 40.304157, 47.755356>,  <38.870762, 40.410648, 47.830307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.669163, 40.304157, 47.755356>,  <38.333164, 40.126671, 47.630440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669163, 40.304157, 47.755356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224371, 0.239986, -0.944492,
		-0.494033, 0.863436, 0.102029,
		0.839994, 0.443718, 0.312291,
		38.921162, 40.437271, 47.849045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309170, 40.849136, 47.393929>,  <38.333164, 40.126671, 47.630440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309170, 40.849136, 47.393929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.691998, 40.749855, 47.453823>,  <38.921692, 40.690285, 47.489758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.691998, 40.749855, 47.453823>,  <38.309170, 40.849136, 47.393929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691998, 40.749855, 47.453823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229923, 0.335450, -0.913569,
		0.176523, 0.908773, 0.378116,
		0.957066, -0.248204, 0.149734,
		38.979118, 40.675392, 47.498745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592781, 41.344368, 47.109150>,  <38.309170, 40.849136, 47.393929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592781, 41.344368, 47.109150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.894585, 41.083092, 47.134624>,  <39.075668, 40.926327, 47.149910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.894585, 41.083092, 47.134624>,  <38.592781, 41.344368, 47.109150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894585, 41.083092, 47.134624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363716, 0.335405, -0.869031,
		0.546280, 0.678858, 0.490642,
		0.754512, -0.653188, 0.063687,
		39.120937, 40.887135, 47.153732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205570, 41.709885, 46.937542>,  <38.592781, 41.344368, 47.109150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205570, 41.709885, 46.937542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.261017, 41.325993, 46.839798>,  <39.294285, 41.095657, 46.781151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.261017, 41.325993, 46.839798>,  <39.205570, 41.709885, 46.937542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261017, 41.325993, 46.839798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349229, 0.278260, -0.894769,
		0.926727, 0.038697, 0.373737,
		0.138621, -0.959726, -0.244357,
		39.302605, 41.038074, 46.766491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668625, 41.786713, 46.557674>,  <39.205570, 41.709885, 46.937542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668625, 41.786713, 46.557674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.559326, 41.416172, 46.453979>,  <39.493748, 41.193848, 46.391762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.559326, 41.416172, 46.453979>,  <39.668625, 41.786713, 46.557674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559326, 41.416172, 46.453979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252017, 0.191137, -0.948660,
		0.928344, -0.324553, 0.181228,
		-0.273251, -0.926355, -0.259233,
		39.477352, 41.138268, 46.376209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054493, 41.491226, 46.116428>,  <39.668625, 41.786713, 46.557674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054493, 41.491226, 46.116428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757915, 41.244434, 46.010902>,  <39.579967, 41.096359, 45.947586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757915, 41.244434, 46.010902>,  <40.054493, 41.491226, 46.116428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757915, 41.244434, 46.010902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219853, 0.148095, -0.964226,
		0.633977, -0.772920, 0.025841,
		-0.741443, -0.616978, -0.263818,
		39.535484, 41.059341, 45.931759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.879642, 34.465298, 28.589771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.950130, 34.079590, 28.510653>,  <44.992424, 33.848164, 28.463182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.950130, 34.079590, 28.510653>,  <44.879642, 34.465298, 28.589771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.950130, 34.079590, 28.510653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903318, 0.238254, -0.356723,
		0.391104, -0.115811, 0.913031,
		0.176221, -0.964273, -0.197796,
		45.002998, 33.790306, 28.451313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197659, 34.957478, 28.551437>,  <44.879642, 34.465298, 28.589771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197659, 34.957478, 28.551437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.838856, 35.122192, 28.487169>,  <43.623573, 35.221024, 28.448608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.838856, 35.122192, 28.487169>,  <44.197659, 34.957478, 28.551437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838856, 35.122192, 28.487169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167258, 0.020262, 0.985705,
		0.409158, 0.911054, 0.050700,
		-0.897003, 0.411789, -0.160672,
		43.569756, 35.245728, 28.438969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.062721, 35.431736, 29.103661>,  <44.197659, 34.957478, 28.551437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.062721, 35.431736, 29.103661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.690502, 35.367744, 28.971912>,  <43.467171, 35.329350, 28.892864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.690502, 35.367744, 28.971912>,  <44.062721, 35.431736, 29.103661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690502, 35.367744, 28.971912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355607, 0.180397, 0.917061,
		-0.087289, 0.970497, -0.224757,
		-0.930551, -0.159975, -0.329369,
		43.411339, 35.319752, 28.873102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674004, 35.987511, 29.331799>,  <44.062721, 35.431736, 29.103661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674004, 35.987511, 29.331799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.426701, 35.680668, 29.263332>,  <43.278320, 35.496563, 29.222252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.426701, 35.680668, 29.263332>,  <43.674004, 35.987511, 29.331799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.426701, 35.680668, 29.263332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284178, 0.015130, 0.958652,
		-0.732803, 0.641336, -0.227351,
		-0.618258, -0.767111, -0.171166,
		43.241222, 35.450535, 29.211983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914490, 36.068817, 29.647366>,  <43.674004, 35.987511, 29.331799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914490, 36.068817, 29.647366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.944691, 35.676693, 29.574377>,  <42.962811, 35.441418, 29.530584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.944691, 35.676693, 29.574377>,  <42.914490, 36.068817, 29.647366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944691, 35.676693, 29.574377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397901, -0.197416, 0.895936,
		-0.914316, 0.004958, -0.404971,
		0.075506, -0.980307, -0.182473,
		42.967342, 35.382599, 29.519634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205727, 35.793549, 29.731802>,  <42.914490, 36.068817, 29.647366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205727, 35.793549, 29.731802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.437283, 35.467834, 29.748915>,  <42.576218, 35.272408, 29.759182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.437283, 35.467834, 29.748915>,  <42.205727, 35.793549, 29.731802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437283, 35.467834, 29.748915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332190, -0.187597, 0.924369,
		-0.744672, -0.549319, -0.379094,
		0.578890, -0.814283, 0.042780,
		42.610950, 35.223549, 29.761749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764381, 35.183586, 29.796747>,  <42.205727, 35.793549, 29.731802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764381, 35.183586, 29.796747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.120583, 35.102272, 29.959562>,  <42.334305, 35.053486, 30.057251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.120583, 35.102272, 29.959562>,  <41.764381, 35.183586, 29.796747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120583, 35.102272, 29.959562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435588, -0.122547, 0.891765,
		-0.131409, -0.971418, -0.197681,
		0.890502, -0.203293, 0.407035,
		42.387733, 35.041286, 30.081673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564110, 34.789528, 30.327177>,  <41.764381, 35.183586, 29.796747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564110, 34.789528, 30.327177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.945137, 34.876251, 30.412605>,  <42.173752, 34.928284, 30.463861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.945137, 34.876251, 30.412605>,  <41.564110, 34.789528, 30.327177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945137, 34.876251, 30.412605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215380, -0.015532, 0.976407,
		0.215013, -0.976090, 0.031901,
		0.952565, 0.216811, 0.213570,
		42.230907, 34.941296, 30.476677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764526, 34.355198, 30.873995>,  <41.564110, 34.789528, 30.327177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764526, 34.355198, 30.873995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.039856, 34.645222, 30.883001>,  <42.205051, 34.819237, 30.888405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.039856, 34.645222, 30.883001>,  <41.764526, 34.355198, 30.873995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039856, 34.645222, 30.883001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110124, 0.073765, 0.991177,
		0.716999, -0.684727, 0.130620,
		0.688321, 0.725057, 0.022516,
		42.246353, 34.862740, 30.889755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234081, 34.160580, 31.435400>,  <41.764526, 34.355198, 30.873995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234081, 34.160580, 31.435400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.305515, 34.547649, 31.364170>,  <42.348373, 34.779892, 31.321432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.305515, 34.547649, 31.364170>,  <42.234081, 34.160580, 31.435400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305515, 34.547649, 31.364170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109006, 0.199327, 0.973851,
		0.977868, -0.154500, 0.141079,
		0.178581, 0.967677, -0.178074,
		42.359089, 34.837952, 31.310747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569248, 34.307247, 32.032581>,  <42.234081, 34.160580, 31.435400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569248, 34.307247, 32.032581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.433945, 34.659065, 31.898729>,  <42.352760, 34.870155, 31.818419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.433945, 34.659065, 31.898729>,  <42.569248, 34.307247, 32.032581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433945, 34.659065, 31.898729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050637, 0.338067, 0.939759,
		0.939688, 0.334831, -0.069818,
		-0.338263, 0.879545, -0.334632,
		42.332466, 34.922928, 31.798340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901642, 34.894455, 32.412411>,  <42.569248, 34.307247, 32.032581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901642, 34.894455, 32.412411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.589436, 35.082668, 32.247784>,  <42.402111, 35.195595, 32.149006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.589436, 35.082668, 32.247784>,  <42.901642, 34.894455, 32.412411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589436, 35.082668, 32.247784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153052, 0.494498, 0.855597,
		0.606108, 0.730801, -0.313948,
		-0.780518, 0.470534, -0.411570,
		42.355282, 35.223827, 32.124313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975761, 35.579483, 32.639816>,  <42.901642, 34.894455, 32.412411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975761, 35.579483, 32.639816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.592827, 35.503304, 32.552883>,  <42.363068, 35.457596, 32.500725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.592827, 35.503304, 32.552883>,  <42.975761, 35.579483, 32.639816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592827, 35.503304, 32.552883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269853, 0.320193, 0.908106,
		-0.103361, 0.928011, -0.357927,
		-0.957338, -0.190450, -0.217331,
		42.305626, 35.446167, 32.487682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600220, 36.165680, 32.867329>,  <42.975761, 35.579483, 32.639816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600220, 36.165680, 32.867329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.309620, 35.893246, 32.830845>,  <42.135262, 35.729786, 32.808956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.309620, 35.893246, 32.830845>,  <42.600220, 36.165680, 32.867329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309620, 35.893246, 32.830845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444553, 0.364632, 0.818179,
		-0.523995, 0.634952, -0.567684,
		-0.726500, -0.681087, -0.091205,
		42.091671, 35.688919, 32.803482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880684, 36.470104, 33.246407>,  <42.600220, 36.165680, 32.867329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880684, 36.470104, 33.246407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.855846, 36.071842, 33.218670>,  <41.840942, 35.832886, 33.202030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.855846, 36.071842, 33.218670>,  <41.880684, 36.470104, 33.246407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855846, 36.071842, 33.218670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195797, -0.055971, 0.979046,
		-0.978677, 0.074369, -0.191472,
		-0.062094, -0.995659, -0.069338,
		41.837219, 35.773144, 33.197868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337357, 36.216259, 33.842087>,  <41.880684, 36.470104, 33.246407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337357, 36.216259, 33.842087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.552231, 35.896660, 33.733986>,  <41.681156, 35.704899, 33.669125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.552231, 35.896660, 33.733986>,  <41.337357, 36.216259, 33.842087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552231, 35.896660, 33.733986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295227, -0.122027, 0.947603,
		-0.790112, -0.588820, 0.170336,
		0.537182, -0.799000, -0.270250,
		41.713387, 35.656960, 33.652912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235798, 35.676140, 34.312122>,  <41.337357, 36.216259, 33.842087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235798, 35.676140, 34.312122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.594509, 35.576382, 34.165920>,  <41.809734, 35.516525, 34.078201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.594509, 35.576382, 34.165920>,  <41.235798, 35.676140, 34.312122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594509, 35.576382, 34.165920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364198, -0.053098, 0.929807,
		-0.251299, -0.966944, 0.043213,
		0.896777, -0.249398, -0.365503,
		41.863541, 35.501564, 34.056271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430458, 35.006241, 34.555508>,  <41.235798, 35.676140, 34.312122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430458, 35.006241, 34.555508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.785736, 35.159557, 34.454163>,  <41.998905, 35.251549, 34.393356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.785736, 35.159557, 34.454163>,  <41.430458, 35.006241, 34.555508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785736, 35.159557, 34.454163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425780, -0.479395, 0.767393,
		0.172674, -0.789474, -0.588995,
		0.888198, 0.383291, -0.253363,
		42.052197, 35.274544, 34.378155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899204, 34.491611, 34.768730>,  <41.430458, 35.006241, 34.555508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899204, 34.491611, 34.768730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.137878, 34.803406, 34.692444>,  <42.281082, 34.990482, 34.646671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.137878, 34.803406, 34.692444>,  <41.899204, 34.491611, 34.768730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137878, 34.803406, 34.692444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505334, -0.180367, 0.843863,
		0.623378, -0.599897, -0.501522,
		0.596689, 0.779481, -0.190712,
		42.316887, 35.037251, 34.635231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603348, 34.346031, 35.073364>,  <41.899204, 34.491611, 34.768730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603348, 34.346031, 35.073364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.617546, 34.741329, 35.013882>,  <42.626064, 34.978508, 34.978191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.617546, 34.741329, 35.013882>,  <42.603348, 34.346031, 35.073364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617546, 34.741329, 35.013882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596365, 0.098455, 0.796652,
		0.801928, -0.116964, -0.585860,
		0.035499, 0.988244, -0.148707,
		42.628197, 35.037804, 34.969269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310993, 34.476139, 35.072250>,  <42.603348, 34.346031, 35.073364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310993, 34.476139, 35.072250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.138828, 34.825680, 35.162697>,  <43.035530, 35.035404, 35.216965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.138828, 34.825680, 35.162697>,  <43.310993, 34.476139, 35.072250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138828, 34.825680, 35.162697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595618, 0.086733, 0.798572,
		0.678221, 0.478395, -0.557812,
		-0.430413, 0.873851, 0.226116,
		43.009705, 35.087833, 35.230530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845524, 34.449501, 34.505291>,  <43.310993, 34.476139, 35.072250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845524, 34.449501, 34.505291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.173756, 34.564590, 34.702820>,  <44.370697, 34.633644, 34.821335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.173756, 34.564590, 34.702820>,  <43.845524, 34.449501, 34.505291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173756, 34.564590, 34.702820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024720, 0.845360, -0.533624,
		-0.570992, 0.450091, 0.686576,
		0.820583, 0.287723, 0.493820,
		44.419930, 34.650906, 34.850967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710571, 35.089874, 34.750984>,  <43.845524, 34.449501, 34.505291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710571, 35.089874, 34.750984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.106937, 35.054665, 34.710297>,  <44.344757, 35.033539, 34.685883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.106937, 35.054665, 34.710297>,  <43.710571, 35.089874, 34.750984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106937, 35.054665, 34.710297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000033, 0.756347, -0.654171,
		0.134517, 0.648222, 0.749475,
		0.990911, -0.088022, -0.101720,
		44.404209, 35.028259, 34.679779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031612, 35.676243, 34.909340>,  <43.710571, 35.089874, 34.750984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031612, 35.676243, 34.909340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262951, 35.503677, 34.632385>,  <44.401752, 35.400139, 34.466213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262951, 35.503677, 34.632385>,  <44.031612, 35.676243, 34.909340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262951, 35.503677, 34.632385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136816, 0.785411, -0.603665,
		0.804237, 0.443856, 0.395214,
		0.578346, -0.431418, -0.692383,
		44.436455, 35.374252, 34.424671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477814, 36.215103, 34.673100>,  <44.031612, 35.676243, 34.909340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477814, 36.215103, 34.673100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499496, 35.940216, 34.383327>,  <44.512508, 35.775284, 34.209465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499496, 35.940216, 34.383327>,  <44.477814, 36.215103, 34.673100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499496, 35.940216, 34.383327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122519, 0.724590, -0.678203,
		0.990985, -0.051992, 0.123476,
		0.054209, -0.687217, -0.724427,
		44.515759, 35.734051, 34.166000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.102875, 36.422493, 34.282066>,  <44.477814, 36.215103, 34.673100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.102875, 36.422493, 34.282066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.891888, 36.184120, 34.039864>,  <44.765297, 36.041096, 33.894543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.891888, 36.184120, 34.039864>,  <45.102875, 36.422493, 34.282066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891888, 36.184120, 34.039864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091943, 0.668493, -0.738014,
		0.844584, -0.444952, -0.297818,
		-0.527469, -0.595933, -0.605508,
		44.733646, 36.005341, 33.858212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393879, 36.424805, 33.708046>,  <45.102875, 36.422493, 34.282066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393879, 36.424805, 33.708046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.035931, 36.297436, 33.582943>,  <44.821163, 36.221016, 33.507881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.035931, 36.297436, 33.582943>,  <45.393879, 36.424805, 33.708046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.035931, 36.297436, 33.582943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001541, 0.702930, -0.711258,
		0.446325, -0.636001, -0.629521,
		-0.894870, -0.318422, -0.312755,
		44.767471, 36.201908, 33.489117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.465443, 36.270138, 32.935234>,  <45.393879, 36.424805, 33.708046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.465443, 36.270138, 32.935234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.085350, 36.354240, 33.027191>,  <44.857296, 36.404701, 33.082367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.085350, 36.354240, 33.027191>,  <45.465443, 36.270138, 32.935234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085350, 36.354240, 33.027191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025669, 0.682571, -0.730369,
		-0.310486, -0.699920, -0.643203,
		-0.950231, 0.210259, 0.229895,
		44.800282, 36.417316, 33.096161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147198, 36.224266, 32.289017>,  <45.465443, 36.270138, 32.935234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.147198, 36.224266, 32.289017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.871655, 36.418785, 32.504051>,  <44.706329, 36.535496, 32.633072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.871655, 36.418785, 32.504051>,  <45.147198, 36.224266, 32.289017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.871655, 36.418785, 32.504051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076033, 0.689033, -0.720730,
		-0.720901, -0.537352, -0.437669,
		-0.688854, 0.486298, 0.537582,
		44.664997, 36.564674, 32.665325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.586769, 36.256557, 31.922476>,  <45.147198, 36.224266, 32.289017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.586769, 36.256557, 31.922476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.553097, 36.558731, 32.182392>,  <44.532894, 36.740036, 32.338341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.553097, 36.558731, 32.182392>,  <44.586769, 36.256557, 31.922476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553097, 36.558731, 32.182392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268397, 0.610816, -0.744894,
		-0.959623, -0.237107, 0.151338,
		-0.084180, 0.755437, 0.649792,
		44.527843, 36.785362, 32.377331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955582, 36.663033, 31.733366>,  <44.586769, 36.256557, 31.922476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955582, 36.663033, 31.733366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.165657, 36.929070, 31.945719>,  <44.291702, 37.088692, 32.073132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.165657, 36.929070, 31.945719>,  <43.955582, 36.663033, 31.733366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.165657, 36.929070, 31.945719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083960, 0.661294, -0.745413,
		-0.846835, 0.346908, 0.403144,
		0.525187, 0.665090, 0.530881,
		44.323212, 37.128597, 32.104984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608131, 37.354637, 31.802568>,  <43.955582, 36.663033, 31.733366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.608131, 37.354637, 31.802568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.003765, 37.403976, 31.834805>,  <44.241146, 37.433578, 31.854147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.003765, 37.403976, 31.834805>,  <43.608131, 37.354637, 31.802568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003765, 37.403976, 31.834805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009838, 0.601032, -0.799164,
		-0.147014, 0.789649, 0.595686,
		0.989085, 0.123349, 0.080591,
		44.300491, 37.440983, 31.858982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675804, 38.048038, 31.761179>,  <43.608131, 37.354637, 31.802568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675804, 38.048038, 31.761179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.051716, 37.928337, 31.695124>,  <44.277264, 37.856518, 31.655491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.051716, 37.928337, 31.695124>,  <43.675804, 38.048038, 31.761179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.051716, 37.928337, 31.695124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105015, 0.712585, -0.693681,
		0.325262, 0.634562, 0.701096,
		0.939775, -0.299253, -0.165138,
		44.333649, 37.838562, 31.645582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058285, 38.715580, 31.616045>,  <43.675804, 38.048038, 31.761179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058285, 38.715580, 31.616045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.310745, 38.424591, 31.508398>,  <44.462223, 38.249996, 31.443810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.310745, 38.424591, 31.508398>,  <44.058285, 38.715580, 31.616045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310745, 38.424591, 31.508398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374732, 0.589756, -0.715377,
		0.679132, 0.350667, 0.644835,
		0.631154, -0.727475, -0.269116,
		44.500092, 38.206348, 31.427664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.792561, 38.961422, 31.629738>,  <44.058285, 38.715580, 31.616045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.792561, 38.961422, 31.629738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.782871, 38.652206, 31.376181>,  <44.777058, 38.466675, 31.224047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.782871, 38.652206, 31.376181>,  <44.792561, 38.961422, 31.629738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.782871, 38.652206, 31.376181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430435, 0.564231, -0.704535,
		0.902297, -0.289916, 0.319076,
		-0.024223, -0.773041, -0.633893,
		44.775604, 38.420296, 31.186012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.411617, 38.948181, 31.390253>,  <44.792561, 38.961422, 31.629738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.411617, 38.948181, 31.390253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.201309, 38.725185, 31.133263>,  <45.075127, 38.591389, 30.979069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.201309, 38.725185, 31.133263>,  <45.411617, 38.948181, 31.390253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.201309, 38.725185, 31.133263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495721, 0.412969, -0.764014,
		0.691253, -0.720181, 0.059235,
		-0.525766, -0.557491, -0.642475,
		45.043579, 38.557938, 30.940519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.840321, 38.675426, 30.846088>,  <45.411617, 38.948181, 31.390253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.840321, 38.675426, 30.846088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.497097, 38.631187, 30.645491>,  <45.291161, 38.604645, 30.525131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.497097, 38.631187, 30.645491>,  <45.840321, 38.675426, 30.846088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.497097, 38.631187, 30.645491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452295, 0.299754, -0.839986,
		0.243221, -0.947585, -0.207188,
		-0.858064, -0.110593, -0.501494,
		45.239677, 38.598007, 30.495043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.874149, 38.157845, 30.307123>,  <45.840321, 38.675426, 30.846088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.874149, 38.157845, 30.307123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.592537, 38.430733, 30.228210>,  <45.423569, 38.594467, 30.180862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.592537, 38.430733, 30.228210>,  <45.874149, 38.157845, 30.307123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.592537, 38.430733, 30.228210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356137, 0.098821, -0.929194,
		-0.614419, -0.724438, -0.312536,
		-0.704029, 0.682219, -0.197281,
		45.381329, 38.635399, 30.169025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.755932, 38.047028, 29.544855>,  <45.874149, 38.157845, 30.307123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.755932, 38.047028, 29.544855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.547768, 38.382877, 29.607079>,  <45.422871, 38.584389, 29.644413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.547768, 38.382877, 29.607079>,  <45.755932, 38.047028, 29.544855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.547768, 38.382877, 29.607079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304571, 0.352703, -0.884781,
		-0.797752, -0.413071, -0.439277,
		-0.520411, 0.839627, 0.155560,
		45.391644, 38.634766, 29.653746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.318363, 38.080566, 28.992289>,  <45.755932, 38.047028, 29.544855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.318363, 38.080566, 28.992289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.316914, 38.455482, 29.131701>,  <45.316044, 38.680431, 29.215347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.316914, 38.455482, 29.131701>,  <45.318363, 38.080566, 28.992289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316914, 38.455482, 29.131701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246432, 0.338619, -0.908080,
		-0.969153, 0.082596, -0.232206,
		-0.003625, 0.937291, 0.348528,
		45.315826, 38.736671, 29.236259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.841225, 38.584602, 28.619987>,  <45.318363, 38.080566, 28.992289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.841225, 38.584602, 28.619987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.112331, 38.824265, 28.790468>,  <45.274994, 38.968060, 28.892757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.112331, 38.824265, 28.790468>,  <44.841225, 38.584602, 28.619987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112331, 38.824265, 28.790468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111091, 0.489550, -0.864870,
		-0.726836, 0.633528, 0.265240,
		0.677767, 0.599152, 0.426202,
		45.315662, 39.004009, 28.918329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.799934, 39.205257, 28.258520>,  <44.841225, 38.584602, 28.619987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.799934, 39.205257, 28.258520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.149208, 39.246574, 28.449047>,  <45.358772, 39.271366, 28.563362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.149208, 39.246574, 28.449047>,  <44.799934, 39.205257, 28.258520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149208, 39.246574, 28.449047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354757, 0.535434, -0.766458,
		-0.334206, 0.838237, 0.430889,
		0.873186, 0.103294, 0.476316,
		45.411163, 39.277561, 28.591942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.040581, 38.120087, 41.665474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646675, 38.052433, 41.681675>,  <41.410332, 38.011841, 41.691395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646675, 38.052433, 41.681675>,  <42.040581, 38.120087, 41.665474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646675, 38.052433, 41.681675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043235, -0.463645, -0.884966,
		0.168454, -0.869728, 0.463892,
		-0.984761, -0.169133, 0.040500,
		41.351246, 38.001694, 41.693825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957077, 37.360874, 41.618660>,  <42.040581, 38.120087, 41.665474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957077, 37.360874, 41.618660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608150, 37.520241, 41.505287>,  <41.398796, 37.615860, 41.437263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608150, 37.520241, 41.505287>,  <41.957077, 37.360874, 41.618660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608150, 37.520241, 41.505287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027802, -0.619154, -0.784777,
		-0.488153, -0.676693, 0.551174,
		-0.872315, 0.398416, -0.283429,
		41.346455, 37.639767, 41.420258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553173, 36.760796, 41.362141>,  <41.957077, 37.360874, 41.618660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553173, 36.760796, 41.362141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322594, 37.066410, 41.246239>,  <41.184246, 37.249779, 41.176697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322594, 37.066410, 41.246239>,  <41.553173, 36.760796, 41.362141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322594, 37.066410, 41.246239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235750, -0.495023, -0.836286,
		-0.782390, -0.413762, 0.465476,
		-0.576445, 0.764037, -0.289757,
		41.149662, 37.295620, 41.159313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942879, 36.371811, 41.210838>,  <41.553173, 36.760796, 41.362141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942879, 36.371811, 41.210838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954754, 36.724186, 41.021919>,  <40.961880, 36.935612, 40.908569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954754, 36.724186, 41.021919>,  <40.942879, 36.371811, 41.210838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954754, 36.724186, 41.021919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251607, -0.450702, -0.856481,
		-0.967374, 0.144256, 0.208273,
		0.029684, 0.880941, -0.472294,
		40.963657, 36.988468, 40.880230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349102, 36.444275, 40.852119>,  <40.942879, 36.371811, 41.210838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349102, 36.444275, 40.852119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603371, 36.697556, 40.675491>,  <40.755932, 36.849522, 40.569515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603371, 36.697556, 40.675491>,  <40.349102, 36.444275, 40.852119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603371, 36.697556, 40.675491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464509, -0.143120, -0.873927,
		-0.616565, 0.760643, 0.203149,
		0.635672, 0.633198, -0.441568,
		40.794071, 36.887516, 40.543022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942665, 36.807770, 40.299667>,  <40.349102, 36.444275, 40.852119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942665, 36.807770, 40.299667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313877, 36.912987, 40.194168>,  <40.536606, 36.976116, 40.130867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313877, 36.912987, 40.194168>,  <39.942665, 36.807770, 40.299667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313877, 36.912987, 40.194168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285254, 0.046484, -0.957324,
		-0.239558, 0.963664, 0.118173,
		0.928031, 0.263044, -0.263753,
		40.592285, 36.991901, 40.115044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997662, 37.481308, 39.937321>,  <39.942665, 36.807770, 40.299667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997662, 37.481308, 39.937321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307053, 37.249390, 39.834892>,  <40.492687, 37.110241, 39.773434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307053, 37.249390, 39.834892>,  <39.997662, 37.481308, 39.937321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307053, 37.249390, 39.834892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314048, 0.000355, -0.949407,
		0.550549, 0.814765, -0.181808,
		0.773479, -0.579792, -0.256070,
		40.539097, 37.075451, 39.758072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339085, 37.807068, 39.401348>,  <39.997662, 37.481308, 39.937321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339085, 37.807068, 39.401348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417130, 37.415604, 39.375584>,  <40.463955, 37.180725, 39.360126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417130, 37.415604, 39.375584>,  <40.339085, 37.807068, 39.401348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417130, 37.415604, 39.375584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238800, 0.016291, -0.970932,
		0.951265, 0.204822, -0.230526,
		0.195113, -0.978664, -0.064409,
		40.475662, 37.122005, 39.356262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655361, 37.743576, 38.742916>,  <40.339085, 37.807068, 39.401348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655361, 37.743576, 38.742916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557308, 37.364887, 38.826462>,  <40.498478, 37.137672, 38.876587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557308, 37.364887, 38.826462>,  <40.655361, 37.743576, 38.742916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557308, 37.364887, 38.826462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133967, -0.180291, -0.974448,
		0.960189, -0.266850, -0.082634,
		-0.245133, -0.946724, 0.208862,
		40.483768, 37.080872, 38.889122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972683, 37.439102, 38.282501>,  <40.655361, 37.743576, 38.742916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972683, 37.439102, 38.282501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719357, 37.149029, 38.390587>,  <40.567360, 36.974983, 38.455437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719357, 37.149029, 38.390587>,  <40.972683, 37.439102, 38.282501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719357, 37.149029, 38.390587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109487, -0.261689, -0.958922,
		0.766111, -0.636884, 0.086333,
		-0.633314, -0.725188, 0.270214,
		40.529362, 36.931473, 38.471649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112488, 36.886059, 37.916714>,  <40.972683, 37.439102, 38.282501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112488, 36.886059, 37.916714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740623, 36.797302, 38.034359>,  <40.517506, 36.744049, 38.104946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740623, 36.797302, 38.034359>,  <41.112488, 36.886059, 37.916714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740623, 36.797302, 38.034359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164703, -0.463786, -0.870503,
		0.329559, -0.857711, 0.394616,
		-0.929658, -0.221888, 0.294112,
		40.461727, 36.730736, 38.122593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998810, 36.197502, 37.702946>,  <41.112488, 36.886059, 37.916714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998810, 36.197502, 37.702946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634087, 36.351997, 37.758698>,  <40.415253, 36.444695, 37.792149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634087, 36.351997, 37.758698>,  <40.998810, 36.197502, 37.702946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634087, 36.351997, 37.758698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261842, -0.285450, -0.921931,
		-0.316305, -0.877117, 0.361409,
		-0.911806, 0.386243, 0.139377,
		40.360542, 36.467869, 37.800510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499588, 35.707420, 37.544094>,  <40.998810, 36.197502, 37.702946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499588, 35.707420, 37.544094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308010, 36.051399, 37.473549>,  <40.193066, 36.257786, 37.431221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308010, 36.051399, 37.473549>,  <40.499588, 35.707420, 37.544094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308010, 36.051399, 37.473549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226484, -0.315146, -0.921622,
		-0.848128, -0.401460, 0.345701,
		-0.478941, 0.859949, -0.176360,
		40.164330, 36.309383, 37.420643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954529, 35.254246, 37.395508>,  <40.499588, 35.707420, 37.544094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954529, 35.254246, 37.395508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771278, 34.927071, 37.256313>,  <39.661327, 34.730766, 37.172794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771278, 34.927071, 37.256313>,  <39.954529, 35.254246, 37.395508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771278, 34.927071, 37.256313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180620, -0.297662, 0.937429,
		-0.870341, 0.492318, -0.011368,
		-0.458129, -0.817937, -0.347990,
		39.633839, 34.681690, 37.151917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271824, 35.270119, 37.694256>,  <39.954529, 35.254246, 37.395508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271824, 35.270119, 37.694256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431747, 34.914207, 37.606216>,  <39.527702, 34.700661, 37.553394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431747, 34.914207, 37.606216>,  <39.271824, 35.270119, 37.694256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431747, 34.914207, 37.606216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200809, -0.319316, 0.926128,
		-0.894331, -0.326078, -0.306341,
		0.399810, -0.889781, -0.220095,
		39.551689, 34.647274, 37.540188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800713, 34.800358, 37.821465>,  <39.271824, 35.270119, 37.694256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800713, 34.800358, 37.821465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150608, 34.608334, 37.847908>,  <39.360546, 34.493118, 37.863773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150608, 34.608334, 37.847908>,  <38.800713, 34.800358, 37.821465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150608, 34.608334, 37.847908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239864, -0.310401, 0.919846,
		-0.421058, -0.820485, -0.386670,
		0.874742, -0.480057, 0.066108,
		39.413033, 34.464317, 37.867741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570595, 34.194096, 38.146118>,  <38.800713, 34.800358, 37.821465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570595, 34.194096, 38.146118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965641, 34.227135, 38.199486>,  <39.202667, 34.246956, 38.231506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965641, 34.227135, 38.199486>,  <38.570595, 34.194096, 38.146118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965641, 34.227135, 38.199486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095915, -0.355162, 0.929871,
		0.124188, -0.931149, -0.342841,
		0.987612, 0.082595, 0.133418,
		39.261925, 34.251915, 38.239510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725266, 33.559990, 38.416183>,  <38.570595, 34.194096, 38.146118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725266, 33.559990, 38.416183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023342, 33.808716, 38.512539>,  <39.202190, 33.957951, 38.570351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023342, 33.808716, 38.512539>,  <38.725266, 33.559990, 38.416183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023342, 33.808716, 38.512539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097101, -0.256205, 0.961733,
		0.659741, -0.740068, -0.130543,
		0.745193, 0.621819, 0.240890,
		39.246899, 33.995262, 38.584805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181992, 33.148724, 38.830811>,  <38.725266, 33.559990, 38.416183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181992, 33.148724, 38.830811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271305, 33.524994, 38.932999>,  <39.324894, 33.750755, 38.994312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271305, 33.524994, 38.932999>,  <39.181992, 33.148724, 38.830811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271305, 33.524994, 38.932999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057411, -0.248944, 0.966815,
		0.973062, -0.230540, -0.001580,
		0.223283, 0.940679, 0.255473,
		39.338291, 33.807198, 39.009640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665775, 33.150982, 39.386387>,  <39.181992, 33.148724, 38.830811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665775, 33.150982, 39.386387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544048, 33.529213, 39.432461>,  <39.471012, 33.756153, 39.460106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544048, 33.529213, 39.432461>,  <39.665775, 33.150982, 39.386387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544048, 33.529213, 39.432461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175108, -0.063329, 0.982510,
		0.936339, 0.319161, -0.146307,
		-0.304314, 0.945582, 0.115185,
		39.452755, 33.812889, 39.467018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163799, 33.536072, 39.805740>,  <39.665775, 33.150982, 39.386387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163799, 33.536072, 39.805740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822933, 33.745155, 39.815475>,  <39.618416, 33.870605, 39.821316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822933, 33.745155, 39.815475>,  <40.163799, 33.536072, 39.805740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822933, 33.745155, 39.815475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193197, 0.271061, 0.942974,
		0.486305, 0.808270, -0.331974,
		-0.852163, 0.522710, 0.024337,
		39.567284, 33.901970, 39.822777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417000, 33.975918, 40.371445>,  <40.163799, 33.536072, 39.805740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417000, 33.975918, 40.371445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019642, 34.016380, 40.349777>,  <39.781227, 34.040657, 40.336777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019642, 34.016380, 40.349777>,  <40.417000, 33.975918, 40.371445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019642, 34.016380, 40.349777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031277, 0.215485, 0.976006,
		0.110403, 0.971254, -0.210897,
		-0.993395, 0.101157, -0.054168,
		39.721622, 34.046726, 40.333527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236698, 34.745628, 40.638351>,  <40.417000, 33.975918, 40.371445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236698, 34.745628, 40.638351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919849, 34.504215, 40.674789>,  <39.729740, 34.359367, 40.696651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919849, 34.504215, 40.674789>,  <40.236698, 34.745628, 40.638351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919849, 34.504215, 40.674789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105643, 0.282564, 0.953413,
		-0.601153, 0.745594, -0.287583,
		-0.792120, -0.603529, 0.091097,
		39.682213, 34.323158, 40.702118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691235, 35.145924, 40.943058>,  <40.236698, 34.745628, 40.638351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691235, 35.145924, 40.943058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558029, 34.776787, 41.020485>,  <39.478107, 34.555305, 41.066940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558029, 34.776787, 41.020485>,  <39.691235, 35.145924, 40.943058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558029, 34.776787, 41.020485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077144, 0.231262, 0.969828,
		-0.939762, 0.308030, -0.148204,
		-0.333011, -0.922841, 0.193568,
		39.458126, 34.499935, 41.078556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186440, 35.267128, 41.533066>,  <39.691235, 35.145924, 40.943058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186440, 35.267128, 41.533066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190228, 34.867653, 41.553196>,  <39.192501, 34.627968, 41.565273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190228, 34.867653, 41.553196>,  <39.186440, 35.267128, 41.533066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190228, 34.867653, 41.553196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066364, 0.050842, 0.996499,
		-0.997750, -0.006098, 0.066758,
		0.009471, -0.998688, 0.050323,
		39.193069, 34.568047, 41.568295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630684, 34.963337, 41.715199>,  <39.186440, 35.267128, 41.533066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630684, 34.963337, 41.715199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896507, 34.684872, 41.823803>,  <39.056000, 34.517792, 41.888966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896507, 34.684872, 41.823803>,  <38.630684, 34.963337, 41.715199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896507, 34.684872, 41.823803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117046, 0.261885, 0.957975,
		-0.738013, -0.668409, 0.092555,
		0.664558, -0.696165, 0.271509,
		39.095875, 34.476021, 41.905254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253376, 34.514408, 42.073059>,  <38.630684, 34.963337, 41.715199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253376, 34.514408, 42.073059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624111, 34.425026, 42.193756>,  <38.846550, 34.371395, 42.266174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624111, 34.425026, 42.193756>,  <38.253376, 34.514408, 42.073059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624111, 34.425026, 42.193756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255636, 0.213055, 0.943005,
		-0.275008, -0.951144, 0.140343,
		0.926834, -0.223457, 0.301739,
		38.902161, 34.357990, 42.284279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206364, 34.083187, 42.687790>,  <38.253376, 34.514408, 42.073059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206364, 34.083187, 42.687790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574978, 34.235554, 42.717903>,  <38.796146, 34.326973, 42.735970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574978, 34.235554, 42.717903>,  <38.206364, 34.083187, 42.687790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574978, 34.235554, 42.717903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169460, 0.220116, 0.960642,
		0.349357, -0.898025, 0.267396,
		0.921538, 0.380920, 0.075280,
		38.851440, 34.349831, 42.740486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909279, 33.428036, 42.797791>,  <38.206364, 34.083187, 42.687790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909279, 33.428036, 42.797791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550270, 33.328083, 42.943127>,  <37.334866, 33.268112, 43.030327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550270, 33.328083, 42.943127>,  <37.909279, 33.428036, 42.797791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550270, 33.328083, 42.943127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356222, -0.074831, -0.931400,
		0.259925, -0.965382, -0.021850,
		-0.897521, -0.249877, 0.363341,
		37.281013, 33.253120, 43.052128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716583, 32.799122, 42.337605>,  <37.909279, 33.428036, 42.797791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716583, 32.799122, 42.337605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406357, 32.995777, 42.495991>,  <37.220222, 33.113770, 42.591022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406357, 32.995777, 42.495991>,  <37.716583, 32.799122, 42.337605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406357, 32.995777, 42.495991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349570, 0.187824, -0.917890,
		-0.525639, -0.850304, 0.026191,
		-0.775567, 0.491635, 0.395969,
		37.173687, 33.143269, 42.614780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979710, 32.545982, 42.086967>,  <37.716583, 32.799122, 42.337605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979710, 32.545982, 42.086967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898907, 32.915962, 42.215755>,  <36.850426, 33.137951, 42.293030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898907, 32.915962, 42.215755>,  <36.979710, 32.545982, 42.086967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898907, 32.915962, 42.215755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407122, 0.219691, -0.886559,
		-0.890755, -0.310171, 0.332189,
		-0.202006, 0.924949, 0.321968,
		36.838306, 33.193447, 42.312347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366039, 32.681515, 41.788307>,  <36.979710, 32.545982, 42.086967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366039, 32.681515, 41.788307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486774, 33.045902, 41.900753>,  <36.559216, 33.264534, 41.968220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486774, 33.045902, 41.900753>,  <36.366039, 32.681515, 41.788307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486774, 33.045902, 41.900753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308968, 0.372420, -0.875124,
		-0.901906, 0.177289, 0.393871,
		0.301835, 0.910974, 0.281111,
		36.577324, 33.319195, 41.985085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819939, 33.155243, 41.563648>,  <36.366039, 32.681515, 41.788307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819939, 33.155243, 41.563648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140533, 33.390572, 41.606548>,  <36.332890, 33.531769, 41.632290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140533, 33.390572, 41.606548>,  <35.819939, 33.155243, 41.563648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140533, 33.390572, 41.606548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240466, 0.481269, -0.842945,
		-0.547538, 0.649817, 0.527200,
		0.801485, 0.588318, 0.107254,
		36.380978, 33.567066, 41.638725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506344, 33.825413, 41.465324>,  <35.819939, 33.155243, 41.563648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506344, 33.825413, 41.465324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898853, 33.871094, 41.403290>,  <36.134361, 33.898502, 41.366070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898853, 33.871094, 41.403290>,  <35.506344, 33.825413, 41.465324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898853, 33.871094, 41.403290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192316, 0.537675, -0.820927,
		-0.010368, 0.835382, 0.549571,
		0.981278, 0.114203, -0.155083,
		36.193237, 33.905354, 41.356766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426041, 34.431084, 41.201046>,  <35.506344, 33.825413, 41.465324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426041, 34.431084, 41.201046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779274, 34.285412, 41.082699>,  <35.991215, 34.198009, 41.011688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779274, 34.285412, 41.082699>,  <35.426041, 34.431084, 41.201046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779274, 34.285412, 41.082699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159044, 0.360914, -0.918937,
		0.441438, 0.858555, 0.260797,
		0.883084, -0.364176, -0.295870,
		36.044201, 34.176159, 40.993938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704956, 34.906132, 40.751896>,  <35.426041, 34.431084, 41.201046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704956, 34.906132, 40.751896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929653, 34.591042, 40.650764>,  <36.064472, 34.401985, 40.590084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929653, 34.591042, 40.650764>,  <35.704956, 34.906132, 40.751896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929653, 34.591042, 40.650764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092451, 0.243920, -0.965379,
		0.822127, 0.565673, 0.064195,
		0.561747, -0.787729, -0.252830,
		36.098179, 34.354721, 40.574917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315613, 35.193615, 40.236404>,  <35.704956, 34.906132, 40.751896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315613, 35.193615, 40.236404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279797, 34.801739, 40.164639>,  <36.258308, 34.566612, 40.121578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279797, 34.801739, 40.164639>,  <36.315613, 35.193615, 40.236404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279797, 34.801739, 40.164639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141175, 0.190808, -0.971422,
		0.985927, -0.061652, -0.155393,
		-0.089540, -0.979689, -0.179419,
		36.252934, 34.507832, 40.110813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699692, 35.065029, 39.641380>,  <36.315613, 35.193615, 40.236404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699692, 35.065029, 39.641380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443211, 34.758286, 39.652592>,  <36.289322, 34.574238, 39.659317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443211, 34.758286, 39.652592>,  <36.699692, 35.065029, 39.641380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443211, 34.758286, 39.652592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184157, 0.118324, -0.975749,
		0.744946, -0.630814, -0.217092,
		-0.641203, -0.766859, 0.028024,
		36.250851, 34.528229, 39.660999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745049, 34.741402, 38.987709>,  <36.699692, 35.065029, 39.641380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745049, 34.741402, 38.987709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388119, 34.605907, 39.107052>,  <36.173962, 34.524612, 39.178658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388119, 34.605907, 39.107052>,  <36.745049, 34.741402, 38.987709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388119, 34.605907, 39.107052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380072, 0.207218, -0.901447,
		0.243536, -0.917776, -0.313652,
		-0.892321, -0.338744, 0.298356,
		36.120422, 34.504288, 39.196560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457832, 34.185520, 38.456444>,  <36.745049, 34.741402, 38.987709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457832, 34.185520, 38.456444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179443, 34.373997, 38.673187>,  <36.012409, 34.487083, 38.803234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179443, 34.373997, 38.673187>,  <36.457832, 34.185520, 38.456444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179443, 34.373997, 38.673187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457036, 0.291352, -0.840376,
		-0.553848, -0.832523, 0.012579,
		-0.695968, 0.471189, 0.541857,
		35.970654, 34.515354, 38.835743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.025265, 33.260014, 46.953800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.719238, 33.469292, 46.803635>,  <37.535622, 33.594860, 46.713535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.719238, 33.469292, 46.803635>,  <38.025265, 33.260014, 46.953800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719238, 33.469292, 46.803635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029142, -0.554261, -0.831832,
		-0.643293, -0.647347, 0.408799,
		-0.765065, 0.523199, -0.375418,
		37.489719, 33.626251, 46.691010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574780, 32.744652, 46.666405>,  <38.025265, 33.260014, 46.953800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574780, 32.744652, 46.666405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.453873, 33.089520, 46.503777>,  <37.381329, 33.296440, 46.406200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.453873, 33.089520, 46.503777>,  <37.574780, 32.744652, 46.666405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453873, 33.089520, 46.503777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174566, -0.469375, -0.865572,
		-0.937103, -0.190659, 0.292381,
		-0.302266, 0.862170, -0.406570,
		37.363194, 33.348171, 46.381805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952427, 32.566463, 46.392269>,  <37.574780, 32.744652, 46.666405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952427, 32.566463, 46.392269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.077442, 32.889767, 46.192654>,  <37.152451, 33.083748, 46.072884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.077442, 32.889767, 46.192654>,  <36.952427, 32.566463, 46.392269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077442, 32.889767, 46.192654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164765, -0.471270, -0.866462,
		-0.935507, 0.353027, -0.014118,
		0.312538, 0.808255, -0.499043,
		37.171204, 33.132244, 46.042942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518730, 32.696716, 45.775024>,  <36.952427, 32.566463, 46.392269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518730, 32.696716, 45.775024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.853577, 32.894779, 45.682030>,  <37.054485, 33.013618, 45.626232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.853577, 32.894779, 45.682030>,  <36.518730, 32.696716, 45.775024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853577, 32.894779, 45.682030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000690, -0.424048, -0.905640,
		-0.547020, 0.758289, -0.354637,
		0.837119, 0.495158, -0.232486,
		37.104713, 33.043327, 45.612286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290993, 33.010578, 45.172863>,  <36.518730, 32.696716, 45.775024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290993, 33.010578, 45.172863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.683403, 33.087101, 45.160278>,  <36.918850, 33.133015, 45.152729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.683403, 33.087101, 45.160278>,  <36.290993, 33.010578, 45.172863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683403, 33.087101, 45.160278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033275, 0.006277, -0.999427,
		-0.191003, 0.981510, 0.012524,
		0.981025, 0.191310, -0.031461,
		36.977711, 33.144493, 45.150841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449074, 33.701397, 44.918331>,  <36.290993, 33.010578, 45.172863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449074, 33.701397, 44.918331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.764626, 33.463787, 44.855331>,  <36.953957, 33.321220, 44.817532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.764626, 33.463787, 44.855331>,  <36.449074, 33.701397, 44.918331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764626, 33.463787, 44.855331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014660, 0.238029, -0.971147,
		0.614374, 0.768427, 0.179067,
		0.788879, -0.594022, -0.157504,
		37.001289, 33.285580, 44.808079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880341, 34.136261, 44.450603>,  <36.449074, 33.701397, 44.918331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880341, 34.136261, 44.450603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.982101, 33.751411, 44.411415>,  <37.043159, 33.520500, 44.387901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.982101, 33.751411, 44.411415>,  <36.880341, 34.136261, 44.450603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982101, 33.751411, 44.411415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003671, 0.102263, -0.994750,
		0.967092, 0.252707, 0.029548,
		0.254402, -0.962124, -0.097970,
		37.058422, 33.462776, 44.382023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310966, 34.116920, 43.863243>,  <36.880341, 34.136261, 44.450603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310966, 34.116920, 43.863243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.218861, 33.729443, 43.900337>,  <37.163597, 33.496956, 43.922596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.218861, 33.729443, 43.900337>,  <37.310966, 34.116920, 43.863243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218861, 33.729443, 43.900337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025895, -0.089167, -0.995680,
		0.972783, -0.231675, -0.004552,
		-0.230268, -0.968698, 0.092739,
		37.149780, 33.438831, 43.928158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779682, 33.746597, 43.501427>,  <37.310966, 34.116920, 43.863243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779682, 33.746597, 43.501427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.459450, 33.506924, 43.504299>,  <37.267311, 33.363121, 43.506023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.459450, 33.506924, 43.504299>,  <37.779682, 33.746597, 43.501427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459450, 33.506924, 43.504299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045183, 0.048404, -0.997805,
		0.597519, -0.799149, -0.065824,
		-0.800581, -0.599181, 0.007186,
		37.219276, 33.327171, 43.506454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473915, 33.762169, 43.308990>,  <37.779682, 33.746597, 43.501427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473915, 33.762169, 43.308990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.708149, 34.075272, 43.224724>,  <38.848690, 34.263134, 43.174164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.708149, 34.075272, 43.224724>,  <38.473915, 33.762169, 43.308990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708149, 34.075272, 43.224724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200985, 0.111571, 0.973220,
		0.785303, -0.612240, -0.091989,
		0.585581, 0.782761, -0.210668,
		38.883823, 34.310101, 43.161522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058376, 33.634319, 43.652721>,  <38.473915, 33.762169, 43.308990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058376, 33.634319, 43.652721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.097172, 34.029144, 43.601658>,  <39.120449, 34.266041, 43.571018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.097172, 34.029144, 43.601658>,  <39.058376, 33.634319, 43.652721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097172, 34.029144, 43.601658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329656, 0.089163, 0.939881,
		0.939106, -0.133245, -0.316744,
		0.096992, 0.987064, -0.127658,
		39.126270, 34.325264, 43.563362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562099, 33.823246, 44.050739>,  <39.058376, 33.634319, 43.652721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562099, 33.823246, 44.050739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.428913, 34.192089, 43.971905>,  <39.349003, 34.413395, 43.924603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.428913, 34.192089, 43.971905>,  <39.562099, 33.823246, 44.050739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428913, 34.192089, 43.971905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151842, 0.258718, 0.953944,
		0.930633, 0.287706, -0.226160,
		-0.332967, 0.922112, -0.197086,
		39.329021, 34.468723, 43.912781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083237, 34.263466, 44.338779>,  <39.562099, 33.823246, 44.050739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083237, 34.263466, 44.338779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.764359, 34.502441, 44.304028>,  <39.573032, 34.645828, 44.283176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.764359, 34.502441, 44.304028>,  <40.083237, 34.263466, 44.338779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764359, 34.502441, 44.304028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121414, 0.299618, 0.946302,
		0.591390, 0.743837, -0.311391,
		-0.797193, 0.597441, -0.086879,
		39.525200, 34.681675, 44.277966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290066, 34.987980, 44.645851>,  <40.083237, 34.263466, 44.338779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290066, 34.987980, 44.645851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893410, 34.941578, 44.623253>,  <39.655415, 34.913738, 44.609692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893410, 34.941578, 44.623253>,  <40.290066, 34.987980, 44.645851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893410, 34.941578, 44.623253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096389, 0.374902, 0.922040,
		-0.085777, 0.919778, -0.382950,
		-0.991641, -0.116002, -0.056499,
		39.595917, 34.906776, 44.606304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993740, 35.659515, 44.892601>,  <40.290066, 34.987980, 44.645851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993740, 35.659515, 44.892601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.702980, 35.385513, 44.912148>,  <39.528522, 35.221111, 44.923874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.702980, 35.385513, 44.912148>,  <39.993740, 35.659515, 44.892601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702980, 35.385513, 44.912148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316379, 0.397181, 0.861482,
		-0.609524, 0.610753, -0.505431,
		-0.726901, -0.685002, 0.048862,
		39.484909, 35.180012, 44.926807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496269, 36.038128, 45.018806>,  <39.993740, 35.659515, 44.892601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496269, 36.038128, 45.018806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.401119, 35.669785, 45.142380>,  <39.344028, 35.448780, 45.216526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.401119, 35.669785, 45.142380>,  <39.496269, 36.038128, 45.018806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401119, 35.669785, 45.142380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176356, 0.353729, 0.918572,
		-0.955151, 0.164025, -0.246542,
		-0.237878, -0.920854, 0.308938,
		39.329758, 35.393528, 45.235062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862427, 36.128563, 45.347832>,  <39.496269, 36.038128, 45.018806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862427, 36.128563, 45.347832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.032345, 35.788319, 45.471771>,  <39.134296, 35.584171, 45.546135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.032345, 35.788319, 45.471771>,  <38.862427, 36.128563, 45.347832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032345, 35.788319, 45.471771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239086, 0.224701, 0.944641,
		-0.873147, -0.475361, -0.107918,
		0.424796, -0.850613, 0.309850,
		39.159782, 35.533134, 45.564728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433765, 35.917770, 45.889771>,  <38.862427, 36.128563, 45.347832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433765, 35.917770, 45.889771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.776333, 35.722126, 45.955879>,  <38.981873, 35.604740, 45.995544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.776333, 35.722126, 45.955879>,  <38.433765, 35.917770, 45.889771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776333, 35.722126, 45.955879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015581, 0.295483, 0.955221,
		-0.516048, -0.820644, 0.245436,
		0.856418, -0.489115, 0.165270,
		39.033257, 35.575390, 46.005459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390903, 35.706978, 46.594673>,  <38.433765, 35.917770, 45.889771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390903, 35.706978, 46.594673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.773548, 35.653717, 46.491001>,  <39.003136, 35.621761, 46.428799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.773548, 35.653717, 46.491001>,  <38.390903, 35.706978, 46.594673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773548, 35.653717, 46.491001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277473, 0.144757, 0.949765,
		-0.088943, -0.980467, 0.175421,
		0.956608, -0.133149, -0.259179,
		39.060532, 35.613773, 46.413246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661823, 35.155979, 47.153141>,  <38.390903, 35.706978, 46.594673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661823, 35.155979, 47.153141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.945728, 35.394367, 47.002914>,  <39.116074, 35.537399, 46.912781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.945728, 35.394367, 47.002914>,  <38.661823, 35.155979, 47.153141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945728, 35.394367, 47.002914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334215, 0.184421, 0.924278,
		0.620106, -0.781541, -0.068288,
		0.709767, 0.595972, -0.375563,
		39.158657, 35.573158, 46.890247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163185, 35.176891, 47.621014>,  <38.661823, 35.155979, 47.153141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163185, 35.176891, 47.621014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.273026, 35.502132, 47.415699>,  <39.338928, 35.697277, 47.292511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.273026, 35.502132, 47.415699>,  <39.163185, 35.176891, 47.621014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273026, 35.502132, 47.415699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457758, 0.358897, 0.813419,
		0.845608, -0.458325, -0.273651,
		0.274598, 0.813100, -0.513288,
		39.355404, 35.746063, 47.261711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868694, 35.324436, 47.850853>,  <39.163185, 35.176891, 47.621014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868694, 35.324436, 47.850853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.721348, 35.657112, 47.684677>,  <39.632942, 35.856720, 47.584972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.721348, 35.657112, 47.684677>,  <39.868694, 35.324436, 47.850853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721348, 35.657112, 47.684677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406018, 0.545916, 0.732888,
		0.836336, 0.101292, -0.538778,
		-0.368363, 0.831694, -0.415443,
		39.610840, 35.906620, 47.560043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421356, 35.679077, 47.698578>,  <39.868694, 35.324436, 47.850853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421356, 35.679077, 47.698578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.129803, 35.951591, 47.725620>,  <39.954868, 36.115101, 47.741844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.129803, 35.951591, 47.725620>,  <40.421356, 35.679077, 47.698578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129803, 35.951591, 47.725620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502368, 0.465136, 0.728887,
		0.465136, 0.565239, -0.681288,
		-0.728887, 0.681288, 0.067606,
		39.911137, 36.155979, 47.745903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.117119, 41.179985, 47.748249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.312733, 40.831089, 47.745934>,  <36.430103, 40.621750, 47.744545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.312733, 40.831089, 47.745934>,  <36.117119, 41.179985, 47.748249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312733, 40.831089, 47.745934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187439, 0.111563, -0.975920,
		0.851885, 0.476179, 0.218051,
		0.489039, -0.872243, -0.005784,
		36.459446, 40.569416, 47.744198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804680, 41.309246, 47.470245>,  <36.117119, 41.179985, 47.748249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804680, 41.309246, 47.470245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.706638, 40.925278, 47.415859>,  <36.647816, 40.694897, 47.383228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.706638, 40.925278, 47.415859>,  <36.804680, 41.309246, 47.470245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706638, 40.925278, 47.415859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227445, 0.079393, -0.970549,
		0.942441, -0.268805, 0.198870,
		-0.245099, -0.959917, -0.135962,
		36.633110, 40.637302, 47.375072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198139, 41.165741, 46.946594>,  <36.804680, 41.309246, 47.470245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198139, 41.165741, 46.946594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.968056, 40.838657, 46.937798>,  <36.830006, 40.642406, 46.932522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.968056, 40.838657, 46.937798>,  <37.198139, 41.165741, 46.946594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968056, 40.838657, 46.937798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187156, -0.105393, -0.976660,
		0.796306, -0.565901, 0.213663,
		-0.575212, -0.817709, -0.021987,
		36.795494, 40.593346, 46.931202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543163, 40.700710, 46.519066>,  <37.198139, 41.165741, 46.946594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543163, 40.700710, 46.519066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.176834, 40.541016, 46.536453>,  <36.957039, 40.445198, 46.546886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.176834, 40.541016, 46.536453>,  <37.543163, 40.700710, 46.519066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176834, 40.541016, 46.536453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079307, -0.285909, -0.954969,
		0.393684, -0.871131, 0.293502,
		-0.915818, -0.399233, 0.043471,
		36.902088, 40.421246, 46.549496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622475, 39.961105, 46.300785>,  <37.543163, 40.700710, 46.519066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622475, 39.961105, 46.300785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.241692, 40.059029, 46.227203>,  <37.013222, 40.117783, 46.183056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.241692, 40.059029, 46.227203>,  <37.622475, 39.961105, 46.300785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241692, 40.059029, 46.227203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102251, -0.312113, -0.944526,
		-0.288641, -0.917962, 0.272087,
		-0.951962, 0.244808, -0.183951,
		36.956104, 40.132473, 46.172016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431667, 39.427780, 46.025612>,  <37.622475, 39.961105, 46.300785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431667, 39.427780, 46.025612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.172112, 39.711388, 45.915165>,  <37.016380, 39.881550, 45.848896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.172112, 39.711388, 45.915165>,  <37.431667, 39.427780, 46.025612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172112, 39.711388, 45.915165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066505, -0.308654, -0.948847,
		-0.757973, -0.634058, 0.153129,
		-0.648887, 0.709016, -0.276119,
		36.977444, 39.924091, 45.832329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038597, 39.101826, 45.502228>,  <37.431667, 39.427780, 46.025612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038597, 39.101826, 45.502228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.970959, 39.494102, 45.462944>,  <36.930378, 39.729469, 45.439373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.970959, 39.494102, 45.462944>,  <37.038597, 39.101826, 45.502228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970959, 39.494102, 45.462944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073226, -0.111866, -0.991022,
		-0.982876, -0.160383, 0.090728,
		-0.169092, 0.980695, -0.098206,
		36.920231, 39.788311, 45.433483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562653, 39.068573, 44.924030>,  <37.038597, 39.101826, 45.502228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562653, 39.068573, 44.924030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.693928, 39.445431, 44.951344>,  <36.772694, 39.671543, 44.967731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.693928, 39.445431, 44.951344>,  <36.562653, 39.068573, 44.924030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693928, 39.445431, 44.951344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079113, 0.044621, -0.995866,
		-0.941294, 0.332231, -0.059892,
		0.328185, 0.942142, 0.068285,
		36.792385, 39.728073, 44.971828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072201, 39.445675, 44.546795>,  <36.562653, 39.068573, 44.924030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072201, 39.445675, 44.546795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.403793, 39.669270, 44.554043>,  <36.602749, 39.803425, 44.558392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.403793, 39.669270, 44.554043>,  <36.072201, 39.445675, 44.546795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403793, 39.669270, 44.554043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063004, 0.125526, -0.990088,
		-0.555716, 0.819623, 0.139277,
		0.828981, 0.558982, 0.018117,
		36.652489, 39.836964, 44.559479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941612, 39.892765, 43.982426>,  <36.072201, 39.445675, 44.546795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941612, 39.892765, 43.982426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.335918, 39.893749, 44.049671>,  <36.572502, 39.894341, 44.090019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.335918, 39.893749, 44.049671>,  <35.941612, 39.892765, 43.982426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335918, 39.893749, 44.049671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167969, 0.029669, -0.985346,
		-0.007411, 0.999557, 0.028834,
		0.985765, 0.002459, 0.168114,
		36.631649, 39.894485, 44.100105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182724, 40.455818, 43.543663>,  <35.941612, 39.892765, 43.982426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182724, 40.455818, 43.543663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.498791, 40.223579, 43.622189>,  <36.688431, 40.084236, 43.669304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.498791, 40.223579, 43.622189>,  <36.182724, 40.455818, 43.543663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498791, 40.223579, 43.622189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153404, -0.122761, -0.980509,
		0.593383, 0.804881, -0.007935,
		0.790167, -0.580600, 0.196316,
		36.735840, 40.049400, 43.681084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647709, 40.620010, 43.129898>,  <36.182724, 40.455818, 43.543663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647709, 40.620010, 43.129898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.763702, 40.246578, 43.214119>,  <36.833298, 40.022518, 43.264652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.763702, 40.246578, 43.214119>,  <36.647709, 40.620010, 43.129898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763702, 40.246578, 43.214119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217495, -0.149958, -0.964473,
		0.931991, 0.325472, 0.159565,
		0.289981, -0.933585, 0.210548,
		36.850697, 39.966503, 43.277283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357521, 40.496571, 42.902199>,  <36.647709, 40.620010, 43.129898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357521, 40.496571, 42.902199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.189007, 40.134335, 42.921890>,  <37.087898, 39.916992, 42.933704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.189007, 40.134335, 42.921890>,  <37.357521, 40.496571, 42.902199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189007, 40.134335, 42.921890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346960, -0.211082, -0.913818,
		0.837938, -0.367894, 0.403129,
		-0.421281, -0.905593, 0.049229,
		37.062622, 39.862656, 42.936661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817322, 40.040245, 42.525517>,  <37.357521, 40.496571, 42.902199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817322, 40.040245, 42.525517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.473286, 39.839264, 42.560841>,  <37.266865, 39.718678, 42.582035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.473286, 39.839264, 42.560841>,  <37.817322, 40.040245, 42.525517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473286, 39.839264, 42.560841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147727, -0.410986, -0.899593,
		0.488292, -0.760681, 0.427709,
		-0.860086, -0.502448, 0.088308,
		37.215260, 39.688530, 42.587334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534115, 39.824265, 42.518265>,  <37.817322, 40.040245, 42.525517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534115, 39.824265, 42.518265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.872051, 39.970665, 42.362167>,  <39.074814, 40.058506, 42.268509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.872051, 39.970665, 42.362167>,  <38.534115, 39.824265, 42.518265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872051, 39.970665, 42.362167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313537, 0.252338, 0.915434,
		0.433526, -0.895749, 0.098428,
		0.844837, 0.366004, -0.390246,
		39.125504, 40.080467, 42.245094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112461, 39.472412, 42.852879>,  <38.534115, 39.824265, 42.518265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112461, 39.472412, 42.852879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.262554, 39.808941, 42.697247>,  <39.352608, 40.010857, 42.603867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.262554, 39.808941, 42.697247>,  <39.112461, 39.472412, 42.852879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262554, 39.808941, 42.697247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324961, 0.273717, 0.905251,
		0.868103, -0.466114, -0.170689,
		0.375229, 0.841319, -0.389083,
		39.375122, 40.061337, 42.580521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757740, 39.510422, 43.149647>,  <39.112461, 39.472412, 42.852879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757740, 39.510422, 43.149647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.639359, 39.873432, 43.030441>,  <39.568329, 40.091236, 42.958916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.639359, 39.873432, 43.030441>,  <39.757740, 39.510422, 43.149647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639359, 39.873432, 43.030441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190481, 0.361800, 0.912588,
		0.936017, 0.213317, -0.279942,
		-0.295954, 0.907522, -0.298018,
		39.550571, 40.145687, 42.941036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340633, 39.967102, 43.240913>,  <39.757740, 39.510422, 43.149647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340633, 39.967102, 43.240913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.027657, 40.213680, 43.205627>,  <39.839870, 40.361626, 43.184456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.027657, 40.213680, 43.205627>,  <40.340633, 39.967102, 43.240913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027657, 40.213680, 43.205627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208761, 0.393119, 0.895475,
		0.586685, 0.682244, -0.436283,
		-0.782444, 0.616441, -0.088211,
		39.792923, 40.398613, 43.179165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533916, 40.636448, 43.533703>,  <40.340633, 39.967102, 43.240913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533916, 40.636448, 43.533703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.134109, 40.643112, 43.544128>,  <39.894226, 40.647110, 43.550385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.134109, 40.643112, 43.544128>,  <40.533916, 40.636448, 43.533703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134109, 40.643112, 43.544128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030144, 0.335418, 0.941587,
		0.006942, 0.941922, -0.335760,
		-0.999521, 0.016658, 0.026064,
		39.834251, 40.648109, 43.551949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432564, 41.266850, 43.881290>,  <40.533916, 40.636448, 43.533703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432564, 41.266850, 43.881290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.107342, 41.035995, 43.911930>,  <39.912209, 40.897484, 43.930313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.107342, 41.035995, 43.911930>,  <40.432564, 41.266850, 43.881290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107342, 41.035995, 43.911930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024610, 0.165518, 0.985900,
		-0.581672, 0.799702, -0.148778,
		-0.813051, -0.577132, 0.076596,
		39.863426, 40.862854, 43.934910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929745, 41.614975, 44.181923>,  <40.432564, 41.266850, 43.881290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929745, 41.614975, 44.181923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.784237, 41.251095, 44.262039>,  <39.696934, 41.032764, 44.310108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.784237, 41.251095, 44.262039>,  <39.929745, 41.614975, 44.181923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784237, 41.251095, 44.262039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220072, 0.292864, 0.930483,
		-0.905120, 0.294402, -0.306734,
		-0.363768, -0.909702, 0.200288,
		39.675106, 40.978184, 44.322124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290379, 41.644680, 44.398712>,  <39.929745, 41.614975, 44.181923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290379, 41.644680, 44.398712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.419365, 41.298134, 44.551250>,  <39.496758, 41.090206, 44.642773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.419365, 41.298134, 44.551250>,  <39.290379, 41.644680, 44.398712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419365, 41.298134, 44.551250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312927, 0.282644, 0.906746,
		-0.893359, -0.411730, -0.179965,
		0.322468, -0.866366, 0.381344,
		39.516106, 41.038223, 44.665653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707664, 41.189579, 44.751190>,  <39.290379, 41.644680, 44.398712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707664, 41.189579, 44.751190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.051949, 41.049854, 44.899326>,  <39.258518, 40.966019, 44.988209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.051949, 41.049854, 44.899326>,  <38.707664, 41.189579, 44.751190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051949, 41.049854, 44.899326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273432, 0.296417, 0.915080,
		-0.429424, -0.888885, 0.159617,
		0.860714, -0.349313, 0.370339,
		39.310162, 40.945061, 45.010429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470921, 40.681793, 45.223759>,  <38.707664, 41.189579, 44.751190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470921, 40.681793, 45.223759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.850311, 40.770260, 45.314510>,  <39.077946, 40.823341, 45.368961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.850311, 40.770260, 45.314510>,  <38.470921, 40.681793, 45.223759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850311, 40.770260, 45.314510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227555, -0.022752, 0.973499,
		0.220471, -0.974970, 0.028749,
		0.948478, 0.221170, 0.226875,
		39.134853, 40.836613, 45.382572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630932, 40.147961, 45.708729>,  <38.470921, 40.681793, 45.223759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630932, 40.147961, 45.708729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.902660, 40.433651, 45.776131>,  <39.065697, 40.605064, 45.816570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.902660, 40.433651, 45.776131>,  <38.630932, 40.147961, 45.708729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902660, 40.433651, 45.776131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054663, -0.278236, 0.958956,
		0.731799, -0.642232, -0.228055,
		0.679325, 0.714229, 0.168506,
		39.106457, 40.647919, 45.826683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184235, 39.887424, 46.035637>,  <38.630932, 40.147961, 45.708729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184235, 39.887424, 46.035637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.255539, 40.268803, 46.132931>,  <39.298321, 40.497631, 46.191307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.255539, 40.268803, 46.132931>,  <39.184235, 39.887424, 46.035637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255539, 40.268803, 46.132931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151147, -0.270792, 0.950698,
		0.972305, -0.132711, -0.192383,
		0.178264, 0.953446, 0.243233,
		39.309017, 40.554836, 46.205902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617638, 39.804935, 46.547474>,  <39.184235, 39.887424, 46.035637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617638, 39.804935, 46.547474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.537994, 40.190807, 46.616474>,  <39.490208, 40.422329, 46.657875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.537994, 40.190807, 46.616474>,  <39.617638, 39.804935, 46.547474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537994, 40.190807, 46.616474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143818, -0.145353, 0.978871,
		0.969367, 0.219709, -0.109797,
		-0.199107, 0.964676, 0.172499,
		39.478264, 40.480209, 46.668224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057114, 40.015316, 47.108868>,  <39.617638, 39.804935, 46.547474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057114, 40.015316, 47.108868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.751995, 40.273865, 47.116261>,  <39.568924, 40.428993, 47.120697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.751995, 40.273865, 47.116261>,  <40.057114, 40.015316, 47.108868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751995, 40.273865, 47.116261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049897, -0.087338, 0.994928,
		0.644707, 0.758008, 0.098873,
		-0.762799, 0.646371, 0.018485,
		39.523155, 40.467777, 47.121807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872738, 40.062717, 47.049847>,  <40.057114, 40.015316, 47.108868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872738, 40.062717, 47.049847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.199883, 39.833786, 47.073685>,  <41.396168, 39.696426, 47.087986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.199883, 39.833786, 47.073685>,  <40.872738, 40.062717, 47.049847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199883, 39.833786, 47.073685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033602, -0.150890, -0.987979,
		0.574437, 0.806025, -0.142638,
		0.817858, -0.572325, 0.059593,
		41.445240, 39.662086, 47.091564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382614, 40.231472, 46.443874>,  <40.872738, 40.062717, 47.049847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382614, 40.231472, 46.443874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.465813, 39.860817, 46.569145>,  <41.515732, 39.638424, 46.644310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.465813, 39.860817, 46.569145>,  <41.382614, 40.231472, 46.443874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465813, 39.860817, 46.569145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058265, -0.307877, -0.949640,
		0.976393, 0.215767, -0.010046,
		0.207994, -0.926637, 0.313181,
		41.528210, 39.582825, 46.663101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758877, 39.985756, 45.958424>,  <41.382614, 40.231472, 46.443874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758877, 39.985756, 45.958424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.609692, 39.648548, 46.113457>,  <41.520180, 39.446224, 46.206478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.609692, 39.648548, 46.113457>,  <41.758877, 39.985756, 45.958424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609692, 39.648548, 46.113457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063454, -0.393572, -0.917101,
		0.925673, -0.366641, 0.093296,
		-0.372965, -0.843016, 0.387584,
		41.497803, 39.395645, 46.229733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106873, 39.484413, 45.602505>,  <41.758877, 39.985756, 45.958424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106873, 39.484413, 45.602505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.786640, 39.298050, 45.753235>,  <41.594501, 39.186234, 45.843674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.786640, 39.298050, 45.753235>,  <42.106873, 39.484413, 45.602505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786640, 39.298050, 45.753235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060680, -0.562591, -0.824505,
		0.596139, -0.682952, 0.422131,
		-0.800585, -0.465905, 0.376824,
		41.546463, 39.158279, 45.866283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212433, 38.707687, 45.581047>,  <42.106873, 39.484413, 45.602505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212433, 38.707687, 45.581047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.815620, 38.756351, 45.594120>,  <41.577534, 38.785549, 45.601963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.815620, 38.756351, 45.594120>,  <42.212433, 38.707687, 45.581047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815620, 38.756351, 45.594120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105625, -0.661944, -0.742074,
		-0.068651, -0.739614, 0.669521,
		-0.992033, 0.121662, 0.032678,
		41.518009, 38.792850, 45.603924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039936, 38.165974, 45.160473>,  <42.212433, 38.707687, 45.581047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039936, 38.165974, 45.160473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.705101, 38.383060, 45.188026>,  <41.504200, 38.513313, 45.204559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.705101, 38.383060, 45.188026>,  <42.039936, 38.165974, 45.160473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705101, 38.383060, 45.188026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287148, -0.328693, -0.899726,
		-0.465656, -0.772927, 0.430985,
		-0.837084, 0.542719, 0.068886,
		41.453976, 38.545876, 45.208694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542133, 37.740829, 44.810192>,  <42.039936, 38.165974, 45.160473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542133, 37.740829, 44.810192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.369061, 38.101368, 44.817883>,  <41.265217, 38.317692, 44.822495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.369061, 38.101368, 44.817883>,  <41.542133, 37.740829, 44.810192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369061, 38.101368, 44.817883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418072, -0.181709, -0.890055,
		-0.798752, -0.393144, 0.455448,
		-0.432679, 0.901343, 0.019222,
		41.239258, 38.371773, 44.823650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822395, 37.661106, 44.646488>,  <41.542133, 37.740829, 44.810192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822395, 37.661106, 44.646488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.929939, 38.033356, 44.547173>,  <40.994465, 38.256706, 44.487583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.929939, 38.033356, 44.547173>,  <40.822395, 37.661106, 44.646488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929939, 38.033356, 44.547173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490425, -0.089598, -0.866865,
		-0.828975, 0.354832, 0.432314,
		0.268857, 0.930627, -0.248293,
		41.010597, 38.312542, 44.472683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234585, 37.892303, 44.181511>,  <40.822395, 37.661106, 44.646488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234585, 37.892303, 44.181511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.528343, 38.153625, 44.107910>,  <40.704597, 38.310421, 44.063751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.528343, 38.153625, 44.107910>,  <40.234585, 37.892303, 44.181511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528343, 38.153625, 44.107910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155499, -0.101937, -0.982562,
		-0.660673, 0.750198, 0.026727,
		0.734392, 0.653308, -0.184002,
		40.748661, 38.349617, 44.052708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016094, 38.364079, 43.596756>,  <40.234585, 37.892303, 44.181511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016094, 38.364079, 43.596756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.414570, 38.391342, 43.618538>,  <40.653656, 38.407700, 43.631607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.414570, 38.391342, 43.618538>,  <40.016094, 38.364079, 43.596756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414570, 38.391342, 43.618538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058403, -0.057364, -0.996644,
		-0.064808, 0.996024, -0.061126,
		0.996187, 0.068160, 0.054453,
		40.713425, 38.411789, 43.634872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287800, 38.934181, 43.135628>,  <40.016094, 38.364079, 43.596756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287800, 38.934181, 43.135628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.597256, 38.684589, 43.179680>,  <40.782928, 38.534836, 43.206112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.597256, 38.684589, 43.179680>,  <40.287800, 38.934181, 43.135628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597256, 38.684589, 43.179680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041473, -0.123573, -0.991468,
		0.632262, 0.771611, -0.069723,
		0.773644, -0.623976, 0.110132,
		40.829350, 38.497398, 43.212719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721123, 39.250534, 42.605797>,  <40.287800, 38.934181, 43.135628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721123, 39.250534, 42.605797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.848858, 38.887550, 42.715012>,  <40.925499, 38.669762, 42.780540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.848858, 38.887550, 42.715012>,  <40.721123, 39.250534, 42.605797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848858, 38.887550, 42.715012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211477, -0.212617, -0.953977,
		0.923744, 0.362380, 0.124010,
		0.319335, -0.907455, 0.273038,
		40.944660, 38.615314, 42.796925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198128, 39.079731, 42.142040>,  <40.721123, 39.250534, 42.605797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198128, 39.079731, 42.142040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.100910, 38.714436, 42.272835>,  <41.042580, 38.495258, 42.351311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.100910, 38.714436, 42.272835>,  <41.198128, 39.079731, 42.142040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100910, 38.714436, 42.272835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247634, -0.384338, -0.889360,
		0.937873, -0.135184, 0.319562,
		-0.243047, -0.913241, 0.326984,
		41.027996, 38.440464, 42.370930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741051, 38.768799, 41.884804>,  <41.198128, 39.079731, 42.142040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741051, 38.768799, 41.884804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.431416, 38.525322, 41.954407>,  <41.245632, 38.379234, 41.996166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.431416, 38.525322, 41.954407>,  <41.741051, 38.768799, 41.884804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431416, 38.525322, 41.954407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149436, -0.442773, -0.884093,
		0.615185, -0.658366, 0.433707,
		-0.774090, -0.608693, 0.174004,
		41.199188, 38.342712, 42.006607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.953932, 27.777336, 33.380093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.618361, 27.731623, 33.592937>,  <27.417019, 27.704195, 33.720646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.618361, 27.731623, 33.592937>,  <27.953932, 27.777336, 33.380093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618361, 27.731623, 33.592937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064453, 0.991687, 0.111368,
		-0.540416, 0.059133, -0.839318,
		-0.838926, -0.114281, 0.532112,
		27.366682, 27.697338, 33.752571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485146, 28.217503, 33.130653>,  <27.953932, 27.777336, 33.380093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485146, 28.217503, 33.130653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.357378, 28.156473, 33.504753>,  <27.280718, 28.119856, 33.729214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.357378, 28.156473, 33.504753>,  <27.485146, 28.217503, 33.130653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.357378, 28.156473, 33.504753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103525, 0.986664, 0.125602,
		-0.941942, -0.056702, -0.330953,
		-0.319417, -0.152572, 0.935251,
		27.261553, 28.110701, 33.785328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966822, 28.764915, 33.259747>,  <27.485146, 28.217503, 33.130653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966822, 28.764915, 33.259747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.070915, 28.641470, 33.625706>,  <27.133371, 28.567402, 33.845280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.070915, 28.641470, 33.625706>,  <26.966822, 28.764915, 33.259747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070915, 28.641470, 33.625706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134344, 0.926753, 0.350828,
		-0.956154, -0.214208, 0.199711,
		0.260233, -0.308616, 0.914896,
		27.148985, 28.548885, 33.900173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497540, 29.073637, 33.621281>,  <26.966822, 28.764915, 33.259747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497540, 29.073637, 33.621281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.775812, 28.974405, 33.890942>,  <26.942776, 28.914867, 34.052738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.775812, 28.974405, 33.890942>,  <26.497540, 29.073637, 33.621281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775812, 28.974405, 33.890942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122518, 0.883751, 0.451634,
		-0.707827, -0.396789, 0.584414,
		0.695679, -0.248077, 0.674157,
		26.984516, 28.899982, 34.093189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247372, 29.133236, 34.252476>,  <26.497540, 29.073637, 33.621281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247372, 29.133236, 34.252476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.644442, 29.176374, 34.274258>,  <26.882683, 29.202257, 34.287327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.644442, 29.176374, 34.274258>,  <26.247372, 29.133236, 34.252476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644442, 29.176374, 34.274258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120798, 0.893071, 0.433396,
		-0.001888, -0.436799, 0.899557,
		0.992675, 0.107846, 0.054451,
		26.942244, 29.208729, 34.290592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257215, 29.665466, 34.656467>,  <26.247372, 29.133236, 34.252476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.257215, 29.665466, 34.656467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.646774, 29.638920, 34.569637>,  <26.880510, 29.622992, 34.517540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.646774, 29.638920, 34.569637>,  <26.257215, 29.665466, 34.656467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646774, 29.638920, 34.569637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160799, 0.876684, 0.453397,
		0.160212, -0.476467, 0.864472,
		0.973897, -0.066367, -0.217071,
		26.938944, 29.619009, 34.504517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625402, 29.818884, 35.300297>,  <26.257215, 29.665466, 34.656467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625402, 29.818884, 35.300297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.831257, 29.926676, 34.974712>,  <26.954769, 29.991352, 34.779362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.831257, 29.926676, 34.974712>,  <26.625402, 29.818884, 35.300297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831257, 29.926676, 34.974712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134558, 0.912177, 0.387075,
		0.846785, -0.308727, 0.433178,
		0.514635, 0.269481, -0.813960,
		26.985647, 30.007521, 34.730526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201855, 30.176746, 35.547638>,  <26.625402, 29.818884, 35.300297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201855, 30.176746, 35.547638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.150238, 30.299488, 35.170452>,  <27.119268, 30.373133, 34.944141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.150238, 30.299488, 35.170452>,  <27.201855, 30.176746, 35.547638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.150238, 30.299488, 35.170452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116478, 0.949026, 0.292888,
		0.984775, -0.072040, -0.158207,
		-0.129042, 0.306856, -0.942967,
		27.111525, 30.391544, 34.887562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787918, 30.567205, 35.530483>,  <27.201855, 30.176746, 35.547638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787918, 30.567205, 35.530483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.593466, 30.688255, 35.202557>,  <27.476793, 30.760885, 35.005802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.593466, 30.688255, 35.202557>,  <27.787918, 30.567205, 35.530483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593466, 30.688255, 35.202557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075432, 0.949154, 0.305642,
		0.870623, 0.086742, -0.484242,
		-0.486132, 0.302627, -0.819812,
		27.447626, 30.779043, 34.956612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124844, 31.155155, 35.234863>,  <27.787918, 30.567205, 35.530483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124844, 31.155155, 35.234863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.739429, 31.171619, 35.129105>,  <27.508181, 31.181498, 35.065647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.739429, 31.171619, 35.129105>,  <28.124844, 31.155155, 35.234863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739429, 31.171619, 35.129105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002332, 0.989353, 0.145520,
		0.267574, 0.139597, -0.953371,
		-0.963534, 0.041161, -0.264400,
		27.450369, 31.183968, 35.049786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196968, 31.667776, 34.761501>,  <28.124844, 31.155155, 35.234863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196968, 31.667776, 34.761501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.809370, 31.652939, 34.859211>,  <27.576811, 31.644037, 34.917835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.809370, 31.652939, 34.859211>,  <28.196968, 31.667776, 34.761501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809370, 31.652939, 34.859211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000614, 0.988302, 0.152509,
		-0.247073, 0.147930, -0.957639,
		-0.968997, -0.037093, 0.244274,
		27.518671, 31.641811, 34.932491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948175, 32.233280, 34.479954>,  <28.196968, 31.667776, 34.761501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948175, 32.233280, 34.479954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.682442, 32.124672, 34.758503>,  <27.523001, 32.059505, 34.925632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.682442, 32.124672, 34.758503>,  <27.948175, 32.233280, 34.479954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682442, 32.124672, 34.758503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066742, 0.949512, 0.306549,
		-0.744448, 0.157175, -0.648917,
		-0.664336, -0.271520, 0.696372,
		27.483141, 32.043217, 34.967415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350285, 32.623558, 34.345078>,  <27.948175, 32.233280, 34.479954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350285, 32.623558, 34.345078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.358871, 32.519833, 34.731300>,  <27.364023, 32.457596, 34.963032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.358871, 32.519833, 34.731300>,  <27.350285, 32.623558, 34.345078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358871, 32.519833, 34.731300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007318, 0.965710, 0.259519,
		-0.999743, -0.012636, 0.018831,
		0.021465, -0.259314, 0.965555,
		27.365311, 32.442039, 35.020966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935041, 33.027695, 34.570469>,  <27.350285, 32.623558, 34.345078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935041, 33.027695, 34.570469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.139502, 32.918228, 34.896374>,  <27.262178, 32.852547, 35.091915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.139502, 32.918228, 34.896374>,  <26.935041, 33.027695, 34.570469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139502, 32.918228, 34.896374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166287, 0.961532, 0.218643,
		-0.843251, 0.023724, 0.536996,
		0.511152, -0.273667, 0.814758,
		27.292847, 32.836128, 35.140800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742737, 33.494781, 35.157566>,  <26.935041, 33.027695, 34.570469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.742737, 33.494781, 35.157566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.055141, 33.308861, 35.324409>,  <27.242584, 33.197308, 35.424515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.055141, 33.308861, 35.324409>,  <26.742737, 33.494781, 35.157566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055141, 33.308861, 35.324409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176001, 0.804639, 0.567080,
		-0.599203, -0.369484, 0.710238,
		0.781012, -0.464799, 0.417112,
		27.289446, 33.169422, 35.449543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686464, 33.550545, 35.844093>,  <26.742737, 33.494781, 35.157566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686464, 33.550545, 35.844093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.081797, 33.512333, 35.796646>,  <27.318996, 33.489407, 35.768177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.081797, 33.512333, 35.796646>,  <26.686464, 33.550545, 35.844093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081797, 33.512333, 35.796646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148140, 0.783906, 0.602948,
		0.035388, -0.613486, 0.788912,
		0.988333, -0.095533, -0.118622,
		27.378296, 33.483673, 35.761059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109207, 33.670284, 36.560883>,  <26.686464, 33.550545, 35.844093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109207, 33.670284, 36.560883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.395767, 33.732059, 36.288731>,  <27.567703, 33.769123, 36.125439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.395767, 33.732059, 36.288731>,  <27.109207, 33.670284, 36.560883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395767, 33.732059, 36.288731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235756, 0.864245, 0.444408,
		0.656652, -0.478778, 0.582735,
		0.716399, 0.154438, -0.680383,
		27.610687, 33.778393, 36.084614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823484, 33.865509, 36.910114>,  <27.109207, 33.670284, 36.560883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823484, 33.865509, 36.910114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.826553, 33.989491, 36.529827>,  <27.828394, 34.063881, 36.301655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.826553, 33.989491, 36.529827>,  <27.823484, 33.865509, 36.910114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826553, 33.989491, 36.529827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275285, 0.913358, 0.299993,
		0.961332, -0.264020, -0.078319,
		0.007670, 0.309953, -0.950721,
		27.828856, 34.082478, 36.244610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284485, 34.261406, 37.019287>,  <27.823484, 33.865509, 36.910114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284485, 34.261406, 37.019287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.143543, 34.387215, 36.666714>,  <28.058977, 34.462700, 36.455170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.143543, 34.387215, 36.666714>,  <28.284485, 34.261406, 37.019287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143543, 34.387215, 36.666714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351204, 0.917439, 0.186980,
		0.867468, -0.243679, -0.433728,
		-0.352356, 0.314526, -0.881430,
		28.037836, 34.481571, 36.402287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777075, 34.801414, 36.818615>,  <28.284485, 34.261406, 37.019287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777075, 34.801414, 36.818615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.417425, 34.861103, 36.654026>,  <28.201635, 34.896915, 36.555275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.417425, 34.861103, 36.654026>,  <28.777075, 34.801414, 36.818615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417425, 34.861103, 36.654026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112349, 0.987275, 0.112539,
		0.423025, 0.054959, -0.904450,
		-0.899126, 0.149220, -0.411468,
		28.147688, 34.905869, 36.530586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395174, 34.499302, 37.164581>,  <28.777075, 34.801414, 36.818615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395174, 34.499302, 37.164581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.701883, 34.637280, 37.381126>,  <29.885908, 34.720066, 37.511051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.701883, 34.637280, 37.381126>,  <29.395174, 34.499302, 37.164581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701883, 34.637280, 37.381126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620844, -0.612828, -0.488870,
		0.163127, 0.710953, -0.684058,
		0.766774, 0.344946, 0.541360,
		29.931915, 34.740765, 37.543533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966305, 34.871655, 36.707275>,  <29.395174, 34.499302, 37.164581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966305, 34.871655, 36.707275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.112476, 34.711937, 37.043613>,  <30.200178, 34.616104, 37.245419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.112476, 34.711937, 37.043613>,  <29.966305, 34.871655, 36.707275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112476, 34.711937, 37.043613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471410, -0.699528, -0.537059,
		0.802642, 0.592641, -0.067395,
		0.365428, -0.399296, 0.840848,
		30.222105, 34.592148, 37.295868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618664, 34.648251, 36.504330>,  <29.966305, 34.871655, 36.707275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618664, 34.648251, 36.504330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.541788, 34.450813, 36.843605>,  <30.495663, 34.332352, 37.047173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.541788, 34.450813, 36.843605>,  <30.618664, 34.648251, 36.504330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541788, 34.450813, 36.843605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244633, -0.861117, -0.445682,
		0.950378, 0.121840, 0.286247,
		-0.192191, -0.493591, 0.848193,
		30.484131, 34.302734, 37.098064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882711, 34.027393, 36.383831>,  <30.618664, 34.648251, 36.504330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882711, 34.027393, 36.383831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.708677, 33.953259, 36.736275>,  <30.604258, 33.908779, 36.947742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.708677, 33.953259, 36.736275>,  <30.882711, 34.027393, 36.383831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708677, 33.953259, 36.736275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012322, -0.979720, -0.199995,
		0.900305, -0.076158, 0.428545,
		-0.435085, -0.185337, 0.881108,
		30.578152, 33.897659, 37.000607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314936, 33.547680, 36.701012>,  <30.882711, 34.027393, 36.383831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314936, 33.547680, 36.701012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.939617, 33.512589, 36.834820>,  <30.714426, 33.491531, 36.915104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.939617, 33.512589, 36.834820>,  <31.314936, 33.547680, 36.701012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939617, 33.512589, 36.834820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006165, -0.971377, -0.237464,
		0.345777, -0.220750, 0.911980,
		-0.938297, -0.087732, 0.334519,
		30.658129, 33.486267, 36.935177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235743, 32.906944, 37.115540>,  <31.314936, 33.547680, 36.701012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235743, 32.906944, 37.115540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.853697, 32.969444, 37.014874>,  <30.624470, 33.006947, 36.954472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.853697, 32.969444, 37.014874>,  <31.235743, 32.906944, 37.115540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853697, 32.969444, 37.014874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134716, -0.985749, -0.100752,
		-0.263826, -0.062325, 0.962555,
		-0.955117, 0.156253, -0.251669,
		30.567162, 33.016319, 36.939373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793095, 32.430164, 37.616409>,  <31.235743, 32.906944, 37.115540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793095, 32.430164, 37.616409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.577702, 32.512421, 37.289547>,  <30.448465, 32.561775, 37.093430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.577702, 32.512421, 37.289547>,  <30.793095, 32.430164, 37.616409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577702, 32.512421, 37.289547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281479, -0.957956, -0.055585,
		-0.794233, 0.200082, 0.573726,
		-0.538483, 0.205639, -0.817159,
		30.416157, 32.574112, 37.044399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187153, 32.023499, 37.665009>,  <30.793095, 32.430164, 37.616409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187153, 32.023499, 37.665009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.213001, 32.105511, 37.274361>,  <30.228510, 32.154716, 37.039970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.213001, 32.105511, 37.274361>,  <30.187153, 32.023499, 37.665009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213001, 32.105511, 37.274361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156668, -0.964446, -0.212837,
		-0.985535, 0.166758, -0.030201,
		0.064620, 0.205027, -0.976621,
		30.232388, 32.167019, 36.981373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702188, 31.532513, 37.336414>,  <30.187153, 32.023499, 37.665009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702188, 31.532513, 37.336414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.940477, 31.638779, 37.033222>,  <30.083450, 31.702539, 36.851307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.940477, 31.638779, 37.033222>,  <29.702188, 31.532513, 37.336414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940477, 31.638779, 37.033222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031658, -0.935214, -0.352666,
		-0.802566, 0.234087, -0.548717,
		0.595722, 0.265666, -0.757982,
		30.119194, 31.718479, 36.805828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381020, 31.464849, 36.684376>,  <29.702188, 31.532513, 37.336414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381020, 31.464849, 36.684376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.761181, 31.459934, 36.560066>,  <29.989279, 31.456985, 36.485481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.761181, 31.459934, 36.560066>,  <29.381020, 31.464849, 36.684376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761181, 31.459934, 36.560066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150432, -0.892721, -0.424757,
		-0.272215, 0.450441, -0.850295,
		0.950405, -0.012287, -0.310773,
		30.046303, 31.456249, 36.466835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398764, 31.128399, 36.041950>,  <29.381020, 31.464849, 36.684376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398764, 31.128399, 36.041950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.797487, 31.152943, 36.021519>,  <30.036720, 31.167669, 36.009258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.797487, 31.152943, 36.021519>,  <29.398764, 31.128399, 36.041950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797487, 31.152943, 36.021519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031735, -0.891601, -0.451707,
		-0.073262, 0.448644, -0.890702,
		0.996808, 0.061359, -0.051083,
		30.096529, 31.171350, 36.006195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571203, 31.104427, 35.354691>,  <29.398764, 31.128399, 36.041950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571203, 31.104427, 35.354691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.888054, 30.970043, 35.558517>,  <30.078165, 30.889412, 35.680813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.888054, 30.970043, 35.558517>,  <29.571203, 31.104427, 35.354691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888054, 30.970043, 35.558517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017903, -0.821728, -0.569598,
		0.610093, 0.460317, -0.644899,
		0.792128, -0.335962, 0.509572,
		30.125692, 30.869255, 35.711388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056980, 30.781002, 34.822369>,  <29.571203, 31.104427, 35.354691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056980, 30.781002, 34.822369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.179350, 30.658625, 35.182991>,  <30.252771, 30.585199, 35.399364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.179350, 30.658625, 35.182991>,  <30.056980, 30.781002, 34.822369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179350, 30.658625, 35.182991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292892, -0.870792, -0.394887,
		0.905884, 0.384865, -0.176787,
		0.305923, -0.305942, 0.901560,
		30.271126, 30.566841, 35.453461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704031, 30.578873, 34.742218>,  <30.056980, 30.781002, 34.822369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704031, 30.578873, 34.742218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.558199, 30.380335, 35.057362>,  <30.470699, 30.261211, 35.246449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.558199, 30.380335, 35.057362>,  <30.704031, 30.578873, 34.742218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558199, 30.380335, 35.057362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322715, -0.861007, -0.393093,
		0.873463, 0.110941, 0.474083,
		-0.364578, -0.496346, 0.787860,
		30.448826, 30.231432, 35.293720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192280, 30.017057, 34.739426>,  <30.704031, 30.578873, 34.742218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192280, 30.017057, 34.739426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.876993, 29.884045, 34.946552>,  <30.687820, 29.804237, 35.070827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.876993, 29.884045, 34.946552>,  <31.192280, 30.017057, 34.739426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876993, 29.884045, 34.946552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082323, -0.890851, -0.446775,
		0.609867, -0.309527, 0.729558,
		-0.788216, -0.332533, 0.517819,
		30.640528, 29.784285, 35.101898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352243, 29.383381, 34.948215>,  <31.192280, 30.017057, 34.739426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352243, 29.383381, 34.948215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.956295, 29.392628, 35.004250>,  <30.718727, 29.398176, 35.037868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.956295, 29.392628, 35.004250>,  <31.352243, 29.383381, 34.948215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956295, 29.392628, 35.004250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059474, -0.963430, -0.261276,
		0.128922, -0.266961, 0.955045,
		-0.989870, 0.023116, 0.140085,
		30.659334, 29.399563, 35.046276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218483, 28.867285, 35.331631>,  <31.352243, 29.383381, 34.948215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218483, 28.867285, 35.331631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.852980, 28.937532, 35.185097>,  <30.633677, 28.979681, 35.097176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.852980, 28.937532, 35.185097>,  <31.218483, 28.867285, 35.331631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852980, 28.937532, 35.185097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145719, -0.983417, -0.107970,
		-0.379222, -0.045277, 0.924197,
		-0.913760, 0.175617, -0.366336,
		30.578852, 28.990217, 35.075195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685570, 28.411257, 35.664417>,  <31.218483, 28.867285, 35.331631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685570, 28.411257, 35.664417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.517845, 28.510942, 35.315231>,  <30.417212, 28.570753, 35.105721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.517845, 28.510942, 35.315231>,  <30.685570, 28.411257, 35.664417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517845, 28.510942, 35.315231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321935, -0.939911, -0.113690,
		-0.848844, 0.233368, 0.474344,
		-0.419310, 0.249213, -0.872967,
		30.392052, 28.585707, 35.053341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054901, 28.101582, 35.715065>,  <30.685570, 28.411257, 35.664417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054901, 28.101582, 35.715065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.092772, 28.164808, 35.321915>,  <30.115494, 28.202744, 35.086025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.092772, 28.164808, 35.321915>,  <30.054901, 28.101582, 35.715065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092772, 28.164808, 35.321915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401208, -0.897523, -0.182986,
		-0.911081, 0.411663, -0.021557,
		0.094677, 0.158066, -0.982879,
		30.121174, 28.212229, 35.027050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393927, 28.052277, 35.428047>,  <30.054901, 28.101582, 35.715065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393927, 28.052277, 35.428047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.655470, 27.996910, 35.130508>,  <29.812395, 27.963690, 34.951984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.655470, 27.996910, 35.130508>,  <29.393927, 28.052277, 35.428047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655470, 27.996910, 35.130508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458736, -0.854341, -0.244262,
		-0.601691, 0.500942, -0.622114,
		0.653858, -0.138416, -0.743849,
		29.851627, 27.955385, 34.907352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041693, 27.711094, 34.944633>,  <29.393927, 28.052277, 35.428047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041693, 27.711094, 34.944633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.421314, 27.639389, 34.840973>,  <29.649088, 27.596367, 34.778774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.421314, 27.639389, 34.840973>,  <29.041693, 27.711094, 34.944633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421314, 27.639389, 34.840973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276616, -0.867850, -0.412698,
		-0.150927, 0.463359, -0.873223,
		0.949054, -0.179261, -0.259154,
		29.706030, 27.585611, 34.763226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969526, 27.336332, 34.137920>,  <29.041693, 27.711094, 34.944633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969526, 27.336332, 34.137920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.310976, 27.231060, 34.317726>,  <29.515846, 27.167896, 34.425610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.310976, 27.231060, 34.317726>,  <28.969526, 27.336332, 34.137920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310976, 27.231060, 34.317726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110703, -0.934921, -0.337146,
		0.508992, 0.238032, -0.827205,
		0.853623, -0.263179, 0.449517,
		29.567062, 27.152107, 34.452579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.759129, 36.388519, 47.788460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.387535, 36.455608, 47.920433>,  <40.164577, 36.495861, 47.999619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.387535, 36.455608, 47.920433>,  <40.759129, 36.388519, 47.788460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387535, 36.455608, 47.920433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365839, 0.551326, 0.749801,
		-0.056142, 0.817257, -0.573533,
		-0.928983, 0.167726, 0.329937,
		40.108841, 36.505924, 48.019413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700085, 37.111217, 47.815983>,  <40.759129, 36.388519, 47.788460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700085, 37.111217, 47.815983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.434429, 36.953762, 48.070217>,  <40.275036, 36.859287, 48.222755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.434429, 36.953762, 48.070217>,  <40.700085, 37.111217, 47.815983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434429, 36.953762, 48.070217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302657, 0.635808, 0.710033,
		-0.683605, 0.663925, -0.303129,
		-0.664141, -0.393638, 0.635584,
		40.235188, 36.835670, 48.260891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469910, 37.707542, 48.185364>,  <40.700085, 37.111217, 47.815983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469910, 37.707542, 48.185364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.349068, 37.398823, 48.409172>,  <40.276562, 37.213593, 48.543457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.349068, 37.398823, 48.409172>,  <40.469910, 37.707542, 48.185364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349068, 37.398823, 48.409172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206226, 0.520131, 0.828816,
		-0.930701, 0.365774, 0.002032,
		-0.302102, -0.771799, 0.559518,
		40.258438, 37.167282, 48.577026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232918, 37.991039, 48.732635>,  <40.469910, 37.707542, 48.185364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232918, 37.991039, 48.732635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.270916, 37.611820, 48.854084>,  <40.293716, 37.384289, 48.926952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.270916, 37.611820, 48.854084>,  <40.232918, 37.991039, 48.732635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270916, 37.611820, 48.854084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196147, 0.316849, 0.927972,
		-0.975962, -0.028597, 0.216055,
		0.094994, -0.948045, 0.303623,
		40.299416, 37.327408, 48.945171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081810, 37.994686, 49.392025>,  <40.232918, 37.991039, 48.732635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081810, 37.994686, 49.392025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.284805, 37.654625, 49.335884>,  <40.406601, 37.450588, 49.302200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.284805, 37.654625, 49.335884>,  <40.081810, 37.994686, 49.392025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284805, 37.654625, 49.335884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386692, 0.079146, 0.918806,
		-0.770019, -0.520552, 0.368913,
		0.507484, -0.850154, -0.140350,
		40.437050, 37.399578, 49.293777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027397, 37.646561, 50.022987>,  <40.081810, 37.994686, 49.392025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027397, 37.646561, 50.022987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.351254, 37.493465, 49.845001>,  <40.545567, 37.401608, 49.738209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.351254, 37.493465, 49.845001>,  <40.027397, 37.646561, 50.022987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351254, 37.493465, 49.845001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485108, 0.009623, 0.874401,
		-0.330383, -0.923808, 0.193460,
		0.809640, -0.382736, -0.444967,
		40.594147, 37.378643, 49.711510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246639, 37.114929, 50.562012>,  <40.027397, 37.646561, 50.022987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246639, 37.114929, 50.562012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.565334, 37.149197, 50.322720>,  <40.756550, 37.169758, 50.179146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.565334, 37.149197, 50.322720>,  <40.246639, 37.114929, 50.562012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565334, 37.149197, 50.322720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600744, -0.004603, 0.799428,
		0.065734, -0.996313, -0.055134,
		0.796734, 0.085671, -0.598227,
		40.804356, 37.174896, 50.143253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689320, 36.628841, 50.769409>,  <40.246639, 37.114929, 50.562012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689320, 36.628841, 50.769409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.905701, 36.900215, 50.570572>,  <41.035530, 37.063038, 50.451271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.905701, 36.900215, 50.570572>,  <40.689320, 36.628841, 50.769409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905701, 36.900215, 50.570572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610337, 0.089990, 0.787014,
		0.578670, -0.729130, -0.365393,
		0.540954, 0.678433, -0.497089,
		41.067986, 37.103745, 50.421444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414505, 36.418198, 50.832100>,  <40.689320, 36.628841, 50.769409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414505, 36.418198, 50.832100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.407116, 36.811440, 50.759254>,  <41.402683, 37.047386, 50.715549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.407116, 36.811440, 50.759254>,  <41.414505, 36.418198, 50.832100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407116, 36.811440, 50.759254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543259, 0.162780, 0.823634,
		0.839362, -0.083716, -0.537088,
		-0.018475, 0.983105, -0.182111,
		41.401573, 37.106369, 50.704620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087418, 36.601517, 50.945511>,  <41.414505, 36.418198, 50.832100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087418, 36.601517, 50.945511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.859367, 36.929363, 50.968071>,  <41.722538, 37.126072, 50.981609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.859367, 36.929363, 50.968071>,  <42.087418, 36.601517, 50.945511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859367, 36.929363, 50.968071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501137, 0.292540, 0.814421,
		0.651016, 0.492587, -0.577526,
		-0.570123, 0.819621, 0.056405,
		41.688332, 37.175251, 50.984993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591328, 37.097248, 51.308056>,  <42.087418, 36.601517, 50.945511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591328, 37.097248, 51.308056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.229164, 37.266964, 51.313889>,  <42.011868, 37.368793, 51.317387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.229164, 37.266964, 51.313889>,  <42.591328, 37.097248, 51.308056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229164, 37.266964, 51.313889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146610, 0.280253, 0.948664,
		0.398425, 0.861065, -0.315949,
		-0.905408, 0.424293, 0.014580,
		41.957542, 37.394253, 51.318264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704407, 37.775208, 51.500275>,  <42.591328, 37.097248, 51.308056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704407, 37.775208, 51.500275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.324318, 37.696804, 51.597160>,  <42.096264, 37.649761, 51.655293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.324318, 37.696804, 51.597160>,  <42.704407, 37.775208, 51.500275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324318, 37.696804, 51.597160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161648, 0.354444, 0.920999,
		-0.266377, 0.914302, -0.305114,
		-0.950217, -0.196012, 0.242211,
		42.039253, 37.638000, 51.669823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324802, 38.430965, 51.717037>,  <42.704407, 37.775208, 51.500275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324802, 38.430965, 51.717037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.258640, 38.068829, 51.873493>,  <42.218941, 37.851547, 51.967365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.258640, 38.068829, 51.873493>,  <42.324802, 38.430965, 51.717037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258640, 38.068829, 51.873493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402725, 0.300020, 0.864754,
		-0.900251, 0.300560, 0.314980,
		-0.165410, -0.905346, 0.391137,
		42.209019, 37.797226, 51.990833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187908, 38.497250, 52.389820>,  <42.324802, 38.430965, 51.717037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187908, 38.497250, 52.389820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.257988, 38.105541, 52.430481>,  <42.300037, 37.870518, 52.454880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.257988, 38.105541, 52.430481>,  <42.187908, 38.497250, 52.389820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257988, 38.105541, 52.430481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393746, 0.164329, 0.904412,
		-0.902369, -0.118425, 0.414374,
		0.175198, -0.979271, 0.101656,
		42.310547, 37.811760, 52.460979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230686, 39.162022, 52.690063>,  <42.187908, 38.497250, 52.389820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230686, 39.162022, 52.690063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.282055, 39.558556, 52.701153>,  <42.312878, 39.796474, 52.707806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.282055, 39.558556, 52.701153>,  <42.230686, 39.162022, 52.690063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282055, 39.558556, 52.701153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430427, 0.080899, -0.898992,
		-0.893442, 0.103521, 0.437086,
		0.128425, 0.991332, 0.027721,
		42.320583, 39.855957, 52.709469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629406, 39.451477, 52.312145>,  <42.230686, 39.162022, 52.690063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629406, 39.451477, 52.312145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.900681, 39.745411, 52.308361>,  <42.063446, 39.921772, 52.306091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.900681, 39.745411, 52.308361>,  <41.629406, 39.451477, 52.312145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900681, 39.745411, 52.308361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146389, 0.122466, -0.981617,
		-0.720166, 0.667101, 0.190625,
		0.678183, 0.734832, -0.009460,
		42.104134, 39.965862, 52.305523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269642, 40.042404, 51.939930>,  <41.629406, 39.451477, 52.312145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269642, 40.042404, 51.939930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.667202, 40.081741, 51.919952>,  <41.905739, 40.105343, 51.907967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.667202, 40.081741, 51.919952>,  <41.269642, 40.042404, 51.939930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667202, 40.081741, 51.919952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066581, 0.173892, -0.982511,
		-0.087933, 0.979842, 0.179379,
		0.993899, 0.098338, -0.049948,
		41.965370, 40.111244, 51.904968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374462, 40.712532, 51.630211>,  <41.269642, 40.042404, 51.939930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374462, 40.712532, 51.630211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.687515, 40.467350, 51.586823>,  <41.875347, 40.320240, 51.560791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.687515, 40.467350, 51.586823>,  <41.374462, 40.712532, 51.630211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687515, 40.467350, 51.586823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065829, 0.254773, -0.964758,
		0.618990, 0.747913, 0.239744,
		0.782635, -0.612958, -0.108468,
		41.922306, 40.283463, 51.554283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919537, 41.165390, 51.304665>,  <41.374462, 40.712532, 51.630211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919537, 41.165390, 51.304665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.040665, 40.792454, 51.225628>,  <42.113342, 40.568691, 51.178207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.040665, 40.792454, 51.225628>,  <41.919537, 41.165390, 51.304665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040665, 40.792454, 51.225628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157337, 0.253385, -0.954485,
		0.939971, 0.257948, 0.223422,
		0.302819, -0.932340, -0.197590,
		42.131512, 40.512753, 51.166351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370495, 41.190384, 50.800381>,  <41.919537, 41.165390, 51.304665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370495, 41.190384, 50.800381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.270424, 40.805470, 50.757637>,  <42.210381, 40.574520, 50.731991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.270424, 40.805470, 50.757637>,  <42.370495, 41.190384, 50.800381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270424, 40.805470, 50.757637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011802, 0.107330, -0.994154,
		0.968129, -0.249972, -0.015494,
		-0.250173, -0.962286, -0.106859,
		42.195374, 40.516785, 50.725578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818115, 40.967434, 50.238018>,  <42.370495, 41.190384, 50.800381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818115, 40.967434, 50.238018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.552109, 40.669521, 50.260155>,  <42.392506, 40.490776, 50.273438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.552109, 40.669521, 50.260155>,  <42.818115, 40.967434, 50.238018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552109, 40.669521, 50.260155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145966, 0.056950, -0.987649,
		0.732428, -0.664877, -0.146585,
		-0.665013, -0.744778, 0.055337,
		42.352604, 40.446087, 50.276756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034161, 40.470333, 49.804119>,  <42.818115, 40.967434, 50.238018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034161, 40.470333, 49.804119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.644978, 40.392937, 49.854565>,  <42.411469, 40.346497, 49.884830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.644978, 40.392937, 49.854565>,  <43.034161, 40.470333, 49.804119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644978, 40.392937, 49.854565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068304, -0.280545, -0.957408,
		0.220635, -0.940135, 0.259743,
		-0.972962, -0.193496, 0.126113,
		42.353088, 40.334888, 49.892399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997334, 39.829189, 49.574955>,  <43.034161, 40.470333, 49.804119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997334, 39.829189, 49.574955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.625946, 39.977688, 49.579288>,  <42.403114, 40.066788, 49.581890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.625946, 39.977688, 49.579288>,  <42.997334, 39.829189, 49.574955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625946, 39.977688, 49.579288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178217, -0.419737, -0.889977,
		-0.325852, -0.828250, 0.455876,
		-0.928471, 0.371246, 0.010836,
		42.347404, 40.089062, 49.582539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478561, 39.217407, 49.568554>,  <42.997334, 39.829189, 49.574955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478561, 39.217407, 49.568554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.314579, 39.553047, 49.425529>,  <42.216190, 39.754433, 49.339714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.314579, 39.553047, 49.425529>,  <42.478561, 39.217407, 49.568554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314579, 39.553047, 49.425529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184159, -0.460088, -0.868565,
		-0.893323, -0.290222, 0.343142,
		-0.409952, 0.839101, -0.357560,
		42.191593, 39.804779, 49.318260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920700, 39.013191, 49.146816>,  <42.478561, 39.217407, 49.568554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920700, 39.013191, 49.146816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.944839, 39.381687, 48.993107>,  <41.959324, 39.602787, 48.900883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.944839, 39.381687, 48.993107>,  <41.920700, 39.013191, 49.146816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944839, 39.381687, 48.993107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132175, -0.374211, -0.917876,
		-0.989388, 0.106184, 0.099183,
		0.060348, 0.921245, -0.384274,
		41.962944, 39.658062, 48.877823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546349, 38.896782, 48.608192>,  <41.920700, 39.013191, 49.146816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546349, 38.896782, 48.608192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.707897, 39.251362, 48.517780>,  <41.804825, 39.464111, 48.463531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.707897, 39.251362, 48.517780>,  <41.546349, 38.896782, 48.608192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707897, 39.251362, 48.517780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218033, -0.146684, -0.964855,
		-0.888455, 0.438957, 0.134035,
		0.403869, 0.886454, -0.226029,
		41.829060, 39.517300, 48.449970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026215, 39.209480, 48.265747>,  <41.546349, 38.896782, 48.608192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026215, 39.209480, 48.265747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.371471, 39.385700, 48.167030>,  <41.578625, 39.491432, 48.107800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.371471, 39.385700, 48.167030>,  <41.026215, 39.209480, 48.265747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371471, 39.385700, 48.167030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189644, -0.170137, -0.967000,
		-0.468004, 0.881456, -0.063303,
		0.863138, 0.440554, -0.246788,
		41.630413, 39.517868, 48.092995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792957, 39.851368, 47.812416>,  <41.026215, 39.209480, 48.265747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792957, 39.851368, 47.812416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.165264, 39.725006, 47.738804>,  <41.388649, 39.649189, 47.694637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.165264, 39.725006, 47.738804>,  <40.792957, 39.851368, 47.812416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165264, 39.725006, 47.738804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233023, -0.124721, -0.964440,
		0.281723, 0.940556, -0.189700,
		0.930770, -0.315909, -0.184035,
		41.444496, 39.630234, 47.683594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248493, 40.394821, 47.714989>,  <40.792957, 39.851368, 47.812416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248493, 40.394821, 47.714989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.858566, 40.458218, 47.652225>,  <39.624611, 40.496258, 47.614567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.858566, 40.458218, 47.652225>,  <40.248493, 40.394821, 47.714989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858566, 40.458218, 47.652225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133836, 0.147045, 0.980033,
		0.178401, 0.976349, -0.122130,
		-0.974813, 0.158494, -0.156904,
		39.566124, 40.505764, 47.605156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070358, 40.940903, 48.251923>,  <40.248493, 40.394821, 47.714989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070358, 40.940903, 48.251923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.736588, 40.754593, 48.134087>,  <39.536324, 40.642807, 48.063385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.736588, 40.754593, 48.134087>,  <40.070358, 40.940903, 48.251923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736588, 40.754593, 48.134087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405527, 0.156958, 0.900507,
		-0.373191, 0.870874, -0.319853,
		-0.834432, -0.465771, -0.294588,
		39.486259, 40.614861, 48.045712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593872, 41.438210, 48.388912>,  <40.070358, 40.940903, 48.251923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593872, 41.438210, 48.388912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.376656, 41.104137, 48.354088>,  <39.246326, 40.903694, 48.333191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.376656, 41.104137, 48.354088>,  <39.593872, 41.438210, 48.388912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376656, 41.104137, 48.354088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378270, 0.150742, 0.913339,
		-0.749681, 0.528911, -0.397783,
		-0.543038, -0.835183, -0.087063,
		39.213745, 40.853584, 48.327969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184631, 41.567360, 48.848259>,  <39.593872, 41.438210, 48.388912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184631, 41.567360, 48.848259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.085640, 41.184914, 48.785534>,  <39.026245, 40.955444, 48.747898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.085640, 41.184914, 48.785534>,  <39.184631, 41.567360, 48.848259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085640, 41.184914, 48.785534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421663, -0.039436, 0.905894,
		-0.872326, 0.290317, -0.393400,
		-0.247483, -0.956117, -0.156817,
		39.011395, 40.898079, 48.738487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480553, 41.443180, 48.878822>,  <39.184631, 41.567360, 48.848259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480553, 41.443180, 48.878822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.646114, 41.095669, 48.987560>,  <38.745453, 40.887161, 49.052803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.646114, 41.095669, 48.987560>,  <38.480553, 41.443180, 48.878822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646114, 41.095669, 48.987560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368044, 0.113428, 0.922864,
		-0.832601, -0.482032, -0.272801,
		0.413906, -0.868781, 0.271850,
		38.770287, 40.835033, 49.069115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941029, 41.156620, 49.318085>,  <38.480553, 41.443180, 48.878822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941029, 41.156620, 49.318085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.290756, 40.965706, 49.353333>,  <38.500591, 40.851158, 49.374481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.290756, 40.965706, 49.353333>,  <37.941029, 41.156620, 49.318085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290756, 40.965706, 49.353333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066242, 0.062516, 0.995843,
		-0.480808, -0.876523, 0.023043,
		0.874320, -0.477283, 0.088121,
		38.553051, 40.822521, 49.379768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814751, 40.598511, 49.837215>,  <37.941029, 41.156620, 49.318085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814751, 40.598511, 49.837215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.212460, 40.641163, 49.834507>,  <38.451084, 40.666756, 49.832882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.212460, 40.641163, 49.834507>,  <37.814751, 40.598511, 49.837215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212460, 40.641163, 49.834507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024838, -0.169048, 0.985295,
		0.103922, -0.979823, -0.170729,
		0.994275, 0.106635, -0.006769,
		38.510742, 40.673153, 49.832478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692566, 39.950993, 50.307991>,  <37.814751, 40.598511, 49.837215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692566, 39.950993, 50.307991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.303017, 39.940884, 50.398258>,  <37.069286, 39.934818, 50.452419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.303017, 39.940884, 50.398258>,  <37.692566, 39.950993, 50.307991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303017, 39.940884, 50.398258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219952, -0.142111, -0.965104,
		0.056460, -0.989528, 0.132840,
		-0.973876, -0.025271, 0.225672,
		37.010853, 39.933304, 50.465961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405254, 39.407658, 49.868618>,  <37.692566, 39.950993, 50.307991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405254, 39.407658, 49.868618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.090080, 39.634777, 49.963924>,  <36.900978, 39.771049, 50.021107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.090080, 39.634777, 49.963924>,  <37.405254, 39.407658, 49.868618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090080, 39.634777, 49.963924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385884, -0.153782, -0.909640,
		-0.479854, -0.808674, 0.340274,
		-0.787930, 0.567800, 0.238261,
		36.853703, 39.805119, 50.035404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906601, 39.062397, 49.608463>,  <37.405254, 39.407658, 49.868618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906601, 39.062397, 49.608463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.725216, 39.410858, 49.683784>,  <36.616386, 39.619934, 49.728977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.725216, 39.410858, 49.683784>,  <36.906601, 39.062397, 49.608463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725216, 39.410858, 49.683784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309635, 0.044140, -0.949831,
		-0.835763, -0.489018, 0.249724,
		-0.453461, 0.871156, 0.188308,
		36.589176, 39.672207, 49.740276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233440, 38.987492, 49.282433>,  <36.906601, 39.062397, 49.608463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233440, 38.987492, 49.282433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305038, 39.380482, 49.303204>,  <36.347996, 39.616276, 49.315666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305038, 39.380482, 49.303204>,  <36.233440, 38.987492, 49.282433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305038, 39.380482, 49.303204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194202, 0.087026, -0.977094,
		-0.964493, 0.164809, 0.206376,
		0.178994, 0.982479, 0.051930,
		36.358738, 39.675224, 49.318783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896637, 39.320305, 48.800610>,  <36.233440, 38.987492, 49.282433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896637, 39.320305, 48.800610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.137768, 39.625122, 48.895176>,  <36.282448, 39.808014, 48.951916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.137768, 39.625122, 48.895176>,  <35.896637, 39.320305, 48.800610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137768, 39.625122, 48.895176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122448, 0.381156, -0.916366,
		-0.788419, 0.523462, 0.323082,
		0.602828, 0.762041, 0.236414,
		36.318615, 39.853733, 48.966099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558964, 39.892426, 48.507214>,  <35.896637, 39.320305, 48.800610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558964, 39.892426, 48.507214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942905, 40.001755, 48.532417>,  <36.173271, 40.067352, 48.547539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942905, 40.001755, 48.532417>,  <35.558964, 39.892426, 48.507214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942905, 40.001755, 48.532417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040039, 0.355858, -0.933682,
		-0.277616, 0.893679, 0.352517,
		0.959857, 0.273319, 0.063010,
		36.230862, 40.083752, 48.551319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580643, 40.599609, 48.196415>,  <35.558964, 39.892426, 48.507214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580643, 40.599609, 48.196415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.945297, 40.435318, 48.190609>,  <36.164089, 40.336742, 48.187126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.945297, 40.435318, 48.190609>,  <35.580643, 40.599609, 48.196415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945297, 40.435318, 48.190609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116966, 0.293138, -0.948889,
		0.393994, 0.863348, 0.315278,
		0.911640, -0.410733, -0.014512,
		36.218788, 40.312099, 48.186256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.446232, 36.996559, 52.649673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.786335, 37.059120, 52.448635>,  <38.990395, 37.096657, 52.328011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.786335, 37.059120, 52.448635>,  <38.446232, 36.996559, 52.649673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786335, 37.059120, 52.448635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242909, -0.730491, -0.638261,
		-0.466969, 0.664771, -0.583112,
		0.850256, 0.156405, -0.502596,
		39.041412, 37.106041, 52.297855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230824, 37.019192, 52.007793>,  <38.446232, 36.996559, 52.649673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230824, 37.019192, 52.007793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.617519, 36.918056, 51.992359>,  <38.849537, 36.857376, 51.983101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.617519, 36.918056, 51.992359>,  <38.230824, 37.019192, 52.007793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617519, 36.918056, 51.992359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177605, -0.555089, -0.812608,
		0.184041, 0.792433, -0.581532,
		0.966739, -0.252836, -0.038581,
		38.907539, 36.842205, 51.980785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445644, 37.194088, 51.273495>,  <38.230824, 37.019192, 52.007793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445644, 37.194088, 51.273495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.711517, 36.932594, 51.418179>,  <38.871040, 36.775700, 51.504990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.711517, 36.932594, 51.418179>,  <38.445644, 37.194088, 51.273495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711517, 36.932594, 51.418179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052970, -0.524147, -0.849979,
		0.745244, 0.545808, -0.383020,
		0.664685, -0.653730, 0.361706,
		38.910923, 36.736477, 51.526691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991909, 37.079529, 50.700542>,  <38.445644, 37.194088, 51.273495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991909, 37.079529, 50.700542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.007591, 36.766949, 50.949638>,  <39.017002, 36.579403, 51.099094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.007591, 36.766949, 50.949638>,  <38.991909, 37.079529, 50.700542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007591, 36.766949, 50.949638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050225, -0.623970, -0.779833,
		0.997968, -0.000701, -0.063713,
		0.039208, -0.781448, 0.622737,
		39.019352, 36.532513, 51.136459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486755, 36.610500, 50.437508>,  <38.991909, 37.079529, 50.700542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486755, 36.610500, 50.437508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.276531, 36.369465, 50.677731>,  <39.150398, 36.224842, 50.821865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.276531, 36.369465, 50.677731>,  <39.486755, 36.610500, 50.437508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276531, 36.369465, 50.677731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079678, -0.667942, -0.739936,
		0.847016, -0.436732, 0.303031,
		-0.525561, -0.602593, 0.600556,
		39.118862, 36.188686, 50.857899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756664, 36.015381, 50.295727>,  <39.486755, 36.610500, 50.437508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756664, 36.015381, 50.295727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.392361, 35.966213, 50.453415>,  <39.173779, 35.936710, 50.548027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.392361, 35.966213, 50.453415>,  <39.756664, 36.015381, 50.295727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392361, 35.966213, 50.453415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227148, -0.648127, -0.726867,
		0.344854, -0.751546, 0.562365,
		-0.910758, -0.122923, 0.394221,
		39.119133, 35.929337, 50.571682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543915, 35.277142, 50.346237>,  <39.756664, 36.015381, 50.295727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543915, 35.277142, 50.346237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.185551, 35.453636, 50.366879>,  <38.970531, 35.559532, 50.379261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.185551, 35.453636, 50.366879>,  <39.543915, 35.277142, 50.346237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185551, 35.453636, 50.366879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374435, -0.687516, -0.622190,
		-0.239055, -0.576745, 0.781164,
		-0.895908, 0.441233, 0.051600,
		38.916779, 35.586006, 50.382359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142235, 34.838852, 50.148647>,  <39.543915, 35.277142, 50.346237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142235, 34.838852, 50.148647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.875130, 35.128590, 50.080044>,  <38.714867, 35.302433, 50.038883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.875130, 35.128590, 50.080044>,  <39.142235, 34.838852, 50.148647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875130, 35.128590, 50.080044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343010, -0.503914, -0.792726,
		-0.660631, -0.470527, 0.584954,
		-0.667766, 0.724344, -0.171506,
		38.674801, 35.345894, 50.028591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458115, 34.556599, 50.209061>,  <39.142235, 34.838852, 50.148647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458115, 34.556599, 50.209061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.381680, 34.884388, 49.992935>,  <38.335819, 35.081062, 49.863258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.381680, 34.884388, 49.992935>,  <38.458115, 34.556599, 50.209061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381680, 34.884388, 49.992935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507994, -0.553571, -0.659925,
		-0.839897, 0.148374, 0.522070,
		-0.191087, 0.819478, -0.540316,
		38.324352, 35.130230, 49.830841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769951, 34.514194, 50.063316>,  <38.458115, 34.556599, 50.209061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769951, 34.514194, 50.063316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.893116, 34.781891, 49.792816>,  <37.967014, 34.942509, 49.630516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.893116, 34.781891, 49.792816>,  <37.769951, 34.514194, 50.063316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893116, 34.781891, 49.792816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618162, -0.399586, -0.676909,
		-0.723233, 0.626459, 0.290660,
		0.307912, 0.669238, -0.676247,
		37.985489, 34.982662, 49.589943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146828, 34.886524, 49.753494>,  <37.769951, 34.514194, 50.063316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146828, 34.886524, 49.753494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.434708, 34.915245, 49.477268>,  <37.607433, 34.932476, 49.311531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.434708, 34.915245, 49.477268>,  <37.146828, 34.886524, 49.753494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434708, 34.915245, 49.477268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638970, -0.320561, -0.699255,
		-0.271574, 0.944503, -0.184831,
		0.719698, 0.071798, -0.690565,
		37.650616, 34.936783, 49.270100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762672, 34.992165, 49.082134>,  <37.146828, 34.886524, 49.753494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762672, 34.992165, 49.082134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.113930, 34.877331, 48.929058>,  <37.324684, 34.808430, 48.837212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.113930, 34.877331, 48.929058>,  <36.762672, 34.992165, 49.082134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113930, 34.877331, 48.929058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477654, -0.481349, -0.734949,
		0.026788, 0.828181, -0.559820,
		0.878140, -0.287088, -0.382689,
		37.377373, 34.791203, 48.814251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886917, 35.752216, 49.133659>,  <36.762672, 34.992165, 49.082134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886917, 35.752216, 49.133659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.568394, 35.976604, 49.224182>,  <36.377281, 36.111237, 49.278496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.568394, 35.976604, 49.224182>,  <36.886917, 35.752216, 49.133659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568394, 35.976604, 49.224182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269991, -0.005173, 0.962849,
		0.541298, 0.827821, -0.147337,
		-0.796305, 0.560968, 0.226305,
		36.329502, 36.144894, 49.292072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138714, 36.259644, 49.556759>,  <36.886917, 35.752216, 49.133659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138714, 36.259644, 49.556759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.745075, 36.275497, 49.626026>,  <36.508892, 36.285011, 49.667587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.745075, 36.275497, 49.626026>,  <37.138714, 36.259644, 49.556759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745075, 36.275497, 49.626026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176923, 0.306723, 0.935211,
		-0.016050, 0.950973, -0.308856,
		-0.984094, 0.039634, 0.173172,
		36.449848, 36.287388, 49.677979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132401, 36.873817, 49.832802>,  <37.138714, 36.259644, 49.556759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132401, 36.873817, 49.832802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.803726, 36.670776, 49.936466>,  <36.606522, 36.548950, 49.998665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.803726, 36.670776, 49.936466>,  <37.132401, 36.873817, 49.832802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803726, 36.670776, 49.936466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071428, 0.359412, 0.930441,
		-0.565441, 0.783046, -0.259069,
		-0.821690, -0.507604, 0.259158,
		36.557220, 36.518494, 50.014214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572117, 37.378944, 49.994480>,  <37.132401, 36.873817, 49.832802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572117, 37.378944, 49.994480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.478184, 37.045322, 50.194164>,  <36.421825, 36.845150, 50.313976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.478184, 37.045322, 50.194164>,  <36.572117, 37.378944, 49.994480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478184, 37.045322, 50.194164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048532, 0.502873, 0.862997,
		-0.970824, 0.226886, -0.077612,
		-0.234831, -0.834051, 0.499212,
		36.407734, 36.795109, 50.343929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369888, 37.659496, 50.572449>,  <36.572117, 37.378944, 49.994480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369888, 37.659496, 50.572449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.378120, 37.271023, 50.667435>,  <36.383060, 37.037941, 50.724426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.378120, 37.271023, 50.667435>,  <36.369888, 37.659496, 50.572449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378120, 37.271023, 50.667435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075969, 0.235306, 0.968948,
		-0.996898, -0.037978, -0.068938,
		0.020577, -0.971179, 0.237461,
		36.384293, 36.979668, 50.738674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787914, 37.494255, 51.067566>,  <36.369888, 37.659496, 50.572449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787914, 37.494255, 51.067566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.063164, 37.208374, 51.117653>,  <36.228313, 37.036846, 51.147705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.063164, 37.208374, 51.117653>,  <35.787914, 37.494255, 51.067566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063164, 37.208374, 51.117653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001144, 0.173637, 0.984809,
		-0.725588, -0.677532, 0.120302,
		0.688128, -0.714704, 0.125214,
		36.269604, 36.993961, 51.155216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699211, 37.233444, 51.798805>,  <35.787914, 37.494255, 51.067566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699211, 37.233444, 51.798805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.076931, 37.139915, 51.706181>,  <36.303562, 37.083797, 51.650608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.076931, 37.139915, 51.706181>,  <35.699211, 37.233444, 51.798805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076931, 37.139915, 51.706181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266103, 0.128597, 0.955328,
		-0.193596, -0.963738, 0.183655,
		0.944304, -0.233818, -0.231558,
		36.360222, 37.069771, 51.636715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952225, 36.843914, 52.393139>,  <35.699211, 37.233444, 51.798805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952225, 36.843914, 52.393139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.292774, 36.939011, 52.206104>,  <36.497105, 36.996071, 52.093884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.292774, 36.939011, 52.206104>,  <35.952225, 36.843914, 52.393139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292774, 36.939011, 52.206104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377582, 0.341025, 0.860891,
		0.364141, -0.909491, 0.200567,
		0.851371, 0.237755, -0.467589,
		36.548187, 37.010334, 52.065826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417786, 36.710094, 52.865417>,  <35.952225, 36.843914, 52.393139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417786, 36.710094, 52.865417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.627106, 36.948082, 52.621395>,  <36.752697, 37.090874, 52.474979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.627106, 36.948082, 52.621395>,  <36.417786, 36.710094, 52.865417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627106, 36.948082, 52.621395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495063, 0.370436, 0.785933,
		0.693590, -0.713297, -0.100695,
		0.523303, 0.594966, -0.610058,
		36.784096, 37.126572, 52.438377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057354, 36.713348, 53.197128>,  <36.417786, 36.710094, 52.865417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057354, 36.713348, 53.197128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.009590, 37.031555, 52.959507>,  <36.980930, 37.222477, 52.816933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.009590, 37.031555, 52.959507>,  <37.057354, 36.713348, 53.197128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009590, 37.031555, 52.959507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325404, 0.596644, 0.733572,
		0.938005, -0.105713, -0.330107,
		-0.119409, 0.795513, -0.594054,
		36.973766, 37.270210, 52.781292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637753, 37.081665, 53.374817>,  <37.057354, 36.713348, 53.197128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637753, 37.081665, 53.374817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.368938, 37.334557, 53.220596>,  <37.207649, 37.486294, 53.128063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.368938, 37.334557, 53.220596>,  <37.637753, 37.081665, 53.374817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368938, 37.334557, 53.220596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182571, 0.646037, 0.741150,
		0.717659, 0.427690, -0.549587,
		-0.672037, 0.632232, -0.385551,
		37.167328, 37.524227, 53.104931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917492, 37.738125, 53.541893>,  <37.637753, 37.081665, 53.374817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917492, 37.738125, 53.541893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.540413, 37.833729, 53.448772>,  <37.314167, 37.891090, 53.392902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.540413, 37.833729, 53.448772>,  <37.917492, 37.738125, 53.541893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540413, 37.833729, 53.448772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060989, 0.562540, 0.824517,
		0.328026, 0.791469, -0.515729,
		-0.942698, 0.239009, -0.232798,
		37.257603, 37.905430, 53.378933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848179, 38.417416, 53.605236>,  <37.917492, 37.738125, 53.541893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848179, 38.417416, 53.605236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.470264, 38.293777, 53.648750>,  <37.243515, 38.219593, 53.674858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.470264, 38.293777, 53.648750>,  <37.848179, 38.417416, 53.605236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470264, 38.293777, 53.648750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135313, 0.670381, 0.729575,
		-0.298437, 0.674574, -0.675193,
		-0.944789, -0.309094, 0.108788,
		37.186829, 38.201050, 53.681385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165684, 38.923981, 53.417797>,  <37.848179, 38.417416, 53.605236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165684, 38.923981, 53.417797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.018349, 38.658348, 53.678051>,  <36.929947, 38.498970, 53.834206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.018349, 38.658348, 53.678051>,  <37.165684, 38.923981, 53.417797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018349, 38.658348, 53.678051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211404, 0.741335, 0.636970,
		-0.905337, 0.097074, -0.413451,
		-0.368339, -0.664077, 0.650636,
		36.907848, 38.459126, 53.873241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039085, 39.725376, 53.627731>,  <37.165684, 38.923981, 53.417797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039085, 39.725376, 53.627731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.972458, 40.081554, 53.458328>,  <36.932480, 40.295261, 53.356686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.972458, 40.081554, 53.458328>,  <37.039085, 39.725376, 53.627731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972458, 40.081554, 53.458328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351553, -0.454909, -0.818210,
		-0.921231, 0.012597, 0.388813,
		-0.166567, 0.890449, -0.423505,
		36.922489, 40.348690, 53.331276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430683, 39.588211, 53.212753>,  <37.039085, 39.725376, 53.627731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430683, 39.588211, 53.212753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.637016, 39.892017, 53.054237>,  <36.760818, 40.074303, 52.959129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.637016, 39.892017, 53.054237>,  <36.430683, 39.588211, 53.212753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637016, 39.892017, 53.054237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137998, -0.382872, -0.913436,
		-0.845499, 0.525871, -0.092687,
		0.515836, 0.759519, -0.396287,
		36.791767, 40.119873, 52.935352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963551, 39.891060, 52.674786>,  <36.430683, 39.588211, 53.212753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963551, 39.891060, 52.674786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.352352, 39.959469, 52.610344>,  <36.585632, 40.000515, 52.571678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.352352, 39.959469, 52.610344>,  <35.963551, 39.891060, 52.674786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352352, 39.959469, 52.610344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138744, -0.135555, -0.981007,
		-0.189608, 0.975898, -0.108033,
		0.972008, 0.171018, -0.161102,
		36.643955, 40.010773, 52.562012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959896, 40.334892, 52.169243>,  <35.963551, 39.891060, 52.674786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959896, 40.334892, 52.169243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.340591, 40.215321, 52.141438>,  <36.569008, 40.143578, 52.124752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.340591, 40.215321, 52.141438>,  <35.959896, 40.334892, 52.169243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340591, 40.215321, 52.141438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079961, -0.022842, -0.996536,
		0.296302, 0.954003, -0.045642,
		0.951741, -0.298925, -0.069515,
		36.626114, 40.125645, 52.120583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315510, 40.736252, 51.624161>,  <35.959896, 40.334892, 52.169243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315510, 40.736252, 51.624161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.523224, 40.396046, 51.657536>,  <36.647850, 40.191921, 51.677559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.523224, 40.396046, 51.657536>,  <36.315510, 40.736252, 51.624161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523224, 40.396046, 51.657536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041759, -0.122768, -0.991557,
		0.853581, 0.511415, -0.099268,
		0.519283, -0.850520, 0.083436,
		36.679008, 40.140888, 51.682568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032032, 40.882233, 51.202900>,  <36.315510, 40.736252, 51.624161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032032, 40.882233, 51.202900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.985497, 40.487568, 51.248447>,  <36.957573, 40.250771, 51.275776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.985497, 40.487568, 51.248447>,  <37.032032, 40.882233, 51.202900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985497, 40.487568, 51.248447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056054, -0.120985, -0.991071,
		0.991626, -0.108919, 0.069382,
		-0.116341, -0.986661, 0.113867,
		36.950596, 40.191570, 51.282608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500114, 40.542698, 50.737129>,  <37.032032, 40.882233, 51.202900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500114, 40.542698, 50.737129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.192844, 40.295910, 50.805557>,  <37.008484, 40.147839, 50.846615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.192844, 40.295910, 50.805557>,  <37.500114, 40.542698, 50.737129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192844, 40.295910, 50.805557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095219, -0.154130, -0.983452,
		0.633124, -0.771749, 0.059652,
		-0.768172, -0.616967, 0.171068,
		36.962395, 40.110821, 50.856876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217827, 40.523846, 50.742775>,  <37.500114, 40.542698, 50.737129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217827, 40.523846, 50.742775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.498203, 40.701031, 50.519180>,  <38.666428, 40.807343, 50.385025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.498203, 40.701031, 50.519180>,  <38.217827, 40.523846, 50.742775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498203, 40.701031, 50.519180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585452, 0.090270, 0.805666,
		0.407340, -0.891984, -0.196060,
		0.700942, 0.442964, -0.558984,
		38.708485, 40.833920, 50.351486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866837, 40.206470, 50.892704>,  <38.217827, 40.523846, 50.742775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866837, 40.206470, 50.892704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.914436, 40.582962, 50.766262>,  <38.942997, 40.808857, 50.690395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.914436, 40.582962, 50.766262>,  <38.866837, 40.206470, 50.892704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914436, 40.582962, 50.766262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522945, 0.211214, 0.825783,
		0.844018, -0.263575, -0.467078,
		0.119002, 0.941232, -0.316103,
		38.950138, 40.865330, 50.671432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559769, 40.271626, 51.040066>,  <38.866837, 40.206470, 50.892704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559769, 40.271626, 51.040066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.427979, 40.647141, 50.999813>,  <39.348904, 40.872448, 50.975662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.427979, 40.647141, 50.999813>,  <39.559769, 40.271626, 51.040066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427979, 40.647141, 50.999813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638325, 0.300013, 0.708895,
		0.695691, 0.169329, -0.698098,
		-0.329476, 0.938786, -0.100630,
		39.329136, 40.928776, 50.969624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164585, 40.710388, 50.925190>,  <39.559769, 40.271626, 51.040066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164585, 40.710388, 50.925190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.882610, 40.951328, 51.074986>,  <39.713425, 41.095894, 51.164864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.882610, 40.951328, 51.074986>,  <40.164585, 40.710388, 50.925190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882610, 40.951328, 51.074986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601500, 0.227916, 0.765671,
		0.375852, 0.765001, -0.522980,
		-0.704935, 0.602352, 0.374486,
		39.671131, 41.132034, 51.187332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513863, 41.251144, 51.129601>,  <40.164585, 40.710388, 50.925190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513863, 41.251144, 51.129601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.159706, 41.272236, 51.314335>,  <39.947212, 41.284889, 51.425175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.159706, 41.272236, 51.314335>,  <40.513863, 41.251144, 51.129601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159706, 41.272236, 51.314335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462802, 0.192874, 0.865225,
		-0.043454, 0.979806, -0.195172,
		-0.885396, 0.052728, 0.461838,
		39.894089, 41.288055, 51.452885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579853, 41.955536, 51.414337>,  <40.513863, 41.251144, 51.129601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579853, 41.955536, 51.414337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.301163, 41.741425, 51.605354>,  <40.133949, 41.612957, 51.719963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.301163, 41.741425, 51.605354>,  <40.579853, 41.955536, 51.414337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301163, 41.741425, 51.605354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434675, 0.214536, 0.874661,
		-0.570635, 0.816978, 0.083197,
		-0.696730, -0.535276, 0.477541,
		40.092144, 41.580841, 51.748615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504177, 42.296337, 52.000301>,  <40.579853, 41.955536, 51.414337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504177, 42.296337, 52.000301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.352119, 41.936874, 52.087852>,  <40.260883, 41.721199, 52.140385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.352119, 41.936874, 52.087852>,  <40.504177, 42.296337, 52.000301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352119, 41.936874, 52.087852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407299, 0.049819, 0.911935,
		-0.830419, 0.435818, 0.347083,
		-0.380146, -0.898655, 0.218879,
		40.238075, 41.667278, 52.153515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213558, 42.471619, 52.610962>,  <40.504177, 42.296337, 52.000301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213558, 42.471619, 52.610962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.201561, 42.071831, 52.615940>,  <40.194363, 41.831959, 52.618927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.201561, 42.071831, 52.615940>,  <40.213558, 42.471619, 52.610962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201561, 42.071831, 52.615940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372274, 0.000383, 0.928123,
		-0.927638, 0.032468, 0.372066,
		-0.029992, -0.999473, 0.012443,
		40.192562, 41.771988, 52.619675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781700, 42.194157, 53.185173>,  <40.213558, 42.471619, 52.610962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781700, 42.194157, 53.185173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.057152, 41.928493, 53.068771>,  <40.222424, 41.769096, 52.998928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.057152, 41.928493, 53.068771>,  <39.781700, 42.194157, 53.185173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057152, 41.928493, 53.068771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313491, -0.089194, 0.945393,
		-0.653850, -0.742249, 0.146787,
		0.688625, -0.664161, -0.291008,
		40.263741, 41.729244, 52.981468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.751892, 37.586227, 38.128784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140446, 37.502148, 38.173008>,  <38.373577, 37.451698, 38.199543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140446, 37.502148, 38.173008>,  <37.751892, 37.586227, 38.128784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140446, 37.502148, 38.173008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032001, 0.345415, 0.937904,
		-0.235338, -0.914606, 0.328805,
		0.971387, -0.210202, 0.110557,
		38.431862, 37.439087, 38.206177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839794, 37.510288, 38.873505>,  <37.751892, 37.586227, 38.128784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839794, 37.510288, 38.873505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215446, 37.583221, 38.757034>,  <38.440838, 37.626980, 38.687153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215446, 37.583221, 38.757034>,  <37.839794, 37.510288, 38.873505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215446, 37.583221, 38.757034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190823, 0.427939, 0.883434,
		0.285684, -0.885225, 0.367098,
		0.939133, 0.182332, -0.291177,
		38.497185, 37.637920, 38.669682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198944, 37.490269, 39.456165>,  <37.839794, 37.510288, 38.873505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198944, 37.490269, 39.456165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451427, 37.700123, 39.227665>,  <38.602917, 37.826035, 39.090565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451427, 37.700123, 39.227665>,  <38.198944, 37.490269, 39.456165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451427, 37.700123, 39.227665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190318, 0.609236, 0.769812,
		0.751898, -0.594634, 0.284710,
		0.631212, 0.524635, -0.571253,
		38.640793, 37.857513, 39.056290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872856, 37.475071, 39.769810>,  <38.198944, 37.490269, 39.456165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872856, 37.475071, 39.769810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844761, 37.798656, 39.536354>,  <38.827904, 37.992809, 39.396278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844761, 37.798656, 39.536354>,  <38.872856, 37.475071, 39.769810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844761, 37.798656, 39.536354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250779, 0.580616, 0.774593,
		0.965493, -0.091959, -0.243654,
		-0.070239, 0.808968, -0.583642,
		38.823689, 38.041348, 39.361263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406528, 37.883453, 39.938004>,  <38.872856, 37.475071, 39.769810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406528, 37.883453, 39.938004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182613, 38.155594, 39.748795>,  <39.048264, 38.318878, 39.635269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182613, 38.155594, 39.748795>,  <39.406528, 37.883453, 39.938004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182613, 38.155594, 39.748795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134132, 0.637721, 0.758499,
		0.817706, 0.361153, -0.448247,
		-0.559791, 0.680353, -0.473026,
		39.014675, 38.359699, 39.606888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776363, 38.435230, 40.017292>,  <39.406528, 37.883453, 39.938004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776363, 38.435230, 40.017292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428005, 38.596676, 39.905117>,  <39.218990, 38.693542, 39.837814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428005, 38.596676, 39.905117>,  <39.776363, 38.435230, 40.017292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428005, 38.596676, 39.905117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157542, 0.769747, 0.618603,
		0.465539, 0.494557, -0.733953,
		-0.870893, 0.403612, -0.280433,
		39.166737, 38.717758, 39.820988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004025, 39.136604, 39.905472>,  <39.776363, 38.435230, 40.017292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004025, 39.136604, 39.905472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609371, 39.113346, 39.966370>,  <39.372581, 39.099392, 40.002907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609371, 39.113346, 39.966370>,  <40.004025, 39.136604, 39.905472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609371, 39.113346, 39.966370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048756, 0.786074, 0.616207,
		-0.155505, 0.615392, -0.772730,
		-0.986631, -0.058148, 0.152242,
		39.313381, 39.095901, 40.012043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798218, 39.835758, 39.998341>,  <40.004025, 39.136604, 39.905472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798218, 39.835758, 39.998341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509777, 39.616447, 40.167763>,  <39.336712, 39.484859, 40.269417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509777, 39.616447, 40.167763>,  <39.798218, 39.835758, 39.998341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509777, 39.616447, 40.167763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082002, 0.674590, 0.733624,
		-0.687958, 0.494286, -0.531409,
		-0.721103, -0.548279, 0.423557,
		39.293446, 39.451965, 40.294830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312737, 40.372211, 40.167793>,  <39.798218, 39.835758, 39.998341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312737, 40.372211, 40.167793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232834, 40.045925, 40.384937>,  <39.184891, 39.850151, 40.515224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232834, 40.045925, 40.384937>,  <39.312737, 40.372211, 40.167793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232834, 40.045925, 40.384937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046045, 0.561229, 0.826379,
		-0.978763, 0.140080, -0.149669,
		-0.199758, -0.815720, 0.542860,
		39.172905, 39.801208, 40.547794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966923, 40.598354, 40.785229>,  <39.312737, 40.372211, 40.167793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966923, 40.598354, 40.785229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045052, 40.222519, 40.897667>,  <39.091930, 39.997017, 40.965130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045052, 40.222519, 40.897667>,  <38.966923, 40.598354, 40.785229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045052, 40.222519, 40.897667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061280, 0.274364, 0.959671,
		-0.978822, -0.204672, -0.003988,
		0.195324, -0.939592, 0.281096,
		39.103649, 39.940639, 40.981995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425373, 40.359333, 41.237968>,  <38.966923, 40.598354, 40.785229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425373, 40.359333, 41.237968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778435, 40.186737, 41.312527>,  <38.990273, 40.083179, 41.357262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778435, 40.186737, 41.312527>,  <38.425373, 40.359333, 41.237968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778435, 40.186737, 41.312527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015002, 0.370492, 0.928715,
		-0.469791, -0.822526, 0.320541,
		0.882650, -0.431494, 0.186393,
		39.043228, 40.057289, 41.368446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289082, 40.076588, 41.858665>,  <38.425373, 40.359333, 41.237968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289082, 40.076588, 41.858665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685692, 40.098515, 41.811554>,  <38.923656, 40.111671, 41.783287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685692, 40.098515, 41.811554>,  <38.289082, 40.076588, 41.858665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685692, 40.098515, 41.811554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100382, 0.252171, 0.962462,
		0.082457, -0.966129, 0.244532,
		0.991526, 0.054815, -0.117775,
		38.983150, 40.114960, 41.776222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817558, 39.460266, 41.965633>,  <38.289082, 40.076588, 41.858665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817558, 39.460266, 41.965633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434772, 39.469612, 42.081333>,  <37.205101, 39.475220, 42.150753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434772, 39.469612, 42.081333>,  <37.817558, 39.460266, 41.965633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434772, 39.469612, 42.081333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276607, -0.374827, -0.884869,
		0.087741, -0.926800, 0.365162,
		-0.956969, 0.023367, 0.289247,
		37.147682, 39.476624, 42.168106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612518, 38.791557, 41.998032>,  <37.817558, 39.460266, 41.965633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612518, 38.791557, 41.998032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274597, 39.001263, 41.955196>,  <37.071846, 39.127087, 41.929497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274597, 39.001263, 41.955196>,  <37.612518, 38.791557, 41.998032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274597, 39.001263, 41.955196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274575, -0.596504, -0.754182,
		-0.459263, -0.607730, 0.647875,
		-0.844799, 0.524259, -0.107085,
		37.021156, 39.158539, 41.923069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018234, 38.298889, 42.011883>,  <37.612518, 38.791557, 41.998032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018234, 38.298889, 42.011883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888390, 38.625687, 41.821243>,  <36.810482, 38.821766, 41.706860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888390, 38.625687, 41.821243>,  <37.018234, 38.298889, 42.011883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888390, 38.625687, 41.821243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329301, -0.569983, -0.752782,
		-0.886671, -0.087420, 0.454062,
		-0.324616, 0.816993, -0.476600,
		36.791004, 38.870785, 41.678265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273090, 38.317455, 41.840477>,  <37.018234, 38.298889, 42.011883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273090, 38.317455, 41.840477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481152, 38.548283, 41.588623>,  <36.605988, 38.686779, 41.437511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481152, 38.548283, 41.588623>,  <36.273090, 38.317455, 41.840477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481152, 38.548283, 41.588623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515299, -0.375871, -0.770187,
		-0.681108, 0.725064, 0.101851,
		0.520152, 0.577064, -0.629634,
		36.637196, 38.721401, 41.399734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675129, 38.492378, 41.582409>,  <36.273090, 38.317455, 41.840477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675129, 38.492378, 41.582409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963593, 38.614979, 41.333897>,  <36.136669, 38.688538, 41.184788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963593, 38.614979, 41.333897>,  <35.675129, 38.492378, 41.582409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963593, 38.614979, 41.333897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524771, -0.343786, -0.778734,
		-0.452270, 0.887620, -0.087081,
		0.721156, 0.306500, -0.621282,
		36.179939, 38.706928, 41.147511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361549, 38.859524, 41.096214>,  <35.675129, 38.492378, 41.582409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361549, 38.859524, 41.096214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700172, 38.746773, 40.915604>,  <35.903347, 38.679123, 40.807236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700172, 38.746773, 40.915604>,  <35.361549, 38.859524, 41.096214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700172, 38.746773, 40.915604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523037, -0.283028, -0.803945,
		0.098822, 0.916754, -0.387035,
		0.846561, -0.281881, -0.451527,
		35.954140, 38.662209, 40.780144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418240, 39.172684, 40.422825>,  <35.361549, 38.859524, 41.096214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418240, 39.172684, 40.422825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661770, 38.856693, 40.393818>,  <35.807888, 38.667099, 40.376415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661770, 38.856693, 40.393818>,  <35.418240, 39.172684, 40.422825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661770, 38.856693, 40.393818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397721, -0.224867, -0.889524,
		0.686401, 0.570408, -0.451097,
		0.608829, -0.789980, -0.072514,
		35.844418, 38.619698, 40.372063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506760, 39.085381, 39.738014>,  <35.418240, 39.172684, 40.422825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506760, 39.085381, 39.738014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657589, 38.739174, 39.869888>,  <35.748085, 38.531448, 39.949013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657589, 38.739174, 39.869888>,  <35.506760, 39.085381, 39.738014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657589, 38.739174, 39.869888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581521, -0.498299, -0.643064,
		0.720867, 0.050762, -0.691212,
		0.377074, -0.865518, 0.329689,
		35.770710, 38.479519, 39.968796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622334, 38.671787, 39.074322>,  <35.506760, 39.085381, 39.738014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622334, 38.671787, 39.074322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609554, 38.428482, 39.391560>,  <35.601887, 38.282497, 39.581902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609554, 38.428482, 39.391560>,  <35.622334, 38.671787, 39.074322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609554, 38.428482, 39.391560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679762, -0.568498, -0.463395,
		0.732737, -0.553919, -0.395311,
		-0.031950, -0.608263, 0.793092,
		35.599968, 38.246002, 39.629486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787415, 38.027744, 38.759724>,  <35.622334, 38.671787, 39.074322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787415, 38.027744, 38.759724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614719, 37.966988, 39.115372>,  <35.511101, 37.930534, 39.328762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614719, 37.966988, 39.115372>,  <35.787415, 38.027744, 38.759724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614719, 37.966988, 39.115372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566361, -0.721536, -0.398273,
		0.702025, -0.675511, 0.225489,
		-0.431736, -0.151889, 0.889119,
		35.485199, 37.921421, 39.382107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913998, 37.358883, 38.912403>,  <35.787415, 38.027744, 38.759724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913998, 37.358883, 38.912403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595009, 37.480370, 39.120941>,  <35.403618, 37.553261, 39.246063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595009, 37.480370, 39.120941>,  <35.913998, 37.358883, 38.912403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595009, 37.480370, 39.120941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491862, -0.827689, -0.270191,
		0.349452, -0.471899, 0.809441,
		-0.797468, 0.303714, 0.521346,
		35.355770, 37.571484, 39.277344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561852, 36.668480, 39.069019>,  <35.913998, 37.358883, 38.912403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561852, 36.668480, 39.069019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268879, 36.926220, 39.156979>,  <35.093094, 37.080864, 39.209755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268879, 36.926220, 39.156979>,  <35.561852, 36.668480, 39.069019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268879, 36.926220, 39.156979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678891, -0.715623, -0.164288,
		0.051504, -0.269616, 0.961590,
		-0.732430, 0.644353, 0.219897,
		35.049149, 37.119526, 39.222946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064281, 36.245396, 39.382458>,  <35.561852, 36.668480, 39.069019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064281, 36.245396, 39.382458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872089, 36.563244, 39.234016>,  <34.756775, 36.753952, 39.144951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872089, 36.563244, 39.234016>,  <35.064281, 36.245396, 39.382458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872089, 36.563244, 39.234016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730592, -0.596743, -0.331863,
		-0.485157, 0.111669, 0.867268,
		-0.480477, 0.794625, -0.371098,
		34.727947, 36.801632, 39.122688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366695, 36.256371, 39.725853>,  <35.064281, 36.245396, 39.382458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366695, 36.256371, 39.725853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327576, 36.492977, 39.405720>,  <34.304104, 36.634941, 39.213638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327576, 36.492977, 39.405720>,  <34.366695, 36.256371, 39.725853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327576, 36.492977, 39.405720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901523, -0.393284, -0.180511,
		-0.421535, 0.703868, 0.571732,
		-0.097798, 0.591522, -0.800337,
		34.298237, 36.670433, 39.165619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681541, 36.553837, 39.747608>,  <34.366695, 36.256371, 39.725853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681541, 36.553837, 39.747608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817104, 36.560265, 39.371334>,  <33.898441, 36.564121, 39.145569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817104, 36.560265, 39.371334>,  <33.681541, 36.553837, 39.747608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817104, 36.560265, 39.371334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859771, -0.400695, -0.316604,
		-0.382013, 0.916071, -0.121986,
		0.338911, 0.016066, -0.940681,
		33.918777, 36.565086, 39.089130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553650, 35.959671, 39.272102>,  <33.681541, 36.553837, 39.747608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553650, 35.959671, 39.272102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662090, 35.576519, 39.234211>,  <33.727154, 35.346630, 39.211475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662090, 35.576519, 39.234211>,  <33.553650, 35.959671, 39.272102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662090, 35.576519, 39.234211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137983, -0.136070, 0.981043,
		-0.952609, -0.252892, -0.169060,
		0.271102, -0.957878, -0.094727,
		33.743420, 35.289154, 39.205791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919415, 35.726578, 39.453407>,  <33.553650, 35.959671, 39.272102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919415, 35.726578, 39.453407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221958, 35.472733, 39.516891>,  <33.403484, 35.320427, 39.554981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221958, 35.472733, 39.516891>,  <32.919415, 35.726578, 39.453407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221958, 35.472733, 39.516891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280281, -0.095168, 0.955189,
		-0.591072, -0.766947, -0.249851,
		0.756357, -0.634614, 0.158710,
		33.448864, 35.282349, 39.564503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526302, 35.213982, 39.829102>,  <32.919415, 35.726578, 39.453407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526302, 35.213982, 39.829102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922153, 35.208157, 39.886257>,  <33.159664, 35.204662, 39.920551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922153, 35.208157, 39.886257>,  <32.526302, 35.213982, 39.829102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922153, 35.208157, 39.886257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143514, -0.061202, 0.987754,
		-0.005635, -0.998019, -0.062657,
		0.989632, -0.014558, 0.142885,
		33.219044, 35.203789, 39.929123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609196, 34.703827, 40.289661>,  <32.526302, 35.213982, 39.829102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609196, 34.703827, 40.289661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947826, 34.914684, 40.319130>,  <33.151005, 35.041199, 40.336811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947826, 34.914684, 40.319130>,  <32.609196, 34.703827, 40.289661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947826, 34.914684, 40.319130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021260, -0.171797, 0.984903,
		0.531842, -0.832230, -0.156647,
		0.846577, 0.527143, 0.073675,
		33.201797, 35.072826, 40.341232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041889, 34.267227, 40.641788>,  <32.609196, 34.703827, 40.289661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041889, 34.267227, 40.641788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167091, 34.643967, 40.690681>,  <33.242214, 34.870010, 40.720016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167091, 34.643967, 40.690681>,  <33.041889, 34.267227, 40.641788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167091, 34.643967, 40.690681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085679, -0.100172, 0.991274,
		0.945877, -0.320752, 0.049342,
		0.313010, 0.941851, 0.122232,
		33.260994, 34.926521, 40.727352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540173, 34.287041, 41.106617>,  <33.041889, 34.267227, 40.641788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540173, 34.287041, 41.106617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427586, 34.670818, 41.100414>,  <33.360035, 34.901085, 41.096695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427586, 34.670818, 41.100414>,  <33.540173, 34.287041, 41.106617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427586, 34.670818, 41.100414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081734, 0.040069, 0.995848,
		0.956084, 0.279030, -0.089697,
		-0.281465, 0.959446, -0.015503,
		33.343147, 34.958652, 41.095764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090168, 34.696835, 41.304832>,  <33.540173, 34.287041, 41.106617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090168, 34.696835, 41.304832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767010, 34.919029, 41.383564>,  <33.573116, 35.052345, 41.430805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767010, 34.919029, 41.383564>,  <34.090168, 34.696835, 41.304832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767010, 34.919029, 41.383564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333502, 0.155560, 0.929827,
		0.485890, 0.816843, -0.310932,
		-0.807891, 0.555490, 0.196833,
		33.524643, 35.085674, 41.442616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359798, 35.225262, 41.688049>,  <34.090168, 34.696835, 41.304832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359798, 35.225262, 41.688049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968094, 35.240215, 41.767693>,  <33.733070, 35.249187, 41.815479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968094, 35.240215, 41.767693>,  <34.359798, 35.225262, 41.688049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968094, 35.240215, 41.767693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201477, 0.076821, 0.976476,
		0.021212, 0.996344, -0.082761,
		-0.979264, 0.037387, 0.199111,
		33.674316, 35.251431, 41.827427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255554, 35.868938, 42.105152>,  <34.359798, 35.225262, 41.688049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255554, 35.868938, 42.105152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944294, 35.625725, 42.168106>,  <33.757538, 35.479797, 42.205879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944294, 35.625725, 42.168106>,  <34.255554, 35.868938, 42.105152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944294, 35.625725, 42.168106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163362, 0.046013, 0.985493,
		-0.606458, 0.792574, 0.063525,
		-0.778153, -0.608037, 0.157382,
		33.710850, 35.443314, 42.215321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919102, 36.087276, 42.726299>,  <34.255554, 35.868938, 42.105152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919102, 36.087276, 42.726299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770210, 35.716633, 42.704960>,  <33.680874, 35.494247, 42.692158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770210, 35.716633, 42.704960>,  <33.919102, 36.087276, 42.726299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770210, 35.716633, 42.704960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050680, -0.077681, 0.995689,
		-0.926755, 0.367923, 0.075875,
		-0.372231, -0.926606, -0.053345,
		33.658543, 35.438652, 42.688957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410126, 36.088764, 43.147781>,  <33.919102, 36.087276, 42.726299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410126, 36.088764, 43.147781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520508, 35.707150, 43.101032>,  <33.586735, 35.478180, 43.072983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520508, 35.707150, 43.101032>,  <33.410126, 36.088764, 43.147781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520508, 35.707150, 43.101032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331208, -0.019762, 0.943351,
		-0.902304, -0.299029, 0.310532,
		0.275952, -0.954040, -0.116871,
		33.603294, 35.420937, 43.065971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257130, 35.859241, 43.789219>,  <33.410126, 36.088764, 43.147781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257130, 35.859241, 43.789219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478771, 35.564911, 43.633507>,  <33.611755, 35.388313, 43.540081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478771, 35.564911, 43.633507>,  <33.257130, 35.859241, 43.789219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478771, 35.564911, 43.633507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475740, -0.103831, 0.873436,
		-0.683115, -0.669165, 0.292528,
		0.554099, -0.735824, -0.389277,
		33.645000, 35.344162, 43.516724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011925, 35.173904, 44.003708>,  <33.257130, 35.859241, 43.789219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011925, 35.173904, 44.003708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400024, 35.182014, 43.907200>,  <33.632885, 35.186882, 43.849297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400024, 35.182014, 43.907200>,  <33.011925, 35.173904, 44.003708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400024, 35.182014, 43.907200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242012, -0.051207, 0.968921,
		0.007297, -0.998482, -0.054592,
		0.970246, 0.020282, -0.241270,
		33.691097, 35.188099, 43.834820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327454, 34.666393, 44.475746>,  <33.011925, 35.173904, 44.003708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327454, 34.666393, 44.475746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633698, 34.894657, 44.356968>,  <33.817444, 35.031616, 44.285702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633698, 34.894657, 44.356968>,  <33.327454, 34.666393, 44.475746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633698, 34.894657, 44.356968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348345, 0.020304, 0.937147,
		0.540824, -0.820933, -0.183243,
		0.765614, 0.570663, -0.296949,
		33.863380, 35.065857, 44.267883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934444, 34.372211, 44.779861>,  <33.327454, 34.666393, 44.475746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934444, 34.372211, 44.779861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038097, 34.748608, 44.692780>,  <34.100288, 34.974445, 44.640530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038097, 34.748608, 44.692780>,  <33.934444, 34.372211, 44.779861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038097, 34.748608, 44.692780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498926, 0.062585, 0.864382,
		0.826998, -0.332604, -0.453266,
		0.259129, 0.940988, -0.217702,
		34.115837, 35.030903, 44.627468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548370, 34.459633, 45.074917>,  <33.934444, 34.372211, 44.779861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548370, 34.459633, 45.074917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487400, 34.847809, 45.000072>,  <34.450817, 35.080715, 44.955166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487400, 34.847809, 45.000072>,  <34.548370, 34.459633, 45.074917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487400, 34.847809, 45.000072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579431, 0.241125, 0.778536,
		0.800640, 0.010253, -0.599058,
		-0.152430, 0.970440, -0.187114,
		34.441669, 35.138943, 44.943939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221558, 34.797081, 45.139763>,  <34.548370, 34.459633, 45.074917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221558, 34.797081, 45.139763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939693, 35.077236, 45.185223>,  <34.770576, 35.245331, 45.212498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939693, 35.077236, 45.185223>,  <35.221558, 34.797081, 45.139763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939693, 35.077236, 45.185223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456597, 0.324995, 0.828189,
		0.543119, 0.635480, -0.548805,
		-0.704657, 0.700388, 0.113647,
		34.728298, 35.287354, 45.219318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642128, 35.436150, 45.386784>,  <35.221558, 34.797081, 45.139763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642128, 35.436150, 45.386784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267586, 35.538593, 45.482830>,  <35.042862, 35.600060, 45.540459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267586, 35.538593, 45.482830>,  <35.642128, 35.436150, 45.386784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267586, 35.538593, 45.482830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340796, 0.498913, 0.796834,
		0.084280, 0.827946, -0.554439,
		-0.936352, 0.256108, 0.240112,
		34.986679, 35.615425, 45.554863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604881, 36.163162, 45.498348>,  <35.642128, 35.436150, 45.386784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604881, 36.163162, 45.498348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275635, 36.037891, 45.687828>,  <35.078087, 35.962727, 45.801517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275635, 36.037891, 45.687828>,  <35.604881, 36.163162, 45.498348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275635, 36.037891, 45.687828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232021, 0.575890, 0.783911,
		-0.518306, 0.755161, -0.401361,
		-0.823119, -0.313182, 0.473701,
		35.028698, 35.943935, 45.829937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382057, 36.730434, 45.784142>,  <35.604881, 36.163162, 45.498348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382057, 36.730434, 45.784142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207016, 36.433281, 45.986778>,  <35.101990, 36.254990, 46.108360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207016, 36.433281, 45.986778>,  <35.382057, 36.730434, 45.784142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207016, 36.433281, 45.986778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164278, 0.487861, 0.857324,
		-0.884033, 0.458391, -0.091451,
		-0.437605, -0.742880, 0.506589,
		35.075733, 36.210419, 46.138756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141399, 37.072464, 46.311214>,  <35.382057, 36.730434, 45.784142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141399, 37.072464, 46.311214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157665, 36.697422, 46.449337>,  <35.167423, 36.472397, 46.532211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157665, 36.697422, 46.449337>,  <35.141399, 37.072464, 46.311214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157665, 36.697422, 46.449337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176610, 0.346900, 0.921124,
		-0.983441, 0.023530, 0.179697,
		0.040663, -0.937607, 0.345311,
		35.169865, 36.416142, 46.552929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987988, 37.192688, 47.001858>,  <35.141399, 37.072464, 46.311214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987988, 37.192688, 47.001858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158722, 36.831188, 46.988888>,  <35.261162, 36.614288, 46.981106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158722, 36.831188, 46.988888>,  <34.987988, 37.192688, 47.001858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158722, 36.831188, 46.988888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169941, 0.044947, 0.984429,
		-0.888220, -0.425696, 0.172769,
		0.426833, -0.903750, -0.032420,
		35.286774, 36.560062, 46.979160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655907, 36.860725, 47.491444>,  <34.987988, 37.192688, 47.001858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655907, 36.860725, 47.491444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000248, 36.664253, 47.438267>,  <35.206852, 36.546368, 47.406361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000248, 36.664253, 47.438267>,  <34.655907, 36.860725, 47.491444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000248, 36.664253, 47.438267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124496, -0.050019, 0.990958,
		-0.493393, -0.869618, 0.018092,
		0.860851, -0.491185, -0.132943,
		35.258503, 36.516899, 47.398384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666100, 36.380260, 48.039589>,  <34.655907, 36.860725, 47.491444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666100, 36.380260, 48.039589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044960, 36.358864, 47.913074>,  <35.272278, 36.346024, 47.837166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044960, 36.358864, 47.913074>,  <34.666100, 36.380260, 48.039589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044960, 36.358864, 47.913074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306322, -0.141818, 0.941305,
		-0.095209, -0.988446, -0.117937,
		0.947155, -0.053494, -0.316285,
		35.329105, 36.342815, 47.818188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007515, 35.720467, 48.246593>,  <34.666100, 36.380260, 48.039589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007515, 35.720467, 48.246593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300041, 35.987717, 48.191769>,  <35.475555, 36.148067, 48.158875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300041, 35.987717, 48.191769>,  <35.007515, 35.720467, 48.246593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300041, 35.987717, 48.191769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266723, -0.095196, 0.959060,
		0.627727, -0.737931, -0.247824,
		0.731312, 0.668129, -0.137066,
		35.519436, 36.188156, 48.150650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590530, 35.493759, 48.576485>,  <35.007515, 35.720467, 48.246593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590530, 35.493759, 48.576485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709999, 35.875137, 48.559765>,  <35.781681, 36.103962, 48.549732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709999, 35.875137, 48.559765>,  <35.590530, 35.493759, 48.576485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709999, 35.875137, 48.559765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318602, -0.058329, 0.946092,
		0.899605, -0.295886, -0.321189,
		0.298670, 0.953441, -0.041797,
		35.799599, 36.161171, 48.547226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285645, 35.463661, 48.729473>,  <35.590530, 35.493759, 48.576485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285645, 35.463661, 48.729473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152195, 35.830925, 48.814960>,  <36.072124, 36.051285, 48.866253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152195, 35.830925, 48.814960>,  <36.285645, 35.463661, 48.729473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152195, 35.830925, 48.814960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352420, -0.088793, 0.931620,
		0.874355, 0.386128, -0.293955,
		-0.333623, 0.918162, 0.213716,
		36.052109, 36.106373, 48.879074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713627, 35.149399, 48.298920>,  <36.285645, 35.463661, 48.729473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713627, 35.149399, 48.298920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041492, 34.921562, 48.323315>,  <37.238213, 34.784859, 48.337952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041492, 34.921562, 48.323315>,  <36.713627, 35.149399, 48.298920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041492, 34.921562, 48.323315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233684, -0.429668, -0.872225,
		0.523015, 0.700679, -0.485287,
		0.819662, -0.569591, 0.060985,
		37.287392, 34.750687, 48.341610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958813, 35.229946, 47.599098>,  <36.713627, 35.149399, 48.298920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958813, 35.229946, 47.599098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134262, 34.902092, 47.746513>,  <37.239532, 34.705379, 47.834961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134262, 34.902092, 47.746513>,  <36.958813, 35.229946, 47.599098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134262, 34.902092, 47.746513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051855, -0.386320, -0.920906,
		0.897175, 0.423039, -0.126946,
		0.438621, -0.819631, 0.368534,
		37.265850, 34.656204, 47.857075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496349, 35.141220, 47.136856>,  <36.958813, 35.229946, 47.599098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496349, 35.141220, 47.136856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437614, 34.795956, 47.330101>,  <37.402374, 34.588799, 47.446049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437614, 34.795956, 47.330101>,  <37.496349, 35.141220, 47.136856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437614, 34.795956, 47.330101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084117, -0.497535, -0.863356,
		0.985578, -0.086131, 0.145661,
		-0.146833, -0.863157, 0.483114,
		37.393566, 34.537010, 47.475037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064976, 34.680450, 46.916603>,  <37.496349, 35.141220, 47.136856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064976, 34.680450, 46.916603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759071, 34.467018, 47.061066>,  <37.575527, 34.338959, 47.147743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759071, 34.467018, 47.061066>,  <38.064976, 34.680450, 46.916603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759071, 34.467018, 47.061066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012853, -0.573053, -0.819418,
		0.644187, -0.622016, 0.445106,
		-0.764760, -0.533579, 0.361159,
		37.529644, 34.306946, 47.169415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263210, 33.977627, 46.847599>,  <38.064976, 34.680450, 46.916603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263210, 33.977627, 46.847599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871929, 33.935974, 46.919468>,  <37.637161, 33.910980, 46.962589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871929, 33.935974, 46.919468>,  <38.263210, 33.977627, 46.847599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871929, 33.935974, 46.919468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089732, -0.568317, -0.817902,
		0.187285, -0.816193, 0.546583,
		-0.978199, -0.104135, 0.179676,
		37.578468, 33.904736, 46.973370>
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
