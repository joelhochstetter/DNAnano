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
	<24.530546, 34.700901, 34.684734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.364269, 34.893436, 34.993412>,  <24.264503, 35.008957, 35.178619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.364269, 34.893436, 34.993412>,  <24.530546, 34.700901, 34.684734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.364269, 34.893436, 34.993412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442130, -0.634532, 0.633948,
		0.794808, 0.604718, 0.050958,
		-0.415694, 0.481337, 0.771695,
		24.239561, 35.037838, 35.224922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.030842, 34.971375, 35.120689>,  <24.530546, 34.700901, 34.684734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.030842, 34.971375, 35.120689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.688967, 34.852005, 35.290607>,  <24.483843, 34.780384, 35.392559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.688967, 34.852005, 35.290607>,  <25.030842, 34.971375, 35.120689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.688967, 34.852005, 35.290607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491013, -0.730392, 0.474798,
		0.168575, 0.614384, 0.770788,
		-0.854686, -0.298428, 0.424797,
		24.432560, 34.762478, 35.418045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.026653, 34.967247, 35.862206>,  <25.030842, 34.971375, 35.120689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.026653, 34.967247, 35.862206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.753555, 34.688259, 35.775120>,  <24.589697, 34.520866, 35.722870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.753555, 34.688259, 35.775120>,  <25.026653, 34.967247, 35.862206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.753555, 34.688259, 35.775120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447701, -0.634821, 0.629735,
		-0.577430, 0.332477, 0.745677,
		-0.682743, -0.697468, -0.217715,
		24.548733, 34.479019, 35.709805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796888, 35.139309, 35.937984>,  <25.026653, 34.967247, 35.862206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796888, 35.139309, 35.937984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675959, 35.412476, 35.671986>,  <25.603401, 35.576374, 35.512386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675959, 35.412476, 35.671986>,  <25.796888, 35.139309, 35.937984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.675959, 35.412476, 35.671986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923624, 0.037423, -0.381469,
		-0.235625, -0.729536, -0.642073,
		-0.302324, 0.682917, -0.664999,
		25.585262, 35.617352, 35.472485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913713, 34.846203, 35.205204>,  <25.796888, 35.139309, 35.937984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913713, 34.846203, 35.205204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910555, 35.245625, 35.226437>,  <25.908661, 35.485279, 35.239178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910555, 35.245625, 35.226437>,  <25.913713, 34.846203, 35.205204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910555, 35.245625, 35.226437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888138, 0.031396, -0.458502,
		-0.459508, 0.043527, -0.887106,
		-0.007894, 0.998559, 0.053085,
		25.908186, 35.545193, 35.242363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446043, 35.043484, 34.779270>,  <25.913713, 34.846203, 35.205204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446043, 35.043484, 34.779270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351948, 35.418533, 34.881664>,  <26.295490, 35.643562, 34.943100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351948, 35.418533, 34.881664>,  <26.446043, 35.043484, 34.779270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351948, 35.418533, 34.881664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753540, 0.342287, -0.561263,
		-0.613873, 0.060865, -0.787055,
		-0.235237, 0.937622, 0.255985,
		26.281376, 35.699821, 34.958458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171978, 35.271767, 34.175743>,  <26.446043, 35.043484, 34.779270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171978, 35.271767, 34.175743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333641, 35.558571, 34.402916>,  <26.430639, 35.730656, 34.539219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333641, 35.558571, 34.402916>,  <26.171978, 35.271767, 34.175743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333641, 35.558571, 34.402916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547815, 0.307488, -0.778042,
		-0.732500, 0.625572, -0.268519,
		0.404155, 0.717015, 0.567933,
		26.454887, 35.773674, 34.573296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056126, 35.913692, 33.762337>,  <26.171978, 35.271767, 34.175743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056126, 35.913692, 33.762337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363533, 35.869648, 34.014450>,  <26.547977, 35.843224, 34.165718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363533, 35.869648, 34.014450>,  <26.056126, 35.913692, 33.762337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.363533, 35.869648, 34.014450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633152, -0.011052, -0.773948,
		0.092185, 0.993858, 0.061223,
		0.768518, -0.110110, 0.630282,
		26.594088, 35.836617, 34.203533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487782, 36.477131, 33.626209>,  <26.056126, 35.913692, 33.762337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487782, 36.477131, 33.626209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720497, 36.195972, 33.789898>,  <26.860126, 36.027279, 33.888111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720497, 36.195972, 33.789898>,  <26.487782, 36.477131, 33.626209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720497, 36.195972, 33.789898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689629, 0.159566, -0.706364,
		0.431202, 0.693164, 0.577570,
		0.581787, -0.702895, 0.409221,
		26.895033, 35.985104, 33.912663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067350, 36.694183, 33.461021>,  <26.487782, 36.477131, 33.626209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067350, 36.694183, 33.461021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170834, 36.316055, 33.540459>,  <27.232924, 36.089180, 33.588123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170834, 36.316055, 33.540459>,  <27.067350, 36.694183, 33.461021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170834, 36.316055, 33.540459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778142, 0.082140, -0.622694,
		0.572332, 0.315633, 0.756843,
		0.258709, -0.945320, 0.198596,
		27.248446, 36.032459, 33.600037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840010, 36.678879, 33.613693>,  <27.067350, 36.694183, 33.461021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840010, 36.678879, 33.613693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716591, 36.318035, 33.493031>,  <27.642540, 36.101528, 33.420635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716591, 36.318035, 33.493031>,  <27.840010, 36.678879, 33.613693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716591, 36.318035, 33.493031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802207, -0.076372, -0.592142,
		0.511140, -0.424692, 0.747244,
		-0.308546, -0.902111, -0.301654,
		27.624027, 36.047401, 33.402534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453970, 36.307171, 33.517799>,  <27.840010, 36.678879, 33.613693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453970, 36.307171, 33.517799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170691, 36.157635, 33.278233>,  <28.000723, 36.067913, 33.134491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170691, 36.157635, 33.278233>,  <28.453970, 36.307171, 33.517799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170691, 36.157635, 33.278233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643884, 0.005978, -0.765100,
		0.289604, -0.927475, 0.236474,
		-0.708197, -0.373838, -0.598917,
		27.958231, 36.045483, 33.098557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838966, 36.018112, 32.744808>,  <28.453970, 36.307171, 33.517799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838966, 36.018112, 32.744808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.662504, 35.887142, 32.410583>,  <28.556625, 35.808559, 32.210049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.662504, 35.887142, 32.410583>,  <28.838966, 36.018112, 32.744808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662504, 35.887142, 32.410583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783969, -0.312537, 0.536388,
		-0.436774, 0.891690, -0.118816,
		-0.441158, -0.327429, -0.835566,
		28.530157, 35.788914, 32.159912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194384, 36.277897, 32.342255>,  <28.838966, 36.018112, 32.744808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194384, 36.277897, 32.342255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190613, 35.879230, 32.309856>,  <28.188351, 35.640030, 32.290417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190613, 35.879230, 32.309856>,  <28.194384, 36.277897, 32.342255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190613, 35.879230, 32.309856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825496, -0.037955, 0.563130,
		-0.564328, 0.072173, -0.822390,
		-0.009429, -0.996670, -0.080997,
		28.187784, 35.580231, 32.285557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522697, 36.099094, 32.346581>,  <28.194384, 36.277897, 32.342255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522697, 36.099094, 32.346581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733231, 35.789524, 32.487438>,  <27.859550, 35.603783, 32.571953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733231, 35.789524, 32.487438>,  <27.522697, 36.099094, 32.346581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733231, 35.789524, 32.487438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619943, -0.065847, 0.781879,
		-0.581930, -0.629841, -0.514449,
		0.526334, -0.773928, 0.352147,
		27.891130, 35.557346, 32.593082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134848, 35.422394, 32.384289>,  <27.522697, 36.099094, 32.346581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134848, 35.422394, 32.384289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421448, 35.516487, 32.646980>,  <27.593409, 35.572945, 32.804596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421448, 35.516487, 32.646980>,  <27.134848, 35.422394, 32.384289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421448, 35.516487, 32.646980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636683, -0.164190, 0.753443,
		0.285066, -0.957969, 0.032129,
		0.716500, 0.235237, 0.656728,
		27.636398, 35.587059, 32.843998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205021, 34.917656, 32.999088>,  <27.134848, 35.422394, 32.384289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205021, 34.917656, 32.999088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365877, 35.247456, 33.158329>,  <27.462391, 35.445335, 33.253872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365877, 35.247456, 33.158329>,  <27.205021, 34.917656, 32.999088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365877, 35.247456, 33.158329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491888, -0.172175, 0.853465,
		0.772224, -0.539034, 0.336323,
		0.402140, 0.824499, 0.398101,
		27.486519, 35.494804, 33.277760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491205, 34.767799, 33.707741>,  <27.205021, 34.917656, 32.999088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491205, 34.767799, 33.707741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416809, 35.159737, 33.678562>,  <27.372171, 35.394897, 33.661053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416809, 35.159737, 33.678562>,  <27.491205, 34.767799, 33.707741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416809, 35.159737, 33.678562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483005, -0.026523, 0.875216,
		0.855636, 0.198019, 0.478200,
		-0.185993, 0.979839, -0.072950,
		27.361012, 35.453690, 33.656677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653906, 35.074818, 34.394547>,  <27.491205, 34.767799, 33.707741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653906, 35.074818, 34.394547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405050, 35.338913, 34.226246>,  <27.255737, 35.497368, 34.125263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405050, 35.338913, 34.226246>,  <27.653906, 35.074818, 34.394547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405050, 35.338913, 34.226246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478608, 0.104577, 0.871778,
		0.619579, 0.743744, 0.250932,
		-0.622138, 0.660233, -0.420756,
		27.218409, 35.536983, 34.100018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531248, 35.532829, 35.055874>,  <27.653906, 35.074818, 34.394547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531248, 35.532829, 35.055874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251451, 35.595726, 34.777023>,  <27.083574, 35.633465, 34.609711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251451, 35.595726, 34.777023>,  <27.531248, 35.532829, 35.055874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251451, 35.595726, 34.777023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702657, 0.026575, 0.711033,
		0.130328, 0.987203, 0.091895,
		-0.699492, 0.157238, -0.697128,
		27.041603, 35.642899, 34.567886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177267, 35.401699, 35.717007>,  <27.531248, 35.532829, 35.055874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.177267, 35.401699, 35.717007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308531, 35.770184, 35.800610>,  <27.387289, 35.991272, 35.850773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308531, 35.770184, 35.800610>,  <27.177267, 35.401699, 35.717007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308531, 35.770184, 35.800610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646584, -0.380360, 0.661253,
		0.688652, -0.081851, -0.720457,
		0.328157, 0.921209, 0.209012,
		27.406979, 36.046547, 35.863312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892214, 35.297897, 35.742702>,  <27.177267, 35.401699, 35.717007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892214, 35.297897, 35.742702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795568, 35.614178, 35.967705>,  <27.737581, 35.803947, 36.102707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795568, 35.614178, 35.967705>,  <27.892214, 35.297897, 35.742702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795568, 35.614178, 35.967705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595642, -0.336773, 0.729243,
		0.766051, 0.511246, -0.389607,
		-0.241613, 0.790703, 0.562505,
		27.723083, 35.851387, 36.136456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546751, 35.459202, 36.094154>,  <27.892214, 35.297897, 35.742702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546751, 35.459202, 36.094154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259125, 35.609348, 36.328091>,  <28.086550, 35.699436, 36.468452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259125, 35.609348, 36.328091>,  <28.546751, 35.459202, 36.094154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259125, 35.609348, 36.328091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521414, -0.264951, 0.811128,
		0.459427, 0.888200, -0.005205,
		-0.719065, 0.375368, 0.584845,
		28.043406, 35.721958, 36.503544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800735, 36.070183, 36.624672>,  <28.546751, 35.459202, 36.094154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800735, 36.070183, 36.624672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471163, 35.881416, 36.750172>,  <28.273420, 35.768158, 36.825470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471163, 35.881416, 36.750172>,  <28.800735, 36.070183, 36.624672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471163, 35.881416, 36.750172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419995, -0.136812, 0.897155,
		-0.380454, 0.870966, 0.310924,
		-0.823929, -0.471912, 0.313750,
		28.223984, 35.739841, 36.844296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350342, 36.383423, 37.138657>,  <28.800735, 36.070183, 36.624672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350342, 36.383423, 37.138657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364096, 35.983768, 37.148010>,  <28.372347, 35.743977, 37.153622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364096, 35.983768, 37.148010>,  <28.350342, 36.383423, 37.138657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364096, 35.983768, 37.148010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362857, 0.034280, 0.931214,
		-0.931210, -0.023533, 0.363722,
		0.034383, -0.999135, 0.023383,
		28.374411, 35.684029, 37.155025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098509, 36.050797, 37.799679>,  <28.350342, 36.383423, 37.138657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098509, 36.050797, 37.799679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365152, 35.796932, 37.643299>,  <28.525139, 35.644615, 37.549473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365152, 35.796932, 37.643299>,  <28.098509, 36.050797, 37.799679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365152, 35.796932, 37.643299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392856, -0.146592, 0.907840,
		-0.633480, -0.758760, 0.151611,
		0.666608, -0.634660, -0.390947,
		28.565134, 35.606533, 37.526016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064032, 35.326408, 38.106277>,  <28.098509, 36.050797, 37.799679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064032, 35.326408, 38.106277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404581, 35.515350, 38.015026>,  <28.608912, 35.628716, 37.960274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404581, 35.515350, 38.015026>,  <28.064032, 35.326408, 38.106277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404581, 35.515350, 38.015026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255186, 0.007017, 0.966867,
		0.458303, -0.881382, -0.114564,
		0.851375, 0.472353, -0.228132,
		28.659994, 35.657055, 37.946587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578007, 34.994350, 38.409382>,  <28.064032, 35.326408, 38.106277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578007, 34.994350, 38.409382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685804, 35.378662, 38.383251>,  <28.750483, 35.609249, 38.367573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685804, 35.378662, 38.383251>,  <28.578007, 34.994350, 38.409382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685804, 35.378662, 38.383251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003160, 0.068719, 0.997631,
		0.962997, -0.268650, 0.021556,
		0.269495, 0.960783, -0.065328,
		28.766653, 35.666897, 38.363651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984478, 35.053028, 38.937733>,  <28.578007, 34.994350, 38.409382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984478, 35.053028, 38.937733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870224, 35.421757, 38.832920>,  <28.801672, 35.642994, 38.770031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870224, 35.421757, 38.832920>,  <28.984478, 35.053028, 38.937733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870224, 35.421757, 38.832920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018487, 0.268072, 0.963222,
		0.958160, 0.279975, -0.059529,
		-0.285636, 0.921820, -0.262032,
		28.784533, 35.698303, 38.754311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373642, 35.365974, 39.292168>,  <28.984478, 35.053028, 38.937733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373642, 35.365974, 39.292168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077477, 35.618660, 39.200317>,  <28.899776, 35.770271, 39.145206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077477, 35.618660, 39.200317>,  <29.373642, 35.365974, 39.292168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077477, 35.618660, 39.200317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066796, 0.409091, 0.910046,
		0.668824, 0.658472, -0.345092,
		-0.740414, 0.631711, -0.229627,
		28.855352, 35.808174, 39.131428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552059, 36.068417, 39.398243>,  <29.373642, 35.365974, 39.292168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552059, 36.068417, 39.398243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155840, 36.037102, 39.443295>,  <28.918108, 36.018314, 39.470325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155840, 36.037102, 39.443295>,  <29.552059, 36.068417, 39.398243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155840, 36.037102, 39.443295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074047, 0.385959, 0.919540,
		-0.115457, 0.919188, -0.376514,
		-0.990549, -0.078288, 0.112625,
		28.858675, 36.013615, 39.477081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472378, 36.655533, 39.834816>,  <29.552059, 36.068417, 39.398243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472378, 36.655533, 39.834816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130524, 36.447922, 39.829086>,  <28.925411, 36.323357, 39.825649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130524, 36.447922, 39.829086>,  <29.472378, 36.655533, 39.834816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130524, 36.447922, 39.829086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089241, 0.119652, 0.988797,
		-0.511499, 0.846341, -0.148578,
		-0.854637, -0.519028, -0.014327,
		28.874132, 36.292213, 39.824787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001549, 37.022728, 40.211163>,  <29.472378, 36.655533, 39.834816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001549, 37.022728, 40.211163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831417, 36.661156, 40.229111>,  <28.729338, 36.444214, 40.239880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831417, 36.661156, 40.229111>,  <29.001549, 37.022728, 40.211163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831417, 36.661156, 40.229111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065672, 0.080277, 0.994607,
		-0.902654, 0.420087, -0.093506,
		-0.425328, -0.903926, 0.044874,
		28.703819, 36.389977, 40.242573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533468, 37.030647, 40.707214>,  <29.001549, 37.022728, 40.211163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533468, 37.030647, 40.707214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639723, 36.645977, 40.680038>,  <28.703476, 36.415176, 40.663734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639723, 36.645977, 40.680038>,  <28.533468, 37.030647, 40.707214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639723, 36.645977, 40.680038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052445, -0.055951, 0.997055,
		-0.962646, -0.268417, 0.035572,
		0.265636, -0.961676, -0.067939,
		28.719414, 36.357475, 40.659657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991247, 36.553326, 40.996250>,  <28.533468, 37.030647, 40.707214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991247, 36.553326, 40.996250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368114, 36.419521, 41.004459>,  <28.594234, 36.339237, 41.009384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368114, 36.419521, 41.004459>,  <27.991247, 36.553326, 40.996250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368114, 36.419521, 41.004459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049189, -0.077457, 0.995782,
		-0.331515, -0.939202, -0.089432,
		0.942167, -0.334515, 0.020520,
		28.650764, 36.319168, 41.010616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045588, 35.742451, 41.217587>,  <27.991247, 36.553326, 40.996250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045588, 35.742451, 41.217587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702068, 35.606495, 41.064255>,  <27.495956, 35.524921, 40.972256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702068, 35.606495, 41.064255>,  <28.045588, 35.742451, 41.217587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702068, 35.606495, 41.064255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112115, 0.605410, -0.787978,
		0.499897, -0.719690, -0.481818,
		-0.858798, -0.339888, -0.383331,
		27.444429, 35.504528, 40.949257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699074, 35.455887, 40.841423>,  <28.045588, 35.742451, 41.217587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699074, 35.455887, 40.841423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494909, 35.776394, 40.716557>,  <28.372410, 35.968697, 40.641636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494909, 35.776394, 40.716557>,  <28.699074, 35.455887, 40.841423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494909, 35.776394, 40.716557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204938, -0.239215, -0.949092,
		-0.835153, -0.548403, -0.042112,
		-0.510411, 0.801268, -0.312170,
		28.341785, 36.016773, 40.622906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092306, 35.266418, 40.339451>,  <28.699074, 35.455887, 40.841423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092306, 35.266418, 40.339451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257299, 35.626701, 40.284924>,  <28.356295, 35.842873, 40.252205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257299, 35.626701, 40.284924>,  <28.092306, 35.266418, 40.339451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257299, 35.626701, 40.284924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106856, -0.196450, -0.974674,
		-0.904677, 0.387469, -0.177278,
		0.412482, 0.900708, -0.136320,
		28.381044, 35.896915, 40.244026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734129, 35.525997, 39.757599>,  <28.092306, 35.266418, 40.339451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734129, 35.525997, 39.757599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079929, 35.723042, 39.797543>,  <28.287409, 35.841267, 39.821507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079929, 35.723042, 39.797543>,  <27.734129, 35.525997, 39.757599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079929, 35.723042, 39.797543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128245, -0.024085, -0.991450,
		-0.485994, 0.869916, -0.083997,
		0.864501, 0.492611, 0.099857,
		28.339279, 35.870827, 39.827499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621677, 36.146065, 39.265137>,  <27.734129, 35.525997, 39.757599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621677, 36.146065, 39.265137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002161, 36.074825, 39.365921>,  <28.230452, 36.032082, 39.426392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002161, 36.074825, 39.365921>,  <27.621677, 36.146065, 39.265137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002161, 36.074825, 39.365921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287706, 0.216873, -0.932841,
		0.111495, 0.959816, 0.257532,
		0.951207, -0.178100, 0.251965,
		28.287523, 36.021397, 39.441509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898367, 36.649387, 38.969219>,  <27.621677, 36.146065, 39.265137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898367, 36.649387, 38.969219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170826, 36.359917, 39.013645>,  <28.334301, 36.186234, 39.040298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170826, 36.359917, 39.013645>,  <27.898367, 36.649387, 38.969219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170826, 36.359917, 39.013645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094999, -0.063053, -0.993479,
		0.725958, 0.687255, 0.025800,
		0.681146, -0.723675, 0.111062,
		28.375170, 36.142815, 39.046963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149519, 36.814812, 38.386372>,  <27.898367, 36.649387, 38.969219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149519, 36.814812, 38.386372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366295, 36.506107, 38.519447>,  <28.496361, 36.320885, 38.599293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366295, 36.506107, 38.519447>,  <28.149519, 36.814812, 38.386372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366295, 36.506107, 38.519447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437259, -0.079131, -0.895848,
		0.717708, 0.630968, 0.294576,
		0.541941, -0.771763, 0.332689,
		28.528877, 36.274578, 38.619255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776321, 36.911186, 38.082695>,  <28.149519, 36.814812, 38.386372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776321, 36.911186, 38.082695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780840, 36.522961, 38.178932>,  <28.783550, 36.290028, 38.236675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780840, 36.522961, 38.178932>,  <28.776321, 36.911186, 38.082695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780840, 36.522961, 38.178932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537842, -0.196943, -0.819719,
		0.842970, 0.138660, 0.519784,
		0.011295, -0.970560, 0.240594,
		28.784229, 36.231792, 38.251110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383127, 36.687229, 37.782978>,  <28.776321, 36.911186, 38.082695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383127, 36.687229, 37.782978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203211, 36.346867, 37.891525>,  <29.095261, 36.142647, 37.956654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203211, 36.346867, 37.891525>,  <29.383127, 36.687229, 37.782978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203211, 36.346867, 37.891525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351567, -0.447989, -0.822014,
		0.821028, -0.274332, 0.500654,
		-0.449792, -0.850910, 0.271365,
		29.068274, 36.091595, 37.972935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877338, 36.131844, 37.907921>,  <29.383127, 36.687229, 37.782978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877338, 36.131844, 37.907921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535440, 35.945202, 37.816978>,  <29.330301, 35.833218, 37.762413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535440, 35.945202, 37.816978>,  <29.877338, 36.131844, 37.907921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535440, 35.945202, 37.816978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460248, -0.478842, -0.747584,
		0.239962, -0.743632, 0.624043,
		-0.854746, -0.466606, -0.227351,
		29.279016, 35.805222, 37.748772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007444, 35.389759, 37.656391>,  <29.877338, 36.131844, 37.907921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007444, 35.389759, 37.656391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661922, 35.508446, 37.493519>,  <29.454609, 35.579659, 37.395794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661922, 35.508446, 37.493519>,  <30.007444, 35.389759, 37.656391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661922, 35.508446, 37.493519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377008, -0.155459, -0.913070,
		-0.334221, -0.942228, 0.022423,
		-0.863806, 0.296714, -0.407185,
		29.402781, 35.597458, 37.371365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685314, 34.806068, 37.324127>,  <30.007444, 35.389759, 37.656391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685314, 34.806068, 37.324127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621691, 35.176582, 37.187489>,  <29.583517, 35.398891, 37.105503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621691, 35.176582, 37.187489>,  <29.685314, 34.806068, 37.324127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621691, 35.176582, 37.187489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584898, -0.190334, -0.788458,
		-0.795358, -0.325211, -0.511511,
		-0.159057, 0.926289, -0.341599,
		29.573973, 35.454468, 37.085011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529129, 34.797115, 36.609295>,  <29.685314, 34.806068, 37.324127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529129, 34.797115, 36.609295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779373, 35.107735, 36.639172>,  <29.929520, 35.294106, 36.657097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779373, 35.107735, 36.639172>,  <29.529129, 34.797115, 36.609295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779373, 35.107735, 36.639172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524406, -0.347717, -0.777233,
		-0.577590, 0.525414, -0.624764,
		0.625610, 0.776552, 0.074693,
		29.967056, 35.340702, 36.661579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823103, 34.213345, 36.162395>,  <29.529129, 34.797115, 36.609295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823103, 34.213345, 36.162395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938419, 33.864544, 36.004154>,  <30.007610, 33.655266, 35.909210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938419, 33.864544, 36.004154>,  <29.823103, 34.213345, 36.162395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938419, 33.864544, 36.004154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942595, 0.185727, 0.277524,
		-0.168526, -0.452904, 0.875487,
		0.288293, -0.872000, -0.395605,
		30.024908, 33.602943, 35.885471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122128, 33.701488, 36.695683>,  <29.823103, 34.213345, 36.162395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122128, 33.701488, 36.695683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289959, 33.647346, 36.336655>,  <30.390657, 33.614861, 36.121239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289959, 33.647346, 36.336655>,  <30.122128, 33.701488, 36.695683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289959, 33.647346, 36.336655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897470, 0.210027, 0.387861,
		0.136013, -0.968280, 0.209604,
		0.419581, -0.135359, -0.897569,
		30.415833, 33.606739, 36.067383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630024, 33.232391, 36.884441>,  <30.122128, 33.701488, 36.695683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630024, 33.232391, 36.884441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720188, 33.435726, 36.551987>,  <30.774286, 33.557728, 36.352512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720188, 33.435726, 36.551987>,  <30.630024, 33.232391, 36.884441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720188, 33.435726, 36.551987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913286, 0.186818, 0.361949,
		0.339261, -0.840653, -0.422143,
		0.225409, 0.508333, -0.831137,
		30.787811, 33.588226, 36.302647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213028, 32.964268, 36.533745>,  <30.630024, 33.232391, 36.884441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213028, 32.964268, 36.533745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149067, 33.356674, 36.489853>,  <31.110691, 33.592117, 36.463516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149067, 33.356674, 36.489853>,  <31.213028, 32.964268, 36.533745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149067, 33.356674, 36.489853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877404, 0.192180, 0.439577,
		0.452320, -0.025987, -0.891477,
		-0.159901, 0.981015, -0.109728,
		31.101097, 33.650978, 36.456936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885544, 33.435085, 36.599804>,  <31.213028, 32.964268, 36.533745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885544, 33.435085, 36.599804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603600, 33.707024, 36.680779>,  <31.434433, 33.870186, 36.729362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603600, 33.707024, 36.680779>,  <31.885544, 33.435085, 36.599804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603600, 33.707024, 36.680779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562822, 0.362302, 0.742946,
		0.431743, 0.637612, -0.638004,
		-0.704861, 0.679844, 0.202441,
		31.392141, 33.910976, 36.741512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234322, 34.116676, 36.636333>,  <31.885544, 33.435085, 36.599804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234322, 34.116676, 36.636333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899233, 34.102924, 36.854340>,  <31.698181, 34.094673, 36.985146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899233, 34.102924, 36.854340>,  <32.234322, 34.116676, 36.636333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899233, 34.102924, 36.854340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426201, 0.582830, 0.691854,
		-0.341440, 0.811866, -0.473594,
		-0.837718, -0.034381, 0.545020,
		31.647917, 34.092609, 37.017845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273556, 34.380123, 37.363224>,  <32.234322, 34.116676, 36.636333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273556, 34.380123, 37.363224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448776, 34.736977, 37.319031>,  <32.553909, 34.951088, 37.292515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448776, 34.736977, 37.319031>,  <32.273556, 34.380123, 37.363224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448776, 34.736977, 37.319031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123195, 0.062165, 0.990433,
		0.890467, -0.447473, -0.082675,
		0.438053, 0.892134, -0.110482,
		32.580193, 35.004616, 37.285885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958309, 34.399300, 37.735325>,  <32.273556, 34.380123, 37.363224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958309, 34.399300, 37.735325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896618, 34.790852, 37.681644>,  <32.859604, 35.025784, 37.649437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896618, 34.790852, 37.681644>,  <32.958309, 34.399300, 37.735325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896618, 34.790852, 37.681644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235016, 0.168274, 0.957315,
		0.959678, 0.116104, -0.256004,
		-0.154227, 0.978879, -0.134202,
		32.850349, 35.084515, 37.641384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553642, 34.760403, 37.941349>,  <32.958309, 34.399300, 37.735325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553642, 34.760403, 37.941349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227020, 34.985218, 37.994026>,  <33.031048, 35.120110, 38.025631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227020, 34.985218, 37.994026>,  <33.553642, 34.760403, 37.941349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227020, 34.985218, 37.994026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240794, 0.124289, 0.962585,
		0.524643, 0.817718, -0.236825,
		-0.816558, 0.562040, 0.131694,
		32.982052, 35.153831, 38.033535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761627, 35.158230, 38.442863>,  <33.553642, 34.760403, 37.941349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761627, 35.158230, 38.442863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368202, 35.228104, 38.424618>,  <33.132145, 35.270027, 38.413670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368202, 35.228104, 38.424618>,  <33.761627, 35.158230, 38.442863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368202, 35.228104, 38.424618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001301, 0.245764, 0.969329,
		0.180540, 0.953459, -0.241499,
		-0.983567, 0.174689, -0.045611,
		33.073132, 35.280510, 38.410934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563633, 35.746319, 38.908649>,  <33.761627, 35.158230, 38.442863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563633, 35.746319, 38.908649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210323, 35.560173, 38.885811>,  <32.998337, 35.448486, 38.872108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210323, 35.560173, 38.885811>,  <33.563633, 35.746319, 38.908649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210323, 35.560173, 38.885811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106364, 0.080275, 0.991082,
		-0.456626, 0.881474, -0.120403,
		-0.883278, -0.465360, -0.057101,
		32.945339, 35.420567, 38.868679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155678, 35.245640, 39.349918>,  <33.563633, 35.746319, 38.908649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155678, 35.245640, 39.349918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794746, 35.335205, 39.497253>,  <32.578190, 35.388943, 39.585655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794746, 35.335205, 39.497253>,  <33.155678, 35.245640, 39.349918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794746, 35.335205, 39.497253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358069, 0.086403, -0.929689,
		-0.239994, -0.970772, 0.002212,
		-0.902325, 0.223911, 0.368339,
		32.524048, 35.402378, 39.607754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549072, 34.688370, 39.196316>,  <33.155678, 35.245640, 39.349918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549072, 34.688370, 39.196316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472004, 35.080708, 39.207851>,  <32.425762, 35.316109, 39.214775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472004, 35.080708, 39.207851>,  <32.549072, 34.688370, 39.196316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472004, 35.080708, 39.207851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195784, -0.009623, -0.980600,
		-0.961534, -0.194577, 0.193886,
		-0.192668, 0.980840, 0.028843,
		32.414204, 35.374958, 39.216503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144176, 34.903522, 38.594654>,  <32.549072, 34.688370, 39.196316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144176, 34.903522, 38.594654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323177, 35.245949, 38.698105>,  <32.430580, 35.451405, 38.760174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323177, 35.245949, 38.698105>,  <32.144176, 34.903522, 38.594654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323177, 35.245949, 38.698105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035904, 0.271770, -0.961692,
		-0.893560, 0.439649, 0.090883,
		0.447507, 0.856066, 0.258627,
		32.457428, 35.502769, 38.775692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784807, 35.547020, 38.240349>,  <32.144176, 34.903522, 38.594654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784807, 35.547020, 38.240349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178947, 35.562771, 38.306721>,  <32.415432, 35.572220, 38.346542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178947, 35.562771, 38.306721>,  <31.784807, 35.547020, 38.240349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178947, 35.562771, 38.306721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158018, 0.155109, -0.975178,
		-0.064138, 0.987112, 0.146614,
		0.985351, 0.039379, 0.165930,
		32.474552, 35.574585, 38.356499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064491, 36.074249, 37.920307>,  <31.784807, 35.547020, 38.240349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064491, 36.074249, 37.920307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357658, 35.806087, 37.966599>,  <32.533558, 35.645191, 37.994373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357658, 35.806087, 37.966599>,  <32.064491, 36.074249, 37.920307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357658, 35.806087, 37.966599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197018, 0.046345, -0.979304,
		0.651163, 0.740550, 0.166048,
		0.732919, -0.670401, 0.115724,
		32.577534, 35.604969, 38.001316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617340, 36.329662, 37.615055>,  <32.064491, 36.074249, 37.920307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617340, 36.329662, 37.615055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680809, 35.935970, 37.646347>,  <32.718891, 35.699757, 37.665123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680809, 35.935970, 37.646347>,  <32.617340, 36.329662, 37.615055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680809, 35.935970, 37.646347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070269, -0.067772, -0.995224,
		0.984828, 0.163408, 0.058407,
		0.158669, -0.984228, 0.078226,
		32.728409, 35.640701, 37.669815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215279, 36.192142, 37.320580>,  <32.617340, 36.329662, 37.615055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215279, 36.192142, 37.320580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007801, 35.850178, 37.316914>,  <32.883312, 35.645000, 37.314716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007801, 35.850178, 37.316914>,  <33.215279, 36.192142, 37.320580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007801, 35.850178, 37.316914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100774, -0.050496, -0.993627,
		0.848998, -0.516315, 0.112345,
		-0.518697, -0.854909, -0.009160,
		32.852192, 35.593704, 37.314167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522125, 36.831684, 37.462742>,  <33.215279, 36.192142, 37.320580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522125, 36.831684, 37.462742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802849, 36.850636, 37.178425>,  <33.971283, 36.862007, 37.007835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802849, 36.850636, 37.178425>,  <33.522125, 36.831684, 37.462742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802849, 36.850636, 37.178425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615904, 0.541732, -0.572003,
		0.357956, 0.839214, 0.409374,
		0.701804, 0.047383, -0.710792,
		34.013390, 36.864849, 36.965187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548023, 36.980446, 36.689362>,  <33.522125, 36.831684, 37.462742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548023, 36.980446, 36.689362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420292, 37.351612, 36.612427>,  <33.343651, 37.574314, 36.566265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420292, 37.351612, 36.612427>,  <33.548023, 36.980446, 36.689362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420292, 37.351612, 36.612427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734204, -0.370579, -0.568872,
		-0.599143, -0.040445, 0.799620,
		-0.319331, 0.927920, -0.192335,
		33.324493, 37.629990, 36.554726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836830, 36.877239, 36.515156>,  <33.548023, 36.980446, 36.689362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836830, 36.877239, 36.515156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885921, 37.262463, 36.419277>,  <32.915375, 37.493599, 36.361752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885921, 37.262463, 36.419277>,  <32.836830, 36.877239, 36.515156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885921, 37.262463, 36.419277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616049, -0.115429, -0.779205,
		-0.778089, 0.243292, 0.579126,
		0.122726, 0.963060, -0.239694,
		32.922741, 37.551380, 36.347370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266396, 37.135983, 36.680325>,  <32.836830, 36.877239, 36.515156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266396, 37.135983, 36.680325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415447, 37.369797, 36.392029>,  <32.504879, 37.510086, 36.219051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415447, 37.369797, 36.392029>,  <32.266396, 37.135983, 36.680325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415447, 37.369797, 36.392029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736844, -0.285749, -0.612706,
		-0.564097, 0.759388, 0.324229,
		0.372634, 0.584532, -0.720740,
		32.527237, 37.545155, 36.175808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694363, 37.402203, 36.344250>,  <32.266396, 37.135983, 36.680325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694363, 37.402203, 36.344250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992216, 37.427387, 36.078453>,  <32.170929, 37.442497, 35.918976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992216, 37.427387, 36.078453>,  <31.694363, 37.402203, 36.344250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992216, 37.427387, 36.078453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640744, -0.211472, -0.738056,
		-0.186994, 0.975354, -0.117125,
		0.744634, 0.062965, -0.664496,
		32.215607, 37.446278, 35.879105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464338, 37.817165, 35.820019>,  <31.694363, 37.402203, 36.344250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464338, 37.817165, 35.820019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770916, 37.627323, 35.646900>,  <31.954863, 37.513416, 35.543030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770916, 37.627323, 35.646900>,  <31.464338, 37.817165, 35.820019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770916, 37.627323, 35.646900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534181, -0.096820, -0.839808,
		0.356675, 0.874857, -0.327733,
		0.766442, -0.474607, -0.432798,
		32.000847, 37.484940, 35.517059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563538, 38.125229, 35.199875>,  <31.464338, 37.817165, 35.820019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563538, 38.125229, 35.199875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725567, 37.760323, 35.175575>,  <31.822784, 37.541378, 35.160995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725567, 37.760323, 35.175575>,  <31.563538, 38.125229, 35.199875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725567, 37.760323, 35.175575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239507, -0.041754, -0.969996,
		0.882356, 0.407471, -0.235406,
		0.405074, -0.912263, -0.060750,
		31.847090, 37.486645, 35.157349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989414, 38.226810, 34.622231>,  <31.563538, 38.125229, 35.199875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989414, 38.226810, 34.622231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933952, 37.840248, 34.708794>,  <31.900675, 37.608311, 34.760731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933952, 37.840248, 34.708794>,  <31.989414, 38.226810, 34.622231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933952, 37.840248, 34.708794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218591, -0.183266, -0.958453,
		0.965915, -0.180201, -0.185837,
		-0.138657, -0.966407, 0.216410,
		31.892355, 37.550327, 34.773716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251423, 37.886311, 34.063274>,  <31.989414, 38.226810, 34.622231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251423, 37.886311, 34.063274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002483, 37.615273, 34.220016>,  <31.853121, 37.452648, 34.314060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002483, 37.615273, 34.220016>,  <32.251423, 37.886311, 34.063274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002483, 37.615273, 34.220016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318285, -0.238293, -0.917557,
		0.715108, -0.695761, -0.067367,
		-0.622347, -0.677595, 0.391855,
		31.815779, 37.411995, 34.337574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391094, 37.324753, 33.650433>,  <32.251423, 37.886311, 34.063274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391094, 37.324753, 33.650433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028820, 37.279709, 33.813919>,  <31.811455, 37.252682, 33.912010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028820, 37.279709, 33.813919>,  <32.391094, 37.324753, 33.650433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028820, 37.279709, 33.813919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381486, -0.204052, -0.901572,
		0.184924, -0.972462, 0.141848,
		-0.905688, -0.112610, 0.408714,
		31.757113, 37.245926, 33.936535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134598, 36.782360, 33.327835>,  <32.391094, 37.324753, 33.650433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134598, 36.782360, 33.327835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798594, 36.955814, 33.458279>,  <31.596992, 37.059887, 33.536545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798594, 36.955814, 33.458279>,  <32.134598, 36.782360, 33.327835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798594, 36.955814, 33.458279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380390, -0.042087, -0.923868,
		-0.386901, -0.900103, 0.200305,
		-0.840006, 0.433640, 0.326107,
		31.546591, 37.085907, 33.556110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599998, 36.379616, 33.107899>,  <32.134598, 36.782360, 33.327835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599998, 36.379616, 33.107899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390808, 36.708561, 33.197529>,  <31.265293, 36.905930, 33.251308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390808, 36.708561, 33.197529>,  <31.599998, 36.379616, 33.107899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390808, 36.708561, 33.197529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469140, -0.058237, -0.881202,
		-0.711620, -0.565972, 0.416261,
		-0.522977, 0.822365, 0.224078,
		31.233915, 36.955269, 33.264751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937256, 36.195648, 33.040752>,  <31.599998, 36.379616, 33.107899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937256, 36.195648, 33.040752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986290, 36.589638, 32.992077>,  <31.015711, 36.826031, 32.962872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986290, 36.589638, 32.992077>,  <30.937256, 36.195648, 33.040752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986290, 36.589638, 32.992077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456445, -0.052926, -0.888176,
		-0.881267, 0.164421, 0.443096,
		0.122584, 0.984969, -0.121692,
		31.023066, 36.885128, 32.955570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275587, 36.332600, 32.731915>,  <30.937256, 36.195648, 33.040752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275587, 36.332600, 32.731915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505358, 36.657253, 32.689423>,  <30.643221, 36.852047, 32.663929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505358, 36.657253, 32.689423>,  <30.275587, 36.332600, 32.731915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505358, 36.657253, 32.689423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369722, 0.141479, -0.918308,
		-0.730301, 0.566776, 0.381348,
		0.574427, 0.811634, -0.106227,
		30.677687, 36.900742, 32.657555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785112, 36.945007, 32.601097>,  <30.275587, 36.332600, 32.731915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785112, 36.945007, 32.601097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143629, 37.036343, 32.449032>,  <30.358740, 37.091145, 32.357792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143629, 37.036343, 32.449032>,  <29.785112, 36.945007, 32.601097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143629, 37.036343, 32.449032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435051, 0.286552, -0.853591,
		-0.085970, 0.930457, 0.356172,
		0.896292, 0.228336, -0.380162,
		30.412518, 37.104843, 32.334984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763939, 37.623409, 32.228676>,  <29.785112, 36.945007, 32.601097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763939, 37.623409, 32.228676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090164, 37.454105, 32.070835>,  <30.285898, 37.352524, 31.976131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090164, 37.454105, 32.070835>,  <29.763939, 37.623409, 32.228676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090164, 37.454105, 32.070835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260552, 0.340277, -0.903507,
		0.516693, 0.839679, 0.167235,
		0.815562, -0.423262, -0.394599,
		30.334833, 37.327126, 31.952456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021664, 38.239449, 31.877731>,  <29.763939, 37.623409, 32.228676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021664, 38.239449, 31.877731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148891, 37.884769, 31.743511>,  <30.225229, 37.671963, 31.662979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148891, 37.884769, 31.743511>,  <30.021664, 38.239449, 31.877731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148891, 37.884769, 31.743511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300505, 0.241391, -0.922728,
		0.899181, 0.394329, -0.189678,
		0.318072, -0.886699, -0.335552,
		30.244312, 37.618759, 31.642845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087786, 38.507401, 31.234327>,  <30.021664, 38.239449, 31.877731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087786, 38.507401, 31.234327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140261, 38.113102, 31.192213>,  <30.171745, 37.876522, 31.166945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140261, 38.113102, 31.192213>,  <30.087786, 38.507401, 31.234327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140261, 38.113102, 31.192213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289177, 0.063533, -0.955165,
		0.948244, 0.155751, -0.276722,
		0.131187, -0.985751, -0.105284,
		30.179617, 37.817375, 31.160627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649574, 38.406357, 30.641474>,  <30.087786, 38.507401, 31.234327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649574, 38.406357, 30.641474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386721, 38.107403, 30.680662>,  <30.229010, 37.928032, 30.704174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386721, 38.107403, 30.680662>,  <30.649574, 38.406357, 30.641474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386721, 38.107403, 30.680662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149524, 0.001859, -0.988756,
		0.738796, -0.664392, -0.112973,
		-0.657132, -0.747382, 0.097969,
		30.189581, 37.883190, 30.710052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925562, 38.010693, 30.193169>,  <30.649574, 38.406357, 30.641474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925562, 38.010693, 30.193169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559851, 37.869526, 30.272711>,  <30.340424, 37.784824, 30.320436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559851, 37.869526, 30.272711>,  <30.925562, 38.010693, 30.193169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559851, 37.869526, 30.272711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203055, -0.025493, -0.978835,
		0.350521, -0.935306, -0.048355,
		-0.914277, -0.352921, 0.198855,
		30.285568, 37.763649, 30.332367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909792, 37.467941, 29.785608>,  <30.925562, 38.010693, 30.193169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909792, 37.467941, 29.785608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539093, 37.579079, 29.886755>,  <30.316673, 37.645763, 29.947443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539093, 37.579079, 29.886755>,  <30.909792, 37.467941, 29.785608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539093, 37.579079, 29.886755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285344, -0.082753, -0.954846,
		-0.244376, -0.957054, 0.155973,
		-0.926747, 0.277847, 0.252867,
		30.261068, 37.662434, 29.962616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509760, 36.960190, 29.593098>,  <30.909792, 37.467941, 29.785608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509760, 36.960190, 29.593098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269939, 37.280174, 29.602827>,  <30.126047, 37.472164, 29.608665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269939, 37.280174, 29.602827>,  <30.509760, 36.960190, 29.593098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269939, 37.280174, 29.602827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363295, -0.244947, -0.898898,
		-0.713130, -0.547774, 0.437482,
		-0.599552, 0.799966, 0.024324,
		30.090073, 37.520164, 29.610125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932314, 36.722988, 29.268055>,  <30.509760, 36.960190, 29.593098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932314, 36.722988, 29.268055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898029, 37.121513, 29.269583>,  <29.877459, 37.360630, 29.270500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898029, 37.121513, 29.269583>,  <29.932314, 36.722988, 29.268055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898029, 37.121513, 29.269583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162027, -0.010156, -0.986734,
		-0.983057, -0.085193, 0.162300,
		-0.085712, 0.996313, 0.003820,
		29.872316, 37.420406, 29.270729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286915, 36.977821, 28.818407>,  <29.932314, 36.722988, 29.268055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286915, 36.977821, 28.818407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503269, 37.313370, 28.842857>,  <29.633081, 37.514698, 28.857527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503269, 37.313370, 28.842857>,  <29.286915, 36.977821, 28.818407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503269, 37.313370, 28.842857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202971, 0.200704, -0.958395,
		-0.816238, 0.505976, 0.278825,
		0.540887, 0.838871, 0.061124,
		29.665535, 37.565033, 28.861195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941685, 37.466400, 28.534943>,  <29.286915, 36.977821, 28.818407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941685, 37.466400, 28.534943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316961, 37.602886, 28.511715>,  <29.542128, 37.684776, 28.497778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316961, 37.602886, 28.511715>,  <28.941685, 37.466400, 28.534943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316961, 37.602886, 28.511715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094045, 0.089851, -0.991505,
		-0.333098, 0.935681, 0.116387,
		0.938190, 0.341214, -0.058067,
		29.598419, 37.705250, 28.494295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958399, 38.045570, 28.137913>,  <28.941685, 37.466400, 28.534943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958399, 38.045570, 28.137913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339937, 37.926800, 28.119967>,  <29.568861, 37.855537, 28.109200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339937, 37.926800, 28.119967>,  <28.958399, 38.045570, 28.137913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339937, 37.926800, 28.119967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028292, 0.237597, -0.970952,
		0.298958, 0.924870, 0.235032,
		0.953847, -0.296923, -0.044865,
		29.626091, 37.837723, 28.106506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320356, 38.575203, 27.723066>,  <28.958399, 38.045570, 28.137913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320356, 38.575203, 27.723066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561499, 38.256821, 27.701117>,  <29.706184, 38.065792, 27.687946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561499, 38.256821, 27.701117>,  <29.320356, 38.575203, 27.723066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561499, 38.256821, 27.701117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142049, 0.174761, -0.974311,
		0.785102, 0.579576, 0.218421,
		0.602858, -0.795959, -0.054877,
		29.742355, 38.018032, 27.684654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863234, 38.768326, 27.254927>,  <29.320356, 38.575203, 27.723066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863234, 38.768326, 27.254927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829363, 38.369778, 27.258245>,  <29.809040, 38.130650, 27.260237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829363, 38.369778, 27.258245>,  <29.863234, 38.768326, 27.254927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829363, 38.369778, 27.258245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091617, -0.016078, -0.995665,
		0.992188, -0.083549, 0.092646,
		-0.084676, -0.996374, 0.008298,
		29.803961, 38.070866, 27.260735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347036, 38.496265, 26.753258>,  <29.863234, 38.768326, 27.254927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347036, 38.496265, 26.753258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160004, 38.147457, 26.811155>,  <30.047783, 37.938171, 26.845894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160004, 38.147457, 26.811155>,  <30.347036, 38.496265, 26.753258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160004, 38.147457, 26.811155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052496, -0.190852, -0.980214,
		0.882389, -0.450733, 0.135017,
		-0.467583, -0.872018, 0.144744,
		30.019730, 37.885853, 26.854578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697975, 37.973282, 26.404669>,  <30.347036, 38.496265, 26.753258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697975, 37.973282, 26.404669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321875, 37.842838, 26.443811>,  <30.096214, 37.764572, 26.467297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321875, 37.842838, 26.443811>,  <30.697975, 37.973282, 26.404669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321875, 37.842838, 26.443811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040646, -0.177842, -0.983219,
		0.338044, -0.928452, 0.153961,
		-0.940252, -0.326114, 0.097856,
		30.039799, 37.745003, 26.473167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628834, 37.324829, 26.151257>,  <30.697975, 37.973282, 26.404669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628834, 37.324829, 26.151257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255365, 37.468048, 26.148149>,  <30.031284, 37.553978, 26.146284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255365, 37.468048, 26.148149>,  <30.628834, 37.324829, 26.151257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255365, 37.468048, 26.148149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102074, -0.286845, -0.952523,
		-0.343279, -0.888550, 0.304367,
		-0.933670, 0.358049, -0.007770,
		29.975264, 37.575462, 26.145819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301552, 36.806061, 25.715273>,  <30.628834, 37.324829, 26.151257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301552, 36.806061, 25.715273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033497, 37.101627, 25.743319>,  <29.872663, 37.278969, 25.760145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033497, 37.101627, 25.743319>,  <30.301552, 36.806061, 25.715273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033497, 37.101627, 25.743319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343132, -0.224650, -0.912027,
		-0.658163, -0.635240, 0.404093,
		-0.670136, 0.738919, 0.070115,
		29.832457, 37.323303, 25.764353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544594, 36.511765, 25.523304>,  <30.301552, 36.806061, 25.715273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544594, 36.511765, 25.523304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519732, 36.907726, 25.472361>,  <29.504814, 37.145306, 25.441795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519732, 36.907726, 25.472361>,  <29.544594, 36.511765, 25.523304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519732, 36.907726, 25.472361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467492, -0.141617, -0.872580,
		-0.881809, 0.005303, 0.471576,
		-0.062156, 0.989908, -0.127358,
		29.501085, 37.204697, 25.434153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774141, 36.730019, 25.391779>,  <29.544594, 36.511765, 25.523304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774141, 36.730019, 25.391779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987057, 37.040894, 25.257528>,  <29.114805, 37.227421, 25.176979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987057, 37.040894, 25.257528>,  <28.774141, 36.730019, 25.391779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987057, 37.040894, 25.257528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534113, 0.000720, -0.845413,
		-0.656806, 0.629264, 0.415491,
		0.532287, 0.777191, -0.335624,
		29.146744, 37.274052, 25.156841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277832, 37.111282, 25.063688>,  <28.774141, 36.730019, 25.391779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277832, 37.111282, 25.063688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611958, 37.281929, 24.924980>,  <28.812433, 37.384315, 24.841755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611958, 37.281929, 24.924980>,  <28.277832, 37.111282, 25.063688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611958, 37.281929, 24.924980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460637, 0.198795, -0.865040,
		-0.300100, 0.882317, 0.362570,
		0.835316, 0.426612, -0.346769,
		28.862553, 37.409912, 24.820950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998861, 37.667950, 24.675720>,  <28.277832, 37.111282, 25.063688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998861, 37.667950, 24.675720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364559, 37.618893, 24.521255>,  <28.583977, 37.589458, 24.428577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364559, 37.618893, 24.521255>,  <27.998861, 37.667950, 24.675720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364559, 37.618893, 24.521255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367021, 0.153048, -0.917536,
		0.171626, 0.980579, 0.094912,
		0.914243, -0.122639, -0.386161,
		28.638832, 37.582100, 24.405407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212843, 38.267033, 24.163937>,  <27.998861, 37.667950, 24.675720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212843, 38.267033, 24.163937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402145, 37.931137, 24.057457>,  <28.515728, 37.729599, 23.993568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402145, 37.931137, 24.057457>,  <28.212843, 38.267033, 24.163937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402145, 37.931137, 24.057457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249404, 0.162098, -0.954737,
		0.844882, 0.518228, -0.132720,
		0.473258, -0.839740, -0.266201,
		28.544123, 37.679214, 23.977596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660927, 38.556194, 23.722610>,  <28.212843, 38.267033, 24.163937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660927, 38.556194, 23.722610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608097, 38.165188, 23.656857>,  <28.576399, 37.930584, 23.617405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608097, 38.165188, 23.656857>,  <28.660927, 38.556194, 23.722610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608097, 38.165188, 23.656857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250701, 0.193387, -0.948552,
		0.959013, -0.084067, -0.270605,
		-0.132073, -0.977514, -0.164385,
		28.568476, 37.871933, 23.607542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971422, 38.433826, 23.129372>,  <28.660927, 38.556194, 23.722610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971422, 38.433826, 23.129372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754204, 38.098103, 23.139614>,  <28.623873, 37.896667, 23.145760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754204, 38.098103, 23.139614>,  <28.971422, 38.433826, 23.129372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754204, 38.098103, 23.139614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154749, 0.070058, -0.985467,
		0.825321, -0.539116, -0.167927,
		-0.543045, -0.839313, 0.025607,
		28.591290, 37.846310, 23.147297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163641, 38.025211, 22.571663>,  <28.971422, 38.433826, 23.129372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163641, 38.025211, 22.571663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783173, 37.926399, 22.645691>,  <28.554892, 37.867111, 22.690107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783173, 37.926399, 22.645691>,  <29.163641, 38.025211, 22.571663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783173, 37.926399, 22.645691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239662, 0.213208, -0.947156,
		0.194504, -0.945265, -0.261998,
		-0.951173, -0.247017, 0.185074,
		28.497822, 37.852291, 22.701212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011486, 37.875118, 21.901960>,  <29.163641, 38.025211, 22.571663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011486, 37.875118, 21.901960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656815, 37.891476, 22.086191>,  <28.444012, 37.901291, 22.196730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656815, 37.891476, 22.086191>,  <29.011486, 37.875118, 21.901960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656815, 37.891476, 22.086191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391284, 0.464382, -0.794510,
		-0.246373, -0.884690, -0.395756,
		-0.886677, 0.040893, 0.460577,
		28.390812, 37.903744, 22.224363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545765, 37.709698, 21.378347>,  <29.011486, 37.875118, 21.901960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545765, 37.709698, 21.378347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352070, 37.908962, 21.666056>,  <28.235853, 38.028522, 21.838680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352070, 37.908962, 21.666056>,  <28.545765, 37.709698, 21.378347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352070, 37.908962, 21.666056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449992, 0.563216, -0.693033,
		-0.750347, -0.659258, -0.048561,
		-0.484237, 0.498163, 0.719269,
		28.206799, 38.058411, 21.881836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823095, 37.752617, 21.244637>,  <28.545765, 37.709698, 21.378347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823095, 37.752617, 21.244637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862888, 38.081566, 21.468712>,  <27.886765, 38.278934, 21.603157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862888, 38.081566, 21.468712>,  <27.823095, 37.752617, 21.244637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862888, 38.081566, 21.468712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618373, 0.492162, -0.612692,
		-0.779563, -0.285453, 0.557493,
		0.099482, 0.822370, 0.560188,
		27.892733, 38.328278, 21.636768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204760, 37.982876, 21.208855>,  <27.823095, 37.752617, 21.244637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204760, 37.982876, 21.208855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408712, 38.314091, 21.302122>,  <27.531084, 38.512821, 21.358082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408712, 38.314091, 21.302122>,  <27.204760, 37.982876, 21.208855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408712, 38.314091, 21.302122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537147, 0.518173, -0.665560,
		-0.671933, 0.214110, 0.708987,
		0.509881, 0.828042, 0.233169,
		27.561676, 38.562504, 21.372072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747217, 38.518070, 21.319527>,  <27.204760, 37.982876, 21.208855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747217, 38.518070, 21.319527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082258, 38.712925, 21.220636>,  <27.283283, 38.829838, 21.161303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082258, 38.712925, 21.220636>,  <26.747217, 38.518070, 21.319527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082258, 38.712925, 21.220636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518094, 0.564876, -0.642257,
		-0.173217, 0.666041, 0.725524,
		0.837600, 0.487140, -0.247226,
		27.333538, 38.859066, 21.146469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587624, 39.295448, 21.391161>,  <26.747217, 38.518070, 21.319527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587624, 39.295448, 21.391161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889561, 39.219440, 21.140051>,  <27.070723, 39.173836, 20.989386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889561, 39.219440, 21.140051>,  <26.587624, 39.295448, 21.391161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889561, 39.219440, 21.140051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453172, 0.540843, -0.708607,
		0.474179, 0.819378, 0.322140,
		0.754844, -0.190021, -0.627776,
		27.116014, 39.162434, 20.951717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740696, 39.900101, 21.010004>,  <26.587624, 39.295448, 21.391161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740696, 39.900101, 21.010004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828897, 39.567318, 20.806349>,  <26.881819, 39.367649, 20.684156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828897, 39.567318, 20.806349>,  <26.740696, 39.900101, 21.010004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.828897, 39.567318, 20.806349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395187, 0.401020, -0.826445,
		0.891743, 0.383439, -0.240354,
		0.220504, -0.831960, -0.509136,
		26.895048, 39.317730, 20.653608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165911, 40.173363, 20.328096>,  <26.740696, 39.900101, 21.010004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165911, 40.173363, 20.328096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965548, 39.830868, 20.277588>,  <26.845329, 39.625370, 20.247284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965548, 39.830868, 20.277588>,  <27.165911, 40.173363, 20.328096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965548, 39.830868, 20.277588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252603, 0.284170, -0.924900,
		0.827819, -0.431393, -0.358631,
		-0.500907, -0.856241, -0.126270,
		26.815275, 39.573997, 20.239706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437071, 39.887966, 19.640766>,  <27.165911, 40.173363, 20.328096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437071, 39.887966, 19.640766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062794, 39.751556, 19.676939>,  <26.838228, 39.669708, 19.698643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062794, 39.751556, 19.676939>,  <27.437071, 39.887966, 19.640766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062794, 39.751556, 19.676939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238673, 0.423062, -0.874102,
		0.259833, -0.839476, -0.477250,
		-0.935693, -0.341027, 0.090435,
		26.782085, 39.649246, 19.704069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069635, 39.658989, 19.253223>,  <27.437071, 39.887966, 19.640766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069635, 39.658989, 19.253223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.227228, 39.928619, 19.003298>,  <28.321783, 40.090397, 18.853342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.227228, 39.928619, 19.003298>,  <28.069635, 39.658989, 19.253223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227228, 39.928619, 19.003298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620196, -0.696682, -0.360544,
		-0.678333, -0.245460, -0.692542,
		0.393982, 0.674080, -0.624815,
		28.345423, 40.130844, 18.815853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188108, 40.317020, 19.742651>,  <28.069635, 39.658989, 19.253223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188108, 40.317020, 19.742651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855171, 40.518108, 19.836012>,  <27.655409, 40.638760, 19.892029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855171, 40.518108, 19.836012>,  <28.188108, 40.317020, 19.742651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855171, 40.518108, 19.836012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023734, 0.453053, -0.891168,
		-0.553750, -0.736219, -0.389028,
		-0.832345, 0.502717, 0.233404,
		27.605467, 40.668922, 19.906033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444811, 40.677959, 20.408899>,  <28.188108, 40.317020, 19.742651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444811, 40.677959, 20.408899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620956, 40.848713, 20.724834>,  <28.726645, 40.951164, 20.914396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620956, 40.848713, 20.724834>,  <28.444811, 40.677959, 20.408899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620956, 40.848713, 20.724834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531715, -0.832862, 0.153690,
		0.723435, 0.352289, -0.593747,
		0.440366, 0.426888, 0.789838,
		28.753067, 40.976780, 20.961786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229708, 40.618244, 20.528084>,  <28.444811, 40.677959, 20.408899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229708, 40.618244, 20.528084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127279, 40.744682, 20.893490>,  <29.065823, 40.820545, 21.112734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127279, 40.744682, 20.893490>,  <29.229708, 40.618244, 20.528084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127279, 40.744682, 20.893490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750687, -0.530354, 0.393946,
		0.609012, 0.786642, -0.101481,
		-0.256073, 0.316098, 0.913514,
		29.050457, 40.839512, 21.167543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782536, 40.908501, 20.856993>,  <29.229708, 40.618244, 20.528084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782536, 40.908501, 20.856993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535112, 40.750259, 21.128546>,  <29.386658, 40.655315, 21.291477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535112, 40.750259, 21.128546>,  <29.782536, 40.908501, 20.856993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535112, 40.750259, 21.128546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761044, -0.516549, 0.392414,
		0.195436, 0.759391, 0.620588,
		-0.618560, -0.395603, 0.678883,
		29.349545, 40.631577, 21.332211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135637, 41.062668, 21.578968>,  <29.782536, 40.908501, 20.856993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135637, 41.062668, 21.578968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872734, 40.761833, 21.598461>,  <29.714993, 40.581333, 21.610157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872734, 40.761833, 21.598461>,  <30.135637, 41.062668, 21.578968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872734, 40.761833, 21.598461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549033, -0.433502, 0.714590,
		-0.516311, 0.496424, 0.697844,
		-0.657256, -0.752090, 0.048731,
		29.675558, 40.536205, 21.613081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961987, 40.939026, 22.304853>,  <30.135637, 41.062668, 21.578968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961987, 40.939026, 22.304853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864820, 40.592392, 22.130487>,  <29.806520, 40.384411, 22.025867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864820, 40.592392, 22.130487>,  <29.961987, 40.939026, 22.304853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864820, 40.592392, 22.130487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438094, -0.498941, 0.747751,
		-0.865486, -0.009332, 0.500846,
		-0.242914, -0.866586, -0.435915,
		29.791946, 40.332417, 21.999714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613224, 40.587677, 22.834692>,  <29.961987, 40.939026, 22.304853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613224, 40.587677, 22.834692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763107, 40.341667, 22.557175>,  <29.853037, 40.194061, 22.390665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763107, 40.341667, 22.557175>,  <29.613224, 40.587677, 22.834692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763107, 40.341667, 22.557175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373785, -0.584592, 0.720095,
		-0.848458, -0.529152, 0.010835,
		0.374706, -0.615020, -0.693791,
		29.875519, 40.157162, 22.349037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439798, 40.008289, 22.956450>,  <29.613224, 40.587677, 22.834692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439798, 40.008289, 22.956450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769745, 39.948326, 22.738415>,  <29.967712, 39.912350, 22.607594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769745, 39.948326, 22.738415>,  <29.439798, 40.008289, 22.956450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769745, 39.948326, 22.738415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363748, -0.597363, 0.714734,
		-0.432759, -0.787836, -0.438217,
		0.824868, -0.149907, -0.545088,
		30.017204, 39.903355, 22.574888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676004, 39.322659, 23.110998>,  <29.439798, 40.008289, 22.956450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676004, 39.322659, 23.110998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996521, 39.498989, 22.949207>,  <30.188831, 39.604786, 22.852133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996521, 39.498989, 22.949207>,  <29.676004, 39.322659, 23.110998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996521, 39.498989, 22.949207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587502, -0.452084, 0.671165,
		0.113008, -0.775431, -0.621237,
		0.801293, 0.440825, -0.404478,
		30.236910, 39.631237, 22.827864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292177, 38.806221, 23.187981>,  <29.676004, 39.322659, 23.110998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292177, 38.806221, 23.187981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471121, 39.159271, 23.130232>,  <30.578487, 39.371101, 23.095583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471121, 39.159271, 23.130232>,  <30.292177, 38.806221, 23.187981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471121, 39.159271, 23.130232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592052, -0.171273, 0.787490,
		0.670332, -0.437766, -0.599180,
		0.447359, 0.882625, -0.144371,
		30.605330, 39.424057, 23.086920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028234, 38.652782, 23.169279>,  <30.292177, 38.806221, 23.187981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028234, 38.652782, 23.169279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999563, 39.046131, 23.236025>,  <30.982361, 39.282139, 23.276072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999563, 39.046131, 23.236025>,  <31.028234, 38.652782, 23.169279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999563, 39.046131, 23.236025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802797, -0.042402, 0.594742,
		0.591928, 0.176587, -0.786408,
		-0.071678, 0.983371, 0.166863,
		30.978060, 39.341141, 23.286083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655436, 38.926308, 23.161116>,  <31.028234, 38.652782, 23.169279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655436, 38.926308, 23.161116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468414, 39.205292, 23.378351>,  <31.356201, 39.372681, 23.508694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468414, 39.205292, 23.378351>,  <31.655436, 38.926308, 23.161116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468414, 39.205292, 23.378351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668361, -0.123164, 0.733570,
		0.578524, 0.705962, -0.408568,
		-0.467551, 0.697459, 0.543090,
		31.328150, 39.414528, 23.541279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138611, 39.370407, 23.476793>,  <31.655436, 38.926308, 23.161116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138611, 39.370407, 23.476793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810884, 39.411171, 23.702477>,  <31.614248, 39.435631, 23.837887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810884, 39.411171, 23.702477>,  <32.138611, 39.370407, 23.476793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810884, 39.411171, 23.702477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563682, -0.036655, 0.825178,
		0.104778, 0.994118, -0.027414,
		-0.819319, 0.101914, 0.564207,
		31.565088, 39.441746, 23.871738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483856, 39.474445, 24.106745>,  <32.138611, 39.370407, 23.476793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483856, 39.474445, 24.106745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107475, 39.446781, 24.239300>,  <31.881645, 39.430183, 24.318832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107475, 39.446781, 24.239300>,  <32.483856, 39.474445, 24.106745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107475, 39.446781, 24.239300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338081, -0.242280, 0.909397,
		0.017398, 0.967739, 0.251355,
		-0.940956, -0.069157, 0.331389,
		31.825188, 39.426033, 24.338717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456699, 40.050816, 24.607359>,  <32.483856, 39.474445, 24.106745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456699, 40.050816, 24.607359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193512, 39.753933, 24.658293>,  <32.035599, 39.575806, 24.688854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193512, 39.753933, 24.658293>,  <32.456699, 40.050816, 24.607359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193512, 39.753933, 24.658293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179115, 0.009995, 0.983777,
		-0.731436, 0.670100, 0.126363,
		-0.657966, -0.742204, 0.127336,
		31.996122, 39.531273, 24.696493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006859, 40.200253, 25.270992>,  <32.456699, 40.050816, 24.607359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006859, 40.200253, 25.270992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978510, 39.808826, 25.193653>,  <31.961500, 39.573971, 25.147249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978510, 39.808826, 25.193653>,  <32.006859, 40.200253, 25.270992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978510, 39.808826, 25.193653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154259, -0.202256, 0.967107,
		-0.985485, 0.038717, 0.165288,
		-0.070874, -0.978567, -0.193348,
		31.957247, 39.515255, 25.135649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534910, 39.939114, 25.853613>,  <32.006859, 40.200253, 25.270992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534910, 39.939114, 25.853613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726923, 39.617062, 25.714283>,  <31.842131, 39.423828, 25.630684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726923, 39.617062, 25.714283>,  <31.534910, 39.939114, 25.853613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726923, 39.617062, 25.714283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058674, -0.366710, 0.928483,
		-0.875287, -0.466139, -0.128792,
		0.480032, -0.805132, -0.348327,
		31.870932, 39.375523, 25.609785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208591, 39.389393, 26.192938>,  <31.534910, 39.939114, 25.853613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208591, 39.389393, 26.192938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586447, 39.299335, 26.097466>,  <31.813160, 39.245300, 26.040182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586447, 39.299335, 26.097466>,  <31.208591, 39.389393, 26.192938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586447, 39.299335, 26.097466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126011, -0.422713, 0.897461,
		-0.302949, -0.877852, -0.370941,
		0.944639, -0.225143, -0.238679,
		31.869839, 39.231792, 26.025862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288122, 38.798691, 26.494974>,  <31.208591, 39.389393, 26.192938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288122, 38.798691, 26.494974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657633, 38.922787, 26.405184>,  <31.879339, 38.997246, 26.351311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657633, 38.922787, 26.405184>,  <31.288122, 38.798691, 26.494974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657633, 38.922787, 26.405184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370318, -0.574546, 0.729905,
		0.097475, -0.757396, -0.645639,
		0.923777, 0.310239, -0.224474,
		31.934765, 39.015858, 26.337841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643887, 38.222511, 26.690754>,  <31.288122, 38.798691, 26.494974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643887, 38.222511, 26.690754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916624, 38.511433, 26.644505>,  <32.080265, 38.684784, 26.616755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916624, 38.511433, 26.644505>,  <31.643887, 38.222511, 26.690754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916624, 38.511433, 26.644505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516370, -0.363308, 0.775480,
		0.518125, -0.588460, -0.620694,
		0.681842, 0.722303, -0.115624,
		32.121178, 38.728123, 26.609818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346096, 37.938202, 26.850554>,  <31.643887, 38.222511, 26.690754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346096, 37.938202, 26.850554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380905, 38.334515, 26.892080>,  <32.401791, 38.572304, 26.916996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380905, 38.334515, 26.892080>,  <32.346096, 37.938202, 26.850554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380905, 38.334515, 26.892080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418153, -0.130917, 0.898893,
		0.904199, -0.034812, -0.425691,
		0.087023, 0.990782, 0.103819,
		32.407013, 38.631748, 26.923225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961300, 37.972889, 27.154230>,  <32.346096, 37.938202, 26.850554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961300, 37.972889, 27.154230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779369, 38.321030, 27.229725>,  <32.670212, 38.529915, 27.275023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779369, 38.321030, 27.229725>,  <32.961300, 37.972889, 27.154230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779369, 38.321030, 27.229725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380010, -0.001999, 0.924980,
		0.805432, 0.492432, -0.329832,
		-0.454831, 0.870349, 0.188739,
		32.642921, 38.582134, 27.286346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507401, 38.344475, 27.537119>,  <32.961300, 37.972889, 27.154230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507401, 38.344475, 27.537119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168343, 38.538563, 27.622969>,  <32.964909, 38.655014, 27.674479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168343, 38.538563, 27.622969>,  <33.507401, 38.344475, 27.537119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168343, 38.538563, 27.622969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355326, 0.218758, 0.908784,
		0.394007, 0.846587, -0.357839,
		-0.847645, 0.485216, 0.214622,
		32.914047, 38.684128, 27.687355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682182, 38.989769, 27.827152>,  <33.507401, 38.344475, 27.537119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682182, 38.989769, 27.827152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312881, 38.900745, 27.952423>,  <33.091301, 38.847332, 28.027586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312881, 38.900745, 27.952423>,  <33.682182, 38.989769, 27.827152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312881, 38.900745, 27.952423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257637, 0.246061, 0.934386,
		-0.285019, 0.943356, -0.169836,
		-0.923248, -0.222562, 0.313175,
		33.035908, 38.833977, 28.046375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505997, 39.582733, 28.205128>,  <33.682182, 38.989769, 27.827152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505997, 39.582733, 28.205128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270260, 39.282085, 28.323612>,  <33.128819, 39.101696, 28.394703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270260, 39.282085, 28.323612>,  <33.505997, 39.582733, 28.205128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270260, 39.282085, 28.323612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076655, 0.312973, 0.946664,
		-0.804240, 0.580614, -0.126832,
		-0.589341, -0.751622, 0.296213,
		33.093456, 39.056599, 28.412476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055611, 39.952713, 28.634502>,  <33.505997, 39.582733, 28.205128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055611, 39.952713, 28.634502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017231, 39.570404, 28.745712>,  <32.994205, 39.341019, 28.812439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017231, 39.570404, 28.745712>,  <33.055611, 39.952713, 28.634502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017231, 39.570404, 28.745712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135463, 0.264176, 0.954914,
		-0.986126, 0.129281, 0.104125,
		-0.095945, -0.955770, 0.278024,
		32.988449, 39.283672, 28.829119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624439, 40.066452, 29.299089>,  <33.055611, 39.952713, 28.634502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624439, 40.066452, 29.299089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764194, 39.692738, 29.327488>,  <32.848045, 39.468510, 29.344526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764194, 39.692738, 29.327488>,  <32.624439, 40.066452, 29.299089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764194, 39.692738, 29.327488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251377, 0.166458, 0.953468,
		-0.902629, -0.315280, 0.293015,
		0.349385, -0.934286, 0.070996,
		32.869011, 39.412453, 29.348787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177158, 39.677498, 29.732836>,  <32.624439, 40.066452, 29.299089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177158, 39.677498, 29.732836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540932, 39.511158, 29.733280>,  <32.759197, 39.411354, 29.733547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540932, 39.511158, 29.733280>,  <32.177158, 39.677498, 29.732836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540932, 39.511158, 29.733280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064314, 0.143294, 0.987588,
		-0.410845, -0.898075, 0.157061,
		0.909434, -0.415847, 0.001113,
		32.813763, 39.386402, 29.733614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108494, 39.237656, 30.284594>,  <32.177158, 39.677498, 29.732836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108494, 39.237656, 30.284594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499599, 39.280537, 30.212500>,  <32.734264, 39.306267, 30.169243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499599, 39.280537, 30.212500>,  <32.108494, 39.237656, 30.284594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499599, 39.280537, 30.212500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188815, -0.076072, 0.979062,
		0.091249, -0.991323, -0.094622,
		0.977764, 0.107205, -0.180235,
		32.792927, 39.312698, 30.158428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448673, 38.654064, 30.668213>,  <32.108494, 39.237656, 30.284594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448673, 38.654064, 30.668213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741528, 38.920681, 30.612080>,  <32.917240, 39.080650, 30.578400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741528, 38.920681, 30.612080>,  <32.448673, 38.654064, 30.668213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741528, 38.920681, 30.612080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262245, -0.085685, 0.961190,
		0.628654, -0.740522, -0.237532,
		0.732135, 0.666547, -0.140333,
		32.961166, 39.120644, 30.569981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947216, 38.520733, 31.118675>,  <32.448673, 38.654064, 30.668213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947216, 38.520733, 31.118675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088966, 38.884872, 31.033184>,  <33.174015, 39.103355, 30.981890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088966, 38.884872, 31.033184>,  <32.947216, 38.520733, 31.118675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088966, 38.884872, 31.033184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208531, 0.145871, 0.967076,
		0.911555, -0.387277, -0.138144,
		0.354375, 0.910351, -0.213728,
		33.195278, 39.157978, 30.969065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597240, 38.601345, 31.351759>,  <32.947216, 38.520733, 31.118675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597240, 38.601345, 31.351759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453171, 38.974442, 31.345238>,  <33.366730, 39.198299, 31.341326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453171, 38.974442, 31.345238>,  <33.597240, 38.601345, 31.351759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453171, 38.974442, 31.345238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305858, 0.134580, 0.942517,
		0.881319, 0.334487, -0.333759,
		-0.360177, 0.932741, -0.016303,
		33.345119, 39.254265, 31.340347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142040, 39.058765, 31.557285>,  <33.597240, 38.601345, 31.351759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142040, 39.058765, 31.557285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789997, 39.239994, 31.614040>,  <33.578770, 39.348732, 31.648094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789997, 39.239994, 31.614040>,  <34.142040, 39.058765, 31.557285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789997, 39.239994, 31.614040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206369, 0.095931, 0.973760,
		0.427572, 0.886298, -0.177930,
		-0.880110, 0.453072, 0.141887,
		33.525963, 39.375916, 31.656607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260113, 39.646847, 32.033962>,  <34.142040, 39.058765, 31.557285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260113, 39.646847, 32.033962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860451, 39.636902, 32.047047>,  <33.620655, 39.630936, 32.054897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860451, 39.636902, 32.047047>,  <34.260113, 39.646847, 32.033962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860451, 39.636902, 32.047047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024886, 0.267194, 0.963321,
		-0.032695, 0.963322, -0.266349,
		-0.999156, -0.024867, 0.032709,
		33.560703, 39.629440, 32.056858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002174, 40.289818, 32.284546>,  <34.260113, 39.646847, 32.033962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002174, 40.289818, 32.284546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701492, 40.033791, 32.348118>,  <33.521084, 39.880177, 32.386261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701492, 40.033791, 32.348118>,  <34.002174, 40.289818, 32.284546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701492, 40.033791, 32.348118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024974, 0.268440, 0.962973,
		-0.659028, 0.719901, -0.217772,
		-0.751703, -0.640065, 0.158931,
		33.475983, 39.841770, 32.395798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593315, 40.506638, 32.882084>,  <34.002174, 40.289818, 32.284546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593315, 40.506638, 32.882084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452759, 40.133438, 32.851017>,  <33.368427, 39.909519, 32.832378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452759, 40.133438, 32.851017>,  <33.593315, 40.506638, 32.882084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452759, 40.133438, 32.851017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093671, -0.047504, 0.994469,
		-0.931532, 0.356720, -0.070703,
		-0.351389, -0.933003, -0.077666,
		33.347343, 39.853539, 32.827717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969952, 40.561470, 33.165089>,  <33.593315, 40.506638, 32.882084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969952, 40.561470, 33.165089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115189, 40.189323, 33.185421>,  <33.202332, 39.966034, 33.197620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115189, 40.189323, 33.185421>,  <32.969952, 40.561470, 33.165089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115189, 40.189323, 33.185421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084660, 0.021383, 0.996180,
		-0.927900, -0.366007, -0.071001,
		0.363090, -0.930366, 0.050828,
		33.224117, 39.910213, 33.200668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552525, 40.145519, 33.751541>,  <32.969952, 40.561470, 33.165089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552525, 40.145519, 33.751541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875370, 39.916000, 33.695923>,  <33.069077, 39.778290, 33.662552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875370, 39.916000, 33.695923>,  <32.552525, 40.145519, 33.751541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875370, 39.916000, 33.695923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109682, -0.085680, 0.990267,
		-0.580124, -0.814504, -0.006218,
		0.807110, -0.573796, -0.139041,
		33.117504, 39.743862, 33.654209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597324, 39.792839, 34.412552>,  <32.552525, 40.145519, 33.751541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597324, 39.792839, 34.412552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951031, 39.711445, 34.244423>,  <33.163254, 39.662609, 34.143543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951031, 39.711445, 34.244423>,  <32.597324, 39.792839, 34.412552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951031, 39.711445, 34.244423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386058, -0.187893, 0.903137,
		-0.262752, -0.960879, -0.087590,
		0.884263, -0.203486, -0.420324,
		33.216309, 39.650398, 34.118324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762413, 39.106777, 34.457283>,  <32.597324, 39.792839, 34.412552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762413, 39.106777, 34.457283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117306, 39.287640, 34.420689>,  <33.330242, 39.396156, 34.398731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117306, 39.287640, 34.420689>,  <32.762413, 39.106777, 34.457283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117306, 39.287640, 34.420689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297045, -0.408217, 0.863206,
		0.352955, -0.793043, -0.496494,
		0.887236, 0.452153, -0.091487,
		33.383476, 39.423286, 34.393242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220703, 38.705780, 34.701790>,  <32.762413, 39.106777, 34.457283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220703, 38.705780, 34.701790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486176, 39.004971, 34.698589>,  <33.645458, 39.184486, 34.696671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486176, 39.004971, 34.698589>,  <33.220703, 38.705780, 34.701790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486176, 39.004971, 34.698589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395527, -0.341832, 0.852473,
		0.634894, -0.568931, -0.522711,
		0.663678, 0.747976, -0.008001,
		33.685280, 39.229362, 34.696190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879589, 38.420414, 34.818829>,  <33.220703, 38.705780, 34.701790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879589, 38.420414, 34.818829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891800, 38.804104, 34.931225>,  <33.899128, 39.034317, 34.998661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891800, 38.804104, 34.931225>,  <33.879589, 38.420414, 34.818829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891800, 38.804104, 34.931225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323330, -0.275485, 0.905299,
		0.945794, 0.063218, -0.318556,
		0.030527, 0.959224, 0.280992,
		33.900959, 39.091869, 35.015522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635239, 38.557945, 35.020306>,  <33.879589, 38.420414, 34.818829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635239, 38.557945, 35.020306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395924, 38.817322, 35.208591>,  <34.252335, 38.972950, 35.321564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395924, 38.817322, 35.208591>,  <34.635239, 38.557945, 35.020306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395924, 38.817322, 35.208591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408372, -0.258681, 0.875395,
		0.689412, 0.715962, -0.110042,
		-0.598284, 0.648446, 0.470716,
		34.216438, 39.011856, 35.349808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464417, 38.321423, 34.246849>,  <34.635239, 38.557945, 35.020306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464417, 38.321423, 34.246849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822159, 38.142590, 34.240627>,  <35.036804, 38.035290, 34.236897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822159, 38.142590, 34.240627>,  <34.464417, 38.321423, 34.246849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822159, 38.142590, 34.240627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155489, 0.343264, -0.926279,
		0.419465, 0.826005, 0.376517,
		0.894356, -0.447086, -0.015553,
		35.090466, 38.008465, 34.235962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772282, 38.716183, 33.715912>,  <34.464417, 38.321423, 34.246849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772282, 38.716183, 33.715912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038921, 38.421280, 33.759892>,  <35.198906, 38.244339, 33.786278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038921, 38.421280, 33.759892>,  <34.772282, 38.716183, 33.715912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038921, 38.421280, 33.759892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297812, 0.128196, -0.945978,
		0.683338, 0.663334, 0.305021,
		0.666601, -0.737261, 0.109947,
		35.238903, 38.200100, 33.792877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401058, 38.970787, 33.403927>,  <34.772282, 38.716183, 33.715912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401058, 38.970787, 33.403927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456596, 38.574917, 33.418144>,  <35.489922, 38.337395, 33.426674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456596, 38.574917, 33.418144>,  <35.401058, 38.970787, 33.403927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456596, 38.574917, 33.418144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252293, 0.000642, -0.967651,
		0.957637, 0.143326, 0.249777,
		0.138850, -0.989675, 0.035545,
		35.498253, 38.278015, 33.428806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175972, 38.786900, 33.156376>,  <35.401058, 38.970787, 33.403927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175972, 38.786900, 33.156376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939362, 38.472847, 33.082985>,  <35.797394, 38.284416, 33.038948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939362, 38.472847, 33.082985>,  <36.175972, 38.786900, 33.156376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939362, 38.472847, 33.082985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352732, -0.047359, -0.934525,
		0.725037, -0.617515, 0.304955,
		-0.591525, -0.785132, -0.183480,
		35.761906, 38.237309, 33.027943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660206, 38.287601, 32.712219>,  <36.175972, 38.786900, 33.156376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660206, 38.287601, 32.712219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285259, 38.153618, 32.673950>,  <36.060291, 38.073227, 32.650990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285259, 38.153618, 32.673950>,  <36.660206, 38.287601, 32.712219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285259, 38.153618, 32.673950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117060, -0.044208, -0.992140,
		0.328095, -0.941196, 0.080648,
		-0.937364, -0.334957, -0.095672,
		36.004051, 38.053131, 32.645248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718395, 37.628010, 32.206528>,  <36.660206, 38.287601, 32.712219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718395, 37.628010, 32.206528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354324, 37.792488, 32.226521>,  <36.135883, 37.891174, 32.238518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354324, 37.792488, 32.226521>,  <36.718395, 37.628010, 32.206528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354324, 37.792488, 32.226521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045789, 0.020049, -0.998750,
		-0.411682, -0.911327, 0.000580,
		-0.910176, 0.411194, 0.049982,
		36.081272, 37.915848, 32.241516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341030, 37.237633, 31.690447>,  <36.718395, 37.628010, 32.206528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341030, 37.237633, 31.690447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134010, 37.574326, 31.751940>,  <36.009800, 37.776340, 31.788836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134010, 37.574326, 31.751940>,  <36.341030, 37.237633, 31.690447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134010, 37.574326, 31.751940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135874, 0.096540, -0.986011,
		-0.844798, -0.531195, 0.064405,
		-0.517547, 0.841732, 0.153732,
		35.978745, 37.826843, 31.798059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772072, 37.166424, 31.321579>,  <36.341030, 37.237633, 31.690447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772072, 37.166424, 31.321579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798996, 37.560150, 31.386818>,  <35.815151, 37.796387, 31.425961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798996, 37.560150, 31.386818>,  <35.772072, 37.166424, 31.321579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798996, 37.560150, 31.386818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314780, 0.176069, -0.932691,
		-0.946775, 0.011442, 0.321693,
		0.067312, 0.984311, 0.163096,
		35.819191, 37.855442, 31.435747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262459, 37.361744, 30.953583>,  <35.772072, 37.166424, 31.321579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262459, 37.361744, 30.953583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503883, 37.676228, 31.006632>,  <35.648739, 37.864918, 31.038462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503883, 37.676228, 31.006632>,  <35.262459, 37.361744, 30.953583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503883, 37.676228, 31.006632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196970, 0.308206, -0.930705,
		-0.772605, 0.535615, 0.340880,
		0.603561, 0.786210, 0.132621,
		35.684952, 37.912090, 31.046419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901131, 37.827236, 30.724577>,  <35.262459, 37.361744, 30.953583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901131, 37.827236, 30.724577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281433, 37.951183, 30.727476>,  <35.509613, 38.025551, 30.729216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281433, 37.951183, 30.727476>,  <34.901131, 37.827236, 30.724577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281433, 37.951183, 30.727476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114754, 0.373628, -0.920453,
		-0.287926, 0.874291, 0.390786,
		0.950753, 0.309866, 0.007249,
		35.566658, 38.044144, 30.729650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931400, 38.498524, 30.449867>,  <34.901131, 37.827236, 30.724577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931400, 38.498524, 30.449867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312725, 38.384239, 30.410755>,  <35.541519, 38.315666, 30.387287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312725, 38.384239, 30.410755>,  <34.931400, 38.498524, 30.449867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312725, 38.384239, 30.410755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002603, 0.331559, -0.943431,
		0.301973, 0.899130, 0.316823,
		0.953313, -0.285715, -0.097782,
		35.598721, 38.298523, 30.381420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194927, 39.008434, 30.093090>,  <34.931400, 38.498524, 30.449867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194927, 39.008434, 30.093090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470577, 38.720856, 30.056833>,  <35.635967, 38.548309, 30.035080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470577, 38.720856, 30.056833>,  <35.194927, 39.008434, 30.093090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470577, 38.720856, 30.056833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170343, 0.282301, -0.944081,
		0.704335, 0.635151, 0.317009,
		0.689126, -0.718950, -0.090641,
		35.677315, 38.505169, 30.029640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553810, 39.348312, 29.691782>,  <35.194927, 39.008434, 30.093090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553810, 39.348312, 29.691782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663689, 38.968098, 29.633793>,  <35.729618, 38.739967, 29.598999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663689, 38.968098, 29.633793>,  <35.553810, 39.348312, 29.691782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663689, 38.968098, 29.633793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015323, 0.155083, -0.987783,
		0.961408, 0.269123, 0.057166,
		0.274700, -0.950538, -0.144974,
		35.746098, 38.682938, 29.590302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957359, 39.358231, 29.093069>,  <35.553810, 39.348312, 29.691782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957359, 39.358231, 29.093069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889942, 38.964211, 29.107344>,  <35.849491, 38.727798, 29.115908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889942, 38.964211, 29.107344>,  <35.957359, 39.358231, 29.093069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889942, 38.964211, 29.107344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030498, -0.041397, -0.998677,
		0.985223, -0.167229, 0.037019,
		-0.168540, -0.985049, 0.035686,
		35.839378, 38.668697, 29.118050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454124, 39.178699, 28.600836>,  <35.957359, 39.358231, 29.093069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454124, 39.178699, 28.600836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154945, 38.916859, 28.644793>,  <35.975437, 38.759754, 28.671167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154945, 38.916859, 28.644793>,  <36.454124, 39.178699, 28.600836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154945, 38.916859, 28.644793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065116, -0.092401, -0.993590,
		0.660558, -0.750308, 0.026486,
		-0.747946, -0.654599, 0.109893,
		35.930561, 38.720478, 28.677761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578674, 38.503151, 28.234888>,  <36.454124, 39.178699, 28.600836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578674, 38.503151, 28.234888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185078, 38.556618, 28.282028>,  <35.948917, 38.588696, 28.310312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185078, 38.556618, 28.282028>,  <36.578674, 38.503151, 28.234888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185078, 38.556618, 28.282028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130687, -0.091694, -0.987174,
		-0.121149, -0.986775, 0.107695,
		-0.983994, 0.133670, 0.117850,
		35.889881, 38.596718, 28.317383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311138, 38.217087, 27.689983>,  <36.578674, 38.503151, 28.234888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311138, 38.217087, 27.689983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010273, 38.451611, 27.810318>,  <35.829754, 38.592323, 27.882519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010273, 38.451611, 27.810318>,  <36.311138, 38.217087, 27.689983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010273, 38.451611, 27.810318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311653, 0.085747, -0.946319,
		-0.580630, -0.805537, 0.118229,
		-0.752158, 0.586308, 0.300835,
		35.784626, 38.627502, 27.900568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726799, 37.866211, 27.427118>,  <36.311138, 38.217087, 27.689983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726799, 37.866211, 27.427118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573135, 38.226147, 27.509796>,  <35.480938, 38.442108, 27.559402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573135, 38.226147, 27.509796>,  <35.726799, 37.866211, 27.427118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573135, 38.226147, 27.509796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496617, -0.012662, -0.867877,
		-0.778329, -0.436047, 0.451738,
		-0.384155, 0.899835, 0.206693,
		35.457890, 38.496098, 27.571804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021832, 37.768661, 27.372992>,  <35.726799, 37.866211, 27.427118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021832, 37.768661, 27.372992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126453, 38.149517, 27.309729>,  <35.189224, 38.378033, 27.271770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126453, 38.149517, 27.309729>,  <35.021832, 37.768661, 27.372992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126453, 38.149517, 27.309729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629842, 0.044209, -0.775464,
		-0.731361, 0.302438, 0.611263,
		0.261553, 0.952143, -0.158156,
		35.204918, 38.435162, 27.262281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343010, 38.104370, 27.272175>,  <35.021832, 37.768661, 27.372992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343010, 38.104370, 27.272175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620358, 38.330837, 27.093870>,  <34.786766, 38.466717, 26.986887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620358, 38.330837, 27.093870>,  <34.343010, 38.104370, 27.272175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620358, 38.330837, 27.093870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563492, 0.040442, -0.825131,
		-0.449131, 0.823300, 0.347070,
		0.693367, 0.566163, -0.445760,
		34.828369, 38.500687, 26.960142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987133, 38.524242, 26.758844>,  <34.343010, 38.104370, 27.272175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987133, 38.524242, 26.758844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366150, 38.548038, 26.633228>,  <34.593559, 38.562317, 26.557859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366150, 38.548038, 26.633228>,  <33.987133, 38.524242, 26.758844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366150, 38.548038, 26.633228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318044, 0.077868, -0.944873,
		-0.031761, 0.995187, 0.092705,
		0.947544, 0.059495, -0.314040,
		34.650414, 38.565887, 26.539017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849243, 38.798454, 26.271498>,  <33.987133, 38.524242, 26.758844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849243, 38.798454, 26.271498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240406, 38.752472, 26.201658>,  <34.475105, 38.724884, 26.159756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240406, 38.752472, 26.201658>,  <33.849243, 38.798454, 26.271498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240406, 38.752472, 26.201658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191102, -0.153096, -0.969557,
		0.084724, 0.981503, -0.171681,
		0.977907, -0.114953, -0.174596,
		34.533779, 38.717987, 26.149279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095997, 39.408520, 25.734875>,  <33.849243, 38.798454, 26.271498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095997, 39.408520, 25.734875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336761, 39.090073, 25.759840>,  <34.481220, 38.899006, 25.774818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336761, 39.090073, 25.759840>,  <34.095997, 39.408520, 25.734875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336761, 39.090073, 25.759840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226374, -0.245056, -0.942710,
		0.765804, 0.553301, -0.327723,
		0.601913, -0.796119, 0.062412,
		34.517334, 38.851238, 25.778564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216194, 39.338078, 25.082445>,  <34.095997, 39.408520, 25.734875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216194, 39.338078, 25.082445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311001, 38.971275, 25.210770>,  <34.367886, 38.751194, 25.287766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311001, 38.971275, 25.210770>,  <34.216194, 39.338078, 25.082445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311001, 38.971275, 25.210770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154918, -0.361673, -0.919344,
		0.959073, 0.168204, -0.227785,
		0.237021, -0.917006, 0.320813,
		34.382107, 38.696175, 25.307014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699310, 39.011421, 24.575542>,  <34.216194, 39.338078, 25.082445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699310, 39.011421, 24.575542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528290, 38.709179, 24.774038>,  <34.425678, 38.527832, 24.893137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528290, 38.709179, 24.774038>,  <34.699310, 39.011421, 24.575542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528290, 38.709179, 24.774038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220527, -0.445179, -0.867861,
		0.876680, -0.480490, 0.023705,
		-0.427551, -0.755609, 0.496241,
		34.400024, 38.482494, 24.922911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022388, 38.337036, 24.382284>,  <34.699310, 39.011421, 24.575542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022388, 38.337036, 24.382284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653492, 38.279018, 24.525640>,  <34.432156, 38.244209, 24.611654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653492, 38.279018, 24.525640>,  <35.022388, 38.337036, 24.382284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653492, 38.279018, 24.525640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296070, -0.331198, -0.895908,
		0.248640, -0.932347, 0.262501,
		-0.922237, -0.145040, 0.358389,
		34.376820, 38.235508, 24.633158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827282, 37.685490, 24.200611>,  <35.022388, 38.337036, 24.382284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827282, 37.685490, 24.200611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458202, 37.822632, 24.271133>,  <34.236755, 37.904919, 24.313448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458202, 37.822632, 24.271133>,  <34.827282, 37.685490, 24.200611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458202, 37.822632, 24.271133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281946, -0.288187, -0.915125,
		-0.262932, -0.894096, 0.362573,
		-0.922699, 0.342842, 0.176314,
		34.181393, 37.925488, 24.324026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381615, 37.137043, 24.084057>,  <34.827282, 37.685490, 24.200611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381615, 37.137043, 24.084057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138569, 37.454735, 24.083424>,  <33.992741, 37.645351, 24.083044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138569, 37.454735, 24.083424>,  <34.381615, 37.137043, 24.084057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138569, 37.454735, 24.083424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528224, -0.405591, -0.745973,
		-0.593117, -0.452426, 0.665975,
		-0.607611, 0.794233, -0.001581,
		33.956287, 37.693005, 24.082949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834137, 36.828224, 23.877836>,  <34.381615, 37.137043, 24.084057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834137, 36.828224, 23.877836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760078, 37.215057, 23.808016>,  <33.715645, 37.447159, 23.766123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760078, 37.215057, 23.808016>,  <33.834137, 36.828224, 23.877836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760078, 37.215057, 23.808016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511747, -0.246519, -0.823008,
		-0.838950, -0.063047, 0.540545,
		-0.185143, 0.967085, -0.174553,
		33.704536, 37.505184, 23.755650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190308, 36.907795, 23.732059>,  <33.834137, 36.828224, 23.877836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190308, 36.907795, 23.732059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323357, 37.238876, 23.551273>,  <33.403187, 37.437523, 23.442801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323357, 37.238876, 23.551273>,  <33.190308, 36.907795, 23.732059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323357, 37.238876, 23.551273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715658, -0.090571, -0.692554,
		-0.614161, 0.553814, 0.562224,
		0.332625, 0.827700, -0.451966,
		33.423145, 37.487186, 23.415684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579384, 37.280640, 23.419260>,  <33.190308, 36.907795, 23.732059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579384, 37.280640, 23.419260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862881, 37.445629, 23.190334>,  <33.032978, 37.544621, 23.052979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862881, 37.445629, 23.190334>,  <32.579384, 37.280640, 23.419260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862881, 37.445629, 23.190334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623011, -0.014639, -0.782076,
		-0.330963, 0.910853, 0.246599,
		0.708746, 0.412472, -0.572316,
		33.075504, 37.569370, 23.018639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288189, 37.871330, 23.015263>,  <32.579384, 37.280640, 23.419260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288189, 37.871330, 23.015263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626354, 37.785889, 22.819445>,  <32.829254, 37.734623, 22.701954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626354, 37.785889, 22.819445>,  <32.288189, 37.871330, 23.015263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626354, 37.785889, 22.819445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491613, 0.047123, -0.869538,
		0.208807, 0.975783, -0.065173,
		0.845409, -0.213606, -0.489547,
		32.879978, 37.721806, 22.672581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329250, 38.378796, 22.552601>,  <32.288189, 37.871330, 23.015263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329250, 38.378796, 22.552601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558994, 38.085056, 22.407915>,  <32.696842, 37.908813, 22.321104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558994, 38.085056, 22.407915>,  <32.329250, 38.378796, 22.552601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558994, 38.085056, 22.407915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509142, 0.025540, -0.860303,
		0.641004, 0.678288, -0.359220,
		0.574359, -0.734352, -0.361717,
		32.731300, 37.864750, 22.299400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643608, 38.582939, 21.838072>,  <32.329250, 38.378796, 22.552601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643608, 38.582939, 21.838072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630497, 38.185059, 21.877052>,  <32.622631, 37.946331, 21.900440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630497, 38.185059, 21.877052>,  <32.643608, 38.582939, 21.838072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630497, 38.185059, 21.877052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495323, -0.068521, -0.866002,
		0.868090, -0.076659, -0.490451,
		-0.032780, -0.994700, 0.097453,
		32.620663, 37.886650, 21.906288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810490, 38.317806, 21.161514>,  <32.643608, 38.582939, 21.838072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810490, 38.317806, 21.161514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631905, 38.012318, 21.348015>,  <32.524754, 37.829025, 21.459915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631905, 38.012318, 21.348015>,  <32.810490, 38.317806, 21.161514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631905, 38.012318, 21.348015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539158, -0.186249, -0.821352,
		0.714127, -0.618090, -0.328615,
		-0.446466, -0.763726, 0.466254,
		32.497967, 37.783199, 21.487890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676327, 37.794083, 20.704561>,  <32.810490, 38.317806, 21.161514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676327, 37.794083, 20.704561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413548, 37.687458, 20.986660>,  <32.255882, 37.623486, 21.155920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413548, 37.687458, 20.986660>,  <32.676327, 37.794083, 20.704561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413548, 37.687458, 20.986660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637014, -0.304112, -0.708328,
		0.403284, -0.914584, 0.029984,
		-0.656944, -0.266557, 0.705246,
		32.216465, 37.607491, 21.198235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526009, 37.068764, 20.589931>,  <32.676327, 37.794083, 20.704561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526009, 37.068764, 20.589931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231915, 37.220711, 20.814478>,  <32.055458, 37.311878, 20.949205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231915, 37.220711, 20.814478>,  <32.526009, 37.068764, 20.589931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231915, 37.220711, 20.814478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677198, -0.376485, -0.632188,
		-0.028800, -0.844963, 0.534049,
		-0.735237, 0.379864, 0.561365,
		32.011345, 37.334671, 20.982887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986866, 36.505566, 20.596697>,  <32.526009, 37.068764, 20.589931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986866, 36.505566, 20.596697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828535, 36.864891, 20.672960>,  <31.733536, 37.080486, 20.718719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828535, 36.864891, 20.672960>,  <31.986866, 36.505566, 20.596697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828535, 36.864891, 20.672960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733653, -0.184463, -0.654008,
		-0.552336, -0.398752, 0.732067,
		-0.395826, 0.898315, 0.190660,
		31.709787, 37.134384, 20.730158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041832, 35.775787, 20.252661>,  <31.986866, 36.505566, 20.596697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041832, 35.775787, 20.252661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206787, 35.421631, 20.166855>,  <32.305759, 35.209137, 20.115372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206787, 35.421631, 20.166855>,  <32.041832, 35.775787, 20.252661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206787, 35.421631, 20.166855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092146, -0.193721, 0.976720,
		-0.906337, -0.422553, 0.001697,
		0.412388, -0.885393, -0.214513,
		32.330502, 35.156013, 20.102501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826422, 35.220673, 20.736805>,  <32.041832, 35.775787, 20.252661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826422, 35.220673, 20.736805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187866, 35.152138, 20.579769>,  <32.404732, 35.111015, 20.485548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187866, 35.152138, 20.579769>,  <31.826422, 35.220673, 20.736805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187866, 35.152138, 20.579769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341650, -0.264546, 0.901826,
		-0.258367, -0.949032, -0.180513,
		0.903616, -0.171330, -0.392587,
		32.458950, 35.100735, 20.461992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004604, 34.578419, 21.178236>,  <31.826422, 35.220673, 20.736805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004604, 34.578419, 21.178236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325344, 34.719685, 20.985441>,  <32.517788, 34.804443, 20.869764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325344, 34.719685, 20.985441>,  <32.004604, 34.578419, 21.178236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325344, 34.719685, 20.985441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567373, -0.197013, 0.799546,
		0.187416, -0.914581, -0.358353,
		0.801849, 0.353168, -0.481985,
		32.565899, 34.825634, 20.840845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568356, 34.039455, 21.085308>,  <32.004604, 34.578419, 21.178236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568356, 34.039455, 21.085308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712059, 34.412106, 21.107269>,  <32.798283, 34.635696, 21.120445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712059, 34.412106, 21.107269>,  <32.568356, 34.039455, 21.085308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712059, 34.412106, 21.107269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541304, -0.255943, 0.800926,
		0.760213, -0.258020, -0.596240,
		0.359259, 0.931622, 0.054904,
		32.819836, 34.691593, 21.123741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343494, 34.020905, 21.169821>,  <32.568356, 34.039455, 21.085308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343494, 34.020905, 21.169821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228218, 34.372696, 21.321331>,  <33.159054, 34.583771, 21.412237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228218, 34.372696, 21.321331>,  <33.343494, 34.020905, 21.169821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228218, 34.372696, 21.321331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634570, -0.120830, 0.763361,
		0.717124, 0.460353, -0.523266,
		-0.288190, 0.879474, 0.378777,
		33.141762, 34.636539, 21.434963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977360, 34.244274, 21.413757>,  <33.343494, 34.020905, 21.169821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977360, 34.244274, 21.413757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709679, 34.497593, 21.569244>,  <33.549068, 34.649586, 21.662537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709679, 34.497593, 21.569244>,  <33.977360, 34.244274, 21.413757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709679, 34.497593, 21.569244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563333, 0.091231, 0.821178,
		0.484586, 0.768512, -0.417809,
		-0.669202, 0.633297, 0.388719,
		33.508919, 34.687584, 21.685860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409763, 34.789726, 21.717319>,  <33.977360, 34.244274, 21.413757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409763, 34.789726, 21.717319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046307, 34.826153, 21.880327>,  <33.828232, 34.848011, 21.978132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046307, 34.826153, 21.880327>,  <34.409763, 34.789726, 21.717319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046307, 34.826153, 21.880327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417071, 0.245747, 0.875020,
		-0.020459, 0.965046, -0.261279,
		-0.908643, 0.091070, 0.407521,
		33.773712, 34.853474, 22.002584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436440, 35.372040, 21.994049>,  <34.409763, 34.789726, 21.717319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436440, 35.372040, 21.994049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138500, 35.193600, 22.192520>,  <33.959736, 35.086536, 22.311604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138500, 35.193600, 22.192520>,  <34.436440, 35.372040, 21.994049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138500, 35.193600, 22.192520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379438, 0.328491, 0.864940,
		-0.548838, 0.832520, -0.075410,
		-0.744852, -0.446098, 0.496178,
		33.915043, 35.059769, 22.341373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283432, 35.791664, 22.570795>,  <34.436440, 35.372040, 21.994049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283432, 35.791664, 22.570795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152061, 35.431789, 22.685823>,  <34.073238, 35.215862, 22.754841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152061, 35.431789, 22.685823>,  <34.283432, 35.791664, 22.570795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152061, 35.431789, 22.685823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247016, 0.212049, 0.945525,
		-0.911658, 0.381569, 0.152595,
		-0.328425, -0.899689, 0.287570,
		34.053535, 35.161884, 22.772095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893009, 35.879688, 23.140202>,  <34.283432, 35.791664, 22.570795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893009, 35.879688, 23.140202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990360, 35.492626, 23.166767>,  <34.048771, 35.260387, 23.182707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990360, 35.492626, 23.166767>,  <33.893009, 35.879688, 23.140202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990360, 35.492626, 23.166767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188957, 0.114462, 0.975291,
		-0.951349, -0.224812, 0.210703,
		0.243374, -0.967656, 0.066414,
		34.063374, 35.202328, 23.186691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723202, 35.764923, 23.794846>,  <33.893009, 35.879688, 23.140202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723202, 35.764923, 23.794846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937778, 35.436981, 23.714773>,  <34.066525, 35.240215, 23.666731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937778, 35.436981, 23.714773>,  <33.723202, 35.764923, 23.794846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937778, 35.436981, 23.714773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172037, -0.125983, 0.977001,
		-0.826218, -0.558540, 0.073463,
		0.536439, -0.819855, -0.200179,
		34.098709, 35.191025, 23.654720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476429, 35.085884, 24.236612>,  <33.723202, 35.764923, 23.794846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476429, 35.085884, 24.236612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865345, 35.048820, 24.150759>,  <34.098694, 35.026585, 24.099247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865345, 35.048820, 24.150759>,  <33.476429, 35.085884, 24.236612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865345, 35.048820, 24.150759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201860, -0.130361, 0.970700,
		-0.117903, -0.987130, -0.108049,
		0.972292, -0.092638, -0.214632,
		34.157032, 35.021023, 24.086369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722984, 34.529041, 24.575598>,  <33.476429, 35.085884, 24.236612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722984, 34.529041, 24.575598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039886, 34.767498, 24.523531>,  <34.230030, 34.910572, 24.492290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039886, 34.767498, 24.523531>,  <33.722984, 34.529041, 24.575598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039886, 34.767498, 24.523531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178446, -0.022363, 0.983696,
		0.583511, -0.802568, -0.124096,
		0.792257, 0.596141, -0.130165,
		34.277565, 34.946339, 24.484482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336372, 34.321098, 25.051720>,  <33.722984, 34.529041, 24.575598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336372, 34.321098, 25.051720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463570, 34.685295, 24.945980>,  <34.539886, 34.903812, 24.882536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463570, 34.685295, 24.945980>,  <34.336372, 34.321098, 25.051720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463570, 34.685295, 24.945980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486767, 0.082479, 0.869629,
		0.813596, -0.405211, -0.416972,
		0.317992, 0.910495, -0.264348,
		34.558968, 34.958443, 24.866676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020302, 34.368679, 25.122780>,  <34.336372, 34.321098, 25.051720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020302, 34.368679, 25.122780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893856, 34.746109, 25.162239>,  <34.817989, 34.972569, 25.185915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893856, 34.746109, 25.162239>,  <35.020302, 34.368679, 25.122780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893856, 34.746109, 25.162239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630453, 0.131226, 0.765055,
		0.708944, 0.304037, -0.636364,
		-0.316113, 0.943579, 0.098649,
		34.799023, 35.029182, 25.191833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607410, 34.660126, 25.337721>,  <35.020302, 34.368679, 25.122780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607410, 34.660126, 25.337721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320065, 34.921959, 25.431927>,  <35.147655, 35.079060, 25.488451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320065, 34.921959, 25.431927>,  <35.607410, 34.660126, 25.337721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320065, 34.921959, 25.431927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559773, 0.342901, 0.754369,
		0.413040, 0.673749, -0.612748,
		-0.718368, 0.654585, 0.235514,
		35.104553, 35.118336, 25.502581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914131, 35.291927, 25.515465>,  <35.607410, 34.660126, 25.337721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914131, 35.291927, 25.515465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552982, 35.337856, 25.681185>,  <35.336292, 35.365414, 25.780617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552982, 35.337856, 25.681185>,  <35.914131, 35.291927, 25.515465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552982, 35.337856, 25.681185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411200, 0.511895, 0.754240,
		-0.125475, 0.851340, -0.509388,
		-0.902868, 0.114822, 0.414301,
		35.282124, 35.372303, 25.805475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068890, 35.853466, 25.906551>,  <35.914131, 35.291927, 25.515465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068890, 35.853466, 25.906551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732769, 35.699440, 26.059193>,  <35.531097, 35.607025, 26.150778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732769, 35.699440, 26.059193>,  <36.068890, 35.853466, 25.906551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732769, 35.699440, 26.059193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276996, 0.300129, 0.912796,
		-0.466014, 0.872726, -0.145538,
		-0.840300, -0.385062, 0.381606,
		35.480679, 35.583923, 26.173674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803738, 36.367912, 26.143078>,  <36.068890, 35.853466, 25.906551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803738, 36.367912, 26.143078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698467, 36.028870, 26.327383>,  <35.635307, 35.825443, 26.437965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698467, 36.028870, 26.327383>,  <35.803738, 36.367912, 26.143078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698467, 36.028870, 26.327383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510027, 0.283165, 0.812213,
		-0.818910, 0.448753, 0.357781,
		-0.263172, -0.847607, 0.460763,
		35.619514, 35.774586, 26.465612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754700, 36.589500, 26.853249>,  <35.803738, 36.367912, 26.143078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754700, 36.589500, 26.853249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737423, 36.189987, 26.862747>,  <35.727055, 35.950279, 26.868446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737423, 36.189987, 26.862747>,  <35.754700, 36.589500, 26.853249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737423, 36.189987, 26.862747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447694, 0.001898, 0.894185,
		-0.893143, 0.049255, 0.447068,
		-0.043195, -0.998784, 0.023746,
		35.724464, 35.890350, 26.869871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326561, 36.423168, 27.415876>,  <35.754700, 36.589500, 26.853249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326561, 36.423168, 27.415876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570301, 36.107620, 27.383923>,  <35.716545, 35.918293, 27.364750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570301, 36.107620, 27.383923>,  <35.326561, 36.423168, 27.415876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570301, 36.107620, 27.383923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263560, 0.106495, 0.958747,
		-0.747818, -0.605264, 0.272807,
		0.609348, -0.788869, -0.079885,
		35.753105, 35.870960, 27.359957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246677, 36.010586, 28.129625>,  <35.326561, 36.423168, 27.415876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246677, 36.010586, 28.129625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587177, 35.924572, 27.938150>,  <35.791477, 35.872963, 27.823265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587177, 35.924572, 27.938150>,  <35.246677, 36.010586, 28.129625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587177, 35.924572, 27.938150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479182, -0.053355, 0.876093,
		-0.213928, -0.975148, 0.057622,
		0.851246, -0.215032, -0.478687,
		35.842552, 35.860062, 27.794544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651733, 35.688629, 28.591547>,  <35.246677, 36.010586, 28.129625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651733, 35.688629, 28.591547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928059, 35.802498, 28.325695>,  <36.093853, 35.870819, 28.166183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928059, 35.802498, 28.325695>,  <35.651733, 35.688629, 28.591547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928059, 35.802498, 28.325695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662656, 0.118444, 0.739498,
		0.289238, -0.951278, -0.106819,
		0.690817, 0.284676, -0.664629,
		36.135303, 35.887901, 28.126307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251423, 35.309574, 28.792643>,  <35.651733, 35.688629, 28.591547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251423, 35.309574, 28.792643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386654, 35.597645, 28.550304>,  <36.467793, 35.770489, 28.404902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386654, 35.597645, 28.550304>,  <36.251423, 35.309574, 28.792643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386654, 35.597645, 28.550304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711793, 0.225470, 0.665218,
		0.615674, -0.656133, -0.436389,
		0.338079, 0.720176, -0.605846,
		36.488079, 35.813698, 28.368551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899837, 35.308422, 28.884176>,  <36.251423, 35.309574, 28.792643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899837, 35.308422, 28.884176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877113, 35.662632, 28.699736>,  <36.863480, 35.875160, 28.589071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877113, 35.662632, 28.699736>,  <36.899837, 35.308422, 28.884176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877113, 35.662632, 28.699736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726521, 0.353446, 0.589273,
		0.684792, -0.301524, -0.663433,
		-0.056808, 0.885528, -0.461101,
		36.860069, 35.928291, 28.561405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616417, 35.545223, 28.660748>,  <36.899837, 35.308422, 28.884176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616417, 35.545223, 28.660748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397423, 35.872463, 28.731142>,  <37.266026, 36.068806, 28.773378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397423, 35.872463, 28.731142>,  <37.616417, 35.545223, 28.660748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397423, 35.872463, 28.731142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659239, 0.292127, 0.692868,
		0.515424, 0.495354, -0.699259,
		-0.547487, 0.818099, 0.175987,
		37.233177, 36.117893, 28.783937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093220, 36.089478, 28.784243>,  <37.616417, 35.545223, 28.660748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093220, 36.089478, 28.784243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756577, 36.264400, 28.911022>,  <37.554588, 36.369354, 28.987089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756577, 36.264400, 28.911022>,  <38.093220, 36.089478, 28.784243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756577, 36.264400, 28.911022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487425, 0.362255, 0.794473,
		0.232609, 0.823126, -0.518031,
		-0.841611, 0.437303, 0.316949,
		37.504093, 36.395592, 29.006107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355671, 36.722523, 28.990911>,  <38.093220, 36.089478, 28.784243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355671, 36.722523, 28.990911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010956, 36.636063, 29.174480>,  <37.804127, 36.584187, 29.284622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010956, 36.636063, 29.174480>,  <38.355671, 36.722523, 28.990911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010956, 36.636063, 29.174480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482056, -0.067250, 0.873555,
		-0.157957, 0.974041, 0.162152,
		-0.861784, -0.216150, 0.458920,
		37.752422, 36.571217, 29.312157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423340, 37.046169, 29.636595>,  <38.355671, 36.722523, 28.990911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423340, 37.046169, 29.636595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102863, 36.815937, 29.702082>,  <37.910576, 36.677799, 29.741373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102863, 36.815937, 29.702082>,  <38.423340, 37.046169, 29.636595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102863, 36.815937, 29.702082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181266, 0.027301, 0.983055,
		-0.570293, 0.817293, 0.082459,
		-0.801192, -0.575576, 0.163716,
		37.862507, 36.643265, 29.751196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037491, 37.399143, 30.099249>,  <38.423340, 37.046169, 29.636595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037491, 37.399143, 30.099249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950470, 37.009384, 30.121950>,  <37.898258, 36.775528, 30.135571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950470, 37.009384, 30.121950>,  <38.037491, 37.399143, 30.099249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950470, 37.009384, 30.121950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206157, 0.010962, 0.978458,
		-0.954029, 0.224564, 0.198494,
		-0.217551, -0.974398, 0.056754,
		37.885204, 36.717064, 30.138977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594101, 37.384434, 30.563648>,  <38.037491, 37.399143, 30.099249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594101, 37.384434, 30.563648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698746, 36.999050, 30.586681>,  <37.761532, 36.767822, 30.600502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698746, 36.999050, 30.586681>,  <37.594101, 37.384434, 30.563648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698746, 36.999050, 30.586681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022618, 0.053524, 0.998310,
		-0.964909, -0.262470, -0.007789,
		0.261610, -0.963455, 0.057582,
		37.777229, 36.710014, 30.603956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204430, 36.954117, 31.089161>,  <37.594101, 37.384434, 30.563648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204430, 36.954117, 31.089161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545963, 36.753174, 31.034616>,  <37.750885, 36.632607, 31.001890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545963, 36.753174, 31.034616>,  <37.204430, 36.954117, 31.089161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545963, 36.753174, 31.034616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180281, 0.039643, 0.982816,
		-0.488323, -0.863749, 0.124415,
		0.853838, -0.502361, -0.136359,
		37.802116, 36.602467, 30.993710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181538, 36.536278, 31.620377>,  <37.204430, 36.954117, 31.089161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181538, 36.536278, 31.620377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565460, 36.511986, 31.510765>,  <37.795815, 36.497410, 31.444998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565460, 36.511986, 31.510765>,  <37.181538, 36.536278, 31.620377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565460, 36.511986, 31.510765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274079, -0.007626, 0.961677,
		-0.060488, -0.998125, 0.009324,
		0.959803, -0.060725, -0.274027,
		37.853401, 36.493767, 31.428556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478092, 36.001640, 32.009026>,  <37.181538, 36.536278, 31.620377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478092, 36.001640, 32.009026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794209, 36.216381, 31.890888>,  <37.983879, 36.345226, 31.820007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794209, 36.216381, 31.890888>,  <37.478092, 36.001640, 32.009026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794209, 36.216381, 31.890888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419951, -0.123587, 0.899093,
		0.446179, -0.834576, -0.323121,
		0.790295, 0.536851, -0.295339,
		38.031296, 36.377438, 31.802286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061821, 35.624142, 32.323387>,  <37.478092, 36.001640, 32.009026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061821, 35.624142, 32.323387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201012, 35.980309, 32.206039>,  <38.284527, 36.194008, 32.135632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201012, 35.980309, 32.206039>,  <38.061821, 35.624142, 32.323387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201012, 35.980309, 32.206039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617578, 0.017721, 0.786310,
		0.705344, -0.454796, -0.543737,
		0.347975, 0.890420, -0.293371,
		38.305405, 36.247433, 32.118027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740372, 35.483551, 32.292618>,  <38.061821, 35.624142, 32.323387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740372, 35.483551, 32.292618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683971, 35.877876, 32.329029>,  <38.650131, 36.114471, 32.350876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683971, 35.877876, 32.329029>,  <38.740372, 35.483551, 32.292618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683971, 35.877876, 32.329029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699045, 0.034026, 0.714268,
		0.701039, 0.164344, -0.693927,
		-0.140997, 0.985816, 0.091031,
		38.641674, 36.173622, 32.356339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372631, 35.738461, 32.397926>,  <38.740372, 35.483551, 32.292618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372631, 35.738461, 32.397926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105186, 35.991344, 32.554527>,  <38.944721, 36.143074, 32.648487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105186, 35.991344, 32.554527>,  <39.372631, 35.738461, 32.397926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105186, 35.991344, 32.554527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485433, -0.027745, 0.873833,
		0.563306, 0.774302, -0.288344,
		-0.668611, 0.632208, 0.391501,
		38.904602, 36.181007, 32.671978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787521, 36.221809, 32.833572>,  <39.372631, 35.738461, 32.397926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787521, 36.221809, 32.833572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401051, 36.241177, 32.934887>,  <39.169167, 36.252796, 32.995674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401051, 36.241177, 32.934887>,  <39.787521, 36.221809, 32.833572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401051, 36.241177, 32.934887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254517, 0.021119, 0.966838,
		0.041460, 0.998604, -0.032727,
		-0.966179, 0.048415, 0.253286,
		39.111198, 36.255703, 33.010872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741814, 36.696236, 33.496655>,  <39.787521, 36.221809, 32.833572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741814, 36.696236, 33.496655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384941, 36.515705, 33.489643>,  <39.170818, 36.407387, 33.485435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384941, 36.515705, 33.489643>,  <39.741814, 36.696236, 33.496655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384941, 36.515705, 33.489643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055416, -0.147888, 0.987450,
		-0.448258, 0.880017, 0.156954,
		-0.892185, -0.451330, -0.017525,
		39.117287, 36.380306, 33.484386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235909, 36.804470, 34.083038>,  <39.741814, 36.696236, 33.496655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235909, 36.804470, 34.083038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198441, 36.428623, 33.951370>,  <39.175961, 36.203117, 33.872368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198441, 36.428623, 33.951370>,  <39.235909, 36.804470, 34.083038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198441, 36.428623, 33.951370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229554, -0.342097, 0.911194,
		-0.968778, 0.009786, 0.247735,
		-0.093666, -0.939614, -0.329170,
		39.170341, 36.146740, 33.852619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722214, 36.476662, 34.446697>,  <39.235909, 36.804470, 34.083038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722214, 36.476662, 34.446697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991062, 36.217922, 34.302563>,  <39.152370, 36.062679, 34.216084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991062, 36.217922, 34.302563>,  <38.722214, 36.476662, 34.446697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991062, 36.217922, 34.302563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088365, -0.413094, 0.906391,
		-0.735150, -0.641044, -0.220490,
		0.672120, -0.646850, -0.360332,
		39.192699, 36.023869, 34.194462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475079, 35.870159, 34.640522>,  <38.722214, 36.476662, 34.446697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475079, 35.870159, 34.640522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867100, 35.816166, 34.582180>,  <39.102314, 35.783772, 34.547173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867100, 35.816166, 34.582180>,  <38.475079, 35.870159, 34.640522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867100, 35.816166, 34.582180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065561, -0.473259, 0.878481,
		-0.187607, -0.870521, -0.454969,
		0.980054, -0.134982, -0.145859,
		39.161118, 35.775673, 34.538422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627232, 35.077679, 34.886330>,  <38.475079, 35.870159, 34.640522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627232, 35.077679, 34.886330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980686, 35.264935, 34.883915>,  <39.192757, 35.377289, 34.882465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980686, 35.264935, 34.883915>,  <38.627232, 35.077679, 34.886330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980686, 35.264935, 34.883915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284801, -0.527246, 0.800562,
		0.371590, -0.709124, -0.599219,
		0.883634, 0.468139, -0.006040,
		39.245777, 35.405376, 34.882103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123520, 34.530254, 34.986233>,  <38.627232, 35.077679, 34.886330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123520, 34.530254, 34.986233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295715, 34.874329, 35.095604>,  <39.399033, 35.080772, 35.161224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295715, 34.874329, 35.095604>,  <39.123520, 34.530254, 34.986233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295715, 34.874329, 35.095604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199593, -0.386155, 0.900581,
		0.880250, -0.333119, -0.337923,
		0.430491, 0.860184, 0.273425,
		39.424862, 35.132385, 35.177631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716434, 34.357792, 35.270260>,  <39.123520, 34.530254, 34.986233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716434, 34.357792, 35.270260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622490, 34.720242, 35.410988>,  <39.566124, 34.937710, 35.495426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622490, 34.720242, 35.410988>,  <39.716434, 34.357792, 35.270260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622490, 34.720242, 35.410988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110067, -0.334828, 0.935829,
		0.965777, 0.258514, -0.021096,
		-0.234861, 0.906124, 0.351823,
		39.552032, 34.992081, 35.516533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230221, 34.431091, 35.815468>,  <39.716434, 34.357792, 35.270260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230221, 34.431091, 35.815468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931400, 34.688358, 35.882706>,  <39.752110, 34.842720, 35.923050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931400, 34.688358, 35.882706>,  <40.230221, 34.431091, 35.815468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931400, 34.688358, 35.882706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067728, -0.177910, 0.981713,
		0.661313, 0.744770, 0.089346,
		-0.747046, 0.643168, 0.168096,
		39.707287, 34.881310, 35.933136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563442, 34.749744, 36.329269>,  <40.230221, 34.431091, 35.815468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563442, 34.749744, 36.329269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175507, 34.844940, 36.350357>,  <39.942745, 34.902058, 36.363010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175507, 34.844940, 36.350357>,  <40.563442, 34.749744, 36.329269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175507, 34.844940, 36.350357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016468, -0.279738, 0.959935,
		0.243199, 0.930112, 0.275219,
		-0.969837, 0.237988, 0.052715,
		39.884556, 34.916336, 36.366173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515076, 35.180389, 36.888485>,  <40.563442, 34.749744, 36.329269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515076, 35.180389, 36.888485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151455, 35.032696, 36.811234>,  <39.933285, 34.944080, 36.764881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151455, 35.032696, 36.811234>,  <40.515076, 35.180389, 36.888485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151455, 35.032696, 36.811234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034219, -0.395764, 0.917715,
		-0.415285, 0.840855, 0.347133,
		-0.909047, -0.369235, -0.193128,
		39.878742, 34.921925, 36.753296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103523, 35.288174, 37.475922>,  <40.515076, 35.180389, 36.888485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103523, 35.288174, 37.475922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969372, 34.964409, 37.283104>,  <39.888882, 34.770149, 37.167412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969372, 34.964409, 37.283104>,  <40.103523, 35.288174, 37.475922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969372, 34.964409, 37.283104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024543, -0.504003, 0.863353,
		-0.941764, 0.301379, 0.149165,
		-0.335377, -0.809415, -0.482048,
		39.868759, 34.721584, 37.138489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510963, 35.069065, 37.822151>,  <40.103523, 35.288174, 37.475922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510963, 35.069065, 37.822151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644821, 34.756344, 37.611706>,  <39.725136, 34.568710, 37.485439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644821, 34.756344, 37.611706>,  <39.510963, 35.069065, 37.822151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644821, 34.756344, 37.611706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106317, -0.523418, 0.845417,
		-0.936328, -0.338849, -0.092040,
		0.334644, -0.781802, -0.526116,
		39.745216, 34.521805, 37.453873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128254, 34.495712, 37.929462>,  <39.510963, 35.069065, 37.822151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128254, 34.495712, 37.929462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485104, 34.352425, 37.819336>,  <39.699211, 34.266453, 37.753258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485104, 34.352425, 37.819336>,  <39.128254, 34.495712, 37.929462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485104, 34.352425, 37.819336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017123, -0.635757, 0.771700,
		-0.451471, -0.683736, -0.573306,
		0.892122, -0.358217, -0.275318,
		39.752739, 34.244961, 37.736740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163544, 33.751457, 37.794094>,  <39.128254, 34.495712, 37.929462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163544, 33.751457, 37.794094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537434, 33.762100, 37.935848>,  <39.761768, 33.768486, 38.020901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537434, 33.762100, 37.935848>,  <39.163544, 33.751457, 37.794094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537434, 33.762100, 37.935848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192108, -0.801110, 0.566848,
		0.298985, -0.597925, -0.743702,
		0.934720, 0.026608, 0.354387,
		39.817848, 33.770084, 38.042164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218063, 33.045792, 38.114967>,  <39.163544, 33.751457, 37.794094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218063, 33.045792, 38.114967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569836, 33.236092, 38.121510>,  <39.780899, 33.350273, 38.125435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569836, 33.236092, 38.121510>,  <39.218063, 33.045792, 38.114967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569836, 33.236092, 38.121510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353545, -0.675755, 0.646808,
		0.318772, -0.563039, -0.762477,
		0.879426, 0.475755, 0.016352,
		39.833664, 33.378819, 38.126415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786621, 32.602142, 37.957859>,  <39.218063, 33.045792, 38.114967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786621, 32.602142, 37.957859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927250, 32.912792, 38.166958>,  <40.011627, 33.099182, 38.292416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927250, 32.912792, 38.166958>,  <39.786621, 32.602142, 37.957859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927250, 32.912792, 38.166958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295745, -0.621931, 0.725077,
		0.888220, -0.100315, -0.448333,
		0.351568, 0.776620, 0.522744,
		40.032719, 33.145779, 38.323780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462067, 32.398121, 38.096802>,  <39.786621, 32.602142, 37.957859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462067, 32.398121, 38.096802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359493, 32.689987, 38.350361>,  <40.297951, 32.865108, 38.502495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359493, 32.689987, 38.350361>,  <40.462067, 32.398121, 38.096802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359493, 32.689987, 38.350361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136193, -0.622007, 0.771076,
		0.956920, 0.284060, 0.060126,
		-0.256430, 0.729669, 0.633898,
		40.282566, 32.908890, 38.540531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019379, 32.451721, 38.548473>,  <40.462067, 32.398121, 38.096802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019379, 32.451721, 38.548473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734337, 32.619026, 38.773773>,  <40.563313, 32.719410, 38.908955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734337, 32.619026, 38.773773>,  <41.019379, 32.451721, 38.548473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734337, 32.619026, 38.773773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281409, -0.565021, 0.775603,
		0.642654, 0.711202, 0.284933,
		-0.712604, 0.418262, 0.563252,
		40.520557, 32.744503, 38.942749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274658, 32.436699, 39.224575>,  <41.019379, 32.451721, 38.548473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274658, 32.436699, 39.224575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889187, 32.529747, 39.277065>,  <40.657906, 32.585575, 39.308559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889187, 32.529747, 39.277065>,  <41.274658, 32.436699, 39.224575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889187, 32.529747, 39.277065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016153, -0.439659, 0.898019,
		0.266590, 0.867518, 0.419931,
		-0.963675, 0.232619, 0.131222,
		40.600086, 32.599533, 39.316433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225697, 32.799297, 39.913204>,  <41.274658, 32.436699, 39.224575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225697, 32.799297, 39.913204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874557, 32.638432, 39.809170>,  <40.663872, 32.541912, 39.746750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874557, 32.638432, 39.809170>,  <41.225697, 32.799297, 39.913204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874557, 32.638432, 39.809170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006232, -0.533408, 0.845835,
		-0.478891, 0.744139, 0.465747,
		-0.877852, -0.402161, -0.260082,
		40.611202, 32.517784, 39.731144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661400, 33.019657, 40.405510>,  <41.225697, 32.799297, 39.913204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661400, 33.019657, 40.405510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559883, 32.669708, 40.240494>,  <40.498974, 32.459740, 40.141483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559883, 32.669708, 40.240494>,  <40.661400, 33.019657, 40.405510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559883, 32.669708, 40.240494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173328, -0.460734, 0.870449,
		-0.951603, 0.149405, 0.268569,
		-0.253789, -0.874873, -0.412540,
		40.483746, 32.407246, 40.116734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031258, 32.723049, 40.767555>,  <40.661400, 33.019657, 40.405510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031258, 32.723049, 40.767555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302216, 32.439266, 40.689785>,  <40.464790, 32.268997, 40.643124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302216, 32.439266, 40.689785>,  <40.031258, 32.723049, 40.767555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302216, 32.439266, 40.689785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007445, -0.257679, 0.966202,
		-0.735580, -0.655950, -0.169269,
		0.677397, -0.709459, -0.194427,
		40.505436, 32.226429, 40.631458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778961, 32.161182, 41.005154>,  <40.031258, 32.723049, 40.767555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778961, 32.161182, 41.005154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178699, 32.151165, 41.015526>,  <40.418545, 32.145153, 41.021748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178699, 32.151165, 41.015526>,  <39.778961, 32.161182, 41.005154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178699, 32.151165, 41.015526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033465, -0.377095, 0.925570,
		-0.013402, -0.925836, -0.377688,
		0.999350, -0.025044, 0.025930,
		40.478504, 32.143650, 41.023304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211597, 31.437256, 41.172894>,  <39.778961, 32.161182, 41.005154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211597, 31.437256, 41.172894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317818, 31.804834, 41.289528>,  <40.381550, 32.025379, 41.359509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317818, 31.804834, 41.289528>,  <40.211597, 31.437256, 41.172894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317818, 31.804834, 41.289528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032775, -0.293668, 0.955346,
		0.963540, -0.263250, -0.047865,
		0.265551, 0.918945, 0.291588,
		40.397484, 32.080517, 41.377003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877808, 31.389076, 41.539177>,  <40.211597, 31.437256, 41.172894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877808, 31.389076, 41.539177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638630, 31.696005, 41.631851>,  <40.495125, 31.880163, 41.687454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638630, 31.696005, 41.631851>,  <40.877808, 31.389076, 41.539177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638630, 31.696005, 41.631851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116005, -0.203160, 0.972249,
		0.793099, 0.608227, 0.032465,
		-0.597944, 0.767324, 0.231683,
		40.459248, 31.926203, 41.701355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189899, 31.654839, 40.927052>,  <40.877808, 31.389076, 41.539177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189899, 31.654839, 40.927052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864864, 31.431494, 40.860199>,  <40.669842, 31.297487, 40.820087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864864, 31.431494, 40.860199>,  <41.189899, 31.654839, 40.927052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864864, 31.431494, 40.860199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369507, 0.715289, -0.593149,
		0.450738, -0.420230, -0.787554,
		-0.812588, -0.558362, -0.167130,
		40.621086, 31.263985, 40.810059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128433, 31.497734, 40.162914>,  <41.189899, 31.654839, 40.927052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128433, 31.497734, 40.162914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775925, 31.487173, 40.351662>,  <40.564419, 31.480837, 40.464909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775925, 31.487173, 40.351662>,  <41.128433, 31.497734, 40.162914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775925, 31.487173, 40.351662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380764, 0.631108, -0.675812,
		-0.279959, -0.775246, -0.566230,
		-0.881273, -0.026400, 0.471870,
		40.511543, 31.479254, 40.493221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631306, 31.344786, 39.679695>,  <41.128433, 31.497734, 40.162914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631306, 31.344786, 39.679695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464233, 31.564247, 39.969391>,  <40.363991, 31.695923, 40.143208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464233, 31.564247, 39.969391>,  <40.631306, 31.344786, 39.679695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464233, 31.564247, 39.969391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393992, 0.608891, -0.688492,
		-0.818725, -0.572916, -0.038159,
		-0.417683, 0.548652, 0.724239,
		40.338928, 31.728842, 40.186661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867077, 31.348852, 39.659389>,  <40.631306, 31.344786, 39.679695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867077, 31.348852, 39.659389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046585, 31.674141, 39.807594>,  <40.154289, 31.869314, 39.896519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046585, 31.674141, 39.807594>,  <39.867077, 31.348852, 39.659389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046585, 31.674141, 39.807594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331498, 0.536516, -0.776054,
		-0.829890, 0.225442, 0.510352,
		0.448767, 0.813220, 0.370515,
		40.181213, 31.918106, 39.918751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467781, 31.902712, 39.605499>,  <39.867077, 31.348852, 39.659389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467781, 31.902712, 39.605499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816631, 32.097355, 39.625912>,  <40.025944, 32.214142, 39.638157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816631, 32.097355, 39.625912>,  <39.467781, 31.902712, 39.605499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816631, 32.097355, 39.625912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240610, 0.517355, -0.821250,
		-0.426027, 0.703957, 0.568282,
		0.872128, 0.486609, 0.051028,
		40.078270, 32.243336, 39.641220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314339, 32.584423, 39.548355>,  <39.467781, 31.902712, 39.605499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314339, 32.584423, 39.548355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704708, 32.581978, 39.461151>,  <39.938931, 32.580509, 39.408829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704708, 32.581978, 39.461151>,  <39.314339, 32.584423, 39.548355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704708, 32.581978, 39.461151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149449, 0.709295, -0.688888,
		0.158846, 0.704885, 0.691306,
		0.975927, -0.006112, -0.218013,
		39.997486, 32.580143, 39.395748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524849, 33.275196, 39.428783>,  <39.314339, 32.584423, 39.548355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524849, 33.275196, 39.428783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827648, 33.107075, 39.228661>,  <40.009327, 33.006203, 39.108589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827648, 33.107075, 39.228661>,  <39.524849, 33.275196, 39.428783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827648, 33.107075, 39.228661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074612, 0.705058, -0.705214,
		0.649147, 0.571172, 0.502365,
		0.756995, -0.420306, -0.500302,
		40.054745, 32.980984, 39.078571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937092, 33.853516, 39.300892>,  <39.524849, 33.275196, 39.428783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937092, 33.853516, 39.300892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074142, 33.553627, 39.074432>,  <40.156372, 33.373692, 38.938557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074142, 33.553627, 39.074432>,  <39.937092, 33.853516, 39.300892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074142, 33.553627, 39.074432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082308, 0.624260, -0.776869,
		0.935860, 0.219575, 0.275594,
		0.342623, -0.749724, -0.566148,
		40.176929, 33.328709, 38.904587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507690, 34.080738, 39.076233>,  <39.937092, 33.853516, 39.300892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507690, 34.080738, 39.076233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344627, 33.803524, 38.838402>,  <40.246788, 33.637196, 38.695702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344627, 33.803524, 38.838402>,  <40.507690, 34.080738, 39.076233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344627, 33.803524, 38.838402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111140, 0.608641, -0.785623,
		0.906346, -0.386346, -0.171093,
		-0.407657, -0.693031, -0.594578,
		40.222332, 33.595615, 38.660027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029114, 33.940441, 38.503517>,  <40.507690, 34.080738, 39.076233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029114, 33.940441, 38.503517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657024, 33.864471, 38.377903>,  <40.433773, 33.818890, 38.302536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657024, 33.864471, 38.377903>,  <41.029114, 33.940441, 38.503517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657024, 33.864471, 38.377903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145455, 0.594819, -0.790590,
		0.336944, -0.781102, -0.525689,
		-0.930221, -0.189921, -0.314036,
		40.377956, 33.807495, 38.283691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940773, 34.256115, 37.770390>,  <41.029114, 33.940441, 38.503517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940773, 34.256115, 37.770390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594429, 34.067043, 37.835945>,  <40.386623, 33.953602, 37.875278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594429, 34.067043, 37.835945>,  <40.940773, 34.256115, 37.770390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594429, 34.067043, 37.835945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335022, 0.304551, -0.891633,
		0.371550, -0.826933, -0.422058,
		-0.865859, -0.472685, 0.163885,
		40.334671, 33.925240, 37.885113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742931, 33.828735, 37.117130>,  <40.940773, 34.256115, 37.770390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742931, 33.828735, 37.117130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406528, 33.923717, 37.311584>,  <40.204689, 33.980709, 37.428257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406528, 33.923717, 37.311584>,  <40.742931, 33.828735, 37.117130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406528, 33.923717, 37.311584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380485, 0.379216, -0.843461,
		-0.384636, -0.894320, -0.228573,
		-0.841003, 0.237457, 0.486136,
		40.154228, 33.994953, 37.457424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128750, 33.508518, 36.701118>,  <40.742931, 33.828735, 37.117130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128750, 33.508518, 36.701118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021572, 33.813000, 36.937344>,  <39.957264, 33.995689, 37.079079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021572, 33.813000, 36.937344>,  <40.128750, 33.508518, 36.701118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021572, 33.813000, 36.937344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402328, 0.468568, -0.786496,
		-0.875408, -0.448338, 0.180706,
		-0.267943, 0.761208, 0.590567,
		39.941189, 34.041363, 37.114513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397339, 33.610012, 36.565380>,  <40.128750, 33.508518, 36.701118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397339, 33.610012, 36.565380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546375, 33.944962, 36.725372>,  <39.635796, 34.145931, 36.821369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546375, 33.944962, 36.725372>,  <39.397339, 33.610012, 36.565380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546375, 33.944962, 36.725372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321616, 0.520823, -0.790763,
		-0.870483, 0.165990, 0.463365,
		0.372590, 0.837371, 0.399983,
		39.658154, 34.196175, 36.845367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779568, 34.012474, 36.445435>,  <39.397339, 33.610012, 36.565380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779568, 34.012474, 36.445435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070930, 34.183220, 36.659805>,  <39.245747, 34.285667, 36.788425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070930, 34.183220, 36.659805>,  <38.779568, 34.012474, 36.445435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070930, 34.183220, 36.659805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024883, 0.798166, -0.601924,
		-0.684697, 0.425107, 0.592008,
		0.728403, 0.426867, 0.535924,
		39.289452, 34.311279, 36.820583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569942, 34.611897, 36.742218>,  <38.779568, 34.012474, 36.445435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569942, 34.611897, 36.742218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964577, 34.666676, 36.706657>,  <39.201355, 34.699543, 36.685322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964577, 34.666676, 36.706657>,  <38.569942, 34.611897, 36.742218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964577, 34.666676, 36.706657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163120, 0.803480, -0.572549,
		-0.006980, 0.579367, 0.815037,
		0.986582, 0.136945, -0.088898,
		39.260551, 34.707760, 36.679989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668446, 35.335499, 36.516304>,  <38.569942, 34.611897, 36.742218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668446, 35.335499, 36.516304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041462, 35.201149, 36.463318>,  <39.265274, 35.120537, 36.431526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041462, 35.201149, 36.463318>,  <38.668446, 35.335499, 36.516304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041462, 35.201149, 36.463318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144468, 0.683357, -0.715648,
		0.330892, 0.648237, 0.685784,
		0.932545, -0.335876, -0.132467,
		39.321224, 35.100388, 36.423576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980469, 35.953197, 36.375717>,  <38.668446, 35.335499, 36.516304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980469, 35.953197, 36.375717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216003, 35.656818, 36.246555>,  <39.357327, 35.478992, 36.169056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216003, 35.656818, 36.246555>,  <38.980469, 35.953197, 36.375717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216003, 35.656818, 36.246555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064577, 0.441366, -0.895001,
		0.805667, 0.506159, 0.307741,
		0.588839, -0.740945, -0.322908,
		39.392654, 35.434536, 36.149685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445385, 36.242275, 35.881721>,  <38.980469, 35.953197, 36.375717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445385, 36.242275, 35.881721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489429, 35.857315, 35.782394>,  <39.515854, 35.626339, 35.722797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489429, 35.857315, 35.782394>,  <39.445385, 36.242275, 35.881721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489429, 35.857315, 35.782394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204284, 0.266412, -0.941962,
		0.972700, 0.052991, 0.225937,
		0.110107, -0.962402, -0.248314,
		39.522461, 35.568596, 35.707901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915630, 36.357944, 35.494926>,  <39.445385, 36.242275, 35.881721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915630, 36.357944, 35.494926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786896, 35.989948, 35.405457>,  <39.709656, 35.769150, 35.351772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786896, 35.989948, 35.405457>,  <39.915630, 36.357944, 35.494926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786896, 35.989948, 35.405457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359248, 0.099920, -0.927878,
		0.875993, -0.378979, 0.298348,
		-0.321835, -0.919995, -0.223677,
		39.690346, 35.713951, 35.338352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424385, 35.982510, 35.057423>,  <39.915630, 36.357944, 35.494926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424385, 35.982510, 35.057423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066505, 35.813847, 34.998486>,  <39.851776, 35.712646, 34.963123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066505, 35.813847, 34.998486>,  <40.424385, 35.982510, 35.057423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066505, 35.813847, 34.998486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090340, 0.152221, -0.984209,
		0.437431, -0.893885, -0.098099,
		-0.894703, -0.421661, -0.147339,
		39.798096, 35.687347, 34.954285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466347, 35.634686, 34.424835>,  <40.424385, 35.982510, 35.057423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466347, 35.634686, 34.424835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069416, 35.670479, 34.458958>,  <39.831257, 35.691956, 34.479431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069416, 35.670479, 34.458958>,  <40.466347, 35.634686, 34.424835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069416, 35.670479, 34.458958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072827, 0.134521, -0.988231,
		-0.099906, -0.986862, -0.126972,
		-0.992328, 0.089483, 0.085310,
		39.771717, 35.697323, 34.484550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200447, 35.243847, 33.900867>,  <40.466347, 35.634686, 34.424835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200447, 35.243847, 33.900867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899776, 35.494217, 33.984005>,  <39.719372, 35.644440, 34.033890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899776, 35.494217, 33.984005>,  <40.200447, 35.243847, 33.900867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899776, 35.494217, 33.984005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317201, -0.066796, -0.946003,
		-0.578240, -0.777021, 0.248752,
		-0.751679, 0.625921, 0.207848,
		39.674274, 35.681992, 34.046360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634647, 34.981140, 33.557335>,  <40.200447, 35.243847, 33.900867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634647, 34.981140, 33.557335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580288, 35.373672, 33.611774>,  <39.547672, 35.609192, 33.644436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580288, 35.373672, 33.611774>,  <39.634647, 34.981140, 33.557335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580288, 35.373672, 33.611774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256495, 0.097837, -0.961581,
		-0.956944, -0.165588, 0.238410,
		-0.135901, 0.981330, 0.136097,
		39.539516, 35.668072, 33.652603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084538, 34.228649, 33.514271>,  <39.634647, 34.981140, 33.557335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084538, 34.228649, 33.514271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203136, 34.609680, 33.486877>,  <40.274296, 34.838299, 33.470440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203136, 34.609680, 33.486877>,  <40.084538, 34.228649, 33.514271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203136, 34.609680, 33.486877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574966, -0.235298, -0.783613,
		-0.762565, 0.192960, -0.617463,
		0.296494, 0.952576, -0.068485,
		40.292084, 34.895454, 33.466331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755276, 34.020008, 33.518044>,  <40.084538, 34.228649, 33.514271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755276, 34.020008, 33.518044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991219, 34.305202, 33.366405>,  <41.132786, 34.476318, 33.275421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991219, 34.305202, 33.366405>,  <40.755276, 34.020008, 33.518044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991219, 34.305202, 33.366405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733620, -0.669344, -0.117388,
		-0.337443, -0.208871, -0.917881,
		0.589859, 0.712987, -0.379098,
		41.168175, 34.519100, 33.252678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325203, 33.657280, 33.154594>,  <40.755276, 34.020008, 33.518044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325203, 33.657280, 33.154594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437412, 34.041042, 33.166252>,  <41.504738, 34.271297, 33.173248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437412, 34.041042, 33.166252>,  <41.325203, 33.657280, 33.154594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437412, 34.041042, 33.166252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956705, -0.281933, 0.072311,
		0.077593, 0.007599, -0.996956,
		0.280526, 0.959404, 0.029146,
		41.521568, 34.328865, 33.174995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844837, 33.741756, 32.696705>,  <41.325203, 33.657280, 33.154594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844837, 33.741756, 32.696705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908581, 34.018929, 32.977974>,  <41.946827, 34.185230, 33.146736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908581, 34.018929, 32.977974>,  <41.844837, 33.741756, 32.696705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908581, 34.018929, 32.977974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970332, -0.241126, 0.017712,
		0.181827, 0.679492, -0.710795,
		0.159356, 0.692928, 0.703176,
		41.956387, 34.226807, 33.188927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241493, 34.328075, 32.461224>,  <41.844837, 33.741756, 32.696705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241493, 34.328075, 32.461224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272621, 34.233379, 32.848602>,  <42.291298, 34.176563, 33.081032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272621, 34.233379, 32.848602>,  <42.241493, 34.328075, 32.461224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272621, 34.233379, 32.848602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924828, -0.345647, -0.158811,
		0.372340, 0.908010, 0.192045,
		0.077822, -0.236740, 0.968451,
		42.295967, 34.162357, 33.139137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923035, 34.620468, 32.812798>,  <42.241493, 34.328075, 32.461224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923035, 34.620468, 32.812798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787064, 34.284050, 32.981129>,  <42.705479, 34.082199, 33.082127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787064, 34.284050, 32.981129>,  <42.923035, 34.620468, 32.812798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787064, 34.284050, 32.981129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938233, -0.333991, 0.090379,
		0.064541, 0.425558, 0.902626,
		-0.339931, -0.841041, 0.420829,
		42.685085, 34.031738, 33.107376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.344402, 34.584408, 33.444931>,  <42.923035, 34.620468, 32.812798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.344402, 34.584408, 33.444931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173569, 34.244240, 33.322037>,  <43.071068, 34.040138, 33.248299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173569, 34.244240, 33.322037>,  <43.344402, 34.584408, 33.444931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173569, 34.244240, 33.322037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885077, -0.462706, 0.050422,
		-0.185040, -0.250394, 0.950296,
		-0.427082, -0.850415, -0.307237,
		43.045444, 33.989117, 33.229866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259533, 33.983585, 33.967495>,  <43.344402, 34.584408, 33.444931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259533, 33.983585, 33.967495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305336, 33.889084, 33.581528>,  <43.332817, 33.832382, 33.349945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305336, 33.889084, 33.581528>,  <43.259533, 33.983585, 33.967495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305336, 33.889084, 33.581528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887637, -0.411822, 0.206163,
		-0.446082, -0.880107, 0.162548,
		0.114505, -0.236249, -0.964922,
		43.339687, 33.818211, 33.292049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399109, 33.257404, 33.848106>,  <43.259533, 33.983585, 33.967495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399109, 33.257404, 33.848106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590561, 33.433163, 33.544041>,  <43.705433, 33.538616, 33.361603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590561, 33.433163, 33.544041>,  <43.399109, 33.257404, 33.848106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590561, 33.433163, 33.544041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803110, -0.569005, 0.176769,
		-0.354867, -0.695103, -0.625221,
		0.478627, 0.439392, -0.760165,
		43.734150, 33.564980, 33.315990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816151, 32.761566, 33.578579>,  <43.399109, 33.257404, 33.848106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816151, 32.761566, 33.578579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991673, 33.099686, 33.456654>,  <44.096985, 33.302559, 33.383499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991673, 33.099686, 33.456654>,  <43.816151, 32.761566, 33.578579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.991673, 33.099686, 33.456654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897323, -0.394275, 0.198389,
		0.047518, -0.360572, -0.931520,
		0.438808, 0.845302, -0.304815,
		44.123314, 33.353275, 33.365208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073887, 33.066452, 32.912243>,  <43.816151, 32.761566, 33.578579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073887, 33.066452, 32.912243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956841, 33.264118, 32.584785>,  <43.886612, 33.382717, 32.388309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956841, 33.264118, 32.584785>,  <44.073887, 33.066452, 32.912243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956841, 33.264118, 32.584785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354072, 0.739271, 0.572811,
		0.888263, 0.457471, -0.041350,
		-0.292613, 0.494165, -0.818644,
		43.869057, 33.412369, 32.339191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747902, 33.148979, 33.370094>,  <44.073887, 33.066452, 32.912243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747902, 33.148979, 33.370094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088413, 33.029366, 33.197628>,  <45.292721, 32.957596, 33.094147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088413, 33.029366, 33.197628>,  <44.747902, 33.148979, 33.370094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088413, 33.029366, 33.197628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498262, 0.203077, 0.842909,
		-0.164500, -0.932383, 0.321872,
		0.851279, -0.299036, -0.431164,
		45.343796, 32.939655, 33.068279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.131466, 32.584862, 33.675537>,  <44.747902, 33.148979, 33.370094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.131466, 32.584862, 33.675537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394474, 32.839146, 33.513775>,  <45.552277, 32.991718, 33.416718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394474, 32.839146, 33.513775>,  <45.131466, 32.584862, 33.675537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.394474, 32.839146, 33.513775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346936, 0.220994, 0.911481,
		0.668810, -0.739615, -0.075244,
		0.657516, 0.635713, -0.404403,
		45.591728, 33.029858, 33.392452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.871925, 32.532024, 33.930481>,  <45.131466, 32.584862, 33.675537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.871925, 32.532024, 33.930481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.797649, 32.906235, 33.810276>,  <45.753082, 33.130760, 33.738152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.797649, 32.906235, 33.810276>,  <45.871925, 32.532024, 33.930481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.797649, 32.906235, 33.810276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112853, 0.324114, 0.939263,
		0.976106, 0.140498, -0.165761,
		-0.185690, 0.935527, -0.300514,
		45.741943, 33.186893, 33.720123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.512337, 32.899971, 34.097382>,  <45.871925, 32.532024, 33.930481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.512337, 32.899971, 34.097382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187660, 33.133579, 34.094082>,  <45.992855, 33.273743, 34.092102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187660, 33.133579, 34.094082>,  <46.512337, 32.899971, 34.097382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.187660, 33.133579, 34.094082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289243, 0.414190, 0.863010,
		0.507433, 0.698116, -0.505120,
		-0.811696, 0.584022, -0.008249,
		45.944153, 33.308784, 34.091606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.732861, 33.614441, 34.285290>,  <46.512337, 32.899971, 34.097382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.732861, 33.614441, 34.285290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350574, 33.547382, 34.382034>,  <46.121201, 33.507149, 34.440083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350574, 33.547382, 34.382034>,  <46.732861, 33.614441, 34.285290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.350574, 33.547382, 34.382034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174282, 0.339813, 0.924204,
		-0.237129, 0.925430, -0.295548,
		-0.955717, -0.167647, 0.241865,
		46.063858, 33.497089, 34.454594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.235725, 34.268391, 34.463402>,  <46.732861, 33.614441, 34.285290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.235725, 34.268391, 34.463402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.148693, 33.934547, 34.665821>,  <46.096474, 33.734241, 34.787273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.148693, 33.934547, 34.665821>,  <46.235725, 34.268391, 34.463402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.148693, 33.934547, 34.665821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168412, 0.478589, 0.861736,
		-0.961403, 0.272723, 0.036426,
		-0.217583, -0.834610, 0.506047,
		46.083420, 33.684166, 34.817635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.714870, 34.620342, 34.823444>,  <46.235725, 34.268391, 34.463402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.714870, 34.620342, 34.823444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.333229, 34.513138, 34.876884>,  <46.104244, 34.448814, 34.908947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.333229, 34.513138, 34.876884>,  <46.714870, 34.620342, 34.823444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.333229, 34.513138, 34.876884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059043, 0.605725, 0.793480,
		-0.293586, 0.749177, -0.593751,
		-0.954108, -0.268012, 0.133598,
		46.046997, 34.432735, 34.916965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.187092, 34.857368, 35.346764>,  <46.714870, 34.620342, 34.823444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.187092, 34.857368, 35.346764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.528252, 35.045185, 35.438061>,  <47.732948, 35.157875, 35.492840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.528252, 35.045185, 35.438061>,  <47.187092, 34.857368, 35.346764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.528252, 35.045185, 35.438061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495051, -0.588518, -0.639196,
		-0.165807, 0.658160, -0.734393,
		0.852897, 0.469545, 0.228243,
		47.784122, 35.186050, 35.506535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.553211, 35.196617, 34.699100>,  <47.187092, 34.857368, 35.346764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.553211, 35.196617, 34.699100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.773346, 35.078377, 35.011444>,  <47.905426, 35.007431, 35.198853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.773346, 35.078377, 35.011444>,  <47.553211, 35.196617, 34.699100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.773346, 35.078377, 35.011444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478328, -0.654922, -0.585047,
		0.684346, 0.695482, -0.219033,
		0.550339, -0.295605, 0.780862,
		47.938446, 34.989697, 35.245701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.266838, 34.431267, 28.028221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.995987, 34.725273, 28.042391>,  <30.833477, 34.901676, 28.050892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.995987, 34.725273, 28.042391>,  <31.266838, 34.431267, 28.028221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995987, 34.725273, 28.042391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473347, 0.398202, 0.785734,
		0.563419, 0.548809, -0.617549,
		-0.677128, 0.735012, 0.035423,
		30.792849, 34.945778, 28.053017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633314, 35.062737, 28.064260>,  <31.266838, 34.431267, 28.028221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633314, 35.062737, 28.064260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.274176, 35.153267, 28.215334>,  <31.058693, 35.207584, 28.305979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.274176, 35.153267, 28.215334>,  <31.633314, 35.062737, 28.064260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274176, 35.153267, 28.215334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440146, 0.438116, 0.783790,
		0.011924, 0.869960, -0.492979,
		-0.897847, 0.226329, 0.377685,
		31.004822, 35.221165, 28.328640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574732, 35.819729, 28.248110>,  <31.633314, 35.062737, 28.064260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574732, 35.819729, 28.248110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.292791, 35.623707, 28.453255>,  <31.123627, 35.506092, 28.576342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.292791, 35.623707, 28.453255>,  <31.574732, 35.819729, 28.248110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292791, 35.623707, 28.453255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379904, 0.349778, 0.856346,
		-0.599048, 0.798434, -0.060366,
		-0.704850, -0.490059, 0.512863,
		31.081337, 35.476688, 28.607113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440670, 36.312729, 28.722727>,  <31.574732, 35.819729, 28.248110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440670, 36.312729, 28.722727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.296181, 35.970604, 28.871298>,  <31.209488, 35.765327, 28.960440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.296181, 35.970604, 28.871298>,  <31.440670, 36.312729, 28.722727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296181, 35.970604, 28.871298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445936, 0.191371, 0.874367,
		-0.818938, 0.481475, 0.312287,
		-0.361223, -0.855312, 0.371428,
		31.187815, 35.714008, 28.982727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071257, 36.535671, 29.362265>,  <31.440670, 36.312729, 28.722727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071257, 36.535671, 29.362265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.157541, 36.146862, 29.399448>,  <31.209312, 35.913578, 29.421759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.157541, 36.146862, 29.399448>,  <31.071257, 36.535671, 29.362265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157541, 36.146862, 29.399448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370323, 0.169525, 0.913303,
		-0.903509, -0.162586, 0.396531,
		0.215712, -0.972022, 0.092959,
		31.222256, 35.855255, 29.427336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755592, 36.393585, 30.049305>,  <31.071257, 36.535671, 29.362265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755592, 36.393585, 30.049305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.034101, 36.120132, 29.961805>,  <31.201206, 35.956062, 29.909306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.034101, 36.120132, 29.961805>,  <30.755592, 36.393585, 30.049305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034101, 36.120132, 29.961805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414452, 0.134090, 0.900138,
		-0.586031, -0.717403, 0.376696,
		0.696273, -0.683632, -0.218749,
		31.242983, 35.915043, 29.896181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752600, 35.998638, 30.664692>,  <30.755592, 36.393585, 30.049305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752600, 35.998638, 30.664692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.084641, 35.893749, 30.467850>,  <31.283865, 35.830814, 30.349745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.084641, 35.893749, 30.467850>,  <30.752600, 35.998638, 30.664692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084641, 35.893749, 30.467850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469214, -0.148346, 0.870535,
		-0.301278, -0.953536, -0.000102,
		0.830102, -0.262225, -0.492106,
		31.333672, 35.815083, 30.320217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981594, 35.519516, 31.036827>,  <30.752600, 35.998638, 30.664692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981594, 35.519516, 31.036827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.302553, 35.647724, 30.835461>,  <31.495129, 35.724648, 30.714640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.302553, 35.647724, 30.835461>,  <30.981594, 35.519516, 31.036827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302553, 35.647724, 30.835461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555282, -0.091867, 0.826573,
		0.218684, -0.942777, -0.251691,
		0.802396, 0.320518, -0.503417,
		31.543272, 35.743881, 30.684435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495815, 35.048569, 31.255947>,  <30.981594, 35.519516, 31.036827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495815, 35.048569, 31.255947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.699450, 35.365414, 31.121252>,  <31.821630, 35.555519, 31.040434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.699450, 35.365414, 31.121252>,  <31.495815, 35.048569, 31.255947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699450, 35.365414, 31.121252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523622, 0.025488, 0.851570,
		0.683121, -0.609844, -0.401791,
		0.509084, 0.792111, -0.336739,
		31.852175, 35.603046, 31.020229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144253, 34.909004, 31.290411>,  <31.495815, 35.048569, 31.255947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144253, 34.909004, 31.290411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.173328, 35.307106, 31.264559>,  <32.190773, 35.545967, 31.249048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.173328, 35.307106, 31.264559>,  <32.144253, 34.909004, 31.290411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173328, 35.307106, 31.264559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539840, 0.015226, 0.841630,
		0.838623, -0.096066, -0.536174,
		0.072688, 0.995259, -0.064629,
		32.195133, 35.605682, 31.245171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869843, 35.106075, 31.265320>,  <32.144253, 34.909004, 31.290411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869843, 35.106075, 31.265320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.678520, 35.428406, 31.404959>,  <32.563728, 35.621803, 31.488743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.678520, 35.428406, 31.404959>,  <32.869843, 35.106075, 31.265320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678520, 35.428406, 31.404959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724100, 0.136955, 0.675960,
		0.496897, 0.576094, -0.649006,
		-0.478301, 0.805828, 0.349097,
		32.535030, 35.670155, 31.509687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399349, 35.506489, 31.523083>,  <32.869843, 35.106075, 31.265320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399349, 35.506489, 31.523083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.093479, 35.708412, 31.683304>,  <32.909958, 35.829567, 31.779436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.093479, 35.708412, 31.683304>,  <33.399349, 35.506489, 31.523083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093479, 35.708412, 31.683304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605905, 0.351555, 0.713645,
		0.219439, 0.788401, -0.574691,
		-0.764674, 0.504810, 0.400552,
		32.864079, 35.859856, 31.803469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652454, 36.149868, 31.772327>,  <33.399349, 35.506489, 31.523083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652454, 36.149868, 31.772327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.311260, 36.100952, 31.975288>,  <33.106544, 36.071602, 32.097065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.311260, 36.100952, 31.975288>,  <33.652454, 36.149868, 31.772327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311260, 36.100952, 31.975288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460339, 0.281875, 0.841805,
		-0.245970, 0.951626, -0.184140,
		-0.852987, -0.122292, 0.507403,
		33.055363, 36.064266, 32.127510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496071, 36.757133, 32.254734>,  <33.652454, 36.149868, 31.772327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496071, 36.757133, 32.254734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.312080, 36.430470, 32.394157>,  <33.201687, 36.234470, 32.477810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.312080, 36.430470, 32.394157>,  <33.496071, 36.757133, 32.254734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312080, 36.430470, 32.394157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510379, 0.078055, 0.856400,
		-0.726594, 0.571817, 0.380903,
		-0.459972, -0.816660, 0.348557,
		33.174088, 36.185471, 32.498726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385017, 36.858940, 32.976299>,  <33.496071, 36.757133, 32.254734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385017, 36.858940, 32.976299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.330883, 36.462833, 32.963299>,  <33.298401, 36.225170, 32.955498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.330883, 36.462833, 32.963299>,  <33.385017, 36.858940, 32.976299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330883, 36.462833, 32.963299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670736, -0.115713, 0.732614,
		-0.729244, 0.077351, 0.679868,
		-0.135338, -0.990266, -0.032501,
		33.290283, 36.165752, 32.953548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179333, 36.523087, 33.642754>,  <33.385017, 36.858940, 32.976299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179333, 36.523087, 33.642754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.344818, 36.220673, 33.439877>,  <33.444111, 36.039223, 33.318150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.344818, 36.220673, 33.439877>,  <33.179333, 36.523087, 33.642754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344818, 36.220673, 33.439877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523152, -0.258517, 0.812084,
		-0.745085, -0.601310, 0.288571,
		0.413714, -0.756039, -0.507194,
		33.468933, 35.993862, 33.287720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148956, 35.883381, 34.123783>,  <33.179333, 36.523087, 33.642754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148956, 35.883381, 34.123783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.439251, 35.835850, 33.852730>,  <33.613426, 35.807331, 33.690098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.439251, 35.835850, 33.852730>,  <33.148956, 35.883381, 34.123783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439251, 35.835850, 33.852730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670216, -0.100239, 0.735366,
		-0.155313, -0.987841, 0.006899,
		0.725733, -0.118835, -0.677635,
		33.656971, 35.800201, 33.649441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631744, 35.390175, 34.464256>,  <33.148956, 35.883381, 34.123783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631744, 35.390175, 34.464256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.862770, 35.530903, 34.169598>,  <34.001385, 35.615337, 33.992802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.862770, 35.530903, 34.169598>,  <33.631744, 35.390175, 34.464256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862770, 35.530903, 34.169598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797095, -0.048231, 0.601925,
		0.176237, -0.934826, -0.308286,
		0.577564, 0.351815, -0.736645,
		34.036037, 35.636448, 33.948605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249031, 34.937206, 34.457760>,  <33.631744, 35.390175, 34.464256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249031, 34.937206, 34.457760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.327892, 35.291656, 34.289989>,  <34.375210, 35.504326, 34.189327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.327892, 35.291656, 34.289989>,  <34.249031, 34.937206, 34.457760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327892, 35.291656, 34.289989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693872, 0.176110, 0.698231,
		0.692584, -0.428683, -0.580137,
		0.197152, 0.886124, -0.419422,
		34.387039, 35.557495, 34.164162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950275, 34.921719, 34.369350>,  <34.249031, 34.937206, 34.457760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950275, 34.921719, 34.369350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.873466, 35.314270, 34.367279>,  <34.827381, 35.549801, 34.366035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.873466, 35.314270, 34.367279>,  <34.950275, 34.921719, 34.369350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873466, 35.314270, 34.367279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795151, 0.158671, 0.585285,
		0.575208, 0.108265, -0.810811,
		-0.192019, 0.981378, -0.005182,
		34.815861, 35.608685, 34.365723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525692, 35.204247, 34.292984>,  <34.950275, 34.921719, 34.369350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525692, 35.204247, 34.292984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.308304, 35.495895, 34.459366>,  <35.177872, 35.670887, 34.559196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.308304, 35.495895, 34.459366>,  <35.525692, 35.204247, 34.292984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308304, 35.495895, 34.459366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715109, 0.142631, 0.684306,
		0.439616, 0.669352, -0.598920,
		-0.543467, 0.729125, 0.415957,
		35.145264, 35.714634, 34.584152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069176, 35.517918, 34.636562>,  <35.525692, 35.204247, 34.292984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069176, 35.517918, 34.636562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.430077, 35.384693, 34.527004>,  <36.646618, 35.304760, 34.461269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.430077, 35.384693, 34.527004>,  <36.069176, 35.517918, 34.636562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430077, 35.384693, 34.527004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256666, 0.095605, -0.961760,
		0.346510, 0.938046, 0.000774,
		0.902249, -0.333061, -0.273892,
		36.700752, 35.284775, 34.444836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396896, 35.989109, 34.125980>,  <36.069176, 35.517918, 34.636562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396896, 35.989109, 34.125980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.522163, 35.615562, 34.056900>,  <36.597324, 35.391434, 34.015453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.522163, 35.615562, 34.056900>,  <36.396896, 35.989109, 34.125980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522163, 35.615562, 34.056900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235579, 0.099777, -0.966720,
		0.920017, 0.343426, -0.188753,
		0.313163, -0.933865, -0.172700,
		36.616112, 35.335403, 34.005089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581554, 35.992538, 33.408840>,  <36.396896, 35.989109, 34.125980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581554, 35.992538, 33.408840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.568775, 35.604099, 33.503456>,  <36.561108, 35.371037, 33.560226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.568775, 35.604099, 33.503456>,  <36.581554, 35.992538, 33.408840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568775, 35.604099, 33.503456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305510, -0.215844, -0.927402,
		0.951653, -0.101894, -0.289784,
		-0.031948, -0.971097, 0.236538,
		36.559189, 35.312771, 33.574417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770008, 35.897079, 32.838703>,  <36.581554, 35.992538, 33.408840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770008, 35.897079, 32.838703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.643894, 35.554493, 33.002197>,  <36.568226, 35.348942, 33.100292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.643894, 35.554493, 33.002197>,  <36.770008, 35.897079, 32.838703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643894, 35.554493, 33.002197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190742, -0.364722, -0.911370,
		0.929631, -0.365304, -0.048373,
		-0.315285, -0.856464, 0.408736,
		36.549309, 35.297554, 33.124817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151501, 35.438381, 32.542133>,  <36.770008, 35.897079, 32.838703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151501, 35.438381, 32.542133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.837936, 35.225536, 32.670097>,  <36.649799, 35.097828, 32.746876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.837936, 35.225536, 32.670097>,  <37.151501, 35.438381, 32.542133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837936, 35.225536, 32.670097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111050, -0.386786, -0.915459,
		0.610864, -0.753162, 0.244114,
		-0.783909, -0.532112, 0.319912,
		36.602764, 35.065903, 32.766071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354317, 34.700802, 32.431099>,  <37.151501, 35.438381, 32.542133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354317, 34.700802, 32.431099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.956959, 34.742928, 32.449329>,  <36.718544, 34.768204, 32.460270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.956959, 34.742928, 32.449329>,  <37.354317, 34.700802, 32.431099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956959, 34.742928, 32.449329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079287, -0.342776, -0.936065,
		-0.082954, -0.933496, 0.348862,
		-0.993394, 0.105310, 0.045580,
		36.658939, 34.774521, 32.463005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157269, 34.148785, 31.990677>,  <37.354317, 34.700802, 32.431099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157269, 34.148785, 31.990677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.821018, 34.363430, 32.020046>,  <36.619267, 34.492218, 32.037666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.821018, 34.363430, 32.020046>,  <37.157269, 34.148785, 31.990677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821018, 34.363430, 32.020046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336752, -0.411665, -0.846835,
		-0.424211, -0.736590, 0.526764,
		-0.840621, 0.536625, 0.073416,
		36.568829, 34.524414, 32.042072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552109, 33.641594, 32.025097>,  <37.157269, 34.148785, 31.990677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552109, 33.641594, 32.025097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431992, 33.993061, 31.876629>,  <36.359921, 34.203941, 31.787548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431992, 33.993061, 31.876629>,  <36.552109, 33.641594, 32.025097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431992, 33.993061, 31.876629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300923, -0.456531, -0.837272,
		-0.905135, -0.139732, 0.401504,
		-0.300293, 0.878666, -0.371174,
		36.341904, 34.256660, 31.765276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012886, 33.346401, 31.678688>,  <36.552109, 33.641594, 32.025097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012886, 33.346401, 31.678688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.077251, 33.713024, 31.532248>,  <36.115871, 33.932999, 31.444384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.077251, 33.713024, 31.532248>,  <36.012886, 33.346401, 31.678688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077251, 33.713024, 31.532248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461661, -0.257956, -0.848721,
		-0.872339, 0.305588, 0.381629,
		0.160916, 0.916556, -0.366104,
		36.125526, 33.987991, 31.422417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399406, 33.471485, 31.331451>,  <36.012886, 33.346401, 31.678688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399406, 33.471485, 31.331451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.641518, 33.756599, 31.189705>,  <35.786785, 33.927666, 31.104656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.641518, 33.756599, 31.189705>,  <35.399406, 33.471485, 31.331451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641518, 33.756599, 31.189705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470253, -0.039001, -0.881669,
		-0.642259, 0.700300, 0.311582,
		0.605281, 0.712782, -0.354367,
		35.823101, 33.970432, 31.083395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956356, 34.094833, 31.273914>,  <35.399406, 33.471485, 31.331451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956356, 34.094833, 31.273914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.273468, 34.109734, 31.030567>,  <35.463734, 34.118675, 30.884560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.273468, 34.109734, 31.030567>,  <34.956356, 34.094833, 31.273914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273468, 34.109734, 31.030567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609175, 0.081360, -0.788852,
		0.020111, 0.995988, 0.087193,
		0.792781, 0.037251, -0.608367,
		35.511303, 34.120911, 30.848057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743195, 34.537979, 30.726143>,  <34.956356, 34.094833, 31.273914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743195, 34.537979, 30.726143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.079102, 34.394138, 30.563425>,  <35.280643, 34.307835, 30.465794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.079102, 34.394138, 30.563425>,  <34.743195, 34.537979, 30.726143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079102, 34.394138, 30.563425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377149, 0.152635, -0.913488,
		0.390585, 0.920537, -0.007446,
		0.839763, -0.359603, -0.406796,
		35.331032, 34.286259, 30.441385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039597, 35.019615, 30.062508>,  <34.743195, 34.537979, 30.726143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039597, 35.019615, 30.062508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.142590, 34.633404, 30.047281>,  <35.204384, 34.401676, 30.038145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.142590, 34.633404, 30.047281>,  <35.039597, 35.019615, 30.062508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142590, 34.633404, 30.047281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461854, -0.088370, -0.882543,
		0.848760, 0.244820, -0.468689,
		0.257482, -0.965533, -0.038066,
		35.219833, 34.343742, 30.035862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359131, 34.938152, 29.417782>,  <35.039597, 35.019615, 30.062508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359131, 34.938152, 29.417782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232510, 34.571957, 29.517115>,  <35.156536, 34.352238, 29.576715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232510, 34.571957, 29.517115>,  <35.359131, 34.938152, 29.417782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232510, 34.571957, 29.517115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338960, -0.135341, -0.931015,
		0.885947, -0.378887, -0.267473,
		-0.316549, -0.915493, 0.248333,
		35.137547, 34.297310, 29.591614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434387, 34.584515, 28.800838>,  <35.359131, 34.938152, 29.417782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434387, 34.584515, 28.800838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.199280, 34.349079, 29.022863>,  <35.058216, 34.207817, 29.156078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.199280, 34.349079, 29.022863>,  <35.434387, 34.584515, 28.800838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199280, 34.349079, 29.022863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579979, -0.171784, -0.796313,
		0.564051, -0.789971, -0.240400,
		-0.587767, -0.588588, 0.555061,
		35.022949, 34.172504, 29.189383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355114, 34.107517, 28.275873>,  <35.434387, 34.584515, 28.800838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355114, 34.107517, 28.275873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.101414, 34.021637, 28.572960>,  <34.949192, 33.970108, 28.751213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.101414, 34.021637, 28.572960>,  <35.355114, 34.107517, 28.275873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101414, 34.021637, 28.572960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676584, -0.310725, -0.667596,
		0.374114, -0.925934, 0.051815,
		-0.634250, -0.214699, 0.742719,
		34.911140, 33.957226, 28.795776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118069, 33.474464, 28.244278>,  <35.355114, 34.107517, 28.275873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118069, 33.474464, 28.244278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.814728, 33.658981, 28.428501>,  <34.632725, 33.769691, 28.539034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.814728, 33.658981, 28.428501>,  <35.118069, 33.474464, 28.244278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814728, 33.658981, 28.428501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636748, -0.373044, -0.674826,
		-0.139485, -0.805013, 0.576626,
		-0.758351, 0.461294, 0.460556,
		34.587223, 33.797371, 28.566668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520473, 33.000095, 28.299423>,  <35.118069, 33.474464, 28.244278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520473, 33.000095, 28.299423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.351173, 33.357426, 28.359861>,  <34.249592, 33.571823, 28.396124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.351173, 33.357426, 28.359861>,  <34.520473, 33.000095, 28.299423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351173, 33.357426, 28.359861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811636, -0.299740, -0.501401,
		-0.402626, -0.334850, 0.851920,
		-0.423248, 0.893326, 0.151093,
		34.224197, 33.625423, 28.405190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808426, 32.868408, 28.470304>,  <34.520473, 33.000095, 28.299423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808426, 32.868408, 28.470304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.798035, 33.256058, 28.372225>,  <33.791798, 33.488647, 28.313377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.798035, 33.256058, 28.372225>,  <33.808426, 32.868408, 28.470304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798035, 33.256058, 28.372225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805105, -0.165681, -0.569523,
		-0.592563, 0.182616, 0.784551,
		-0.025981, 0.969124, -0.245202,
		33.790241, 33.546795, 28.298664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.107063, 33.049946, 28.511892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.257126, 33.329250, 28.268028>,  <33.347164, 33.496834, 28.121710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.257126, 33.329250, 28.268028>,  <33.107063, 33.049946, 28.511892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257126, 33.329250, 28.268028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740304, -0.170119, -0.650392,
		-0.557860, 0.695333, 0.453106,
		0.375157, 0.698263, -0.609660,
		33.369675, 33.538731, 28.085131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554775, 33.424377, 28.332985>,  <33.107063, 33.049946, 28.511892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554775, 33.424377, 28.332985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.829556, 33.529465, 28.061964>,  <32.994423, 33.592518, 27.899351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.829556, 33.529465, 28.061964>,  <32.554775, 33.424377, 28.332985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829556, 33.529465, 28.061964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699390, -0.014202, -0.714599,
		-0.197362, 0.964768, 0.173988,
		0.686951, 0.262720, -0.677552,
		33.035641, 33.608280, 27.858698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201229, 33.873867, 27.875881>,  <32.554775, 33.424377, 28.332985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201229, 33.873867, 27.875881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.530270, 33.782520, 27.667585>,  <32.727695, 33.727711, 27.542608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.530270, 33.782520, 27.667585>,  <32.201229, 33.873867, 27.875881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530270, 33.782520, 27.667585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562127, -0.188686, -0.805239,
		0.085638, 0.955114, -0.283588,
		0.822605, -0.228372, -0.520737,
		32.777050, 33.714008, 27.511364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240486, 34.353741, 27.318008>,  <32.201229, 33.873867, 27.875881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240486, 34.353741, 27.318008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.466156, 34.048721, 27.191380>,  <32.601559, 33.865707, 27.115402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.466156, 34.048721, 27.191380>,  <32.240486, 34.353741, 27.318008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466156, 34.048721, 27.191380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470123, 0.018508, -0.882407,
		0.678739, 0.646663, -0.348051,
		0.564178, -0.762551, -0.316574,
		32.635410, 33.819958, 27.096407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500088, 34.658245, 26.793806>,  <32.240486, 34.353741, 27.318008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500088, 34.658245, 26.793806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.549133, 34.264900, 26.740189>,  <32.578560, 34.028893, 26.708017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.549133, 34.264900, 26.740189>,  <32.500088, 34.658245, 26.793806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549133, 34.264900, 26.740189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329633, 0.087043, -0.940088,
		0.936114, 0.159451, -0.313476,
		0.122612, -0.983361, -0.134043,
		32.585918, 33.969891, 26.699976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667355, 34.691006, 26.146107>,  <32.500088, 34.658245, 26.793806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667355, 34.691006, 26.146107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.539513, 34.316677, 26.205553>,  <32.462807, 34.092079, 26.241220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.539513, 34.316677, 26.205553>,  <32.667355, 34.691006, 26.146107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539513, 34.316677, 26.205553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114900, -0.117407, -0.986414,
		0.940557, -0.332343, -0.070002,
		-0.319609, -0.935823, 0.148614,
		32.443630, 34.035931, 26.250137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010818, 34.189384, 25.687187>,  <32.667355, 34.691006, 26.146107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010818, 34.189384, 25.687187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.677399, 33.991238, 25.785006>,  <32.477345, 33.872349, 25.843697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.677399, 33.991238, 25.785006>,  <33.010818, 34.189384, 25.687187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677399, 33.991238, 25.785006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365768, 0.163129, -0.916299,
		0.414008, -0.853231, -0.317165,
		-0.833553, -0.495364, 0.244548,
		32.427334, 33.842628, 25.858370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871880, 33.666046, 25.189493>,  <33.010818, 34.189384, 25.687187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871880, 33.666046, 25.189493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.517479, 33.695305, 25.372641>,  <32.304836, 33.712860, 25.482529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.517479, 33.695305, 25.372641>,  <32.871880, 33.666046, 25.189493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517479, 33.695305, 25.372641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462507, -0.069411, -0.883894,
		-0.032860, -0.994904, 0.095323,
		-0.886006, 0.073132, 0.457869,
		32.251678, 33.717247, 25.510000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575890, 33.126770, 24.927380>,  <32.871880, 33.666046, 25.189493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575890, 33.126770, 24.927380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304127, 33.395695, 25.044954>,  <32.141068, 33.557049, 25.115499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304127, 33.395695, 25.044954>,  <32.575890, 33.126770, 24.927380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304127, 33.395695, 25.044954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469872, -0.090954, -0.878036,
		-0.563580, -0.734659, 0.377696,
		-0.679410, 0.672312, 0.293936,
		32.100304, 33.597389, 25.133135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924913, 32.778778, 24.735893>,  <32.575890, 33.126770, 24.927380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924913, 32.778778, 24.735893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.885921, 33.174622, 24.778164>,  <31.862526, 33.412128, 24.803526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.885921, 33.174622, 24.778164>,  <31.924913, 32.778778, 24.735893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885921, 33.174622, 24.778164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310680, 0.070620, -0.947888,
		-0.945503, -0.125230, 0.300568,
		-0.097478, 0.989611, 0.105678,
		31.856678, 33.471504, 24.809868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234613, 32.794979, 24.634523>,  <31.924913, 32.778778, 24.735893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234613, 32.794979, 24.634523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.382750, 33.158714, 24.558672>,  <31.471632, 33.376953, 24.513161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.382750, 33.158714, 24.558672>,  <31.234613, 32.794979, 24.634523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382750, 33.158714, 24.558672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413929, -0.021200, -0.910062,
		-0.831572, 0.415524, 0.368549,
		0.370340, 0.909335, -0.189626,
		31.493851, 33.431515, 24.501783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678421, 33.146915, 24.317450>,  <31.234613, 32.794979, 24.634523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678421, 33.146915, 24.317450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.018177, 33.341148, 24.234749>,  <31.222031, 33.457687, 24.185127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.018177, 33.341148, 24.234749>,  <30.678421, 33.146915, 24.317450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018177, 33.341148, 24.234749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242340, 0.010840, -0.970131,
		-0.468837, 0.874124, 0.126883,
		0.849390, 0.485582, -0.206753,
		31.272993, 33.486824, 24.172724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399452, 33.611980, 23.791590>,  <30.678421, 33.146915, 24.317450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399452, 33.611980, 23.791590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.794916, 33.665306, 23.763933>,  <31.032194, 33.697300, 23.747339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.794916, 33.665306, 23.763933>,  <30.399452, 33.611980, 23.791590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794916, 33.665306, 23.763933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099403, 0.235802, -0.966704,
		-0.112573, 0.962614, 0.246380,
		0.988659, 0.133315, -0.069142,
		31.091515, 33.705299, 23.743191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462742, 34.288116, 23.410534>,  <30.399452, 33.611980, 23.791590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462742, 34.288116, 23.410534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.772442, 34.040524, 23.357777>,  <30.958261, 33.891968, 23.326122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.772442, 34.040524, 23.357777>,  <30.462742, 34.288116, 23.410534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772442, 34.040524, 23.357777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109841, 0.073810, -0.991205,
		0.623278, 0.781925, -0.010843,
		0.774248, -0.618987, -0.131891,
		31.004717, 33.854828, 23.318209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844269, 34.575645, 22.927023>,  <30.462742, 34.288116, 23.410534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844269, 34.575645, 22.927023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.956600, 34.192322, 22.905930>,  <31.024000, 33.962326, 22.893272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.956600, 34.192322, 22.905930>,  <30.844269, 34.575645, 22.927023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956600, 34.192322, 22.905930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014828, 0.050606, -0.998608,
		0.959643, 0.281221, 0.000002,
		0.280830, -0.958308, -0.052734,
		31.040850, 33.904831, 22.890110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374424, 34.501545, 22.397898>,  <30.844269, 34.575645, 22.927023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374424, 34.501545, 22.397898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.258644, 34.120487, 22.435167>,  <31.189177, 33.891853, 22.457529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.258644, 34.120487, 22.435167>,  <31.374424, 34.501545, 22.397898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258644, 34.120487, 22.435167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192013, -0.037574, -0.980673,
		0.937736, -0.301747, -0.172045,
		-0.289450, -0.952647, 0.093174,
		31.171808, 33.834694, 22.463120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753435, 34.131962, 21.915665>,  <31.374424, 34.501545, 22.397898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753435, 34.131962, 21.915665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.426777, 33.912987, 21.988771>,  <31.230782, 33.781601, 22.032635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.426777, 33.912987, 21.988771>,  <31.753435, 34.131962, 21.915665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426777, 33.912987, 21.988771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210024, -0.013077, -0.977609,
		0.537569, -0.836745, -0.104295,
		-0.816645, -0.547437, 0.182766,
		31.181784, 33.748756, 22.043602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795723, 33.693130, 21.438450>,  <31.753435, 34.131962, 21.915665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795723, 33.693130, 21.438450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.409325, 33.649818, 21.532366>,  <31.177485, 33.623833, 21.588715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.409325, 33.649818, 21.532366>,  <31.795723, 33.693130, 21.438450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409325, 33.649818, 21.532366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223143, -0.109554, -0.968610,
		0.130602, -0.988066, 0.081667,
		-0.965997, -0.108279, 0.234788,
		31.119526, 33.617336, 21.602802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608997, 33.165726, 21.026886>,  <31.795723, 33.693130, 21.438450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608997, 33.165726, 21.026886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.278952, 33.379501, 21.100168>,  <31.080925, 33.507767, 21.144136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.278952, 33.379501, 21.100168>,  <31.608997, 33.165726, 21.026886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278952, 33.379501, 21.100168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163821, 0.084017, -0.982906,
		-0.540696, -0.841021, 0.018229,
		-0.825113, 0.534439, 0.183204,
		31.031418, 33.539833, 21.155130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176975, 32.930584, 20.426123>,  <31.608997, 33.165726, 21.026886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176975, 32.930584, 20.426123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.026949, 33.265850, 20.584513>,  <30.936934, 33.467010, 20.679546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.026949, 33.265850, 20.584513>,  <31.176975, 32.930584, 20.426123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026949, 33.265850, 20.584513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378185, 0.251643, -0.890871,
		-0.846346, -0.483887, 0.222601,
		-0.375065, 0.838170, 0.395976,
		30.914429, 33.517300, 20.703306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507856, 32.954609, 20.288631>,  <31.176975, 32.930584, 20.426123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507856, 32.954609, 20.288631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.591375, 33.343395, 20.331877>,  <30.641487, 33.576668, 20.357824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.591375, 33.343395, 20.331877>,  <30.507856, 32.954609, 20.288631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591375, 33.343395, 20.331877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392816, 0.184593, -0.900900,
		-0.895600, 0.145638, 0.420346,
		0.208798, 0.971964, 0.108113,
		30.654015, 33.634983, 20.364311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876160, 33.339127, 20.090675>,  <30.507856, 32.954609, 20.288631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876160, 33.339127, 20.090675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.173681, 33.603558, 20.051222>,  <30.352194, 33.762215, 20.027550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.173681, 33.603558, 20.051222>,  <29.876160, 33.339127, 20.090675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173681, 33.603558, 20.051222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340072, 0.247257, -0.907312,
		-0.575417, 0.708406, 0.408725,
		0.743806, 0.661078, -0.098633,
		30.396824, 33.801880, 20.021631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475273, 33.983780, 19.874966>,  <29.876160, 33.339127, 20.090675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475273, 33.983780, 19.874966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.859674, 33.987846, 19.764423>,  <30.090315, 33.990288, 19.698099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.859674, 33.987846, 19.764423>,  <29.475273, 33.983780, 19.874966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859674, 33.987846, 19.764423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262602, 0.346818, -0.900421,
		0.086690, 0.937877, 0.335962,
		0.961002, 0.010167, -0.276354,
		30.147976, 33.990898, 19.681517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926479, 34.653599, 20.027653>,  <29.475273, 33.983780, 19.874966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926479, 34.653599, 20.027653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.812365, 35.036610, 20.010929>,  <28.743895, 35.266418, 20.000895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.812365, 35.036610, 20.010929>,  <28.926479, 34.653599, 20.027653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812365, 35.036610, 20.010929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142134, 0.085409, 0.986156,
		0.947844, 0.275397, -0.160464,
		-0.285289, 0.957529, -0.041811,
		28.726778, 35.323868, 19.998386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474888, 34.952934, 20.361687>,  <28.926479, 34.653599, 20.027653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474888, 34.952934, 20.361687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.136984, 35.165806, 20.384197>,  <28.934240, 35.293530, 20.397703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.136984, 35.165806, 20.384197>,  <29.474888, 34.952934, 20.361687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136984, 35.165806, 20.384197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213818, 0.239251, 0.947123,
		0.490572, 0.812125, -0.315899,
		-0.844761, 0.532176, 0.056278,
		28.883556, 35.325459, 20.401081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678082, 35.610607, 20.731054>,  <29.474888, 34.952934, 20.361687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678082, 35.610607, 20.731054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.280495, 35.586777, 20.767900>,  <29.041943, 35.572479, 20.790009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.280495, 35.586777, 20.767900>,  <29.678082, 35.610607, 20.731054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280495, 35.586777, 20.767900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076486, 0.225575, 0.971219,
		-0.078636, 0.972403, -0.219657,
		-0.993965, -0.059572, 0.092113,
		28.982306, 35.568905, 20.795534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441402, 36.260605, 20.996664>,  <29.678082, 35.610607, 20.731054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441402, 36.260605, 20.996664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.122229, 36.037254, 21.087454>,  <28.930725, 35.903244, 21.141928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.122229, 36.037254, 21.087454>,  <29.441402, 36.260605, 20.996664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122229, 36.037254, 21.087454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010872, 0.389842, 0.920818,
		-0.602649, 0.732283, -0.317138,
		-0.797933, -0.558378, 0.226976,
		28.882849, 35.869740, 21.155546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823681, 36.660393, 21.334173>,  <29.441402, 36.260605, 20.996664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823681, 36.660393, 21.334173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.853304, 36.277996, 21.447733>,  <28.871078, 36.048557, 21.515869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.853304, 36.277996, 21.447733>,  <28.823681, 36.660393, 21.334173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853304, 36.277996, 21.447733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026383, 0.282702, 0.958845,
		-0.996905, -0.078500, -0.004286,
		0.074058, -0.955990, 0.283898,
		28.875521, 35.991199, 21.532902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532854, 36.663387, 21.920889>,  <28.823681, 36.660393, 21.334173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532854, 36.663387, 21.920889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.692215, 36.300316, 21.973642>,  <28.787832, 36.082474, 22.005295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.692215, 36.300316, 21.973642>,  <28.532854, 36.663387, 21.920889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692215, 36.300316, 21.973642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007853, 0.140407, 0.990063,
		-0.917177, -0.395480, 0.048810,
		0.398404, -0.907679, 0.131883,
		28.811735, 36.028011, 22.013206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214378, 36.369553, 22.555412>,  <28.532854, 36.663387, 21.920889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214378, 36.369553, 22.555412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.549913, 36.161083, 22.492516>,  <28.751234, 36.035999, 22.454777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.549913, 36.161083, 22.492516>,  <28.214378, 36.369553, 22.555412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549913, 36.161083, 22.492516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166114, -0.030019, 0.985650,
		-0.518419, -0.852920, 0.061394,
		0.838837, -0.521178, -0.157244,
		28.801565, 36.004730, 22.445343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212362, 35.904503, 23.099491>,  <28.214378, 36.369553, 22.555412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212362, 35.904503, 23.099491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.593485, 35.880642, 22.980427>,  <28.822159, 35.866325, 22.908989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.593485, 35.880642, 22.980427>,  <28.212362, 35.904503, 23.099491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593485, 35.880642, 22.980427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271790, -0.269175, 0.923945,
		-0.135237, -0.961242, -0.240259,
		0.952807, -0.059651, -0.297658,
		28.879328, 35.862747, 22.891129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481419, 35.267231, 23.316221>,  <28.212362, 35.904503, 23.099491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481419, 35.267231, 23.316221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.813738, 35.486473, 23.277533>,  <29.013130, 35.618019, 23.254320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.813738, 35.486473, 23.277533>,  <28.481419, 35.267231, 23.316221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813738, 35.486473, 23.277533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337943, -0.358694, 0.870134,
		0.442231, -0.755592, -0.483231,
		0.830799, 0.548105, -0.096722,
		29.062977, 35.650906, 23.248516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061729, 34.845554, 23.549858>,  <28.481419, 35.267231, 23.316221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061729, 34.845554, 23.549858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.232698, 35.206280, 23.575312>,  <29.335279, 35.422714, 23.590584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.232698, 35.206280, 23.575312>,  <29.061729, 34.845554, 23.549858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232698, 35.206280, 23.575312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455264, -0.275521, 0.846654,
		0.781053, -0.332910, -0.528325,
		0.427424, 0.901809, 0.063634,
		29.360926, 35.476822, 23.594402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659876, 34.662952, 23.791803>,  <29.061729, 34.845554, 23.549858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659876, 34.662952, 23.791803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.684542, 35.056797, 23.857214>,  <29.699341, 35.293102, 23.896460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.684542, 35.056797, 23.857214>,  <29.659876, 34.662952, 23.791803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684542, 35.056797, 23.857214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445226, -0.173770, 0.878395,
		0.893292, 0.018641, -0.449090,
		0.061664, 0.984610, 0.163527,
		29.703041, 35.352180, 23.906273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328032, 34.816471, 24.050955>,  <29.659876, 34.662952, 23.791803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328032, 34.816471, 24.050955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.087339, 35.113155, 24.169464>,  <29.942924, 35.291168, 24.240570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.087339, 35.113155, 24.169464>,  <30.328032, 34.816471, 24.050955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087339, 35.113155, 24.169464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417024, -0.024602, 0.908563,
		0.681183, 0.670264, -0.294509,
		-0.601731, 0.741715, 0.296274,
		29.906820, 35.335670, 24.258347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643526, 35.257198, 24.487640>,  <30.328032, 34.816471, 24.050955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643526, 35.257198, 24.487640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.261343, 35.306889, 24.594725>,  <30.032034, 35.336700, 24.658976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.261343, 35.306889, 24.594725>,  <30.643526, 35.257198, 24.487640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261343, 35.306889, 24.594725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269621, -0.001497, 0.962965,
		0.120021, 0.992253, -0.032062,
		-0.955458, 0.124221, 0.267712,
		29.974705, 35.344154, 24.675037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669962, 35.559074, 25.143866>,  <30.643526, 35.257198, 24.487640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669962, 35.559074, 25.143866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.287859, 35.440762, 25.144409>,  <30.058598, 35.369774, 25.144735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.287859, 35.440762, 25.144409>,  <30.669962, 35.559074, 25.143866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287859, 35.440762, 25.144409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047206, -0.147913, 0.987873,
		-0.291992, 0.943735, 0.155257,
		-0.955255, -0.295780, 0.001360,
		30.001282, 35.352028, 25.144817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408592, 35.970562, 25.544636>,  <30.669962, 35.559074, 25.143866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408592, 35.970562, 25.544636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.170900, 35.648846, 25.543503>,  <30.028286, 35.455814, 25.542822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.170900, 35.648846, 25.543503>,  <30.408592, 35.970562, 25.544636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170900, 35.648846, 25.543503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223783, -0.168719, 0.959925,
		-0.772536, 0.569782, 0.280244,
		-0.594230, -0.804290, -0.002834,
		29.992632, 35.407558, 25.542652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102053, 36.006042, 26.139500>,  <30.408592, 35.970562, 25.544636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102053, 36.006042, 26.139500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.034332, 35.626278, 26.033703>,  <29.993700, 35.398418, 25.970224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.034332, 35.626278, 26.033703>,  <30.102053, 36.006042, 26.139500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034332, 35.626278, 26.033703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034009, -0.273832, 0.961176,
		-0.984977, 0.153733, 0.078648,
		-0.169301, -0.949411, -0.264490,
		29.983541, 35.341454, 25.954355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568169, 35.773800, 26.543348>,  <30.102053, 36.006042, 26.139500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568169, 35.773800, 26.543348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.776909, 35.452972, 26.427172>,  <29.902153, 35.260475, 26.357466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.776909, 35.452972, 26.427172>,  <29.568169, 35.773800, 26.543348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776909, 35.452972, 26.427172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168744, -0.236687, 0.956820,
		-0.836182, -0.548325, 0.011830,
		0.521848, -0.802072, -0.290440,
		29.933464, 35.212353, 26.340040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304329, 35.275467, 26.992807>,  <29.568169, 35.773800, 26.543348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304329, 35.275467, 26.992807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.651993, 35.143024, 26.845873>,  <29.860590, 35.063560, 26.757713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.651993, 35.143024, 26.845873>,  <29.304329, 35.275467, 26.992807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651993, 35.143024, 26.845873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284488, -0.272818, 0.919041,
		-0.404514, -0.903294, -0.142926,
		0.869158, -0.331104, -0.367336,
		29.912741, 35.043694, 26.735672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428078, 34.559673, 27.311180>,  <29.304329, 35.275467, 26.992807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428078, 34.559673, 27.311180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.783873, 34.703426, 27.198286>,  <29.997349, 34.789680, 27.130550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.783873, 34.703426, 27.198286>,  <29.428078, 34.559673, 27.311180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783873, 34.703426, 27.198286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337710, -0.100911, 0.935825,
		0.307843, -0.927716, -0.211128,
		0.889485, 0.359387, -0.282234,
		30.050718, 34.811241, 27.113615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977671, 34.083515, 27.521753>,  <29.428078, 34.559673, 27.311180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977671, 34.083515, 27.521753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125444, 34.452995, 27.481152>,  <30.214109, 34.674683, 27.456791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125444, 34.452995, 27.481152>,  <29.977671, 34.083515, 27.521753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125444, 34.452995, 27.481152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368186, -0.045209, 0.928652,
		0.853204, -0.380449, -0.356794,
		0.369436, 0.923696, -0.101503,
		30.236275, 34.730103, 27.450701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642675, 34.092266, 27.872353>,  <29.977671, 34.083515, 27.521753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642675, 34.092266, 27.872353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.560663, 34.480854, 27.824665>,  <30.511456, 34.714005, 27.796053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.560663, 34.480854, 27.824665>,  <30.642675, 34.092266, 27.872353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560663, 34.480854, 27.824665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373066, 0.190180, 0.908104,
		0.904866, 0.141715, -0.401415,
		-0.205033, 0.971467, -0.119219,
		30.499153, 34.772293, 27.788898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.602905, 33.086212, 30.000160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.480469, 33.466766, 30.013906>,  <35.407009, 33.695099, 30.022154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.480469, 33.466766, 30.013906>,  <35.602905, 33.086212, 30.000160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480469, 33.466766, 30.013906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650361, 0.182604, 0.737351,
		0.695228, 0.248044, -0.674635,
		-0.306087, 0.951383, 0.034366,
		35.388641, 33.752182, 30.024216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178841, 33.467819, 29.997120>,  <35.602905, 33.086212, 30.000160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178841, 33.467819, 29.997120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.909016, 33.724339, 30.143383>,  <35.747120, 33.878250, 30.231142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.909016, 33.724339, 30.143383>,  <36.178841, 33.467819, 29.997120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909016, 33.724339, 30.143383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634155, 0.249819, 0.731736,
		0.377912, 0.725484, -0.575200,
		-0.674559, 0.641298, 0.365660,
		35.706650, 33.916729, 30.253080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530666, 34.188213, 30.050137>,  <36.178841, 33.467819, 29.997120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530666, 34.188213, 30.050137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.218231, 34.164791, 30.298807>,  <36.030769, 34.150738, 30.448009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.218231, 34.164791, 30.298807>,  <36.530666, 34.188213, 30.050137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218231, 34.164791, 30.298807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586444, 0.273150, 0.762544,
		-0.214458, 0.960188, -0.179016,
		-0.781083, -0.058551, 0.621676,
		35.983906, 34.147224, 30.485310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688095, 34.750130, 30.513350>,  <36.530666, 34.188213, 30.050137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688095, 34.750130, 30.513350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.417786, 34.515945, 30.692492>,  <36.255600, 34.375435, 30.799976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.417786, 34.515945, 30.692492>,  <36.688095, 34.750130, 30.513350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417786, 34.515945, 30.692492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326819, 0.306615, 0.893967,
		-0.660700, 0.750482, -0.015862,
		-0.675769, -0.585460, 0.447853,
		36.215054, 34.340309, 30.826847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250282, 35.177910, 30.882669>,  <36.688095, 34.750130, 30.513350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250282, 35.177910, 30.882669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.221329, 34.812851, 31.043583>,  <36.203957, 34.593815, 31.140131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.221329, 34.812851, 31.043583>,  <36.250282, 35.177910, 30.882669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221329, 34.812851, 31.043583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117451, 0.392736, 0.912121,
		-0.990437, 0.113270, 0.078765,
		-0.072382, -0.912649, 0.402284,
		36.199615, 34.539055, 31.164268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815849, 35.349689, 31.388615>,  <36.250282, 35.177910, 30.882669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815849, 35.349689, 31.388615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.971600, 34.998341, 31.499498>,  <36.065048, 34.787529, 31.566029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.971600, 34.998341, 31.499498>,  <35.815849, 35.349689, 31.388615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971600, 34.998341, 31.499498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030749, 0.288398, 0.957017,
		-0.920566, -0.381161, 0.085285,
		0.389374, -0.878375, 0.277210,
		36.088413, 34.734829, 31.582661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452583, 35.142120, 32.069405>,  <35.815849, 35.349689, 31.388615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452583, 35.142120, 32.069405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.798279, 34.941265, 32.057095>,  <36.005695, 34.820751, 32.049709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.798279, 34.941265, 32.057095>,  <35.452583, 35.142120, 32.069405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798279, 34.941265, 32.057095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113557, 0.135117, 0.984301,
		-0.490095, -0.854168, 0.173795,
		0.864241, -0.502136, -0.030777,
		36.057552, 34.790623, 32.047863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275669, 34.886635, 32.610298>,  <35.452583, 35.142120, 32.069405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275669, 34.886635, 32.610298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.670612, 34.839836, 32.567520>,  <35.907578, 34.811756, 32.541851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.670612, 34.839836, 32.567520>,  <35.275669, 34.886635, 32.610298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670612, 34.839836, 32.567520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118079, 0.092745, 0.988664,
		-0.105753, -0.988792, 0.105387,
		0.987357, -0.116998, -0.106947,
		35.966820, 34.804737, 32.535435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532074, 34.419838, 33.176384>,  <35.275669, 34.886635, 32.610298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532074, 34.419838, 33.176384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.870853, 34.593216, 33.053226>,  <36.074120, 34.697243, 32.979332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.870853, 34.593216, 33.053226>,  <35.532074, 34.419838, 33.176384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870853, 34.593216, 33.053226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297573, 0.093448, 0.950115,
		0.440598, -0.896320, -0.049837,
		0.846950, 0.433449, -0.307894,
		36.124939, 34.723251, 32.960857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038784, 34.116413, 33.513416>,  <35.532074, 34.419838, 33.176384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038784, 34.116413, 33.513416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.193249, 34.467506, 33.399952>,  <36.285927, 34.678162, 33.331871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.193249, 34.467506, 33.399952>,  <36.038784, 34.116413, 33.513416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193249, 34.467506, 33.399952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502161, 0.057919, 0.862832,
		0.773765, -0.475638, -0.418397,
		0.386162, 0.877732, -0.283663,
		36.309097, 34.730827, 33.314854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693302, 34.017334, 33.750065>,  <36.038784, 34.116413, 33.513416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693302, 34.017334, 33.750065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.648102, 34.409431, 33.685120>,  <36.620983, 34.644688, 33.646152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.648102, 34.409431, 33.685120>,  <36.693302, 34.017334, 33.750065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648102, 34.409431, 33.685120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568286, 0.197804, 0.798702,
		0.815035, -0.002017, -0.579408,
		-0.112998, 0.980240, -0.162364,
		36.614201, 34.703503, 33.636410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293335, 34.268551, 33.734997>,  <36.693302, 34.017334, 33.750065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293335, 34.268551, 33.734997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.073631, 34.585300, 33.841770>,  <36.941811, 34.775349, 33.905834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.073631, 34.585300, 33.841770>,  <37.293335, 34.268551, 33.734997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073631, 34.585300, 33.841770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480139, 0.037608, 0.876386,
		0.683948, 0.609526, -0.400866,
		-0.549256, 0.791873, 0.266935,
		36.908855, 34.822861, 33.921852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811596, 34.742275, 33.976135>,  <37.293335, 34.268551, 33.734997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811596, 34.742275, 33.976135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.463028, 34.875816, 34.119892>,  <37.253887, 34.955940, 34.206146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.463028, 34.875816, 34.119892>,  <37.811596, 34.742275, 33.976135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463028, 34.875816, 34.119892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444293, 0.226658, 0.866735,
		0.207902, 0.914970, -0.345843,
		-0.871424, 0.333851, 0.359392,
		37.201599, 34.975971, 34.227711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944340, 35.358101, 34.372128>,  <37.811596, 34.742275, 33.976135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944340, 35.358101, 34.372128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.618088, 35.183655, 34.524212>,  <37.422337, 35.078987, 34.615463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.618088, 35.183655, 34.524212>,  <37.944340, 35.358101, 34.372128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618088, 35.183655, 34.524212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365558, 0.120918, 0.922901,
		-0.448467, 0.891729, 0.060803,
		-0.815625, -0.436117, 0.380206,
		37.373402, 35.052818, 34.638275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346786, 35.326305, 33.624889>,  <37.944340, 35.358101, 34.372128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346786, 35.326305, 33.624889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.500378, 35.679882, 33.731632>,  <38.592533, 35.892029, 33.795677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.500378, 35.679882, 33.731632>,  <38.346786, 35.326305, 33.624889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500378, 35.679882, 33.731632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188740, 0.358044, -0.914430,
		-0.903846, 0.300755, 0.304316,
		0.383978, 0.883940, 0.266852,
		38.615570, 35.945065, 33.811687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933418, 35.857559, 33.458263>,  <38.346786, 35.326305, 33.624889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933418, 35.857559, 33.458263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.289532, 36.038303, 33.480984>,  <38.503201, 36.146748, 33.494614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.289532, 36.038303, 33.480984>,  <37.933418, 35.857559, 33.458263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289532, 36.038303, 33.480984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156412, 0.420509, -0.893704,
		-0.427710, 0.786764, 0.445047,
		0.890281, 0.451857, 0.056796,
		38.556618, 36.173859, 33.498024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886898, 36.468166, 33.292591>,  <37.933418, 35.857559, 33.458263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886898, 36.468166, 33.292591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.269726, 36.397274, 33.200848>,  <38.499424, 36.354740, 33.145802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.269726, 36.397274, 33.200848>,  <37.886898, 36.468166, 33.292591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269726, 36.397274, 33.200848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167957, 0.305815, -0.937159,
		0.236237, 0.935449, 0.262919,
		0.957070, -0.177232, -0.229360,
		38.556847, 36.344105, 33.132038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085182, 37.108200, 33.047085>,  <37.886898, 36.468166, 33.292591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085182, 37.108200, 33.047085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.355694, 36.834293, 32.938465>,  <38.518002, 36.669949, 32.873295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.355694, 36.834293, 32.938465>,  <38.085182, 37.108200, 33.047085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355694, 36.834293, 32.938465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194268, 0.189786, -0.962414,
		0.710564, 0.703617, -0.004680,
		0.676283, -0.684766, -0.271545,
		38.558578, 36.628864, 32.857002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574093, 37.463913, 32.546211>,  <38.085182, 37.108200, 33.047085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574093, 37.463913, 32.546211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.579102, 37.067493, 32.493038>,  <38.582108, 36.829643, 32.461136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.579102, 37.067493, 32.493038>,  <38.574093, 37.463913, 32.546211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579102, 37.067493, 32.493038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388176, 0.117697, -0.914039,
		0.921500, 0.063049, -0.383226,
		0.012525, -0.991046, -0.132932,
		38.582859, 36.770180, 32.453159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650555, 37.487774, 31.901661>,  <38.574093, 37.463913, 32.546211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650555, 37.487774, 31.901661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.594418, 37.095619, 31.957010>,  <38.560738, 36.860325, 31.990219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.594418, 37.095619, 31.957010>,  <38.650555, 37.487774, 31.901661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594418, 37.095619, 31.957010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218069, -0.105718, -0.970191,
		0.965790, -0.166330, -0.198955,
		-0.140339, -0.980387, 0.138373,
		38.552315, 36.801502, 31.998522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059826, 37.071526, 31.480686>,  <38.650555, 37.487774, 31.901661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059826, 37.071526, 31.480686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.735020, 36.858368, 31.575895>,  <38.540138, 36.730473, 31.633020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.735020, 36.858368, 31.575895>,  <39.059826, 37.071526, 31.480686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735020, 36.858368, 31.575895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180803, -0.158079, -0.970732,
		0.554928, -0.831282, 0.032012,
		-0.812013, -0.532899, 0.238021,
		38.491417, 36.698498, 31.647301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089920, 36.497890, 31.026423>,  <39.059826, 37.071526, 31.480686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089920, 36.497890, 31.026423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.707840, 36.493809, 31.144733>,  <38.478592, 36.491360, 31.215721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.707840, 36.493809, 31.144733>,  <39.089920, 36.497890, 31.026423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707840, 36.493809, 31.144733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294522, -0.065491, -0.953398,
		0.029098, -0.997801, 0.059553,
		-0.955202, -0.010202, 0.295779,
		38.421280, 36.490749, 31.233467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871136, 35.885170, 30.786694>,  <39.089920, 36.497890, 31.026423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871136, 35.885170, 30.786694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.547310, 36.111526, 30.849133>,  <38.353016, 36.247341, 30.886597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.547310, 36.111526, 30.849133>,  <38.871136, 35.885170, 30.786694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547310, 36.111526, 30.849133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333368, -0.224319, -0.915722,
		-0.483186, -0.793375, 0.370252,
		-0.809566, 0.565895, 0.156098,
		38.304440, 36.281296, 30.895962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320236, 35.527710, 30.493860>,  <38.871136, 35.885170, 30.786694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320236, 35.527710, 30.493860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.153343, 35.889786, 30.526234>,  <38.053207, 36.107033, 30.545658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.153343, 35.889786, 30.526234>,  <38.320236, 35.527710, 30.493860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153343, 35.889786, 30.526234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445126, -0.125904, -0.886573,
		-0.792325, -0.405934, 0.455454,
		-0.417234, 0.905188, 0.080935,
		38.028172, 36.161343, 30.550514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617741, 35.469475, 30.192993>,  <38.320236, 35.527710, 30.493860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617741, 35.469475, 30.192993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.685032, 35.863693, 30.200987>,  <37.725407, 36.100224, 30.205784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.685032, 35.863693, 30.200987>,  <37.617741, 35.469475, 30.192993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685032, 35.863693, 30.200987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471149, 0.098197, -0.876570,
		-0.865863, 0.138044, 0.480859,
		0.168224, 0.985546, 0.019986,
		37.735500, 36.159359, 30.206982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949600, 35.740112, 30.066782>,  <37.617741, 35.469475, 30.192993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949600, 35.740112, 30.066782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.230202, 36.007698, 29.968494>,  <37.398563, 36.168251, 29.909521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.230202, 36.007698, 29.968494>,  <36.949600, 35.740112, 30.066782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230202, 36.007698, 29.968494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396621, 0.080008, -0.914489,
		-0.592102, 0.738975, 0.321452,
		0.701503, 0.668966, -0.245720,
		37.440651, 36.208389, 29.894779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604267, 36.288914, 29.863691>,  <36.949600, 35.740112, 30.066782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604267, 36.288914, 29.863691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.966209, 36.366123, 29.711914>,  <37.183376, 36.412449, 29.620848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.966209, 36.366123, 29.711914>,  <36.604267, 36.288914, 29.863691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966209, 36.366123, 29.711914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413028, 0.182024, -0.892343,
		-0.103176, 0.964162, 0.244430,
		0.904855, 0.193025, -0.379445,
		37.237667, 36.424030, 29.598080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488712, 36.892620, 29.570637>,  <36.604267, 36.288914, 29.863691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488712, 36.892620, 29.570637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.800720, 36.715111, 29.394171>,  <36.987926, 36.608604, 29.288290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.800720, 36.715111, 29.394171>,  <36.488712, 36.892620, 29.570637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800720, 36.715111, 29.394171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518837, -0.064537, -0.852434,
		0.349817, 0.893812, -0.280587,
		0.780023, -0.443774, -0.441167,
		37.034729, 36.581978, 29.261820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521450, 37.578480, 29.884949>,  <36.488712, 36.892620, 29.570637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521450, 37.578480, 29.884949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.233944, 37.853443, 29.926615>,  <36.061440, 38.018421, 29.951614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.233944, 37.853443, 29.926615>,  <36.521450, 37.578480, 29.884949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233944, 37.853443, 29.926615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009434, -0.159454, 0.987160,
		0.695188, 0.708554, 0.121095,
		-0.718766, 0.687405, 0.104166,
		36.018314, 38.059666, 29.957865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819431, 37.935368, 30.427710>,  <36.521450, 37.578480, 29.884949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819431, 37.935368, 30.427710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.428879, 38.015335, 30.394930>,  <36.194546, 38.063316, 30.375263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.428879, 38.015335, 30.394930>,  <36.819431, 37.935368, 30.427710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428879, 38.015335, 30.394930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084767, -0.005565, 0.996385,
		0.198737, 0.979797, 0.022380,
		-0.976380, 0.199916, -0.081948,
		36.135963, 38.075310, 30.370346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736614, 38.640953, 30.663925>,  <36.819431, 37.935368, 30.427710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736614, 38.640953, 30.663925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.401089, 38.424328, 30.686186>,  <36.199772, 38.294353, 30.699541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.401089, 38.424328, 30.686186>,  <36.736614, 38.640953, 30.663925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401089, 38.424328, 30.686186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063142, 0.198308, 0.978104,
		-0.540741, 0.816935, -0.200539,
		-0.838816, -0.541563, 0.055651,
		36.149445, 38.261860, 30.702881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289398, 38.991219, 31.046122>,  <36.736614, 38.640953, 30.663925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289398, 38.991219, 31.046122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.142651, 38.619568, 31.064625>,  <36.054604, 38.396580, 31.075727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.142651, 38.619568, 31.064625>,  <36.289398, 38.991219, 31.046122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142651, 38.619568, 31.064625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013832, 0.055168, 0.998381,
		-0.930171, 0.365631, -0.033091,
		-0.366865, -0.929123, 0.046258,
		36.032593, 38.340832, 31.078503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882458, 39.120739, 31.616192>,  <36.289398, 38.991219, 31.046122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882458, 39.120739, 31.616192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.873646, 38.726101, 31.551504>,  <35.868359, 38.489319, 31.512691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.873646, 38.726101, 31.551504>,  <35.882458, 39.120739, 31.616192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873646, 38.726101, 31.551504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229509, -0.152450, 0.961293,
		-0.973057, 0.058289, -0.223073,
		-0.022025, -0.986591, -0.161720,
		35.867039, 38.430122, 31.502989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231300, 38.872971, 31.903856>,  <35.882458, 39.120739, 31.616192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231300, 38.872971, 31.903856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.464592, 38.550999, 31.860170>,  <35.604568, 38.357815, 31.833958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.464592, 38.550999, 31.860170>,  <35.231300, 38.872971, 31.903856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464592, 38.550999, 31.860170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249524, -0.305482, 0.918922,
		-0.773034, -0.508690, -0.379016,
		0.583229, -0.804932, -0.109217,
		35.639561, 38.309521, 31.827406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783993, 38.249451, 32.150723>,  <35.231300, 38.872971, 31.903856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783993, 38.249451, 32.150723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.173447, 38.162014, 32.176842>,  <35.407120, 38.109554, 32.192513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.173447, 38.162014, 32.176842>,  <34.783993, 38.249451, 32.150723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173447, 38.162014, 32.176842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134654, -0.319589, 0.937940,
		-0.184153, -0.921999, -0.340595,
		0.973631, -0.218586, 0.065297,
		35.465534, 38.096439, 32.196430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836525, 37.589703, 32.467648>,  <34.783993, 38.249451, 32.150723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836525, 37.589703, 32.467648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.193577, 37.762669, 32.518608>,  <35.407806, 37.866447, 32.549183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.193577, 37.762669, 32.518608>,  <34.836525, 37.589703, 32.467648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193577, 37.762669, 32.518608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028074, -0.228738, 0.973083,
		0.449916, -0.872179, -0.192039,
		0.892629, 0.432414, 0.127399,
		35.461365, 37.892391, 32.556828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226624, 37.071003, 32.855503>,  <34.836525, 37.589703, 32.467648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226624, 37.071003, 32.855503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.371742, 37.439213, 32.913475>,  <35.458813, 37.660141, 32.948257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.371742, 37.439213, 32.913475>,  <35.226624, 37.071003, 32.855503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371742, 37.439213, 32.913475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063727, -0.130654, 0.989378,
		0.929687, -0.368179, 0.011262,
		0.362797, 0.920529, 0.144930,
		35.480583, 37.715370, 32.956955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582630, 36.954952, 33.466084>,  <35.226624, 37.071003, 32.855503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582630, 36.954952, 33.466084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.545174, 37.352089, 33.436417>,  <35.522701, 37.590370, 33.418617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.545174, 37.352089, 33.436417>,  <35.582630, 36.954952, 33.466084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545174, 37.352089, 33.436417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011875, 0.073378, 0.997234,
		0.995536, 0.094259, 0.004919,
		-0.093637, 0.992840, -0.074170,
		35.517082, 37.649940, 33.414165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106525, 37.251827, 33.863209>,  <35.582630, 36.954952, 33.466084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106525, 37.251827, 33.863209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.811790, 37.521793, 33.847370>,  <35.634949, 37.683773, 33.837868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.811790, 37.521793, 33.847370>,  <36.106525, 37.251827, 33.863209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811790, 37.521793, 33.847370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097247, -0.047848, 0.994110,
		0.669043, 0.736344, 0.100890,
		-0.736834, 0.674913, -0.039595,
		35.590740, 37.724266, 33.835491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297302, 37.628895, 34.414867>,  <36.106525, 37.251827, 33.863209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297302, 37.628895, 34.414867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.911327, 37.702244, 34.339737>,  <35.679745, 37.746254, 34.294659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.911327, 37.702244, 34.339737>,  <36.297302, 37.628895, 34.414867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911327, 37.702244, 34.339737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245340, -0.375613, 0.893713,
		0.093333, 0.908454, 0.407430,
		-0.964934, 0.183372, -0.187823,
		35.621849, 37.757256, 34.283390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.843784, 38.933796, 26.103468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487576, 38.814022, 26.240471>,  <35.273849, 38.742157, 26.322674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487576, 38.814022, 26.240471>,  <35.843784, 38.933796, 26.103468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487576, 38.814022, 26.240471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321047, 0.119800, 0.939455,
		-0.322335, 0.946567, -0.010552,
		-0.890522, -0.299432, 0.342508,
		35.220421, 38.724194, 26.343224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762463, 39.330692, 26.669258>,  <35.843784, 38.933796, 26.103468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762463, 39.330692, 26.669258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449772, 39.089363, 26.732384>,  <35.262157, 38.944565, 26.770260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449772, 39.089363, 26.732384>,  <35.762463, 39.330692, 26.669258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449772, 39.089363, 26.732384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166424, 0.042057, 0.985157,
		-0.601008, 0.796385, 0.067530,
		-0.781724, -0.603326, 0.157814,
		35.215256, 38.908363, 26.779728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387188, 39.668320, 27.111563>,  <35.762463, 39.330692, 26.669258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387188, 39.668320, 27.111563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332592, 39.273373, 27.143763>,  <35.299835, 39.036404, 27.163082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332592, 39.273373, 27.143763>,  <35.387188, 39.668320, 27.111563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332592, 39.273373, 27.143763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414498, 0.016887, 0.909894,
		-0.899757, 0.157557, 0.406956,
		-0.136488, -0.987366, 0.080501,
		35.291645, 38.977161, 27.167913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073566, 39.728848, 27.742031>,  <35.387188, 39.668320, 27.111563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073566, 39.728848, 27.742031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176525, 39.346188, 27.687513>,  <35.238300, 39.116592, 27.654802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176525, 39.346188, 27.687513>,  <35.073566, 39.728848, 27.742031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176525, 39.346188, 27.687513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143403, -0.101669, 0.984428,
		-0.955606, -0.272934, 0.111017,
		0.257397, -0.956645, -0.136295,
		35.253746, 39.059193, 27.646626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720188, 39.295532, 28.207571>,  <35.073566, 39.728848, 27.742031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720188, 39.295532, 28.207571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044949, 39.077888, 28.122948>,  <35.239803, 38.947300, 28.072174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044949, 39.077888, 28.122948>,  <34.720188, 39.295532, 28.207571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044949, 39.077888, 28.122948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110856, -0.212102, 0.970939,
		-0.573173, -0.811760, -0.111888,
		0.811901, -0.544113, -0.211560,
		35.288521, 38.914654, 28.059479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622242, 38.673721, 28.643436>,  <34.720188, 39.295532, 28.207571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622242, 38.673721, 28.643436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006691, 38.645241, 28.536728>,  <35.237362, 38.628155, 28.472702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006691, 38.645241, 28.536728>,  <34.622242, 38.673721, 28.643436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006691, 38.645241, 28.536728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230977, -0.322049, 0.918115,
		-0.151280, -0.944042, -0.293085,
		0.961126, -0.071197, -0.266771,
		35.295029, 38.623882, 28.456696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841591, 37.973095, 28.789448>,  <34.622242, 38.673721, 28.643436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841591, 37.973095, 28.789448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175652, 38.191460, 28.762590>,  <35.376087, 38.322479, 28.746475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175652, 38.191460, 28.762590>,  <34.841591, 37.973095, 28.789448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175652, 38.191460, 28.762590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208960, -0.201984, 0.956838,
		0.508785, -0.813133, -0.282760,
		0.835149, 0.545910, -0.067145,
		35.426197, 38.355232, 28.742447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441898, 37.492069, 28.990265>,  <34.841591, 37.973095, 28.789448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441898, 37.492069, 28.990265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557552, 37.871674, 29.040501>,  <35.626945, 38.099438, 29.070642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557552, 37.871674, 29.040501>,  <35.441898, 37.492069, 28.990265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557552, 37.871674, 29.040501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327582, -0.221357, 0.918527,
		0.899495, -0.224439, -0.374882,
		0.289136, 0.949014, 0.125587,
		35.644295, 38.156380, 29.078176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038113, 37.428925, 29.392244>,  <35.441898, 37.492069, 28.990265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038113, 37.428925, 29.392244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947319, 37.812347, 29.461126>,  <35.892845, 38.042400, 29.502455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947319, 37.812347, 29.461126>,  <36.038113, 37.428925, 29.392244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947319, 37.812347, 29.461126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304993, -0.097962, 0.947303,
		0.924910, 0.267543, -0.270116,
		-0.226983, 0.958553, 0.172205,
		35.879223, 38.099915, 29.512787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433277, 37.131569, 28.810068>,  <36.038113, 37.428925, 29.392244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433277, 37.131569, 28.810068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707886, 36.840763, 28.805580>,  <36.872650, 36.666279, 28.802887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707886, 36.840763, 28.805580>,  <36.433277, 37.131569, 28.810068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707886, 36.840763, 28.805580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319849, -0.288108, -0.902602,
		0.652977, 0.623248, -0.430330,
		0.686526, -0.727019, -0.011218,
		36.913845, 36.622658, 28.802216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805874, 37.178967, 28.216255>,  <36.433277, 37.131569, 28.810068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805874, 37.178967, 28.216255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812931, 36.789978, 28.309193>,  <36.817165, 36.556583, 28.364956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812931, 36.789978, 28.309193>,  <36.805874, 37.178967, 28.216255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812931, 36.789978, 28.309193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267219, -0.228514, -0.936150,
		0.963475, -0.045568, -0.263895,
		0.017645, -0.972474, 0.232344,
		36.818226, 36.498238, 28.378895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788383, 36.845482, 27.619011>,  <36.805874, 37.178967, 28.216255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788383, 36.845482, 27.619011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718990, 36.535255, 27.861795>,  <36.677353, 36.349121, 28.007465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718990, 36.535255, 27.861795>,  <36.788383, 36.845482, 27.619011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718990, 36.535255, 27.861795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324016, -0.537046, -0.778843,
		0.930009, -0.331784, -0.158126,
		-0.173487, -0.775566, 0.606960,
		36.666943, 36.302586, 28.043884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112171, 36.242290, 27.328176>,  <36.788383, 36.845482, 27.619011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112171, 36.242290, 27.328176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797382, 36.147381, 27.555996>,  <36.608509, 36.090435, 27.692688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797382, 36.147381, 27.555996>,  <37.112171, 36.242290, 27.328176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797382, 36.147381, 27.555996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394965, -0.515445, -0.760473,
		0.474008, -0.823419, 0.311926,
		-0.786968, -0.237271, 0.569547,
		36.561291, 36.076199, 27.726860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953449, 35.609192, 27.119402>,  <37.112171, 36.242290, 27.328176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953449, 35.609192, 27.119402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629108, 35.700703, 27.334877>,  <36.434505, 35.755611, 27.464161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629108, 35.700703, 27.334877>,  <36.953449, 35.609192, 27.119402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629108, 35.700703, 27.334877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570751, -0.105475, -0.814321,
		-0.129464, -0.967752, 0.216089,
		-0.810853, 0.228758, 0.538691,
		36.385853, 35.769337, 27.496483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582420, 34.908230, 27.126417>,  <36.953449, 35.609192, 27.119402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582420, 34.908230, 27.126417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327999, 35.210220, 27.190233>,  <36.175346, 35.391415, 27.228523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327999, 35.210220, 27.190233>,  <36.582420, 34.908230, 27.126417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327999, 35.210220, 27.190233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546542, -0.294813, -0.783822,
		-0.544730, -0.585748, 0.600141,
		-0.636052, 0.754973, 0.159542,
		36.137184, 35.436714, 27.238096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898281, 34.636871, 27.049025>,  <36.582420, 34.908230, 27.126417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898281, 34.636871, 27.049025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801388, 35.021679, 26.998684>,  <35.743252, 35.252563, 26.968479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801388, 35.021679, 26.998684>,  <35.898281, 34.636871, 27.049025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801388, 35.021679, 26.998684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630397, -0.254665, -0.733311,
		-0.737511, -0.098296, 0.668144,
		-0.242234, 0.962021, -0.125853,
		35.728718, 35.310284, 26.960928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181087, 34.684608, 27.025433>,  <35.898281, 34.636871, 27.049025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181087, 34.684608, 27.025433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327461, 35.005695, 26.837074>,  <35.415287, 35.198345, 26.724060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327461, 35.005695, 26.837074>,  <35.181087, 34.684608, 27.025433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327461, 35.005695, 26.837074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603560, -0.180446, -0.776630,
		-0.708382, 0.568412, 0.418453,
		0.365938, 0.802713, -0.470895,
		35.437244, 35.246510, 26.695807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576618, 34.868080, 26.621338>,  <35.181087, 34.684608, 27.025433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576618, 34.868080, 26.621338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847603, 35.123093, 26.474585>,  <35.010193, 35.276100, 26.386532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847603, 35.123093, 26.474585>,  <34.576618, 34.868080, 26.621338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847603, 35.123093, 26.474585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581328, 0.158452, -0.798092,
		-0.450675, 0.753955, 0.477959,
		0.677459, 0.637531, -0.366884,
		35.050842, 35.314350, 26.364519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123306, 35.397991, 26.288601>,  <34.576618, 34.868080, 26.621338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123306, 35.397991, 26.288601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487988, 35.419380, 26.125656>,  <34.706795, 35.432213, 26.027889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487988, 35.419380, 26.125656>,  <34.123306, 35.397991, 26.288601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487988, 35.419380, 26.125656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409180, 0.207586, -0.888527,
		0.037052, 0.976754, 0.211136,
		0.911701, 0.053471, -0.407360,
		34.761497, 35.435421, 26.003448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146355, 35.882984, 25.844004>,  <34.123306, 35.397991, 26.288601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146355, 35.882984, 25.844004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455326, 35.655968, 25.729984>,  <34.640709, 35.519756, 25.661572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455326, 35.655968, 25.729984>,  <34.146355, 35.882984, 25.844004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455326, 35.655968, 25.729984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242697, 0.150988, -0.958280,
		0.586904, 0.809381, -0.021114,
		0.772426, -0.567542, -0.285050,
		34.687054, 35.485706, 25.644468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318523, 36.192863, 25.241282>,  <34.146355, 35.882984, 25.844004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318523, 36.192863, 25.241282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497517, 35.836403, 25.211344>,  <34.604912, 35.622524, 25.193382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497517, 35.836403, 25.211344>,  <34.318523, 36.192863, 25.241282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497517, 35.836403, 25.211344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425471, -0.138540, -0.894305,
		0.786594, 0.432033, -0.441155,
		0.447487, -0.891153, -0.074843,
		34.631763, 35.569057, 25.188890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847702, 36.161766, 24.632578>,  <34.318523, 36.192863, 25.241282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847702, 36.161766, 24.632578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716324, 35.793114, 24.715254>,  <34.637497, 35.571922, 24.764860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716324, 35.793114, 24.715254>,  <34.847702, 36.161766, 24.632578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716324, 35.793114, 24.715254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192391, -0.148962, -0.969947,
		0.924721, -0.358340, -0.128387,
		-0.328446, -0.921631, 0.206689,
		34.617790, 35.516624, 24.777260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246696, 35.800419, 24.233362>,  <34.847702, 36.161766, 24.632578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246696, 35.800419, 24.233362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922028, 35.576736, 24.300865>,  <34.727226, 35.442528, 24.341368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922028, 35.576736, 24.300865>,  <35.246696, 35.800419, 24.233362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922028, 35.576736, 24.300865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076660, -0.184434, -0.979851,
		0.579060, -0.808255, 0.106832,
		-0.811673, -0.559203, 0.168759,
		34.678524, 35.408974, 24.351492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.447132, 36.726933, 26.906290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.608690, 37.092850, 26.908506>,  <29.705626, 37.312401, 26.909836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.608690, 37.092850, 26.908506>,  <29.447132, 36.726933, 26.906290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608690, 37.092850, 26.908506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184727, -0.087487, 0.978888,
		0.895960, -0.394345, -0.204322,
		0.403895, 0.914789, 0.005539,
		29.729858, 37.367287, 26.910168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011858, 36.783180, 27.407330>,  <29.447132, 36.726933, 26.906290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011858, 36.783180, 27.407330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.947891, 37.176292, 27.370316>,  <29.909512, 37.412159, 27.348106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.947891, 37.176292, 27.370316>,  <30.011858, 36.783180, 27.407330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947891, 37.176292, 27.370316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254977, 0.131686, 0.957938,
		0.953632, 0.129596, -0.271646,
		-0.159917, 0.982784, -0.092536,
		29.899916, 37.471127, 27.342554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655832, 37.114826, 27.635433>,  <30.011858, 36.783180, 27.407330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655832, 37.114826, 27.635433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.344309, 37.364937, 27.655367>,  <30.157394, 37.515003, 27.667328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.344309, 37.364937, 27.655367>,  <30.655832, 37.114826, 27.635433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344309, 37.364937, 27.655367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211646, 0.187164, 0.959258,
		0.590474, 0.757627, -0.278103,
		-0.778811, 0.625276, 0.049834,
		30.110666, 37.552521, 27.670317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883024, 37.519356, 28.151615>,  <30.655832, 37.114826, 27.635433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883024, 37.519356, 28.151615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.494005, 37.610809, 28.134289>,  <30.260593, 37.665684, 28.123892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.494005, 37.610809, 28.134289>,  <30.883024, 37.519356, 28.151615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494005, 37.610809, 28.134289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042513, 0.357588, 0.932911,
		0.228787, 0.905459, -0.357491,
		-0.972548, 0.228636, -0.043317,
		30.202240, 37.679401, 28.121294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785521, 38.090889, 28.491196>,  <30.883024, 37.519356, 28.151615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785521, 38.090889, 28.491196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.404686, 37.969364, 28.477177>,  <30.176186, 37.896450, 28.468765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.404686, 37.969364, 28.477177>,  <30.785521, 38.090889, 28.491196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404686, 37.969364, 28.477177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142506, 0.339320, 0.929814,
		-0.270597, 0.890258, -0.366357,
		-0.952087, -0.303813, -0.035048,
		30.119061, 37.878220, 28.466661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285767, 38.667736, 28.776827>,  <30.785521, 38.090889, 28.491196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285767, 38.667736, 28.776827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.110117, 38.309879, 28.809761>,  <30.004728, 38.095165, 28.829521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.110117, 38.309879, 28.809761>,  <30.285767, 38.667736, 28.776827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110117, 38.309879, 28.809761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172031, 0.173676, 0.969661,
		-0.881803, 0.411636, -0.230172,
		-0.439123, -0.894646, 0.082334,
		29.978380, 38.041485, 28.834461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681419, 38.770424, 29.316643>,  <30.285767, 38.667736, 28.776827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681419, 38.770424, 29.316643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.781691, 38.383652, 29.297874>,  <29.841854, 38.151588, 29.286613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.781691, 38.383652, 29.297874>,  <29.681419, 38.770424, 29.316643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781691, 38.383652, 29.297874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168932, -0.091415, 0.981379,
		-0.953217, -0.238084, -0.186262,
		0.250677, -0.966933, -0.046918,
		29.856894, 38.093571, 29.283798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208893, 38.453560, 29.619051>,  <29.681419, 38.770424, 29.316643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208893, 38.453560, 29.619051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.481962, 38.161579, 29.632492>,  <29.645803, 37.986389, 29.640556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.481962, 38.161579, 29.632492>,  <29.208893, 38.453560, 29.619051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481962, 38.161579, 29.632492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118578, -0.065289, 0.990796,
		-0.721040, -0.680373, -0.131127,
		0.682672, -0.729952, 0.033602,
		29.686764, 37.942593, 29.642572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972071, 38.000725, 30.198151>,  <29.208893, 38.453560, 29.619051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972071, 38.000725, 30.198151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.356150, 37.915398, 30.126019>,  <29.586597, 37.864201, 30.082739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.356150, 37.915398, 30.126019>,  <28.972071, 38.000725, 30.198151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356150, 37.915398, 30.126019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149876, -0.151337, 0.977054,
		-0.235714, -0.965191, -0.113342,
		0.960196, -0.213318, -0.180331,
		29.644209, 37.851402, 30.071918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058054, 37.490482, 30.639380>,  <28.972071, 38.000725, 30.198151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058054, 37.490482, 30.639380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.438923, 37.512356, 30.519131>,  <29.667444, 37.525482, 30.446981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.438923, 37.512356, 30.519131>,  <29.058054, 37.490482, 30.639380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438923, 37.512356, 30.519131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302549, -0.306404, 0.902541,
		-0.042753, -0.950329, -0.308295,
		0.952175, 0.054688, -0.300621,
		29.724575, 37.528763, 30.428944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354231, 36.918732, 30.959229>,  <29.058054, 37.490482, 30.639380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354231, 36.918732, 30.959229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.608379, 37.215488, 30.873533>,  <29.760868, 37.393543, 30.822117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.608379, 37.215488, 30.873533>,  <29.354231, 36.918732, 30.959229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608379, 37.215488, 30.873533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508618, -0.193308, 0.839011,
		0.581045, -0.642047, -0.500163,
		0.635370, 0.741895, -0.214236,
		29.798990, 37.438057, 30.809263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937477, 36.560680, 31.019846>,  <29.354231, 36.918732, 30.959229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937477, 36.560680, 31.019846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.049168, 36.941010, 31.073467>,  <30.116182, 37.169205, 31.105640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.049168, 36.941010, 31.073467>,  <29.937477, 36.560680, 31.019846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049168, 36.941010, 31.073467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549331, -0.272683, 0.789861,
		0.787571, -0.146911, -0.598456,
		0.279228, 0.950821, 0.134055,
		30.132936, 37.226257, 31.113684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718441, 36.581417, 31.113335>,  <29.937477, 36.560680, 31.019846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718441, 36.581417, 31.113335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.547264, 36.904163, 31.276228>,  <30.444557, 37.097809, 31.373964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.547264, 36.904163, 31.276228>,  <30.718441, 36.581417, 31.113335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547264, 36.904163, 31.276228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512746, -0.154312, 0.844559,
		0.744283, 0.570230, -0.347679,
		-0.427942, 0.806861, 0.407235,
		30.418882, 37.146221, 31.398397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374540, 36.889317, 31.360340>,  <30.718441, 36.581417, 31.113335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374540, 36.889317, 31.360340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.042425, 37.000435, 31.553610>,  <30.843157, 37.067104, 31.669571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.042425, 37.000435, 31.553610>,  <31.374540, 36.889317, 31.360340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042425, 37.000435, 31.553610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439287, -0.207360, 0.874088,
		0.343005, 0.937994, 0.050138,
		-0.830286, 0.277792, 0.483174,
		30.793339, 37.083771, 31.698563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139030, 36.897572, 31.164108>,  <31.374540, 36.889317, 31.360340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139030, 36.897572, 31.164108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.149071, 36.499859, 31.205622>,  <32.155094, 36.261230, 31.230530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.149071, 36.499859, 31.205622>,  <32.139030, 36.897572, 31.164108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149071, 36.499859, 31.205622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467549, -0.103437, -0.877895,
		0.883611, -0.026492, -0.467472,
		0.025096, -0.994283, 0.103784,
		32.156601, 36.201572, 31.236757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620789, 36.564075, 30.691355>,  <32.139030, 36.897572, 31.164108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620789, 36.564075, 30.691355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.372639, 36.263783, 30.782154>,  <32.223747, 36.083607, 30.836634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.372639, 36.263783, 30.782154>,  <32.620789, 36.564075, 30.691355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372639, 36.263783, 30.782154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215574, -0.115061, -0.969685,
		0.754095, -0.650507, -0.090457,
		-0.620378, -0.750734, 0.226999,
		32.186523, 36.038563, 30.850254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419899, 36.282516, 29.948740>,  <32.620789, 36.564075, 30.691355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419899, 36.282516, 29.948740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.149632, 36.109978, 30.187876>,  <31.987471, 36.006454, 30.331358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.149632, 36.109978, 30.187876>,  <32.419899, 36.282516, 29.948740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149632, 36.109978, 30.187876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591080, -0.167659, -0.788997,
		0.440564, -0.886471, -0.141679,
		-0.675668, -0.431347, 0.597839,
		31.946932, 35.980572, 30.367228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414307, 35.636101, 29.727636>,  <32.419899, 36.282516, 29.948740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414307, 35.636101, 29.727636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.067829, 35.708992, 29.913754>,  <31.859941, 35.752728, 30.025423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.067829, 35.708992, 29.913754>,  <32.414307, 35.636101, 29.727636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067829, 35.708992, 29.913754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489576, -0.495982, -0.717160,
		0.100092, -0.848997, 0.518831,
		-0.866197, 0.182225, 0.465292,
		31.807970, 35.763660, 30.053341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124447, 34.963322, 29.645401>,  <32.414307, 35.636101, 29.727636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124447, 34.963322, 29.645401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.849852, 35.240177, 29.734549>,  <31.685095, 35.406292, 29.788038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.849852, 35.240177, 29.734549>,  <32.124447, 34.963322, 29.645401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849852, 35.240177, 29.734549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608868, -0.379608, -0.696547,
		-0.397508, -0.613869, 0.682021,
		-0.686489, 0.692144, 0.222868,
		31.643904, 35.447819, 29.801411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430304, 34.604435, 29.694302>,  <32.124447, 34.963322, 29.645401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430304, 34.604435, 29.694302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.374245, 34.987179, 29.592491>,  <31.340609, 35.216824, 29.531404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.374245, 34.987179, 29.592491>,  <31.430304, 34.604435, 29.694302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374245, 34.987179, 29.592491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592521, -0.287002, -0.752694,
		-0.793271, 0.045324, 0.607180,
		-0.140147, 0.956857, -0.254526,
		31.332201, 35.274235, 29.516134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698975, 34.594551, 29.614944>,  <31.430304, 34.604435, 29.694302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698975, 34.594551, 29.614944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.841663, 34.916294, 29.424891>,  <30.927277, 35.109341, 29.310858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.841663, 34.916294, 29.424891>,  <30.698975, 34.594551, 29.614944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841663, 34.916294, 29.424891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700351, -0.106339, -0.705833,
		-0.618270, 0.584548, 0.525401,
		0.356722, 0.804361, -0.475135,
		30.948681, 35.157604, 29.282351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107769, 34.971745, 29.352095>,  <30.698975, 34.594551, 29.614944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107769, 34.971745, 29.352095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.418331, 35.088394, 29.128613>,  <30.604668, 35.158386, 28.994524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.418331, 35.088394, 29.128613>,  <30.107769, 34.971745, 29.352095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418331, 35.088394, 29.128613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582253, -0.007375, -0.812974,
		-0.241205, 0.956504, 0.164075,
		0.776403, 0.291627, -0.558706,
		30.651253, 35.175880, 28.961000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840267, 35.492592, 28.858898>,  <30.107769, 34.971745, 29.352095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840267, 35.492592, 28.858898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.184753, 35.395164, 28.680468>,  <30.391445, 35.336708, 28.573410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.184753, 35.395164, 28.680468>,  <29.840267, 35.492592, 28.858898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184753, 35.395164, 28.680468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426713, 0.130256, -0.894958,
		0.276086, 0.961097, 0.008245,
		0.861216, -0.243567, -0.446075,
		30.443119, 35.322094, 28.546646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937096, 35.947350, 28.163963>,  <29.840267, 35.492592, 28.858898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937096, 35.947350, 28.163963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.192120, 35.641834, 28.123669>,  <30.345135, 35.458527, 28.099491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.192120, 35.641834, 28.123669>,  <29.937096, 35.947350, 28.163963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192120, 35.641834, 28.123669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198325, -0.036367, -0.979461,
		0.744435, 0.644445, -0.174664,
		0.637561, -0.763785, -0.100737,
		30.383389, 35.412697, 28.093447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245186, 36.024220, 27.602493>,  <29.937096, 35.947350, 28.163963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245186, 36.024220, 27.602493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.320698, 35.636181, 27.663521>,  <30.366005, 35.403358, 27.700136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.320698, 35.636181, 27.663521>,  <30.245186, 36.024220, 27.602493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320698, 35.636181, 27.663521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287286, -0.203120, -0.936061,
		0.939058, 0.132878, -0.317040,
		0.188779, -0.970096, 0.152567,
		30.377331, 35.345154, 27.709291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875505, 35.804134, 27.195955>,  <30.245186, 36.024220, 27.602493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875505, 35.804134, 27.195955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.663776, 35.471947, 27.265406>,  <30.536739, 35.272636, 27.307076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.663776, 35.471947, 27.265406>,  <30.875505, 35.804134, 27.195955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663776, 35.471947, 27.265406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147742, -0.111295, -0.982744,
		0.835459, -0.545839, -0.063784,
		-0.529321, -0.830466, 0.173626,
		30.504980, 35.222809, 27.317493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144567, 35.385700, 26.660734>,  <30.875505, 35.804134, 27.195955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144567, 35.385700, 26.660734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.810381, 35.209038, 26.791538>,  <30.609869, 35.103039, 26.870020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.810381, 35.209038, 26.791538>,  <31.144567, 35.385700, 26.660734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810381, 35.209038, 26.791538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233412, -0.253527, -0.938745,
		0.497510, -0.860618, 0.108725,
		-0.835466, -0.441657, 0.327010,
		30.559742, 35.076542, 26.889641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100258, 34.693913, 26.259428>,  <31.144567, 35.385700, 26.660734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100258, 34.693913, 26.259428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.736792, 34.772575, 26.406754>,  <30.518713, 34.819775, 26.495150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.736792, 34.772575, 26.406754>,  <31.100258, 34.693913, 26.259428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736792, 34.772575, 26.406754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407170, -0.222104, -0.885936,
		-0.092421, -0.954985, 0.281890,
		-0.908665, 0.196656, 0.368314,
		30.464191, 34.831573, 26.517248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170959, 33.944878, 26.150391>,  <31.100258, 34.693913, 26.259428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170959, 33.944878, 26.150391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.488173, 33.829952, 25.935522>,  <31.678501, 33.760998, 25.806601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.488173, 33.829952, 25.935522>,  <31.170959, 33.944878, 26.150391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488173, 33.829952, 25.935522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498643, -0.200377, 0.843329,
		-0.349938, -0.936642, -0.015638,
		0.793032, -0.287315, -0.537170,
		31.726082, 33.743759, 25.774372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451357, 33.222370, 26.411390>,  <31.170959, 33.944878, 26.150391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451357, 33.222370, 26.411390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.731817, 33.434959, 26.221264>,  <31.900093, 33.562511, 26.107187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.731817, 33.434959, 26.221264>,  <31.451357, 33.222370, 26.411390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731817, 33.434959, 26.221264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556158, 0.009500, 0.831022,
		0.446178, -0.847024, -0.288920,
		0.701152, 0.531469, -0.475318,
		31.942163, 33.594398, 26.078669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021976, 32.785378, 26.355703>,  <31.451357, 33.222370, 26.411390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021976, 32.785378, 26.355703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.126991, 33.170883, 26.336760>,  <32.189999, 33.402187, 26.325394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.126991, 33.170883, 26.336760>,  <32.021976, 32.785378, 26.355703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126991, 33.170883, 26.336760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557824, -0.111539, 0.822430,
		0.787343, -0.242333, -0.566892,
		0.262533, 0.963760, -0.047360,
		32.205750, 33.460011, 26.322552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635918, 32.647255, 26.654484>,  <32.021976, 32.785378, 26.355703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635918, 32.647255, 26.654484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.612759, 33.046333, 26.668592>,  <32.598866, 33.285782, 26.677057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.612759, 33.046333, 26.668592>,  <32.635918, 32.647255, 26.654484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612759, 33.046333, 26.668592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597230, 0.006300, 0.802045,
		0.799978, 0.067500, -0.596221,
		-0.057894, 0.997699, 0.035273,
		32.595390, 33.345642, 26.679174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359241, 32.808468, 26.820436>,  <32.635918, 32.647255, 26.654484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359241, 32.808468, 26.820436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.133034, 33.129387, 26.896864>,  <32.997311, 33.321938, 26.942720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.133034, 33.129387, 26.896864>,  <33.359241, 32.808468, 26.820436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133034, 33.129387, 26.896864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490871, 0.141261, 0.859704,
		0.662751, 0.579964, -0.473712,
		-0.565515, 0.802301, 0.191067,
		32.963379, 33.370079, 26.954184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794968, 33.221771, 26.897829>,  <33.359241, 32.808468, 26.820436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794968, 33.221771, 26.897829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.479351, 33.399284, 27.067755>,  <33.289982, 33.505791, 27.169710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.479351, 33.399284, 27.067755>,  <33.794968, 33.221771, 26.897829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479351, 33.399284, 27.067755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572835, 0.281630, 0.769769,
		0.221968, 0.850731, -0.476432,
		-0.789044, 0.443781, 0.424815,
		33.242638, 33.532417, 27.195200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859230, 33.877457, 26.884039>,  <33.794968, 33.221771, 26.897829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859230, 33.877457, 26.884039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.607838, 33.816662, 27.189171>,  <33.457001, 33.780186, 27.372250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.607838, 33.816662, 27.189171>,  <33.859230, 33.877457, 26.884039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607838, 33.816662, 27.189171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667228, 0.398703, 0.629160,
		-0.399768, 0.904397, -0.149167,
		-0.628484, -0.151990, 0.762828,
		33.419292, 33.771065, 27.418018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704712, 34.506596, 27.275053>,  <33.859230, 33.877457, 26.884039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704712, 34.506596, 27.275053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.614109, 34.220142, 27.539127>,  <33.559746, 34.048271, 27.697571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.614109, 34.220142, 27.539127>,  <33.704712, 34.506596, 27.275053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614109, 34.220142, 27.539127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568491, 0.453172, 0.686625,
		-0.790894, 0.530834, 0.304470,
		-0.226507, -0.716136, 0.660185,
		33.546158, 34.005302, 27.737183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934875, 34.780548, 27.935980>,  <33.704712, 34.506596, 27.275053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934875, 34.780548, 27.935980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.850788, 34.406055, 28.048605>,  <33.800335, 34.181358, 28.116180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.850788, 34.406055, 28.048605>,  <33.934875, 34.780548, 27.935980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850788, 34.406055, 28.048605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649244, 0.081638, 0.756186,
		-0.730952, 0.341766, 0.590682,
		-0.210217, -0.936232, 0.281563,
		33.787724, 34.125187, 28.133074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901817, 34.855408, 28.609474>,  <33.934875, 34.780548, 27.935980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901817, 34.855408, 28.609474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.974812, 34.471687, 28.523281>,  <34.018608, 34.241455, 28.471565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.974812, 34.471687, 28.523281>,  <33.901817, 34.855408, 28.609474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974812, 34.471687, 28.523281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711181, -0.022544, 0.702647,
		-0.678911, -0.281471, 0.678125,
		0.182487, -0.959305, -0.215482,
		34.029556, 34.183895, 28.458637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725868, 34.440655, 29.254810>,  <33.901817, 34.855408, 28.609474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725868, 34.440655, 29.254810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.995705, 34.233837, 29.044060>,  <34.157604, 34.109749, 28.917610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.995705, 34.233837, 29.044060>,  <33.725868, 34.440655, 29.254810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995705, 34.233837, 29.044060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524565, -0.166423, 0.834946,
		-0.519387, -0.839625, 0.158955,
		0.674588, -0.517042, -0.526876,
		34.198082, 34.078724, 28.885998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833092, 33.865623, 29.610867>,  <33.725868, 34.440655, 29.254810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833092, 33.865623, 29.610867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.162411, 33.893761, 29.385572>,  <34.360001, 33.910645, 29.250397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.162411, 33.893761, 29.385572>,  <33.833092, 33.865623, 29.610867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162411, 33.893761, 29.385572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567206, -0.064472, 0.821049,
		0.021444, -0.995437, -0.092979,
		0.823297, 0.070345, -0.563235,
		34.409401, 33.914864, 29.216602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193069, 33.388119, 29.846504>,  <33.833092, 33.865623, 29.610867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193069, 33.388119, 29.846504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.452126, 33.636997, 29.670586>,  <34.607559, 33.786324, 29.565035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.452126, 33.636997, 29.670586>,  <34.193069, 33.388119, 29.846504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452126, 33.636997, 29.670586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668932, -0.187947, 0.719171,
		0.364810, -0.759962, -0.537933,
		0.647645, 0.622201, -0.439798,
		34.646420, 33.823658, 29.538647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803234, 33.030735, 29.971451>,  <34.193069, 33.388119, 29.846504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803234, 33.030735, 29.971451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.895947, 33.407326, 29.873549>,  <34.951572, 33.633278, 29.814808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.895947, 33.407326, 29.873549>,  <34.803234, 33.030735, 29.971451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895947, 33.407326, 29.873549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769440, -0.023489, 0.638288,
		0.595182, -0.336265, -0.729852,
		0.231777, 0.941474, -0.244755,
		34.965481, 33.689770, 29.800121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.360275, 34.809093, 23.603329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.990299, 34.868637, 23.743233>,  <34.768314, 34.904366, 23.827175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.990299, 34.868637, 23.743233>,  <35.360275, 34.809093, 23.603329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990299, 34.868637, 23.743233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374110, -0.193522, -0.906968,
		-0.067326, -0.969737, 0.234686,
		-0.924937, 0.148861, 0.349759,
		34.712818, 34.913296, 23.848160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917397, 34.237709, 23.357721>,  <35.360275, 34.809093, 23.603329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917397, 34.237709, 23.357721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.652153, 34.521713, 23.452528>,  <34.493008, 34.692116, 23.509411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.652153, 34.521713, 23.452528>,  <34.917397, 34.237709, 23.357721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652153, 34.521713, 23.452528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473660, -0.152836, -0.867345,
		-0.579598, -0.687407, 0.437650,
		-0.663108, 0.710008, 0.237014,
		34.453220, 34.734715, 23.523632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298286, 33.908432, 23.203150>,  <34.917397, 34.237709, 23.357721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298286, 33.908432, 23.203150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228313, 34.301636, 23.225414>,  <34.186329, 34.537556, 23.238773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228313, 34.301636, 23.225414>,  <34.298286, 33.908432, 23.203150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228313, 34.301636, 23.225414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600040, -0.061617, -0.797594,
		-0.780610, -0.172922, 0.600621,
		-0.174930, 0.983006, 0.055661,
		34.175835, 34.596539, 23.242113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480915, 34.134594, 23.271563>,  <34.298286, 33.908432, 23.203150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480915, 34.134594, 23.271563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.665737, 34.441402, 23.093487>,  <33.776630, 34.625488, 22.986641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.665737, 34.441402, 23.093487>,  <33.480915, 34.134594, 23.271563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665737, 34.441402, 23.093487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607924, -0.091561, -0.788698,
		-0.645707, 0.635060, 0.423982,
		0.462050, 0.767017, -0.445190,
		33.804352, 34.671509, 22.959930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977207, 34.600758, 23.107147>,  <33.480915, 34.134594, 23.271563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977207, 34.600758, 23.107147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.270805, 34.720642, 22.863371>,  <33.446964, 34.792572, 22.717104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.270805, 34.720642, 22.863371>,  <32.977207, 34.600758, 23.107147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270805, 34.720642, 22.863371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631307, -0.029751, -0.774962,
		-0.250394, 0.953567, 0.167370,
		0.733999, 0.299708, -0.609443,
		33.491005, 34.810555, 22.680538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616989, 34.906319, 22.555294>,  <32.977207, 34.600758, 23.107147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616989, 34.906319, 22.555294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.983990, 34.887020, 22.397371>,  <33.204189, 34.875443, 22.302618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.983990, 34.887020, 22.397371>,  <32.616989, 34.906319, 22.555294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983990, 34.887020, 22.397371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379802, 0.188477, -0.905664,
		0.118107, 0.980892, 0.154603,
		0.917497, -0.048247, -0.394805,
		33.259239, 34.872547, 22.278931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560478, 35.480015, 22.132156>,  <32.616989, 34.906319, 22.555294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560478, 35.480015, 22.132156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.840237, 35.218353, 22.016966>,  <33.008091, 35.061356, 21.947851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.840237, 35.218353, 22.016966>,  <32.560478, 35.480015, 22.132156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840237, 35.218353, 22.016966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285073, 0.114170, -0.951682,
		0.655425, 0.747695, -0.106632,
		0.699394, -0.654154, -0.287978,
		33.050056, 35.022106, 21.930573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985603, 35.851440, 21.684507>,  <32.560478, 35.480015, 22.132156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985603, 35.851440, 21.684507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.010338, 35.458416, 21.614368>,  <33.025177, 35.222599, 21.572285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.010338, 35.458416, 21.614368>,  <32.985603, 35.851440, 21.684507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010338, 35.458416, 21.614368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156319, 0.163980, -0.974000,
		0.985769, 0.087635, -0.143454,
		0.061833, -0.982563, -0.175345,
		33.028889, 35.163647, 21.561766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411274, 35.821671, 21.067780>,  <32.985603, 35.851440, 21.684507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411274, 35.821671, 21.067780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.230858, 35.465824, 21.096489>,  <33.122608, 35.252316, 21.113714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.230858, 35.465824, 21.096489>,  <33.411274, 35.821671, 21.067780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230858, 35.465824, 21.096489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063118, -0.048423, -0.996831,
		0.890269, -0.454140, -0.034310,
		-0.451039, -0.889613, 0.071774,
		33.095547, 35.198940, 21.118021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751995, 35.264606, 20.601233>,  <33.411274, 35.821671, 21.067780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751995, 35.264606, 20.601233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.366665, 35.171307, 20.654305>,  <33.135468, 35.115326, 20.686148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.366665, 35.171307, 20.654305>,  <33.751995, 35.264606, 20.601233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366665, 35.171307, 20.654305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128682, -0.032339, -0.991158,
		0.235476, -0.971879, 0.001138,
		-0.963323, -0.233248, 0.132678,
		33.077667, 35.101334, 20.694109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634079, 34.955502, 20.016602>,  <33.751995, 35.264606, 20.601233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634079, 34.955502, 20.016602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.267323, 35.004559, 20.168533>,  <33.047268, 35.033993, 20.259693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.267323, 35.004559, 20.168533>,  <33.634079, 34.955502, 20.016602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267323, 35.004559, 20.168533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369867, 0.096653, -0.924044,
		-0.150037, -0.987733, -0.043260,
		-0.916890, 0.122641, 0.379831,
		32.992256, 35.041351, 20.282482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152378, 34.454144, 19.662638>,  <33.634079, 34.955502, 20.016602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152378, 34.454144, 19.662638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.943588, 34.772423, 19.785542>,  <32.818314, 34.963390, 19.859283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.943588, 34.772423, 19.785542>,  <33.152378, 34.454144, 19.662638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943588, 34.772423, 19.785542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371150, 0.112456, -0.921739,
		-0.767977, -0.595164, 0.236623,
		-0.521976, 0.795697, 0.307259,
		32.786995, 35.011131, 19.877720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494064, 34.327381, 19.509920>,  <33.152378, 34.454144, 19.662638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494064, 34.327381, 19.509920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.555805, 34.721752, 19.484238>,  <32.592850, 34.958374, 19.468828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.555805, 34.721752, 19.484238>,  <32.494064, 34.327381, 19.509920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555805, 34.721752, 19.484238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443866, 0.011141, -0.896024,
		-0.882699, 0.166804, 0.439339,
		0.154355, 0.985927, -0.064204,
		32.602112, 35.017529, 19.464977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824308, 34.670124, 19.391005>,  <32.494064, 34.327381, 19.509920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824308, 34.670124, 19.391005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.090939, 34.918484, 19.226000>,  <32.250916, 35.067497, 19.126997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.090939, 34.918484, 19.226000>,  <31.824308, 34.670124, 19.391005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090939, 34.918484, 19.226000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522617, -0.005352, -0.852550,
		-0.531553, 0.783875, 0.320923,
		0.666575, 0.620896, -0.412512,
		32.290913, 35.104752, 19.102247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308071, 34.689095, 20.001751>,  <31.824308, 34.670124, 19.391005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308071, 34.689095, 20.001751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.020880, 34.411106, 20.017347>,  <30.848566, 34.244312, 20.026705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.020880, 34.411106, 20.017347>,  <31.308071, 34.689095, 20.001751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020880, 34.411106, 20.017347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206690, -0.159372, 0.965339,
		-0.664672, 0.701150, 0.258070,
		-0.717976, -0.694975, 0.038991,
		30.805487, 34.202614, 20.029045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877249, 34.890785, 20.610067>,  <31.308071, 34.689095, 20.001751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877249, 34.890785, 20.610067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.806465, 34.504341, 20.534906>,  <30.763994, 34.272472, 20.489809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.806465, 34.504341, 20.534906>,  <30.877249, 34.890785, 20.610067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806465, 34.504341, 20.534906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078461, -0.204157, 0.975789,
		-0.981086, 0.157931, 0.111930,
		-0.176959, -0.966115, -0.187904,
		30.753378, 34.214508, 20.478535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344950, 34.690411, 21.055092>,  <30.877249, 34.890785, 20.610067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344950, 34.690411, 21.055092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.511570, 34.342094, 20.950626>,  <30.611542, 34.133106, 20.887947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.511570, 34.342094, 20.950626>,  <30.344950, 34.690411, 21.055092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511570, 34.342094, 20.950626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063452, -0.258726, 0.963865,
		-0.906895, -0.418070, -0.052519,
		0.416551, -0.870792, -0.261165,
		30.636536, 34.080856, 20.872276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938131, 34.180973, 21.491394>,  <30.344950, 34.690411, 21.055092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938131, 34.180973, 21.491394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.278515, 34.007030, 21.373569>,  <30.482744, 33.902664, 21.302874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.278515, 34.007030, 21.373569>,  <29.938131, 34.180973, 21.491394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278515, 34.007030, 21.373569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089197, -0.433029, 0.896956,
		-0.517607, -0.789544, -0.329701,
		0.850956, -0.434862, -0.294564,
		30.533802, 33.876572, 21.285200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862177, 33.495987, 21.876200>,  <29.938131, 34.180973, 21.491394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862177, 33.495987, 21.876200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.250675, 33.534023, 21.788891>,  <30.483774, 33.556847, 21.736506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.250675, 33.534023, 21.788891>,  <29.862177, 33.495987, 21.876200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250675, 33.534023, 21.788891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236889, -0.294242, 0.925907,
		0.023820, -0.950988, -0.308307,
		0.971244, 0.095090, -0.218270,
		30.542049, 33.562550, 21.723410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187586, 32.981064, 22.319519>,  <29.862177, 33.495987, 21.876200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187586, 32.981064, 22.319519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.495136, 33.220886, 22.230654>,  <30.679667, 33.364780, 22.177334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.495136, 33.220886, 22.230654>,  <30.187586, 32.981064, 22.319519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495136, 33.220886, 22.230654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427751, -0.224068, 0.875684,
		0.475244, -0.768325, -0.428742,
		0.768878, 0.599558, -0.222165,
		30.725800, 33.400753, 22.164003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740124, 32.605793, 22.528946>,  <30.187586, 32.981064, 22.319519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740124, 32.605793, 22.528946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.874870, 32.981625, 22.504581>,  <30.955717, 33.207123, 22.489962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.874870, 32.981625, 22.504581>,  <30.740124, 32.605793, 22.528946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874870, 32.981625, 22.504581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468935, -0.111322, 0.876189,
		0.816469, -0.323721, -0.478103,
		0.336864, 0.939581, -0.060913,
		30.975929, 33.263500, 22.486307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374121, 32.643383, 22.906118>,  <30.740124, 32.605793, 22.528946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374121, 32.643383, 22.906118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.303646, 33.037064, 22.899027>,  <31.261362, 33.273270, 22.894772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.303646, 33.037064, 22.899027>,  <31.374121, 32.643383, 22.906118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303646, 33.037064, 22.899027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534417, 0.110761, 0.837933,
		0.826654, 0.138158, -0.545486,
		-0.176185, 0.984197, -0.017727,
		31.250790, 33.332321, 22.893709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979046, 32.964672, 23.067081>,  <31.374121, 32.643383, 22.906118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979046, 32.964672, 23.067081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.689068, 33.224743, 23.158051>,  <31.515081, 33.380787, 23.212631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.689068, 33.224743, 23.158051>,  <31.979046, 32.964672, 23.067081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689068, 33.224743, 23.158051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468922, 0.224000, 0.854363,
		0.504548, 0.726008, -0.467272,
		-0.724943, 0.650181, 0.227423,
		31.471584, 33.419796, 23.226278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292770, 33.603596, 23.366133>,  <31.979046, 32.964672, 23.067081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292770, 33.603596, 23.366133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.917131, 33.628044, 23.501404>,  <31.691748, 33.642712, 23.582567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.917131, 33.628044, 23.501404>,  <32.292770, 33.603596, 23.366133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917131, 33.628044, 23.501404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337268, 0.352766, 0.872815,
		-0.065950, 0.933713, -0.351896,
		-0.939096, 0.061121, 0.338177,
		31.635403, 33.646381, 23.602858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329147, 34.107704, 23.816347>,  <32.292770, 33.603596, 23.366133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329147, 34.107704, 23.816347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.993143, 33.917789, 23.921387>,  <31.791540, 33.803841, 23.984411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.993143, 33.917789, 23.921387>,  <32.329147, 34.107704, 23.816347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993143, 33.917789, 23.921387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030503, 0.441905, 0.896543,
		-0.541707, 0.761118, -0.356724,
		-0.840014, -0.474783, 0.262600,
		31.741138, 33.775356, 24.000166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047283, 34.632584, 24.269392>,  <32.329147, 34.107704, 23.816347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047283, 34.632584, 24.269392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.891420, 34.270748, 24.338530>,  <31.797901, 34.053646, 24.380013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.891420, 34.270748, 24.338530>,  <32.047283, 34.632584, 24.269392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891420, 34.270748, 24.338530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017881, 0.180213, 0.983465,
		-0.920785, 0.386309, -0.054047,
		-0.389661, -0.904593, 0.172845,
		31.774523, 33.999371, 24.390383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507874, 34.784626, 24.904778>,  <32.047283, 34.632584, 24.269392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507874, 34.784626, 24.904778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.590939, 34.395309, 24.865637>,  <31.640778, 34.161720, 24.842152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.590939, 34.395309, 24.865637>,  <31.507874, 34.784626, 24.904778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590939, 34.395309, 24.865637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291953, -0.033806, 0.955835,
		-0.933617, -0.227060, 0.277136,
		0.207663, -0.973294, -0.097853,
		31.653238, 34.103321, 24.836281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161631, 34.431980, 25.459778>,  <31.507874, 34.784626, 24.904778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161631, 34.431980, 25.459778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.452082, 34.172890, 25.367527>,  <31.626352, 34.017437, 25.312176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.452082, 34.172890, 25.367527>,  <31.161631, 34.431980, 25.459778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452082, 34.172890, 25.367527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273559, -0.035571, 0.961197,
		-0.630794, -0.761044, 0.151361,
		0.726130, -0.647724, -0.230628,
		31.669920, 33.978573, 25.298338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528252, 34.191711, 25.968636>,  <31.161631, 34.431980, 25.459778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528252, 34.191711, 25.968636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.303936, 34.494141, 26.103613>,  <30.169346, 34.675598, 26.184599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.303936, 34.494141, 26.103613>,  <30.528252, 34.191711, 25.968636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303936, 34.494141, 26.103613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511520, 0.004096, -0.859262,
		-0.651047, -0.654474, 0.384450,
		-0.560790, 0.756073, 0.337443,
		30.135698, 34.720963, 26.204845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828480, 34.081356, 25.849169>,  <30.528252, 34.191711, 25.968636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828480, 34.081356, 25.849169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.888329, 34.476784, 25.856504>,  <29.924238, 34.714043, 25.860905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.888329, 34.476784, 25.856504>,  <29.828480, 34.081356, 25.849169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888329, 34.476784, 25.856504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465205, 0.086752, -0.880942,
		-0.872466, 0.123279, 0.472870,
		0.149624, 0.988573, 0.018338,
		29.933216, 34.773357, 25.862005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158949, 34.376202, 25.573830>,  <29.828480, 34.081356, 25.849169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158949, 34.376202, 25.573830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.420414, 34.677456, 25.544125>,  <29.577293, 34.858208, 25.526302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.420414, 34.677456, 25.544125>,  <29.158949, 34.376202, 25.573830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420414, 34.677456, 25.544125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359743, 0.222890, -0.906038,
		-0.665817, 0.618958, 0.416629,
		0.653662, 0.753135, -0.074262,
		29.616512, 34.903397, 25.521847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758278, 34.958584, 25.173018>,  <29.158949, 34.376202, 25.573830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758278, 34.958584, 25.173018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.141653, 35.072147, 25.161745>,  <29.371677, 35.140285, 25.154982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.141653, 35.072147, 25.161745>,  <28.758278, 34.958584, 25.173018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141653, 35.072147, 25.161745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192682, 0.571277, -0.797819,
		-0.210410, 0.770089, 0.602238,
		0.958437, 0.283909, -0.028180,
		29.429184, 35.157322, 25.153292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738316, 35.628487, 25.005110>,  <28.758278, 34.958584, 25.173018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738316, 35.628487, 25.005110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.114712, 35.532093, 24.910059>,  <29.340549, 35.474258, 24.853029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.114712, 35.532093, 24.910059>,  <28.738316, 35.628487, 25.005110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114712, 35.532093, 24.910059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122679, 0.411500, -0.903115,
		0.315421, 0.878973, 0.357653,
		0.940988, -0.240985, -0.237628,
		29.397009, 35.459797, 24.838770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043056, 36.282784, 24.710798>,  <28.738316, 35.628487, 25.005110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043056, 36.282784, 24.710798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.287941, 35.997299, 24.574673>,  <29.434872, 35.826008, 24.492996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.287941, 35.997299, 24.574673>,  <29.043056, 36.282784, 24.710798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287941, 35.997299, 24.574673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160700, 0.309106, -0.937352,
		0.774193, 0.628544, 0.074545,
		0.612210, -0.713712, -0.340315,
		29.471603, 35.783184, 24.472578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590569, 36.586243, 24.340197>,  <29.043056, 36.282784, 24.710798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590569, 36.586243, 24.340197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.608383, 36.211891, 24.200399>,  <29.619072, 35.987282, 24.116520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.608383, 36.211891, 24.200399>,  <29.590569, 36.586243, 24.340197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608383, 36.211891, 24.200399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134713, 0.341020, -0.930353,
		0.989883, 0.088517, -0.110887,
		0.044537, -0.935879, -0.349495,
		29.621744, 35.931126, 24.095551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782701, 37.235760, 23.950567>,  <29.590569, 36.586243, 24.340197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782701, 37.235760, 23.950567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.432735, 37.368187, 24.091940>,  <29.222755, 37.447643, 24.176764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.432735, 37.368187, 24.091940>,  <29.782701, 37.235760, 23.950567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432735, 37.368187, 24.091940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436429, 0.222736, 0.871733,
		0.209880, 0.916942, -0.339363,
		-0.874917, 0.331067, 0.353433,
		29.170259, 37.467506, 24.197969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888517, 37.922813, 24.298346>,  <29.782701, 37.235760, 23.950567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888517, 37.922813, 24.298346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.558119, 37.762554, 24.456947>,  <29.359880, 37.666401, 24.552109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.558119, 37.762554, 24.456947>,  <29.888517, 37.922813, 24.298346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558119, 37.762554, 24.456947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306933, 0.270315, 0.912536,
		-0.472783, 0.875451, -0.100307,
		-0.825995, -0.400644, 0.396505,
		29.310320, 37.642361, 24.575899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691248, 38.401104, 24.809431>,  <29.888517, 37.922813, 24.298346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691248, 38.401104, 24.809431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.516275, 38.054787, 24.906639>,  <29.411293, 37.846996, 24.964964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.516275, 38.054787, 24.906639>,  <29.691248, 38.401104, 24.809431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516275, 38.054787, 24.906639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361314, 0.078256, 0.929154,
		-0.823472, 0.494247, 0.278592,
		-0.437430, -0.865792, 0.243020,
		29.385046, 37.795048, 24.979546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467230, 38.500069, 25.415567>,  <29.691248, 38.401104, 24.809431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467230, 38.500069, 25.415567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.476564, 38.100250, 25.407946>,  <29.482164, 37.860359, 25.403372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.476564, 38.100250, 25.407946>,  <29.467230, 38.500069, 25.415567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476564, 38.100250, 25.407946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282117, -0.011701, 0.959309,
		-0.959096, -0.027760, 0.281716,
		0.023334, -0.999546, -0.019054,
		29.483564, 37.800385, 25.402229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968451, 38.334709, 25.925272>,  <29.467230, 38.500069, 25.415567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968451, 38.334709, 25.925272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.228964, 38.035992, 25.871418>,  <29.385273, 37.856762, 25.839106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.228964, 38.035992, 25.871418>,  <28.968451, 38.334709, 25.925272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228964, 38.035992, 25.871418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125648, -0.068845, 0.989683,
		-0.748358, -0.661482, 0.048996,
		0.651285, -0.746794, -0.134635,
		29.424349, 37.811954, 25.831028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704943, 37.803238, 26.360285>,  <28.968451, 38.334709, 25.925272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704943, 37.803238, 26.360285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.091494, 37.736053, 26.282410>,  <29.323423, 37.695744, 26.235683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.091494, 37.736053, 26.282410>,  <28.704943, 37.803238, 26.360285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091494, 37.736053, 26.282410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148765, -0.252348, 0.956132,
		-0.209721, -0.952948, -0.218877,
		0.966378, -0.167960, -0.194688,
		29.381407, 37.685665, 26.224003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900871, 37.248127, 26.811350>,  <28.704943, 37.803238, 26.360285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900871, 37.248127, 26.811350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.252592, 37.407101, 26.706375>,  <29.463625, 37.502487, 26.643391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.252592, 37.407101, 26.706375>,  <28.900871, 37.248127, 26.811350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252592, 37.407101, 26.706375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319056, -0.082444, 0.944143,
		0.353602, -0.913918, -0.199298,
		0.879300, 0.397438, -0.262438,
		29.516382, 37.526333, 26.627644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.106003, 38.175549, 21.144701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.256969, 37.822926, 21.031275>,  <31.347549, 37.611351, 20.963219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.256969, 37.822926, 21.031275>,  <31.106003, 38.175549, 21.144701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256969, 37.822926, 21.031275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591179, -0.006326, 0.806515,
		-0.712785, -0.472032, 0.518772,
		0.377419, -0.881559, -0.283564,
		31.370195, 37.558456, 20.946205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112129, 37.894958, 21.780636>,  <31.106003, 38.175549, 21.144701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112129, 37.894958, 21.780636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.359541, 37.690861, 21.541613>,  <31.507988, 37.568401, 21.398199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.359541, 37.690861, 21.541613>,  <31.112129, 37.894958, 21.780636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359541, 37.690861, 21.541613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705139, 0.024886, 0.708632,
		-0.346702, -0.859671, 0.375184,
		0.618527, -0.510241, -0.597560,
		31.545099, 37.537788, 21.362345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407581, 37.250267, 22.105995>,  <31.112129, 37.894958, 21.780636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407581, 37.250267, 22.105995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.653757, 37.361137, 21.810860>,  <31.801462, 37.427662, 21.633778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.653757, 37.361137, 21.810860>,  <31.407581, 37.250267, 22.105995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653757, 37.361137, 21.810860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776211, -0.050600, 0.628439,
		0.136856, -0.959484, -0.246292,
		0.615440, 0.277180, -0.737838,
		31.838388, 37.444290, 21.589508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925285, 36.768707, 22.061420>,  <31.407581, 37.250267, 22.105995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925285, 36.768707, 22.061420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.093010, 37.085278, 21.883512>,  <32.193645, 37.275219, 21.776768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.093010, 37.085278, 21.883512>,  <31.925285, 36.768707, 22.061420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093010, 37.085278, 21.883512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876129, -0.224413, 0.426658,
		0.237858, -0.568576, -0.787493,
		0.419311, 0.791429, -0.444767,
		32.218803, 37.322708, 21.750082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663197, 36.581993, 21.805590>,  <31.925285, 36.768707, 22.061420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663197, 36.581993, 21.805590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.644375, 36.976379, 21.869669>,  <32.633083, 37.213009, 21.908115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.644375, 36.976379, 21.869669>,  <32.663197, 36.581993, 21.805590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644375, 36.976379, 21.869669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838492, -0.048176, 0.542780,
		0.542879, 0.159861, -0.824455,
		-0.047050, 0.985963, 0.160196,
		32.630260, 37.272167, 21.917728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354534, 36.861176, 21.690971>,  <32.663197, 36.581993, 21.805590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354534, 36.861176, 21.690971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.178143, 37.158527, 21.892138>,  <33.072308, 37.336937, 22.012836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.178143, 37.158527, 21.892138>,  <33.354534, 36.861176, 21.690971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178143, 37.158527, 21.892138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800219, 0.071905, 0.595382,
		0.406432, 0.664993, -0.626575,
		-0.440979, 0.743380, 0.502916,
		33.045849, 37.381542, 22.043013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980110, 37.365990, 22.017708>,  <33.354534, 36.861176, 21.690971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980110, 37.365990, 22.017708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.648430, 37.486618, 22.205952>,  <33.449421, 37.558994, 22.318897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.648430, 37.486618, 22.205952>,  <33.980110, 37.365990, 22.017708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648430, 37.486618, 22.205952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557438, 0.384402, 0.735865,
		0.041015, 0.872518, -0.486858,
		-0.829205, 0.301575, 0.470608,
		33.399670, 37.577091, 22.347134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078617, 37.977383, 22.370087>,  <33.980110, 37.365990, 22.017708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078617, 37.977383, 22.370087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.757538, 37.877026, 22.586506>,  <33.564892, 37.816811, 22.716358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.757538, 37.877026, 22.586506>,  <34.078617, 37.977383, 22.370087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757538, 37.877026, 22.586506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453516, 0.332368, 0.826955,
		-0.387306, 0.909166, -0.153006,
		-0.802694, -0.250894, 0.541049,
		33.516731, 37.801758, 22.748821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815613, 38.563778, 22.835896>,  <34.078617, 37.977383, 22.370087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815613, 38.563778, 22.835896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.688881, 38.239674, 23.033115>,  <33.612843, 38.045212, 23.151447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.688881, 38.239674, 23.033115>,  <33.815613, 38.563778, 22.835896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688881, 38.239674, 23.033115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255871, 0.427542, 0.867028,
		-0.913319, 0.400854, 0.071866,
		-0.316826, -0.810262, 0.493049,
		33.593834, 37.996593, 23.181030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482140, 38.745991, 23.441826>,  <33.815613, 38.563778, 22.835896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482140, 38.745991, 23.441826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.547310, 38.361130, 23.529209>,  <33.586411, 38.130215, 23.581638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.547310, 38.361130, 23.529209>,  <33.482140, 38.745991, 23.441826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547310, 38.361130, 23.529209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350956, 0.263452, 0.898567,
		-0.922109, -0.069730, 0.380595,
		0.162926, -0.962149, 0.218459,
		33.596188, 38.072487, 23.594748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141903, 38.666237, 24.079605>,  <33.482140, 38.745991, 23.441826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141903, 38.666237, 24.079605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.393215, 38.356236, 24.052366>,  <33.544003, 38.170235, 24.036022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.393215, 38.356236, 24.052366>,  <33.141903, 38.666237, 24.079605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393215, 38.356236, 24.052366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282868, 0.146018, 0.947979,
		-0.724744, -0.614856, 0.310964,
		0.628277, -0.775004, -0.068097,
		33.581699, 38.123734, 24.031937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010048, 38.305645, 24.716204>,  <33.141903, 38.666237, 24.079605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010048, 38.305645, 24.716204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.370750, 38.194534, 24.583736>,  <33.587173, 38.127869, 24.504255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.370750, 38.194534, 24.583736>,  <33.010048, 38.305645, 24.716204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370750, 38.194534, 24.583736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364527, 0.077000, 0.928004,
		-0.232281, -0.957554, 0.170694,
		0.901757, -0.277781, -0.331169,
		33.641277, 38.111198, 24.484386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376610, 38.261883, 25.109093>,  <33.010048, 38.305645, 24.716204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376610, 38.261883, 25.109093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.216911, 38.592781, 25.267212>,  <32.121094, 38.791321, 25.362083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.216911, 38.592781, 25.267212>,  <32.376610, 38.261883, 25.109093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216911, 38.592781, 25.267212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416834, 0.220240, -0.881898,
		-0.816611, -0.516867, 0.256896,
		-0.399245, 0.827250, 0.395298,
		32.097137, 38.840958, 25.385801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701969, 38.232513, 24.907375>,  <32.376610, 38.261883, 25.109093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701969, 38.232513, 24.907375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.790016, 38.616879, 24.974529>,  <31.842844, 38.847500, 25.014822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.790016, 38.616879, 24.974529>,  <31.701969, 38.232513, 24.907375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790016, 38.616879, 24.974529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507338, 0.259774, -0.821660,
		-0.833160, 0.095688, 0.544691,
		0.220119, 0.960917, 0.167887,
		31.856052, 38.905155, 25.024895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034018, 38.579895, 24.890862>,  <31.701969, 38.232513, 24.907375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034018, 38.579895, 24.890862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.307707, 38.866688, 24.837528>,  <31.471920, 39.038765, 24.805529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.307707, 38.866688, 24.837528>,  <31.034018, 38.579895, 24.890862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307707, 38.866688, 24.837528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497087, 0.324740, -0.804642,
		-0.533616, 0.616831, 0.578597,
		0.684222, 0.716982, -0.133331,
		31.512974, 39.081783, 24.797529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596601, 39.097206, 24.780909>,  <31.034018, 38.579895, 24.890862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596601, 39.097206, 24.780909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.956734, 39.209892, 24.648220>,  <31.172813, 39.277504, 24.568607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.956734, 39.209892, 24.648220>,  <30.596601, 39.097206, 24.780909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956734, 39.209892, 24.648220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431477, 0.478251, -0.764921,
		-0.056849, 0.831811, 0.552139,
		0.900331, 0.281720, -0.331719,
		31.226833, 39.294407, 24.548704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604456, 39.760624, 24.657034>,  <30.596601, 39.097206, 24.780909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604456, 39.760624, 24.657034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.894341, 39.652103, 24.403677>,  <31.068272, 39.586990, 24.251663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.894341, 39.652103, 24.403677>,  <30.604456, 39.760624, 24.657034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894341, 39.652103, 24.403677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439641, 0.525749, -0.728220,
		0.530575, 0.806215, 0.261740,
		0.724711, -0.271304, -0.633394,
		31.111753, 39.570713, 24.213659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507927, 40.198288, 24.114113>,  <30.604456, 39.760624, 24.657034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507927, 40.198288, 24.114113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.769762, 39.950897, 23.940216>,  <30.926863, 39.802464, 23.835878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.769762, 39.950897, 23.940216>,  <30.507927, 40.198288, 24.114113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769762, 39.950897, 23.940216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324614, 0.289407, -0.900483,
		0.682746, 0.730568, -0.011325,
		0.654586, -0.618477, -0.434744,
		30.966139, 39.765354, 23.809793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807278, 40.602219, 23.616995>,  <30.507927, 40.198288, 24.114113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807278, 40.602219, 23.616995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.875488, 40.223267, 23.508633>,  <30.916414, 39.995895, 23.443615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.875488, 40.223267, 23.508633>,  <30.807278, 40.602219, 23.616995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875488, 40.223267, 23.508633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405593, 0.183073, -0.895532,
		0.898006, 0.262589, -0.353033,
		0.170526, -0.947381, -0.270905,
		30.926645, 39.939053, 23.427361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101891, 40.623108, 22.966982>,  <30.807278, 40.602219, 23.616995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101891, 40.623108, 22.966982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.950224, 40.253864, 22.992586>,  <30.859224, 40.032318, 23.007948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.950224, 40.253864, 22.992586>,  <31.101891, 40.623108, 22.966982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950224, 40.253864, 22.992586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418416, 0.109343, -0.901650,
		0.825325, -0.368657, -0.427704,
		-0.379166, -0.923112, 0.064008,
		30.836473, 39.976929, 23.011789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221004, 40.240273, 22.227844>,  <31.101891, 40.623108, 22.966982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221004, 40.240273, 22.227844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.945210, 40.014751, 22.409718>,  <30.779734, 39.879440, 22.518843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.945210, 40.014751, 22.409718>,  <31.221004, 40.240273, 22.227844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945210, 40.014751, 22.409718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596199, 0.085312, -0.798291,
		0.411288, -0.821492, -0.394959,
		-0.689485, -0.563802, 0.454685,
		30.738363, 39.845612, 22.546124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007149, 39.630169, 21.755512>,  <31.221004, 40.240273, 22.227844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007149, 39.630169, 21.755512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.707069, 39.707333, 22.008492>,  <30.527021, 39.753632, 22.160278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.707069, 39.707333, 22.008492>,  <31.007149, 39.630169, 21.755512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707069, 39.707333, 22.008492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625101, 0.104861, -0.773468,
		-0.215529, -0.975597, 0.041922,
		-0.750197, 0.192911, 0.632448,
		30.482010, 39.765205, 22.198225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393925, 39.246922, 21.511152>,  <31.007149, 39.630169, 21.755512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393925, 39.246922, 21.511152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.241768, 39.538380, 21.738968>,  <30.150475, 39.713257, 21.875658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.241768, 39.538380, 21.738968>,  <30.393925, 39.246922, 21.511152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241768, 39.538380, 21.738968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635137, 0.241816, -0.733571,
		-0.672239, -0.640779, 0.370806,
		-0.380390, 0.728647, 0.569541,
		30.127651, 39.756973, 21.909830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684902, 39.232647, 21.331537>,  <30.393925, 39.246922, 21.511152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684902, 39.232647, 21.331537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.714817, 39.568371, 21.546930>,  <29.732765, 39.769806, 21.676167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.714817, 39.568371, 21.546930>,  <29.684902, 39.232647, 21.331537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714817, 39.568371, 21.546930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748212, 0.404209, -0.526111,
		-0.659231, -0.363555, 0.658212,
		0.074785, 0.839311, 0.538483,
		29.737253, 39.820164, 21.708475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046951, 39.425812, 21.531816>,  <29.684902, 39.232647, 21.331537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046951, 39.425812, 21.531816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.234800, 39.777485, 21.564053>,  <29.347509, 39.988487, 21.583395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.234800, 39.777485, 21.564053>,  <29.046951, 39.425812, 21.531816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234800, 39.777485, 21.564053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772656, 0.453449, -0.444282,
		-0.427148, 0.146377, 0.892255,
		0.469625, 0.879180, 0.080590,
		29.375689, 40.041241, 21.588230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270557, 39.561531, 21.745573>,  <29.046951, 39.425812, 21.531816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270557, 39.561531, 21.745573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.037714, 39.255840, 21.634499>,  <27.898006, 39.072426, 21.567854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.037714, 39.255840, 21.634499>,  <28.270557, 39.561531, 21.745573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037714, 39.255840, 21.634499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341814, -0.539865, 0.769226,
		-0.737773, 0.352857, 0.575484,
		-0.582111, -0.764223, -0.277687,
		27.863081, 39.026573, 21.551193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952293, 39.334454, 22.446074>,  <28.270557, 39.561531, 21.745573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952293, 39.334454, 22.446074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.916451, 39.022518, 22.198259>,  <27.894945, 38.835358, 22.049570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.916451, 39.022518, 22.198259>,  <27.952293, 39.334454, 22.446074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916451, 39.022518, 22.198259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280860, -0.616578, 0.735492,
		-0.955556, -0.108096, 0.274277,
		-0.089609, -0.779837, -0.619535,
		27.889568, 38.788567, 22.012398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564741, 38.849457, 22.727930>,  <27.952293, 39.334454, 22.446074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564741, 38.849457, 22.727930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.749842, 38.593441, 22.482588>,  <27.860903, 38.439831, 22.335382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.749842, 38.593441, 22.482588>,  <27.564741, 38.849457, 22.727930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749842, 38.593441, 22.482588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164586, -0.617836, 0.768888,
		-0.871074, -0.456756, -0.180564,
		0.462754, -0.640041, -0.613357,
		27.888668, 38.401428, 22.298580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276424, 38.186775, 22.901205>,  <27.564741, 38.849457, 22.727930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276424, 38.186775, 22.901205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.625294, 38.129478, 22.714102>,  <27.834616, 38.095100, 22.601839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.625294, 38.129478, 22.714102>,  <27.276424, 38.186775, 22.901205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625294, 38.129478, 22.714102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291096, -0.616503, 0.731565,
		-0.393166, -0.774213, -0.495999,
		0.872172, -0.143243, -0.467758,
		27.886946, 38.086506, 22.573774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358931, 37.484436, 23.136021>,  <27.276424, 38.186775, 22.901205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358931, 37.484436, 23.136021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.709538, 37.622593, 23.001907>,  <27.919903, 37.705486, 22.921440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.709538, 37.622593, 23.001907>,  <27.358931, 37.484436, 23.136021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709538, 37.622593, 23.001907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458739, -0.388328, 0.799224,
		0.145850, -0.854343, -0.498824,
		0.876519, 0.345397, -0.335284,
		27.972494, 37.726212, 22.901321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709473, 36.925354, 23.263481>,  <27.358931, 37.484436, 23.136021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709473, 36.925354, 23.263481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.002666, 37.192608, 23.212358>,  <28.178583, 37.352959, 23.181684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.002666, 37.192608, 23.212358>,  <27.709473, 36.925354, 23.263481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002666, 37.192608, 23.212358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471866, -0.364066, 0.802993,
		0.489975, -0.648889, -0.582123,
		0.732985, 0.668131, -0.127806,
		28.222563, 37.393047, 23.174017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433575, 36.512680, 23.422455>,  <27.709473, 36.925354, 23.263481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433575, 36.512680, 23.422455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.467821, 36.908466, 23.469149>,  <28.488369, 37.145939, 23.497166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.467821, 36.908466, 23.469149>,  <28.433575, 36.512680, 23.422455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467821, 36.908466, 23.469149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517301, -0.144283, 0.843553,
		0.851510, -0.011833, -0.524205,
		0.085615, 0.989466, 0.116737,
		28.493505, 37.205307, 23.504169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126596, 36.607735, 23.627396>,  <28.433575, 36.512680, 23.422455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126596, 36.607735, 23.627396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.937716, 36.938293, 23.750093>,  <28.824387, 37.136627, 23.823713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.937716, 36.938293, 23.750093>,  <29.126596, 36.607735, 23.627396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937716, 36.938293, 23.750093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493295, -0.040659, 0.868911,
		0.730537, 0.561619, -0.388458,
		-0.472202, 0.826397, 0.306747,
		28.796055, 37.186211, 23.842117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883339, 36.648170, 23.529539>,  <29.126596, 36.607735, 23.627396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883339, 36.648170, 23.529539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.716034, 36.285210, 23.545921>,  <29.615650, 36.067432, 23.555750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.716034, 36.285210, 23.545921>,  <29.883339, 36.648170, 23.529539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716034, 36.285210, 23.545921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059681, -0.017535, -0.998063,
		0.906363, -0.419898, -0.046820,
		-0.418264, -0.907402, 0.040953,
		29.590555, 36.012989, 23.558207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138374, 36.325844, 22.889931>,  <29.883339, 36.648170, 23.529539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138374, 36.325844, 22.889931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.819574, 36.110352, 22.999157>,  <29.628294, 35.981056, 23.064692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.819574, 36.110352, 22.999157>,  <30.138374, 36.325844, 22.889931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819574, 36.110352, 22.999157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214629, -0.169976, -0.961791,
		0.564556, -0.825156, 0.019845,
		-0.797001, -0.538726, 0.273064,
		29.580475, 35.948734, 23.081076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149292, 35.667301, 22.611065>,  <30.138374, 36.325844, 22.889931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149292, 35.667301, 22.611065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.762157, 35.736187, 22.684427>,  <29.529877, 35.777519, 22.728443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.762157, 35.736187, 22.684427>,  <30.149292, 35.667301, 22.611065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762157, 35.736187, 22.684427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214361, -0.182865, -0.959484,
		-0.131696, -0.967938, 0.213898,
		-0.967836, 0.172211, 0.183405,
		29.471807, 35.787853, 22.739449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808514, 35.238564, 22.172646>,  <30.149292, 35.667301, 22.611065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808514, 35.238564, 22.172646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.507925, 35.488991, 22.255911>,  <29.327572, 35.639248, 22.305870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.507925, 35.488991, 22.255911>,  <29.808514, 35.238564, 22.172646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507925, 35.488991, 22.255911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401423, -0.183475, -0.897327,
		-0.523596, -0.757875, 0.389194,
		-0.751469, 0.626069, 0.208162,
		29.282484, 35.676811, 22.318359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185421, 34.844204, 22.122223>,  <29.808514, 35.238564, 22.172646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185421, 34.844204, 22.122223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.060177, 35.219891, 22.065880>,  <28.985031, 35.445301, 22.032074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.060177, 35.219891, 22.065880>,  <29.185421, 34.844204, 22.122223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060177, 35.219891, 22.065880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415241, -0.268772, -0.869101,
		-0.854129, -0.213636, 0.474155,
		-0.313111, 0.939213, -0.140856,
		28.966244, 35.501656, 22.023623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646908, 34.737179, 21.777916>,  <29.185421, 34.844204, 22.122223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646908, 34.737179, 21.777916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.735340, 35.122524, 21.717178>,  <28.788401, 35.353729, 21.680735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.735340, 35.122524, 21.717178>,  <28.646908, 34.737179, 21.777916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735340, 35.122524, 21.717178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271659, -0.088703, -0.958297,
		-0.936655, 0.253113, 0.242096,
		0.221083, 0.963362, -0.151845,
		28.801664, 35.411533, 21.671625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052881, 34.936562, 21.354116>,  <28.646908, 34.737179, 21.777916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052881, 34.936562, 21.354116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.312708, 35.238537, 21.318043>,  <28.468603, 35.419724, 21.296398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.312708, 35.238537, 21.318043>,  <28.052881, 34.936562, 21.354116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312708, 35.238537, 21.318043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260944, 0.109955, -0.959071,
		-0.714123, 0.646513, 0.268419,
		0.649566, 0.754937, -0.090183,
		28.507578, 35.465019, 21.290987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694212, 35.366478, 21.015238>,  <28.052881, 34.936562, 21.354116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694212, 35.366478, 21.015238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.076847, 35.449234, 20.933134>,  <28.306429, 35.498886, 20.883871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.076847, 35.449234, 20.933134>,  <27.694212, 35.366478, 21.015238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076847, 35.449234, 20.933134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175381, -0.153835, -0.972407,
		-0.232759, 0.966194, -0.110872,
		0.956590, 0.206892, -0.205259,
		28.363825, 35.511303, 20.871557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690384, 35.880394, 20.496468>,  <27.694212, 35.366478, 21.015238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690384, 35.880394, 20.496468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.032820, 35.674408, 20.478918>,  <28.238281, 35.550816, 20.468390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.032820, 35.674408, 20.478918>,  <27.690384, 35.880394, 20.496468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032820, 35.674408, 20.478918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130918, -0.133954, -0.982302,
		0.499973, 0.846681, -0.182094,
		0.856088, -0.514964, -0.043872,
		28.289646, 35.519920, 20.465755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.564468, 36.245041, 35.547272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.870544, 36.138760, 35.312706>,  <35.054192, 36.074993, 35.171967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.870544, 36.138760, 35.312706>,  <34.564468, 36.245041, 35.547272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870544, 36.138760, 35.312706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574301, 0.129961, -0.808262,
		0.290966, 0.955256, -0.053146,
		0.765191, -0.265699, -0.586419,
		35.100101, 36.059052, 35.136780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453800, 36.675434, 34.994629>,  <34.564468, 36.245041, 35.547272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453800, 36.675434, 34.994629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.683334, 36.377724, 34.857941>,  <34.821056, 36.199097, 34.775928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.683334, 36.377724, 34.857941>,  <34.453800, 36.675434, 34.994629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683334, 36.377724, 34.857941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576318, -0.070530, -0.814176,
		0.581867, 0.664141, -0.469411,
		0.573836, -0.744273, -0.341718,
		34.855484, 36.154442, 34.755424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434578, 36.820988, 34.242996>,  <34.453800, 36.675434, 34.994629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434578, 36.820988, 34.242996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.573311, 36.447865, 34.282127>,  <34.656551, 36.223991, 34.305607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.573311, 36.447865, 34.282127>,  <34.434578, 36.820988, 34.242996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573311, 36.447865, 34.282127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436537, -0.252858, -0.863422,
		0.830147, 0.256757, -0.494906,
		0.346831, -0.932812, 0.097826,
		34.677361, 36.168022, 34.311474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871426, 36.574375, 33.596325>,  <34.434578, 36.820988, 34.242996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871426, 36.574375, 33.596325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.694210, 36.259983, 33.768810>,  <34.587879, 36.071346, 33.872299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.694210, 36.259983, 33.768810>,  <34.871426, 36.574375, 33.596325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694210, 36.259983, 33.768810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507524, -0.176600, -0.843346,
		0.739008, -0.592487, -0.320665,
		-0.443042, -0.785984, 0.431211,
		34.561298, 36.024189, 33.898174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875484, 36.000473, 33.054333>,  <34.871426, 36.574375, 33.596325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875484, 36.000473, 33.054333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.591236, 35.928535, 33.326412>,  <34.420685, 35.885372, 33.489658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.591236, 35.928535, 33.326412>,  <34.875484, 36.000473, 33.054333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591236, 35.928535, 33.326412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658418, -0.170773, -0.733023,
		0.247988, -0.968759, 0.002944,
		-0.710625, -0.179842, 0.680197,
		34.378048, 35.874584, 33.530472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522701, 35.485470, 32.755058>,  <34.875484, 36.000473, 33.054333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522701, 35.485470, 32.755058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.259411, 35.602623, 33.032463>,  <34.101437, 35.672916, 33.198906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.259411, 35.602623, 33.032463>,  <34.522701, 35.485470, 32.755058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259411, 35.602623, 33.032463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752808, -0.250507, -0.608709,
		-0.004550, -0.922749, 0.385374,
		-0.658225, 0.292882, 0.693513,
		34.061943, 35.690487, 33.240517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916164, 35.053043, 32.557716>,  <34.522701, 35.485470, 32.755058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916164, 35.053043, 32.557716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.775944, 35.332455, 32.807251>,  <33.691811, 35.500099, 32.956974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.775944, 35.332455, 32.807251>,  <33.916164, 35.053043, 32.557716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775944, 35.332455, 32.807251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860165, 0.023336, -0.509482,
		-0.370444, -0.715205, 0.592666,
		-0.350553, 0.698525, 0.623839,
		33.670776, 35.542011, 32.994404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180878, 34.887993, 32.793266>,  <33.916164, 35.053043, 32.557716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180878, 34.887993, 32.793266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.206573, 35.283360, 32.848259>,  <33.221992, 35.520580, 32.881256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.206573, 35.283360, 32.848259>,  <33.180878, 34.887993, 32.793266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206573, 35.283360, 32.848259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816179, 0.131313, -0.562680,
		-0.574216, -0.076060, 0.815163,
		0.064244, 0.988419, 0.137480,
		33.225845, 35.579884, 32.889503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513000, 35.091183, 32.881092>,  <33.180878, 34.887993, 32.793266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513000, 35.091183, 32.881092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704189, 35.432987, 32.799740>,  <32.818901, 35.638069, 32.750931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704189, 35.432987, 32.799740>,  <32.513000, 35.091183, 32.881092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704189, 35.432987, 32.799740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703986, 0.234196, -0.670489,
		-0.525308, 0.463648, 0.713500,
		0.477970, 0.854507, -0.203377,
		32.847580, 35.689339, 32.738728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009899, 35.615158, 32.792892>,  <32.513000, 35.091183, 32.881092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009899, 35.615158, 32.792892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.318459, 35.772018, 32.592426>,  <32.503593, 35.866135, 32.472145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.318459, 35.772018, 32.592426>,  <32.009899, 35.615158, 32.792892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318459, 35.772018, 32.592426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579336, 0.106929, -0.808045,
		-0.263283, 0.913667, 0.309669,
		0.771396, 0.392147, -0.501167,
		32.549877, 35.889664, 32.442078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769943, 36.284878, 32.387989>,  <32.009899, 35.615158, 32.792892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769943, 36.284878, 32.387989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.109394, 36.157219, 32.219238>,  <32.313065, 36.080624, 32.117989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.109394, 36.157219, 32.219238>,  <31.769943, 36.284878, 32.387989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109394, 36.157219, 32.219238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442133, 0.009938, -0.896894,
		0.290430, 0.947654, -0.132669,
		0.848628, -0.319143, -0.421876,
		32.363983, 36.061478, 32.092674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937151, 36.782978, 31.894356>,  <31.769943, 36.284878, 32.387989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937151, 36.782978, 31.894356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.108826, 36.438213, 31.786352>,  <32.211830, 36.231354, 31.721550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.108826, 36.438213, 31.786352>,  <31.937151, 36.782978, 31.894356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108826, 36.438213, 31.786352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386047, 0.095208, -0.917553,
		0.816557, 0.498039, -0.291876,
		0.429188, -0.861912, -0.270009,
		32.237583, 36.179638, 31.705349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592312, 37.379585, 31.915129>,  <31.937151, 36.782978, 31.894356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592312, 37.379585, 31.915129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.217390, 37.306335, 32.033737>,  <30.992437, 37.262386, 32.104900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.217390, 37.306335, 32.033737>,  <31.592312, 37.379585, 31.915129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217390, 37.306335, 32.033737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309441, -0.045890, 0.949811,
		-0.160327, 0.982018, 0.099679,
		-0.937306, -0.183125, 0.296519,
		30.936199, 37.251396, 32.122692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451668, 37.907864, 32.364021>,  <31.592312, 37.379585, 31.915129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451668, 37.907864, 32.364021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.205782, 37.607128, 32.459404>,  <31.058250, 37.426685, 32.516632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.205782, 37.607128, 32.459404>,  <31.451668, 37.907864, 32.364021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205782, 37.607128, 32.459404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430033, -0.066028, 0.900395,
		-0.661209, 0.656031, 0.363905,
		-0.614715, -0.751840, 0.238457,
		31.021368, 37.381577, 32.530941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061367, 38.154530, 32.862530>,  <31.451668, 37.907864, 32.364021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061367, 38.154530, 32.862530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.065369, 37.755234, 32.885921>,  <31.067770, 37.515656, 32.899956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.065369, 37.755234, 32.885921>,  <31.061367, 38.154530, 32.862530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065369, 37.755234, 32.885921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149753, 0.059316, 0.986943,
		-0.988673, -0.001115, 0.150082,
		0.010002, -0.998239, 0.058477,
		31.068369, 37.455761, 32.903465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758770, 38.105457, 33.481548>,  <31.061367, 38.154530, 32.862530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758770, 38.105457, 33.481548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.916279, 37.742226, 33.424503>,  <31.010784, 37.524288, 33.390278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.916279, 37.742226, 33.424503>,  <30.758770, 38.105457, 33.481548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916279, 37.742226, 33.424503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131582, -0.097863, 0.986463,
		-0.909742, -0.407204, 0.080951,
		0.393770, -0.908079, -0.142610,
		31.034410, 37.469803, 33.381721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548597, 37.756393, 34.086548>,  <30.758770, 38.105457, 33.481548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548597, 37.756393, 34.086548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.838799, 37.534313, 33.923874>,  <31.012918, 37.401066, 33.826267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.838799, 37.534313, 33.923874>,  <30.548597, 37.756393, 34.086548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838799, 37.534313, 33.923874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410877, -0.124637, 0.903131,
		-0.552109, -0.822323, 0.137696,
		0.725504, -0.555203, -0.406687,
		31.056450, 37.367752, 33.801868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617758, 37.210175, 34.556538>,  <30.548597, 37.756393, 34.086548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617758, 37.210175, 34.556538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.963808, 37.233841, 34.357315>,  <31.171438, 37.248043, 34.237782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.963808, 37.233841, 34.357315>,  <30.617758, 37.210175, 34.556538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963808, 37.233841, 34.357315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501237, -0.137397, 0.854332,
		-0.017878, -0.988747, -0.148525,
		0.865125, 0.059173, -0.498053,
		31.223345, 37.251591, 34.207901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923216, 36.659504, 34.851181>,  <30.617758, 37.210175, 34.556538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923216, 36.659504, 34.851181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.219101, 36.871738, 34.685627>,  <31.396633, 36.999081, 34.586296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.219101, 36.871738, 34.685627>,  <30.923216, 36.659504, 34.851181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219101, 36.871738, 34.685627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496056, -0.014353, 0.868172,
		0.454701, -0.847509, -0.273818,
		0.739714, 0.530588, -0.413885,
		31.441015, 37.030914, 34.561462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673813, 36.339821, 35.090034>,  <30.923216, 36.659504, 34.851181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673813, 36.339821, 35.090034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.716787, 36.715416, 34.959343>,  <31.742573, 36.940773, 34.880928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.716787, 36.715416, 34.959343>,  <31.673813, 36.339821, 35.090034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716787, 36.715416, 34.959343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673823, 0.172872, 0.718386,
		0.731041, -0.297340, -0.614141,
		0.107437, 0.938991, -0.326731,
		31.749018, 36.997112, 34.861324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433487, 36.349926, 34.986465>,  <31.673813, 36.339821, 35.090034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433487, 36.349926, 34.986465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.292084, 36.721397, 35.031330>,  <32.207241, 36.944283, 35.058247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.292084, 36.721397, 35.031330>,  <32.433487, 36.349926, 34.986465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292084, 36.721397, 35.031330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739018, 0.203762, 0.642132,
		0.573484, 0.309885, -0.758345,
		-0.353509, 0.928683, 0.112157,
		32.186031, 37.000004, 35.064976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996853, 36.806709, 34.922695>,  <32.433487, 36.349926, 34.986465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996853, 36.806709, 34.922695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.713036, 37.039707, 35.081318>,  <32.542744, 37.179504, 35.176491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.713036, 37.039707, 35.081318>,  <32.996853, 36.806709, 34.922695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713036, 37.039707, 35.081318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678929, 0.414411, 0.606068,
		0.188693, 0.699262, -0.689513,
		-0.709542, 0.582491, 0.396553,
		32.500172, 37.214455, 35.200283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172092, 37.570778, 35.013958>,  <32.996853, 36.806709, 34.922695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172092, 37.570778, 35.013958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.877213, 37.521614, 35.279720>,  <32.700287, 37.492115, 35.439178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.877213, 37.521614, 35.279720>,  <33.172092, 37.570778, 35.013958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877213, 37.521614, 35.279720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530047, 0.504633, 0.681466,
		-0.419037, 0.854541, -0.306868,
		-0.737196, -0.122905, 0.664407,
		32.656055, 37.484741, 35.479042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066719, 38.249409, 35.277084>,  <33.172092, 37.570778, 35.013958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066719, 38.249409, 35.277084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.899708, 38.020943, 35.559769>,  <32.799500, 37.883865, 35.729382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.899708, 38.020943, 35.559769>,  <33.066719, 38.249409, 35.277084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899708, 38.020943, 35.559769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573420, 0.437708, 0.692533,
		-0.704882, 0.694397, 0.144758,
		-0.417531, -0.571161, 0.706713,
		32.774448, 37.849594, 35.771782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024899, 38.685291, 35.773579>,  <33.066719, 38.249409, 35.277084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024899, 38.685291, 35.773579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.992340, 38.332504, 35.959274>,  <32.972805, 38.120834, 36.070690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.992340, 38.332504, 35.959274>,  <33.024899, 38.685291, 35.773579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992340, 38.332504, 35.959274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612193, 0.323320, 0.721584,
		-0.786508, 0.342934, 0.513616,
		-0.081394, -0.881964, 0.464235,
		32.967922, 38.067917, 36.098545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791878, 38.791557, 36.482292>,  <33.024899, 38.685291, 35.773579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791878, 38.791557, 36.482292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981354, 38.439632, 36.498039>,  <33.095039, 38.228477, 36.507488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981354, 38.439632, 36.498039>,  <32.791878, 38.791557, 36.482292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981354, 38.439632, 36.498039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503463, 0.307203, 0.807559,
		-0.722593, -0.362713, 0.588471,
		0.473692, -0.879810, 0.039370,
		33.123463, 38.175690, 36.509850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526772, 38.592705, 36.338985>,  <32.791878, 38.791557, 36.482292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526772, 38.592705, 36.338985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867805, 38.794952, 36.286144>,  <34.072426, 38.916302, 36.254440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867805, 38.794952, 36.286144>,  <33.526772, 38.592705, 36.338985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867805, 38.794952, 36.286144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407587, 0.485153, -0.773628,
		-0.327067, 0.713428, 0.619716,
		0.852584, 0.505616, -0.132106,
		34.123581, 38.946636, 36.246513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438766, 39.279957, 36.331627>,  <33.526772, 38.592705, 36.338985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438766, 39.279957, 36.331627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.782547, 39.252483, 36.128994>,  <33.988815, 39.236000, 36.007416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.782547, 39.252483, 36.128994>,  <33.438766, 39.279957, 36.331627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782547, 39.252483, 36.128994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431559, 0.433712, -0.790981,
		0.274035, 0.898430, 0.343116,
		0.859454, -0.068682, -0.506578,
		34.040382, 39.231880, 35.977020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551582, 39.984028, 35.915054>,  <33.438766, 39.279957, 36.331627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551582, 39.984028, 35.915054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753368, 39.682758, 35.746178>,  <33.874439, 39.501999, 35.644852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753368, 39.682758, 35.746178>,  <33.551582, 39.984028, 35.915054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753368, 39.682758, 35.746178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285754, 0.315779, -0.904781,
		0.814774, 0.577075, -0.055921,
		0.504468, -0.753171, -0.422191,
		33.904709, 39.456806, 35.619522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033752, 40.295490, 35.425362>,  <33.551582, 39.984028, 35.915054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033752, 40.295490, 35.425362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.974518, 39.915890, 35.314026>,  <33.938976, 39.688129, 35.247227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.974518, 39.915890, 35.314026>,  <34.033752, 40.295490, 35.425362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974518, 39.915890, 35.314026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076050, 0.291534, -0.953533,
		0.986046, -0.120041, -0.115344,
		-0.148089, -0.948999, -0.278337,
		33.930092, 39.631191, 35.230526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378418, 40.280807, 34.757477>,  <34.033752, 40.295490, 35.425362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378418, 40.280807, 34.757477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191566, 39.928783, 34.723324>,  <34.079456, 39.717567, 34.702831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191566, 39.928783, 34.723324>,  <34.378418, 40.280807, 34.757477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191566, 39.928783, 34.723324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212149, 0.205296, -0.955430,
		0.858363, -0.428192, -0.282602,
		-0.467125, -0.880060, -0.085378,
		34.051430, 39.664764, 34.697712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564419, 39.911411, 34.170002>,  <34.378418, 40.280807, 34.757477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564419, 39.911411, 34.170002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.205429, 39.754044, 34.249760>,  <33.990036, 39.659622, 34.297615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.205429, 39.754044, 34.249760>,  <34.564419, 39.911411, 34.170002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205429, 39.754044, 34.249760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165774, -0.118043, -0.979074,
		0.408720, -0.911751, 0.040723,
		-0.897478, -0.393416, 0.199391,
		33.936184, 39.636021, 34.309578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432869, 39.373833, 33.890629>,  <34.564419, 39.911411, 34.170002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432869, 39.373833, 33.890629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.050999, 39.479519, 33.945450>,  <33.821877, 39.542931, 33.978344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.050999, 39.479519, 33.945450>,  <34.432869, 39.373833, 33.890629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050999, 39.479519, 33.945450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174020, -0.121889, -0.977169,
		-0.241481, -0.956730, 0.162344,
		-0.954675, 0.264218, 0.137056,
		33.764595, 39.558784, 33.986568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057945, 38.878792, 33.588272>,  <34.432869, 39.373833, 33.890629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057945, 38.878792, 33.588272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784409, 39.170620, 33.584591>,  <33.620285, 39.345718, 33.582382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784409, 39.170620, 33.584591>,  <34.057945, 38.878792, 33.588272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784409, 39.170620, 33.584591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151780, -0.154580, -0.976252,
		-0.713667, -0.666207, 0.216443,
		-0.683843, 0.729571, -0.009202,
		33.579254, 39.389492, 33.581829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502277, 38.607788, 33.212845>,  <34.057945, 38.878792, 33.588272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502277, 38.607788, 33.212845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.450359, 39.003246, 33.182541>,  <33.419209, 39.240520, 33.164356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.450359, 39.003246, 33.182541>,  <33.502277, 38.607788, 33.212845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450359, 39.003246, 33.182541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259682, -0.107636, -0.959677,
		-0.956932, -0.104883, 0.270703,
		-0.129791, 0.988642, -0.075764,
		33.411423, 39.299839, 33.159813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949833, 38.658634, 32.814430>,  <33.502277, 38.607788, 33.212845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949833, 38.658634, 32.814430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095970, 39.030502, 32.795525>,  <33.183651, 39.253624, 32.784184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095970, 39.030502, 32.795525>,  <32.949833, 38.658634, 32.814430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095970, 39.030502, 32.795525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277350, 0.060246, -0.958878,
		-0.888596, 0.363426, 0.279855,
		0.365341, 0.929673, -0.047262,
		33.205574, 39.309402, 32.781345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424767, 39.067005, 32.453392>,  <32.949833, 38.658634, 32.814430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424767, 39.067005, 32.453392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750748, 39.298512, 32.441441>,  <32.946335, 39.437416, 32.434269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750748, 39.298512, 32.441441>,  <32.424767, 39.067005, 32.453392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750748, 39.298512, 32.441441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210252, 0.247229, -0.945871,
		-0.540047, 0.777119, 0.323165,
		0.814950, 0.578761, -0.029875,
		32.995232, 39.472141, 32.432476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264412, 39.541927, 31.930334>,  <32.424767, 39.067005, 32.453392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264412, 39.541927, 31.930334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.655800, 39.601215, 31.987772>,  <32.890633, 39.636787, 32.022236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.655800, 39.601215, 31.987772>,  <32.264412, 39.541927, 31.930334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655800, 39.601215, 31.987772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109836, 0.215039, -0.970409,
		-0.174715, 0.965292, 0.194130,
		0.978474, 0.148223, 0.143595,
		32.949341, 39.645683, 32.030849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489002, 40.203663, 31.669792>,  <32.264412, 39.541927, 31.930334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489002, 40.203663, 31.669792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.811481, 39.967422, 31.655792>,  <33.004971, 39.825676, 31.647392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.811481, 39.967422, 31.655792>,  <32.489002, 40.203663, 31.669792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811481, 39.967422, 31.655792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117092, 0.217262, -0.969065,
		0.579938, 0.777164, 0.244311,
		0.806202, -0.590604, -0.034999,
		33.053341, 39.790241, 31.645292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923435, 40.410057, 31.162809>,  <32.489002, 40.203663, 31.669792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923435, 40.410057, 31.162809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083572, 40.048428, 31.222645>,  <33.179653, 39.831451, 31.258547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083572, 40.048428, 31.222645>,  <32.923435, 40.410057, 31.162809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083572, 40.048428, 31.222645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250766, -0.048925, -0.966811,
		0.881388, 0.424565, 0.207124,
		0.400341, -0.904074, 0.149588,
		33.203674, 39.777206, 31.267521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479568, 40.384346, 30.704178>,  <32.923435, 40.410057, 31.162809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479568, 40.384346, 30.704178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.398445, 39.999779, 30.778517>,  <33.349770, 39.769039, 30.823120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.398445, 39.999779, 30.778517>,  <33.479568, 40.384346, 30.704178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398445, 39.999779, 30.778517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107326, -0.210472, -0.971691,
		0.973319, -0.177122, 0.145871,
		-0.202810, -0.961420, 0.185847,
		33.337601, 39.711353, 30.834270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966499, 39.906490, 30.321795>,  <33.479568, 40.384346, 30.704178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966499, 39.906490, 30.321795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.634125, 39.694633, 30.389944>,  <33.434700, 39.567520, 30.430834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.634125, 39.694633, 30.389944>,  <33.966499, 39.906490, 30.321795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634125, 39.694633, 30.389944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122790, -0.473247, -0.872330,
		0.542652, -0.703929, 0.458272,
		-0.830934, -0.529643, 0.170373,
		33.384846, 39.535740, 30.441055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069569, 39.292133, 30.017977>,  <33.966499, 39.906490, 30.321795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069569, 39.292133, 30.017977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.671753, 39.317539, 30.051123>,  <33.433064, 39.332783, 30.071011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.671753, 39.317539, 30.051123>,  <34.069569, 39.292133, 30.017977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671753, 39.317539, 30.051123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098878, -0.318198, -0.942854,
		-0.033516, -0.945894, 0.322739,
		-0.994535, 0.063512, 0.082864,
		33.373394, 39.336594, 30.075981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879139, 38.690426, 29.796326>,  <34.069569, 39.292133, 30.017977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879139, 38.690426, 29.796326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.559189, 38.927757, 29.760180>,  <33.367218, 39.070156, 29.738493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.559189, 38.927757, 29.760180>,  <33.879139, 38.690426, 29.796326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559189, 38.927757, 29.760180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262078, -0.480753, -0.836775,
		-0.539925, -0.645630, 0.540039,
		-0.799872, 0.593328, -0.090365,
		33.319225, 39.105755, 29.733070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409374, 38.252934, 29.528988>,  <33.879139, 38.690426, 29.796326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409374, 38.252934, 29.528988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.238518, 38.604980, 29.446093>,  <33.136002, 38.816208, 29.396355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.238518, 38.604980, 29.446093>,  <33.409374, 38.252934, 29.528988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238518, 38.604980, 29.446093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296180, -0.352749, -0.887607,
		-0.854298, -0.317755, 0.411347,
		-0.427143, 0.880114, -0.207240,
		33.110374, 38.869015, 29.383921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744102, 38.085495, 29.308708>,  <33.409374, 38.252934, 29.528988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744102, 38.085495, 29.308708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.825245, 38.443939, 29.150806>,  <32.873932, 38.659004, 29.056065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.825245, 38.443939, 29.150806>,  <32.744102, 38.085495, 29.308708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825245, 38.443939, 29.150806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367280, -0.304075, -0.879002,
		-0.907719, 0.323299, 0.267440,
		0.202859, 0.896112, -0.394756,
		32.886101, 38.712772, 29.032379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293827, 38.083538, 28.806807>,  <32.744102, 38.085495, 29.308708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293827, 38.083538, 28.806807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525883, 38.387066, 28.688398>,  <32.665115, 38.569183, 28.617353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525883, 38.387066, 28.688398>,  <32.293827, 38.083538, 28.806807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525883, 38.387066, 28.688398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485703, 0.030541, -0.873590,
		-0.653857, 0.650583, 0.386280,
		0.580141, 0.758820, -0.296021,
		32.699924, 38.614712, 28.599592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886660, 38.608524, 28.551502>,  <32.293827, 38.083538, 28.806807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886660, 38.608524, 28.551502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.241280, 38.689831, 28.385267>,  <32.454052, 38.738613, 28.285526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.241280, 38.689831, 28.385267>,  <31.886660, 38.608524, 28.551502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241280, 38.689831, 28.385267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433299, 0.050055, -0.899859,
		-0.162105, 0.977844, 0.132450,
		0.886552, 0.203262, -0.415585,
		32.507244, 38.750809, 28.260592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749863, 39.195614, 28.069973>,  <31.886660, 38.608524, 28.551502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749863, 39.195614, 28.069973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.096607, 39.029087, 27.960260>,  <32.304653, 38.929169, 27.894432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.096607, 39.029087, 27.960260>,  <31.749863, 39.195614, 28.069973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096607, 39.029087, 27.960260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282865, 0.042326, -0.958226,
		0.410538, 0.908233, -0.081071,
		0.866860, -0.416320, -0.274283,
		32.356667, 38.904190, 27.877975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982016, 39.661625, 27.550867>,  <31.749863, 39.195614, 28.069973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982016, 39.661625, 27.550867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203739, 39.336887, 27.477497>,  <32.336773, 39.142044, 27.433475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203739, 39.336887, 27.477497>,  <31.982016, 39.661625, 27.550867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203739, 39.336887, 27.477497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035136, 0.243008, -0.969388,
		0.831569, 0.530895, 0.163227,
		0.554309, -0.811848, -0.183425,
		32.370033, 39.093334, 27.422470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328644, 39.932381, 27.008360>,  <31.982016, 39.661625, 27.550867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328644, 39.932381, 27.008360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.362915, 39.534149, 26.992964>,  <32.383476, 39.295212, 26.983727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.362915, 39.534149, 26.992964>,  <32.328644, 39.932381, 27.008360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362915, 39.534149, 26.992964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166285, 0.052379, -0.984686,
		0.982348, 0.077967, 0.170038,
		0.085680, -0.995579, -0.038489,
		32.388618, 39.235474, 26.981417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867661, 39.805950, 26.593031>,  <32.328644, 39.932381, 27.008360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867661, 39.805950, 26.593031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.653141, 39.468723, 26.609184>,  <32.524429, 39.266388, 26.618876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.653141, 39.468723, 26.609184>,  <32.867661, 39.805950, 26.593031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653141, 39.468723, 26.609184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288964, 0.138442, -0.947277,
		0.793025, -0.519688, -0.317861,
		-0.536294, -0.843064, 0.040383,
		32.492252, 39.215805, 26.621300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155418, 39.306454, 26.087538>,  <32.867661, 39.805950, 26.593031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155418, 39.306454, 26.087538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.770744, 39.225124, 26.161108>,  <32.539940, 39.176327, 26.205250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.770744, 39.225124, 26.161108>,  <33.155418, 39.306454, 26.087538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770744, 39.225124, 26.161108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210130, 0.115697, -0.970804,
		0.176116, -0.972250, -0.153989,
		-0.961680, -0.203332, 0.183923,
		32.482239, 39.164127, 26.216286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984432, 38.748051, 25.551323>,  <33.155418, 39.306454, 26.087538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984432, 38.748051, 25.551323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.649445, 38.906246, 25.702175>,  <32.448452, 39.001163, 25.792686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.649445, 38.906246, 25.702175>,  <32.984432, 38.748051, 25.551323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649445, 38.906246, 25.702175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426285, -0.040970, -0.903661,
		-0.341939, -0.917556, 0.202903,
		-0.837472, 0.395491, 0.377131,
		32.398205, 39.024895, 25.815315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293907, 37.945885, 25.301300>,  <32.984432, 38.748051, 25.551323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293907, 37.945885, 25.301300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628754, 38.012333, 25.092825>,  <33.829662, 38.052200, 24.967741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628754, 38.012333, 25.092825>,  <33.293907, 37.945885, 25.301300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628754, 38.012333, 25.092825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516201, 0.075387, 0.853143,
		0.181015, -0.983220, -0.022643,
		0.837120, 0.166120, -0.521186,
		33.879890, 38.062168, 24.936470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871185, 37.518185, 25.566730>,  <33.293907, 37.945885, 25.301300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871185, 37.518185, 25.566730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.045475, 37.820580, 25.371334>,  <34.150047, 38.002018, 25.254097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.045475, 37.820580, 25.371334>,  <33.871185, 37.518185, 25.566730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045475, 37.820580, 25.371334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525626, 0.226845, 0.819914,
		0.730659, -0.614018, -0.298527,
		0.435723, 0.755991, -0.488490,
		34.176193, 38.047379, 25.224787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595131, 37.540688, 25.756498>,  <33.871185, 37.518185, 25.566730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595131, 37.540688, 25.756498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547867, 37.910896, 25.612579>,  <34.519508, 38.133022, 25.526228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547867, 37.910896, 25.612579>,  <34.595131, 37.540688, 25.756498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547867, 37.910896, 25.612579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612091, 0.353201, 0.707527,
		0.781909, -0.136624, -0.608237,
		-0.118165, 0.925518, -0.359797,
		34.512417, 38.188553, 25.504641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182224, 37.769913, 25.672508>,  <34.595131, 37.540688, 25.756498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182224, 37.769913, 25.672508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.962109, 38.100163, 25.722343>,  <34.830040, 38.298313, 25.752245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.962109, 38.100163, 25.722343>,  <35.182224, 37.769913, 25.672508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962109, 38.100163, 25.722343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597711, 0.285327, 0.749220,
		0.583027, 0.486757, -0.650498,
		-0.550293, 0.825625, 0.124586,
		34.797020, 38.347851, 25.759720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681725, 38.223866, 25.906727>,  <35.182224, 37.769913, 25.672508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681725, 38.223866, 25.906727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.340820, 38.415096, 25.991676>,  <35.136280, 38.529835, 26.042646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.340820, 38.415096, 25.991676>,  <35.681725, 38.223866, 25.906727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340820, 38.415096, 25.991676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455190, 0.477663, 0.751425,
		0.257795, 0.737078, -0.624706,
		-0.852258, 0.478074, 0.212371,
		35.085144, 38.558517, 26.055387>
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
