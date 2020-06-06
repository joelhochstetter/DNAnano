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
	<24.416727, 34.622040, 34.659386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.127533, 34.813637, 34.858524>,  <23.954016, 34.928596, 34.978008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.127533, 34.813637, 34.858524>,  <24.416727, 34.622040, 34.659386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.127533, 34.813637, 34.858524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690613, 0.481763, 0.539406,
		0.018529, 0.733803, -0.679110,
		-0.722987, 0.478997, 0.497847,
		23.910637, 34.957336, 35.007877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.611586, 34.771519, 33.970810>,  <24.416727, 34.622040, 34.659386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.611586, 34.771519, 33.970810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921829, 34.968700, 34.128506>,  <25.107975, 35.087009, 34.223125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921829, 34.968700, 34.128506>,  <24.611586, 34.771519, 33.970810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.921829, 34.968700, 34.128506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067320, 0.556415, -0.828173,
		-0.627614, 0.668878, 0.398375,
		0.775609, 0.492955, 0.394243,
		25.154512, 35.116589, 34.246777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.371115, 35.533054, 33.894402>,  <24.611586, 34.771519, 33.970810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.371115, 35.533054, 33.894402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.767372, 35.478458, 33.894855>,  <25.005127, 35.445702, 33.895130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.767372, 35.478458, 33.894855>,  <24.371115, 35.533054, 33.894402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.767372, 35.478458, 33.894855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088484, 0.635847, -0.766727,
		0.103925, 0.759652, 0.641973,
		0.990641, -0.136486, 0.001137,
		25.064564, 35.437511, 33.895195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.866405, 35.904961, 34.156578>,  <24.371115, 35.533054, 33.894402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.866405, 35.904961, 34.156578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.125534, 36.206528, 34.112881>,  <25.281012, 36.387466, 34.086662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.125534, 36.206528, 34.112881>,  <24.866405, 35.904961, 34.156578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.125534, 36.206528, 34.112881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722648, -0.653560, -0.225030,
		-0.241052, 0.066834, -0.968208,
		0.647822, 0.753918, -0.109245,
		25.319881, 36.432705, 34.080109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.179834, 36.056648, 33.432213>,  <24.866405, 35.904961, 34.156578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.179834, 36.056648, 33.432213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410254, 36.133549, 33.750008>,  <25.548506, 36.179691, 33.940685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410254, 36.133549, 33.750008>,  <25.179834, 36.056648, 33.432213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410254, 36.133549, 33.750008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695970, -0.625115, -0.353352,
		0.428712, 0.756485, -0.493899,
		0.576049, 0.192253, 0.794485,
		25.583069, 36.191223, 33.988354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.852697, 36.349510, 33.141117>,  <25.179834, 36.056648, 33.432213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.852697, 36.349510, 33.141117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863096, 36.179302, 33.502949>,  <25.869335, 36.077179, 33.720047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863096, 36.179302, 33.502949>,  <25.852697, 36.349510, 33.141117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863096, 36.179302, 33.502949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665394, -0.667941, -0.333325,
		0.746039, 0.610566, 0.265771,
		0.025998, -0.425516, 0.904577,
		25.870895, 36.051647, 33.774323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561525, 36.374966, 33.550678>,  <25.852697, 36.349510, 33.141117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561525, 36.374966, 33.550678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329981, 36.057770, 33.626667>,  <26.191053, 35.867455, 33.672260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329981, 36.057770, 33.626667>,  <26.561525, 36.374966, 33.550678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329981, 36.057770, 33.626667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656190, -0.591311, -0.468791,
		0.484080, -0.146706, 0.862638,
		-0.578862, -0.792987, 0.189975,
		26.156322, 35.819874, 33.683659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053144, 35.892841, 33.677055>,  <26.561525, 36.374966, 33.550678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053144, 35.892841, 33.677055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718019, 35.741016, 33.520084>,  <26.516945, 35.649921, 33.425903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718019, 35.741016, 33.520084>,  <27.053144, 35.892841, 33.677055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718019, 35.741016, 33.520084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542612, -0.499460, -0.675361,
		0.060340, -0.778763, 0.624410,
		-0.837814, -0.379564, -0.392428,
		26.466675, 35.627148, 33.402355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250448, 35.305649, 33.454285>,  <27.053144, 35.892841, 33.677055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250448, 35.305649, 33.454285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914032, 35.358032, 33.244335>,  <26.712181, 35.389462, 33.118366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914032, 35.358032, 33.244335>,  <27.250448, 35.305649, 33.454285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914032, 35.358032, 33.244335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432418, -0.420259, -0.797745,
		-0.325056, -0.897905, 0.296828,
		-0.841043, 0.130958, -0.524877,
		26.661718, 35.397320, 33.086872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945463, 34.695683, 33.125832>,  <27.250448, 35.305649, 33.454285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945463, 34.695683, 33.125832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825048, 34.999126, 32.894699>,  <26.752800, 35.181194, 32.756020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825048, 34.999126, 32.894699>,  <26.945463, 34.695683, 33.125832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.825048, 34.999126, 32.894699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354409, -0.473534, -0.806325,
		-0.885309, -0.447521, -0.126307,
		-0.301037, 0.758611, -0.577829,
		26.734737, 35.226711, 32.721352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668425, 34.338589, 32.505985>,  <26.945463, 34.695683, 33.125832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668425, 34.338589, 32.505985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743515, 34.713978, 32.390030>,  <26.788570, 34.939209, 32.320457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743515, 34.713978, 32.390030>,  <26.668425, 34.338589, 32.505985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743515, 34.713978, 32.390030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591918, -0.343615, -0.729083,
		-0.783831, -0.034720, -0.620002,
		0.187728, 0.938468, -0.289888,
		26.799833, 34.995518, 32.303062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599586, 33.836418, 31.962669>,  <26.668425, 34.338589, 32.505985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599586, 33.836418, 31.962669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.932203, 33.939663, 32.159409>,  <27.131773, 34.001610, 32.277451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.932203, 33.939663, 32.159409>,  <26.599586, 33.836418, 31.962669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.932203, 33.939663, 32.159409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486101, -0.766626, -0.419511,
		0.268780, 0.587928, -0.762953,
		0.831543, 0.258116, 0.491847,
		27.181665, 34.017097, 32.306961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224499, 34.027187, 31.534479>,  <26.599586, 33.836418, 31.962669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.224499, 34.027187, 31.534479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328135, 33.857658, 31.881638>,  <27.390316, 33.755939, 32.089931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328135, 33.857658, 31.881638>,  <27.224499, 34.027187, 31.534479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328135, 33.857658, 31.881638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458566, -0.736867, -0.496734,
		0.850052, 0.526687, 0.003436,
		0.259091, -0.423825, 0.867896,
		27.405863, 33.730511, 32.142006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726902, 34.649574, 31.683655>,  <27.224499, 34.027187, 31.534479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726902, 34.649574, 31.683655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509354, 34.917732, 31.481750>,  <27.378824, 35.078625, 31.360609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509354, 34.917732, 31.481750>,  <27.726902, 34.649574, 31.683655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509354, 34.917732, 31.481750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457137, 0.267732, 0.848142,
		0.703727, 0.692023, 0.160849,
		-0.543870, 0.670390, -0.504759,
		27.346193, 35.118851, 31.330322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875547, 35.292427, 31.965889>,  <27.726902, 34.649574, 31.683655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875547, 35.292427, 31.965889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517347, 35.236317, 31.796940>,  <27.302427, 35.202652, 31.695570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517347, 35.236317, 31.796940>,  <27.875547, 35.292427, 31.965889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517347, 35.236317, 31.796940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441613, 0.162198, 0.882422,
		-0.055274, 0.976737, -0.207196,
		-0.895501, -0.140276, -0.422375,
		27.248697, 35.194233, 31.670227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467459, 35.894676, 31.940666>,  <27.875547, 35.292427, 31.965889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467459, 35.894676, 31.940666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.214245, 35.585770, 31.919239>,  <27.062317, 35.400425, 31.906384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.214245, 35.585770, 31.919239>,  <27.467459, 35.894676, 31.940666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.214245, 35.585770, 31.919239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547599, 0.397808, 0.736128,
		-0.547179, 0.495327, -0.674720,
		-0.633033, -0.772270, -0.053568,
		27.024336, 35.354088, 31.903168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711819, 36.203495, 31.859282>,  <27.467459, 35.894676, 31.940666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.711819, 36.203495, 31.859282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727232, 35.829540, 32.000423>,  <26.736481, 35.605167, 32.085110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727232, 35.829540, 32.000423>,  <26.711819, 36.203495, 31.859282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727232, 35.829540, 32.000423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621970, 0.253935, 0.740722,
		-0.782092, -0.248009, -0.571685,
		0.038535, -0.934884, 0.352855,
		26.738792, 35.549076, 32.106281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031019, 36.159092, 32.133492>,  <26.711819, 36.203495, 31.859282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031019, 36.159092, 32.133492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240000, 35.858845, 32.295292>,  <26.365389, 35.678696, 32.392372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240000, 35.858845, 32.295292>,  <26.031019, 36.159092, 32.133492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240000, 35.858845, 32.295292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477468, 0.135500, 0.868138,
		-0.706448, -0.646696, -0.287603,
		0.522451, -0.750616, 0.404501,
		26.396734, 35.633659, 32.416641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.544815, 35.545788, 32.391502>,  <26.031019, 36.159092, 32.133492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.544815, 35.545788, 32.391502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885666, 35.518978, 32.599113>,  <26.090176, 35.502892, 32.723679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885666, 35.518978, 32.599113>,  <25.544815, 35.545788, 32.391502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885666, 35.518978, 32.599113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507396, 0.137117, 0.850734,
		-0.128191, -0.988285, 0.082831,
		0.852125, -0.067028, 0.519029,
		26.141304, 35.498871, 32.754822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.404425, 35.125080, 32.852058>,  <25.544815, 35.545788, 32.391502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.404425, 35.125080, 32.852058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718666, 35.305950, 33.020992>,  <25.907211, 35.414471, 33.122353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718666, 35.305950, 33.020992>,  <25.404425, 35.125080, 32.852058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718666, 35.305950, 33.020992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451802, -0.047116, 0.890873,
		0.422729, -0.890684, 0.167279,
		0.785605, 0.452175, 0.422330,
		25.954348, 35.441601, 33.147690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769993, 34.689777, 33.459270>,  <25.404425, 35.125080, 32.852058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769993, 34.689777, 33.459270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789978, 35.086468, 33.506577>,  <25.801970, 35.324482, 33.534962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789978, 35.086468, 33.506577>,  <25.769993, 34.689777, 33.459270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789978, 35.086468, 33.506577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418010, -0.086781, 0.904288,
		0.907067, -0.094619, 0.410215,
		0.049964, 0.991724, 0.118268,
		25.804968, 35.383984, 33.542057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321365, 35.070271, 33.929108>,  <25.769993, 34.689777, 33.459270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321365, 35.070271, 33.929108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959393, 35.239960, 33.915627>,  <25.742208, 35.341774, 33.907536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959393, 35.239960, 33.915627>,  <26.321365, 35.070271, 33.929108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959393, 35.239960, 33.915627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171153, -0.290294, 0.941507,
		0.389623, 0.857768, 0.335303,
		-0.904931, 0.424221, -0.033705,
		25.687914, 35.367226, 33.905514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906183, 34.717812, 34.325130>,  <26.321365, 35.070271, 33.929108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906183, 34.717812, 34.325130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715931, 34.471012, 34.074341>,  <26.601780, 34.322933, 33.923866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715931, 34.471012, 34.074341>,  <26.906183, 34.717812, 34.325130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715931, 34.471012, 34.074341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878897, -0.362718, -0.309800,
		-0.036269, -0.698394, 0.714794,
		-0.475631, -0.616994, -0.626971,
		26.573242, 34.285915, 33.886250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996105, 33.974182, 34.341709>,  <26.906183, 34.717812, 34.325130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996105, 33.974182, 34.341709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961464, 34.111969, 33.967793>,  <26.940680, 34.194641, 33.743443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961464, 34.111969, 33.967793>,  <26.996105, 33.974182, 34.341709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961464, 34.111969, 33.967793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898925, -0.377468, -0.222375,
		-0.429457, -0.859571, -0.276958,
		-0.086604, 0.344465, -0.934796,
		26.935482, 34.215309, 33.687355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372320, 33.521397, 33.939964>,  <26.996105, 33.974182, 34.341709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372320, 33.521397, 33.939964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.330812, 33.816624, 33.673286>,  <27.305908, 33.993759, 33.513279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.330812, 33.816624, 33.673286>,  <27.372320, 33.521397, 33.939964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.330812, 33.816624, 33.673286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853409, -0.278192, -0.440799,
		-0.510810, -0.614707, -0.601006,
		-0.103767, 0.738068, -0.666699,
		27.299683, 34.038044, 33.473278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558062, 33.267700, 33.322868>,  <27.372320, 33.521397, 33.939964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558062, 33.267700, 33.322868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.621050, 33.660114, 33.277664>,  <27.658842, 33.895561, 33.250542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.621050, 33.660114, 33.277664>,  <27.558062, 33.267700, 33.322868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621050, 33.660114, 33.277664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847443, -0.192995, -0.494564,
		-0.506995, -0.017889, -0.861764,
		0.157469, 0.981037, -0.113007,
		27.668291, 33.954426, 33.243763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740097, 33.405739, 32.569592>,  <27.558062, 33.267700, 33.322868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740097, 33.405739, 32.569592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893763, 33.684292, 32.812069>,  <27.985962, 33.851425, 32.957554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893763, 33.684292, 32.812069>,  <27.740097, 33.405739, 32.569592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893763, 33.684292, 32.812069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906534, -0.160074, -0.390606,
		-0.174975, 0.699592, -0.692788,
		0.384162, 0.696382, 0.606194,
		28.009010, 33.893208, 32.993927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154863, 33.933350, 32.294605>,  <27.740097, 33.405739, 32.569592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154863, 33.933350, 32.294605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318905, 33.812981, 32.638992>,  <28.417330, 33.740757, 32.845623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318905, 33.812981, 32.638992>,  <28.154863, 33.933350, 32.294605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318905, 33.812981, 32.638992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839528, -0.244317, -0.485286,
		0.356382, 0.921821, 0.152439,
		0.410103, -0.300924, 0.860965,
		28.441936, 33.722702, 32.897282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816271, 33.969711, 32.146587>,  <28.154863, 33.933350, 32.294605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816271, 33.969711, 32.146587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813465, 33.760719, 32.487637>,  <28.811781, 33.635323, 32.692265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813465, 33.760719, 32.487637>,  <28.816271, 33.969711, 32.146587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813465, 33.760719, 32.487637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804073, -0.509847, -0.305815,
		0.594489, 0.683426, 0.423687,
		-0.007014, -0.522479, 0.852624,
		28.811361, 33.603977, 32.743423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409359, 33.526779, 31.932312>,  <28.816271, 33.969711, 32.146587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409359, 33.526779, 31.932312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462564, 33.171635, 31.756124>,  <29.494488, 32.958549, 31.650412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462564, 33.171635, 31.756124>,  <29.409359, 33.526779, 31.932312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462564, 33.171635, 31.756124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791786, -0.362502, 0.491597,
		-0.596140, 0.283366, -0.751213,
		0.133014, -0.887860, -0.440467,
		29.502468, 32.905277, 31.623985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743660, 33.345024, 31.711653>,  <29.409359, 33.526779, 31.932312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743660, 33.345024, 31.711653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944212, 33.001465, 31.753441>,  <29.064543, 32.795330, 31.778513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944212, 33.001465, 31.753441>,  <28.743660, 33.345024, 31.711653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944212, 33.001465, 31.753441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792127, -0.407091, 0.454766,
		-0.348069, -0.310763, -0.884463,
		0.501382, -0.858896, 0.104467,
		29.094627, 32.743797, 31.784781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358372, 32.806492, 31.338827>,  <28.743660, 33.345024, 31.711653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358372, 32.806492, 31.338827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589464, 32.613140, 31.601908>,  <28.728121, 32.497128, 31.759756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589464, 32.613140, 31.601908>,  <28.358372, 32.806492, 31.338827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589464, 32.613140, 31.601908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811863, -0.423514, 0.401888,
		0.084282, -0.766148, -0.637114,
		0.577732, -0.483377, 0.657702,
		28.762783, 32.468128, 31.799217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979734, 32.082676, 31.500183>,  <28.358372, 32.806492, 31.338827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979734, 32.082676, 31.500183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236612, 32.087429, 31.806763>,  <28.390739, 32.090282, 31.990711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236612, 32.087429, 31.806763>,  <27.979734, 32.082676, 31.500183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236612, 32.087429, 31.806763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721489, -0.328369, 0.609612,
		0.258925, -0.944475, -0.202301,
		0.642193, 0.011885, 0.766451,
		28.429270, 32.090996, 32.036697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112774, 31.380625, 31.917278>,  <27.979734, 32.082676, 31.500183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.112774, 31.380625, 31.917278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144634, 31.723804, 32.120289>,  <28.163750, 31.929712, 32.242096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144634, 31.723804, 32.120289>,  <28.112774, 31.380625, 31.917278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144634, 31.723804, 32.120289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647440, -0.342604, 0.680767,
		0.757943, -0.382816, 0.528181,
		0.079651, 0.857948, 0.507525,
		28.168530, 31.981190, 32.272545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329493, 31.214939, 32.539494>,  <28.112774, 31.380625, 31.917278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329493, 31.214939, 32.539494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095659, 31.539463, 32.541889>,  <27.955359, 31.734179, 32.543327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095659, 31.539463, 32.541889>,  <28.329493, 31.214939, 32.539494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095659, 31.539463, 32.541889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708811, -0.514294, 0.482793,
		0.394778, 0.277985, 0.875714,
		-0.584584, 0.811311, 0.005994,
		27.920284, 31.782856, 32.543686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795238, 31.738110, 32.852104>,  <28.329493, 31.214939, 32.539494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795238, 31.738110, 32.852104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.474176, 31.976641, 32.847462>,  <28.281538, 32.119759, 32.844677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.474176, 31.976641, 32.847462>,  <28.795238, 31.738110, 32.852104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474176, 31.976641, 32.847462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542109, 0.737520, 0.402718,
		0.248715, 0.316950, -0.915251,
		-0.802657, 0.596328, -0.011611,
		28.233379, 32.155540, 32.843979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334198, 32.204563, 32.965866>,  <28.795238, 31.738110, 32.852104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334198, 32.204563, 32.965866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049427, 32.180599, 32.685989>,  <28.878565, 32.166222, 32.518063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049427, 32.180599, 32.685989>,  <29.334198, 32.204563, 32.965866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049427, 32.180599, 32.685989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636074, 0.367232, -0.678639,
		0.297603, -0.928199, -0.223338,
		-0.711928, -0.059905, -0.699692,
		28.835848, 32.162628, 32.476082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470949, 31.709797, 32.535210>,  <29.334198, 32.204563, 32.965866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470949, 31.709797, 32.535210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252619, 31.960497, 32.312763>,  <29.121620, 32.110916, 32.179298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252619, 31.960497, 32.312763>,  <29.470949, 31.709797, 32.535210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252619, 31.960497, 32.312763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806833, 0.214100, -0.550619,
		-0.226036, -0.749232, -0.622542,
		-0.545827, 0.626748, -0.556111,
		29.088871, 32.148521, 32.145931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643581, 31.573647, 31.796675>,  <29.470949, 31.709797, 32.535210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643581, 31.573647, 31.796675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481901, 31.939316, 31.784613>,  <29.384893, 32.158718, 31.777374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481901, 31.939316, 31.784613>,  <29.643581, 31.573647, 31.796675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481901, 31.939316, 31.784613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701338, 0.288593, -0.651797,
		-0.587152, -0.284607, -0.757794,
		-0.404200, 0.914173, -0.030158,
		29.360641, 32.213570, 31.775566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619789, 31.832447, 31.056313>,  <29.643581, 31.573647, 31.796675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619789, 31.832447, 31.056313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613379, 32.143269, 31.308004>,  <29.609531, 32.329762, 31.459021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613379, 32.143269, 31.308004>,  <29.619789, 31.832447, 31.056313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613379, 32.143269, 31.308004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643845, 0.489498, -0.588095,
		-0.764989, 0.395702, -0.508146,
		-0.016026, 0.777053, 0.629231,
		29.608570, 32.376385, 31.496773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384226, 32.449081, 30.650326>,  <29.619789, 31.832447, 31.056313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384226, 32.449081, 30.650326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628963, 32.547504, 30.951017>,  <29.775806, 32.606560, 31.131433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628963, 32.547504, 30.951017>,  <29.384226, 32.449081, 30.650326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628963, 32.547504, 30.951017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694000, 0.288963, -0.659443,
		-0.379486, 0.925178, 0.006034,
		0.611846, 0.246062, 0.751730,
		29.812517, 32.621323, 31.176537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644691, 32.998383, 30.303656>,  <29.384226, 32.449081, 30.650326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644691, 32.998383, 30.303656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876650, 32.934372, 30.623182>,  <30.015825, 32.895966, 30.814898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876650, 32.934372, 30.623182>,  <29.644691, 32.998383, 30.303656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876650, 32.934372, 30.623182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770716, -0.210019, -0.601573,
		0.264037, 0.964511, 0.001549,
		0.579898, -0.160031, 0.798817,
		30.050619, 32.886364, 30.862827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432663, 33.248741, 30.352545>,  <29.644691, 32.998383, 30.303656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432663, 33.248741, 30.352545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426399, 32.915230, 30.573296>,  <30.422642, 32.715122, 30.705746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426399, 32.915230, 30.573296>,  <30.432663, 33.248741, 30.352545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426399, 32.915230, 30.573296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422488, -0.505770, -0.752130,
		0.906233, 0.221386, 0.360181,
		-0.015658, -0.833777, 0.551879,
		30.421701, 32.665096, 30.738859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010773, 33.752888, 30.482056>,  <30.432663, 33.248741, 30.352545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010773, 33.752888, 30.482056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344582, 33.724121, 30.263552>,  <31.544867, 33.706860, 30.132448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344582, 33.724121, 30.263552>,  <31.010773, 33.752888, 30.482056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344582, 33.724121, 30.263552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119931, 0.991383, 0.052698,
		0.537764, -0.109491, 0.835956,
		0.834522, -0.071918, -0.546261,
		31.594938, 33.702545, 30.099674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534903, 34.105289, 30.786314>,  <31.010773, 33.752888, 30.482056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534903, 34.105289, 30.786314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633272, 34.104458, 30.398600>,  <31.692295, 34.103958, 30.165972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633272, 34.104458, 30.398600>,  <31.534903, 34.105289, 30.786314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633272, 34.104458, 30.398600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264457, 0.961914, -0.069161,
		0.932514, 0.273343, 0.236010,
		0.245926, -0.002079, -0.969286,
		31.707050, 34.103832, 30.107813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325693, 33.528000, 31.167046>,  <31.534903, 34.105289, 30.786314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325693, 33.528000, 31.167046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442848, 33.177940, 31.012993>,  <31.513142, 32.967903, 30.920561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442848, 33.177940, 31.012993>,  <31.325693, 33.528000, 31.167046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442848, 33.177940, 31.012993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875249, 0.083247, 0.476455,
		-0.384910, -0.476633, 0.790358,
		0.292889, -0.875152, -0.385130,
		31.530714, 32.915394, 30.897453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514835, 33.039574, 31.718233>,  <31.325693, 33.528000, 31.167046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514835, 33.039574, 31.718233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705677, 33.009689, 31.367966>,  <31.820181, 32.991760, 31.157806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705677, 33.009689, 31.367966>,  <31.514835, 33.039574, 31.718233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705677, 33.009689, 31.367966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857251, -0.179965, 0.482424,
		-0.193632, -0.980832, -0.021815,
		0.477102, -0.074712, -0.875666,
		31.848808, 32.987278, 31.105267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968649, 32.512539, 31.816929>,  <31.514835, 33.039574, 31.718233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968649, 32.512539, 31.816929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086788, 32.703918, 31.486147>,  <32.157673, 32.818745, 31.287678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086788, 32.703918, 31.486147>,  <31.968649, 32.512539, 31.816929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086788, 32.703918, 31.486147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946804, -0.030790, 0.320336,
		0.127802, -0.877575, -0.462091,
		0.295347, 0.478449, -0.826956,
		32.175392, 32.847454, 31.238060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699692, 32.240665, 31.626162>,  <31.968649, 32.512539, 31.816929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699692, 32.240665, 31.626162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631424, 32.598831, 31.461674>,  <32.590462, 32.813732, 31.362980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631424, 32.598831, 31.461674>,  <32.699692, 32.240665, 31.626162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631424, 32.598831, 31.461674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838976, 0.350920, 0.415903,
		0.516711, -0.274021, -0.811124,
		-0.170673, 0.895415, -0.411221,
		32.580223, 32.867455, 31.338306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295071, 32.382561, 31.252548>,  <32.699692, 32.240665, 31.626162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295071, 32.382561, 31.252548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111786, 32.715836, 31.376383>,  <33.001816, 32.915798, 31.450684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111786, 32.715836, 31.376383>,  <33.295071, 32.382561, 31.252548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111786, 32.715836, 31.376383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824742, 0.268672, 0.497610,
		0.331424, 0.483341, -0.810272,
		-0.458212, 0.833185, 0.309587,
		32.974323, 32.965790, 31.469259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360348, 31.592299, 31.380713>,  <33.295071, 32.382561, 31.252548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360348, 31.592299, 31.380713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110790, 31.428749, 31.114305>,  <32.961056, 31.330620, 30.954462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110790, 31.428749, 31.114305>,  <33.360348, 31.592299, 31.380713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110790, 31.428749, 31.114305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505525, -0.861054, 0.055054,
		-0.595986, -0.302340, 0.743903,
		-0.623895, -0.408873, -0.666016,
		32.923622, 31.306087, 30.914501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852158, 30.982948, 31.480125>,  <33.360348, 31.592299, 31.380713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852158, 30.982948, 31.480125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978619, 30.951233, 31.101969>,  <33.054493, 30.932203, 30.875074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978619, 30.951233, 31.101969>,  <32.852158, 30.982948, 31.480125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978619, 30.951233, 31.101969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567799, -0.782509, 0.255507,
		-0.760036, -0.617570, -0.202368,
		0.316149, -0.079290, -0.945391,
		33.073463, 30.927446, 30.818352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611237, 30.316248, 31.113102>,  <32.852158, 30.982948, 31.480125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611237, 30.316248, 31.113102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936180, 30.549509, 31.113743>,  <33.131145, 30.689466, 31.114128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936180, 30.549509, 31.113743>,  <32.611237, 30.316248, 31.113102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936180, 30.549509, 31.113743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572786, -0.798431, 0.185537,
		0.109477, -0.149804, -0.982636,
		0.812361, 0.583152, 0.001604,
		33.179890, 30.724455, 31.114223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949951, 30.043980, 30.490183>,  <32.611237, 30.316248, 31.113102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949951, 30.043980, 30.490183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079876, 29.759254, 30.739285>,  <33.157833, 29.588419, 30.888744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079876, 29.759254, 30.739285>,  <32.949951, 30.043980, 30.490183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079876, 29.759254, 30.739285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850181, 0.068723, 0.521986,
		-0.414354, -0.699000, -0.582846,
		0.324814, -0.711812, 0.622752,
		33.177319, 29.545712, 30.926109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471169, 29.424967, 30.494328>,  <32.949951, 30.043980, 30.490183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471169, 29.424967, 30.494328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675201, 29.444160, 30.837843>,  <32.797623, 29.455677, 31.043951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675201, 29.444160, 30.837843>,  <32.471169, 29.424967, 30.494328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675201, 29.444160, 30.837843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856304, 0.122349, 0.501772,
		-0.080994, -0.991327, 0.103497,
		0.510082, 0.047985, 0.858786,
		32.828224, 29.458555, 31.095478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324257, 28.748289, 30.888939>,  <32.471169, 29.424967, 30.494328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324257, 28.748289, 30.888939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438011, 29.006220, 31.172722>,  <32.506264, 29.160978, 31.342991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438011, 29.006220, 31.172722>,  <32.324257, 28.748289, 30.888939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438011, 29.006220, 31.172722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890346, -0.096802, 0.444874,
		0.355542, -0.758176, 0.546589,
		0.284382, 0.644825, 0.709456,
		32.523327, 29.199667, 31.385559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263992, 28.481134, 31.546244>,  <32.324257, 28.748289, 30.888939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263992, 28.481134, 31.546244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261700, 28.873365, 31.624662>,  <32.260323, 29.108704, 31.671715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261700, 28.873365, 31.624662>,  <32.263992, 28.481134, 31.546244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261700, 28.873365, 31.624662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857313, -0.105743, 0.503819,
		0.514764, -0.165186, 0.841268,
		-0.005734, 0.980578, 0.196049,
		32.259979, 29.167538, 31.683477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036201, 28.473898, 32.202534>,  <32.263992, 28.481134, 31.546244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036201, 28.473898, 32.202534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978687, 28.839424, 32.050606>,  <31.944180, 29.058741, 31.959448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978687, 28.839424, 32.050606>,  <32.036201, 28.473898, 32.202534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978687, 28.839424, 32.050606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920628, 0.017273, 0.390058,
		0.363002, 0.405760, 0.838802,
		-0.143781, 0.913816, -0.379824,
		31.935553, 29.113569, 31.936659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880804, 28.947433, 32.797985>,  <32.036201, 28.473898, 32.202534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880804, 28.947433, 32.797985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708740, 29.015083, 32.443275>,  <31.605503, 29.055674, 32.230450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708740, 29.015083, 32.443275>,  <31.880804, 28.947433, 32.797985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708740, 29.015083, 32.443275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900056, -0.156231, 0.406807,
		-0.069740, 0.973134, 0.219425,
		-0.430158, 0.169124, -0.886770,
		31.579693, 29.065821, 32.177246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202122, 28.505678, 32.549904>,  <31.880804, 28.947433, 32.797985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202122, 28.505678, 32.549904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143112, 28.851149, 32.742695>,  <31.107706, 29.058432, 32.858368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143112, 28.851149, 32.742695>,  <31.202122, 28.505678, 32.549904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143112, 28.851149, 32.742695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527450, 0.480929, -0.700359,
		-0.836680, 0.150898, -0.526495,
		-0.147524, 0.863677, 0.481974,
		31.098854, 29.110252, 32.887287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899120, 28.978922, 32.016876>,  <31.202122, 28.505678, 32.549904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899120, 28.978922, 32.016876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130440, 29.139080, 32.301201>,  <31.269232, 29.235174, 32.471794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130440, 29.139080, 32.301201>,  <30.899120, 28.978922, 32.016876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130440, 29.139080, 32.301201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683314, 0.238280, -0.690148,
		-0.445704, 0.884820, -0.135798,
		0.578299, 0.400395, 0.710812,
		31.303930, 29.259199, 32.514446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140013, 29.644440, 31.715637>,  <30.899120, 28.978922, 32.016876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140013, 29.644440, 31.715637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370998, 29.561989, 32.031624>,  <31.509590, 29.512518, 32.221214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370998, 29.561989, 32.031624>,  <31.140013, 29.644440, 31.715637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370998, 29.561989, 32.031624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812926, 0.234544, -0.533049,
		-0.075407, 0.950001, 0.303006,
		0.577465, -0.206125, 0.789966,
		31.544237, 29.500151, 32.268612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625984, 30.214064, 31.636909>,  <31.140013, 29.644440, 31.715637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625984, 30.214064, 31.636909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761896, 29.889425, 31.827007>,  <31.843443, 29.694641, 31.941067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761896, 29.889425, 31.827007>,  <31.625984, 30.214064, 31.636909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761896, 29.889425, 31.827007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895874, 0.125484, -0.426219,
		0.286283, 0.570582, 0.769726,
		0.339781, -0.811597, 0.475246,
		31.863831, 29.645947, 31.969582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259876, 30.429882, 31.993422>,  <31.625984, 30.214064, 31.636909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259876, 30.429882, 31.993422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263596, 30.037535, 31.915646>,  <32.265827, 29.802126, 31.868980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263596, 30.037535, 31.915646>,  <32.259876, 30.429882, 31.993422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263596, 30.037535, 31.915646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914210, 0.087123, -0.395764,
		0.405134, -0.174076, 0.897532,
		0.009302, -0.980871, -0.194438,
		32.266388, 29.743273, 31.857315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964142, 30.124336, 32.183144>,  <32.259876, 30.429882, 31.993422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964142, 30.124336, 32.183144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819260, 29.852562, 31.927904>,  <32.732330, 29.689497, 31.774759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819260, 29.852562, 31.927904>,  <32.964142, 30.124336, 32.183144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819260, 29.852562, 31.927904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917273, -0.138218, -0.373506,
		0.165576, -0.720601, 0.673290,
		-0.362209, -0.679434, -0.638102,
		32.710598, 29.648731, 31.736473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324772, 29.522079, 32.266064>,  <32.964142, 30.124336, 32.183144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324772, 29.522079, 32.266064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179974, 29.520012, 31.893198>,  <33.093094, 29.518772, 31.669477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179974, 29.520012, 31.893198>,  <33.324772, 29.522079, 32.266064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179974, 29.520012, 31.893198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908576, -0.225571, -0.351580,
		-0.208453, -0.974213, 0.086351,
		-0.361992, -0.005169, -0.932167,
		33.071377, 29.518461, 31.613548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639534, 28.860855, 31.936962>,  <33.324772, 29.522079, 32.266064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639534, 28.860855, 31.936962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539654, 29.157753, 31.688213>,  <33.479725, 29.335892, 31.538963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539654, 29.157753, 31.688213>,  <33.639534, 28.860855, 31.936962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539654, 29.157753, 31.688213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827485, -0.169976, -0.535142,
		-0.502909, -0.648216, -0.571751,
		-0.249704, 0.742243, -0.621871,
		33.464745, 29.380426, 31.501652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482502, 28.615976, 31.233484>,  <33.639534, 28.860855, 31.936962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482502, 28.615976, 31.233484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646076, 28.980965, 31.238678>,  <33.744221, 29.199957, 31.241795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646076, 28.980965, 31.238678>,  <33.482502, 28.615976, 31.233484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646076, 28.980965, 31.238678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814071, -0.358334, -0.457040,
		-0.412383, 0.197470, -0.889351,
		0.408937, 0.912470, 0.012983,
		33.768757, 29.254705, 31.242573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815002, 28.653522, 30.575872>,  <33.482502, 28.615976, 31.233484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815002, 28.653522, 30.575872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999832, 28.931328, 30.796465>,  <34.110729, 29.098011, 30.928820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999832, 28.931328, 30.796465>,  <33.815002, 28.653522, 30.575872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999832, 28.931328, 30.796465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835680, -0.132841, -0.532908,
		-0.296854, 0.707108, -0.641776,
		0.462078, 0.694516, 0.551482,
		34.138454, 29.139683, 30.961910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253010, 29.047094, 30.140585>,  <33.815002, 28.653522, 30.575872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253010, 29.047094, 30.140585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414532, 29.186769, 30.478817>,  <34.511444, 29.270575, 30.681757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414532, 29.186769, 30.478817>,  <34.253010, 29.047094, 30.140585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414532, 29.186769, 30.478817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906728, -0.029916, -0.420653,
		-0.121590, 0.936575, -0.328698,
		0.403807, 0.349187, 0.845582,
		34.535675, 29.291525, 30.732492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714500, 29.499678, 29.902971>,  <34.253010, 29.047094, 30.140585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714500, 29.499678, 29.902971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843719, 29.397686, 30.267527>,  <34.921249, 29.336491, 30.486259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843719, 29.397686, 30.267527>,  <34.714500, 29.499678, 29.902971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843719, 29.397686, 30.267527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928883, -0.098911, -0.356920,
		0.181153, 0.961874, 0.204893,
		0.323046, -0.254979, 0.911387,
		34.940632, 29.321192, 30.540943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174725, 30.125780, 30.133661>,  <34.714500, 29.499678, 29.902971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174725, 30.125780, 30.133661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284313, 29.823601, 30.371735>,  <35.350067, 29.642294, 30.514578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284313, 29.823601, 30.371735>,  <35.174725, 30.125780, 30.133661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284313, 29.823601, 30.371735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891790, -0.032150, -0.451306,
		0.360073, 0.654420, 0.664893,
		0.273967, -0.755448, 0.595182,
		35.366505, 29.596966, 30.550289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892048, 30.257454, 30.251837>,  <35.174725, 30.125780, 30.133661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892048, 30.257454, 30.251837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841209, 29.870451, 30.339272>,  <35.810707, 29.638250, 30.391733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841209, 29.870451, 30.339272>,  <35.892048, 30.257454, 30.251837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841209, 29.870451, 30.339272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805154, -0.229337, -0.546930,
		0.579287, 0.106483, 0.808139,
		-0.127097, -0.967505, 0.218587,
		35.803082, 29.580200, 30.404848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526531, 30.050993, 30.373100>,  <35.892048, 30.257454, 30.251837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526531, 30.050993, 30.373100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336147, 29.711731, 30.280064>,  <36.221916, 29.508175, 30.224241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336147, 29.711731, 30.280064>,  <36.526531, 30.050993, 30.373100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336147, 29.711731, 30.280064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797312, -0.304520, -0.521115,
		0.371156, -0.433477, 0.821183,
		-0.475958, -0.848154, -0.232592,
		36.193359, 29.457285, 30.210285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027515, 29.553417, 30.460915>,  <36.526531, 30.050993, 30.373100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027515, 29.553417, 30.460915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759712, 29.394222, 30.210039>,  <36.599030, 29.298704, 30.059515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759712, 29.394222, 30.210039>,  <37.027515, 29.553417, 30.460915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759712, 29.394222, 30.210039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731831, -0.208815, -0.648706,
		0.127212, -0.893309, 0.431064,
		-0.669507, -0.397989, -0.627187,
		36.558861, 29.274826, 30.021883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324482, 28.872734, 30.109825>,  <37.027515, 29.553417, 30.460915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324482, 28.872734, 30.109825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020130, 28.991747, 29.879158>,  <36.837521, 29.063154, 29.740759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020130, 28.991747, 29.879158>,  <37.324482, 28.872734, 30.109825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020130, 28.991747, 29.879158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546993, -0.184012, -0.816663,
		-0.349097, -0.936811, -0.022738,
		-0.760875, 0.297532, -0.576667,
		36.791866, 29.081007, 29.706158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573673, 28.672899, 29.458132>,  <37.324482, 28.872734, 30.109825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573673, 28.672899, 29.458132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250908, 28.877462, 29.339911>,  <37.057247, 29.000200, 29.268978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250908, 28.877462, 29.339911>,  <37.573673, 28.672899, 29.458132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250908, 28.877462, 29.339911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315722, -0.049456, -0.947562,
		-0.499205, -0.857915, -0.121555,
		-0.806916, 0.511406, -0.295551,
		37.008835, 29.030884, 29.251245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276505, 28.367849, 28.883268>,  <37.573673, 28.672899, 29.458132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276505, 28.367849, 28.883268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119949, 28.735336, 28.862221>,  <37.026016, 28.955830, 28.849592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119949, 28.735336, 28.862221>,  <37.276505, 28.367849, 28.883268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119949, 28.735336, 28.862221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410569, 0.123162, -0.903474,
		-0.823558, -0.375214, -0.425402,
		-0.391389, 0.918720, -0.052620,
		37.002533, 29.010952, 28.846436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062325, 28.399374, 28.157166>,  <37.276505, 28.367849, 28.883268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062325, 28.399374, 28.157166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086205, 28.785854, 28.257475>,  <37.100533, 29.017742, 28.317661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086205, 28.785854, 28.257475>,  <37.062325, 28.399374, 28.157166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086205, 28.785854, 28.257475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515345, 0.185320, -0.836706,
		-0.854901, 0.179188, -0.486863,
		0.059702, 0.966203, 0.250774,
		37.104115, 29.075716, 28.332706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785454, 28.764057, 27.620903>,  <37.062325, 28.399374, 28.157166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785454, 28.764057, 27.620903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011112, 29.030876, 27.815546>,  <37.146507, 29.190968, 27.932331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011112, 29.030876, 27.815546>,  <36.785454, 28.764057, 27.620903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011112, 29.030876, 27.815546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498281, 0.194882, -0.844829,
		-0.658371, 0.719076, -0.222434,
		0.564148, 0.667046, 0.486607,
		37.180355, 29.230989, 27.961529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716766, 29.379868, 27.281807>,  <36.785454, 28.764057, 27.620903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716766, 29.379868, 27.281807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068424, 29.425535, 27.466881>,  <37.279419, 29.452936, 27.577925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068424, 29.425535, 27.466881>,  <36.716766, 29.379868, 27.281807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068424, 29.425535, 27.466881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423269, 0.259078, -0.868172,
		-0.218989, 0.959085, 0.179442,
		0.879140, 0.114168, 0.462686,
		37.332165, 29.459785, 27.605686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002132, 29.989353, 26.989786>,  <36.716766, 29.379868, 27.281807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002132, 29.989353, 26.989786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313374, 29.783474, 27.133812>,  <37.500118, 29.659946, 27.220228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313374, 29.783474, 27.133812>,  <37.002132, 29.989353, 26.989786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313374, 29.783474, 27.133812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549652, 0.280441, -0.786915,
		0.304046, 0.810210, 0.501115,
		0.778099, -0.514697, 0.360067,
		37.546803, 29.629065, 27.241833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521748, 30.314463, 26.807753>,  <37.002132, 29.989353, 26.989786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521748, 30.314463, 26.807753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700256, 29.973309, 26.916145>,  <37.807362, 29.768616, 26.981182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700256, 29.973309, 26.916145>,  <37.521748, 30.314463, 26.807753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700256, 29.973309, 26.916145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509795, -0.006581, -0.860271,
		0.735494, 0.522060, 0.431859,
		0.446271, -0.852883, 0.270984,
		37.834137, 29.717443, 26.997440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200066, 30.316236, 26.620836>,  <37.521748, 30.314463, 26.807753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200066, 30.316236, 26.620836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115105, 29.927008, 26.656643>,  <38.064129, 29.693470, 26.678127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115105, 29.927008, 26.656643>,  <38.200066, 30.316236, 26.620836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115105, 29.927008, 26.656643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415471, -0.172843, -0.893034,
		0.884459, -0.152492, 0.440996,
		-0.212404, -0.973073, 0.089516,
		38.051384, 29.635086, 26.683498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776955, 30.071585, 26.238298>,  <38.200066, 30.316236, 26.620836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776955, 30.071585, 26.238298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520908, 29.765625, 26.267103>,  <38.367283, 29.582050, 26.284386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520908, 29.765625, 26.267103>,  <38.776955, 30.071585, 26.238298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520908, 29.765625, 26.267103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315094, -0.346858, -0.883406,
		0.700693, -0.542790, 0.463043,
		-0.640114, -0.764898, 0.072011,
		38.328873, 29.536156, 26.288706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152885, 29.401335, 26.073851>,  <38.776955, 30.071585, 26.238298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152885, 29.401335, 26.073851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763695, 29.332478, 26.012287>,  <38.530182, 29.291164, 25.975349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763695, 29.332478, 26.012287>,  <39.152885, 29.401335, 26.073851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763695, 29.332478, 26.012287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217165, -0.455615, -0.863281,
		0.078484, -0.873374, 0.480685,
		-0.972975, -0.172141, -0.153908,
		38.471802, 29.280836, 25.966114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082458, 28.696415, 25.861504>,  <39.152885, 29.401335, 26.073851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082458, 28.696415, 25.861504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753700, 28.897205, 25.753790>,  <38.556446, 29.017679, 25.689161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753700, 28.897205, 25.753790>,  <39.082458, 28.696415, 25.861504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753700, 28.897205, 25.753790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012386, -0.488361, -0.872554,
		-0.569509, -0.713809, 0.407597,
		-0.821892, 0.501975, -0.269285,
		38.507133, 29.047798, 25.673004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721344, 28.260881, 25.429918>,  <39.082458, 28.696415, 25.861504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721344, 28.260881, 25.429918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572708, 28.614386, 25.316153>,  <38.483528, 28.826488, 25.247892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572708, 28.614386, 25.316153>,  <38.721344, 28.260881, 25.429918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572708, 28.614386, 25.316153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176534, -0.233502, -0.956197,
		-0.911459, -0.405521, -0.069247,
		-0.371589, 0.883759, -0.284415,
		38.461231, 28.879513, 25.230827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440517, 28.164589, 24.805525>,  <38.721344, 28.260881, 25.429918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440517, 28.164589, 24.805525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509422, 28.558603, 24.807745>,  <38.550766, 28.795012, 24.809078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509422, 28.558603, 24.807745>,  <38.440517, 28.164589, 24.805525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509422, 28.558603, 24.807745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423784, -0.069020, -0.903130,
		-0.889232, 0.157926, -0.429332,
		0.172260, 0.985036, 0.005552,
		38.561100, 28.854115, 24.809410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288536, 28.277170, 24.177462>,  <38.440517, 28.164589, 24.805525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288536, 28.277170, 24.177462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465981, 28.623167, 24.271263>,  <38.572449, 28.830765, 24.327543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465981, 28.623167, 24.271263>,  <38.288536, 28.277170, 24.177462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465981, 28.623167, 24.271263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503714, -0.024224, -0.863531,
		-0.741269, 0.501197, -0.446456,
		0.443614, 0.864994, 0.234504,
		38.599064, 28.882666, 24.341614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120068, 28.744766, 23.685146>,  <38.288536, 28.277170, 24.177462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120068, 28.744766, 23.685146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445183, 28.909550, 23.849907>,  <38.640251, 29.008421, 23.948763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445183, 28.909550, 23.849907>,  <38.120068, 28.744766, 23.685146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445183, 28.909550, 23.849907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356697, 0.207092, -0.910978,
		-0.460588, 0.887356, 0.021378,
		0.812789, 0.411960, 0.411901,
		38.689018, 29.033138, 23.973476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221340, 29.354866, 23.332478>,  <38.120068, 28.744766, 23.685146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221340, 29.354866, 23.332478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572525, 29.272036, 23.505131>,  <38.783234, 29.222338, 23.608723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572525, 29.272036, 23.505131>,  <38.221340, 29.354866, 23.332478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572525, 29.272036, 23.505131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472756, 0.232971, -0.849839,
		0.075424, 0.950181, 0.302436,
		0.877959, -0.207077, 0.431632,
		38.835915, 29.209913, 23.634621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777336, 29.785233, 22.992155>,  <38.221340, 29.354866, 23.332478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777336, 29.785233, 22.992155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980503, 29.491461, 23.172215>,  <39.102402, 29.315197, 23.280251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980503, 29.491461, 23.172215>,  <38.777336, 29.785233, 22.992155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980503, 29.491461, 23.172215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579385, -0.095439, -0.809447,
		0.637444, 0.671941, 0.377042,
		0.507916, -0.734430, 0.450149,
		39.132877, 29.271132, 23.307259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430847, 30.032444, 23.192076>,  <38.777336, 29.785233, 22.992155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430847, 30.032444, 23.192076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462242, 29.635391, 23.155149>,  <39.481079, 29.397160, 23.132994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462242, 29.635391, 23.155149>,  <39.430847, 30.032444, 23.192076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462242, 29.635391, 23.155149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625159, 0.121141, -0.771039,
		0.776541, 0.002809, 0.630061,
		0.078492, -0.992631, -0.092315,
		39.485790, 29.337603, 23.127455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217396, 29.686857, 23.129272>,  <39.430847, 30.032444, 23.192076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217396, 29.686857, 23.129272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992062, 29.393538, 22.976997>,  <39.856861, 29.217546, 22.885633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992062, 29.393538, 22.976997>,  <40.217396, 29.686857, 23.129272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992062, 29.393538, 22.976997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689581, -0.163492, -0.705513,
		0.455113, -0.659956, 0.597772,
		-0.563338, -0.733300, -0.380686,
		39.823059, 29.173548, 22.862791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650639, 29.122200, 22.928375>,  <40.217396, 29.686857, 23.129272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650639, 29.122200, 22.928375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327339, 29.050032, 22.704166>,  <40.133362, 29.006731, 22.569641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327339, 29.050032, 22.704166>,  <40.650639, 29.122200, 22.928375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327339, 29.050032, 22.704166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572361, -0.017058, -0.819824,
		0.138352, -0.983441, 0.117053,
		-0.808246, -0.180421, -0.560524,
		40.084866, 28.995905, 22.536009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927998, 28.687532, 22.575525>,  <40.650639, 29.122200, 22.928375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927998, 28.687532, 22.575525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595257, 28.808506, 22.389385>,  <40.395611, 28.881090, 22.277700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595257, 28.808506, 22.389385>,  <40.927998, 28.687532, 22.575525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595257, 28.808506, 22.389385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458504, -0.097953, -0.883278,
		-0.312716, -0.948124, -0.057185,
		-0.831855, 0.302434, -0.465350,
		40.345699, 28.899237, 22.249781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821404, 28.331982, 21.971909>,  <40.927998, 28.687532, 22.575525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821404, 28.331982, 21.971909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613991, 28.661030, 21.878593>,  <40.489544, 28.858458, 21.822605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613991, 28.661030, 21.878593>,  <40.821404, 28.331982, 21.971909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613991, 28.661030, 21.878593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229579, -0.128873, -0.964720,
		-0.823662, -0.553796, -0.122032,
		-0.518532, 0.822619, -0.233287,
		40.458431, 28.907816, 21.808607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594662, 28.209110, 21.324184>,  <40.821404, 28.331982, 21.971909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594662, 28.209110, 21.324184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524178, 28.601494, 21.356863>,  <40.481888, 28.836924, 21.376471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524178, 28.601494, 21.356863>,  <40.594662, 28.209110, 21.324184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524178, 28.601494, 21.356863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165606, 0.111353, -0.979885,
		-0.970322, -0.159134, -0.182074,
		-0.176208, 0.980957, 0.081695,
		40.471313, 28.895781, 21.381371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108807, 28.405159, 20.823868>,  <40.594662, 28.209110, 21.324184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108807, 28.405159, 20.823868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266068, 28.759003, 20.924183>,  <40.360424, 28.971310, 20.984373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266068, 28.759003, 20.924183>,  <40.108807, 28.405159, 20.823868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266068, 28.759003, 20.924183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106660, 0.227035, -0.968028,
		-0.913265, 0.407334, -0.005092,
		0.393155, 0.884610, 0.250789,
		40.384014, 29.024385, 20.999420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835857, 28.788425, 20.355330>,  <40.108807, 28.405159, 20.823868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835857, 28.788425, 20.355330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153946, 28.987045, 20.494505>,  <40.344799, 29.106216, 20.578011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153946, 28.987045, 20.494505>,  <39.835857, 28.788425, 20.355330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153946, 28.987045, 20.494505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236148, 0.274893, -0.932023,
		-0.558441, 0.823330, 0.101342,
		0.795222, 0.496549, 0.347940,
		40.392513, 29.136009, 20.598886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980625, 29.387690, 19.918205>,  <39.835857, 28.788425, 20.355330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980625, 29.387690, 19.918205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331882, 29.404694, 20.108807>,  <40.542637, 29.414896, 20.223167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331882, 29.404694, 20.108807>,  <39.980625, 29.387690, 19.918205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331882, 29.404694, 20.108807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439713, 0.320662, -0.838945,
		-0.188460, 0.946239, 0.262895,
		0.878143, 0.042509, 0.476505,
		40.595325, 29.417446, 20.251759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281254, 30.044807, 19.730316>,  <39.980625, 29.387690, 19.918205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281254, 30.044807, 19.730316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582333, 29.799242, 19.825449>,  <40.762978, 29.651903, 19.882528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582333, 29.799242, 19.825449>,  <40.281254, 30.044807, 19.730316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582333, 29.799242, 19.825449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557763, 0.402685, -0.725772,
		0.349790, 0.678937, 0.645516,
		0.752694, -0.613913, 0.237831,
		40.808140, 29.615068, 19.896799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789539, 30.459087, 19.768375>,  <40.281254, 30.044807, 19.730316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789539, 30.459087, 19.768375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956158, 30.097824, 19.726814>,  <41.056129, 29.881065, 19.701878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956158, 30.097824, 19.726814>,  <40.789539, 30.459087, 19.768375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956158, 30.097824, 19.726814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529663, 0.333983, -0.779688,
		0.738882, 0.269743, 0.617488,
		0.416546, -0.903158, -0.103901,
		41.081123, 29.826878, 19.695644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409672, 30.613377, 19.656336>,  <40.789539, 30.459087, 19.768375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409672, 30.613377, 19.656336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392513, 30.241112, 19.510990>,  <41.382217, 30.017754, 19.423782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392513, 30.241112, 19.510990>,  <41.409672, 30.613377, 19.656336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392513, 30.241112, 19.510990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579769, 0.273009, -0.767681,
		0.813651, -0.243594, 0.527857,
		-0.042893, -0.930660, -0.363362,
		41.379646, 29.961914, 19.401981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078522, 30.528868, 19.294653>,  <41.409672, 30.613377, 19.656336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078522, 30.528868, 19.294653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847950, 30.231777, 19.158369>,  <41.709606, 30.053522, 19.076599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847950, 30.231777, 19.158369>,  <42.078522, 30.528868, 19.294653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847950, 30.231777, 19.158369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445998, 0.063407, -0.892785,
		0.684700, -0.666585, 0.294706,
		-0.576430, -0.742728, -0.340710,
		41.675022, 30.008959, 19.056156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517780, 30.029314, 19.006706>,  <42.078522, 30.528868, 19.294653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517780, 30.029314, 19.006706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163387, 29.948673, 18.839668>,  <41.950752, 29.900290, 18.739447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163387, 29.948673, 18.839668>,  <42.517780, 30.029314, 19.006706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163387, 29.948673, 18.839668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416173, 0.051481, -0.907827,
		0.204519, -0.978113, 0.038290,
		-0.885987, -0.201603, -0.417593,
		41.897591, 29.888193, 18.714390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645145, 29.453299, 18.601988>,  <42.517780, 30.029314, 19.006706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645145, 29.453299, 18.601988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325661, 29.632912, 18.441772>,  <42.133972, 29.740681, 18.345644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325661, 29.632912, 18.441772>,  <42.645145, 29.453299, 18.601988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325661, 29.632912, 18.441772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410100, -0.080878, -0.908447,
		-0.440319, -0.889847, -0.119551,
		-0.798710, 0.449034, -0.400539,
		42.086048, 29.767622, 18.321611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407429, 29.096739, 17.974300>,  <42.645145, 29.453299, 18.601988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407429, 29.096739, 17.974300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280533, 29.475786, 17.959440>,  <42.204395, 29.703215, 17.950523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280533, 29.475786, 17.959440>,  <42.407429, 29.096739, 17.974300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280533, 29.475786, 17.959440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318584, 0.069593, -0.945337,
		-0.893231, -0.311736, -0.323973,
		-0.317242, 0.947617, -0.037151,
		42.185360, 29.760071, 17.948296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971394, 29.153383, 17.348709>,  <42.407429, 29.096739, 17.974300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971394, 29.153383, 17.348709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102455, 29.514885, 17.458891>,  <42.181091, 29.731785, 17.525000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102455, 29.514885, 17.458891>,  <41.971394, 29.153383, 17.348709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102455, 29.514885, 17.458891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240382, 0.202213, -0.949382,
		-0.913707, 0.377282, -0.150991,
		0.327652, 0.903752, 0.275456,
		42.200752, 29.786011, 17.541527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768456, 29.687016, 16.881115>,  <41.971394, 29.153383, 17.348709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768456, 29.687016, 16.881115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095680, 29.854460, 17.038872>,  <42.292015, 29.954927, 17.133526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095680, 29.854460, 17.038872>,  <41.768456, 29.687016, 16.881115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095680, 29.854460, 17.038872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353237, 0.175467, -0.918931,
		-0.453879, 0.891053, -0.004327,
		0.818057, 0.418612, 0.394394,
		42.341099, 29.980043, 17.157190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929611, 30.134966, 16.327150>,  <41.768456, 29.687016, 16.881115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.929611, 30.134966, 16.327150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234058, 30.079279, 16.580549>,  <42.416725, 30.045866, 16.732588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234058, 30.079279, 16.580549>,  <41.929611, 30.134966, 16.327150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234058, 30.079279, 16.580549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646209, 0.246794, -0.722154,
		-0.055805, 0.959015, 0.277804,
		0.761117, -0.139220, 0.633497,
		42.462395, 30.037514, 16.770597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643074, 30.772137, 16.768221>,  <41.929611, 30.134966, 16.327150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643074, 30.772137, 16.768221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606518, 31.161991, 16.686504>,  <41.584583, 31.395903, 16.637474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606518, 31.161991, 16.686504>,  <41.643074, 30.772137, 16.768221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606518, 31.161991, 16.686504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126513, -0.192124, -0.973182,
		-0.987746, -0.114782, -0.105746,
		-0.091387, 0.974635, -0.204292,
		41.579102, 31.454382, 16.625217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117870, 30.829094, 16.301630>,  <41.643074, 30.772137, 16.768221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117870, 30.829094, 16.301630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339966, 31.158361, 16.254129>,  <41.473225, 31.355923, 16.225630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339966, 31.158361, 16.254129>,  <41.117870, 30.829094, 16.301630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339966, 31.158361, 16.254129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131674, -0.227988, -0.964720,
		-0.821200, 0.520015, -0.234978,
		0.555241, 0.823168, -0.118751,
		41.506538, 31.405312, 16.218504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884308, 31.244825, 15.659600>,  <41.117870, 30.829094, 16.301630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884308, 31.244825, 15.659600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273342, 31.287577, 15.742208>,  <41.506763, 31.313227, 15.791773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273342, 31.287577, 15.742208>,  <40.884308, 31.244825, 15.659600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273342, 31.287577, 15.742208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232397, -0.415881, -0.879224,
		-0.008082, 0.903117, -0.429319,
		0.972588, 0.106878, 0.206520,
		41.565117, 31.319641, 15.804165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412354, 31.633818, 15.181216>,  <40.884308, 31.244825, 15.659600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412354, 31.633818, 15.181216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567402, 31.311184, 15.359732>,  <41.660431, 31.117603, 15.466841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567402, 31.311184, 15.359732>,  <41.412354, 31.633818, 15.181216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567402, 31.311184, 15.359732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323725, -0.334195, -0.885164,
		0.863106, 0.487582, 0.131571,
		0.387620, -0.806584, 0.446288,
		41.683689, 31.069208, 15.493618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155380, 31.545025, 14.988317>,  <41.412354, 31.633818, 15.181216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155380, 31.545025, 14.988317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943172, 31.211912, 15.051593>,  <41.815849, 31.012043, 15.089558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943172, 31.211912, 15.051593>,  <42.155380, 31.545025, 14.988317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943172, 31.211912, 15.051593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163036, -0.283373, -0.945049,
		0.831848, -0.475573, 0.286108,
		-0.530516, -0.832784, 0.158188,
		41.784019, 30.962076, 15.099050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421772, 31.972420, 15.557884>,  <42.155380, 31.545025, 14.988317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421772, 31.972420, 15.557884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036293, 31.919678, 15.650743>,  <41.805004, 31.888033, 15.706459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036293, 31.919678, 15.650743>,  <42.421772, 31.972420, 15.557884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036293, 31.919678, 15.650743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197231, 0.234440, 0.951913,
		-0.179940, 0.963147, -0.199924,
		-0.963702, -0.131856, 0.232147,
		41.747181, 31.880121, 15.720387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079933, 32.505512, 16.041748>,  <42.421772, 31.972420, 15.557884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079933, 32.505512, 16.041748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883163, 32.159061, 16.077147>,  <41.765102, 31.951191, 16.098385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883163, 32.159061, 16.077147>,  <42.079933, 32.505512, 16.041748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883163, 32.159061, 16.077147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144610, 0.181514, 0.972698,
		-0.858546, 0.465694, -0.214541,
		-0.491922, -0.866130, 0.088494,
		41.735588, 31.899223, 16.103695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459671, 32.716705, 16.360477>,  <42.079933, 32.505512, 16.041748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459671, 32.716705, 16.360477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515423, 32.327480, 16.433931>,  <41.548874, 32.093945, 16.478003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515423, 32.327480, 16.433931>,  <41.459671, 32.716705, 16.360477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515423, 32.327480, 16.433931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230504, 0.148467, 0.961679,
		-0.963038, -0.176366, -0.203601,
		0.139379, -0.973063, 0.183633,
		41.557236, 32.035561, 16.489021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863865, 32.525402, 16.724991>,  <41.459671, 32.716705, 16.360477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863865, 32.525402, 16.724991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114132, 32.227661, 16.818359>,  <41.264290, 32.049015, 16.874380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114132, 32.227661, 16.818359>,  <40.863865, 32.525402, 16.724991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114132, 32.227661, 16.818359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286267, 0.059268, 0.956315,
		-0.725668, -0.665153, -0.176002,
		0.625665, -0.744351, 0.233420,
		41.301830, 32.004356, 16.888386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509346, 31.950516, 17.130365>,  <40.863865, 32.525402, 16.724991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509346, 31.950516, 17.130365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902271, 31.941439, 17.204702>,  <41.138027, 31.935993, 17.249306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902271, 31.941439, 17.204702>,  <40.509346, 31.950516, 17.130365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902271, 31.941439, 17.204702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186850, -0.056111, 0.980785,
		-0.011822, -0.998167, -0.059357,
		0.982317, -0.022685, 0.185844,
		41.196968, 31.934631, 17.260456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567623, 31.525625, 17.729437>,  <40.509346, 31.950516, 17.130365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567623, 31.525625, 17.729437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927662, 31.699791, 17.723291>,  <41.143684, 31.804291, 17.719604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927662, 31.699791, 17.723291>,  <40.567623, 31.525625, 17.729437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927662, 31.699791, 17.723291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054308, 0.147117, 0.987627,
		0.432288, -0.888127, 0.156067,
		0.900099, 0.435415, -0.015365,
		41.197693, 31.830416, 17.718681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970612, 31.167505, 18.243395>,  <40.567623, 31.525625, 17.729437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970612, 31.167505, 18.243395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139359, 31.525900, 18.187925>,  <41.240608, 31.740936, 18.154644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139359, 31.525900, 18.187925>,  <40.970612, 31.167505, 18.243395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139359, 31.525900, 18.187925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027407, 0.165485, 0.985831,
		0.906242, -0.412093, 0.094370,
		0.421871, 0.895988, -0.138675,
		41.265919, 31.794697, 18.146322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581829, 31.206242, 18.802332>,  <40.970612, 31.167505, 18.243395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581829, 31.206242, 18.802332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500019, 31.576296, 18.674397>,  <41.450932, 31.798328, 18.597635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500019, 31.576296, 18.674397>,  <41.581829, 31.206242, 18.802332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500019, 31.576296, 18.674397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046120, 0.317277, 0.947211,
		0.977774, 0.208480, -0.022224,
		-0.204525, 0.925133, -0.319840,
		41.438660, 31.853836, 18.578445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078007, 31.671505, 19.069431>,  <41.581829, 31.206242, 18.802332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078007, 31.671505, 19.069431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760105, 31.899372, 18.985676>,  <41.569363, 32.036091, 18.935423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760105, 31.899372, 18.985676>,  <42.078007, 31.671505, 19.069431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760105, 31.899372, 18.985676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001572, 0.346927, 0.937891,
		0.606926, 0.745066, -0.276617,
		-0.794757, 0.569665, -0.209388,
		41.521679, 32.070271, 18.922859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227001, 32.337753, 19.338741>,  <42.078007, 31.671505, 19.069431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227001, 32.337753, 19.338741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829132, 32.354279, 19.300978>,  <41.590408, 32.364193, 19.278320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829132, 32.354279, 19.300978>,  <42.227001, 32.337753, 19.338741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829132, 32.354279, 19.300978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078014, 0.296698, 0.951780,
		0.067332, 0.954078, -0.291895,
		-0.994676, 0.041313, -0.094409,
		41.530731, 32.366673, 19.272655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986080, 32.951225, 19.687830>,  <42.227001, 32.337753, 19.338741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986080, 32.951225, 19.687830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668842, 32.707584, 19.687279>,  <41.478500, 32.561401, 19.686949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668842, 32.707584, 19.687279>,  <41.986080, 32.951225, 19.687830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668842, 32.707584, 19.687279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177405, 0.228826, 0.957166,
		-0.582697, 0.759363, -0.289537,
		-0.793090, -0.609103, -0.001378,
		41.430916, 32.524853, 19.686865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725830, 33.041584, 20.336729>,  <41.986080, 32.951225, 19.687830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725830, 33.041584, 20.336729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491306, 32.733860, 20.235218>,  <41.350594, 32.549225, 20.174311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491306, 32.733860, 20.235218>,  <41.725830, 33.041584, 20.336729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491306, 32.733860, 20.235218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452030, 0.050723, 0.890559,
		-0.672246, 0.636856, -0.377492,
		-0.586306, -0.769313, -0.253779,
		41.315414, 32.503067, 20.159084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927460, 33.176571, 20.364397>,  <41.725830, 33.041584, 20.336729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927460, 33.176571, 20.364397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977482, 32.781845, 20.405500>,  <41.007496, 32.545010, 20.430162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977482, 32.781845, 20.405500>,  <40.927460, 33.176571, 20.364397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977482, 32.781845, 20.405500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645109, -0.002186, 0.764088,
		-0.753788, -0.161842, -0.636876,
		0.125053, -0.986814, 0.102758,
		41.014999, 32.485802, 20.436327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261780, 32.918240, 20.520508>,  <40.927460, 33.176571, 20.364397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261780, 32.918240, 20.520508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520481, 32.637821, 20.640673>,  <40.675701, 32.469570, 20.712772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520481, 32.637821, 20.640673>,  <40.261780, 32.918240, 20.520508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520481, 32.637821, 20.640673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567168, -0.178726, 0.803976,
		-0.509930, -0.690358, -0.513202,
		0.646754, -0.701044, 0.300412,
		40.714508, 32.427509, 20.730797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815922, 32.438313, 20.800186>,  <40.261780, 32.918240, 20.520508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815922, 32.438313, 20.800186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178963, 32.368603, 20.952965>,  <40.396786, 32.326775, 21.044632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178963, 32.368603, 20.952965>,  <39.815922, 32.438313, 20.800186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178963, 32.368603, 20.952965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416824, -0.265391, 0.869382,
		-0.050148, -0.948259, -0.313512,
		0.907603, -0.174277, 0.381948,
		40.451244, 32.316319, 21.067549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703152, 31.843901, 21.306700>,  <39.815922, 32.438313, 20.800186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703152, 31.843901, 21.306700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054398, 31.991436, 21.428600>,  <40.265144, 32.079956, 21.501741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054398, 31.991436, 21.428600>,  <39.703152, 31.843901, 21.306700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054398, 31.991436, 21.428600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283840, -0.111172, 0.952405,
		0.385164, -0.922821, 0.007070,
		0.878113, 0.368839, 0.304753,
		40.317833, 32.102089, 21.520027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086056, 31.358526, 21.695114>,  <39.703152, 31.843901, 21.306700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086056, 31.358526, 21.695114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221607, 31.712616, 21.822577>,  <40.302937, 31.925070, 21.899054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221607, 31.712616, 21.822577>,  <40.086056, 31.358526, 21.695114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221607, 31.712616, 21.822577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268276, -0.233716, 0.934561,
		0.901770, -0.402191, 0.158283,
		0.338879, 0.885222, 0.318657,
		40.323273, 31.978182, 21.918173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413929, 31.243666, 22.336140>,  <40.086056, 31.358526, 21.695114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413929, 31.243666, 22.336140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313694, 31.630836, 22.343334>,  <40.253551, 31.863138, 22.347651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313694, 31.630836, 22.343334>,  <40.413929, 31.243666, 22.336140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313694, 31.630836, 22.343334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253131, -0.083442, 0.963827,
		0.934414, 0.236973, 0.265922,
		-0.250590, 0.967927, 0.017984,
		40.238518, 31.921215, 22.348730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539913, 31.378962, 23.036755>,  <40.413929, 31.243666, 22.336140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539913, 31.378962, 23.036755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306927, 31.679045, 22.911583>,  <40.167133, 31.859095, 22.836481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306927, 31.679045, 22.911583>,  <40.539913, 31.378962, 23.036755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306927, 31.679045, 22.911583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427172, 0.045021, 0.903049,
		0.691561, 0.659669, 0.294244,
		-0.582466, 0.750207, -0.312927,
		40.132187, 31.904106, 22.817705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595383, 31.980900, 23.589565>,  <40.539913, 31.378962, 23.036755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595383, 31.980900, 23.589565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285759, 32.057777, 23.348272>,  <40.099983, 32.103905, 23.203497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285759, 32.057777, 23.348272>,  <40.595383, 31.980900, 23.589565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285759, 32.057777, 23.348272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546350, 0.278648, 0.789846,
		0.319894, 0.940966, -0.110685,
		-0.774060, 0.192195, -0.603234,
		40.053539, 32.115437, 23.167301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338787, 32.700535, 23.716578>,  <40.595383, 31.980900, 23.589565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338787, 32.700535, 23.716578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037228, 32.500271, 23.546410>,  <39.856293, 32.380112, 23.444309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037228, 32.500271, 23.546410>,  <40.338787, 32.700535, 23.716578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037228, 32.500271, 23.546410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599568, 0.259543, 0.757071,
		-0.268618, 0.825821, -0.495847,
		-0.753898, -0.500656, -0.425418,
		39.811058, 32.350075, 23.418783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784008, 33.085953, 23.738243>,  <40.338787, 32.700535, 23.716578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784008, 33.085953, 23.738243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613594, 32.726711, 23.694592>,  <39.511345, 32.511166, 23.668402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613594, 32.726711, 23.694592>,  <39.784008, 33.085953, 23.738243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613594, 32.726711, 23.694592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574520, 0.175391, 0.799478,
		-0.698873, 0.403298, -0.590700,
		-0.426031, -0.898102, -0.109127,
		39.485786, 32.457279, 23.661854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971886, 33.231010, 23.902082>,  <39.784008, 33.085953, 23.738243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971886, 33.231010, 23.902082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052593, 32.843201, 23.957676>,  <39.101017, 32.610516, 23.991032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052593, 32.843201, 23.957676>,  <38.971886, 33.231010, 23.902082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052593, 32.843201, 23.957676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550743, 0.005034, 0.834660,
		-0.809921, -0.244950, -0.532942,
		0.201767, -0.969523, 0.138981,
		39.113125, 32.552345, 23.999371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405617, 33.063187, 24.203548>,  <38.971886, 33.231010, 23.902082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405617, 33.063187, 24.203548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612957, 32.726963, 24.266512>,  <38.737362, 32.525230, 24.304289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612957, 32.726963, 24.266512>,  <38.405617, 33.063187, 24.203548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612957, 32.726963, 24.266512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569052, -0.201630, 0.797198,
		-0.638355, -0.502797, -0.582837,
		0.518346, -0.840560, 0.157406,
		38.768459, 32.474796, 24.313734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015701, 32.450413, 24.135464>,  <38.405617, 33.063187, 24.203548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015701, 32.450413, 24.135464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296307, 32.357338, 24.404903>,  <38.464668, 32.301495, 24.566568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296307, 32.357338, 24.404903>,  <38.015701, 32.450413, 24.135464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296307, 32.357338, 24.404903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711677, -0.278282, 0.645039,
		0.037360, -0.931889, -0.360814,
		0.701513, -0.232685, 0.673600,
		38.506760, 32.287533, 24.606983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705162, 31.886751, 24.423241>,  <38.015701, 32.450413, 24.135464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705162, 31.886751, 24.423241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010204, 31.925470, 24.679075>,  <38.193230, 31.948702, 24.832575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010204, 31.925470, 24.679075>,  <37.705162, 31.886751, 24.423241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010204, 31.925470, 24.679075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603363, -0.250038, 0.757254,
		0.233221, -0.963386, -0.132275,
		0.762602, 0.096797, 0.639585,
		38.238983, 31.954510, 24.870951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720936, 31.219776, 24.845984>,  <37.705162, 31.886751, 24.423241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720936, 31.219776, 24.845984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906219, 31.510712, 25.048532>,  <38.017391, 31.685272, 25.170061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906219, 31.510712, 25.048532>,  <37.720936, 31.219776, 24.845984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906219, 31.510712, 25.048532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523467, -0.236506, 0.818564,
		0.715134, -0.644238, 0.271185,
		0.463213, 0.727340, 0.506371,
		38.045185, 31.728914, 25.200443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047886, 30.964008, 25.514736>,  <37.720936, 31.219776, 24.845984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047886, 30.964008, 25.514736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004623, 31.359198, 25.558941>,  <37.978664, 31.596312, 25.585464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004623, 31.359198, 25.558941>,  <38.047886, 30.964008, 25.514736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004623, 31.359198, 25.558941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456910, -0.148128, 0.877093,
		0.882913, 0.044368, 0.467435,
		-0.108155, 0.987972, 0.110512,
		37.972176, 31.655590, 25.592094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138386, 31.075117, 26.232330>,  <38.047886, 30.964008, 25.514736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138386, 31.075117, 26.232330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985451, 31.412249, 26.080826>,  <37.893692, 31.614527, 25.989923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985451, 31.412249, 26.080826>,  <38.138386, 31.075117, 26.232330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985451, 31.412249, 26.080826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617992, 0.071502, 0.782926,
		0.686955, 0.533411, 0.493523,
		-0.382334, 0.842828, -0.378763,
		37.870750, 31.665096, 25.967197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075500, 31.558422, 26.808802>,  <38.138386, 31.075117, 26.232330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075500, 31.558422, 26.808802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808796, 31.671766, 26.533081>,  <37.648773, 31.739773, 26.367649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808796, 31.671766, 26.533081>,  <38.075500, 31.558422, 26.808802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808796, 31.671766, 26.533081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702320, 0.070555, 0.708356,
		0.249354, 0.956414, 0.151967,
		-0.666760, 0.283361, -0.689302,
		37.608768, 31.756775, 26.326290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813602, 32.085052, 27.085899>,  <38.075500, 31.558422, 26.808802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813602, 32.085052, 27.085899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553146, 31.956417, 26.810915>,  <37.396873, 31.879236, 26.645926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553146, 31.956417, 26.810915>,  <37.813602, 32.085052, 27.085899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553146, 31.956417, 26.810915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751145, 0.143428, 0.644367,
		-0.108618, 0.935955, -0.334949,
		-0.651140, -0.321585, -0.687459,
		37.357803, 31.859941, 26.604677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246086, 32.610779, 27.141350>,  <37.813602, 32.085052, 27.085899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246086, 32.610779, 27.141350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098911, 32.276196, 26.978891>,  <37.010609, 32.075443, 26.881416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098911, 32.276196, 26.978891>,  <37.246086, 32.610779, 27.141350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098911, 32.276196, 26.978891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730077, -0.010632, 0.683283,
		-0.575858, 0.547921, -0.606770,
		-0.367934, -0.836462, -0.406147,
		36.988533, 32.025257, 26.857048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572895, 32.729195, 27.192587>,  <37.246086, 32.610779, 27.141350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572895, 32.729195, 27.192587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632870, 32.334370, 27.169842>,  <36.668854, 32.097477, 27.156195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632870, 32.334370, 27.169842>,  <36.572895, 32.729195, 27.192587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632870, 32.334370, 27.169842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668090, -0.143547, 0.730102,
		-0.728816, -0.071482, -0.680968,
		0.149940, -0.987059, -0.056863,
		36.677853, 32.038254, 27.152782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937489, 32.406040, 27.078083>,  <36.572895, 32.729195, 27.192587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937489, 32.406040, 27.078083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159882, 32.117065, 27.242502>,  <36.293320, 31.943680, 27.341154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159882, 32.117065, 27.242502>,  <35.937489, 32.406040, 27.078083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159882, 32.117065, 27.242502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709512, -0.154893, 0.687459,
		-0.432981, -0.673860, -0.598699,
		0.555986, -0.722441, 0.411046,
		36.326679, 31.900333, 27.365816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502865, 31.946369, 27.264065>,  <35.937489, 32.406040, 27.078083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502865, 31.946369, 27.264065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812817, 31.834789, 27.490955>,  <35.998787, 31.767841, 27.627089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812817, 31.834789, 27.490955>,  <35.502865, 31.946369, 27.264065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812817, 31.834789, 27.490955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631307, -0.386607, 0.672300,
		0.031757, -0.879047, -0.475676,
		0.774883, -0.278948, 0.567226,
		36.045280, 31.751104, 27.661123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280746, 31.215025, 27.666998>,  <35.502865, 31.946369, 27.264065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280746, 31.215025, 27.666998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588364, 31.386505, 27.856649>,  <35.772934, 31.489393, 27.970440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588364, 31.386505, 27.856649>,  <35.280746, 31.215025, 27.666998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588364, 31.386505, 27.856649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371691, -0.303529, 0.877334,
		0.520024, -0.850933, -0.074082,
		0.769039, 0.428699, 0.474127,
		35.819077, 31.515116, 27.998888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428925, 30.746901, 28.132132>,  <35.280746, 31.215025, 27.666998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428925, 30.746901, 28.132132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588234, 31.065203, 28.314625>,  <35.683819, 31.256184, 28.424120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588234, 31.065203, 28.314625>,  <35.428925, 30.746901, 28.132132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588234, 31.065203, 28.314625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364572, -0.319083, 0.874799,
		0.841703, -0.514741, 0.163027,
		0.398275, 0.795756, 0.456233,
		35.707718, 31.303930, 28.451494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677578, 30.501774, 28.783546>,  <35.428925, 30.746901, 28.132132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677578, 30.501774, 28.783546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637531, 30.897532, 28.825636>,  <35.613503, 31.134987, 28.850889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637531, 30.897532, 28.825636>,  <35.677578, 30.501774, 28.783546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637531, 30.897532, 28.825636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366793, -0.135006, 0.920455,
		0.924900, 0.053556, 0.376419,
		-0.100115, 0.989396, 0.105223,
		35.607498, 31.194351, 28.857203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682678, 30.644712, 29.518373>,  <35.677578, 30.501774, 28.783546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682678, 30.644712, 29.518373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522129, 30.979496, 29.369568>,  <35.425800, 31.180367, 29.280285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522129, 30.979496, 29.369568>,  <35.682678, 30.644712, 29.518373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522129, 30.979496, 29.369568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615090, 0.054637, 0.786562,
		0.678647, 0.544529, 0.492875,
		-0.401377, 0.836960, -0.372014,
		35.401714, 31.230583, 29.257963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615135, 31.029881, 30.134228>,  <35.682678, 30.644712, 29.518373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615135, 31.029881, 30.134228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378391, 31.196487, 29.858192>,  <35.236347, 31.296452, 29.692572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378391, 31.196487, 29.858192>,  <35.615135, 31.029881, 30.134228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378391, 31.196487, 29.858192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670255, 0.221250, 0.708384,
		0.447734, 0.881796, 0.148223,
		-0.591855, 0.416515, -0.690089,
		35.200836, 31.321442, 29.651165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398476, 31.680305, 30.388437>,  <35.615135, 31.029881, 30.134228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398476, 31.680305, 30.388437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128948, 31.619616, 30.099176>,  <34.967232, 31.583202, 29.925619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128948, 31.619616, 30.099176>,  <35.398476, 31.680305, 30.388437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128948, 31.619616, 30.099176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719503, 0.357495, 0.595410,
		0.168186, 0.921508, -0.350052,
		-0.673817, -0.151724, -0.723153,
		34.926804, 31.574099, 29.882231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989693, 32.290653, 30.330320>,  <35.398476, 31.680305, 30.388437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989693, 32.290653, 30.330320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776798, 31.984348, 30.185915>,  <34.649059, 31.800566, 30.099272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776798, 31.984348, 30.185915>,  <34.989693, 32.290653, 30.330320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776798, 31.984348, 30.185915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771073, 0.262417, 0.580159,
		-0.349527, 0.587152, -0.730126,
		-0.532239, -0.765762, -0.361015,
		34.617126, 31.754620, 30.077610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716080, 32.304066, 30.181007>,  <34.989693, 32.290653, 30.330320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716080, 32.304066, 30.181007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029205, 32.409908, 30.406286>,  <36.217079, 32.473415, 30.541452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029205, 32.409908, 30.406286>,  <35.716080, 32.304066, 30.181007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029205, 32.409908, 30.406286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509847, 0.246135, -0.824302,
		-0.356740, 0.932416, 0.057767,
		0.782810, 0.264609, 0.563196,
		36.264050, 32.489292, 30.575245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001934, 32.806919, 29.830267>,  <35.716080, 32.304066, 30.181007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001934, 32.806919, 29.830267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287315, 32.706554, 30.091963>,  <36.458546, 32.646336, 30.248980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287315, 32.706554, 30.091963>,  <36.001934, 32.806919, 29.830267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287315, 32.706554, 30.091963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678213, 0.481931, -0.554770,
		-0.176102, 0.839517, 0.514004,
		0.713453, -0.250907, 0.654240,
		36.501350, 32.631283, 30.288235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404083, 33.408211, 30.052237>,  <36.001934, 32.806919, 29.830267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404083, 33.408211, 30.052237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658581, 33.105560, 30.112514>,  <36.811279, 32.923969, 30.148682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658581, 33.105560, 30.112514>,  <36.404083, 33.408211, 30.052237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658581, 33.105560, 30.112514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750491, 0.561734, -0.348164,
		0.178781, 0.334611, 0.925242,
		0.636239, -0.756631, 0.150695,
		36.849453, 32.878571, 30.157722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989979, 33.730019, 30.403191>,  <36.404083, 33.408211, 30.052237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989979, 33.730019, 30.403191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101437, 33.386124, 30.231979>,  <37.168312, 33.179787, 30.129253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101437, 33.386124, 30.231979>,  <36.989979, 33.730019, 30.403191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101437, 33.386124, 30.231979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791571, 0.457968, -0.404575,
		0.543852, -0.226083, 0.808153,
		0.278640, -0.859740, -0.428027,
		37.185028, 33.128201, 30.103571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626831, 33.750496, 30.493614>,  <36.989979, 33.730019, 30.403191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626831, 33.750496, 30.493614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598804, 33.483551, 30.197041>,  <37.581989, 33.323383, 30.019096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598804, 33.483551, 30.197041>,  <37.626831, 33.750496, 30.493614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598804, 33.483551, 30.197041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765634, 0.440469, -0.468820,
		0.639449, -0.600516, 0.480090,
		-0.070069, -0.667359, -0.741432,
		37.577785, 33.283344, 29.974611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231430, 33.596119, 30.259371>,  <37.626831, 33.750496, 30.493614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231430, 33.596119, 30.259371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058304, 33.455334, 29.927395>,  <37.954430, 33.370865, 29.728210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058304, 33.455334, 29.927395>,  <38.231430, 33.596119, 30.259371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058304, 33.455334, 29.927395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840644, 0.174901, -0.512569,
		0.325562, -0.919529, 0.220174,
		-0.432813, -0.351961, -0.829938,
		37.928459, 33.349747, 29.678413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772469, 33.080944, 29.952099>,  <38.231430, 33.596119, 30.259371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772469, 33.080944, 29.952099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513565, 33.210796, 29.676222>,  <38.358223, 33.288708, 29.510696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513565, 33.210796, 29.676222>,  <38.772469, 33.080944, 29.952099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513565, 33.210796, 29.676222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759116, 0.192251, -0.621918,
		-0.069300, -0.926096, -0.370868,
		-0.647256, 0.324631, -0.689692,
		38.319389, 33.308186, 29.469315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970280, 32.735371, 29.302666>,  <38.772469, 33.080944, 29.952099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970280, 32.735371, 29.302666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754196, 33.059986, 29.213598>,  <38.624546, 33.254753, 29.160158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754196, 33.059986, 29.213598>,  <38.970280, 32.735371, 29.302666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754196, 33.059986, 29.213598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701991, 0.288649, -0.651069,
		-0.464092, -0.508027, -0.725622,
		-0.540210, 0.811536, -0.222671,
		38.592133, 33.303448, 29.146797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770153, 32.704216, 28.513834>,  <38.970280, 32.735371, 29.302666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770153, 32.704216, 28.513834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758171, 33.090511, 28.616945>,  <38.750984, 33.322289, 28.678812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758171, 33.090511, 28.616945>,  <38.770153, 32.704216, 28.513834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758171, 33.090511, 28.616945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527448, 0.234337, -0.816630,
		-0.849059, 0.111507, -0.516396,
		-0.029951, 0.965739, 0.257780,
		38.749187, 33.380234, 28.694279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533619, 33.034161, 27.929737>,  <38.770153, 32.704216, 28.513834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533619, 33.034161, 27.929737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676914, 33.330223, 28.157364>,  <38.762890, 33.507862, 28.293940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676914, 33.330223, 28.157364>,  <38.533619, 33.034161, 27.929737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676914, 33.330223, 28.157364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627765, 0.260205, -0.733624,
		-0.691070, 0.620051, -0.371429,
		0.358237, 0.740155, 0.569066,
		38.784386, 33.552269, 28.328083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583199, 33.526585, 27.522060>,  <38.533619, 33.034161, 27.929737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583199, 33.526585, 27.522060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844604, 33.633835, 27.805195>,  <39.001446, 33.698185, 27.975077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844604, 33.633835, 27.805195>,  <38.583199, 33.526585, 27.522060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844604, 33.633835, 27.805195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656432, 0.264840, -0.706369,
		-0.376856, 0.926267, -0.002927,
		0.653511, 0.268121, 0.707838,
		39.040657, 33.714272, 28.017546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781078, 34.167694, 27.399239>,  <38.583199, 33.526585, 27.522060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781078, 34.167694, 27.399239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082550, 34.019821, 27.616604>,  <39.263435, 33.931099, 27.747023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082550, 34.019821, 27.616604>,  <38.781078, 34.167694, 27.399239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082550, 34.019821, 27.616604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646154, 0.265569, -0.715512,
		0.120197, 0.890398, 0.439026,
		0.753683, -0.369680, 0.543414,
		39.308655, 33.908916, 27.779629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292019, 34.672913, 27.350336>,  <38.781078, 34.167694, 27.399239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292019, 34.672913, 27.350336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481468, 34.343819, 27.476063>,  <39.595139, 34.146362, 27.551498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481468, 34.343819, 27.476063>,  <39.292019, 34.672913, 27.350336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481468, 34.343819, 27.476063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738205, 0.176190, -0.651161,
		0.480352, 0.540433, 0.690793,
		0.473619, -0.822733, 0.314317,
		39.623554, 34.097000, 27.570358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002579, 34.879612, 27.501102>,  <39.292019, 34.672913, 27.350336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002579, 34.879612, 27.501102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996552, 34.490673, 27.407881>,  <39.992935, 34.257309, 27.351948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996552, 34.490673, 27.407881>,  <40.002579, 34.879612, 27.501102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996552, 34.490673, 27.407881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734546, 0.147375, -0.662361,
		0.678391, -0.181166, 0.712014,
		-0.015064, -0.972347, -0.233053,
		39.992031, 34.198967, 27.337965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682079, 34.840870, 27.314379>,  <40.002579, 34.879612, 27.501102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682079, 34.840870, 27.314379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501911, 34.507267, 27.186905>,  <40.393810, 34.307106, 27.110420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501911, 34.507267, 27.186905>,  <40.682079, 34.840870, 27.314379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501911, 34.507267, 27.186905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590362, -0.010441, -0.807071,
		0.669772, -0.551660, 0.497067,
		-0.450419, -0.834003, -0.318687,
		40.366787, 34.257065, 27.091299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219158, 34.324688, 27.107302>,  <40.682079, 34.840870, 27.314379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219158, 34.324688, 27.107302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892841, 34.218212, 26.901922>,  <40.697052, 34.154327, 26.778694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892841, 34.218212, 26.901922>,  <41.219158, 34.324688, 27.107302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892841, 34.218212, 26.901922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561195, -0.149739, -0.814026,
		0.139798, -0.952220, 0.271537,
		-0.815792, -0.266185, -0.513448,
		40.648106, 34.138355, 26.747889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465797, 33.779823, 26.706852>,  <41.219158, 34.324688, 27.107302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465797, 33.779823, 26.706852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133701, 33.810760, 26.486044>,  <40.934444, 33.829323, 26.353559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133701, 33.810760, 26.486044>,  <41.465797, 33.779823, 26.706852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133701, 33.810760, 26.486044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523791, -0.230477, -0.820075,
		-0.190649, -0.970000, 0.150843,
		-0.830238, 0.077336, -0.552017,
		40.884628, 33.833961, 26.320438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414906, 33.247154, 26.242695>,  <41.465797, 33.779823, 26.706852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414906, 33.247154, 26.242695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165565, 33.514763, 26.080784>,  <41.015961, 33.675327, 25.983637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165565, 33.514763, 26.080784>,  <41.414906, 33.247154, 26.242695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165565, 33.514763, 26.080784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212166, -0.353525, -0.911047,
		-0.752609, -0.653780, 0.078426,
		-0.623350, 0.669023, -0.404776,
		40.978561, 33.715469, 25.959351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195694, 32.963554, 25.708900>,  <41.414906, 33.247154, 26.242695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195694, 32.963554, 25.708900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115715, 33.346100, 25.623676>,  <41.067730, 33.575626, 25.572542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115715, 33.346100, 25.623676>,  <41.195694, 32.963554, 25.708900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115715, 33.346100, 25.623676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331914, -0.138482, -0.933089,
		-0.921876, -0.257283, -0.289742,
		-0.199944, 0.956362, -0.213059,
		41.055733, 33.633007, 25.559759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803654, 33.020672, 25.067938>,  <41.195694, 32.963554, 25.708900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803654, 33.020672, 25.067938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979378, 33.378098, 25.104918>,  <41.084812, 33.592552, 25.127106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979378, 33.378098, 25.104918>,  <40.803654, 33.020672, 25.067938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979378, 33.378098, 25.104918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252298, -0.023953, -0.967353,
		-0.862180, 0.448290, -0.235968,
		0.439307, 0.893567, 0.092451,
		41.111172, 33.646168, 25.132652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511471, 33.425674, 24.473707>,  <40.803654, 33.020672, 25.067938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511471, 33.425674, 24.473707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849827, 33.600773, 24.595596>,  <41.052841, 33.705833, 24.668730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849827, 33.600773, 24.595596>,  <40.511471, 33.425674, 24.473707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849827, 33.600773, 24.595596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252602, 0.174392, -0.951725,
		-0.469755, 0.882024, 0.036940,
		0.845886, 0.437746, 0.304722,
		41.103592, 33.732098, 24.687014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594658, 33.897640, 24.103960>,  <40.511471, 33.425674, 24.473707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594658, 33.897640, 24.103960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975815, 33.859207, 24.219036>,  <41.204510, 33.836147, 24.288082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975815, 33.859207, 24.219036>,  <40.594658, 33.897640, 24.103960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975815, 33.859207, 24.219036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302623, 0.237361, -0.923081,
		0.020409, 0.966658, 0.255257,
		0.952892, -0.096086, 0.287688,
		41.261681, 33.830379, 24.305342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974888, 34.488586, 23.913019>,  <40.594658, 33.897640, 24.103960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974888, 34.488586, 23.913019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246212, 34.202477, 23.980276>,  <41.409008, 34.030811, 24.020630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246212, 34.202477, 23.980276>,  <40.974888, 34.488586, 23.913019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246212, 34.202477, 23.980276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351594, 0.115028, -0.929059,
		0.645194, 0.689309, 0.329512,
		0.678312, -0.715278, 0.168141,
		41.449707, 33.987892, 24.030718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555504, 34.654373, 23.562531>,  <40.974888, 34.488586, 23.913019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555504, 34.654373, 23.562531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641769, 34.267380, 23.615398>,  <41.693527, 34.035183, 23.647120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641769, 34.267380, 23.615398>,  <41.555504, 34.654373, 23.562531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641769, 34.267380, 23.615398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373918, -0.043215, -0.926454,
		0.902039, 0.249223, 0.352439,
		0.215663, -0.967481, 0.132171,
		41.706467, 33.977135, 23.655050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284084, 34.542480, 23.334776>,  <41.555504, 34.654373, 23.562531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284084, 34.542480, 23.334776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162457, 34.162472, 23.363049>,  <42.089478, 33.934467, 23.380013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162457, 34.162472, 23.363049>,  <42.284084, 34.542480, 23.334776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162457, 34.162472, 23.363049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601539, -0.249007, -0.759043,
		0.738710, -0.188285, 0.647192,
		-0.304071, -0.950023, 0.070683,
		42.071236, 33.877464, 23.384254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869404, 34.141075, 23.473930>,  <42.284084, 34.542480, 23.334776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869404, 34.141075, 23.473930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.610603, 33.909702, 23.275213>,  <42.455322, 33.770878, 23.155983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.610603, 33.909702, 23.275213>,  <42.869404, 34.141075, 23.473930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610603, 33.909702, 23.275213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620933, -0.021563, -0.783568,
		0.442532, -0.815442, 0.373122,
		-0.647000, -0.578437, -0.496792,
		42.416504, 33.736172, 23.126175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203125, 33.629375, 23.231672>,  <42.869404, 34.141075, 23.473930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203125, 33.629375, 23.231672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886482, 33.615520, 22.987656>,  <42.696495, 33.607208, 22.841246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886482, 33.615520, 22.987656>,  <43.203125, 33.629375, 23.231672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886482, 33.615520, 22.987656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610034, 0.012058, -0.792284,
		0.034804, -0.999327, 0.011589,
		-0.791611, -0.034644, -0.610043,
		42.648998, 33.605129, 22.804644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319614, 33.047310, 22.824863>,  <43.203125, 33.629375, 23.231672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319614, 33.047310, 22.824863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071308, 33.251331, 22.586704>,  <42.922325, 33.373745, 22.443810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071308, 33.251331, 22.586704>,  <43.319614, 33.047310, 22.824863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071308, 33.251331, 22.586704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565679, -0.234426, -0.790602,
		-0.542828, -0.827579, -0.143006,
		-0.620762, 0.510056, -0.595397,
		42.885078, 33.404346, 22.408085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324390, 32.743816, 22.271797>,  <43.319614, 33.047310, 22.824863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324390, 32.743816, 22.271797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183136, 33.091175, 22.132551>,  <43.098381, 33.299591, 22.049004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183136, 33.091175, 22.132551>,  <43.324390, 32.743816, 22.271797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183136, 33.091175, 22.132551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465092, -0.159909, -0.870700,
		-0.811778, -0.469384, -0.347413,
		-0.353138, 0.868394, -0.348117,
		43.077194, 33.351692, 22.028116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000854, 32.637661, 21.604338>,  <43.324390, 32.743816, 22.271797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000854, 32.637661, 21.604338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112438, 33.021015, 21.628601>,  <43.179390, 33.251026, 21.643160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112438, 33.021015, 21.628601>,  <43.000854, 32.637661, 21.604338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112438, 33.021015, 21.628601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401266, -0.058943, -0.914063,
		-0.872449, 0.279326, -0.401010,
		0.278958, 0.958385, 0.060659,
		43.196125, 33.308533, 21.646799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687897, 32.878376, 21.060421>,  <43.000854, 32.637661, 21.604338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687897, 32.878376, 21.060421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964909, 33.156208, 21.138365>,  <43.131115, 33.322906, 21.185131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964909, 33.156208, 21.138365>,  <42.687897, 32.878376, 21.060421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964909, 33.156208, 21.138365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330081, -0.064915, -0.941718,
		-0.641446, 0.716484, -0.274222,
		0.692527, 0.694577, 0.194858,
		43.172668, 33.364582, 21.196823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612450, 33.236530, 20.455818>,  <42.687897, 32.878376, 21.060421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612450, 33.236530, 20.455818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955006, 33.320194, 20.644642>,  <43.160542, 33.370392, 20.757936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955006, 33.320194, 20.644642>,  <42.612450, 33.236530, 20.455818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955006, 33.320194, 20.644642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472806, 0.049685, -0.879765,
		-0.207469, 0.976618, -0.056344,
		0.856394, 0.209163, 0.472059,
		43.211926, 33.382942, 20.786259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787029, 33.791420, 20.062683>,  <42.612450, 33.236530, 20.455818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787029, 33.791420, 20.062683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115192, 33.659698, 20.249657>,  <43.312088, 33.580666, 20.361841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115192, 33.659698, 20.249657>,  <42.787029, 33.791420, 20.062683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115192, 33.659698, 20.249657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492301, -0.008981, -0.870379,
		0.290816, 0.944182, 0.154748,
		0.820406, -0.329303, 0.467433,
		43.361313, 33.560909, 20.389887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337280, 34.135769, 19.737335>,  <42.787029, 33.791420, 20.062683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337280, 34.135769, 19.737335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523186, 33.820545, 19.898808>,  <43.634727, 33.631413, 19.995691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523186, 33.820545, 19.898808>,  <43.337280, 34.135769, 19.737335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523186, 33.820545, 19.898808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483392, -0.156151, -0.861365,
		0.741843, 0.595464, 0.308370,
		0.464760, -0.788060, 0.403682,
		43.662613, 33.584126, 20.019913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064404, 34.222683, 19.524582>,  <43.337280, 34.135769, 19.737335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064404, 34.222683, 19.524582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.998585, 33.841496, 19.626392>,  <43.959095, 33.612785, 19.687479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.998585, 33.841496, 19.626392>,  <44.064404, 34.222683, 19.524582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998585, 33.841496, 19.626392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380145, -0.299377, -0.875136,
		0.910172, -0.047245, 0.411527,
		-0.164548, -0.952965, 0.254524,
		43.949219, 33.555607, 19.702749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692520, 33.852547, 19.368900>,  <44.064404, 34.222683, 19.524582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.692520, 33.852547, 19.368900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414955, 33.564976, 19.352762>,  <44.248417, 33.392433, 19.343079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414955, 33.564976, 19.352762>,  <44.692520, 33.852547, 19.368900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414955, 33.564976, 19.352762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540615, -0.483149, -0.688696,
		0.475632, -0.499704, 0.723927,
		-0.693909, -0.718932, -0.040347,
		44.206783, 33.349297, 19.340658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999634, 33.255936, 19.218712>,  <44.692520, 33.852547, 19.368900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999634, 33.255936, 19.218712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635910, 33.112110, 19.134930>,  <44.417675, 33.025814, 19.084660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635910, 33.112110, 19.134930>,  <44.999634, 33.255936, 19.218712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.635910, 33.112110, 19.134930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330061, -0.316684, -0.889253,
		0.253410, -0.877739, 0.406641,
		-0.909309, -0.359562, -0.209457,
		44.363117, 33.004242, 19.072092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071903, 32.557888, 19.105371>,  <44.999634, 33.255936, 19.218712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071903, 32.557888, 19.105371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.732754, 32.679020, 18.931286>,  <44.529263, 32.751698, 18.826836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.732754, 32.679020, 18.931286>,  <45.071903, 32.557888, 19.105371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732754, 32.679020, 18.931286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305874, -0.391104, -0.868032,
		-0.433082, -0.869097, 0.238976,
		-0.847869, 0.302832, -0.435214,
		44.478394, 32.769867, 18.800722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.927483, 31.837074, 19.101875>,  <45.071903, 32.557888, 19.105371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.927483, 31.837074, 19.101875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279766, 31.757206, 19.273682>,  <45.491135, 31.709286, 19.376766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279766, 31.757206, 19.273682>,  <44.927483, 31.837074, 19.101875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.279766, 31.757206, 19.273682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455953, -0.111778, 0.882957,
		-0.128300, -0.973464, -0.189489,
		0.880708, -0.199681, 0.429513,
		45.543980, 31.697306, 19.402536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888004, 31.183334, 19.403475>,  <44.927483, 31.837074, 19.101875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888004, 31.183334, 19.403475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.188156, 31.345966, 19.611946>,  <45.368248, 31.443544, 19.737030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.188156, 31.345966, 19.611946>,  <44.888004, 31.183334, 19.403475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188156, 31.345966, 19.611946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456010, -0.252385, 0.853438,
		0.478528, -0.878063, -0.003980,
		0.750377, 0.406579, 0.521179,
		45.413269, 31.467939, 19.768299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.014324, 30.713696, 19.930492>,  <44.888004, 31.183334, 19.403475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.014324, 30.713696, 19.930492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.193600, 31.047583, 20.058475>,  <45.301167, 31.247915, 20.135265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.193600, 31.047583, 20.058475>,  <45.014324, 30.713696, 19.930492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193600, 31.047583, 20.058475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271888, -0.213676, 0.938307,
		0.851588, -0.507531, 0.131183,
		0.448189, 0.834718, 0.319955,
		45.328056, 31.297998, 20.154463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.488319, 30.509325, 20.436939>,  <45.014324, 30.713696, 19.930492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.488319, 30.509325, 20.436939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.404083, 30.893120, 20.511805>,  <45.353542, 31.123398, 20.556725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.404083, 30.893120, 20.511805>,  <45.488319, 30.509325, 20.436939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.404083, 30.893120, 20.511805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183034, -0.226774, 0.956594,
		0.960286, 0.167194, 0.223376,
		-0.210593, 0.959489, 0.187165,
		45.340904, 31.180967, 20.567955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953419, 30.713846, 21.054728>,  <45.488319, 30.509325, 20.436939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953419, 30.713846, 21.054728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.684628, 31.010073, 21.054295>,  <45.523354, 31.187809, 21.054035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.684628, 31.010073, 21.054295>,  <45.953419, 30.713846, 21.054728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.684628, 31.010073, 21.054295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055620, -0.049014, 0.997248,
		0.738478, 0.670191, 0.074127,
		-0.671980, 0.740568, -0.001080,
		45.483032, 31.232243, 21.053970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.122372, 31.254698, 21.547092>,  <45.953419, 30.713846, 21.054728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.122372, 31.254698, 21.547092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.730644, 31.321482, 21.501387>,  <45.495605, 31.361551, 21.473963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.730644, 31.321482, 21.501387>,  <46.122372, 31.254698, 21.547092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.730644, 31.321482, 21.501387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103497, 0.071852, 0.992031,
		0.173840, 0.983342, -0.053086,
		-0.979320, 0.166961, -0.114264,
		45.436848, 31.371571, 21.467108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.954243, 31.788347, 22.008499>,  <46.122372, 31.254698, 21.547092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.954243, 31.788347, 22.008499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.597210, 31.617573, 21.950497>,  <45.382992, 31.515108, 21.915695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.597210, 31.617573, 21.950497>,  <45.954243, 31.788347, 22.008499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.597210, 31.617573, 21.950497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238797, 0.174812, 0.955205,
		-0.382461, 0.887224, -0.257984,
		-0.892580, -0.426935, -0.145008,
		45.329437, 31.489492, 21.906994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.476566, 32.238247, 22.369164>,  <45.954243, 31.788347, 22.008499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.476566, 32.238247, 22.369164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.288551, 31.888403, 22.321638>,  <45.175743, 31.678495, 22.293123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.288551, 31.888403, 22.321638>,  <45.476566, 32.238247, 22.369164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.288551, 31.888403, 22.321638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362345, 0.068459, 0.929527,
		-0.804843, 0.479963, -0.349090,
		-0.470037, -0.874613, -0.118814,
		45.147541, 31.626019, 22.285994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730492, 32.402439, 22.435539>,  <45.476566, 32.238247, 22.369164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730492, 32.402439, 22.435539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.775070, 32.009869, 22.497993>,  <44.801819, 31.774326, 22.535467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.775070, 32.009869, 22.497993>,  <44.730492, 32.402439, 22.435539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775070, 32.009869, 22.497993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444906, 0.091214, 0.890920,
		-0.888616, -0.168760, -0.426477,
		0.111451, -0.981427, 0.156136,
		44.808506, 31.715441, 22.544834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102539, 32.183323, 22.678228>,  <44.730492, 32.402439, 22.435539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102539, 32.183323, 22.678228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361919, 31.903233, 22.797695>,  <44.517548, 31.735180, 22.869375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361919, 31.903233, 22.797695>,  <44.102539, 32.183323, 22.678228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361919, 31.903233, 22.797695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386604, 0.035062, 0.921579,
		-0.655782, -0.713064, -0.247973,
		0.648450, -0.700222, 0.298666,
		44.556454, 31.693167, 22.887295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737278, 31.798361, 23.103561>,  <44.102539, 32.183323, 22.678228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737278, 31.798361, 23.103561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108475, 31.692270, 23.208237>,  <44.331192, 31.628616, 23.271042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108475, 31.692270, 23.208237>,  <43.737278, 31.798361, 23.103561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108475, 31.692270, 23.208237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227216, 0.153800, 0.961623,
		-0.295294, -0.951841, 0.082463,
		0.927995, -0.265224, 0.261689,
		44.386871, 31.612703, 23.286743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.569080, 31.237457, 23.559893>,  <43.737278, 31.798361, 23.103561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.569080, 31.237457, 23.559893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936821, 31.386129, 23.611506>,  <44.157467, 31.475332, 23.642473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936821, 31.386129, 23.611506>,  <43.569080, 31.237457, 23.559893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936821, 31.386129, 23.611506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172992, 0.087317, 0.981045,
		0.353368, -0.924246, 0.144573,
		0.919351, 0.371679, 0.129032,
		44.212627, 31.497633, 23.650215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.841682, 30.893282, 24.076273>,  <43.569080, 31.237457, 23.559893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.841682, 30.893282, 24.076273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022575, 31.249878, 24.065454>,  <44.131111, 31.463837, 24.058964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022575, 31.249878, 24.065454>,  <43.841682, 30.893282, 24.076273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022575, 31.249878, 24.065454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266178, 0.163844, 0.949897,
		0.851257, -0.422372, 0.311390,
		0.452229, 0.891491, -0.027048,
		44.158245, 31.517324, 24.057341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267292, 30.958973, 24.715851>,  <43.841682, 30.893282, 24.076273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267292, 30.958973, 24.715851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229080, 31.338017, 24.593925>,  <44.206154, 31.565443, 24.520769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229080, 31.338017, 24.593925>,  <44.267292, 30.958973, 24.715851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229080, 31.338017, 24.593925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064243, 0.299707, 0.951866,
		0.993351, 0.110515, 0.032246,
		-0.095531, 0.947608, -0.304815,
		44.200420, 31.622299, 24.502481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630806, 31.373213, 25.157797>,  <44.267292, 30.958973, 24.715851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630806, 31.373213, 25.157797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347645, 31.620453, 25.021076>,  <44.177750, 31.768797, 24.939043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347645, 31.620453, 25.021076>,  <44.630806, 31.373213, 25.157797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347645, 31.620453, 25.021076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098364, 0.392934, 0.914290,
		0.699430, 0.680847, -0.217359,
		-0.707900, 0.618102, -0.341801,
		44.135273, 31.805883, 24.918535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634960, 32.011955, 25.618532>,  <44.630806, 31.373213, 25.157797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634960, 32.011955, 25.618532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.292076, 32.058918, 25.417967>,  <44.086346, 32.087093, 25.297628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.292076, 32.058918, 25.417967>,  <44.634960, 32.011955, 25.618532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.292076, 32.058918, 25.417967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391290, 0.484521, 0.782389,
		0.334799, 0.866866, -0.369396,
		-0.857206, 0.117402, -0.501413,
		44.034916, 32.094139, 25.267544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.456055, 32.777721, 25.616835>,  <44.634960, 32.011955, 25.618532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.456055, 32.777721, 25.616835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.126347, 32.558640, 25.559418>,  <43.928524, 32.427193, 25.524967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.126347, 32.558640, 25.559418>,  <44.456055, 32.777721, 25.616835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126347, 32.558640, 25.559418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463425, 0.506954, 0.726798,
		-0.325299, 0.665598, -0.671685,
		-0.824268, -0.547702, -0.143543,
		43.879066, 32.394329, 25.516356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893097, 33.274200, 25.697306>,  <44.456055, 32.777721, 25.616835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893097, 33.274200, 25.697306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716473, 32.919621, 25.752781>,  <43.610500, 32.706871, 25.786066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716473, 32.919621, 25.752781>,  <43.893097, 33.274200, 25.697306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716473, 32.919621, 25.752781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494529, 0.369424, 0.786744,
		-0.748645, 0.278806, -0.601497,
		-0.441557, -0.886450, 0.138690,
		43.584007, 32.653687, 25.794388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161575, 33.434277, 25.799461>,  <43.893097, 33.274200, 25.697306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161575, 33.434277, 25.799461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189468, 33.062489, 25.944359>,  <43.206203, 32.839417, 26.031298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189468, 33.062489, 25.944359>,  <43.161575, 33.434277, 25.799461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189468, 33.062489, 25.944359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592204, 0.253647, 0.764825,
		-0.802765, -0.267854, -0.532749,
		0.069731, -0.929471, 0.362243,
		43.210388, 32.783646, 26.053032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514313, 33.255028, 26.082703>,  <43.161575, 33.434277, 25.799461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514313, 33.255028, 26.082703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.738186, 32.975647, 26.261105>,  <42.872509, 32.808018, 26.368145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.738186, 32.975647, 26.261105>,  <42.514313, 33.255028, 26.082703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738186, 32.975647, 26.261105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626822, -0.004753, 0.779148,
		-0.542075, -0.715645, -0.440462,
		0.559687, -0.698448, 0.446005,
		42.906094, 32.766113, 26.394907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949417, 32.709572, 26.329473>,  <42.514313, 33.255028, 26.082703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949417, 32.709572, 26.329473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286289, 32.741756, 26.542738>,  <42.488411, 32.761066, 26.670696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286289, 32.741756, 26.542738>,  <41.949417, 32.709572, 26.329473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286289, 32.741756, 26.542738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519055, -0.146760, 0.842047,
		0.146004, -0.985894, -0.081831,
		0.842178, 0.080468, 0.533161,
		42.538944, 32.765896, 26.702686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787872, 32.233292, 26.811481>,  <41.949417, 32.709572, 26.329473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787872, 32.233292, 26.811481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095093, 32.410328, 26.996614>,  <42.279427, 32.516548, 27.107695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095093, 32.410328, 26.996614>,  <41.787872, 32.233292, 26.811481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095093, 32.410328, 26.996614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493242, -0.052092, 0.868331,
		0.408423, -0.895210, 0.178294,
		0.768051, 0.442589, 0.462831,
		42.325508, 32.543106, 27.135464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878563, 31.877876, 27.539406>,  <41.787872, 32.233292, 26.811481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878563, 31.877876, 27.539406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079777, 32.222061, 27.571795>,  <42.200504, 32.428574, 27.591227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079777, 32.222061, 27.571795>,  <41.878563, 31.877876, 27.539406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079777, 32.222061, 27.571795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317302, 0.096726, 0.943379,
		0.803911, -0.500246, 0.321684,
		0.503037, 0.860464, 0.080970,
		42.230686, 32.480202, 27.596085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097263, 31.872730, 28.218489>,  <41.878563, 31.877876, 27.539406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097263, 31.872730, 28.218489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147778, 32.254730, 28.111134>,  <42.178085, 32.483929, 28.046721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147778, 32.254730, 28.111134>,  <42.097263, 31.872730, 28.218489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147778, 32.254730, 28.111134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263348, 0.293120, 0.919091,
		0.956399, -0.045389, 0.288513,
		0.126285, 0.954998, -0.268387,
		42.185661, 32.541229, 28.030617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413597, 32.158672, 28.680109>,  <42.097263, 31.872730, 28.218489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413597, 32.158672, 28.680109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248653, 32.478283, 28.505060>,  <42.149689, 32.670052, 28.400032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248653, 32.478283, 28.505060>,  <42.413597, 32.158672, 28.680109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248653, 32.478283, 28.505060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234247, 0.371219, 0.898513,
		0.880392, 0.473019, 0.034096,
		-0.412356, 0.799031, -0.437621,
		42.124947, 32.717991, 28.373774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787014, 32.839676, 29.037638>,  <42.413597, 32.158672, 28.680109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787014, 32.839676, 29.037638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443859, 32.948513, 28.863279>,  <42.237968, 33.013813, 28.758665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443859, 32.948513, 28.863279>,  <42.787014, 32.839676, 29.037638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443859, 32.948513, 28.863279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254696, 0.511595, 0.820610,
		0.446282, 0.815008, -0.369588,
		-0.857883, 0.272091, -0.435894,
		42.186493, 33.030140, 28.732512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542027, 33.478935, 29.410637>,  <42.787014, 32.839676, 29.037638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542027, 33.478935, 29.410637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215649, 33.357040, 29.214121>,  <42.019821, 33.283901, 29.096210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215649, 33.357040, 29.214121>,  <42.542027, 33.478935, 29.410637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215649, 33.357040, 29.214121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574409, 0.331083, 0.748625,
		-0.065478, 0.893038, -0.445191,
		-0.815946, -0.304740, -0.491290,
		41.970863, 33.265617, 29.066734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067730, 34.022221, 29.531353>,  <42.542027, 33.478935, 29.410637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067730, 34.022221, 29.531353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854370, 33.702053, 29.421944>,  <41.726353, 33.509953, 29.356298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854370, 33.702053, 29.421944>,  <42.067730, 34.022221, 29.531353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854370, 33.702053, 29.421944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553170, 0.085456, 0.828674,
		-0.639909, 0.593322, -0.488349,
		-0.533403, -0.800416, -0.273524,
		41.694347, 33.461929, 29.339886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446285, 34.191174, 29.657843>,  <42.067730, 34.022221, 29.531353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446285, 34.191174, 29.657843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435791, 33.791592, 29.642838>,  <41.429493, 33.551842, 29.633835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435791, 33.791592, 29.642838>,  <41.446285, 34.191174, 29.657843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435791, 33.791592, 29.642838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690618, -0.009015, 0.723164,
		-0.722744, 0.044881, -0.689657,
		-0.026239, -0.998952, -0.037511,
		41.427917, 33.491905, 29.631584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773521, 33.998505, 29.872149>,  <41.446285, 34.191174, 29.657843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773521, 33.998505, 29.872149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986092, 33.663651, 29.923977>,  <41.113632, 33.462738, 29.955074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986092, 33.663651, 29.923977>,  <40.773521, 33.998505, 29.872149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986092, 33.663651, 29.923977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513252, -0.196510, 0.835438,
		-0.673916, -0.510472, -0.534093,
		0.531422, -0.837139, 0.129570,
		41.145519, 33.412510, 29.962849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235870, 33.481625, 29.921545>,  <40.773521, 33.998505, 29.872149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235870, 33.481625, 29.921545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559387, 33.315285, 30.087881>,  <40.753498, 33.215481, 30.187683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559387, 33.315285, 30.087881>,  <40.235870, 33.481625, 29.921545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559387, 33.315285, 30.087881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533761, -0.222232, 0.815912,
		-0.246879, -0.881866, -0.401701,
		0.808795, -0.415844, 0.415841,
		40.802025, 33.190529, 30.212633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916348, 32.973705, 30.273558>,  <40.235870, 33.481625, 29.921545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916348, 32.973705, 30.273558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268642, 33.045277, 30.448963>,  <40.480019, 33.088219, 30.554207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268642, 33.045277, 30.448963>,  <39.916348, 32.973705, 30.273558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268642, 33.045277, 30.448963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392351, -0.242956, 0.887149,
		0.265274, -0.953393, -0.143778,
		0.880733, 0.178926, 0.438515,
		40.532864, 33.098953, 30.580517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972775, 32.455811, 30.741653>,  <39.916348, 32.973705, 30.273558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972775, 32.455811, 30.741653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222622, 32.739052, 30.873379>,  <40.372528, 32.908997, 30.952414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222622, 32.739052, 30.873379>,  <39.972775, 32.455811, 30.741653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222622, 32.739052, 30.873379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346480, -0.126636, 0.929470,
		0.699862, -0.694662, 0.166244,
		0.624615, 0.708102, 0.329315,
		40.410007, 32.951481, 30.972174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354305, 32.135189, 31.356268>,  <39.972775, 32.455811, 30.741653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354305, 32.135189, 31.356268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374695, 32.534302, 31.373404>,  <40.386929, 32.773769, 31.383684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374695, 32.534302, 31.373404>,  <40.354305, 32.135189, 31.356268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374695, 32.534302, 31.373404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411965, -0.018066, 0.911021,
		0.909773, -0.064089, 0.410129,
		0.050977, 0.997780, 0.042838,
		40.389988, 32.833637, 31.386255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624329, 32.170097, 32.063652>,  <40.354305, 32.135189, 31.356268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624329, 32.170097, 32.063652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516262, 32.543442, 31.969120>,  <40.451424, 32.767448, 31.912399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516262, 32.543442, 31.969120>,  <40.624329, 32.170097, 32.063652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516262, 32.543442, 31.969120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193949, 0.187674, 0.962893,
		0.943078, 0.305976, 0.130321,
		-0.270164, 0.933358, -0.236335,
		40.435211, 32.823448, 31.898220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958195, 32.585579, 32.618973>,  <40.624329, 32.170097, 32.063652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958195, 32.585579, 32.618973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661617, 32.791309, 32.446590>,  <40.483669, 32.914745, 32.343159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661617, 32.791309, 32.446590>,  <40.958195, 32.585579, 32.618973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661617, 32.791309, 32.446590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199855, 0.443838, 0.873536,
		0.640557, 0.733811, -0.226293,
		-0.741448, 0.514324, -0.430959,
		40.439182, 32.945606, 32.317303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967083, 33.301640, 32.915062>,  <40.958195, 32.585579, 32.618973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967083, 33.301640, 32.915062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602036, 33.231098, 32.767529>,  <40.383007, 33.188774, 32.679008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602036, 33.231098, 32.767529>,  <40.967083, 33.301640, 32.915062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602036, 33.231098, 32.767529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407810, 0.456114, 0.790981,
		0.028739, 0.872273, -0.488174,
		-0.912615, -0.176350, -0.368830,
		40.328251, 33.178192, 32.656879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641224, 33.846916, 33.099060>,  <40.967083, 33.301640, 32.915062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641224, 33.846916, 33.099060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350182, 33.577892, 33.045017>,  <40.175556, 33.416477, 33.012592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350182, 33.577892, 33.045017>,  <40.641224, 33.846916, 33.099060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350182, 33.577892, 33.045017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494924, 0.378284, 0.782273,
		-0.475012, 0.636057, -0.608107,
		-0.727608, -0.672556, -0.135111,
		40.131901, 33.376125, 33.004482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136005, 34.162846, 33.385895>,  <40.641224, 33.846916, 33.099060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136005, 34.162846, 33.385895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016670, 33.781204, 33.375381>,  <39.945068, 33.552219, 33.369076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016670, 33.781204, 33.375381>,  <40.136005, 34.162846, 33.385895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016670, 33.781204, 33.375381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523006, 0.140382, 0.840689,
		-0.798411, 0.264551, -0.540881,
		-0.298335, -0.954099, -0.026279,
		39.927170, 33.494976, 33.367496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371178, 34.137184, 33.458809>,  <40.136005, 34.162846, 33.385895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371178, 34.137184, 33.458809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492008, 33.765560, 33.544231>,  <39.564507, 33.542587, 33.595486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492008, 33.765560, 33.544231>,  <39.371178, 34.137184, 33.458809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492008, 33.765560, 33.544231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651101, -0.037443, 0.758067,
		-0.696290, -0.368039, -0.616220,
		0.302072, -0.929056, 0.213560,
		39.582630, 33.486843, 33.608299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794090, 33.752705, 33.539074>,  <39.371178, 34.137184, 33.458809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794090, 33.752705, 33.539074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065067, 33.530071, 33.731441>,  <39.227654, 33.396492, 33.846863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065067, 33.530071, 33.731441>,  <38.794090, 33.752705, 33.539074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065067, 33.530071, 33.731441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666771, -0.188570, 0.721012,
		-0.310620, -0.809105, -0.498862,
		0.677445, -0.556588, 0.480915,
		39.268299, 33.363094, 33.875717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585056, 33.031441, 33.614262>,  <38.794090, 33.752705, 33.539074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585056, 33.031441, 33.614262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808266, 33.206482, 33.896290>,  <38.942192, 33.311504, 34.065506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808266, 33.206482, 33.896290>,  <38.585056, 33.031441, 33.614262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808266, 33.206482, 33.896290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748059, -0.102505, 0.655668,
		0.359192, -0.893308, 0.270150,
		0.558022, 0.437599, 0.705066,
		38.975674, 33.337761, 34.107811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697182, 32.559784, 34.194302>,  <38.585056, 33.031441, 33.614262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697182, 32.559784, 34.194302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734417, 32.941410, 34.308205>,  <38.756756, 33.170387, 34.376545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734417, 32.941410, 34.308205>,  <38.697182, 32.559784, 34.194302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734417, 32.941410, 34.308205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708268, -0.137558, 0.692412,
		0.699780, -0.266138, 0.662932,
		0.093085, 0.954070, 0.284757,
		38.762344, 33.227631, 34.393631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537449, 32.537052, 34.848530>,  <38.697182, 32.559784, 34.194302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537449, 32.537052, 34.848530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512383, 32.928661, 34.770988>,  <38.497341, 33.163628, 34.724464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512383, 32.928661, 34.770988>,  <38.537449, 32.537052, 34.848530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512383, 32.928661, 34.770988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603218, 0.117585, 0.788861,
		0.795111, 0.166370, 0.583198,
		-0.062668, 0.979027, -0.193851,
		38.493584, 33.222370, 34.712833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779747, 32.839806, 35.389759>,  <38.537449, 32.537052, 34.848530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779747, 32.839806, 35.389759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520573, 33.102821, 35.235970>,  <38.365067, 33.260632, 35.143696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520573, 33.102821, 35.235970>,  <38.779747, 32.839806, 35.389759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520573, 33.102821, 35.235970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551273, -0.056501, 0.832410,
		0.525618, 0.751299, 0.399092,
		-0.647938, 0.657539, -0.384473,
		38.326191, 33.300083, 35.120628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293545, 32.966385, 35.917042>,  <38.779747, 32.839806, 35.389759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293545, 32.966385, 35.917042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126286, 33.215508, 35.652538>,  <38.025928, 33.364983, 35.493835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126286, 33.215508, 35.652538>,  <38.293545, 32.966385, 35.917042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126286, 33.215508, 35.652538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669030, 0.281255, 0.687964,
		0.614452, 0.730072, 0.299071,
		-0.418149, 0.622808, -0.661258,
		38.000839, 33.402351, 35.454163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226154, 33.597637, 36.215778>,  <38.293545, 32.966385, 35.917042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226154, 33.597637, 36.215778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939137, 33.542824, 35.942619>,  <37.766926, 33.509937, 35.778725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939137, 33.542824, 35.942619>,  <38.226154, 33.597637, 36.215778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939137, 33.542824, 35.942619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695733, 0.094754, 0.712024,
		-0.032861, 0.986025, -0.163326,
		-0.717549, -0.137029, -0.682896,
		37.723873, 33.501717, 35.737751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741928, 34.130138, 36.370651>,  <38.226154, 33.597637, 36.215778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741928, 34.130138, 36.370651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541256, 33.864883, 36.148457>,  <37.420853, 33.705730, 36.015141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541256, 33.864883, 36.148457>,  <37.741928, 34.130138, 36.370651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541256, 33.864883, 36.148457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758588, 0.028629, 0.650941,
		-0.415761, 0.747950, -0.517411,
		-0.501684, -0.663138, -0.555483,
		37.390751, 33.665943, 35.981812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958622, 34.415089, 36.292904>,  <37.741928, 34.130138, 36.370651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958622, 34.415089, 36.292904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034588, 34.022602, 36.306396>,  <37.080166, 33.787109, 36.314491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034588, 34.022602, 36.306396>,  <36.958622, 34.415089, 36.292904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034588, 34.022602, 36.306396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731603, -0.118520, 0.671349,
		-0.654744, -0.152180, -0.740373,
		0.189915, -0.981221, 0.033735,
		37.091564, 33.728237, 36.316517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285824, 34.034420, 36.096745>,  <36.958622, 34.415089, 36.292904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285824, 34.034420, 36.096745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509007, 33.790184, 36.321556>,  <36.642914, 33.643642, 36.456444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509007, 33.790184, 36.321556>,  <36.285824, 34.034420, 36.096745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509007, 33.790184, 36.321556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722465, -0.024159, 0.690985,
		-0.408328, -0.791581, -0.454607,
		0.557954, -0.610586, 0.562025,
		36.676392, 33.607010, 36.490162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947350, 33.411842, 36.286446>,  <36.285824, 34.034420, 36.096745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947350, 33.411842, 36.286446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210339, 33.490231, 36.577465>,  <36.368130, 33.537266, 36.752075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210339, 33.490231, 36.577465>,  <35.947350, 33.411842, 36.286446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210339, 33.490231, 36.577465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751598, 0.102368, 0.651630,
		0.053221, -0.975252, 0.214593,
		0.657471, 0.195968, 0.727550,
		36.407581, 33.549023, 36.795731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548229, 32.963573, 36.728821>,  <35.947350, 33.411842, 36.286446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548229, 32.963573, 36.728821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942261, 32.999176, 36.787750>,  <36.178680, 33.020538, 36.823109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942261, 32.999176, 36.787750>,  <35.548229, 32.963573, 36.728821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942261, 32.999176, 36.787750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096391, -0.423859, 0.900585,
		0.142604, -0.901344, -0.408953,
		0.985075, 0.089008, 0.147325,
		36.237782, 33.025879, 36.831947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859146, 32.248386, 36.846119>,  <35.548229, 32.963573, 36.728821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859146, 32.248386, 36.846119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037426, 32.559509, 37.023376>,  <36.144394, 32.746181, 37.129730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037426, 32.559509, 37.023376>,  <35.859146, 32.248386, 36.846119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037426, 32.559509, 37.023376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058788, -0.468526, 0.881491,
		0.893252, -0.418929, -0.163095,
		0.445697, 0.777806, 0.443139,
		36.171135, 32.792850, 37.156319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502277, 31.955454, 37.270374>,  <35.859146, 32.248386, 36.846119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502277, 31.955454, 37.270374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357338, 32.303635, 37.403652>,  <36.270374, 32.512543, 37.483620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357338, 32.303635, 37.403652>,  <36.502277, 31.955454, 37.270374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357338, 32.303635, 37.403652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012723, -0.362076, 0.932062,
		0.931956, 0.333491, 0.142272,
		-0.362348, 0.870451, 0.333196,
		36.248634, 32.564770, 37.503613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796993, 32.069984, 37.978409>,  <36.502277, 31.955454, 37.270374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796993, 32.069984, 37.978409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495991, 32.332695, 37.958893>,  <36.315392, 32.490322, 37.947182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495991, 32.332695, 37.958893>,  <36.796993, 32.069984, 37.978409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495991, 32.332695, 37.958893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177593, -0.131021, 0.975343,
		0.634193, 0.742613, 0.215233,
		-0.752503, 0.656780, -0.048790,
		36.270241, 32.529728, 37.944256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828789, 32.465828, 38.507732>,  <36.796993, 32.069984, 37.978409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828789, 32.465828, 38.507732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452568, 32.546349, 38.398300>,  <36.226837, 32.594662, 38.332642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452568, 32.546349, 38.398300>,  <36.828789, 32.465828, 38.507732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452568, 32.546349, 38.398300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272270, 0.034711, 0.961595,
		0.203064, 0.978915, 0.022160,
		-0.940550, 0.201298, -0.273577,
		36.170403, 32.606739, 38.316227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697628, 32.940872, 39.005238>,  <36.828789, 32.465828, 38.507732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697628, 32.940872, 39.005238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361664, 32.793350, 38.845970>,  <36.160088, 32.704838, 38.750408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361664, 32.793350, 38.845970>,  <36.697628, 32.940872, 39.005238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361664, 32.793350, 38.845970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451540, 0.067814, 0.889670,
		-0.301111, 0.927031, -0.223487,
		-0.839907, -0.368802, -0.398172,
		36.109692, 32.682709, 38.726521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209202, 33.281319, 39.361481>,  <36.697628, 32.940872, 39.005238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209202, 33.281319, 39.361481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996910, 32.980621, 39.204910>,  <35.869534, 32.800205, 39.110970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996910, 32.980621, 39.204910>,  <36.209202, 33.281319, 39.361481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996910, 32.980621, 39.204910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552597, -0.043254, 0.832326,
		-0.642623, 0.658040, -0.392453,
		-0.530729, -0.751740, -0.391427,
		35.837692, 32.755100, 39.087482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505795, 33.461002, 39.434959>,  <36.209202, 33.281319, 39.361481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505795, 33.461002, 39.434959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574089, 33.066898, 39.439274>,  <35.615067, 32.830437, 39.441860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574089, 33.066898, 39.439274>,  <35.505795, 33.461002, 39.434959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574089, 33.066898, 39.439274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691987, -0.112114, 0.713151,
		-0.701428, -0.129224, -0.700928,
		0.170740, -0.985257, 0.010781,
		35.625313, 32.771320, 39.442509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864712, 33.064728, 39.418480>,  <35.505795, 33.461002, 39.434959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864712, 33.064728, 39.418480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172897, 32.913807, 39.624020>,  <35.357807, 32.823254, 39.747341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172897, 32.913807, 39.624020>,  <34.864712, 33.064728, 39.418480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172897, 32.913807, 39.624020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586034, -0.101939, 0.803849,
		-0.250913, -0.920463, -0.299651,
		0.770459, -0.377301, 0.513845,
		35.404034, 32.800617, 39.778172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535522, 32.388195, 39.568218>,  <34.864712, 33.064728, 39.418480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535522, 32.388195, 39.568218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816040, 32.517483, 39.822376>,  <34.984348, 32.595055, 39.974869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816040, 32.517483, 39.822376>,  <34.535522, 32.388195, 39.568218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816040, 32.517483, 39.822376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588685, -0.240106, 0.771880,
		0.402048, -0.915357, 0.021891,
		0.701290, 0.323220, 0.635391,
		35.026428, 32.614449, 40.012993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515018, 31.974798, 40.286758>,  <34.535522, 32.388195, 39.568218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515018, 31.974798, 40.286758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629021, 32.348080, 40.374306>,  <34.697422, 32.572048, 40.426834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629021, 32.348080, 40.374306>,  <34.515018, 31.974798, 40.286758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629021, 32.348080, 40.374306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618162, 0.004442, 0.786038,
		0.732561, -0.359322, 0.578137,
		0.285009, 0.933203, 0.218866,
		34.714523, 32.628040, 40.439964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589321, 31.929090, 40.946327>,  <34.515018, 31.974798, 40.286758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589321, 31.929090, 40.946327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502533, 32.312489, 40.872345>,  <34.450459, 32.542526, 40.827953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502533, 32.312489, 40.872345>,  <34.589321, 31.929090, 40.946327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502533, 32.312489, 40.872345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641706, 0.002737, 0.766946,
		0.735620, 0.285095, 0.614478,
		-0.216971, 0.958495, -0.184960,
		34.437443, 32.600037, 40.816856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102356, 32.329311, 40.648323>,  <34.589321, 31.929090, 40.946327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102356, 32.329311, 40.648323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268970, 31.993950, 40.507710>,  <35.368938, 31.792732, 40.423340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268970, 31.993950, 40.507710>,  <35.102356, 32.329311, 40.648323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268970, 31.993950, 40.507710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138691, 0.323548, -0.935992,
		0.898478, 0.438629, 0.018490,
		0.416536, -0.838404, -0.351534,
		35.393932, 31.742428, 40.402248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763573, 32.380356, 40.325485>,  <35.102356, 32.329311, 40.648323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763573, 32.380356, 40.325485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515408, 32.100136, 40.184448>,  <35.366508, 31.932005, 40.099827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515408, 32.100136, 40.184448>,  <35.763573, 32.380356, 40.325485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515408, 32.100136, 40.184448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073682, 0.499655, -0.863085,
		0.780810, -0.509486, -0.361608,
		-0.620409, -0.700549, -0.352596,
		35.329285, 31.889971, 40.078671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091866, 31.944134, 39.792389>,  <35.763573, 32.380356, 40.325485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091866, 31.944134, 39.792389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701847, 32.027229, 39.761082>,  <35.467834, 32.077087, 39.742298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701847, 32.027229, 39.761082>,  <36.091866, 31.944134, 39.792389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701847, 32.027229, 39.761082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151549, 0.365261, -0.918486,
		-0.162218, -0.907430, -0.387630,
		-0.975048, 0.207740, -0.078268,
		35.409332, 32.089550, 39.737602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785049, 31.585526, 39.142452>,  <36.091866, 31.944134, 39.792389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785049, 31.585526, 39.142452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603653, 31.936581, 39.204544>,  <35.494816, 32.147213, 39.241798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603653, 31.936581, 39.204544>,  <35.785049, 31.585526, 39.142452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603653, 31.936581, 39.204544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149328, 0.246522, -0.957564,
		-0.878660, -0.411070, -0.242853,
		-0.453495, 0.877638, 0.155225,
		35.467606, 32.199871, 39.251110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206841, 31.737524, 38.578899>,  <35.785049, 31.585526, 39.142452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206841, 31.737524, 38.578899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382095, 32.053158, 38.751125>,  <35.487247, 32.242538, 38.854462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382095, 32.053158, 38.751125>,  <35.206841, 31.737524, 38.578899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382095, 32.053158, 38.751125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298800, 0.323903, -0.897667,
		-0.847795, 0.521951, -0.093865,
		0.438135, 0.789084, 0.430562,
		35.513535, 32.289883, 38.880295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909737, 32.352844, 38.320423>,  <35.206841, 31.737524, 38.578899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909737, 32.352844, 38.320423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283440, 32.443195, 38.430805>,  <35.507660, 32.497406, 38.497032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283440, 32.443195, 38.430805>,  <34.909737, 32.352844, 38.320423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283440, 32.443195, 38.430805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191229, 0.335823, -0.922309,
		-0.301002, 0.914441, 0.270549,
		0.934253, 0.225880, 0.275951,
		35.563717, 32.510960, 38.513592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030334, 32.892803, 37.914371>,  <34.909737, 32.352844, 38.320423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030334, 32.892803, 37.914371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393066, 32.832153, 38.071678>,  <35.610706, 32.795761, 38.166061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393066, 32.832153, 38.071678>,  <35.030334, 32.892803, 37.914371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393066, 32.832153, 38.071678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420735, 0.381366, -0.823130,
		-0.025170, 0.911904, 0.409631,
		0.906835, -0.151627, 0.393269,
		35.665115, 32.786667, 38.189659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405109, 33.547260, 38.038731>,  <35.030334, 32.892803, 37.914371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405109, 33.547260, 38.038731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680519, 33.258480, 38.011223>,  <35.845764, 33.085213, 37.994720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680519, 33.258480, 38.011223>,  <35.405109, 33.547260, 38.038731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680519, 33.258480, 38.011223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451020, 0.500526, -0.738955,
		0.567906, 0.477772, 0.670236,
		0.688523, -0.721947, -0.068767,
		35.887077, 33.041897, 37.990593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038265, 33.806252, 37.923382>,  <35.405109, 33.547260, 38.038731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038265, 33.806252, 37.923382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094025, 33.427719, 37.806744>,  <36.127480, 33.200600, 37.736759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094025, 33.427719, 37.806744>,  <36.038265, 33.806252, 37.923382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094025, 33.427719, 37.806744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437349, 0.323032, -0.839271,
		0.888423, -0.010541, 0.458905,
		0.139395, -0.946329, -0.291599,
		36.135841, 33.143822, 37.719265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422462, 34.446175, 37.917194>,  <36.038265, 33.806252, 37.923382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422462, 34.446175, 37.917194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801857, 34.544861, 37.837700>,  <37.029495, 34.604073, 37.790001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801857, 34.544861, 37.837700>,  <36.422462, 34.446175, 37.917194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801857, 34.544861, 37.837700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178852, 0.934789, 0.306890,
		0.261495, -0.255537, 0.930764,
		0.948489, 0.246719, -0.198740,
		37.086403, 34.618877, 37.778076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785225, 33.767040, 37.747948>,  <36.422462, 34.446175, 37.917194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785225, 33.767040, 37.747948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604992, 33.462898, 37.560829>,  <36.496853, 33.280411, 37.448559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604992, 33.462898, 37.560829>,  <36.785225, 33.767040, 37.747948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604992, 33.462898, 37.560829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469921, 0.243520, -0.848453,
		0.759045, -0.602124, 0.247583,
		-0.450583, -0.760358, -0.467793,
		36.469818, 33.234791, 37.420490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367207, 33.207195, 37.542580>,  <36.785225, 33.767040, 37.747948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367207, 33.207195, 37.542580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050762, 33.220505, 37.298271>,  <36.860897, 33.228489, 37.151688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050762, 33.220505, 37.298271>,  <37.367207, 33.207195, 37.542580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050762, 33.220505, 37.298271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609433, -0.042593, -0.791692,
		-0.052359, -0.998538, 0.013416,
		-0.791107, 0.033276, -0.610773,
		36.813431, 33.230484, 37.115040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327862, 32.674904, 37.073284>,  <37.367207, 33.207195, 37.542580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327862, 32.674904, 37.073284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130264, 32.975536, 36.898426>,  <37.011707, 33.155914, 36.793510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130264, 32.975536, 36.898426>,  <37.327862, 32.674904, 37.073284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130264, 32.975536, 36.898426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630298, -0.036773, -0.775482,
		-0.598913, -0.658614, -0.455555,
		-0.493992, 0.751581, -0.437147,
		36.982067, 33.201012, 36.767281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295414, 32.439331, 36.332436>,  <37.327862, 32.674904, 37.073284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295414, 32.439331, 36.332436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245911, 32.833172, 36.381821>,  <37.216209, 33.069477, 36.411449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245911, 32.833172, 36.381821>,  <37.295414, 32.439331, 36.332436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245911, 32.833172, 36.381821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822675, 0.171373, -0.542067,
		-0.554878, 0.034482, -0.831217,
		-0.123756, 0.984603, 0.123458,
		37.208782, 33.128551, 36.418858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242836, 32.696301, 35.707119>,  <37.295414, 32.439331, 36.332436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242836, 32.696301, 35.707119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393917, 32.975521, 35.950451>,  <37.484566, 33.143051, 36.096451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393917, 32.975521, 35.950451>,  <37.242836, 32.696301, 35.707119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393917, 32.975521, 35.950451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796651, 0.089847, -0.597724,
		-0.471896, 0.710393, -0.522164,
		0.377704, 0.698047, 0.608334,
		37.507229, 33.184937, 36.132950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833897, 32.775589, 35.221889>,  <37.242836, 32.696301, 35.707119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833897, 32.775589, 35.221889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974144, 33.082172, 35.437149>,  <37.058292, 33.266121, 35.566307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974144, 33.082172, 35.437149>,  <36.833897, 32.775589, 35.221889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974144, 33.082172, 35.437149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706186, 0.161047, -0.689468,
		-0.615117, 0.621775, -0.484796,
		0.350618, 0.766459, 0.538151,
		37.079330, 33.312111, 35.598595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879520, 33.377190, 34.725475>,  <36.833897, 32.775589, 35.221889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879520, 33.377190, 34.725475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131985, 33.393620, 35.035301>,  <37.283463, 33.403477, 35.221199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131985, 33.393620, 35.035301>,  <36.879520, 33.377190, 34.725475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131985, 33.393620, 35.035301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767012, 0.115608, -0.631131,
		-0.115471, 0.992445, 0.041461,
		0.631156, 0.041077, 0.774567,
		37.321331, 33.405941, 35.267670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443344, 33.501694, 34.287563>,  <36.879520, 33.377190, 34.725475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443344, 33.501694, 34.287563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590122, 33.504753, 34.659649>,  <37.678188, 33.506588, 34.882900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590122, 33.504753, 34.659649>,  <37.443344, 33.501694, 34.287563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590122, 33.504753, 34.659649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918862, 0.152968, -0.363722,
		-0.145074, 0.988202, 0.049103,
		0.366942, 0.007648, 0.930213,
		37.700203, 33.507046, 34.938713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583328, 34.160114, 34.456398>,  <37.443344, 33.501694, 34.287563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583328, 34.160114, 34.456398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823746, 33.897747, 34.639057>,  <37.967995, 33.740326, 34.748653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823746, 33.897747, 34.639057>,  <37.583328, 34.160114, 34.456398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823746, 33.897747, 34.639057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753400, 0.274312, -0.597613,
		0.266718, 0.703229, 0.659038,
		0.601041, -0.655913, 0.456648,
		38.004059, 33.700974, 34.776051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201893, 34.491550, 34.602211>,  <37.583328, 34.160114, 34.456398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201893, 34.491550, 34.602211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311634, 34.107311, 34.620033>,  <38.377480, 33.876766, 34.630726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311634, 34.107311, 34.620033>,  <38.201893, 34.491550, 34.602211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311634, 34.107311, 34.620033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874141, 0.229816, -0.427857,
		0.400759, 0.156328, 0.902748,
		0.274352, -0.960597, 0.044552,
		38.393940, 33.819134, 34.633400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928524, 34.478283, 34.825508>,  <38.201893, 34.491550, 34.602211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928524, 34.478283, 34.825508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870670, 34.104069, 34.696598>,  <38.835957, 33.879539, 34.619251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870670, 34.104069, 34.696598>,  <38.928524, 34.478283, 34.825508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870670, 34.104069, 34.696598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941946, -0.030439, -0.334383,
		0.303016, -0.351930, 0.885622,
		-0.144637, -0.935531, -0.322276,
		38.827278, 33.823410, 34.599915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575504, 34.205902, 34.945656>,  <38.928524, 34.478283, 34.825508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575504, 34.205902, 34.945656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393097, 33.946312, 34.702057>,  <39.283653, 33.790558, 34.555897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393097, 33.946312, 34.702057>,  <39.575504, 34.205902, 34.945656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393097, 33.946312, 34.702057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883581, -0.248293, -0.397032,
		0.106454, -0.719154, 0.686647,
		-0.456017, -0.648974, -0.608999,
		39.256290, 33.751621, 34.519356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881496, 33.562233, 35.003330>,  <39.575504, 34.205902, 34.945656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881496, 33.562233, 35.003330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731678, 33.601238, 34.634502>,  <39.641788, 33.624641, 34.413208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731678, 33.601238, 34.634502>,  <39.881496, 33.562233, 35.003330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731678, 33.601238, 34.634502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916048, 0.192752, -0.351714,
		0.143432, -0.976390, -0.161525,
		-0.374544, 0.097517, -0.922067,
		39.619316, 33.630493, 34.357883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183750, 33.150543, 34.560905>,  <39.881496, 33.562233, 35.003330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183750, 33.150543, 34.560905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099327, 33.476326, 34.344715>,  <40.048676, 33.671795, 34.215000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099327, 33.476326, 34.344715>,  <40.183750, 33.150543, 34.560905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099327, 33.476326, 34.344715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943754, 0.025808, -0.329640,
		-0.254530, -0.579648, -0.774095,
		-0.211053, 0.814458, -0.540477,
		40.036011, 33.720665, 34.182571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283791, 32.632805, 35.130600>,  <40.183750, 33.150543, 34.560905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283791, 32.632805, 35.130600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134411, 32.261757, 35.127445>,  <40.044785, 32.039127, 35.125553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134411, 32.261757, 35.127445>,  <40.283791, 32.632805, 35.130600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134411, 32.261757, 35.127445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292070, 0.109504, 0.950107,
		-0.880473, 0.357117, -0.311823,
		-0.373445, -0.927619, -0.007888,
		40.022377, 31.983471, 35.125080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763004, 33.053459, 35.483879>,  <40.283791, 32.632805, 35.130600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763004, 33.053459, 35.483879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886822, 33.353336, 35.717850>,  <40.961113, 33.533264, 35.858234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886822, 33.353336, 35.717850>,  <40.763004, 33.053459, 35.483879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886822, 33.353336, 35.717850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898432, -0.029103, -0.438147,
		-0.311453, 0.661145, -0.682557,
		0.309543, 0.749694, 0.584930,
		40.979683, 33.578243, 35.893330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055542, 33.697819, 35.196484>,  <40.763004, 33.053459, 35.483879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055542, 33.697819, 35.196484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197502, 33.554157, 35.541752>,  <41.282677, 33.467960, 35.748913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197502, 33.554157, 35.541752>,  <41.055542, 33.697819, 35.196484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197502, 33.554157, 35.541752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875925, -0.195002, -0.441282,
		0.326805, 0.912681, 0.245382,
		0.354899, -0.359149, 0.863168,
		41.303970, 33.446411, 35.800701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705173, 34.057156, 35.309334>,  <41.055542, 33.697819, 35.196484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705173, 34.057156, 35.309334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689182, 33.716473, 35.518333>,  <41.679588, 33.512062, 35.643734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689182, 33.716473, 35.518333>,  <41.705173, 34.057156, 35.309334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689182, 33.716473, 35.518333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977240, -0.142360, -0.157276,
		0.208335, 0.504315, 0.838012,
		-0.039982, -0.851704, 0.522495,
		41.677189, 33.460960, 35.675083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087055, 34.084309, 36.061325>,  <41.705173, 34.057156, 35.309334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087055, 34.084309, 36.061325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080006, 33.737366, 35.862377>,  <42.075775, 33.529198, 35.743008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080006, 33.737366, 35.862377>,  <42.087055, 34.084309, 36.061325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080006, 33.737366, 35.862377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999639, -0.005198, -0.026355,
		0.020274, -0.497651, 0.867140,
		-0.017623, -0.867362, -0.497366,
		42.074718, 33.477158, 35.713165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387772, 33.520786, 36.397808>,  <42.087055, 34.084309, 36.061325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387772, 33.520786, 36.397808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411175, 33.511440, 35.998604>,  <42.425217, 33.505833, 35.759079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411175, 33.511440, 35.998604>,  <42.387772, 33.520786, 36.397808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411175, 33.511440, 35.998604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993865, 0.095355, 0.056034,
		0.093856, -0.995169, 0.028804,
		0.058510, -0.023368, -0.998013,
		42.428726, 33.504429, 35.699200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914547, 33.023148, 35.981564>,  <42.387772, 33.520786, 36.397808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914547, 33.023148, 35.981564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842739, 33.383114, 35.822601>,  <42.799656, 33.599094, 35.727226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842739, 33.383114, 35.822601>,  <42.914547, 33.023148, 35.981564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842739, 33.383114, 35.822601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983745, 0.165980, -0.068530,
		0.004290, -0.403244, -0.915082,
		-0.179519, 0.899914, -0.397402,
		42.788883, 33.653088, 35.703381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223049, 33.162060, 35.407661>,  <42.914547, 33.023148, 35.981564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223049, 33.162060, 35.407661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181664, 33.510960, 35.598858>,  <43.156834, 33.720299, 35.713577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181664, 33.510960, 35.598858>,  <43.223049, 33.162060, 35.407661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181664, 33.510960, 35.598858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994062, 0.106967, 0.019973,
		-0.033708, 0.477219, -0.878137,
		-0.103463, 0.872250, 0.477991,
		43.150623, 33.772636, 35.742256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751644, 33.685947, 35.129185>,  <43.223049, 33.162060, 35.407661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751644, 33.685947, 35.129185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665524, 33.803375, 35.501736>,  <43.613850, 33.873833, 35.725266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665524, 33.803375, 35.501736>,  <43.751644, 33.685947, 35.129185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665524, 33.803375, 35.501736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974373, 0.128186, 0.184837,
		-0.065127, 0.947305, -0.313644,
		-0.215301, 0.293568, 0.931377,
		43.600933, 33.891445, 35.781147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.022133, 34.321266, 35.193127>,  <43.751644, 33.685947, 35.129185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.022133, 34.321266, 35.193127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.026234, 34.091446, 35.520489>,  <44.028694, 33.953552, 35.716904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.026234, 34.091446, 35.520489>,  <44.022133, 34.321266, 35.193127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.026234, 34.091446, 35.520489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971691, 0.198915, 0.127475,
		-0.236034, 0.793928, 0.560327,
		0.010251, -0.574553, 0.818403,
		44.029308, 33.919079, 35.766010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364849, 34.688286, 35.767826>,  <44.022133, 34.321266, 35.193127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364849, 34.688286, 35.767826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.378223, 34.291512, 35.816723>,  <44.386246, 34.053448, 35.846062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.378223, 34.291512, 35.816723>,  <44.364849, 34.688286, 35.767826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.378223, 34.291512, 35.816723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976720, 0.058359, 0.206426,
		-0.211895, 0.112499, 0.970796,
		0.033432, -0.991936, 0.122246,
		44.388252, 33.993931, 35.853397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467144, 34.280933, 36.486668>,  <44.364849, 34.688286, 35.767826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467144, 34.280933, 36.486668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643459, 34.046532, 36.214695>,  <44.749249, 33.905891, 36.051510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643459, 34.046532, 36.214695>,  <44.467144, 34.280933, 36.486668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643459, 34.046532, 36.214695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864142, 0.072113, 0.498056,
		-0.242829, -0.807095, 0.538174,
		0.440787, -0.586001, -0.679933,
		44.775696, 33.870731, 36.010715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859589, 33.595127, 36.788647>,  <44.467144, 34.280933, 36.486668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859589, 33.595127, 36.788647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003544, 33.743038, 36.446011>,  <45.089916, 33.831783, 36.240429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003544, 33.743038, 36.446011>,  <44.859589, 33.595127, 36.788647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003544, 33.743038, 36.446011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900177, 0.103746, 0.422988,
		0.245279, -0.923310, -0.295528,
		0.359889, 0.369778, -0.856589,
		45.111511, 33.853973, 36.189034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.429230, 33.193089, 36.550190>,  <44.859589, 33.595127, 36.788647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.429230, 33.193089, 36.550190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.407753, 33.586472, 36.480991>,  <45.394867, 33.822502, 36.439472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.407753, 33.586472, 36.480991>,  <45.429230, 33.193089, 36.550190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.407753, 33.586472, 36.480991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930797, 0.112023, 0.347949,
		0.361573, -0.142346, -0.921413,
		-0.053690, 0.983457, -0.173000,
		45.391647, 33.881508, 36.429092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.258095, 33.151199, 36.512325>,  <45.429230, 33.193089, 36.550190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.258095, 33.151199, 36.512325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.386543, 33.529884, 36.522308>,  <46.463612, 33.757095, 36.528297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.386543, 33.529884, 36.522308>,  <46.258095, 33.151199, 36.512325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.386543, 33.529884, 36.522308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635315, -0.195809, -0.747016,
		-0.702320, 0.255740, -0.664337,
		0.321125, 0.946708, 0.024955,
		46.482880, 33.813896, 36.529797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.165775, 33.667866, 35.909027>,  <46.258095, 33.151199, 36.512325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.165775, 33.667866, 35.909027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.497574, 33.705708, 36.129208>,  <46.696651, 33.728413, 36.261314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.497574, 33.705708, 36.129208>,  <46.165775, 33.667866, 35.909027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.497574, 33.705708, 36.129208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546531, -0.340588, -0.765052,
		0.115095, 0.935441, -0.334221,
		0.829492, 0.094608, 0.550447,
		46.746422, 33.734089, 36.294342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.145485, 34.463303, 35.900387>,  <46.165775, 33.667866, 35.909027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.145485, 34.463303, 35.900387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.471989, 34.655113, 36.029240>,  <46.667892, 34.770199, 36.106552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.471989, 34.655113, 36.029240>,  <46.145485, 34.463303, 35.900387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.471989, 34.655113, 36.029240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517682, -0.359744, -0.776266,
		-0.256357, 0.800398, -0.541889,
		0.816264, 0.479528, 0.322129,
		46.716869, 34.798973, 36.125877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.437710, 34.705566, 35.240654>,  <46.145485, 34.463303, 35.900387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.437710, 34.705566, 35.240654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.762520, 34.692432, 35.473736>,  <46.957405, 34.684551, 35.613583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.762520, 34.692432, 35.473736>,  <46.437710, 34.705566, 35.240654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.762520, 34.692432, 35.473736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578993, -0.080205, -0.811378,
		0.073378, 0.996237, -0.046117,
		0.812024, -0.032836, 0.582700,
		47.006126, 34.682583, 35.648544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.978024, 35.256382, 35.160301>,  <46.437710, 34.705566, 35.240654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.978024, 35.256382, 35.160301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120415, 34.892242, 35.244720>,  <47.205849, 34.673759, 35.295372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120415, 34.892242, 35.244720>,  <46.978024, 35.256382, 35.160301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.120415, 34.892242, 35.244720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480534, -0.015376, -0.876841,
		0.801476, 0.413558, 0.431979,
		0.355982, -0.910348, 0.211052,
		47.227211, 34.619137, 35.308037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.800457, 35.197437, 35.228176>,  <46.978024, 35.256382, 35.160301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.800457, 35.197437, 35.228176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.601692, 34.876266, 35.096489>,  <47.482433, 34.683563, 35.017479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.601692, 34.876266, 35.096489>,  <47.800457, 35.197437, 35.228176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.601692, 34.876266, 35.096489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436520, 0.096605, -0.894493,
		0.750018, -0.588194, 0.302490,
		-0.496913, -0.802929, -0.329214,
		47.452618, 34.635387, 34.997726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.335796, 28.388288, 25.818508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.996239, 28.289782, 25.631432>,  <41.792503, 28.230677, 25.519186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.996239, 28.289782, 25.631432>,  <42.335796, 28.388288, 25.818508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996239, 28.289782, 25.631432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528343, 0.421236, 0.737166,
		0.015468, 0.872875, -0.487698,
		-0.848890, -0.246269, -0.467693,
		41.741573, 28.215900, 25.491123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908199, 28.991367, 25.918556>,  <42.335796, 28.388288, 25.818508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908199, 28.991367, 25.918556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.647835, 28.703993, 25.820442>,  <41.491615, 28.531569, 25.761574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.647835, 28.703993, 25.820442>,  <41.908199, 28.991367, 25.918556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647835, 28.703993, 25.820442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660558, 0.376756, 0.649398,
		-0.374140, 0.584723, -0.719804,
		-0.650909, -0.718438, -0.245284,
		41.452560, 28.488461, 25.746857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295456, 29.261736, 25.922571>,  <41.908199, 28.991367, 25.918556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295456, 29.261736, 25.922571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.181156, 28.881702, 25.972672>,  <41.112576, 28.653683, 26.002731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.181156, 28.881702, 25.972672>,  <41.295456, 29.261736, 25.922571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181156, 28.881702, 25.972672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684135, 0.293767, 0.667578,
		-0.671050, 0.105068, -0.733929,
		-0.285745, -0.950085, 0.125252,
		41.095432, 28.596678, 26.010246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596600, 29.258398, 25.890398>,  <41.295456, 29.261736, 25.922571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596600, 29.258398, 25.890398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.679844, 28.915939, 26.079588>,  <40.729790, 28.710464, 26.193102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.679844, 28.915939, 26.079588>,  <40.596600, 29.258398, 25.890398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679844, 28.915939, 26.079588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703248, 0.205116, 0.680713,
		-0.679804, -0.474282, -0.559395,
		0.208109, -0.856145, 0.472977,
		40.742275, 28.659096, 26.221481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029785, 29.139334, 26.092470>,  <40.596600, 29.258398, 25.890398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029785, 29.139334, 26.092470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.257935, 28.889326, 26.305645>,  <40.394825, 28.739321, 26.433550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.257935, 28.889326, 26.305645>,  <40.029785, 29.139334, 26.092470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257935, 28.889326, 26.305645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657991, 0.040688, 0.751926,
		-0.491654, -0.779546, -0.388051,
		0.570372, -0.625022, 0.532939,
		40.429047, 28.701820, 26.465527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627216, 28.607141, 26.415043>,  <40.029785, 29.139334, 26.092470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627216, 28.607141, 26.415043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.956490, 28.642696, 26.639351>,  <40.154053, 28.664028, 26.773935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.956490, 28.642696, 26.639351>,  <39.627216, 28.607141, 26.415043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956490, 28.642696, 26.639351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567077, 0.079825, 0.819788,
		0.028099, -0.992839, 0.116112,
		0.823186, 0.088880, 0.560773,
		40.203445, 28.669363, 26.807583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366241, 28.292290, 27.119247>,  <39.627216, 28.607141, 26.415043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366241, 28.292290, 27.119247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.726517, 28.442484, 27.206676>,  <39.942680, 28.532600, 27.259134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.726517, 28.442484, 27.206676>,  <39.366241, 28.292290, 27.119247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726517, 28.442484, 27.206676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263454, 0.071979, 0.961983,
		0.345479, -0.924029, 0.163754,
		0.900687, 0.375487, 0.218571,
		39.996723, 28.555130, 27.272247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699821, 27.912115, 27.700909>,  <39.366241, 28.292290, 27.119247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699821, 27.912115, 27.700909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.881424, 28.268486, 27.705351>,  <39.990387, 28.482309, 27.708015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.881424, 28.268486, 27.705351>,  <39.699821, 27.912115, 27.700909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881424, 28.268486, 27.705351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284836, 0.133319, 0.949260,
		0.844241, -0.434137, 0.314296,
		0.454010, 0.890927, 0.011104,
		40.017628, 28.535765, 27.708683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184917, 27.955360, 28.337933>,  <39.699821, 27.912115, 27.700909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184917, 27.955360, 28.337933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.098598, 28.332609, 28.236774>,  <40.046806, 28.558958, 28.176081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.098598, 28.332609, 28.236774>,  <40.184917, 27.955360, 28.337933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098598, 28.332609, 28.236774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365880, 0.162024, 0.916449,
		0.905298, 0.290294, 0.310106,
		-0.215795, 0.943121, -0.252893,
		40.033859, 28.615545, 28.160906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507446, 28.435068, 28.842503>,  <40.184917, 27.955360, 28.337933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507446, 28.435068, 28.842503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.241150, 28.680016, 28.671955>,  <40.081371, 28.826984, 28.569628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.241150, 28.680016, 28.671955>,  <40.507446, 28.435068, 28.842503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241150, 28.680016, 28.671955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172558, 0.429563, 0.886397,
		0.725954, 0.663687, -0.180310,
		-0.665744, 0.612369, -0.426368,
		40.041428, 28.863726, 28.544044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676781, 29.144135, 29.016666>,  <40.507446, 28.435068, 28.842503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676781, 29.144135, 29.016666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.281254, 29.132328, 28.958189>,  <40.043938, 29.125244, 28.923101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.281254, 29.132328, 28.958189>,  <40.676781, 29.144135, 29.016666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281254, 29.132328, 28.958189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144737, 0.426462, 0.892850,
		0.035992, 0.904024, -0.425964,
		-0.988815, -0.029517, -0.146195,
		39.984608, 29.123472, 28.914331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476578, 29.763351, 29.382116>,  <40.676781, 29.144135, 29.016666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476578, 29.763351, 29.382116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.138958, 29.574554, 29.280287>,  <39.936386, 29.461275, 29.219189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.138958, 29.574554, 29.280287>,  <40.476578, 29.763351, 29.382116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138958, 29.574554, 29.280287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435960, 0.327477, 0.838270,
		-0.312290, 0.818523, -0.482176,
		-0.844046, -0.471993, -0.254575,
		39.885746, 29.432957, 29.203915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006332, 30.238523, 29.440411>,  <40.476578, 29.763351, 29.382116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006332, 30.238523, 29.440411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.814037, 29.893423, 29.503084>,  <39.698662, 29.686363, 29.540689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.814037, 29.893423, 29.503084>,  <40.006332, 30.238523, 29.440411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814037, 29.893423, 29.503084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448152, 0.395331, 0.801794,
		-0.753691, 0.315234, -0.576695,
		-0.480738, -0.862752, 0.156685,
		39.669815, 29.634598, 29.550089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176651, 30.272064, 29.599413>,  <40.006332, 30.238523, 29.440411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176651, 30.272064, 29.599413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.302792, 29.922626, 29.747677>,  <39.378475, 29.712963, 29.836636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.302792, 29.922626, 29.747677>,  <39.176651, 30.272064, 29.599413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302792, 29.922626, 29.747677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445529, 0.208578, 0.870632,
		-0.837890, -0.439692, -0.323437,
		0.315348, -0.873594, 0.370661,
		39.397396, 29.660549, 29.858875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567879, 30.040194, 30.075851>,  <39.176651, 30.272064, 29.599413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567879, 30.040194, 30.075851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.889889, 29.828451, 30.182970>,  <39.083096, 29.701406, 30.247242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.889889, 29.828451, 30.182970>,  <38.567879, 30.040194, 30.075851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889889, 29.828451, 30.182970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322649, -0.011875, 0.946444,
		-0.497826, -0.848316, -0.180356,
		0.805026, -0.529356, 0.267797,
		39.131397, 29.669643, 30.263309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318253, 29.467596, 30.448856>,  <38.567879, 30.040194, 30.075851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318253, 29.467596, 30.448856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.694271, 29.479160, 30.584787>,  <38.919880, 29.486099, 30.666346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.694271, 29.479160, 30.584787>,  <38.318253, 29.467596, 30.448856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694271, 29.479160, 30.584787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339658, -0.010715, 0.940488,
		0.030842, -0.999524, -0.000249,
		0.940043, 0.028922, 0.339827,
		38.976284, 29.487833, 30.686735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397758, 29.010586, 31.047382>,  <38.318253, 29.467596, 30.448856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397758, 29.010586, 31.047382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.712120, 29.250933, 31.105772>,  <38.900738, 29.395140, 31.140806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.712120, 29.250933, 31.105772>,  <38.397758, 29.010586, 31.047382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712120, 29.250933, 31.105772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169052, -0.018288, 0.985437,
		0.594785, -0.799140, 0.087205,
		0.785908, 0.600866, 0.145974,
		38.947891, 29.431192, 31.149565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720634, 28.785349, 31.650558>,  <38.397758, 29.010586, 31.047382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720634, 28.785349, 31.650558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.886333, 29.145769, 31.599165>,  <38.985752, 29.362020, 31.568329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.886333, 29.145769, 31.599165>,  <38.720634, 28.785349, 31.650558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886333, 29.145769, 31.599165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081178, 0.177179, 0.980825,
		0.906538, -0.395871, 0.146541,
		0.414245, 0.901052, -0.128483,
		39.010609, 29.416084, 31.560619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207531, 28.797663, 32.084057>,  <38.720634, 28.785349, 31.650558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207531, 28.797663, 32.084057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.108475, 29.176504, 32.002399>,  <39.049042, 29.403809, 31.953405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.108475, 29.176504, 32.002399>,  <39.207531, 28.797663, 32.084057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108475, 29.176504, 32.002399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193692, 0.158054, 0.968247,
		0.949294, 0.279313, 0.144306,
		-0.247636, 0.947103, -0.204140,
		39.034184, 29.460634, 31.941158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602028, 29.145523, 32.597252>,  <39.207531, 28.797663, 32.084057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602028, 29.145523, 32.597252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.310825, 29.386879, 32.467068>,  <39.136105, 29.531693, 32.388958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.310825, 29.386879, 32.467068>,  <39.602028, 29.145523, 32.597252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310825, 29.386879, 32.467068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271199, 0.182542, 0.945055,
		0.629648, 0.776272, 0.030747,
		-0.728007, 0.603391, -0.325461,
		39.092422, 29.567896, 32.369431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677425, 29.767033, 33.166172>,  <39.602028, 29.145523, 32.597252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677425, 29.767033, 33.166172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.344246, 29.807161, 32.948502>,  <39.144337, 29.831238, 32.817898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.344246, 29.807161, 32.948502>,  <39.677425, 29.767033, 33.166172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344246, 29.807161, 32.948502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510239, 0.241316, 0.825483,
		0.214133, 0.965247, -0.149816,
		-0.832949, 0.100321, -0.544180,
		39.094360, 29.837257, 32.785248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364834, 30.559404, 33.246861>,  <39.677425, 29.767033, 33.166172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364834, 30.559404, 33.246861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.675228, 30.796839, 33.332184>,  <39.861465, 30.939299, 33.383377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.675228, 30.796839, 33.332184>,  <39.364834, 30.559404, 33.246861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675228, 30.796839, 33.332184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506401, -0.384689, -0.771733,
		-0.376033, 0.706874, -0.599106,
		0.775988, 0.593585, 0.213306,
		39.908024, 30.974915, 33.396175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645790, 30.906679, 32.626740>,  <39.364834, 30.559404, 33.246861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645790, 30.906679, 32.626740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951942, 30.902962, 32.884144>,  <40.135635, 30.900732, 33.038586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951942, 30.902962, 32.884144>,  <39.645790, 30.906679, 32.626740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951942, 30.902962, 32.884144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579219, -0.425896, -0.695067,
		0.280528, 0.904725, -0.320589,
		0.765382, -0.009294, 0.643509,
		40.181557, 30.900173, 33.077198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212399, 30.940762, 32.184692>,  <39.645790, 30.906679, 32.626740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212399, 30.940762, 32.184692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.354267, 30.802444, 32.532169>,  <40.439388, 30.719454, 32.740658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.354267, 30.802444, 32.532169>,  <40.212399, 30.940762, 32.184692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354267, 30.802444, 32.532169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716237, -0.496738, -0.490160,
		0.601009, 0.796039, 0.071490,
		0.354674, -0.345794, 0.868696,
		40.460670, 30.698706, 32.792778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992050, 31.045984, 32.197250>,  <40.212399, 30.940762, 32.184692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992050, 31.045984, 32.197250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.916470, 30.759983, 32.466492>,  <40.871120, 30.588383, 32.628036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.916470, 30.759983, 32.466492>,  <40.992050, 31.045984, 32.197250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916470, 30.759983, 32.466492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754232, -0.544614, -0.366785,
		0.628833, 0.438370, 0.642184,
		-0.188955, -0.715002, 0.673104,
		40.859783, 30.545483, 32.668423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555447, 30.943174, 32.576340>,  <40.992050, 31.045984, 32.197250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555447, 30.943174, 32.576340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.339085, 30.606922, 32.565285>,  <41.209267, 30.405170, 32.558651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.339085, 30.606922, 32.565285>,  <41.555447, 30.943174, 32.576340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339085, 30.606922, 32.565285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793209, -0.498909, -0.349156,
		0.279726, -0.210777, 0.936657,
		-0.540901, -0.840632, -0.027633,
		41.176815, 30.354733, 32.556995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080822, 30.408676, 32.750248>,  <41.555447, 30.943174, 32.576340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080822, 30.408676, 32.750248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.772057, 30.211226, 32.590004>,  <41.586796, 30.092756, 32.493858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.772057, 30.211226, 32.590004>,  <42.080822, 30.408676, 32.750248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772057, 30.211226, 32.590004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635313, -0.621767, -0.458022,
		-0.022992, -0.608063, 0.793556,
		-0.771913, -0.493625, -0.400606,
		41.540482, 30.063137, 32.469822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279613, 29.685476, 32.744480>,  <42.080822, 30.408676, 32.750248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279613, 29.685476, 32.744480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.987434, 29.725098, 32.474182>,  <41.812126, 29.748871, 32.312004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.987434, 29.725098, 32.474182>,  <42.279613, 29.685476, 32.744480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987434, 29.725098, 32.474182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531385, -0.539126, -0.653432,
		-0.429036, -0.836380, 0.341169,
		-0.730450, 0.099053, -0.675745,
		41.768299, 29.754814, 32.271458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152184, 28.901730, 32.494736>,  <42.279613, 29.685476, 32.744480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152184, 28.901730, 32.494736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.999199, 29.148443, 32.219547>,  <41.907410, 29.296471, 32.054436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.999199, 29.148443, 32.219547>,  <42.152184, 28.901730, 32.494736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999199, 29.148443, 32.219547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411389, -0.553034, -0.724509,
		-0.827335, -0.560119, -0.042225,
		-0.382459, 0.616783, -0.687971,
		41.884460, 29.333477, 32.013157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776108, 28.399483, 32.033100>,  <42.152184, 28.901730, 32.494736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776108, 28.399483, 32.033100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.844940, 28.738438, 31.832172>,  <41.886238, 28.941811, 31.711617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.844940, 28.738438, 31.832172>,  <41.776108, 28.399483, 32.033100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844940, 28.738438, 31.832172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505368, -0.513647, -0.693376,
		-0.845571, -0.134536, -0.516633,
		0.172082, 0.847388, -0.502315,
		41.896564, 28.992655, 31.681479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616314, 28.215464, 31.343897>,  <41.776108, 28.399483, 32.033100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616314, 28.215464, 31.343897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.851612, 28.537352, 31.311905>,  <41.992790, 28.730484, 31.292709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.851612, 28.537352, 31.311905>,  <41.616314, 28.215464, 31.343897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851612, 28.537352, 31.311905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413381, -0.384223, -0.825523,
		-0.695044, 0.452547, -0.558673,
		0.588243, 0.804719, -0.079977,
		42.028084, 28.778767, 31.287912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642197, 28.357895, 30.653286>,  <41.616314, 28.215464, 31.343897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642197, 28.357895, 30.653286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.948971, 28.583942, 30.774906>,  <42.133038, 28.719570, 30.847879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.948971, 28.583942, 30.774906>,  <41.642197, 28.357895, 30.653286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948971, 28.583942, 30.774906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562901, -0.364922, -0.741602,
		-0.308139, 0.739913, -0.597979,
		0.766937, 0.565119, 0.304052,
		42.179050, 28.753479, 30.866121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885345, 28.602518, 30.038866>,  <41.642197, 28.357895, 30.653286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885345, 28.602518, 30.038866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.191311, 28.669449, 30.287674>,  <42.374889, 28.709608, 30.436958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.191311, 28.669449, 30.287674>,  <41.885345, 28.602518, 30.038866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191311, 28.669449, 30.287674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643573, -0.158250, -0.748846,
		-0.026868, 0.973118, -0.228734,
		0.764913, 0.167327, 0.622021,
		42.420784, 28.719646, 30.474279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306839, 29.164064, 29.842104>,  <41.885345, 28.602518, 30.038866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306839, 29.164064, 29.842104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.546307, 28.947407, 30.078144>,  <42.689987, 28.817411, 30.219769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.546307, 28.947407, 30.078144>,  <42.306839, 29.164064, 29.842104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546307, 28.947407, 30.078144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705662, 0.008069, -0.708503,
		0.378996, 0.840568, 0.387049,
		0.598668, -0.541645, 0.590099,
		42.725906, 28.784914, 30.255175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927105, 29.422449, 29.643124>,  <42.306839, 29.164064, 29.842104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927105, 29.422449, 29.643124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.942493, 29.051220, 29.791286>,  <42.951725, 28.828482, 29.880184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.942493, 29.051220, 29.791286>,  <42.927105, 29.422449, 29.643124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942493, 29.051220, 29.791286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654281, -0.256779, -0.711323,
		0.755272, 0.269714, 0.597343,
		0.038469, -0.928073, 0.370407,
		42.954033, 28.772799, 29.902409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637390, 29.173956, 29.906174>,  <42.927105, 29.422449, 29.643124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637390, 29.173956, 29.906174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.439957, 28.835203, 29.827017>,  <43.321495, 28.631950, 29.779522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.439957, 28.835203, 29.827017>,  <43.637390, 29.173956, 29.906174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439957, 28.835203, 29.827017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614862, -0.178880, -0.768080,
		0.615075, -0.500790, 0.609009,
		-0.493586, -0.846883, -0.197893,
		43.291882, 28.581139, 29.767649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169521, 28.653885, 29.717684>,  <43.637390, 29.173956, 29.906174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169521, 28.653885, 29.717684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.834961, 28.507908, 29.554100>,  <43.634224, 28.420322, 29.455950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.834961, 28.507908, 29.554100>,  <44.169521, 28.653885, 29.717684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834961, 28.507908, 29.554100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494428, -0.180304, -0.850312,
		0.236576, -0.913405, 0.331244,
		-0.836404, -0.364940, -0.408957,
		43.584038, 28.398426, 29.431414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.451958, 28.274622, 29.195038>,  <44.169521, 28.653885, 29.717684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.451958, 28.274622, 29.195038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.066601, 28.281054, 29.087999>,  <43.835384, 28.284912, 29.023777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.066601, 28.281054, 29.087999>,  <44.451958, 28.274622, 29.195038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066601, 28.281054, 29.087999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263271, -0.131442, -0.955726,
		-0.050540, -0.991194, 0.122398,
		-0.963397, 0.016079, -0.267596,
		43.777580, 28.285877, 29.007721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392521, 27.738461, 28.756966>,  <44.451958, 28.274622, 29.195038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392521, 27.738461, 28.756966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.059196, 27.939930, 28.665840>,  <43.859200, 28.060812, 28.611166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.059196, 27.939930, 28.665840>,  <44.392521, 27.738461, 28.756966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059196, 27.939930, 28.665840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151753, -0.187844, -0.970405,
		-0.531562, -0.843224, 0.080099,
		-0.833314, 0.503675, -0.227812,
		43.809200, 28.091032, 28.597496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080929, 27.304823, 28.293688>,  <44.392521, 27.738461, 28.756966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080929, 27.304823, 28.293688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.954144, 27.676697, 28.218615>,  <43.878075, 27.899820, 28.173571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.954144, 27.676697, 28.218615>,  <44.080929, 27.304823, 28.293688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954144, 27.676697, 28.218615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066356, -0.175664, -0.982211,
		-0.946115, -0.323774, -0.006012,
		-0.316959, 0.929684, -0.187683,
		43.859055, 27.955603, 28.162310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.556423, 27.251289, 27.832148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.706509, 27.619545, 27.788988>,  <43.796558, 27.840498, 27.763092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.706509, 27.619545, 27.788988>,  <43.556423, 27.251289, 27.832148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706509, 27.619545, 27.788988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057561, -0.093040, -0.993997,
		-0.925151, 0.379169, 0.018083,
		0.375210, 0.920638, -0.107901,
		43.819073, 27.895737, 27.756618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350121, 27.354494, 27.132963>,  <43.556423, 27.251289, 27.832148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350121, 27.354494, 27.132963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.601845, 27.658382, 27.198433>,  <43.752880, 27.840715, 27.237715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.601845, 27.658382, 27.198433>,  <43.350121, 27.354494, 27.132963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601845, 27.658382, 27.198433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004742, 0.214359, -0.976743,
		-0.777139, 0.613899, 0.138501,
		0.629311, 0.759722, 0.163675,
		43.790638, 27.886299, 27.247536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064560, 27.835651, 26.731030>,  <43.350121, 27.354494, 27.132963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064560, 27.835651, 26.731030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.447189, 27.943327, 26.775751>,  <43.676769, 28.007933, 26.802584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.447189, 27.943327, 26.775751>,  <43.064560, 27.835651, 26.731030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447189, 27.943327, 26.775751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006946, 0.362400, -0.931997,
		-0.291401, 0.892302, 0.344793,
		0.956576, 0.269190, 0.111802,
		43.734161, 28.024084, 26.809292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.133820, 28.570244, 26.566116>,  <43.064560, 27.835651, 26.731030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.133820, 28.570244, 26.566116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.499454, 28.415775, 26.516598>,  <43.718834, 28.323093, 26.486887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.499454, 28.415775, 26.516598>,  <43.133820, 28.570244, 26.566116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499454, 28.415775, 26.516598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018262, 0.344155, -0.938735,
		0.405116, 0.855821, 0.321638,
		0.914083, -0.386171, -0.123794,
		43.773678, 28.299925, 26.479460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460110, 29.034882, 26.109840>,  <43.133820, 28.570244, 26.566116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460110, 29.034882, 26.109840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.700336, 28.715612, 26.090902>,  <43.844471, 28.524052, 26.079540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.700336, 28.715612, 26.090902>,  <43.460110, 29.034882, 26.109840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700336, 28.715612, 26.090902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157190, 0.175915, -0.971774,
		0.783970, 0.576175, 0.231113,
		0.600568, -0.798171, -0.047343,
		43.880508, 28.476162, 26.076700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885307, 29.257275, 25.675903>,  <43.460110, 29.034882, 26.109840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885307, 29.257275, 25.675903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.946613, 28.862003, 25.677250>,  <43.983398, 28.624840, 25.678059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.946613, 28.862003, 25.677250>,  <43.885307, 29.257275, 25.675903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946613, 28.862003, 25.677250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271982, 0.038909, -0.961516,
		0.950018, 0.148287, 0.274730,
		0.153270, -0.988179, 0.003367,
		43.992596, 28.565550, 25.678261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.655224, 29.099791, 25.436003>,  <43.885307, 29.257275, 25.675903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.655224, 29.099791, 25.436003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.455135, 28.756155, 25.392651>,  <44.335083, 28.549974, 25.366638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.455135, 28.756155, 25.392651>,  <44.655224, 29.099791, 25.436003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455135, 28.756155, 25.392651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376350, -0.102979, -0.920736,
		0.779832, -0.501363, 0.374830,
		-0.500223, -0.859087, -0.108382,
		44.305069, 28.498428, 25.360136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.176476, 28.541737, 25.336975>,  <44.655224, 29.099791, 25.436003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.176476, 28.541737, 25.336975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.830910, 28.422300, 25.174746>,  <44.623569, 28.350637, 25.077408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.830910, 28.422300, 25.174746>,  <45.176476, 28.541737, 25.336975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830910, 28.422300, 25.174746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483265, -0.264786, -0.834472,
		0.141778, -0.916914, 0.373053,
		-0.863918, -0.298593, -0.405571,
		44.571735, 28.332722, 25.053074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314610, 27.842583, 25.066404>,  <45.176476, 28.541737, 25.336975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314610, 27.842583, 25.066404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.987625, 27.992516, 24.891472>,  <44.791435, 28.082476, 24.786512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.987625, 27.992516, 24.891472>,  <45.314610, 27.842583, 25.066404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987625, 27.992516, 24.891472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444701, -0.071817, -0.892795,
		-0.366057, -0.924307, -0.107981,
		-0.817462, 0.374833, -0.437329,
		44.742386, 28.104965, 24.760273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242920, 27.391073, 24.457745>,  <45.314610, 27.842583, 25.066404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242920, 27.391073, 24.457745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.015530, 27.705034, 24.359144>,  <44.879097, 27.893412, 24.299984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.015530, 27.705034, 24.359144>,  <45.242920, 27.391073, 24.457745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.015530, 27.705034, 24.359144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301015, -0.080408, -0.950223,
		-0.765654, -0.614380, -0.190557,
		-0.568476, 0.784903, -0.246502,
		44.844986, 27.940504, 24.285194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.846481, 27.184563, 23.931412>,  <45.242920, 27.391073, 24.457745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.846481, 27.184563, 23.931412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.852924, 27.583534, 23.903490>,  <44.856792, 27.822918, 23.886736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.852924, 27.583534, 23.903490>,  <44.846481, 27.184563, 23.931412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.852924, 27.583534, 23.903490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105555, -0.067728, -0.992105,
		-0.994283, 0.023353, 0.104192,
		0.016112, 0.997431, -0.069805,
		44.857758, 27.882763, 23.882549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379711, 27.343285, 23.422539>,  <44.846481, 27.184563, 23.931412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379711, 27.343285, 23.422539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.600632, 27.675150, 23.455086>,  <44.733185, 27.874269, 23.474615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.600632, 27.675150, 23.455086>,  <44.379711, 27.343285, 23.422539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600632, 27.675150, 23.455086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062833, 0.138758, -0.988331,
		-0.831271, 0.540748, 0.128766,
		0.552305, 0.829661, 0.081369,
		44.766323, 27.924047, 23.479496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983654, 27.860188, 23.047045>,  <44.379711, 27.343285, 23.422539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.983654, 27.860188, 23.047045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.348404, 28.018150, 23.091818>,  <44.567253, 28.112928, 23.118681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.348404, 28.018150, 23.091818>,  <43.983654, 27.860188, 23.047045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348404, 28.018150, 23.091818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031188, 0.205244, -0.978214,
		-0.409279, 0.895501, 0.174841,
		0.911876, 0.394909, 0.111930,
		44.621967, 28.136623, 23.125397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998577, 28.380348, 22.535295>,  <43.983654, 27.860188, 23.047045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998577, 28.380348, 22.535295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.386734, 28.324902, 22.614418>,  <44.619629, 28.291634, 22.661892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.386734, 28.324902, 22.614418>,  <43.998577, 28.380348, 22.535295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.386734, 28.324902, 22.614418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208241, 0.065200, -0.975902,
		0.122378, 0.988198, 0.092135,
		0.970391, -0.138615, 0.197804,
		44.677853, 28.283318, 22.673759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.318840, 29.046623, 22.281628>,  <43.998577, 28.380348, 22.535295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.318840, 29.046623, 22.281628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.606602, 28.769012, 22.292837>,  <44.779259, 28.602446, 22.299562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.606602, 28.769012, 22.292837>,  <44.318840, 29.046623, 22.281628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606602, 28.769012, 22.292837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209201, 0.178026, -0.961531,
		0.662340, 0.697591, 0.273264,
		0.719403, -0.694027, 0.028023,
		44.822422, 28.560804, 22.301245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842106, 29.417171, 21.927477>,  <44.318840, 29.046623, 22.281628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842106, 29.417171, 21.927477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.934277, 29.028164, 21.914137>,  <44.989578, 28.794760, 21.906132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.934277, 29.028164, 21.914137>,  <44.842106, 29.417171, 21.927477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.934277, 29.028164, 21.914137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266989, 0.096144, -0.958892,
		0.935746, 0.212047, 0.281806,
		0.230424, -0.972518, -0.033352,
		45.003403, 28.736408, 21.904131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556908, 29.398220, 21.766750>,  <44.842106, 29.417171, 21.927477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556908, 29.398220, 21.766750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.432617, 29.030201, 21.671282>,  <45.358044, 28.809389, 21.614000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.432617, 29.030201, 21.671282>,  <45.556908, 29.398220, 21.766750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.432617, 29.030201, 21.671282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569574, 0.020795, -0.821678,
		0.760946, -0.391254, 0.517573,
		-0.310722, -0.920048, -0.238672,
		45.339401, 28.754187, 21.599680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.187988, 29.060934, 21.604454>,  <45.556908, 29.398220, 21.766750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.187988, 29.060934, 21.604454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.896183, 28.848095, 21.432556>,  <45.721100, 28.720392, 21.329418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.896183, 28.848095, 21.432556>,  <46.187988, 29.060934, 21.604454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.896183, 28.848095, 21.432556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518891, -0.021219, -0.854577,
		0.445599, -0.846417, 0.291581,
		-0.729516, -0.532097, -0.429743,
		45.677330, 28.688465, 21.303633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.537724, 28.547569, 21.171700>,  <46.187988, 29.060934, 21.604454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.537724, 28.547569, 21.171700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.164280, 28.614479, 21.044960>,  <45.940212, 28.654625, 20.968916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.164280, 28.614479, 21.044960>,  <46.537724, 28.547569, 21.171700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.164280, 28.614479, 21.044960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311803, -0.056309, -0.948477,
		-0.176499, -0.984301, 0.000414,
		-0.933610, 0.167276, -0.316847,
		45.884197, 28.664661, 20.949905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.439690, 28.033535, 20.648178>,  <46.537724, 28.547569, 21.171700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.439690, 28.033535, 20.648178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.141861, 28.287842, 20.566776>,  <45.963165, 28.440426, 20.517935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.141861, 28.287842, 20.566776>,  <46.439690, 28.033535, 20.648178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.141861, 28.287842, 20.566776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219351, -0.054912, -0.974100,
		-0.630477, -0.769924, -0.098571,
		-0.744570, 0.635769, -0.203504,
		45.918491, 28.478573, 20.505726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.088554, 27.717058, 20.076118>,  <46.439690, 28.033535, 20.648178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.088554, 27.717058, 20.076118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.982635, 28.102751, 20.071299>,  <45.919086, 28.334166, 20.068407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.982635, 28.102751, 20.071299>,  <46.088554, 27.717058, 20.076118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.982635, 28.102751, 20.071299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016021, -0.016892, -0.999729,
		-0.964172, -0.264528, 0.019921,
		-0.264793, 0.964230, -0.012048,
		45.903198, 28.392019, 20.067684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.623135, 27.811676, 19.558052>,  <46.088554, 27.717058, 20.076118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.623135, 27.811676, 19.558052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.761379, 28.183586, 19.608753>,  <45.844326, 28.406733, 19.639174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.761379, 28.183586, 19.608753>,  <45.623135, 27.811676, 19.558052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.761379, 28.183586, 19.608753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047706, 0.152310, -0.987181,
		-0.937163, 0.335137, 0.096996,
		0.345614, 0.929777, 0.126752,
		45.865063, 28.462519, 19.646778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.217754, 28.287687, 19.135204>,  <45.623135, 27.811676, 19.558052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.217754, 28.287687, 19.135204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.575809, 28.448853, 19.211502>,  <45.790642, 28.545551, 19.257280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.575809, 28.448853, 19.211502>,  <45.217754, 28.287687, 19.135204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575809, 28.448853, 19.211502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014873, 0.454643, -0.890550,
		-0.445535, 0.794330, 0.412962,
		0.895141, 0.402914, 0.190745,
		45.844353, 28.569727, 19.268726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733437, 27.999462, 18.541328>,  <45.217754, 28.287687, 19.135204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733437, 27.999462, 18.541328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.539211, 27.652069, 18.501390>,  <44.422676, 27.443634, 18.477428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.539211, 27.652069, 18.501390>,  <44.733437, 27.999462, 18.541328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539211, 27.652069, 18.501390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827884, 0.420140, 0.371606,
		-0.280784, 0.263097, -0.923006,
		-0.485560, -0.868483, -0.099845,
		44.393543, 27.391523, 18.471437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555862, 28.719076, 18.344877>,  <44.733437, 27.999462, 18.541328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555862, 28.719076, 18.344877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.204166, 28.706089, 18.154772>,  <43.993149, 28.698298, 18.040709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.204166, 28.706089, 18.154772>,  <44.555862, 28.719076, 18.344877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204166, 28.706089, 18.154772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446021, -0.294305, 0.845251,
		-0.167316, 0.955160, 0.244285,
		-0.879244, -0.032468, -0.475264,
		43.940392, 28.696348, 18.012194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071686, 29.178614, 18.774679>,  <44.555862, 28.719076, 18.344877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071686, 29.178614, 18.774679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.838551, 28.943501, 18.550245>,  <43.698669, 28.802433, 18.415585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.838551, 28.943501, 18.550245>,  <44.071686, 29.178614, 18.774679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838551, 28.943501, 18.550245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528403, -0.250423, 0.811221,
		-0.617329, 0.769287, -0.164630,
		-0.582834, -0.587781, -0.561086,
		43.663700, 28.767166, 18.381920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431339, 29.416626, 18.762978>,  <44.071686, 29.178614, 18.774679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431339, 29.416626, 18.762978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.436142, 29.017384, 18.738859>,  <43.439022, 28.777838, 18.724388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.436142, 29.017384, 18.738859>,  <43.431339, 29.416626, 18.762978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436142, 29.017384, 18.738859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399521, -0.060069, 0.914754,
		-0.916645, 0.013107, -0.399486,
		0.012007, -0.998108, -0.060298,
		43.439743, 28.717951, 18.720770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978474, 29.144392, 19.253519>,  <43.431339, 29.416626, 18.762978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978474, 29.144392, 19.253519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.133362, 28.790125, 19.151031>,  <43.226295, 28.577564, 19.089539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.133362, 28.790125, 19.151031>,  <42.978474, 29.144392, 19.253519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133362, 28.790125, 19.151031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332444, -0.393328, 0.857189,
		-0.859964, -0.246746, -0.446741,
		0.387223, -0.885669, -0.256219,
		43.249527, 28.524424, 19.074165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418240, 28.673801, 19.284643>,  <42.978474, 29.144392, 19.253519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418240, 28.673801, 19.284643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.767097, 28.481346, 19.320137>,  <42.976414, 28.365873, 19.341433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.767097, 28.481346, 19.320137>,  <42.418240, 28.673801, 19.284643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767097, 28.481346, 19.320137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314623, -0.412655, 0.854827,
		-0.374667, -0.773452, -0.511270,
		0.872145, -0.481132, 0.088737,
		43.028740, 28.337006, 19.346758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208115, 27.963282, 19.407732>,  <42.418240, 28.673801, 19.284643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208115, 27.963282, 19.407732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.585869, 27.994823, 19.535427>,  <42.812523, 28.013748, 19.612045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.585869, 27.994823, 19.535427>,  <42.208115, 27.963282, 19.407732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585869, 27.994823, 19.535427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269515, -0.370596, 0.888831,
		0.188398, -0.925441, -0.328734,
		0.944388, 0.078855, 0.319239,
		42.869186, 28.018480, 19.631199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419392, 27.326557, 19.750767>,  <42.208115, 27.963282, 19.407732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419392, 27.326557, 19.750767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.691612, 27.589497, 19.880222>,  <42.854946, 27.747261, 19.957895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.691612, 27.589497, 19.880222>,  <42.419392, 27.326557, 19.750767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691612, 27.589497, 19.880222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103720, -0.350826, 0.930679,
		0.725322, -0.666942, -0.170575,
		0.680551, 0.657350, 0.323637,
		42.895779, 27.786701, 19.977314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805237, 26.990194, 20.213062>,  <42.419392, 27.326557, 19.750767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805237, 26.990194, 20.213062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.846306, 27.380373, 20.290998>,  <42.870945, 27.614481, 20.337761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.846306, 27.380373, 20.290998>,  <42.805237, 26.990194, 20.213062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846306, 27.380373, 20.290998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030403, -0.198863, 0.979556,
		0.994251, -0.094646, -0.050074,
		0.102669, 0.975447, 0.194842,
		42.877106, 27.673006, 20.349451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316788, 27.094582, 20.775946>,  <42.805237, 26.990194, 20.213062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316788, 27.094582, 20.775946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.106014, 27.434460, 20.783451>,  <42.979549, 27.638388, 20.787954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.106014, 27.434460, 20.783451>,  <43.316788, 27.094582, 20.775946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106014, 27.434460, 20.783451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034250, -0.000829, 0.999413,
		0.849214, 0.527270, -0.028665,
		-0.526937, 0.849697, 0.018763,
		42.947933, 27.689369, 20.789080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644871, 27.380451, 21.277267>,  <43.316788, 27.094582, 20.775946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644871, 27.380451, 21.277267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.312191, 27.595905, 21.223379>,  <43.112583, 27.725178, 21.191046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.312191, 27.595905, 21.223379>,  <43.644871, 27.380451, 21.277267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312191, 27.595905, 21.223379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024965, 0.206117, 0.978209,
		0.554668, 0.816937, -0.157980,
		-0.831697, 0.538637, -0.134721,
		43.062683, 27.757496, 21.182962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741684, 28.059607, 21.638416>,  <43.644871, 27.380451, 21.277267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741684, 28.059607, 21.638416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.347984, 27.990433, 21.623774>,  <43.111763, 27.948929, 21.614988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.347984, 27.990433, 21.623774>,  <43.741684, 28.059607, 21.638416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347984, 27.990433, 21.623774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080968, 0.256973, 0.963021,
		-0.157133, 0.950820, -0.266928,
		-0.984253, -0.172935, -0.036608,
		43.052708, 27.938553, 21.612791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539356, 28.616116, 22.038088>,  <43.741684, 28.059607, 21.638416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539356, 28.616116, 22.038088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.223686, 28.370703, 22.026865>,  <43.034286, 28.223455, 22.020130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.223686, 28.370703, 22.026865>,  <43.539356, 28.616116, 22.038088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223686, 28.370703, 22.026865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169235, 0.173311, 0.970218,
		-0.590395, 0.770418, -0.240603,
		-0.789172, -0.613531, -0.028059,
		42.986935, 28.186644, 22.018448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881977, 28.968187, 22.335049>,  <43.539356, 28.616116, 22.038088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881977, 28.968187, 22.335049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.813820, 28.575510, 22.369093>,  <42.772926, 28.339903, 22.389519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.813820, 28.575510, 22.369093>,  <42.881977, 28.968187, 22.335049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.813820, 28.575510, 22.369093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410974, 0.149301, 0.899338,
		-0.895583, 0.118259, -0.428890,
		-0.170388, -0.981694, 0.085110,
		42.762703, 28.281002, 22.394627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256287, 28.920696, 22.759584>,  <42.881977, 28.968187, 22.335049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256287, 28.920696, 22.759584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.436184, 28.563719, 22.773872>,  <42.544121, 28.349531, 22.782446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.436184, 28.563719, 22.773872>,  <42.256287, 28.920696, 22.759584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436184, 28.563719, 22.773872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174950, -0.048806, 0.983367,
		-0.875857, -0.448509, -0.178084,
		0.449740, -0.892445, 0.035720,
		42.571106, 28.295986, 22.784588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705498, 28.521070, 23.127954>,  <42.256287, 28.920696, 22.759584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705498, 28.521070, 23.127954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.028652, 28.285429, 23.134548>,  <42.222546, 28.144045, 23.138504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.028652, 28.285429, 23.134548>,  <41.705498, 28.521070, 23.127954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028652, 28.285429, 23.134548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286539, -0.368202, 0.884490,
		-0.514988, -0.719293, -0.466267,
		0.807888, -0.589105, 0.016486,
		42.271019, 28.108698, 23.139494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443851, 27.802767, 23.210297>,  <41.705498, 28.521070, 23.127954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443851, 27.802767, 23.210297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.815762, 27.867290, 23.342657>,  <42.038906, 27.906004, 23.422073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.815762, 27.867290, 23.342657>,  <41.443851, 27.802767, 23.210297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815762, 27.867290, 23.342657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290979, -0.228570, 0.929025,
		0.225493, -0.960071, -0.165582,
		0.929776, 0.161308, 0.330901,
		42.094696, 27.915684, 23.441927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524155, 27.276865, 23.708313>,  <41.443851, 27.802767, 23.210297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524155, 27.276865, 23.708313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.826164, 27.526150, 23.789841>,  <42.007370, 27.675720, 23.838757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.826164, 27.526150, 23.789841>,  <41.524155, 27.276865, 23.708313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826164, 27.526150, 23.789841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317384, 0.075360, 0.945298,
		0.573760, -0.778415, 0.254696,
		0.755028, 0.623210, 0.203818,
		42.052673, 27.713112, 23.850986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833672, 27.008001, 24.343353>,  <41.524155, 27.276865, 23.708313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833672, 27.008001, 24.343353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.937683, 27.393026, 24.312729>,  <42.000088, 27.624041, 24.294355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.937683, 27.393026, 24.312729>,  <41.833672, 27.008001, 24.343353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937683, 27.393026, 24.312729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428796, 0.186146, 0.884015,
		0.865171, -0.197038, 0.461145,
		0.260025, 0.962562, -0.076559,
		42.015690, 27.681795, 24.289761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163471, 27.113710, 24.986692>,  <41.833672, 27.008001, 24.343353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163471, 27.113710, 24.986692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.029705, 27.466297, 24.853317>,  <41.949444, 27.677849, 24.773293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.029705, 27.466297, 24.853317>,  <42.163471, 27.113710, 24.986692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029705, 27.466297, 24.853317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313921, 0.229413, 0.921316,
		0.888605, 0.412776, 0.199991,
		-0.334417, 0.881468, -0.333437,
		41.929379, 27.730738, 24.753286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366196, 27.650387, 25.530888>,  <42.163471, 27.113710, 24.986692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366196, 27.650387, 25.530888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.078033, 27.806847, 25.301798>,  <41.905136, 27.900723, 25.164345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.078033, 27.806847, 25.301798>,  <42.366196, 27.650387, 25.530888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078033, 27.806847, 25.301798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422509, 0.407348, 0.809663,
		0.549999, 0.825269, -0.128192,
		-0.720408, 0.391151, -0.572724,
		41.861912, 27.924192, 25.129980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.461678, 28.015526, 30.922817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.227997, 28.259212, 30.708319>,  <43.087788, 28.405424, 30.579620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.227997, 28.259212, 30.708319>,  <43.461678, 28.015526, 30.922817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227997, 28.259212, 30.708319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377160, 0.381260, 0.844033,
		0.718647, 0.695339, 0.007038,
		-0.584206, 0.609216, -0.536246,
		43.052734, 28.441977, 30.547445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389339, 28.667822, 31.250532>,  <43.461678, 28.015526, 30.922817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389339, 28.667822, 31.250532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.084278, 28.679781, 30.992085>,  <42.901241, 28.686956, 30.837017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.084278, 28.679781, 30.992085>,  <43.389339, 28.667822, 31.250532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084278, 28.679781, 30.992085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545050, 0.508144, 0.666866,
		0.348257, 0.860753, -0.371242,
		-0.762652, 0.029895, -0.646118,
		42.855484, 28.688749, 30.798248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238213, 29.363989, 31.267254>,  <43.389339, 28.667822, 31.250532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238213, 29.363989, 31.267254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.917496, 29.159113, 31.144100>,  <42.725067, 29.036188, 31.070208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.917496, 29.159113, 31.144100>,  <43.238213, 29.363989, 31.267254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917496, 29.159113, 31.144100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562543, 0.473004, 0.678095,
		-0.201682, 0.716889, -0.667379,
		-0.801792, -0.512189, -0.307884,
		42.676960, 29.005457, 31.051735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695435, 29.886602, 31.200859>,  <43.238213, 29.363989, 31.267254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695435, 29.886602, 31.200859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.488220, 29.545137, 31.222410>,  <42.363892, 29.340260, 31.235340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.488220, 29.545137, 31.222410>,  <42.695435, 29.886602, 31.200859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488220, 29.545137, 31.222410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625184, 0.420868, 0.657278,
		-0.583768, 0.306811, -0.751720,
		-0.518035, -0.853661, 0.053876,
		42.332809, 29.289040, 31.238573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025135, 30.084963, 31.058182>,  <42.695435, 29.886602, 31.200859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025135, 30.084963, 31.058182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.996010, 29.743736, 31.264860>,  <41.978535, 29.539000, 31.388868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.996010, 29.743736, 31.264860>,  <42.025135, 30.084963, 31.058182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996010, 29.743736, 31.264860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634307, 0.439403, 0.636066,
		-0.769645, -0.281430, -0.573100,
		-0.072814, -0.853067, 0.516697,
		41.974167, 29.487816, 31.419868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276432, 30.058508, 31.127184>,  <42.025135, 30.084963, 31.058182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276432, 30.058508, 31.127184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.461494, 29.820997, 31.390511>,  <41.572533, 29.678492, 31.548506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.461494, 29.820997, 31.390511>,  <41.276432, 30.058508, 31.127184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461494, 29.820997, 31.390511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589093, 0.349017, 0.728805,
		-0.662511, -0.724994, -0.188316,
		0.462653, -0.593777, 0.658317,
		41.600292, 29.642864, 31.588005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718571, 29.633041, 31.572248>,  <41.276432, 30.058508, 31.127184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718571, 29.633041, 31.572248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.065998, 29.687988, 31.762711>,  <41.274452, 29.720957, 31.876987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.065998, 29.687988, 31.762711>,  <40.718571, 29.633041, 31.572248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065998, 29.687988, 31.762711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494417, 0.305856, 0.813636,
		-0.033871, -0.942116, 0.333571,
		0.868565, 0.137365, 0.476158,
		41.326569, 29.729198, 31.905558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584358, 29.227657, 32.058662>,  <40.718571, 29.633041, 31.572248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584358, 29.227657, 32.058662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.847881, 29.502874, 32.180367>,  <41.005993, 29.668005, 32.253387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.847881, 29.502874, 32.180367>,  <40.584358, 29.227657, 32.058662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847881, 29.502874, 32.180367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624188, 0.274145, 0.731596,
		0.419957, -0.671895, 0.610076,
		0.658806, 0.688042, 0.304260,
		41.045525, 29.709288, 32.271645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491764, 29.208797, 32.806728>,  <40.584358, 29.227657, 32.058662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491764, 29.208797, 32.806728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.700264, 29.540266, 32.725140>,  <40.825363, 29.739147, 32.676186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.700264, 29.540266, 32.725140>,  <40.491764, 29.208797, 32.806728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700264, 29.540266, 32.725140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421094, 0.457630, 0.783106,
		0.742283, -0.322298, 0.587487,
		0.521245, 0.828673, -0.203973,
		40.856636, 29.788868, 32.663948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565968, 29.560867, 33.427505>,  <40.491764, 29.208797, 32.806728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565968, 29.560867, 33.427505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.687428, 29.874376, 33.210804>,  <40.760303, 30.062481, 33.080784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.687428, 29.874376, 33.210804>,  <40.565968, 29.560867, 33.427505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687428, 29.874376, 33.210804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438415, 0.619767, 0.650908,
		0.845926, 0.039867, 0.531809,
		0.303648, 0.783773, -0.541755,
		40.778522, 30.109509, 33.048279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896255, 30.120686, 33.860119>,  <40.565968, 29.560867, 33.427505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896255, 30.120686, 33.860119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.764572, 30.301895, 33.528725>,  <40.685562, 30.410620, 33.329887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.764572, 30.301895, 33.528725>,  <40.896255, 30.120686, 33.860119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764572, 30.301895, 33.528725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416949, 0.717485, 0.558004,
		0.847216, 0.529137, -0.047316,
		-0.329209, 0.453022, -0.828488,
		40.665810, 30.437801, 33.280178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235680, 30.758085, 33.800610>,  <40.896255, 30.120686, 33.860119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235680, 30.758085, 33.800610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.901569, 30.814821, 33.588123>,  <40.701103, 30.848864, 33.460632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.901569, 30.814821, 33.588123>,  <41.235680, 30.758085, 33.800610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901569, 30.814821, 33.588123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274736, 0.729219, 0.626706,
		0.476265, 0.669418, -0.570133,
		-0.835280, 0.141842, -0.531214,
		40.650986, 30.857374, 33.428761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998249, 31.531651, 33.929554>,  <41.235680, 30.758085, 33.800610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998249, 31.531651, 33.929554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.686134, 31.348206, 33.759460>,  <40.498867, 31.238138, 33.657402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.686134, 31.348206, 33.759460>,  <40.998249, 31.531651, 33.929554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686134, 31.348206, 33.759460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620939, 0.649343, 0.439077,
		0.074758, 0.606652, -0.791445,
		-0.780286, -0.458614, -0.425238,
		40.452049, 31.210621, 33.631889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711933, 32.037834, 33.618153>,  <40.998249, 31.531651, 33.929554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711933, 32.037834, 33.618153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.439770, 31.758322, 33.706459>,  <40.276470, 31.590614, 33.759445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.439770, 31.758322, 33.706459>,  <40.711933, 32.037834, 33.618153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439770, 31.758322, 33.706459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575331, 0.695959, 0.429693,
		-0.453909, 0.165353, -0.875571,
		-0.680412, -0.698784, 0.220769,
		40.235645, 31.548687, 33.772690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110973, 32.375683, 33.960453>,  <40.711933, 32.037834, 33.618153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110973, 32.375683, 33.960453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.956295, 32.725281, 33.842747>,  <39.863487, 32.935040, 33.772121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.956295, 32.725281, 33.842747>,  <40.110973, 32.375683, 33.960453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956295, 32.725281, 33.842747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340358, -0.161303, -0.926357,
		-0.857099, -0.458378, -0.235096,
		-0.386701, 0.873997, -0.294265,
		39.840286, 32.987480, 33.754467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624710, 32.236015, 33.439251>,  <40.110973, 32.375683, 33.960453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624710, 32.236015, 33.439251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.711090, 32.625931, 33.416775>,  <39.762917, 32.859879, 33.403290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.711090, 32.625931, 33.416775>,  <39.624710, 32.236015, 33.439251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711090, 32.625931, 33.416775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187467, -0.097871, -0.977383,
		-0.958239, 0.200531, -0.203875,
		0.215949, 0.974786, -0.056191,
		39.775875, 32.918365, 33.399918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182281, 32.525196, 32.928818>,  <39.624710, 32.236015, 33.439251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182281, 32.525196, 32.928818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.491703, 32.777855, 32.949364>,  <39.677357, 32.929451, 32.961693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.491703, 32.777855, 32.949364>,  <39.182281, 32.525196, 32.928818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491703, 32.777855, 32.949364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045793, 0.025134, -0.998635,
		-0.632078, 0.774846, -0.009482,
		0.773550, 0.631650, 0.051369,
		39.723766, 32.967350, 32.964775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134396, 32.876076, 32.261784>,  <39.182281, 32.525196, 32.928818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134396, 32.876076, 32.261784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.506618, 32.966568, 32.376938>,  <39.729954, 33.020863, 32.446030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.506618, 32.966568, 32.376938>,  <39.134396, 32.876076, 32.261784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506618, 32.966568, 32.376938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273243, 0.094275, -0.957314,
		-0.243711, 0.969502, 0.025913,
		0.930561, 0.226227, 0.287886,
		39.785786, 33.034435, 32.463303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332783, 33.435745, 31.813034>,  <39.134396, 32.876076, 32.261784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332783, 33.435745, 31.813034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.670341, 33.283302, 31.964083>,  <39.872875, 33.191837, 32.054714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.670341, 33.283302, 31.964083>,  <39.332783, 33.435745, 31.813034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670341, 33.283302, 31.964083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396124, -0.032104, -0.917636,
		0.361844, 0.923972, 0.123875,
		0.843893, -0.381111, 0.377623,
		39.923508, 33.168968, 32.077370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854511, 33.881031, 31.513454>,  <39.332783, 33.435745, 31.813034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854511, 33.881031, 31.513454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.048244, 33.568020, 31.669950>,  <40.164486, 33.380211, 31.763849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.048244, 33.568020, 31.669950>,  <39.854511, 33.881031, 31.513454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048244, 33.568020, 31.669950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579187, -0.048378, -0.813758,
		0.655717, 0.620731, 0.429800,
		0.484332, -0.782529, 0.391241,
		40.193542, 33.333260, 31.787323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528355, 34.100075, 31.570089>,  <39.854511, 33.881031, 31.513454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528355, 34.100075, 31.570089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.496002, 33.703716, 31.527058>,  <40.476589, 33.465900, 31.501238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.496002, 33.703716, 31.527058>,  <40.528355, 34.100075, 31.570089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496002, 33.703716, 31.527058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554647, 0.044933, -0.830872,
		0.828146, -0.126873, 0.545965,
		-0.080883, -0.990901, -0.107580,
		40.471737, 33.406445, 31.494783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242638, 33.916973, 31.403215>,  <40.528355, 34.100075, 31.570089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242638, 33.916973, 31.403215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.989174, 33.629299, 31.289198>,  <40.837097, 33.456696, 31.220787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.989174, 33.629299, 31.289198>,  <41.242638, 33.916973, 31.403215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989174, 33.629299, 31.289198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596710, -0.219872, -0.771747,
		0.492358, -0.659110, 0.568470,
		-0.633657, -0.719187, -0.285042,
		40.799076, 33.413544, 31.203686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654804, 33.321068, 31.156204>,  <41.242638, 33.916973, 31.403215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654804, 33.321068, 31.156204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.301964, 33.271584, 30.974398>,  <41.090260, 33.241894, 30.865314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.301964, 33.271584, 30.974398>,  <41.654804, 33.321068, 31.156204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301964, 33.271584, 30.974398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471053, -0.232620, -0.850880,
		-0.000464, -0.964667, 0.263471,
		-0.882105, -0.123714, -0.454517,
		41.037331, 33.234470, 30.838043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874504, 32.817532, 30.816071>,  <41.654804, 33.321068, 31.156204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874504, 32.817532, 30.816071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.546391, 32.937786, 30.621441>,  <41.349522, 33.009941, 30.504663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.546391, 32.937786, 30.621441>,  <41.874504, 32.817532, 30.816071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546391, 32.937786, 30.621441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469980, -0.130554, -0.872969,
		-0.325973, -0.944760, -0.034203,
		-0.820280, 0.300639, -0.486575,
		41.300304, 33.027977, 30.475468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955093, 32.470871, 30.174501>,  <41.874504, 32.817532, 30.816071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955093, 32.470871, 30.174501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.685570, 32.761852, 30.122665>,  <41.523853, 32.936440, 30.091564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.685570, 32.761852, 30.122665>,  <41.955093, 32.470871, 30.174501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685570, 32.761852, 30.122665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246970, 0.056425, -0.967379,
		-0.696407, -0.683837, -0.217678,
		-0.673813, 0.727449, -0.129592,
		41.483425, 32.980087, 30.083788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411640, 32.241718, 29.666470>,  <41.955093, 32.470871, 30.174501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411640, 32.241718, 29.666470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.408577, 32.641689, 29.662842>,  <41.406738, 32.881672, 29.660666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.408577, 32.641689, 29.662842>,  <41.411640, 32.241718, 29.666470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408577, 32.641689, 29.662842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088205, -0.008360, -0.996067,
		-0.996073, -0.008428, -0.088135,
		-0.007658, 0.999930, -0.009071,
		41.406281, 32.941669, 29.660120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927868, 32.484268, 29.055445>,  <41.411640, 32.241718, 29.666470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927868, 32.484268, 29.055445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.188103, 32.776699, 29.137669>,  <41.344246, 32.952160, 29.187004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.188103, 32.776699, 29.137669>,  <40.927868, 32.484268, 29.055445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188103, 32.776699, 29.137669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183485, 0.111340, -0.976697,
		-0.736930, 0.673146, -0.061706,
		0.650590, 0.731080, 0.205562,
		41.383278, 32.996021, 29.199337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804966, 33.096569, 28.680548>,  <40.927868, 32.484268, 29.055445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804966, 33.096569, 28.680548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.193157, 33.103233, 28.776791>,  <41.426071, 33.107231, 28.834536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.193157, 33.103233, 28.776791>,  <40.804966, 33.096569, 28.680548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193157, 33.103233, 28.776791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231773, 0.211529, -0.949493,
		-0.066715, 0.977230, 0.201423,
		0.970480, 0.016661, 0.240607,
		41.484303, 33.108231, 28.848972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230549, 33.596886, 28.603315>,  <40.804966, 33.096569, 28.680548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230549, 33.596886, 28.603315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.936317, 33.694778, 28.350639>,  <39.759777, 33.753513, 28.199034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.936317, 33.694778, 28.350639>,  <40.230549, 33.596886, 28.603315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936317, 33.694778, 28.350639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674839, -0.183097, 0.714890,
		0.059297, 0.952146, 0.299837,
		-0.735578, 0.244733, -0.631688,
		39.715645, 33.768200, 28.161133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873188, 34.119381, 28.924891>,  <40.230549, 33.596886, 28.603315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873188, 34.119381, 28.924891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.604046, 33.999287, 28.654448>,  <39.442562, 33.927231, 28.492182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.604046, 33.999287, 28.654448>,  <39.873188, 34.119381, 28.924891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604046, 33.999287, 28.654448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710094, 0.005848, 0.704083,
		-0.207438, 0.953846, -0.217132,
		-0.672857, -0.300238, -0.676108,
		39.402187, 33.909214, 28.451614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321903, 34.455959, 29.095247>,  <39.873188, 34.119381, 28.924891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321903, 34.455959, 29.095247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.155685, 34.175491, 28.863493>,  <39.055954, 34.007210, 28.724440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.155685, 34.175491, 28.863493>,  <39.321903, 34.455959, 29.095247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155685, 34.175491, 28.863493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710024, -0.148071, 0.688433,
		-0.568497, 0.697452, -0.436315,
		-0.415543, -0.701167, -0.579386,
		39.031021, 33.965141, 28.689676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560188, 34.639584, 29.016214>,  <39.321903, 34.455959, 29.095247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560188, 34.639584, 29.016214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.615074, 34.253555, 28.926941>,  <38.648006, 34.021938, 28.873377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.615074, 34.253555, 28.926941>,  <38.560188, 34.639584, 29.016214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615074, 34.253555, 28.926941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798839, -0.241038, 0.551141,
		-0.585686, 0.102664, -0.804010,
		0.137214, -0.965070, -0.223184,
		38.656239, 33.964035, 28.859985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871033, 34.351959, 28.777657>,  <38.560188, 34.639584, 29.016214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871033, 34.351959, 28.777657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.085461, 34.035130, 28.894445>,  <38.214119, 33.845032, 28.964518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.085461, 34.035130, 28.894445>,  <37.871033, 34.351959, 28.777657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085461, 34.035130, 28.894445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782562, -0.336565, 0.523755,
		-0.316576, -0.509270, -0.800265,
		0.536074, -0.792066, 0.291987,
		38.246281, 33.797508, 28.982037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569038, 33.749653, 28.533611>,  <37.871033, 34.351959, 28.777657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569038, 33.749653, 28.533611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.793213, 33.611855, 28.834871>,  <37.927719, 33.529175, 29.015627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.793213, 33.611855, 28.834871>,  <37.569038, 33.749653, 28.533611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793213, 33.611855, 28.834871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817582, -0.375265, 0.436732,
		0.132176, -0.860521, -0.491969,
		0.560436, -0.344499, 0.753148,
		37.961342, 33.508503, 29.060816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289013, 33.066311, 28.634251>,  <37.569038, 33.749653, 28.533611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289013, 33.066311, 28.634251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.476727, 33.162205, 28.974203>,  <37.589355, 33.219742, 29.178175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.476727, 33.162205, 28.974203>,  <37.289013, 33.066311, 28.634251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476727, 33.162205, 28.974203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526275, -0.696915, 0.487180,
		0.709088, -0.675898, -0.200888,
		0.469286, 0.239731, 0.849882,
		37.617512, 33.234123, 29.229168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526863, 32.453976, 28.977718>,  <37.289013, 33.066311, 28.634251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526863, 32.453976, 28.977718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.531834, 32.704296, 29.289673>,  <37.534817, 32.854488, 29.476845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.531834, 32.704296, 29.289673>,  <37.526863, 32.453976, 28.977718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531834, 32.704296, 29.289673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423681, -0.703177, 0.570997,
		0.905726, -0.337519, 0.256399,
		0.012428, 0.625798, 0.779886,
		37.535561, 32.892036, 29.523638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492382, 32.019310, 29.488667>,  <37.526863, 32.453976, 28.977718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492382, 32.019310, 29.488667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.397041, 32.359669, 29.675924>,  <37.339836, 32.563885, 29.788279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.397041, 32.359669, 29.675924>,  <37.492382, 32.019310, 29.488667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397041, 32.359669, 29.675924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598822, -0.508267, 0.618933,
		0.764591, -0.132811, 0.630683,
		-0.238354, 0.850897, 0.468147,
		37.325535, 32.614937, 29.816368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532970, 31.815733, 30.205984>,  <37.492382, 32.019310, 29.488667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532970, 31.815733, 30.205984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.306427, 32.143787, 30.173458>,  <37.170502, 32.340622, 30.153942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.306427, 32.143787, 30.173458>,  <37.532970, 31.815733, 30.205984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306427, 32.143787, 30.173458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648205, -0.382341, 0.658518,
		0.508985, 0.425667, 0.748159,
		-0.566361, 0.820136, -0.081314,
		37.136520, 32.389828, 30.149063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384510, 31.983065, 30.979046>,  <37.532970, 31.815733, 30.205984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384510, 31.983065, 30.979046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.122066, 32.176937, 30.747665>,  <36.964600, 32.293259, 30.608837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.122066, 32.176937, 30.747665>,  <37.384510, 31.983065, 30.979046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122066, 32.176937, 30.747665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686322, -0.064473, 0.724435,
		0.313825, 0.872312, 0.374948,
		-0.656107, 0.484681, -0.578453,
		36.925236, 32.322342, 30.574129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000996, 32.542351, 31.447477>,  <37.384510, 31.983065, 30.979046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000996, 32.542351, 31.447477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.762772, 32.422333, 31.149408>,  <36.619839, 32.350323, 30.970566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.762772, 32.422333, 31.149408>,  <37.000996, 32.542351, 31.447477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762772, 32.422333, 31.149408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718377, -0.216216, 0.661200,
		-0.359508, 0.929098, -0.086776,
		-0.595557, -0.300044, -0.745174,
		36.584103, 32.332321, 30.925856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.068893, 34.518269, 24.905352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769867, 34.259750, 24.844103>,  <41.590450, 34.104641, 24.807354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769867, 34.259750, 24.844103>,  <42.068893, 34.518269, 24.905352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769867, 34.259750, 24.844103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373212, 0.218046, 0.901758,
		-0.549416, 0.731271, -0.404210,
		-0.747566, -0.646296, -0.153121,
		41.545597, 34.065861, 24.798166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485580, 34.875210, 25.119474>,  <42.068893, 34.518269, 24.905352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485580, 34.875210, 25.119474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370926, 34.492062, 25.126657>,  <41.302132, 34.262173, 25.130966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370926, 34.492062, 25.126657>,  <41.485580, 34.875210, 25.119474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370926, 34.492062, 25.126657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495888, 0.164377, 0.852687,
		-0.819715, 0.235510, -0.522113,
		-0.286640, -0.957870, 0.017956,
		41.284935, 34.204700, 25.132044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813931, 34.900520, 25.395134>,  <41.485580, 34.875210, 25.119474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813931, 34.900520, 25.395134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881477, 34.510338, 25.451658>,  <40.922005, 34.276230, 25.485573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881477, 34.510338, 25.451658>,  <40.813931, 34.900520, 25.395134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881477, 34.510338, 25.451658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609484, 0.009332, 0.792744,
		-0.774605, -0.219997, -0.592949,
		0.168868, -0.975456, 0.141313,
		40.932137, 34.217701, 25.494053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183224, 34.646500, 25.506037>,  <40.813931, 34.900520, 25.395134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183224, 34.646500, 25.506037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431728, 34.364037, 25.641905>,  <40.580830, 34.194557, 25.723425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431728, 34.364037, 25.641905>,  <40.183224, 34.646500, 25.506037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431728, 34.364037, 25.641905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537908, -0.069106, 0.840166,
		-0.569818, -0.704673, -0.422781,
		0.621259, -0.706159, 0.339671,
		40.618107, 34.152187, 25.743807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771339, 34.239826, 25.863255>,  <40.183224, 34.646500, 25.506037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771339, 34.239826, 25.863255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127972, 34.126362, 26.004467>,  <40.341949, 34.058285, 26.089193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127972, 34.126362, 26.004467>,  <39.771339, 34.239826, 25.863255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127972, 34.126362, 26.004467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357805, 0.036641, 0.933077,
		-0.277611, -0.958225, -0.068827,
		0.891576, -0.283659, 0.353030,
		40.395443, 34.041264, 26.110376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599129, 33.651241, 26.199427>,  <39.771339, 34.239826, 25.863255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599129, 33.651241, 26.199427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937481, 33.796520, 26.355673>,  <40.140491, 33.883686, 26.449421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937481, 33.796520, 26.355673>,  <39.599129, 33.651241, 26.199427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937481, 33.796520, 26.355673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368292, -0.132020, 0.920289,
		0.385815, -0.922311, 0.022090,
		0.845877, 0.363197, 0.390616,
		40.191242, 33.905479, 26.472857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882500, 33.114784, 26.709755>,  <39.599129, 33.651241, 26.199427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882500, 33.114784, 26.709755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009182, 33.482292, 26.804031>,  <40.085190, 33.702797, 26.860598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009182, 33.482292, 26.804031>,  <39.882500, 33.114784, 26.709755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009182, 33.482292, 26.804031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173393, -0.188218, 0.966700,
		0.932541, -0.347027, 0.099699,
		0.316706, 0.918774, 0.235693,
		40.104195, 33.757923, 26.874739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174957, 32.921978, 27.262482>,  <39.882500, 33.114784, 26.709755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174957, 32.921978, 27.262482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111244, 33.316574, 27.277805>,  <40.073017, 33.553333, 27.286999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111244, 33.316574, 27.277805>,  <40.174957, 32.921978, 27.262482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111244, 33.316574, 27.277805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311865, -0.087095, 0.946126,
		0.936679, 0.138758, 0.321524,
		-0.159286, 0.986489, 0.038307,
		40.063457, 33.612522, 27.289297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315842, 33.111443, 28.030792>,  <40.174957, 32.921978, 27.262482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315842, 33.111443, 28.030792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104309, 33.407269, 27.864235>,  <39.977390, 33.584766, 27.764301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104309, 33.407269, 27.864235>,  <40.315842, 33.111443, 28.030792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104309, 33.407269, 27.864235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620178, -0.001792, 0.784459,
		0.579413, 0.673081, 0.459611,
		-0.528828, 0.739566, -0.416392,
		39.945660, 33.629139, 27.739317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082672, 33.309418, 28.035938>,  <40.315842, 33.111443, 28.030792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082672, 33.309418, 28.035938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401627, 33.231316, 28.264339>,  <41.592999, 33.184452, 28.401381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401627, 33.231316, 28.264339>,  <41.082672, 33.309418, 28.035938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401627, 33.231316, 28.264339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542999, -0.180684, -0.820064,
		0.263297, 0.963964, -0.038049,
		0.797387, -0.195259, 0.571005,
		41.640842, 33.172737, 28.435640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522362, 33.682507, 27.766428>,  <41.082672, 33.309418, 28.035938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522362, 33.682507, 27.766428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718887, 33.390106, 27.955845>,  <41.836803, 33.214664, 28.069494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718887, 33.390106, 27.955845>,  <41.522362, 33.682507, 27.766428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718887, 33.390106, 27.955845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467333, -0.237544, -0.851570,
		0.734989, 0.639692, 0.224914,
		0.491316, -0.731004, 0.473542,
		41.866283, 33.170803, 28.097908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202274, 33.791729, 27.682732>,  <41.522362, 33.682507, 27.766428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202274, 33.791729, 27.682732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176495, 33.402214, 27.769995>,  <42.161026, 33.168507, 27.822353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176495, 33.402214, 27.769995>,  <42.202274, 33.791729, 27.682732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176495, 33.402214, 27.769995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579759, -0.214473, -0.786054,
		0.812235, 0.075815, 0.578382,
		-0.064453, -0.973783, 0.218157,
		42.157158, 33.110081, 27.835442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812645, 33.631210, 27.483852>,  <42.202274, 33.791729, 27.682732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.812645, 33.631210, 27.483852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642971, 33.272549, 27.534569>,  <42.541168, 33.057350, 27.564999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642971, 33.272549, 27.534569>,  <42.812645, 33.631210, 27.483852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642971, 33.272549, 27.534569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551515, -0.366842, -0.749171,
		0.718260, -0.247861, 0.650128,
		-0.424185, -0.896656, 0.126789,
		42.515717, 33.003551, 27.572605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365997, 33.223358, 27.609919>,  <42.812645, 33.631210, 27.483852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365997, 33.223358, 27.609919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059132, 33.028645, 27.442825>,  <42.875011, 32.911816, 27.342569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059132, 33.028645, 27.442825>,  <43.365997, 33.223358, 27.609919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059132, 33.028645, 27.442825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588260, -0.274251, -0.760747,
		0.255757, -0.829353, 0.496752,
		-0.767162, -0.486785, -0.417734,
		42.828983, 32.882610, 27.317505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635208, 32.632111, 27.401110>,  <43.365997, 33.223358, 27.609919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635208, 32.632111, 27.401110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306316, 32.691505, 27.181334>,  <43.108982, 32.727142, 27.049467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306316, 32.691505, 27.181334>,  <43.635208, 32.632111, 27.401110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306316, 32.691505, 27.181334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467768, -0.373649, -0.800987,
		-0.324227, -0.915610, 0.237773,
		-0.822234, 0.148479, -0.549439,
		43.059647, 32.736050, 27.016500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727154, 32.023808, 26.998165>,  <43.635208, 32.632111, 27.401110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727154, 32.023808, 26.998165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442417, 32.235516, 26.813492>,  <43.271576, 32.362541, 26.702688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442417, 32.235516, 26.813492>,  <43.727154, 32.023808, 26.998165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442417, 32.235516, 26.813492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411055, -0.219049, -0.884902,
		-0.569486, -0.819687, -0.061633,
		-0.711842, 0.529274, -0.461682,
		43.228863, 32.394299, 26.674988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369183, 31.576365, 26.535093>,  <43.727154, 32.023808, 26.998165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369183, 31.576365, 26.535093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313160, 31.944723, 26.389585>,  <43.279545, 32.165737, 26.302280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313160, 31.944723, 26.389585>,  <43.369183, 31.576365, 26.535093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313160, 31.944723, 26.389585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316176, -0.306563, -0.897804,
		-0.938305, -0.240758, -0.248230,
		-0.140055, 0.920899, -0.363772,
		43.271145, 32.220993, 26.280455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010895, 31.516336, 25.932285>,  <43.369183, 31.576365, 26.535093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010895, 31.516336, 25.932285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185749, 31.873175, 25.886530>,  <43.290661, 32.087276, 25.859076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185749, 31.873175, 25.886530>,  <43.010895, 31.516336, 25.932285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185749, 31.873175, 25.886530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397438, -0.305691, -0.865214,
		-0.806820, 0.332750, -0.488179,
		0.437132, 0.892093, -0.114390,
		43.316887, 32.140804, 25.852213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684551, 31.794018, 25.428480>,  <43.010895, 31.516336, 25.932285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684551, 31.794018, 25.428480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033726, 31.987387, 25.454653>,  <43.243233, 32.103409, 25.470356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033726, 31.987387, 25.454653>,  <42.684551, 31.794018, 25.428480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033726, 31.987387, 25.454653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186508, -0.206793, -0.960443,
		-0.450768, 0.850612, -0.270680,
		0.872939, 0.483421, 0.065430,
		43.295609, 32.132412, 25.474281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876202, 32.135845, 24.643559>,  <42.684551, 31.794018, 25.428480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876202, 32.135845, 24.643559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225632, 32.143326, 24.838089>,  <43.435291, 32.147812, 24.954807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225632, 32.143326, 24.838089>,  <42.876202, 32.135845, 24.643559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225632, 32.143326, 24.838089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475567, -0.245168, -0.844825,
		0.103436, 0.969300, -0.223065,
		0.873577, 0.018698, 0.486326,
		43.487705, 32.148933, 24.983986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348640, 32.533253, 24.241272>,  <42.876202, 32.135845, 24.643559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348640, 32.533253, 24.241272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584991, 32.305935, 24.470325>,  <43.726803, 32.169544, 24.607758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584991, 32.305935, 24.470325>,  <43.348640, 32.533253, 24.241272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584991, 32.305935, 24.470325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571015, -0.206819, -0.794461,
		0.569917, 0.796411, 0.202298,
		0.590878, -0.568292, 0.572632,
		43.762257, 32.135448, 24.642115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994267, 32.810520, 24.114304>,  <43.348640, 32.533253, 24.241272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994267, 32.810520, 24.114304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068413, 32.436642, 24.235620>,  <44.112900, 32.212315, 24.308411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068413, 32.436642, 24.235620>,  <43.994267, 32.810520, 24.114304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068413, 32.436642, 24.235620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740209, -0.070191, -0.668704,
		0.646322, 0.348453, 0.678858,
		0.185362, -0.934694, 0.303294,
		44.124020, 32.156235, 24.326609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.792446, 32.626785, 24.177135>,  <43.994267, 32.810520, 24.114304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.792446, 32.626785, 24.177135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594109, 32.285709, 24.111336>,  <44.475105, 32.081062, 24.071856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594109, 32.285709, 24.111336>,  <44.792446, 32.626785, 24.177135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.594109, 32.285709, 24.111336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442400, -0.085025, -0.892778,
		0.747277, -0.515451, 0.419390,
		-0.495842, -0.852690, -0.164498,
		44.445354, 32.029903, 24.061987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.071503, 28.225834, 22.394794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.297852, 28.522038, 22.539808>,  <39.433662, 28.699760, 22.626816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.297852, 28.522038, 22.539808>,  <39.071503, 28.225834, 22.394794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297852, 28.522038, 22.539808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481791, -0.059834, 0.874241,
		0.669077, -0.669375, 0.322913,
		0.565874, 0.740511, 0.362532,
		39.467613, 28.744190, 22.648567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517479, 28.039310, 23.002148>,  <39.071503, 28.225834, 22.394794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517479, 28.039310, 23.002148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.505501, 28.435656, 23.054756>,  <39.498314, 28.673462, 23.086321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.505501, 28.435656, 23.054756>,  <39.517479, 28.039310, 23.002148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505501, 28.435656, 23.054756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228919, -0.134880, 0.964056,
		0.972985, -0.001240, 0.230866,
		-0.029944, 0.990861, 0.131520,
		39.496517, 28.732914, 23.094212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792351, 28.254818, 23.765387>,  <39.517479, 28.039310, 23.002148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792351, 28.254818, 23.765387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.596733, 28.569414, 23.614510>,  <39.479362, 28.758171, 23.523983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.596733, 28.569414, 23.614510>,  <39.792351, 28.254818, 23.765387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596733, 28.569414, 23.614510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351847, 0.217819, 0.910362,
		0.798148, 0.577920, 0.170200,
		-0.489043, 0.786488, -0.377191,
		39.450020, 28.805361, 23.501352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988895, 28.843388, 24.251366>,  <39.792351, 28.254818, 23.765387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988895, 28.843388, 24.251366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.656231, 28.978823, 24.075321>,  <39.456631, 29.060083, 23.969694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.656231, 28.978823, 24.075321>,  <39.988895, 28.843388, 24.251366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656231, 28.978823, 24.075321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343008, 0.310042, 0.886690,
		0.436677, 0.888387, -0.141710,
		-0.831660, 0.338590, -0.440112,
		39.406734, 29.080400, 23.943287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760796, 29.502979, 24.551081>,  <39.988895, 28.843388, 24.251366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760796, 29.502979, 24.551081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.429291, 29.369749, 24.371206>,  <39.230389, 29.289810, 24.263281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.429291, 29.369749, 24.371206>,  <39.760796, 29.502979, 24.551081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429291, 29.369749, 24.371206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531642, 0.217792, 0.818488,
		-0.174681, 0.917402, -0.357575,
		-0.828760, -0.333076, -0.449685,
		39.180664, 29.269827, 24.236301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212608, 29.960804, 24.812380>,  <39.760796, 29.502979, 24.551081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212608, 29.960804, 24.812380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.017609, 29.650673, 24.651775>,  <38.900608, 29.464594, 24.555412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.017609, 29.650673, 24.651775>,  <39.212608, 29.960804, 24.812380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017609, 29.650673, 24.651775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662124, 0.028526, 0.748852,
		-0.569151, 0.630917, -0.527268,
		-0.487504, -0.775326, -0.401509,
		38.871357, 29.418076, 24.531322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426590, 30.126707, 24.805445>,  <39.212608, 29.960804, 24.812380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426590, 30.126707, 24.805445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.484985, 29.731258, 24.819939>,  <38.520023, 29.493990, 24.828634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.484985, 29.731258, 24.819939>,  <38.426590, 30.126707, 24.805445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484985, 29.731258, 24.819939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626061, -0.063968, 0.777146,
		-0.765986, -0.136142, -0.628276,
		0.145992, -0.988622, 0.036235,
		38.528782, 29.434671, 24.830809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768230, 29.966473, 24.943924>,  <38.426590, 30.126707, 24.805445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768230, 29.966473, 24.943924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.982784, 29.640186, 25.030552>,  <38.111515, 29.444414, 25.082529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.982784, 29.640186, 25.030552>,  <37.768230, 29.966473, 24.943924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982784, 29.640186, 25.030552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439816, -0.051153, 0.896630,
		-0.720318, -0.576186, -0.386203,
		0.536381, -0.815717, 0.216569,
		38.143700, 29.395472, 25.095522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359730, 29.600389, 25.387739>,  <37.768230, 29.966473, 24.943924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359730, 29.600389, 25.387739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.716839, 29.434975, 25.459227>,  <37.931103, 29.335726, 25.502119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.716839, 29.434975, 25.459227>,  <37.359730, 29.600389, 25.387739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716839, 29.434975, 25.459227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246130, -0.115465, 0.962335,
		-0.377328, -0.903135, -0.204868,
		0.892773, -0.413540, 0.178720,
		37.984673, 29.310913, 25.512842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204762, 29.097778, 25.857477>,  <37.359730, 29.600389, 25.387739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204762, 29.097778, 25.857477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.601505, 29.143751, 25.879402>,  <37.839550, 29.171335, 25.892557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.601505, 29.143751, 25.879402>,  <37.204762, 29.097778, 25.857477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601505, 29.143751, 25.879402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037559, -0.147227, 0.988389,
		0.121667, -0.982403, -0.141712,
		0.991860, 0.114932, 0.054811,
		37.899063, 29.178230, 25.895845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472992, 28.580971, 26.213083>,  <37.204762, 29.097778, 25.857477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472992, 28.580971, 26.213083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.751118, 28.865955, 26.250895>,  <37.917992, 29.036945, 26.273582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.751118, 28.865955, 26.250895>,  <37.472992, 28.580971, 26.213083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751118, 28.865955, 26.250895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026811, -0.105724, 0.994034,
		0.718204, -0.693702, -0.054410,
		0.695316, 0.712461, 0.094530,
		37.959713, 29.079693, 26.279253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860703, 28.375931, 26.737909>,  <37.472992, 28.580971, 26.213083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860703, 28.375931, 26.737909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.927822, 28.769842, 26.719790>,  <37.968094, 29.006189, 26.708918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.927822, 28.769842, 26.719790>,  <37.860703, 28.375931, 26.737909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927822, 28.769842, 26.719790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121651, 0.066285, 0.990357,
		0.978287, -0.160666, 0.130922,
		0.167795, 0.984781, -0.045300,
		37.978161, 29.065277, 26.706200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315437, 28.523647, 27.255260>,  <37.860703, 28.375931, 26.737909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315437, 28.523647, 27.255260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.171673, 28.891270, 27.190563>,  <38.085415, 29.111843, 27.151745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.171673, 28.891270, 27.190563>,  <38.315437, 28.523647, 27.255260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171673, 28.891270, 27.190563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381825, 0.013316, 0.924139,
		0.851487, 0.393908, 0.346131,
		-0.359416, 0.919054, -0.161742,
		38.063847, 29.166986, 27.142040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599926, 28.995275, 27.797483>,  <38.315437, 28.523647, 27.255260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599926, 28.995275, 27.797483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.279209, 29.176287, 27.641357>,  <38.086781, 29.284893, 27.547682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.279209, 29.176287, 27.641357>,  <38.599926, 28.995275, 27.797483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279209, 29.176287, 27.641357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401962, 0.074929, 0.912585,
		0.442219, 0.888595, 0.121822,
		-0.801791, 0.452530, -0.390317,
		38.038673, 29.312046, 27.524263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111015, 29.508081, 27.940592>,  <38.599926, 28.995275, 27.797483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111015, 29.508081, 27.940592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.402496, 29.316631, 28.136517>,  <39.577385, 29.201761, 28.254070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.402496, 29.316631, 28.136517>,  <39.111015, 29.508081, 27.940592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402496, 29.316631, 28.136517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403289, -0.278146, -0.871776,
		0.553491, 0.832799, -0.009662,
		0.728701, -0.478623, 0.489810,
		39.621105, 29.173044, 28.283459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746887, 29.837938, 27.700525>,  <39.111015, 29.508081, 27.940592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746887, 29.837938, 27.700525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.816925, 29.463142, 27.821451>,  <39.858948, 29.238266, 27.894007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.816925, 29.463142, 27.821451>,  <39.746887, 29.837938, 27.700525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816925, 29.463142, 27.821451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559097, -0.158115, -0.813885,
		0.810401, 0.311533, 0.496182,
		0.175099, -0.936988, 0.302314,
		39.869453, 29.182047, 27.912146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479954, 29.684961, 27.644833>,  <39.746887, 29.837938, 27.700525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479954, 29.684961, 27.644833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.339691, 29.311480, 27.673782>,  <40.255535, 29.087391, 27.691153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.339691, 29.311480, 27.673782>,  <40.479954, 29.684961, 27.644833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339691, 29.311480, 27.673782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594381, -0.281609, -0.753265,
		0.723706, -0.221121, 0.653724,
		-0.350657, -0.933703, 0.072372,
		40.234493, 29.031368, 27.695494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044018, 29.265383, 27.614347>,  <40.479954, 29.684961, 27.644833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044018, 29.265383, 27.614347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.734730, 29.037775, 27.502388>,  <40.549156, 28.901211, 27.435213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.734730, 29.037775, 27.502388>,  <41.044018, 29.265383, 27.614347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734730, 29.037775, 27.502388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548568, -0.378779, -0.745386,
		0.318122, -0.729891, 0.605028,
		-0.773222, -0.569022, -0.279896,
		40.502762, 28.867069, 27.418419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309990, 28.653751, 27.456888>,  <41.044018, 29.265383, 27.614347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309990, 28.653751, 27.456888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.962875, 28.658447, 27.258169>,  <40.754608, 28.661264, 27.138937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.962875, 28.658447, 27.258169>,  <41.309990, 28.653751, 27.456888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962875, 28.658447, 27.258169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448682, -0.411228, -0.793458,
		-0.213609, -0.911457, 0.351593,
		-0.867788, 0.011737, -0.496796,
		40.702538, 28.661968, 27.109131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249943, 28.028297, 27.231873>,  <41.309990, 28.653751, 27.456888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249943, 28.028297, 27.231873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.982147, 28.222729, 27.007189>,  <40.821472, 28.339388, 26.872379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.982147, 28.222729, 27.007189>,  <41.249943, 28.028297, 27.231873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982147, 28.222729, 27.007189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325790, -0.487433, -0.810105,
		-0.667569, -0.725353, 0.167971,
		-0.669487, 0.486078, -0.561708,
		40.781300, 28.368551, 26.838676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055832, 27.560652, 26.792643>,  <41.249943, 28.028297, 27.231873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055832, 27.560652, 26.792643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.955585, 27.902519, 26.610769>,  <40.895439, 28.107639, 26.501646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.955585, 27.902519, 26.610769>,  <41.055832, 27.560652, 26.792643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955585, 27.902519, 26.610769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330118, -0.366074, -0.870064,
		-0.910063, -0.368149, -0.190398,
		-0.250613, 0.854667, -0.454683,
		40.880402, 28.158920, 26.474365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763100, 27.298185, 26.115114>,  <41.055832, 27.560652, 26.792643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763100, 27.298185, 26.115114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.876278, 27.678885, 26.067589>,  <40.944183, 27.907305, 26.039074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.876278, 27.678885, 26.067589>,  <40.763100, 27.298185, 26.115114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876278, 27.678885, 26.067589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605636, -0.273345, -0.747320,
		-0.743738, 0.139493, -0.653755,
		0.282947, 0.951748, -0.118815,
		40.961163, 27.964409, 26.031944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597382, 27.552229, 25.367199>,  <40.763100, 27.298185, 26.115114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597382, 27.552229, 25.367199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.875221, 27.816938, 25.480040>,  <41.041927, 27.975765, 25.547745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.875221, 27.816938, 25.480040>,  <40.597382, 27.552229, 25.367199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875221, 27.816938, 25.480040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447839, -0.090884, -0.889483,
		-0.562999, 0.744174, -0.359497,
		0.694602, 0.661775, 0.282103,
		41.083603, 28.015471, 25.564671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686691, 27.856924, 24.772509>,  <40.597382, 27.552229, 25.367199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686691, 27.856924, 24.772509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.995914, 27.997169, 24.983963>,  <41.181446, 28.081316, 25.110836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.995914, 27.997169, 24.983963>,  <40.686691, 27.856924, 24.772509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995914, 27.997169, 24.983963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574666, -0.034215, -0.817672,
		-0.268598, 0.935896, -0.227934,
		0.773055, 0.350612, 0.528637,
		41.227833, 28.102352, 25.142553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866474, 28.444006, 24.392445>,  <40.686691, 27.856924, 24.772509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866474, 28.444006, 24.392445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.168411, 28.291178, 24.605701>,  <41.349571, 28.199482, 24.733656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.168411, 28.291178, 24.605701>,  <40.866474, 28.444006, 24.392445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168411, 28.291178, 24.605701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580849, 0.011800, -0.813926,
		0.304684, 0.924059, 0.230831,
		0.754839, -0.382068, 0.533143,
		41.394863, 28.176558, 24.765644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445633, 28.841932, 24.283226>,  <40.866474, 28.444006, 24.392445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445633, 28.841932, 24.283226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.595497, 28.498127, 24.422289>,  <41.685417, 28.291843, 24.505728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.595497, 28.498127, 24.422289>,  <41.445633, 28.841932, 24.283226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595497, 28.498127, 24.422289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655638, -0.019522, -0.754823,
		0.655567, 0.510740, 0.556216,
		0.374660, -0.859514, 0.347658,
		41.707893, 28.240273, 24.526587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255711, 28.914190, 24.201456>,  <41.445633, 28.841932, 24.283226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255711, 28.914190, 24.201456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.168564, 28.527740, 24.256788>,  <42.116276, 28.295870, 24.289988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.168564, 28.527740, 24.256788>,  <42.255711, 28.914190, 24.201456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168564, 28.527740, 24.256788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625737, -0.247047, -0.739878,
		0.748989, -0.074638, 0.658365,
		-0.217871, -0.966124, 0.138332,
		42.103203, 28.237904, 24.298288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961426, 28.498260, 24.261518>,  <42.255711, 28.914190, 24.201456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961426, 28.498260, 24.261518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.658253, 28.283611, 24.113157>,  <42.476349, 28.154821, 24.024139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.658253, 28.283611, 24.113157>,  <42.961426, 28.498260, 24.261518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658253, 28.283611, 24.113157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580768, -0.296173, -0.758281,
		0.297059, -0.790137, 0.536133,
		-0.757934, -0.536623, -0.370905,
		42.430874, 28.122623, 24.001886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375896, 27.995073, 24.621002>,  <42.961426, 28.498260, 24.261518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375896, 27.995073, 24.621002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.743374, 28.062372, 24.763945>,  <43.963860, 28.102751, 24.849710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.743374, 28.062372, 24.763945>,  <43.375896, 27.995073, 24.621002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743374, 28.062372, 24.763945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360345, -0.013477, 0.932722,
		0.161744, -0.985653, 0.048246,
		0.918689, 0.168248, 0.357354,
		44.018982, 28.112846, 24.871151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631283, 27.393127, 25.110209>,  <43.375896, 27.995073, 24.621002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631283, 27.393127, 25.110209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.851341, 27.716637, 25.193369>,  <43.983376, 27.910742, 25.243265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.851341, 27.716637, 25.193369>,  <43.631283, 27.393127, 25.110209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851341, 27.716637, 25.193369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127505, -0.164690, 0.978069,
		0.825274, -0.564593, 0.012518,
		0.550150, 0.808772, 0.207903,
		44.016388, 27.959269, 25.255739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085365, 27.259150, 25.604465>,  <43.631283, 27.393127, 25.110209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085365, 27.259150, 25.604465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.066753, 27.658173, 25.625311>,  <44.055588, 27.897587, 25.637819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.066753, 27.658173, 25.625311>,  <44.085365, 27.259150, 25.604465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066753, 27.658173, 25.625311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053079, -0.049629, 0.997356,
		0.997506, 0.049174, -0.050640,
		-0.046531, 0.997556, 0.052116,
		44.052795, 27.957439, 25.640945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589844, 27.375027, 26.093801>,  <44.085365, 27.259150, 25.604465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589844, 27.375027, 26.093801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.380173, 27.715012, 26.072641>,  <44.254372, 27.919003, 26.059946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.380173, 27.715012, 26.072641>,  <44.589844, 27.375027, 26.093801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380173, 27.715012, 26.072641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095793, 0.120571, 0.988072,
		0.846204, 0.512858, -0.144621,
		-0.524178, 0.849964, -0.052900,
		44.222919, 27.970001, 26.056772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993282, 27.919769, 26.396044>,  <44.589844, 27.375027, 26.093801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.993282, 27.919769, 26.396044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.604366, 28.010643, 26.418112>,  <44.371017, 28.065166, 26.431353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.604366, 28.010643, 26.418112>,  <44.993282, 27.919769, 26.396044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604366, 28.010643, 26.418112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056028, -0.002682, 0.998426,
		0.226973, 0.973848, -0.010121,
		-0.972288, 0.227183, 0.055172,
		44.312679, 28.078798, 26.434664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920292, 28.407997, 26.969278>,  <44.993282, 27.919769, 26.396044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920292, 28.407997, 26.969278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.549988, 28.266064, 26.917017>,  <44.327805, 28.180904, 26.885660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.549988, 28.266064, 26.917017>,  <44.920292, 28.407997, 26.969278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549988, 28.266064, 26.917017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179530, 0.108370, 0.977765,
		-0.332783, 0.928628, -0.164027,
		-0.925756, -0.354832, -0.130653,
		44.272263, 28.159615, 26.877821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681896, 28.806952, 27.356110>,  <44.920292, 28.407997, 26.969278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681896, 28.806952, 27.356110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.400826, 28.523012, 27.336655>,  <44.232185, 28.352650, 27.324982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.400826, 28.523012, 27.336655>,  <44.681896, 28.806952, 27.356110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400826, 28.523012, 27.336655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342434, 0.277471, 0.897635,
		-0.623688, 0.647400, -0.438048,
		-0.702675, -0.709847, -0.048636,
		44.190022, 28.310059, 27.322063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973339, 29.162968, 27.456408>,  <44.681896, 28.806952, 27.356110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.973339, 29.162968, 27.456408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.928471, 28.777082, 27.551689>,  <43.901550, 28.545551, 27.608858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.928471, 28.777082, 27.551689>,  <43.973339, 29.162968, 27.456408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928471, 28.777082, 27.551689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449930, 0.263046, 0.853446,
		-0.885991, -0.011443, -0.463560,
		-0.112172, -0.964715, 0.238205,
		43.894817, 28.487667, 27.623150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345795, 29.090784, 27.885212>,  <43.973339, 29.162968, 27.456408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345795, 29.090784, 27.885212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.514271, 28.740881, 27.981043>,  <43.615356, 28.530939, 28.038542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.514271, 28.740881, 27.981043>,  <43.345795, 29.090784, 27.885212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514271, 28.740881, 27.981043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510019, -0.010005, 0.860105,
		-0.749986, -0.484458, -0.450357,
		0.421190, -0.874757, 0.239579,
		43.640629, 28.478455, 28.052916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815300, 28.826645, 28.234947>,  <43.345795, 29.090784, 27.885212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815300, 28.826645, 28.234947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.111740, 28.587786, 28.357702>,  <43.289604, 28.444469, 28.431356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.111740, 28.587786, 28.357702>,  <42.815300, 28.826645, 28.234947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111740, 28.587786, 28.357702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501185, -0.187895, 0.844695,
		-0.446748, -0.779812, -0.438532,
		0.741101, -0.597151, 0.306888,
		43.334072, 28.408640, 28.449768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518349, 28.291685, 28.640909>,  <42.815300, 28.826645, 28.234947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518349, 28.291685, 28.640909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.899117, 28.295172, 28.763401>,  <43.127579, 28.297264, 28.836895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.899117, 28.295172, 28.763401>,  <42.518349, 28.291685, 28.640909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899117, 28.295172, 28.763401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301800, -0.144995, 0.942281,
		0.052617, -0.989394, -0.135392,
		0.951918, 0.008718, 0.306228,
		43.184692, 28.297787, 28.855268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643650, 27.610439, 29.024527>,  <42.518349, 28.291685, 28.640909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643650, 27.610439, 29.024527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.887882, 27.914352, 29.113897>,  <43.034420, 28.096701, 29.167519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.887882, 27.914352, 29.113897>,  <42.643650, 27.610439, 29.024527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887882, 27.914352, 29.113897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248497, -0.084066, 0.964978,
		0.751957, -0.644718, 0.137475,
		0.610581, 0.759784, 0.223424,
		43.071056, 28.142288, 29.180925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750786, 27.439363, 29.666054>,  <42.643650, 27.610439, 29.024527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750786, 27.439363, 29.666054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.944027, 27.789537, 29.672070>,  <43.059971, 27.999641, 29.675678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.944027, 27.789537, 29.672070>,  <42.750786, 27.439363, 29.666054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944027, 27.789537, 29.672070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229591, 0.110086, 0.967041,
		0.844928, -0.470630, 0.254175,
		0.483100, 0.875436, 0.015038,
		43.088959, 28.052168, 29.676580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124840, 27.544609, 30.318146>,  <42.750786, 27.439363, 29.666054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124840, 27.544609, 30.318146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.041382, 27.907116, 30.171097>,  <42.991306, 28.124620, 30.082869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.041382, 27.907116, 30.171097>,  <43.124840, 27.544609, 30.318146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041382, 27.907116, 30.171097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427373, 0.253614, 0.867774,
		0.879671, 0.338166, 0.334400,
		-0.208643, 0.906269, -0.367620,
		42.978790, 28.178997, 30.060810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.430676, 31.955549, 23.997599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.077545, 31.798456, 23.894545>,  <44.865665, 31.704201, 23.832712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.077545, 31.798456, 23.894545>,  <45.430676, 31.955549, 23.997599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077545, 31.798456, 23.894545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369239, -0.241265, -0.897471,
		0.290308, -0.887441, 0.358008,
		-0.882827, -0.392734, -0.257637,
		44.812698, 31.680635, 23.817253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589325, 31.318289, 23.621607>,  <45.430676, 31.955549, 23.997599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589325, 31.318289, 23.621607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.214363, 31.410234, 23.516972>,  <44.989384, 31.465403, 23.454189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.214363, 31.410234, 23.516972>,  <45.589325, 31.318289, 23.621607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.214363, 31.410234, 23.516972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223531, -0.178812, -0.958154,
		-0.267025, -0.956654, 0.116237,
		-0.937407, 0.229869, -0.261589,
		44.933140, 31.479195, 23.438496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420189, 30.818802, 23.246000>,  <45.589325, 31.318289, 23.621607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.420189, 30.818802, 23.246000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.159592, 31.101562, 23.135838>,  <45.003235, 31.271219, 23.069740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.159592, 31.101562, 23.135838>,  <45.420189, 30.818802, 23.246000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.159592, 31.101562, 23.135838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155208, -0.231151, -0.960458,
		-0.742612, -0.668473, 0.040876,
		-0.651489, 0.706904, -0.275408,
		44.964146, 31.313633, 23.053215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.873638, 30.461510, 22.772892>,  <45.420189, 30.818802, 23.246000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.873638, 30.461510, 22.772892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.893108, 30.856049, 22.709970>,  <44.904793, 31.092772, 22.672216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.893108, 30.856049, 22.709970>,  <44.873638, 30.461510, 22.772892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893108, 30.856049, 22.709970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046732, -0.159569, -0.986080,
		-0.997721, 0.040651, -0.053861,
		0.048680, 0.986350, -0.157306,
		44.907711, 31.151953, 22.662779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439159, 30.563965, 22.134716>,  <44.873638, 30.461510, 22.772892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439159, 30.563965, 22.134716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.646362, 30.901661, 22.189747>,  <44.770683, 31.104279, 22.222765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.646362, 30.901661, 22.189747>,  <44.439159, 30.563965, 22.134716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646362, 30.901661, 22.189747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119128, 0.088067, -0.988966,
		-0.847038, 0.528684, -0.054953,
		0.518011, 0.844238, 0.137577,
		44.801765, 31.154932, 22.231020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.153709, 31.046434, 21.730146>,  <44.439159, 30.563965, 22.134716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.153709, 31.046434, 21.730146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.519230, 31.202106, 21.776642>,  <44.738541, 31.295509, 21.804539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.519230, 31.202106, 21.776642>,  <44.153709, 31.046434, 21.730146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519230, 31.202106, 21.776642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003173, 0.279334, -0.960189,
		-0.406155, 0.877788, 0.254021,
		0.913799, 0.389179, 0.116238,
		44.793369, 31.318861, 21.811514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169548, 31.638557, 21.298880>,  <44.153709, 31.046434, 21.730146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169548, 31.638557, 21.298880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.553123, 31.539543, 21.354240>,  <44.783268, 31.480135, 21.387457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.553123, 31.539543, 21.354240>,  <44.169548, 31.638557, 21.298880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553123, 31.539543, 21.354240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213657, 0.309661, -0.926532,
		0.186490, 0.918062, 0.349834,
		0.958943, -0.247534, 0.138402,
		44.840805, 31.465282, 21.395761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.532375, 32.123890, 21.033558>,  <44.169548, 31.638557, 21.298880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.532375, 32.123890, 21.033558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.815678, 31.841528, 21.036863>,  <44.985661, 31.672112, 21.038847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.815678, 31.841528, 21.036863>,  <44.532375, 32.123890, 21.033558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815678, 31.841528, 21.036863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286760, 0.276984, -0.917087,
		0.645086, 0.651906, 0.398601,
		0.708260, -0.705903, 0.008262,
		45.028156, 31.629757, 21.039343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026070, 32.440174, 20.731594>,  <44.532375, 32.123890, 21.033558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026070, 32.440174, 20.731594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.123669, 32.052830, 20.710648>,  <45.182228, 31.820423, 20.698080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.123669, 32.052830, 20.710648>,  <45.026070, 32.440174, 20.731594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.123669, 32.052830, 20.710648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402462, 0.150237, -0.903024,
		0.882322, 0.199257, 0.426386,
		0.243993, -0.968362, -0.052364,
		45.196865, 31.762321, 20.694939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.862385, 32.397175, 20.451899>,  <45.026070, 32.440174, 20.731594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.862385, 32.397175, 20.451899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.703899, 32.034126, 20.396425>,  <45.608807, 31.816296, 20.363140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.703899, 32.034126, 20.396425>,  <45.862385, 32.397175, 20.451899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.703899, 32.034126, 20.396425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367671, -0.018433, -0.929773,
		0.841329, -0.419378, 0.341010,
		-0.396212, -0.907624, -0.138685,
		45.585037, 31.761839, 20.354820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.448833, 31.822912, 20.414591>,  <45.862385, 32.397175, 20.451899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.448833, 31.822912, 20.414591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.119698, 31.716434, 20.213766>,  <45.922215, 31.652548, 20.093271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.119698, 31.716434, 20.213766>,  <46.448833, 31.822912, 20.414591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.119698, 31.716434, 20.213766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533529, -0.057720, -0.843810,
		0.195640, -0.962189, 0.189518,
		-0.822844, -0.266196, -0.502064,
		45.872845, 31.636576, 20.063147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.709152, 31.438627, 19.861101>,  <46.448833, 31.822912, 20.414591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.709152, 31.438627, 19.861101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.331947, 31.483883, 19.735924>,  <46.105625, 31.511036, 19.660816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.331947, 31.483883, 19.735924>,  <46.709152, 31.438627, 19.861101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331947, 31.483883, 19.735924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316909, 0.018465, -0.948276,
		-0.101511, -0.993407, -0.053269,
		-0.943008, 0.113142, -0.312946,
		46.049046, 31.517824, 19.642040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.460972, 30.946579, 19.409607>,  <46.709152, 31.438627, 19.861101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.460972, 30.946579, 19.409607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.337990, 31.302860, 19.275667>,  <46.264202, 31.516628, 19.195303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.337990, 31.302860, 19.275667>,  <46.460972, 30.946579, 19.409607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.337990, 31.302860, 19.275667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293181, -0.246104, -0.923839,
		-0.905272, -0.382208, -0.185471,
		-0.307453, 0.890702, -0.334847,
		46.245754, 31.570070, 19.175213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.924606, 30.231913, 19.469603>,  <46.460972, 30.946579, 19.409607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.924606, 30.231913, 19.469603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.543171, 30.351870, 19.480442>,  <45.314308, 30.423843, 19.486946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.543171, 30.351870, 19.480442>,  <45.924606, 30.231913, 19.469603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.543171, 30.351870, 19.480442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018078, 0.146849, -0.988994,
		-0.300572, -0.942602, -0.145455,
		-0.953588, 0.299893, 0.027098,
		45.257095, 30.441837, 19.488571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.286636, 29.634361, 19.684349>,  <45.924606, 30.231913, 19.469603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.286636, 29.634361, 19.684349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.130768, 29.265982, 19.685848>,  <46.037247, 29.044954, 19.686749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.130768, 29.265982, 19.685848>,  <46.286636, 29.634361, 19.684349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.130768, 29.265982, 19.685848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167544, 0.074893, 0.983016,
		-0.905587, 0.382421, -0.183483,
		-0.389668, -0.920948, 0.003749,
		46.013866, 28.989697, 19.686974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.565090, 29.628565, 20.079130>,  <46.286636, 29.634361, 19.684349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.565090, 29.628565, 20.079130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.666721, 29.241692, 20.078558>,  <45.727699, 29.009567, 20.078215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.666721, 29.241692, 20.078558>,  <45.565090, 29.628565, 20.079130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.666721, 29.241692, 20.078558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394297, -0.104932, 0.912973,
		-0.883163, -0.231397, -0.408018,
		0.254073, -0.967184, -0.001433,
		45.742943, 28.951536, 20.078129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.960518, 29.315538, 20.347944>,  <45.565090, 29.628565, 20.079130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.960518, 29.315538, 20.347944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.259121, 29.053684, 20.395586>,  <45.438282, 28.896572, 20.424171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.259121, 29.053684, 20.395586>,  <44.960518, 29.315538, 20.347944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.259121, 29.053684, 20.395586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278054, -0.144289, 0.949667,
		-0.604499, -0.742047, -0.289736,
		0.746503, -0.654635, 0.119106,
		45.483070, 28.857294, 20.431318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642227, 28.635965, 20.481419>,  <44.960518, 29.315538, 20.347944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642227, 28.635965, 20.481419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.020222, 28.646610, 20.611830>,  <45.247017, 28.652998, 20.690077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.020222, 28.646610, 20.611830>,  <44.642227, 28.635965, 20.481419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020222, 28.646610, 20.611830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313779, -0.207911, 0.926453,
		0.092441, -0.977786, -0.188122,
		0.944985, 0.026613, 0.326028,
		45.303719, 28.654594, 20.709639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.752098, 27.998768, 20.696959>,  <44.642227, 28.635965, 20.481419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.752098, 27.998768, 20.696959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.040104, 28.213455, 20.872917>,  <45.212910, 28.342268, 20.978493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.040104, 28.213455, 20.872917>,  <44.752098, 27.998768, 20.696959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.040104, 28.213455, 20.872917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287535, -0.346185, 0.893017,
		0.631586, -0.769472, -0.094933,
		0.720016, 0.536720, 0.439896,
		45.256107, 28.374472, 21.004887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895283, 27.583836, 21.273369>,  <44.752098, 27.998768, 20.696959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895283, 27.583836, 21.273369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.020470, 27.954161, 21.358150>,  <45.095581, 28.176355, 21.409019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.020470, 27.954161, 21.358150>,  <44.895283, 27.583836, 21.273369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020470, 27.954161, 21.358150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038270, -0.210689, 0.976804,
		0.948992, -0.313820, -0.030508,
		0.312968, 0.925812, 0.211952,
		45.114361, 28.231905, 21.421736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.439346, 27.495607, 21.730625>,  <44.895283, 27.583836, 21.273369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.439346, 27.495607, 21.730625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.296295, 27.860720, 21.809551>,  <45.210464, 28.079786, 21.856907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.296295, 27.860720, 21.809551>,  <45.439346, 27.495607, 21.730625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.296295, 27.860720, 21.809551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012722, -0.206510, 0.978362,
		0.933778, 0.352399, 0.062241,
		-0.357627, 0.912781, 0.197318,
		45.189007, 28.134554, 21.868746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814594, 27.774567, 22.271000>,  <45.439346, 27.495607, 21.730625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814594, 27.774567, 22.271000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.501411, 28.022448, 22.292738>,  <45.313503, 28.171177, 22.305780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.501411, 28.022448, 22.292738>,  <45.814594, 27.774567, 22.271000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501411, 28.022448, 22.292738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085059, 0.020103, 0.996173,
		0.616239, 0.784579, -0.068451,
		-0.782952, 0.619703, 0.054347,
		45.266525, 28.208359, 22.309042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.933388, 28.072750, 22.861570>,  <45.814594, 27.774567, 22.271000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.933388, 28.072750, 22.861570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.544971, 28.146975, 22.801367>,  <45.311924, 28.191509, 22.765245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.544971, 28.146975, 22.801367>,  <45.933388, 28.072750, 22.861570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.544971, 28.146975, 22.801367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123345, 0.150169, 0.980936,
		0.204624, 0.971090, -0.122932,
		-0.971038, 0.185560, -0.150508,
		45.253658, 28.202642, 22.756214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848370, 28.640295, 23.223305>,  <45.933388, 28.072750, 22.861570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.848370, 28.640295, 23.223305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.481400, 28.483572, 23.195534>,  <45.261219, 28.389538, 23.178871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.481400, 28.483572, 23.195534>,  <45.848370, 28.640295, 23.223305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.481400, 28.483572, 23.195534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119253, 0.104270, 0.987373,
		-0.379623, 0.914119, -0.142385,
		-0.917423, -0.391810, -0.069428,
		45.206173, 28.366030, 23.174706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.385033, 29.081472, 23.542978>,  <45.848370, 28.640295, 23.223305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.385033, 29.081472, 23.542978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.185841, 28.735706, 23.515270>,  <45.066326, 28.528246, 23.498646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.185841, 28.735706, 23.515270>,  <45.385033, 29.081472, 23.542978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.185841, 28.735706, 23.515270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338769, 0.120385, 0.933136,
		-0.798278, 0.488154, -0.352787,
		-0.497984, -0.864415, -0.069271,
		45.036446, 28.476381, 23.494490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867867, 29.153740, 23.931875>,  <45.385033, 29.081472, 23.542978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.867867, 29.153740, 23.931875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.844215, 28.756649, 23.889938>,  <44.830025, 28.518394, 23.864777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.844215, 28.756649, 23.889938>,  <44.867867, 29.153740, 23.931875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844215, 28.756649, 23.889938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498098, -0.061678, 0.864924,
		-0.865102, 0.103367, -0.490829,
		-0.059132, -0.992729, -0.104845,
		44.826477, 28.458830, 23.858484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.165306, 28.955959, 23.928730>,  <44.867867, 29.153740, 23.931875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.165306, 28.955959, 23.928730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.373070, 28.637264, 24.052296>,  <44.497726, 28.446047, 24.126434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.373070, 28.637264, 24.052296>,  <44.165306, 28.955959, 23.928730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373070, 28.637264, 24.052296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604209, -0.086788, 0.792085,
		-0.604273, -0.598064, -0.526474,
		0.519409, -0.796735, 0.308912,
		44.528893, 28.398243, 24.144970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686642, 28.567492, 24.148680>,  <44.165306, 28.955959, 23.928730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686642, 28.567492, 24.148680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.017536, 28.445189, 24.337233>,  <44.216072, 28.371807, 24.450363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.017536, 28.445189, 24.337233>,  <43.686642, 28.567492, 24.148680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017536, 28.445189, 24.337233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503150, -0.029752, 0.863687,
		-0.250055, -0.951644, -0.178454,
		0.827232, -0.305758, 0.471380,
		44.265705, 28.353462, 24.478647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317020, 28.005657, 23.864923>,  <43.686642, 28.567492, 24.148680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317020, 28.005657, 23.864923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.948151, 27.960318, 23.717010>,  <42.726830, 27.933113, 23.628262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.948151, 27.960318, 23.717010>,  <43.317020, 28.005657, 23.864923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948151, 27.960318, 23.717010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386617, -0.296657, -0.873225,
		-0.010720, -0.948234, 0.317393,
		-0.922178, -0.113348, -0.369783,
		42.671497, 27.926313, 23.606075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339149, 27.425066, 23.424641>,  <43.317020, 28.005657, 23.864923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339149, 27.425066, 23.424641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.017769, 27.636805, 23.315638>,  <42.824940, 27.763847, 23.250235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.017769, 27.636805, 23.315638>,  <43.339149, 27.425066, 23.424641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017769, 27.636805, 23.315638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266709, -0.089210, -0.959640,
		-0.532294, -0.843701, -0.069507,
		-0.803448, 0.529349, -0.272509,
		42.776733, 27.795609, 23.233885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148605, 27.131308, 22.864000>,  <43.339149, 27.425066, 23.424641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148605, 27.131308, 22.864000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.982670, 27.494284, 22.837286>,  <42.883110, 27.712070, 22.821257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.982670, 27.494284, 22.837286>,  <43.148605, 27.131308, 22.864000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982670, 27.494284, 22.837286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081988, -0.110380, -0.990502,
		-0.906195, -0.405419, 0.120189,
		-0.414834, 0.907443, -0.066786,
		42.858219, 27.766516, 22.817249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528679, 27.045765, 22.492817>,  <43.148605, 27.131308, 22.864000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528679, 27.045765, 22.492817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.630520, 27.431225, 22.460411>,  <42.691624, 27.662500, 22.440968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.630520, 27.431225, 22.460411>,  <42.528679, 27.045765, 22.492817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630520, 27.431225, 22.460411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100138, -0.057052, -0.993337,
		-0.961848, 0.261014, 0.081973,
		0.254598, 0.963648, -0.081013,
		42.706898, 27.720320, 22.436108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048813, 27.233610, 22.024090>,  <42.528679, 27.045765, 22.492817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048813, 27.233610, 22.024090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.321327, 27.526314, 22.016285>,  <42.484837, 27.701937, 22.011602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.321327, 27.526314, 22.016285>,  <42.048813, 27.233610, 22.024090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321327, 27.526314, 22.016285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052358, 0.022127, -0.998383,
		-0.730145, 0.681203, 0.053388,
		0.681283, 0.731760, -0.019510,
		42.525711, 27.745842, 22.010431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813885, 27.687832, 21.462210>,  <42.048813, 27.233610, 22.024090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813885, 27.687832, 21.462210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.205711, 27.755838, 21.505198>,  <42.440807, 27.796642, 21.530991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.205711, 27.755838, 21.505198>,  <41.813885, 27.687832, 21.462210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205711, 27.755838, 21.505198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102489, 0.037840, -0.994014,
		-0.173065, 0.984715, 0.019642,
		0.979564, 0.170016, 0.107471,
		42.499580, 27.806843, 21.537439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868221, 28.320984, 21.136522>,  <41.813885, 27.687832, 21.462210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868221, 28.320984, 21.136522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.230446, 28.151703, 21.148212>,  <42.447781, 28.050135, 21.155226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.230446, 28.151703, 21.148212>,  <41.868221, 28.320984, 21.136522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230446, 28.151703, 21.148212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173839, 0.307368, -0.935577,
		0.386957, 0.852305, 0.351910,
		0.905563, -0.423204, 0.029225,
		42.502113, 28.024742, 21.156981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676170, 29.043961, 20.816671>,  <41.868221, 28.320984, 21.136522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676170, 29.043961, 20.816671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.350655, 29.200706, 20.645002>,  <41.155346, 29.294754, 20.542000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.350655, 29.200706, 20.645002>,  <41.676170, 29.043961, 20.816671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350655, 29.200706, 20.645002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405677, 0.145759, 0.902320,
		0.416143, 0.908403, 0.040353,
		-0.813788, 0.391864, -0.429175,
		41.106518, 29.318266, 20.516251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505066, 29.764929, 21.002340>,  <41.676170, 29.043961, 20.816671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505066, 29.764929, 21.002340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.159252, 29.617083, 20.866121>,  <40.951763, 29.528376, 20.784389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.159252, 29.617083, 20.866121>,  <41.505066, 29.764929, 21.002340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159252, 29.617083, 20.866121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442802, 0.239667, 0.863994,
		-0.237728, 0.897744, -0.370865,
		-0.864530, -0.369616, -0.340547,
		40.899895, 29.506199, 20.763958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053814, 30.091116, 21.317142>,  <41.505066, 29.764929, 21.002340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053814, 30.091116, 21.317142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.847473, 29.765568, 21.210178>,  <40.723667, 29.570238, 21.146000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.847473, 29.765568, 21.210178>,  <41.053814, 30.091116, 21.317142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847473, 29.765568, 21.210178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434301, -0.020612, 0.900532,
		-0.738428, 0.580681, -0.342832,
		-0.515855, -0.813870, -0.267411,
		40.692719, 29.521406, 21.129955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327900, 30.167713, 21.555742>,  <41.053814, 30.091116, 21.317142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327900, 30.167713, 21.555742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.339172, 29.776260, 21.474272>,  <40.345936, 29.541389, 21.425390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.339172, 29.776260, 21.474272>,  <40.327900, 30.167713, 21.555742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339172, 29.776260, 21.474272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574594, -0.182588, 0.797812,
		-0.817954, 0.094551, -0.567461,
		0.028177, -0.978632, -0.203677,
		40.347626, 29.482670, 21.413168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581806, 29.860046, 21.515858>,  <40.327900, 30.167713, 21.555742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581806, 29.860046, 21.515858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.846508, 29.578892, 21.620192>,  <40.005329, 29.410198, 21.682793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.846508, 29.578892, 21.620192>,  <39.581806, 29.860046, 21.515858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846508, 29.578892, 21.620192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577710, -0.256323, 0.774951,
		-0.477844, -0.663513, -0.575687,
		0.661752, -0.702886, 0.260835,
		40.045033, 29.368027, 21.698442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210827, 29.352541, 21.572071>,  <39.581806, 29.860046, 21.515858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210827, 29.352541, 21.572071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.530811, 29.239943, 21.784040>,  <39.722801, 29.172384, 21.911222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.530811, 29.239943, 21.784040>,  <39.210827, 29.352541, 21.572071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530811, 29.239943, 21.784040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593365, -0.239654, 0.768429,
		-0.089312, -0.929153, -0.358745,
		0.799963, -0.281497, 0.529923,
		39.770802, 29.155495, 21.943018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965469, 28.760307, 21.933874>,  <39.210827, 29.352541, 21.572071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965469, 28.760307, 21.933874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.309395, 28.850992, 22.116884>,  <39.515751, 28.905403, 22.226690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.309395, 28.850992, 22.116884>,  <38.965469, 28.760307, 21.933874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309395, 28.850992, 22.116884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414097, -0.214651, 0.884561,
		0.298751, -0.950013, -0.090677,
		0.859809, 0.226715, 0.457525,
		39.567337, 28.919006, 22.254141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.310360, 33.125305, 18.317947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.654587, 32.985741, 18.466375>,  <43.861122, 32.902004, 18.555431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.654587, 32.985741, 18.466375>,  <43.310360, 33.125305, 18.317947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654587, 32.985741, 18.466375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370827, 0.070231, 0.926042,
		-0.349164, -0.934522, -0.068947,
		0.860564, -0.348908, 0.371068,
		43.912758, 32.881069, 18.577696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121250, 32.667767, 18.926775>,  <43.310360, 33.125305, 18.317947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121250, 32.667767, 18.926775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.502220, 32.783962, 18.963667>,  <43.730801, 32.853680, 18.985802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.502220, 32.783962, 18.963667>,  <43.121250, 32.667767, 18.926775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502220, 32.783962, 18.963667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134028, 0.127421, 0.982751,
		0.273727, -0.948356, 0.160292,
		0.952423, 0.290489, 0.092227,
		43.787949, 32.871109, 18.991335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304585, 32.428104, 19.507366>,  <43.121250, 32.667767, 18.926775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304585, 32.428104, 19.507366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.598866, 32.688202, 19.431547>,  <43.775433, 32.844261, 19.386055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.598866, 32.688202, 19.431547>,  <43.304585, 32.428104, 19.507366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598866, 32.688202, 19.431547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081245, 0.362561, 0.928412,
		0.672414, -0.667635, 0.319566,
		0.735703, 0.650240, -0.189549,
		43.819576, 32.883274, 19.374683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717869, 32.309387, 19.970728>,  <43.304585, 32.428104, 19.507366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717869, 32.309387, 19.970728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.814480, 32.686821, 19.880116>,  <43.872444, 32.913280, 19.825748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.814480, 32.686821, 19.880116>,  <43.717869, 32.309387, 19.970728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814480, 32.686821, 19.880116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014304, 0.236879, 0.971434,
		0.970289, -0.231384, 0.070709,
		0.241524, 0.943583, -0.226531,
		43.886936, 32.969894, 19.812157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985386, 32.472122, 20.589497>,  <43.717869, 32.309387, 19.970728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985386, 32.472122, 20.589497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.916996, 32.822334, 20.408737>,  <43.875961, 33.032463, 20.300282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.916996, 32.822334, 20.408737>,  <43.985386, 32.472122, 20.589497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916996, 32.822334, 20.408737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246175, 0.406143, 0.880026,
		0.954025, 0.261712, 0.146092,
		-0.170979, 0.875531, -0.451897,
		43.865704, 33.084995, 20.273169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409439, 32.998714, 21.019197>,  <43.985386, 32.472122, 20.589497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409439, 32.998714, 21.019197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.126324, 33.190506, 20.811684>,  <43.956455, 33.305580, 20.687176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.126324, 33.190506, 20.811684>,  <44.409439, 32.998714, 21.019197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126324, 33.190506, 20.811684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401530, 0.331152, 0.853880,
		0.581213, 0.812674, -0.041861,
		-0.707789, 0.479477, -0.518783,
		43.913986, 33.334351, 20.656048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.428303, 33.700527, 21.261103>,  <44.409439, 32.998714, 21.019197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.428303, 33.700527, 21.261103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.075356, 33.598862, 21.102701>,  <43.863586, 33.537861, 21.007660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.075356, 33.598862, 21.102701>,  <44.428303, 33.700527, 21.261103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075356, 33.598862, 21.102701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451433, 0.219786, 0.864814,
		-0.132770, 0.941857, -0.308671,
		-0.882372, -0.254165, -0.396004,
		43.810642, 33.522614, 20.983900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968468, 34.374817, 21.405798>,  <44.428303, 33.700527, 21.261103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.968468, 34.374817, 21.405798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.742462, 34.047146, 21.366388>,  <43.606861, 33.850544, 21.342743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.742462, 34.047146, 21.366388>,  <43.968468, 34.374817, 21.405798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742462, 34.047146, 21.366388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668637, 0.384640, 0.636378,
		-0.483411, 0.425438, -0.765060,
		-0.565012, -0.819179, -0.098524,
		43.572960, 33.801392, 21.336830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220802, 34.621380, 21.587278>,  <43.968468, 34.374817, 21.405798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220802, 34.621380, 21.587278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.211025, 34.221615, 21.596857>,  <43.205158, 33.981754, 21.602604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.211025, 34.221615, 21.596857>,  <43.220802, 34.621380, 21.587278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211025, 34.221615, 21.596857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753143, 0.034159, 0.656969,
		-0.657403, -0.001978, -0.753537,
		-0.024441, -0.999414, 0.023946,
		43.203693, 33.921791, 21.604040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534321, 34.497654, 21.641510>,  <43.220802, 34.621380, 21.587278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534321, 34.497654, 21.641510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.698490, 34.147579, 21.743958>,  <42.796993, 33.937534, 21.805426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.698490, 34.147579, 21.743958>,  <42.534321, 34.497654, 21.641510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698490, 34.147579, 21.743958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756402, -0.169866, 0.631666,
		-0.509322, -0.452977, -0.731712,
		0.410423, -0.875190, 0.256117,
		42.821617, 33.885021, 21.820793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990665, 34.139927, 21.787291>,  <42.534321, 34.497654, 21.641510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990665, 34.139927, 21.787291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.257935, 33.901482, 21.965364>,  <42.418297, 33.758415, 22.072208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.257935, 33.901482, 21.965364>,  <41.990665, 34.139927, 21.787291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257935, 33.901482, 21.965364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654608, -0.186651, 0.732563,
		-0.353599, -0.780901, -0.514939,
		0.668173, -0.596117, 0.445184,
		42.458385, 33.722645, 22.098919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668564, 33.468338, 21.996279>,  <41.990665, 34.139927, 21.787291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668564, 33.468338, 21.996279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.974255, 33.526718, 22.247568>,  <42.157669, 33.561745, 22.398342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.974255, 33.526718, 22.247568>,  <41.668564, 33.468338, 21.996279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974255, 33.526718, 22.247568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615280, -0.127075, 0.777999,
		0.193379, -0.981097, -0.007314,
		0.764222, 0.145949, 0.628223,
		42.203522, 33.570503, 22.436035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397781, 32.636482, 21.977385>,  <41.668564, 33.468338, 21.996279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397781, 32.636482, 21.977385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.059822, 32.498905, 21.813511>,  <40.857044, 32.416359, 21.715187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.059822, 32.498905, 21.813511>,  <41.397781, 32.636482, 21.977385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059822, 32.498905, 21.813511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503927, -0.254865, -0.825289,
		0.179440, -0.903740, 0.388659,
		-0.844902, -0.343945, -0.409686,
		40.806351, 32.395721, 21.690605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574379, 32.071171, 21.631239>,  <41.397781, 32.636482, 21.977385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574379, 32.071171, 21.631239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.230911, 32.151024, 21.442421>,  <41.024830, 32.198936, 21.329130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.230911, 32.151024, 21.442421>,  <41.574379, 32.071171, 21.631239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230911, 32.151024, 21.442421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351234, -0.441533, -0.825641,
		-0.373251, -0.874754, 0.309014,
		-0.858672, 0.199635, -0.472046,
		40.973309, 32.210915, 21.300808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507034, 31.471552, 21.229729>,  <41.574379, 32.071171, 21.631239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507034, 31.471552, 21.229729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.272385, 31.759441, 21.081202>,  <41.131596, 31.932175, 20.992086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.272385, 31.759441, 21.081202>,  <41.507034, 31.471552, 21.229729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272385, 31.759441, 21.081202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238329, -0.284771, -0.928496,
		-0.773999, -0.633171, -0.004478,
		-0.586621, 0.719723, -0.371316,
		41.096397, 31.975359, 20.969807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195831, 31.182079, 20.515438>,  <41.507034, 31.471552, 21.229729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195831, 31.182079, 20.515438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.156216, 31.580074, 20.509859>,  <41.132446, 31.818871, 20.506512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.156216, 31.580074, 20.509859>,  <41.195831, 31.182079, 20.515438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156216, 31.580074, 20.509859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236760, 0.009949, -0.971517,
		-0.966507, -0.099524, -0.236558,
		-0.099043, 0.994985, -0.013948,
		41.126503, 31.878571, 20.505674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873787, 31.385105, 19.913626>,  <41.195831, 31.182079, 20.515438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873787, 31.385105, 19.913626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.011948, 31.757305, 19.962406>,  <41.094845, 31.980625, 19.991674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.011948, 31.757305, 19.962406>,  <40.873787, 31.385105, 19.913626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011948, 31.757305, 19.962406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137886, 0.178857, -0.974165,
		-0.928271, 0.319659, 0.190080,
		0.345398, 0.930499, 0.121951,
		41.115566, 32.036453, 19.998991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315041, 31.835127, 19.655264>,  <40.873787, 31.385105, 19.913626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315041, 31.835127, 19.655264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.673546, 32.012470, 19.650421>,  <40.888649, 32.118877, 19.647514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.673546, 32.012470, 19.650421>,  <40.315041, 31.835127, 19.655264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673546, 32.012470, 19.650421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078047, 0.130780, -0.988335,
		-0.436605, 0.886751, 0.151816,
		0.896262, 0.443360, -0.012109,
		40.942425, 32.145477, 19.646788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276588, 32.296906, 19.002342>,  <40.315041, 31.835127, 19.655264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276588, 32.296906, 19.002342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.666027, 32.311142, 19.092535>,  <40.899689, 32.319683, 19.146650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.666027, 32.311142, 19.092535>,  <40.276588, 32.296906, 19.002342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666027, 32.311142, 19.092535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228081, -0.111030, -0.967291,
		-0.009393, 0.993179, -0.116217,
		0.973597, 0.035593, 0.225482,
		40.958107, 32.321819, 19.160179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579090, 32.896164, 18.625313>,  <40.276588, 32.296906, 19.002342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579090, 32.896164, 18.625313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.867527, 32.631413, 18.707241>,  <41.040588, 32.472561, 18.756397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.867527, 32.631413, 18.707241>,  <40.579090, 32.896164, 18.625313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867527, 32.631413, 18.707241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193994, -0.090917, -0.976781,
		0.665130, 0.744078, 0.062841,
		0.721088, -0.661877, 0.204818,
		41.083855, 32.432850, 18.768686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990997, 33.005070, 18.127346>,  <40.579090, 32.896164, 18.625313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990997, 33.005070, 18.127346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.152225, 32.673676, 18.282854>,  <41.248962, 32.474838, 18.376160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.152225, 32.673676, 18.282854>,  <40.990997, 33.005070, 18.127346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152225, 32.673676, 18.282854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305719, -0.278510, -0.910477,
		0.862596, 0.485839, 0.141026,
		0.403068, -0.828488, 0.388772,
		41.273148, 32.425129, 18.399487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751602, 32.944305, 17.976871>,  <40.990997, 33.005070, 18.127346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751602, 32.944305, 17.976871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.620567, 32.570747, 18.034184>,  <41.541946, 32.346611, 18.068571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.620567, 32.570747, 18.034184>,  <41.751602, 32.944305, 17.976871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620567, 32.570747, 18.034184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322395, -0.253035, -0.912160,
		0.888116, -0.252617, 0.383973,
		-0.327585, -0.933894, 0.143282,
		41.522293, 32.290581, 18.077168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356693, 32.428928, 17.693874>,  <41.751602, 32.944305, 17.976871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356693, 32.428928, 17.693874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.003494, 32.241291, 17.700443>,  <41.791576, 32.128708, 17.704384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.003494, 32.241291, 17.700443>,  <42.356693, 32.428928, 17.693874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003494, 32.241291, 17.700443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152196, -0.319231, -0.935376,
		0.444022, -0.823433, 0.353274,
		-0.882995, -0.469095, 0.016422,
		41.738594, 32.100563, 17.705370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470188, 31.678631, 17.477802>,  <42.356693, 32.428928, 17.693874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470188, 31.678631, 17.477802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.084038, 31.767010, 17.422321>,  <41.852348, 31.820038, 17.389032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.084038, 31.767010, 17.422321>,  <42.470188, 31.678631, 17.477802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084038, 31.767010, 17.422321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027864, -0.441311, -0.896922,
		-0.259384, -0.869728, 0.419872,
		-0.965372, 0.220948, -0.138703,
		41.794426, 31.833294, 17.380711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165092, 31.084072, 17.189449>,  <42.470188, 31.678631, 17.477802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165092, 31.084072, 17.189449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.877666, 31.341305, 17.083532>,  <41.705212, 31.495644, 17.019983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.877666, 31.341305, 17.083532>,  <42.165092, 31.084072, 17.189449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877666, 31.341305, 17.083532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042342, -0.339581, -0.939623,
		-0.694173, -0.686389, 0.216781,
		-0.718562, 0.643082, -0.264791,
		41.662098, 31.534229, 17.004095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337059, 31.000582, 17.939144>,  <42.165092, 31.084072, 17.189449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337059, 31.000582, 17.939144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.277306, 30.632298, 17.794935>,  <42.241455, 30.411327, 17.708410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.277306, 30.632298, 17.794935>,  <42.337059, 31.000582, 17.939144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277306, 30.632298, 17.794935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520274, -0.236865, 0.820493,
		-0.840832, 0.310139, -0.443638,
		-0.149384, -0.920711, -0.360521,
		42.232491, 30.356085, 17.686779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642979, 30.907867, 18.064461>,  <42.337059, 31.000582, 17.939144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642979, 30.907867, 18.064461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.790466, 30.539505, 18.013905>,  <41.878960, 30.318487, 17.983570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.790466, 30.539505, 18.013905>,  <41.642979, 30.907867, 18.064461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790466, 30.539505, 18.013905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548558, -0.325347, 0.770216,
		-0.750419, -0.214661, -0.625133,
		0.368721, -0.920907, -0.126393,
		41.901081, 30.263233, 17.975986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002029, 30.397579, 17.863167>,  <41.642979, 30.907867, 18.064461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002029, 30.397579, 17.863167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.326832, 30.211029, 18.003532>,  <41.521713, 30.099098, 18.087751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.326832, 30.211029, 18.003532>,  <41.002029, 30.397579, 17.863167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326832, 30.211029, 18.003532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530122, -0.337822, 0.777719,
		-0.244165, -0.817539, -0.521550,
		0.812006, -0.466376, 0.350911,
		41.570435, 30.071117, 18.108807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743542, 29.739838, 18.141710>,  <41.002029, 30.397579, 17.863167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743542, 29.739838, 18.141710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.100311, 29.788784, 18.315838>,  <41.314373, 29.818151, 18.420315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.100311, 29.788784, 18.315838>,  <40.743542, 29.739838, 18.141710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100311, 29.788784, 18.315838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379387, -0.321330, 0.867648,
		0.246051, -0.939028, -0.240178,
		0.891922, 0.122366, 0.435319,
		41.367889, 29.825493, 18.446434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892429, 29.111914, 18.480629>,  <40.743542, 29.739838, 18.141710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892429, 29.111914, 18.480629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.148418, 29.365759, 18.653931>,  <41.302010, 29.518066, 18.757912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.148418, 29.365759, 18.653931>,  <40.892429, 29.111914, 18.480629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148418, 29.365759, 18.653931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307506, -0.305202, 0.901272,
		0.704188, -0.710013, -0.000172,
		0.639968, 0.634612, 0.433253,
		41.340408, 29.556143, 18.783907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329044, 28.743271, 18.941647>,  <40.892429, 29.111914, 18.480629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329044, 28.743271, 18.941647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.348259, 29.113895, 19.090872>,  <41.359787, 29.336269, 19.180407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.348259, 29.113895, 19.090872>,  <41.329044, 28.743271, 18.941647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348259, 29.113895, 19.090872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194713, -0.357643, 0.913334,
		0.979683, -0.116512, 0.163235,
		0.048035, 0.926562, 0.373063,
		41.362671, 29.391865, 19.202791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549236, 28.626562, 19.548317>,  <41.329044, 28.743271, 18.941647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549236, 28.626562, 19.548317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.414711, 29.001099, 19.588627>,  <41.333996, 29.225821, 19.612814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.414711, 29.001099, 19.588627>,  <41.549236, 28.626562, 19.548317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414711, 29.001099, 19.588627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281158, -0.201960, 0.938170,
		0.898801, 0.287185, 0.331182,
		-0.336314, 0.936343, 0.100777,
		41.313816, 29.282001, 19.618860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816715, 28.859560, 20.132124>,  <41.549236, 28.626562, 19.548317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816715, 28.859560, 20.132124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.504356, 29.106430, 20.093554>,  <41.316940, 29.254553, 20.070412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.504356, 29.106430, 20.093554>,  <41.816715, 28.859560, 20.132124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504356, 29.106430, 20.093554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240553, -0.154650, 0.958237,
		0.576489, 0.771477, 0.269229,
		-0.780894, 0.617177, -0.096427,
		41.270088, 29.291584, 20.064625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382877, 28.809326, 20.727003>,  <41.816715, 28.859560, 20.132124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382877, 28.809326, 20.727003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.553608, 28.448238, 20.748623>,  <42.656044, 28.231586, 20.761595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.553608, 28.448238, 20.748623>,  <42.382877, 28.809326, 20.727003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553608, 28.448238, 20.748623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376589, 0.123085, -0.918167,
		0.822194, 0.412249, 0.392490,
		0.426823, -0.902719, 0.054049,
		42.681656, 28.177423, 20.764837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098621, 28.958965, 20.540449>,  <42.382877, 28.809326, 20.727003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098621, 28.958965, 20.540449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.038280, 28.567160, 20.487087>,  <43.002075, 28.332077, 20.455070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.038280, 28.567160, 20.487087>,  <43.098621, 28.958965, 20.540449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038280, 28.567160, 20.487087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415377, 0.059653, -0.907691,
		0.897054, -0.192340, 0.397868,
		-0.150851, -0.979514, -0.133406,
		42.993027, 28.273306, 20.447065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814331, 28.647644, 20.401096>,  <43.098621, 28.958965, 20.540449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814331, 28.647644, 20.401096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.521687, 28.400301, 20.286287>,  <43.346100, 28.251896, 20.217402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.521687, 28.400301, 20.286287>,  <43.814331, 28.647644, 20.401096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521687, 28.400301, 20.286287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385348, -0.027799, -0.922352,
		0.562364, -0.785406, 0.258621,
		-0.731610, -0.618356, -0.287021,
		43.302204, 28.214794, 20.200180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075050, 28.197668, 19.991488>,  <43.814331, 28.647644, 20.401096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075050, 28.197668, 19.991488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.695942, 28.118967, 19.891077>,  <43.468475, 28.071747, 19.830830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.695942, 28.118967, 19.891077>,  <44.075050, 28.197668, 19.991488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.695942, 28.118967, 19.891077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236261, 0.095630, -0.966972,
		0.214264, -0.975778, -0.044150,
		-0.947772, -0.196756, -0.251028,
		43.411610, 28.059940, 19.815769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176697, 27.735243, 19.421352>,  <44.075050, 28.197668, 19.991488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176697, 27.735243, 19.421352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.815277, 27.905027, 19.397932>,  <43.598427, 28.006899, 19.383879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.815277, 27.905027, 19.397932>,  <44.176697, 27.735243, 19.421352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815277, 27.905027, 19.397932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092488, 0.059771, -0.993918,
		-0.418382, -0.903470, -0.093263,
		-0.903550, 0.424463, -0.058553,
		43.544212, 28.032366, 19.380365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827225, 27.374907, 18.817665>,  <44.176697, 27.735243, 19.421352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827225, 27.374907, 18.817665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.647724, 27.727839, 18.874397>,  <43.540024, 27.939598, 18.908436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.647724, 27.727839, 18.874397>,  <43.827225, 27.374907, 18.817665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647724, 27.727839, 18.874397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091716, 0.203341, -0.974803,
		-0.888939, -0.424435, -0.172173,
		-0.448750, 0.882331, 0.141830,
		43.513100, 27.992538, 18.916946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303463, 27.439955, 18.341145>,  <43.827225, 27.374907, 18.817665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303463, 27.439955, 18.341145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.359711, 27.816456, 18.463957>,  <43.393459, 28.042356, 18.537643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.359711, 27.816456, 18.463957>,  <43.303463, 27.439955, 18.341145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359711, 27.816456, 18.463957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010747, 0.308643, -0.951117,
		-0.990005, 0.137045, 0.033285,
		0.140619, 0.941253, 0.307031,
		43.401897, 28.098831, 18.556067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948849, 27.841759, 17.807056>,  <43.303463, 27.439955, 18.341145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948849, 27.841759, 17.807056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.167557, 28.127300, 17.982079>,  <43.298782, 28.298624, 18.087091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.167557, 28.127300, 17.982079>,  <42.948849, 27.841759, 17.807056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167557, 28.127300, 17.982079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111231, 0.456029, -0.882987,
		-0.829860, 0.531462, 0.169941,
		0.546772, 0.713853, 0.437555,
		43.331589, 28.341455, 18.113344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738098, 28.466822, 17.499880>,  <42.948849, 27.841759, 17.807056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738098, 28.466822, 17.499880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.095905, 28.541410, 17.662395>,  <43.310589, 28.586164, 17.759905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.095905, 28.541410, 17.662395>,  <42.738098, 28.466822, 17.499880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095905, 28.541410, 17.662395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252802, 0.538564, -0.803766,
		-0.368695, 0.821691, 0.434612,
		0.894514, 0.186474, 0.406291,
		43.364258, 28.597353, 17.784283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.974487, 29.259403, 32.724442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.199852, 29.578016, 32.812176>,  <38.335072, 29.769184, 32.864815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.199852, 29.578016, 32.812176>,  <37.974487, 29.259403, 32.724442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199852, 29.578016, 32.812176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471648, -0.092130, -0.876961,
		-0.678319, 0.597536, -0.427590,
		0.563410, 0.796531, 0.219333,
		38.368874, 29.816977, 32.877975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846111, 29.755339, 32.298275>,  <37.974487, 29.259403, 32.724442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846111, 29.755339, 32.298275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.218384, 29.828857, 32.424797>,  <38.441750, 29.872969, 32.500710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.218384, 29.828857, 32.424797>,  <37.846111, 29.755339, 32.298275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218384, 29.828857, 32.424797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308657, 0.069595, -0.948624,
		-0.196366, 0.980498, 0.008041,
		0.930683, 0.183795, 0.316303,
		38.497589, 29.883997, 32.519688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173225, 30.429636, 32.013977>,  <37.846111, 29.755339, 32.298275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173225, 30.429636, 32.013977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.461697, 30.177654, 32.129261>,  <38.634777, 30.026466, 32.198429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.461697, 30.177654, 32.129261>,  <38.173225, 30.429636, 32.013977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461697, 30.177654, 32.129261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401653, 0.041260, -0.914862,
		0.564429, 0.775536, 0.282778,
		0.721176, -0.629953, 0.288208,
		38.678051, 29.988668, 32.215725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768085, 30.708544, 31.720243>,  <38.173225, 30.429636, 32.013977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768085, 30.708544, 31.720243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.841717, 30.318727, 31.771444>,  <38.885895, 30.084837, 31.802164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.841717, 30.318727, 31.771444>,  <38.768085, 30.708544, 31.720243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841717, 30.318727, 31.771444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420878, -0.039531, -0.906255,
		0.888243, 0.220697, 0.402886,
		0.184081, -0.974541, 0.128000,
		38.896942, 30.026365, 31.809845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424053, 30.651459, 31.426836>,  <38.768085, 30.708544, 31.720243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424053, 30.651459, 31.426836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.311768, 30.268171, 31.448803>,  <39.244396, 30.038198, 31.461983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.311768, 30.268171, 31.448803>,  <39.424053, 30.651459, 31.426836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311768, 30.268171, 31.448803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428538, -0.176328, -0.886151,
		0.858812, -0.225216, 0.460131,
		-0.280710, -0.958220, 0.054919,
		39.227554, 29.980705, 31.465279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946716, 30.245819, 31.266544>,  <39.424053, 30.651459, 31.426836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946716, 30.245819, 31.266544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.634258, 30.002241, 31.211420>,  <39.446781, 29.856094, 31.178345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.634258, 30.002241, 31.211420>,  <39.946716, 30.245819, 31.266544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634258, 30.002241, 31.211420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308984, -0.185248, -0.932851,
		0.542525, -0.771278, 0.332861,
		-0.781150, -0.608944, -0.137811,
		39.399914, 29.819557, 31.170076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173050, 29.577147, 31.084108>,  <39.946716, 30.245819, 31.266544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173050, 29.577147, 31.084108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.798080, 29.575106, 30.944843>,  <39.573101, 29.573881, 30.861284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.798080, 29.575106, 30.944843>,  <40.173050, 29.577147, 31.084108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798080, 29.575106, 30.944843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311718, -0.457853, -0.832588,
		-0.155160, -0.889013, 0.430791,
		-0.937421, -0.005101, -0.348162,
		39.516853, 29.573576, 30.840395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158855, 29.036839, 30.659613>,  <40.173050, 29.577147, 31.084108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158855, 29.036839, 30.659613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.825256, 29.220018, 30.536497>,  <39.625095, 29.329926, 30.462627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.825256, 29.220018, 30.536497>,  <40.158855, 29.036839, 30.659613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825256, 29.220018, 30.536497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126269, -0.384613, -0.914401,
		-0.537128, -0.801471, 0.262941,
		-0.833997, 0.457949, -0.307788,
		39.575058, 29.357403, 30.444160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810371, 28.505695, 30.343597>,  <40.158855, 29.036839, 30.659613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810371, 28.505695, 30.343597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.675270, 28.850710, 30.192888>,  <39.594208, 29.057718, 30.102463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.675270, 28.850710, 30.192888>,  <39.810371, 28.505695, 30.343597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675270, 28.850710, 30.192888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021049, -0.393273, -0.919181,
		-0.941000, -0.318386, 0.114673,
		-0.337752, 0.862535, -0.376771,
		39.573944, 29.109470, 30.079857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255264, 28.409348, 29.775717>,  <39.810371, 28.505695, 30.343597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255264, 28.409348, 29.775717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.392384, 28.779428, 29.710617>,  <39.474655, 29.001478, 29.671556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.392384, 28.779428, 29.710617>,  <39.255264, 28.409348, 29.775717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392384, 28.779428, 29.710617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057781, -0.152152, -0.986667,
		-0.937630, 0.347632, 0.001302,
		0.342799, 0.925204, -0.162749,
		39.495224, 29.056990, 29.661793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858902, 28.548349, 29.246372>,  <39.255264, 28.409348, 29.775717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858902, 28.548349, 29.246372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.153320, 28.818792, 29.233055>,  <39.329971, 28.981058, 29.225065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.153320, 28.818792, 29.233055>,  <38.858902, 28.548349, 29.246372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153320, 28.818792, 29.233055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129427, -0.188838, -0.973442,
		-0.664441, 0.712191, -0.226501,
		0.736048, 0.676110, -0.033295,
		39.374134, 29.021626, 29.223066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744724, 29.064892, 28.654346>,  <38.858902, 28.548349, 29.246372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744724, 29.064892, 28.654346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.134930, 29.091913, 28.738071>,  <39.369053, 29.108126, 28.788307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.134930, 29.091913, 28.738071>,  <38.744724, 29.064892, 28.654346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134930, 29.091913, 28.738071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216405, -0.124735, -0.968303,
		-0.039304, 0.989888, -0.136300,
		0.975512, 0.067554, 0.209314,
		39.427582, 29.112179, 28.800865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453701, 29.591251, 28.246325>,  <38.744724, 29.064892, 28.654346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453701, 29.591251, 28.246325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.108322, 29.530193, 28.054010>,  <37.901093, 29.493559, 27.938622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.108322, 29.530193, 28.054010>,  <38.453701, 29.591251, 28.246325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108322, 29.530193, 28.054010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498110, 0.107553, 0.860418,
		-0.079629, 0.982411, -0.168901,
		-0.863450, -0.152645, -0.480785,
		37.849289, 29.484400, 27.909775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981136, 30.105177, 28.511063>,  <38.453701, 29.591251, 28.246325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981136, 30.105177, 28.511063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.736824, 29.831160, 28.352234>,  <37.590237, 29.666750, 28.256937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.736824, 29.831160, 28.352234>,  <37.981136, 30.105177, 28.511063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736824, 29.831160, 28.352234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595703, 0.067194, 0.800389,
		-0.521620, 0.725397, -0.449123,
		-0.610778, -0.685043, -0.397071,
		37.553589, 29.625647, 28.233112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465931, 30.260330, 28.790199>,  <37.981136, 30.105177, 28.511063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465931, 30.260330, 28.790199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.340530, 29.908972, 28.645903>,  <37.265289, 29.698156, 28.559324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.340530, 29.908972, 28.645903>,  <37.465931, 30.260330, 28.790199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340530, 29.908972, 28.645903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803868, 0.043276, 0.593231,
		-0.505480, 0.475971, -0.719682,
		-0.313505, -0.878396, -0.360742,
		37.246479, 29.645452, 28.537680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704815, 30.297987, 28.790813>,  <37.465931, 30.260330, 28.790199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704815, 30.297987, 28.790813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791233, 29.907528, 28.799368>,  <36.843082, 29.673252, 28.804501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791233, 29.907528, 28.799368>,  <36.704815, 30.297987, 28.790813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791233, 29.907528, 28.799368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657482, -0.129251, 0.742301,
		-0.721833, -0.174429, -0.669725,
		0.216042, -0.976150, 0.021386,
		36.856045, 29.614683, 28.805784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103733, 29.902338, 28.861216>,  <36.704815, 30.297987, 28.790813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103733, 29.902338, 28.861216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.375713, 29.636787, 28.985758>,  <36.538902, 29.477457, 29.060482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.375713, 29.636787, 28.985758>,  <36.103733, 29.902338, 28.861216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375713, 29.636787, 28.985758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551290, -0.182863, 0.814027,
		-0.483477, -0.725142, -0.490325,
		0.679948, -0.663875, 0.311354,
		36.579697, 29.437624, 29.079165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671497, 29.402109, 29.164646>,  <36.103733, 29.902338, 28.861216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671497, 29.402109, 29.164646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.018082, 29.287764, 29.328363>,  <36.226032, 29.219156, 29.426594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.018082, 29.287764, 29.328363>,  <35.671497, 29.402109, 29.164646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018082, 29.287764, 29.328363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486217, -0.297179, 0.821753,
		-0.113275, -0.911025, -0.396487,
		0.866465, -0.285863, 0.409293,
		36.278023, 29.202005, 29.451151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576416, 28.735857, 29.354790>,  <35.671497, 29.402109, 29.164646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576416, 28.735857, 29.354790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874138, 28.884640, 29.576656>,  <36.052773, 28.973909, 29.709776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874138, 28.884640, 29.576656>,  <35.576416, 28.735857, 29.354790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874138, 28.884640, 29.576656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514084, -0.211037, 0.831373,
		0.426288, -0.903943, 0.034139,
		0.744309, 0.371955, 0.554665,
		36.097431, 28.996225, 29.743055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755390, 28.231604, 29.936993>,  <35.576416, 28.735857, 29.354790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755390, 28.231604, 29.936993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863262, 28.605808, 30.028284>,  <35.927986, 28.830332, 30.083059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863262, 28.605808, 30.028284>,  <35.755390, 28.231604, 29.936993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863262, 28.605808, 30.028284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585512, -0.028858, 0.810150,
		0.764492, -0.352112, 0.539971,
		0.269681, 0.935513, 0.228228,
		35.944168, 28.886461, 30.096752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641815, 28.303009, 30.640104>,  <35.755390, 28.231604, 29.936993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641815, 28.303009, 30.640104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.708218, 28.695381, 30.599680>,  <35.748058, 28.930805, 30.575426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.708218, 28.695381, 30.599680>,  <35.641815, 28.303009, 30.640104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708218, 28.695381, 30.599680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659336, 0.186619, 0.728319,
		0.733291, -0.054277, 0.677745,
		0.166011, 0.980932, -0.101059,
		35.758022, 28.989660, 30.569363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721107, 28.625967, 31.302834>,  <35.641815, 28.303009, 30.640104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721107, 28.625967, 31.302834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.591454, 28.907509, 31.050001>,  <35.513660, 29.076433, 30.898302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.591454, 28.907509, 31.050001>,  <35.721107, 28.625967, 31.302834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591454, 28.907509, 31.050001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831473, 0.106716, 0.545219,
		0.451208, 0.702284, 0.550645,
		-0.324136, 0.703853, -0.632081,
		35.494213, 29.118666, 30.860376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323818, 28.981350, 31.725796>,  <35.721107, 28.625967, 31.302834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323818, 28.981350, 31.725796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.210274, 29.105478, 31.362890>,  <35.142147, 29.179955, 31.145147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.210274, 29.105478, 31.362890>,  <35.323818, 28.981350, 31.725796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210274, 29.105478, 31.362890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939456, 0.099409, 0.327933,
		0.191955, 0.945420, 0.263313,
		-0.283859, 0.310320, -0.907263,
		35.125114, 29.198574, 31.090712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951336, 29.675457, 31.914005>,  <35.323818, 28.981350, 31.725796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951336, 29.675457, 31.914005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.838150, 29.566851, 31.546047>,  <34.770237, 29.501688, 31.325272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.838150, 29.566851, 31.546047>,  <34.951336, 29.675457, 31.914005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838150, 29.566851, 31.546047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922903, 0.338183, 0.184072,
		0.261116, 0.901062, -0.346275,
		-0.282965, -0.271514, -0.919897,
		34.753262, 29.485397, 31.270079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508102, 30.205381, 31.683084>,  <34.951336, 29.675457, 31.914005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508102, 30.205381, 31.683084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.423584, 29.885693, 31.458017>,  <34.372875, 29.693878, 31.322977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.423584, 29.885693, 31.458017>,  <34.508102, 30.205381, 31.683084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423584, 29.885693, 31.458017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976973, 0.190163, 0.096759,
		0.029667, 0.570157, -0.821000,
		-0.211292, -0.799224, -0.562669,
		34.360195, 29.645926, 31.289217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348080, 30.370119, 31.039034>,  <34.508102, 30.205381, 31.683084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348080, 30.370119, 31.039034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.165871, 30.027218, 31.135054>,  <34.056545, 29.821478, 31.192665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.165871, 30.027218, 31.135054>,  <34.348080, 30.370119, 31.039034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165871, 30.027218, 31.135054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863421, 0.491110, 0.115396,
		-0.216814, -0.154698, -0.963878,
		-0.455518, -0.857251, 0.240049,
		34.029217, 29.770042, 31.207067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686504, 30.318073, 30.667334>,  <34.348080, 30.370119, 31.039034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686504, 30.318073, 30.667334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666134, 30.061417, 30.973459>,  <33.653912, 29.907423, 31.157135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666134, 30.061417, 30.973459>,  <33.686504, 30.318073, 30.667334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666134, 30.061417, 30.973459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902674, 0.357441, 0.239616,
		-0.427302, -0.678625, -0.597396,
		-0.050924, -0.641642, 0.765312,
		33.650856, 29.868923, 31.203053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189354, 30.673384, 30.195389>,  <33.686504, 30.318073, 30.667334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189354, 30.673384, 30.195389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080002, 31.046240, 30.100410>,  <34.014389, 31.269953, 30.043423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080002, 31.046240, 30.100410>,  <34.189354, 30.673384, 30.195389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080002, 31.046240, 30.100410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784519, 0.073232, -0.615765,
		-0.556590, -0.354620, -0.751300,
		-0.273382, 0.932138, -0.237446,
		33.997986, 31.325882, 30.029177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891743, 30.833502, 29.519087>,  <34.189354, 30.673384, 30.195389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891743, 30.833502, 29.519087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087521, 31.155825, 29.652424>,  <34.204987, 31.349218, 29.732426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087521, 31.155825, 29.652424>,  <33.891743, 30.833502, 29.519087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087521, 31.155825, 29.652424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676357, -0.109504, -0.728388,
		-0.550438, 0.581966, -0.598610,
		0.489447, 0.805807, 0.333341,
		34.234356, 31.397566, 29.752426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023022, 31.328684, 29.012016>,  <33.891743, 30.833502, 29.519087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023022, 31.328684, 29.012016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.309319, 31.408442, 29.279734>,  <34.481098, 31.456297, 29.440365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.309319, 31.408442, 29.279734>,  <34.023022, 31.328684, 29.012016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309319, 31.408442, 29.279734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688097, -0.037625, -0.724643,
		-0.119308, 0.979197, -0.164133,
		0.715743, 0.199395, 0.669293,
		34.524040, 31.468260, 29.480522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419010, 31.817112, 28.679579>,  <34.023022, 31.328684, 29.012016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419010, 31.817112, 28.679579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.649212, 31.692142, 28.981886>,  <34.787334, 31.617161, 29.163269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.649212, 31.692142, 28.981886>,  <34.419010, 31.817112, 28.679579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649212, 31.692142, 28.981886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812978, 0.118385, -0.570134,
		0.088651, 0.942537, 0.322125,
		0.575507, -0.312423, 0.755767,
		34.821865, 31.598415, 29.208616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910057, 32.348232, 28.850349>,  <34.419010, 31.817112, 28.679579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910057, 32.348232, 28.850349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.079742, 32.012890, 28.987293>,  <35.181553, 31.811686, 29.069460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.079742, 32.012890, 28.987293>,  <34.910057, 32.348232, 28.850349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079742, 32.012890, 28.987293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738897, 0.101881, -0.666072,
		0.523523, 0.535523, 0.662675,
		0.424210, -0.838353, 0.342359,
		35.207005, 31.761383, 29.090000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607914, 32.508987, 28.911850>,  <34.910057, 32.348232, 28.850349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607914, 32.508987, 28.911850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.607723, 32.109058, 28.904238>,  <35.607609, 31.869102, 28.899670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.607723, 32.109058, 28.904238>,  <35.607914, 32.508987, 28.911850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607723, 32.109058, 28.904238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719260, 0.012878, -0.694622,
		0.694741, -0.014021, 0.719123,
		-0.000479, -0.999819, -0.019031,
		35.607578, 31.809113, 28.898529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271854, 32.371830, 28.928789>,  <35.607914, 32.508987, 28.911850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271854, 32.371830, 28.928789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.103657, 32.041805, 28.777813>,  <36.002739, 31.843790, 28.687227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.103657, 32.041805, 28.777813>,  <36.271854, 32.371830, 28.928789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103657, 32.041805, 28.777813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741076, -0.072319, -0.667516,
		0.523445, -0.560396, 0.641842,
		-0.420491, -0.825061, -0.377441,
		35.977509, 31.794287, 28.664581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802509, 31.983976, 28.657408>,  <36.271854, 32.371830, 28.928789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802509, 31.983976, 28.657408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489216, 31.827379, 28.464212>,  <36.301239, 31.733421, 28.348295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489216, 31.827379, 28.464212>,  <36.802509, 31.983976, 28.657408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489216, 31.827379, 28.464212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542711, -0.051496, -0.838340,
		0.303331, -0.918740, 0.252800,
		-0.783234, -0.391491, -0.482990,
		36.254246, 31.709932, 28.319315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037888, 31.367247, 28.379147>,  <36.802509, 31.983976, 28.657408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037888, 31.367247, 28.379147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.725845, 31.467337, 28.149776>,  <36.538620, 31.527391, 28.012154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.725845, 31.467337, 28.149776>,  <37.037888, 31.367247, 28.379147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725845, 31.467337, 28.149776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568156, -0.100442, -0.816768,
		-0.261973, -0.962964, -0.063812,
		-0.780109, 0.250226, -0.573426,
		36.491814, 31.542404, 27.977749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192028, 31.020895, 27.866224>,  <37.037888, 31.367247, 28.379147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192028, 31.020895, 27.866224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.922485, 31.280766, 27.725460>,  <36.760761, 31.436687, 27.641003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.922485, 31.280766, 27.725460>,  <37.192028, 31.020895, 27.866224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922485, 31.280766, 27.725460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508379, 0.062065, -0.858894,
		-0.536160, -0.757675, -0.372104,
		-0.673857, 0.649675, -0.351909,
		36.720329, 31.475668, 27.619886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954288, 30.757532, 27.140539>,  <37.192028, 31.020895, 27.866224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954288, 30.757532, 27.140539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851784, 31.143934, 27.154182>,  <36.790279, 31.375776, 27.162369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851784, 31.143934, 27.154182>,  <36.954288, 30.757532, 27.140539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851784, 31.143934, 27.154182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359527, 0.128010, -0.924313,
		-0.897257, -0.224603, -0.380109,
		-0.256261, 0.966006, 0.034107,
		36.774906, 31.433737, 27.164415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635063, 30.893463, 26.347420>,  <36.954288, 30.757532, 27.140539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635063, 30.893463, 26.347420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.737965, 31.245327, 26.507431>,  <36.799706, 31.456446, 26.603437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.737965, 31.245327, 26.507431>,  <36.635063, 30.893463, 26.347420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737965, 31.245327, 26.507431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533512, 0.215866, -0.817782,
		-0.805721, 0.423796, -0.413776,
		0.257253, 0.879658, 0.400029,
		36.815140, 31.509224, 26.627439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445515, 31.426050, 25.858145>,  <36.635063, 30.893463, 26.347420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445515, 31.426050, 25.858145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.741142, 31.547628, 26.098610>,  <36.918518, 31.620575, 26.242889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.741142, 31.547628, 26.098610>,  <36.445515, 31.426050, 25.858145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741142, 31.547628, 26.098610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589397, 0.140350, -0.795558,
		-0.326181, 0.942294, -0.075417,
		0.739065, 0.303947, 0.601165,
		36.962860, 31.638813, 26.278959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674511, 32.048817, 25.528717>,  <36.445515, 31.426050, 25.858145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674511, 32.048817, 25.528717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.981045, 31.935192, 25.759209>,  <37.164967, 31.867018, 25.897503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.981045, 31.935192, 25.759209>,  <36.674511, 32.048817, 25.528717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981045, 31.935192, 25.759209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638011, 0.441634, -0.630794,
		-0.075300, 0.851041, 0.519673,
		0.766337, -0.284058, 0.576228,
		37.210945, 31.849976, 25.932077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214108, 32.693829, 25.513557>,  <36.674511, 32.048817, 25.528717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214108, 32.693829, 25.513557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.411076, 32.364086, 25.625246>,  <37.529255, 32.166241, 25.692259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.411076, 32.364086, 25.625246>,  <37.214108, 32.693829, 25.513557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411076, 32.364086, 25.625246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761611, 0.252834, -0.596677,
		0.421278, 0.506472, 0.752337,
		0.492417, -0.824355, 0.279221,
		37.558800, 32.116779, 25.709013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911366, 32.963913, 25.647554>,  <37.214108, 32.693829, 25.513557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911366, 32.963913, 25.647554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.929314, 32.564564, 25.633533>,  <37.940083, 32.324955, 25.625120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.929314, 32.564564, 25.633533>,  <37.911366, 32.963913, 25.647554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929314, 32.564564, 25.633533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894850, 0.055770, -0.442869,
		0.444105, -0.011493, 0.895901,
		0.044875, -0.998378, -0.035053,
		37.942776, 32.265049, 25.623018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613243, 32.788342, 25.808941>,  <37.911366, 32.963913, 25.647554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613243, 32.788342, 25.808941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.454357, 32.457962, 25.648930>,  <38.359024, 32.259735, 25.552923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.454357, 32.457962, 25.648930>,  <38.613243, 32.788342, 25.808941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454357, 32.457962, 25.648930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786759, -0.082069, -0.611781,
		0.472471, -0.557735, 0.682424,
		-0.397217, -0.825952, -0.400028,
		38.335194, 32.210178, 25.528921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201267, 32.509911, 25.532309>,  <38.613243, 32.788342, 25.808941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201267, 32.509911, 25.532309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.903820, 32.312092, 25.352327>,  <38.725353, 32.193401, 25.244339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.903820, 32.312092, 25.352327>,  <39.201267, 32.509911, 25.532309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903820, 32.312092, 25.352327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582632, -0.149170, -0.798929,
		0.327993, -0.856252, 0.399066,
		-0.743613, -0.494552, -0.449953,
		38.680737, 32.163727, 25.217340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559597, 31.891230, 25.257872>,  <39.201267, 32.509911, 25.532309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559597, 31.891230, 25.257872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.223949, 32.008236, 25.074430>,  <39.022560, 32.078442, 24.964365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.223949, 32.008236, 25.074430>,  <39.559597, 31.891230, 25.257872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223949, 32.008236, 25.074430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450821, -0.097782, -0.887242,
		-0.304378, -0.951247, -0.049823,
		-0.839115, 0.292518, -0.458605,
		38.972214, 32.095989, 24.936850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765007, 31.646717, 24.665819>,  <39.559597, 31.891230, 25.257872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765007, 31.646717, 24.665819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.420128, 31.832922, 24.585899>,  <39.213200, 31.944645, 24.537947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.420128, 31.832922, 24.585899>,  <39.765007, 31.646717, 24.665819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420128, 31.832922, 24.585899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228368, 0.005111, -0.973561,
		-0.452182, -0.885028, -0.110714,
		-0.862195, 0.465510, -0.199801,
		39.161469, 31.972574, 24.525959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311600, 31.238796, 24.215721>,  <39.765007, 31.646717, 24.665819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311600, 31.238796, 24.215721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.256653, 31.627371, 24.138323>,  <39.223686, 31.860516, 24.091883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.256653, 31.627371, 24.138323>,  <39.311600, 31.238796, 24.215721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256653, 31.627371, 24.138323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303650, -0.144644, -0.941740,
		-0.942829, -0.188120, -0.275107,
		-0.137367, 0.971437, -0.193497,
		39.215443, 31.918802, 24.080275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974392, 31.286819, 23.541784>,  <39.311600, 31.238796, 24.215721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974392, 31.286819, 23.541784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.146988, 31.645760, 23.578831>,  <39.250546, 31.861124, 23.601059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.146988, 31.645760, 23.578831>,  <38.974392, 31.286819, 23.541784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146988, 31.645760, 23.578831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371400, -0.083143, -0.924742,
		-0.822118, 0.433416, -0.369152,
		0.431490, 0.897351, 0.092617,
		39.276436, 31.914965, 23.606615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831360, 31.644125, 22.874645>,  <38.974392, 31.286819, 23.541784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831360, 31.644125, 22.874645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.122684, 31.865671, 23.036039>,  <39.297478, 31.998598, 23.132875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.122684, 31.865671, 23.036039>,  <38.831360, 31.644125, 22.874645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122684, 31.865671, 23.036039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429877, 0.089251, -0.898465,
		-0.533639, 0.827809, -0.173091,
		0.728310, 0.553865, 0.403484,
		39.341179, 32.031830, 23.157085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946369, 32.228664, 22.473955>,  <38.831360, 31.644125, 22.874645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946369, 32.228664, 22.473955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.280762, 32.218361, 22.693214>,  <39.481400, 32.212177, 22.824770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.280762, 32.218361, 22.693214>,  <38.946369, 32.228664, 22.473955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280762, 32.218361, 22.693214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533771, 0.270014, -0.801362,
		-0.127363, 0.962512, 0.239478,
		0.835983, -0.025762, 0.548150,
		39.531555, 32.210632, 22.857660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360645, 32.845757, 22.291597>,  <38.946369, 32.228664, 22.473955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360645, 32.845757, 22.291597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.602852, 32.567341, 22.445940>,  <39.748177, 32.400291, 22.538546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.602852, 32.567341, 22.445940>,  <39.360645, 32.845757, 22.291597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602852, 32.567341, 22.445940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684696, 0.208495, -0.698370,
		0.405644, 0.687066, 0.602821,
		0.605512, -0.696039, 0.385857,
		39.784504, 32.358528, 22.561697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999519, 33.191265, 22.351366>,  <39.360645, 32.845757, 22.291597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999519, 33.191265, 22.351366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.068249, 32.797466, 22.337229>,  <40.109486, 32.561188, 22.328747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.068249, 32.797466, 22.337229>,  <39.999519, 33.191265, 22.351366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068249, 32.797466, 22.337229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730728, 0.151434, -0.665661,
		0.660691, 0.088550, 0.745417,
		0.171826, -0.984493, -0.035345,
		40.119797, 32.502117, 22.326626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738876, 33.091900, 22.282633>,  <39.999519, 33.191265, 22.351366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738876, 33.091900, 22.282633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.568195, 32.765430, 22.126793>,  <40.465786, 32.569550, 22.033289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.568195, 32.765430, 22.126793>,  <40.738876, 33.091900, 22.282633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568195, 32.765430, 22.126793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655604, 0.017594, -0.754900,
		0.622981, -0.577544, 0.527577,
		-0.426706, -0.816170, -0.389601,
		40.440182, 32.520580, 22.009912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455826, 32.981377, 22.632296>,  <40.738876, 33.091900, 22.282633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455826, 32.981377, 22.632296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.748924, 33.209965, 22.780081>,  <41.924786, 33.347118, 22.868752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.748924, 33.209965, 22.780081>,  <41.455826, 32.981377, 22.632296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748924, 33.209965, 22.780081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390337, -0.091763, 0.916087,
		0.557417, -0.815478, 0.155826,
		0.732750, 0.571468, 0.369462,
		41.968750, 33.381405, 22.890919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606014, 32.706043, 23.334791>,  <41.455826, 32.981377, 22.632296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606014, 32.706043, 23.334791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.786407, 33.062275, 23.358385>,  <41.894646, 33.276012, 23.372541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.786407, 33.062275, 23.358385>,  <41.606014, 32.706043, 23.334791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786407, 33.062275, 23.358385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151984, 0.011504, 0.988316,
		0.879495, -0.454682, 0.140542,
		0.450986, 0.890579, 0.058987,
		41.921703, 33.329449, 23.376081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902321, 32.741558, 23.969976>,  <41.606014, 32.706043, 23.334791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902321, 32.741558, 23.969976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.880329, 33.132191, 23.886768>,  <41.867134, 33.366570, 23.836843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.880329, 33.132191, 23.886768>,  <41.902321, 32.741558, 23.969976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880329, 33.132191, 23.886768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322540, 0.179799, 0.929323,
		0.944958, 0.118187, 0.305100,
		-0.054977, 0.976578, -0.208022,
		41.863834, 33.425163, 23.824362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314144, 33.078972, 24.441576>,  <41.902321, 32.741558, 23.969976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314144, 33.078972, 24.441576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.041531, 33.336754, 24.302906>,  <41.877960, 33.491425, 24.219704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.041531, 33.336754, 24.302906>,  <42.314144, 33.078972, 24.441576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041531, 33.336754, 24.302906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178602, 0.312923, 0.932835,
		0.709655, 0.697677, -0.098167,
		-0.681536, 0.644458, -0.346673,
		41.837070, 33.530090, 24.198904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446121, 33.630001, 24.720434>,  <42.314144, 33.078972, 24.441576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446121, 33.630001, 24.720434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.063686, 33.667572, 24.609385>,  <41.834225, 33.690113, 24.542755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.063686, 33.667572, 24.609385>,  <42.446121, 33.630001, 24.720434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063686, 33.667572, 24.609385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257218, 0.185147, 0.948451,
		0.140483, 0.978212, -0.152858,
		-0.956087, 0.093923, -0.277624,
		41.776859, 33.695747, 24.526098>
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
