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
	<4.700593, 4.494936, 2.770316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.778378, 4.530701, 3.161047>,  <4.825048, 4.552160, 3.395485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.778378, 4.530701, 3.161047>,  <4.700593, 4.494936, 2.770316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.778378, 4.530701, 3.161047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848960, -0.483514, 0.213263,
		0.491378, -0.870758, -0.018114,
		0.194459, 0.089414, 0.976827,
		4.836715, 4.557525, 3.454095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.752265, 3.839996, 3.159852>,  <4.700593, 4.494936, 2.770316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.752265, 3.839996, 3.159852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.618136, 4.119232, 3.412907>,  <4.537658, 4.286774, 3.564739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.618136, 4.119232, 3.412907>,  <4.752265, 3.839996, 3.159852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.618136, 4.119232, 3.412907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567495, -0.685687, 0.455832,
		0.752002, -0.206166, 0.626090,
		-0.335324, 0.698090, 0.632636,
		4.517539, 4.328659, 3.602698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.862117, 3.679107, 3.901785>,  <4.752265, 3.839996, 3.159852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.862117, 3.679107, 3.901785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.530486, 3.891335, 3.831213>,  <4.331507, 4.018671, 3.788870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.530486, 3.891335, 3.831213>,  <4.862117, 3.679107, 3.901785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.530486, 3.891335, 3.831213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552526, -0.729060, 0.403964,
		0.085702, 0.432400, 0.897600,
		-0.829078, 0.530568, -0.176430,
		4.281762, 4.050505, 3.778284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.313909, 3.495164, 4.481547>,  <4.862117, 3.679107, 3.901785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.313909, 3.495164, 4.481547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.129630, 3.633659, 4.154652>,  <4.019063, 3.716757, 3.958514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.129630, 3.633659, 4.154652>,  <4.313909, 3.495164, 4.481547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.129630, 3.633659, 4.154652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778893, -0.599181, 0.185224,
		-0.425542, 0.721873, 0.545723,
		-0.460696, 0.346239, -0.817238,
		3.991421, 3.737531, 3.909480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.655919, 3.739617, 4.684646>,  <4.313909, 3.495164, 4.481547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.655919, 3.739617, 4.684646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.669356, 3.627960, 4.300781>,  <3.677419, 3.560966, 4.070462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.669356, 3.627960, 4.300781>,  <3.655919, 3.739617, 4.684646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.669356, 3.627960, 4.300781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804596, -0.577152, 0.139714,
		-0.592871, 0.767447, -0.243984,
		0.033593, -0.279141, -0.959662,
		3.679434, 3.544218, 4.012883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.986869, 3.888872, 4.361332>,  <3.655919, 3.739617, 4.684646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.986869, 3.888872, 4.361332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.149737, 3.607246, 4.128607>,  <3.247458, 3.438271, 3.988972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.149737, 3.607246, 4.128607>,  <2.986869, 3.888872, 4.361332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.149737, 3.607246, 4.128607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809689, -0.573006, 0.126761,
		-0.422630, 0.419474, -0.803384,
		0.407171, -0.704064, -0.581813,
		3.271888, 3.396027, 3.954063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.503070, 3.747267, 3.859351>,  <2.986869, 3.888872, 4.361332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.503070, 3.747267, 3.859351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.737664, 3.423286, 3.857897>,  <2.878420, 3.228898, 3.857024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.737664, 3.423286, 3.857897>,  <2.503070, 3.747267, 3.859351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.737664, 3.423286, 3.857897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800765, -0.580494, 0.147657,
		-0.121706, -0.083688, -0.989032,
		0.586484, -0.809952, -0.003635,
		2.913609, 3.180301, 3.856806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.052055, 3.205380, 3.486713>,  <2.503070, 3.747267, 3.859351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.052055, 3.205380, 3.486713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.339814, 2.996353, 3.669748>,  <2.512470, 2.870937, 3.779570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.339814, 2.996353, 3.669748>,  <2.052055, 3.205380, 3.486713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.339814, 2.996353, 3.669748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675624, -0.679366, 0.286346,
		0.161234, -0.515155, -0.841795,
		0.719399, -0.522569, 0.457589,
		2.555634, 2.839583, 3.807025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.678461, 2.534980, 3.361096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.317986, 2.585571, 3.195271>,  <1.101700, 2.615926, 3.095775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.317986, 2.585571, 3.195271>,  <1.678461, 2.534980, 3.361096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.317986, 2.585571, 3.195271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419127, 0.010622, -0.907865,
		-0.110421, -0.991913, -0.062583,
		-0.901188, 0.126478, -0.414565,
		1.047629, 2.623515, 3.070901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.616082, 2.639853, 4.092860>,  <1.678461, 2.534980, 3.361096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.616082, 2.639853, 4.092860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.784840, 2.314072, 4.252193>,  <1.886094, 2.118603, 4.347794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.784840, 2.314072, 4.252193>,  <1.616082, 2.639853, 4.092860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.784840, 2.314072, 4.252193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833937, 0.176212, -0.522970,
		0.355745, 0.552823, 0.753547,
		0.421894, -0.814454, 0.398333,
		1.911408, 2.069735, 4.371694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.228589, 2.687276, 4.610088>,  <1.616082, 2.639853, 4.092860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.228589, 2.687276, 4.610088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.261198, 2.369064, 4.369926>,  <2.280764, 2.178137, 4.225829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.261198, 2.369064, 4.369926>,  <2.228589, 2.687276, 4.610088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.261198, 2.369064, 4.369926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775855, 0.428794, -0.462800,
		0.625622, -0.428098, 0.652173,
		0.081524, -0.795530, -0.600405,
		2.285655, 2.130405, 4.189805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.933343, 2.465288, 4.627746>,  <2.228589, 2.687276, 4.610088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.933343, 2.465288, 4.627746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.772558, 2.358963, 4.277256>,  <2.676087, 2.295168, 4.066962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.772558, 2.358963, 4.277256>,  <2.933343, 2.465288, 4.627746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.772558, 2.358963, 4.277256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797539, 0.368487, -0.477650,
		0.449842, -0.890821, 0.063877,
		-0.401963, -0.265812, -0.876225,
		2.651969, 2.279219, 4.014389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.453143, 1.996632, 4.206885>,  <2.933343, 2.465288, 4.627746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.453143, 1.996632, 4.206885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.195108, 2.250740, 4.037041>,  <3.040287, 2.403205, 3.935134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.195108, 2.250740, 4.037041>,  <3.453143, 1.996632, 4.206885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.195108, 2.250740, 4.037041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764080, 0.541159, -0.351183,
		0.006686, -0.550980, -0.834491,
		-0.645087, 0.635270, -0.424611,
		3.001582, 2.441321, 3.909657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.710906, 2.170587, 3.679323>,  <3.453143, 1.996632, 4.206885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.710906, 2.170587, 3.679323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.464073, 2.479996, 3.737110>,  <3.315973, 2.665641, 3.771783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.464073, 2.479996, 3.737110>,  <3.710906, 2.170587, 3.679323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.464073, 2.479996, 3.737110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714167, 0.627617, -0.309938,
		-0.330415, -0.088083, -0.939716,
		-0.617083, 0.773523, 0.144469,
		3.278948, 2.712053, 3.780451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.700001, 2.576167, 3.068434>,  <3.710906, 2.170587, 3.679323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.700001, 2.576167, 3.068434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.581255, 2.837021, 3.347458>,  <3.510007, 2.993533, 3.514873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.581255, 2.837021, 3.347458>,  <3.700001, 2.576167, 3.068434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.581255, 2.837021, 3.347458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765226, 0.599439, -0.234739,
		-0.571226, 0.464106, -0.676983,
		-0.296866, 0.652134, 0.697561,
		3.492195, 3.032661, 3.556726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.577825, 3.216699, 2.762843>,  <3.700001, 2.576167, 3.068434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.577825, 3.216699, 2.762843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.637665, 3.284927, 3.152412>,  <3.673569, 3.325864, 3.386154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.637665, 3.284927, 3.152412>,  <3.577825, 3.216699, 2.762843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.637665, 3.284927, 3.152412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794770, 0.565215, -0.221072,
		-0.588184, 0.807117, -0.051008,
		0.149601, 0.170570, 0.973923,
		3.682545, 3.336098, 3.444589>
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
